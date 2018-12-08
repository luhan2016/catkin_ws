# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "virtual_blinker: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ivirtual_blinker:/home/lu/catkin_ws/src/virtual_blinker/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(virtual_blinker_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/CarState.msg" NAME_WE)
add_custom_target(_virtual_blinker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "virtual_blinker" "/home/lu/catkin_ws/src/virtual_blinker/msg/CarState.msg" ""
)

get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg" NAME_WE)
add_custom_target(_virtual_blinker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "virtual_blinker" "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg" ""
)

get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/Path.msg" NAME_WE)
add_custom_target(_virtual_blinker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "virtual_blinker" "/home/lu/catkin_ws/src/virtual_blinker/msg/Path.msg" "virtual_blinker/Position"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/CarState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/virtual_blinker
)
_generate_msg_cpp(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/virtual_blinker
)
_generate_msg_cpp(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/virtual_blinker
)

### Generating Services

### Generating Module File
_generate_module_cpp(virtual_blinker
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/virtual_blinker
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(virtual_blinker_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(virtual_blinker_generate_messages virtual_blinker_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/CarState.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_cpp _virtual_blinker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_cpp _virtual_blinker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/Path.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_cpp _virtual_blinker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(virtual_blinker_gencpp)
add_dependencies(virtual_blinker_gencpp virtual_blinker_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS virtual_blinker_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/CarState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/virtual_blinker
)
_generate_msg_eus(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/virtual_blinker
)
_generate_msg_eus(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/virtual_blinker
)

### Generating Services

### Generating Module File
_generate_module_eus(virtual_blinker
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/virtual_blinker
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(virtual_blinker_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(virtual_blinker_generate_messages virtual_blinker_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/CarState.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_eus _virtual_blinker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_eus _virtual_blinker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/Path.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_eus _virtual_blinker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(virtual_blinker_geneus)
add_dependencies(virtual_blinker_geneus virtual_blinker_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS virtual_blinker_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/CarState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/virtual_blinker
)
_generate_msg_lisp(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/virtual_blinker
)
_generate_msg_lisp(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/virtual_blinker
)

### Generating Services

### Generating Module File
_generate_module_lisp(virtual_blinker
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/virtual_blinker
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(virtual_blinker_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(virtual_blinker_generate_messages virtual_blinker_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/CarState.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_lisp _virtual_blinker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_lisp _virtual_blinker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/Path.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_lisp _virtual_blinker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(virtual_blinker_genlisp)
add_dependencies(virtual_blinker_genlisp virtual_blinker_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS virtual_blinker_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/CarState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/virtual_blinker
)
_generate_msg_nodejs(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/virtual_blinker
)
_generate_msg_nodejs(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/virtual_blinker
)

### Generating Services

### Generating Module File
_generate_module_nodejs(virtual_blinker
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/virtual_blinker
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(virtual_blinker_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(virtual_blinker_generate_messages virtual_blinker_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/CarState.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_nodejs _virtual_blinker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_nodejs _virtual_blinker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/Path.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_nodejs _virtual_blinker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(virtual_blinker_gennodejs)
add_dependencies(virtual_blinker_gennodejs virtual_blinker_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS virtual_blinker_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/CarState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/virtual_blinker
)
_generate_msg_py(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/virtual_blinker
)
_generate_msg_py(virtual_blinker
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/virtual_blinker
)

### Generating Services

### Generating Module File
_generate_module_py(virtual_blinker
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/virtual_blinker
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(virtual_blinker_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(virtual_blinker_generate_messages virtual_blinker_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/CarState.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_py _virtual_blinker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/Position.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_py _virtual_blinker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lu/catkin_ws/src/virtual_blinker/msg/Path.msg" NAME_WE)
add_dependencies(virtual_blinker_generate_messages_py _virtual_blinker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(virtual_blinker_genpy)
add_dependencies(virtual_blinker_genpy virtual_blinker_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS virtual_blinker_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/virtual_blinker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/virtual_blinker
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(virtual_blinker_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/virtual_blinker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/virtual_blinker
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(virtual_blinker_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/virtual_blinker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/virtual_blinker
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(virtual_blinker_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/virtual_blinker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/virtual_blinker
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(virtual_blinker_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/virtual_blinker)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/virtual_blinker\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/virtual_blinker
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(virtual_blinker_generate_messages_py std_msgs_generate_messages_py)
endif()
