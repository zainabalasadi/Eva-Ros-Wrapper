# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "eva_driver: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ieva_driver:/home/zainab/thesis/src/eva_driver/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(eva_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zainab/thesis/src/eva_driver/msg/EvaJoint.msg" NAME_WE)
add_custom_target(_eva_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "eva_driver" "/home/zainab/thesis/src/eva_driver/msg/EvaJoint.msg" ""
)

get_filename_component(_filename "/home/zainab/thesis/src/eva_driver/msg/Joints.msg" NAME_WE)
add_custom_target(_eva_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "eva_driver" "/home/zainab/thesis/src/eva_driver/msg/Joints.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(eva_driver
  "/home/zainab/thesis/src/eva_driver/msg/EvaJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eva_driver
)
_generate_msg_cpp(eva_driver
  "/home/zainab/thesis/src/eva_driver/msg/Joints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eva_driver
)

### Generating Services

### Generating Module File
_generate_module_cpp(eva_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eva_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(eva_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(eva_driver_generate_messages eva_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zainab/thesis/src/eva_driver/msg/EvaJoint.msg" NAME_WE)
add_dependencies(eva_driver_generate_messages_cpp _eva_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zainab/thesis/src/eva_driver/msg/Joints.msg" NAME_WE)
add_dependencies(eva_driver_generate_messages_cpp _eva_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(eva_driver_gencpp)
add_dependencies(eva_driver_gencpp eva_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS eva_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(eva_driver
  "/home/zainab/thesis/src/eva_driver/msg/EvaJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eva_driver
)
_generate_msg_eus(eva_driver
  "/home/zainab/thesis/src/eva_driver/msg/Joints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eva_driver
)

### Generating Services

### Generating Module File
_generate_module_eus(eva_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eva_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(eva_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(eva_driver_generate_messages eva_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zainab/thesis/src/eva_driver/msg/EvaJoint.msg" NAME_WE)
add_dependencies(eva_driver_generate_messages_eus _eva_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zainab/thesis/src/eva_driver/msg/Joints.msg" NAME_WE)
add_dependencies(eva_driver_generate_messages_eus _eva_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(eva_driver_geneus)
add_dependencies(eva_driver_geneus eva_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS eva_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(eva_driver
  "/home/zainab/thesis/src/eva_driver/msg/EvaJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eva_driver
)
_generate_msg_lisp(eva_driver
  "/home/zainab/thesis/src/eva_driver/msg/Joints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eva_driver
)

### Generating Services

### Generating Module File
_generate_module_lisp(eva_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eva_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(eva_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(eva_driver_generate_messages eva_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zainab/thesis/src/eva_driver/msg/EvaJoint.msg" NAME_WE)
add_dependencies(eva_driver_generate_messages_lisp _eva_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zainab/thesis/src/eva_driver/msg/Joints.msg" NAME_WE)
add_dependencies(eva_driver_generate_messages_lisp _eva_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(eva_driver_genlisp)
add_dependencies(eva_driver_genlisp eva_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS eva_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(eva_driver
  "/home/zainab/thesis/src/eva_driver/msg/EvaJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eva_driver
)
_generate_msg_nodejs(eva_driver
  "/home/zainab/thesis/src/eva_driver/msg/Joints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eva_driver
)

### Generating Services

### Generating Module File
_generate_module_nodejs(eva_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eva_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(eva_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(eva_driver_generate_messages eva_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zainab/thesis/src/eva_driver/msg/EvaJoint.msg" NAME_WE)
add_dependencies(eva_driver_generate_messages_nodejs _eva_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zainab/thesis/src/eva_driver/msg/Joints.msg" NAME_WE)
add_dependencies(eva_driver_generate_messages_nodejs _eva_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(eva_driver_gennodejs)
add_dependencies(eva_driver_gennodejs eva_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS eva_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(eva_driver
  "/home/zainab/thesis/src/eva_driver/msg/EvaJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eva_driver
)
_generate_msg_py(eva_driver
  "/home/zainab/thesis/src/eva_driver/msg/Joints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eva_driver
)

### Generating Services

### Generating Module File
_generate_module_py(eva_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eva_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(eva_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(eva_driver_generate_messages eva_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zainab/thesis/src/eva_driver/msg/EvaJoint.msg" NAME_WE)
add_dependencies(eva_driver_generate_messages_py _eva_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zainab/thesis/src/eva_driver/msg/Joints.msg" NAME_WE)
add_dependencies(eva_driver_generate_messages_py _eva_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(eva_driver_genpy)
add_dependencies(eva_driver_genpy eva_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS eva_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eva_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eva_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(eva_driver_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(eva_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eva_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eva_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(eva_driver_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(eva_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eva_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eva_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(eva_driver_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(eva_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eva_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eva_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(eva_driver_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(eva_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eva_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eva_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eva_driver
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eva_driver
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eva_driver/.+/__init__.pyc?$"
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(eva_driver_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(eva_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
