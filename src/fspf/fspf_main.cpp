//========================================================================
//  This software is free: you can redistribute it and/or modify
//  it under the terms of the GNU Lesser General Public License Version 3,
//  as published by the Free Software Foundation.
//
//  This software is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public License
//  Version 3 in the file COPYING that came with this distribution.
//  If not, see <http://www.gnu.org/licenses/>.
//========================================================================
/*!
* \file    fspf_main.cpp
* \brief   Main FSPF program
* \author  Fernando Jose Iglesias Garcia, (W) 2013
*/
//========================================================================

#include <vector>

#include <ros/ros.h>
#include <ros/package.h>
#include <ros/console.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/PointCloud.h>

#include "configreader.h"
#include "plane_filtering.h"
#include "proghelp.h"

KinectOpenNIDepthCam kinectDepthCam;
// KinectRawDepthCam kinectDepthCam;
PlaneFilter::PlaneFilterParams filterParams;
PlaneFilter planeFilter;
ros::Publisher filteredPointCloudPublisher;
ros::Publisher completePointCloudPublisher;
sensor_msgs::PointCloud filteredPointCloudMsg;
sensor_msgs::PointCloud completePointCloudMsg;
int debugLevel = 1;

void LoadParameters()
{
  WatchFiles watch_files;
  ConfigReader config(ros::package::getPath("cgr_localization").append("/").c_str());

  config.init(watch_files);

  config.addFile("config/kinect_parameters.cfg");

  if(!config.readFiles()){
    printf("Failed to read config\n");
    exit(1);
  }

  {
    ConfigReader::SubTree c(config,"KinectParameters");

    unsigned int maxDepthVal;
    bool error = false;
    error = error || !c.getReal("f",kinectDepthCam.f);
    error = error || !c.getReal("fovH",kinectDepthCam.fovH);
    error = error || !c.getReal("fovV",kinectDepthCam.fovV);
    error = error || !c.getInt("width",kinectDepthCam.width);
    error = error || !c.getInt("height",kinectDepthCam.height);
    error = error || !c.getUInt("maxDepthVal",maxDepthVal);
    kinectDepthCam.maxDepthVal = maxDepthVal;

    if(error){
      printf("Error Loading Kinect Parameters!\n");
      exit(2);
    }
  }

  {
    ConfigReader::SubTree c(config,"PlaneFilteringParameters");

    bool error = false;
    error = error || !c.getUInt("maxPoints",filterParams.maxPoints);
    error = error || !c.getUInt("numSamples",filterParams.numSamples);
    error = error || !c.getUInt("numLocalSamples",filterParams.numLocalSamples);
    error = error || !c.getUInt("planeSize",filterParams.planeSize);
    error = error || !c.getReal("maxError",filterParams.maxError);
    error = error || !c.getReal("maxDepthDiff",filterParams.maxDepthDiff);
    error = error || !c.getReal("minInlierFraction",filterParams.minInlierFraction);
    error = error || !c.getReal("WorldPlaneSize",filterParams.WorldPlaneSize);
    error = error || !c.getUInt("numRetries",filterParams.numRetries);
    filterParams.runPolygonization = false;

    if(error){
      printf("Error Loading Plane Filtering Parameters!\n");
      exit(2);
    }
  }

  planeFilter.setParameters(&kinectDepthCam,filterParams);
}

void depthCallback(const sensor_msgs::Image &msg)
{
  ROS_DEBUG_STREAM_NAMED("DepthCallback", "Depth image " << msg.header.stamp.toSec());

  //Copy the depth data
  const uint8_t* ptrSrc = msg.data.data();
  uint16_t depth[640*480];
  memcpy(depth, ptrSrc, 640*480*(sizeof(uint16_t)));

  //Generate filtered point cloud  
  std::vector<vector3f> filteredPointCloud;
  std::vector<vector3f> pointCloudNormals;
  std::vector<vector3f> outlierCloud;
  std::vector<vector2i> pixelLocs;
  std::vector<PlanePolygon> planePolygons;

  planeFilter.GenerateFilteredPointCloud(depth, filteredPointCloud, pixelLocs, pointCloudNormals, outlierCloud, planePolygons);
  
  if(debugLevel>0){
    filteredPointCloudMsg.points.clear();
    filteredPointCloudMsg.header.stamp = ros::Time::now();
    filteredPointCloudMsg.header.seq = 0;
    filteredPointCloudMsg.header.frame_id = "base_link";
    filteredPointCloudMsg.channels.clear();
    
    vector<geometry_msgs::Point32>* points = &(filteredPointCloudMsg.points);
    geometry_msgs::Point32 p;
    for(int i=0; i<(int)filteredPointCloud.size(); i++){
      p.x = filteredPointCloud[i].x;
      p.y = filteredPointCloud[i].y;
      p.z = filteredPointCloud[i].z;
      points->push_back(p);
    }
    filteredPointCloudPublisher.publish(filteredPointCloudMsg);
  }

  //Complete point cloud processing
  vector<vector3f> completePointCloud;
  vector<int> completePixelLocs;

  if(debugLevel>0){
    planeFilter.GenerateCompletePointCloud(depth, completePointCloud, completePixelLocs);

    completePointCloudMsg.points.clear();
    completePointCloudMsg.header.stamp = ros::Time::now();
    completePointCloudMsg.header.seq = 0;
    completePointCloudMsg.header.frame_id = "base_link";
    completePointCloudMsg.channels.clear();

    vector<geometry_msgs::Point32>* points = &(completePointCloudMsg.points);
    geometry_msgs::Point32 p;
    for(int i=0; i<(int)completePointCloud.size(); i++){
      p.x = completePointCloud[i].x;
      p.y = completePointCloud[i].y;
      p.z = completePointCloud[i].z;
      points->push_back(p);
    }
    completePointCloudPublisher.publish(completePointCloudMsg);
  }
}

int main(int argc, char** argv)
{
  // Load parameters from configuration files.
  LoadParameters();

  double seed = floor(fmod(GetTimeSec()*1000000.0,1000000.0));
  if(debugLevel>0) printf("Seeding with %d\n",(unsigned int)seed);
  srand(seed);

  // Initialize ros for depth image cloud topic.
  InitHandleStop();
  ros::init(argc, argv, "FSPF");
  ros::NodeHandle n;
  
//   ros::Subscriber kinectSubscriber = n.subscribe("kinect_depth", 1, depthCallback);
  ros::Subscriber kinectSubscriber = n.subscribe("/camera/depth/image_raw", 1, depthCallback);
  
  filteredPointCloudPublisher = n.advertise<sensor_msgs::PointCloud>("Cobot/Kinect/FilteredPointCloud", 1);
  completePointCloudPublisher = n.advertise<sensor_msgs::PointCloud>("Cobot/Kinect/CompletePointCloud", 1);

  ros::spin();
  
  if(debugLevel>0) printf("closing.\n");
  return 0;
}
