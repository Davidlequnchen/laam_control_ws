# Closed-loop feedback control for laser aided additive manufacturing (LAAM) process
## Introduction
This is the code repository for paper entitled "Data-Driven Adaptive Control for Laser-Based Additive Manufacturing with Automatic Controller Tuning"


#### Citation
If you find our work useful in your research, please cite our paper:

[Publication](https://www.mdpi.com/2076-3417/10/22/7967)

`
Chen L, Yao X, Chew Y, Weng F, Moon SK, Bi G. Data-Driven Adaptive Control for Laser-Based Additive Manufacturing with Automatic Controller Tuning. Applied Sciences. 2020; 10(22):7967. https://doi.org/10.3390/app10227967、
`

### System requirements
##### master branch
- Ubuntu 18.04
- ROS Melodic
- Python3 
  
##### ROS2-foxy branch
- to be updated 
##### Noetic branch
- to be updated 


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

  
- Other related projects from our research group on process monitoring and control for LAAM:
  - [Rapid surface defect identification for additive manufacturing with in-situ point cloud processing and machine learning](https://www.tandfonline.com/doi/abs/10.1080/17452759.2020.1832695)

