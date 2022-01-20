# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "labjack_ros: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ilabjack_ros:/home/chenlequn/laam_control_ws/src/labjac_ros/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(labjack_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chenlequn/laam_control_ws/src/labjac_ros/msg/MsgLabJack.msg" NAME_WE)
add_custom_target(_labjack_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "labjack_ros" "/home/chenlequn/laam_control_ws/src/labjac_ros/msg/MsgLabJack.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(labjack_ros
  "/home/chenlequn/laam_control_ws/src/labjac_ros/msg/MsgLabJack.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/labjack_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(labjack_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/labjack_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(labjack_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(labjack_ros_generate_messages labjack_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenlequn/laam_control_ws/src/labjac_ros/msg/MsgLabJack.msg" NAME_WE)
add_dependencies(labjack_ros_generate_messages_cpp _labjack_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(labjack_ros_gencpp)
add_dependencies(labjack_ros_gencpp labjack_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS labjack_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(labjack_ros
  "/home/chenlequn/laam_control_ws/src/labjac_ros/msg/MsgLabJack.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/labjack_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(labjack_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/labjack_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(labjack_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(labjack_ros_generate_messages labjack_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenlequn/laam_control_ws/src/labjac_ros/msg/MsgLabJack.msg" NAME_WE)
add_dependencies(labjack_ros_generate_messages_eus _labjack_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(labjack_ros_geneus)
add_dependencies(labjack_ros_geneus labjack_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS labjack_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(labjack_ros
  "/home/chenlequn/laam_control_ws/src/labjac_ros/msg/MsgLabJack.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/labjack_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(labjack_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/labjack_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(labjack_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(labjack_ros_generate_messages labjack_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenlequn/laam_control_ws/src/labjac_ros/msg/MsgLabJack.msg" NAME_WE)
add_dependencies(labjack_ros_generate_messages_lisp _labjack_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(labjack_ros_genlisp)
add_dependencies(labjack_ros_genlisp labjack_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS labjack_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(labjack_ros
  "/home/chenlequn/laam_control_ws/src/labjac_ros/msg/MsgLabJack.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/labjack_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(labjack_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/labjack_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(labjack_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(labjack_ros_generate_messages labjack_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenlequn/laam_control_ws/src/labjac_ros/msg/MsgLabJack.msg" NAME_WE)
add_dependencies(labjack_ros_generate_messages_nodejs _labjack_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(labjack_ros_gennodejs)
add_dependencies(labjack_ros_gennodejs labjack_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS labjack_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(labjack_ros
  "/home/chenlequn/laam_control_ws/src/labjac_ros/msg/MsgLabJack.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/labjack_ros
)

### Generating Services

### Generating Module File
_generate_module_py(labjack_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/labjack_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(labjack_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(labjack_ros_generate_messages labjack_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenlequn/laam_control_ws/src/labjac_ros/msg/MsgLabJack.msg" NAME_WE)
add_dependencies(labjack_ros_generate_messages_py _labjack_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(labjack_ros_genpy)
add_dependencies(labjack_ros_genpy labjack_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS labjack_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/labjack_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/labjack_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(labjack_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/labjack_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/labjack_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(labjack_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/labjack_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/labjack_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(labjack_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/labjack_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/labjack_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(labjack_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/labjack_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/labjack_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/labjack_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(labjack_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
