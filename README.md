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
- navigate to workspace to build
   ```
   catkin make
   ```



### Reference
- Part of the code is written on top of ROS packages from OpenLMD.

  - [OpenLMD](https://github.com/openlmd)
  - [OpenLMD publications](https://www.sciencedirect.com/science/article/abs/pii/S0736584517303770)

- Data-driven adaptive control for LAAM, from SIMTech
  - [Original paper](https://www.mdpi.com/2076-3417/10/22/7967)

