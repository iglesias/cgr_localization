#!/usr/bin/env python

import subprocess

BINDIR = '/home/iglesias/workspace/cgr_upstream/cgr_localization/bin'

# run CGR localization with lidar and depth in parallel
cgr_commands = [
	'%s/cgr_localization -d0 --num-particles=100 __name:=lidar_cgr_localization localization:=localization_lidar' % BINDIR,
	'%s/cgr_localization -d0 -l -p --num-particles=100 __name:=depth_cgr_localization localization:=localization_depth' % BINDIR,
]
cgr_processes = [subprocess.Popen(cmd, shell=True) for cmd in cgr_commands]

# run localization listener
listener_command = './localization_listener.py __name:=localization_listener'
listener_process = subprocess.Popen(listener_command, shell=True)

# play bag file
play_command = 'rosbag play --clock ~/workspace/data/cobot2_ghc7_kinect.bag'
play_process = subprocess.Popen(play_command, shell=True)

# wait for completion of bag file
play_process.wait()

# kill listener process
listener_process.send_signal(subprocess.signal.SIGINT)
subprocess.call('rosnode kill /localization_listener', shell=True)

# kill CGR processes
[cgr_process.send_signal(subprocess.signal.SIGKILL) for cgr_process in cgr_processes]
# kill CGR nodes (for some reason, they remain after send_signal)
subprocess.call('rosnode kill /depth_cgr_localization', shell=True)
subprocess.call('rosnode kill /lidar_cgr_localization; sleep 1', shell=True)

