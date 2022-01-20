# Closed-loop feedback control for laser aided additive manufacturing (LAAM) process
 

###  running platform
- Ubuntu 18.04
- ROS Melodic
- Python3 

# Instructions
To build the workspace:
- delete build and devel folder:
   ```
   catkin clean
   ```
- navigate to __src/labjack_ros/dependency__ folder to check the instructions on installation of LabJack related dependent packages
- Build and Install USB Camera driver: http://wiki.ros.org/usb_cam
- navigate to workspace to build, __force to build with python3 instead of python2__
   ```
   catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3
   ```

## Parameters Configurations
- USB camera number: in __camera_monitoring/launch__ folder, change the ```"/dev/video0"``` value in camera_monitoring.launch file, try ```"/dev/video1"``` or other value such as -1,2 to connect to your USB camera device
- to be updated


### Reference
- Part of the code is written on top of ROS packages from OpenLMD.

  - [OpenLMD](https://github.com/openlmd)
  - [OpenLMD publications](https://www.sciencedirect.com/science/article/abs/pii/S0736584517303770)

- Data-driven adaptive control for LAAM, from SIMTech
  - [Original paper](https://www.mdpi.com/2076-3417/10/22/7967)

