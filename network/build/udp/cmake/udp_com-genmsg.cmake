# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "udp_com: 1 messages, 2 services")

set(MSG_I_FLAGS "-Iudp_com:/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(udp_com_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg/UdpPacket.msg" NAME_WE)
add_custom_target(_udp_com_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "udp_com" "/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg/UdpPacket.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSend.srv" NAME_WE)
add_custom_target(_udp_com_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "udp_com" "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSend.srv" ""
)

get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSocket.srv" NAME_WE)
add_custom_target(_udp_com_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "udp_com" "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSocket.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg/UdpPacket.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/udp_com
)

### Generating Services
_generate_srv_cpp(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSend.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/udp_com
)
_generate_srv_cpp(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSocket.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/udp_com
)

### Generating Module File
_generate_module_cpp(udp_com
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/udp_com
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(udp_com_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(udp_com_generate_messages udp_com_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg/UdpPacket.msg" NAME_WE)
add_dependencies(udp_com_generate_messages_cpp _udp_com_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSend.srv" NAME_WE)
add_dependencies(udp_com_generate_messages_cpp _udp_com_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSocket.srv" NAME_WE)
add_dependencies(udp_com_generate_messages_cpp _udp_com_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(udp_com_gencpp)
add_dependencies(udp_com_gencpp udp_com_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS udp_com_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg/UdpPacket.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/udp_com
)

### Generating Services
_generate_srv_eus(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSend.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/udp_com
)
_generate_srv_eus(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSocket.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/udp_com
)

### Generating Module File
_generate_module_eus(udp_com
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/udp_com
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(udp_com_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(udp_com_generate_messages udp_com_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg/UdpPacket.msg" NAME_WE)
add_dependencies(udp_com_generate_messages_eus _udp_com_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSend.srv" NAME_WE)
add_dependencies(udp_com_generate_messages_eus _udp_com_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSocket.srv" NAME_WE)
add_dependencies(udp_com_generate_messages_eus _udp_com_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(udp_com_geneus)
add_dependencies(udp_com_geneus udp_com_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS udp_com_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg/UdpPacket.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/udp_com
)

### Generating Services
_generate_srv_lisp(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSend.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/udp_com
)
_generate_srv_lisp(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSocket.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/udp_com
)

### Generating Module File
_generate_module_lisp(udp_com
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/udp_com
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(udp_com_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(udp_com_generate_messages udp_com_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg/UdpPacket.msg" NAME_WE)
add_dependencies(udp_com_generate_messages_lisp _udp_com_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSend.srv" NAME_WE)
add_dependencies(udp_com_generate_messages_lisp _udp_com_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSocket.srv" NAME_WE)
add_dependencies(udp_com_generate_messages_lisp _udp_com_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(udp_com_genlisp)
add_dependencies(udp_com_genlisp udp_com_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS udp_com_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg/UdpPacket.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/udp_com
)

### Generating Services
_generate_srv_nodejs(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSend.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/udp_com
)
_generate_srv_nodejs(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSocket.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/udp_com
)

### Generating Module File
_generate_module_nodejs(udp_com
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/udp_com
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(udp_com_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(udp_com_generate_messages udp_com_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg/UdpPacket.msg" NAME_WE)
add_dependencies(udp_com_generate_messages_nodejs _udp_com_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSend.srv" NAME_WE)
add_dependencies(udp_com_generate_messages_nodejs _udp_com_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSocket.srv" NAME_WE)
add_dependencies(udp_com_generate_messages_nodejs _udp_com_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(udp_com_gennodejs)
add_dependencies(udp_com_gennodejs udp_com_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS udp_com_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg/UdpPacket.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/udp_com
)

### Generating Services
_generate_srv_py(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSend.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/udp_com
)
_generate_srv_py(udp_com
  "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSocket.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/udp_com
)

### Generating Module File
_generate_module_py(udp_com
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/udp_com
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(udp_com_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(udp_com_generate_messages udp_com_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/msg/UdpPacket.msg" NAME_WE)
add_dependencies(udp_com_generate_messages_py _udp_com_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSend.srv" NAME_WE)
add_dependencies(udp_com_generate_messages_py _udp_com_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/Documents/Projects/LearnROS/network/src/udp/srv/UdpSocket.srv" NAME_WE)
add_dependencies(udp_com_generate_messages_py _udp_com_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(udp_com_genpy)
add_dependencies(udp_com_genpy udp_com_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS udp_com_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/udp_com)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/udp_com
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(udp_com_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/udp_com)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/udp_com
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(udp_com_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/udp_com)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/udp_com
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(udp_com_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/udp_com)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/udp_com
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(udp_com_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/udp_com)
  install(CODE "execute_process(COMMAND \"/home/alexander/anaconda3/envs/carla/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/udp_com\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/udp_com
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(udp_com_generate_messages_py std_msgs_generate_messages_py)
endif()
