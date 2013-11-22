#!/usr/bin/env python

def ComputeError(pose):
  import math
  from localization_listener import Pose

  lidar = pose[0]
  depth = pose[1]

  error = Pose()

  for i in xrange(len(depth.timeStamp)):
    # look for the index in the lidar data with the closest time stamp
    mindiff = abs(depth.timeStamp[i]-lidar.timeStamp[0])
    best = 0
    for j in xrange(1, len(lidar.timeStamp)):
      if abs(depth.timeStamp[i]-lidar.timeStamp[j]) < mindiff:
        best = j
        mindiff = abs(depth.timeStamp[i]-lidar.timeStamp[j])

    xError = abs(lidar.x[best]-depth.x[i])
    yError = abs(lidar.y[best]-depth.y[i])

    angleError = lidar.angle[best]-depth.angle[i]
    if angleError > math.pi:
      angleError = angleError-2*math.pi
    elif angleError < -math.pi:
      angleError = angleError+2*math.pi
    angleError = abs(angleError)

    error.append(depth.timeStamp[i],xError,yError,angleError)

  return error

def DisplayErrors(errors):
  import matplotlib.pyplot as plt

  fig, axarr = plt.subplots(3,1)

  axarr[0].grid(True)
  axarr[0].set_ylabel(r'$e_{x} \ [\mathrm{m}]$', fontsize=18)
  axarr[0].set_label('x')

  axarr[1].grid(True)
  axarr[1].set_ylabel(r'$e_{y} \ [\mathrm{m}]$', fontsize=18)
  axarr[1].set_label('y')

  axarr[2].grid(True)
  axarr[2].set_xlabel(r'$t \ [\mathrm{s}]$', fontsize=18)
  axarr[2].set_ylabel(r'$e_{\theta} \ [\mathrm{rad}] $', fontsize=18)
  axarr[2].set_label('angle')

  plist = list()
  for i in xrange(len(errors)):
    p, = axarr[0].plot(errors[i].timeStamp, errors[i].x)
    plist.append(p)
    axarr[1].plot(errors[i].timeStamp, errors[i].y)
    axarr[2].plot(errors[i].timeStamp, errors[i].angle)

  fig.legend(plist, ('Complete Graph', 'Sparse Graph'), 'upper center', ncol=2, fancybox=True)
  plt.show()

import pickle
import os, os.path
from localization_listener import Pose

dirname = 'posefiles'
errors = list()
for f in ['complete.p', 'sparse.p']:
  errors.append(ComputeError(pickle.load(open('%s/%s' % (dirname, f), 'rb'))))

DisplayErrors(errors)
