import numpy as np
import matplotlib.pyplot as plt

SaveFile	= False
Plot		= True
output		= ''
FloorID		= 7 

floorFile = open('cvap_tr14_floor%d-rlm.txt' % FloorID, 'r')
fig = plt.figure()
ax = fig.add_subplot(111)
xmin, xmax, ymin, ymax = [1000, -1000, 1000, -1000]
while True:
	line = floorFile.readline()
	if line == '':
		break

	x1, y1, x2, y2 = map(float, line.split())

	# Rotate 90 degrees counter-clockwise
	x1, y1, x2, y2 = -y1, x1, -y2, x2

	xmin = min(xmin, x1, x2)
	xmax = max(xmax, x1, x2)
	ymin = min(ymin, y1, y2)
	ymax = max(ymax, y1, y2)

	ax.plot([x1, x2], [y1, y2], 'b')

	if SaveFile:
		output += '%f,%f,%f,%f\n' % (x1, y1, x2, y2)

floorFile.close()
if SaveFile:
	outputFile = open('CVAP%d_vector.txt' % FloorID, 'w')
	outputFile.write(output)
	outputFile.close()

plt.axis([xmin-5, xmax+5, ymin-5, ymax+5])
ax.set_aspect('equal')

if Plot:
	plt.show()
