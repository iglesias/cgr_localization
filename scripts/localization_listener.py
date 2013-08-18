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

def localization_listener():

  # anonymous=True flag means that rospy chooses a unique
  # name for the 'localization_listener' node so that multiple
  # listeners can run simultaenously.
  rospy.init_node('localization_listener', anonymous=True)

  # subscribe to the localization topic to receive LocalizationMsg
  rospy.Subscriber('localization_laser', LocalizationMsg, lidarCallback, queue_size=1)
  rospy.Subscriber('localization_kinect', LocalizationMsg, depthCallback, queue_size=1)

  # prevent python from exiting until the node is stopped
  rospy.spin()

  # plot pose over time
  display_data()

def display_data():
  import matplotlib.pyplot as plt

  # remove the first elements of the lists because it contains the default localization
  # set when no data has been yet received
  LIDAR.pop(0)
  LIDAR.pop(0)
  DEPTH.pop(0)
  DEPTH.pop(0)

  print('len(LIDAR)=%d' % len(LIDAR.x))
  print('len(DEPTH)=%d' % len(DEPTH.x))

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

if __name__ == '__main__':
  localization_listener()

