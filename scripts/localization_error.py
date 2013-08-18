#!/usr/bin/env python

from localization_listener import Pose

import pickle
import numpy
import matplotlib.pyplot as plt
import math

pose = pickle.load(open('pose.p','rb'))
lidar = pose[0]
depth = pose[1]

error = Pose()
for i in xrange( min(len(lidar.timeStamp), len(depth.timeStamp)) ):
	xError = abs(lidar.x[i]-depth.x[i])
	yError = abs(lidar.y[i]-depth.y[i])

	angleError = lidar.angle[i]-depth.angle[i]
	if angleError > math.pi:
		angleError = angleError-2*math.pi
	elif angleError < -math.pi:
		angleError = angleError+2*math.pi
	angleError = abs(angleError)

	error.append(depth.timeStamp[i],xError,yError,angleError)

fig, axarr = plt.subplots(3,1)

axarr[0].plot(error.timeStamp,error.x)
axarr[0].set_xlabel('Time [s]')
axarr[0].set_ylabel('x error [m]')

axarr[1].plot(error.timeStamp,error.y)
axarr[1].set_xlabel('Time [s]')
axarr[1].set_ylabel('y error [m]')

axarr[2].plot(error.timeStamp,error.angle)
axarr[2].set_xlabel('Time [s]')
axarr[2].set_ylabel('angle error [rad]')

plt.show()
