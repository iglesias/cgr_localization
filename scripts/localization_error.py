#!/usr/bin/env python


def ComputeError(pose):
	''' TODO DOC '''

	import math
	from localization_listener import Pose

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

	return error

def DisplayErrors(errors):
	''' TODO DOC '''

	import matplotlib.pyplot as plt

	fig, axarr = plt.subplots(3,1)

	axarr[0].set_xlabel('Time [s]')
	axarr[0].set_ylabel('x error [m]')
	axarr[0].set_label('x')

	axarr[1].set_xlabel('Time [s]')
	axarr[1].set_ylabel('y error [m]')
	axarr[1].set_label('y')

	axarr[2].set_xlabel('Time [s]')
	axarr[2].set_ylabel('angle error [rad]')
	axarr[2].set_label('angle')

	plist = list()
	for i in xrange(len(errors)):
		p, = axarr[0].plot(errors[i].timeStamp, errors[i].x)
		plist.append(p)
		axarr[1].plot(errors[i].timeStamp, errors[i].y)
		axarr[2].plot(errors[i].timeStamp, errors[i].angle)

	fig.legend(plist,('10 particles','20 particles','50 particles','100 particles'),
			'upper center',ncol=4,fancybox=True)
	plt.show()

import pickle
from localization_listener import Pose

pose10 = pickle.load(open('pose10.p','rb'))
pose20 = pickle.load(open('pose20.p','rb'))
pose50 = pickle.load(open('pose50.p','rb'))
pose100 = pickle.load(open('pose100.p','rb'))

error10 = ComputeError(pose10)
error20 = ComputeError(pose20)
error50 = ComputeError(pose50)
error100 = ComputeError(pose100)

DisplayErrors([error10,error20,error50,error100])

