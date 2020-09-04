cmake_minimum_required(VERSION 2.8.3)
project(brain_box_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  geometry_msgs
  nav_msgs
  uuid_msgs
  genmsg
  actionlib_msgs
  actionlib
  std_msgs
  sensor_msgs
  shape_msgs)

file(GLOB msg_files
    msg/*.msg
)

###################################
## catkin specific configuration ##
###################################
add_message_files( 
	DIRECTORY msg
	FILES
	${msg_files}
	)
	
add_service_files(
	DIRECTORY srv
	FILES
	AMMapBoundingBoxQuery.srv
	AttitudeControl.srv
	CameraActionControl.srv
	DjiCameraSelect.srv
	DjiCameraSelectMulti.srv
	DroneTaskControl.srv
	GetAMMap.srv
	GimbalAngleControl.srv
	GimbalSpeedControl.srv
	GlobalPositionControl.srv
	LocalPositionControl.srv
	SDKPermissionControl.srv
	SegmentSearch.srv
	VelocityControl.srv
	VxFlightPlan.srv
	VxMissionExec.srv)
	
add_action_files(
	DIRECTORY action
	FILES
	GlobalPositionNavigation.action
	LocalPositionNavigation.action
	WaypointNavigation.action
	Launch.action
	Land.action
	RTL.action
	VxFlightExec.action)

generate_messages( DEPENDENCIES uuid_msgs std_msgs nav_msgs geometry_msgs actionlib_msgs sensor_msgs shape_msgs)

set(CMAKE_CXX_FLAGS "-std=c++0x ${CMAKE_CXX_FLAGS}")

catkin_package(

  CATKIN_DEPENDS
    message_runtime
    geometry_msgs
    nav_msgs
    uuid_msgs
    std_msgs
    sensor_msgs
	shape_msgs
)

#############
## Install ##
#############
if (EXISTS include/${PROJECT_NAME})
install(DIRECTORY include/${PROJECT_NAME}
 DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION})
endif()


