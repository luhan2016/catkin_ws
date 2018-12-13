#!/bin/bash

cd ~/catkin_ws         
catkin_make
source devel/setup.bash

roslaunch virtual_blinker sim.launch >> output/20181213output3.txt

