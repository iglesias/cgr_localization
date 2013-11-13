#!/usr/bin/env python

class Pose:
  ''' TODO DOC '''

  def __init__(self):
    # the position and orientation over time will be stored in these lists
    self.timeStamp = list()
    self.x = list()
    self.y = list()
    self.angle = list()

  def append(self,timeStamp,x,y,angle):
    self.timeStamp.append(timeStamp)
    self.x.append(x)
    self.y.append(y)
    self.angle.append(angle)

  def pop(self,index=-1):
    self.timeStamp.pop(index)
    self.x.pop(index)
    self.y.pop(index)
    self.angle.pop(index)

  def adjustTimeStamp(self,refTimeStamp):
    self.timeStamp[:] = [timeStamp - refTimeStamp for timeStamp in self.timeStamp]

PKG = 'cgr_localization' # this package name
import roslib; roslib.load_manifest(PKG)

import rospy
from cgr_localization.msg import LocalizationMsg

LIDAR = Pose()
DEPTH = Pose()

def lidarCallback(data):
  rospy.loginfo('LIDAR timeStamp: %f x:%f y:%f angle:%f' % (data.timeStamp, data.x, data.y, data.angle))
  LIDAR.append(data.timeStamp,data.x,data.y,data.angle)
  rospy.sleep(0.1)

def depthCallback(data):
  rospy.loginfo('DEPTH timeStamp: %f x:%f y:%f angle:%f' % (data.timeStamp, data.x, data.y, data.angle))
  DEPTH.append(data.timeStamp,data.x,data.y,data.angle)
  rospy.sleep(0.1)

def localization_listener(dump_dirname='posefiles', dump_fname='pose'):

  # anonymous=True flag means that rospy chooses a unique
  # name for the 'localization_listener' node so that multiple
  # listeners can run simultaenously.
  rospy.init_node('localization_listener', anonymous=True)

  # subscribe to the localization topic to receive LocalizationMsg
#   rospy.Subscriber('localization_lidar', LocalizationMsg, lidarCallback, queue_size=1)
  rospy.Subscriber('localization', LocalizationMsg, depthCallback, queue_size=1)

  # prevent python from exiting until the node is stopped
  rospy.spin()

  # remove the first elements of the lists because they contain the default
  # localization, set when no data has been yet received
#   LIDAR.pop(0)
#   LIDAR.pop(0)
  DEPTH.pop(0)
  DEPTH.pop(0)

#   refTimeStamp = min(LIDAR.timeStamp[0],DEPTH.timeStamp[0])
#   LIDAR.adjustTimeStamp(refTimeStamp)
  refTimeStamp = DEPTH.timeStamp[0]
  DEPTH.adjustTimeStamp(refTimeStamp)

  # plot pose over time
#   display_data()

  # serialize and save data into disk
  dump_data(dirname=dump_dirname, fname=dump_fname)

def display_data():
  import matplotlib.pyplot as plt

  fig, axarr = plt.subplots(2,2)

  axarr[0,0].plot(LIDAR.timeStamp,LIDAR.x)
  axarr[0,0].plot(DEPTH.timeStamp,DEPTH.x)

  axarr[0,1].plot(LIDAR.timeStamp,LIDAR.y)
  axarr[0,1].plot(DEPTH.timeStamp,DEPTH.y)

  axarr[1,0].plot(LIDAR.timeStamp,LIDAR.angle)
  axarr[1,0].plot(DEPTH.timeStamp,DEPTH.angle)

  axarr[1,1].plot(LIDAR.x,LIDAR.y)
  axarr[1,1].plot(DEPTH.x,DEPTH.y)

  plt.show()

def dump_data(dirname, fname):
  import pickle

  pose = [LIDAR,DEPTH]
  pickle.dump(pose, open('%s/%s.p' % (dirname, fname),'wb'))

  print 'data dumped to %s/%s.p!' % (dirname, fname)

if __name__ == '__main__':
  import sys

  if len(sys.argv)==3:
    # call from cgr_benchmark looks like: ./localization_listener posefilesdir posefilename
    localization_listener(sys.argv[1], sys.argv[2])
  else:
    localization_listener()

