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

###################################
## catkin specific configuration ##
###################################
add_message_files( 
	DIRECTORY msg
	FILES
	AMMap.msg 
	BabySitterStatus.msg
	BBAttitude.msg 
	BBGlobalPosition.msg 
	BBLatency.msg 
	BBVxCommand.msg
	BeaconRangeMsg.msg
	BlinkMCommand.msg
	BoundingBox.msg
	BoundingBoxes.msg
	C2Status.msg
	CeilingHist.msg
	CeilingPC2.msg
	CeilingStatus.msg
	Collision.msg
	CommsStatus.msg
	ControlVariables.msg
	CorrFrontHist.msg
	CorrSidesHist.msg
	CorrSidesYawList.msg
	CorrStatus.msg
	CRUD.msg
	DelayStats.msg
	DepthCmnd.msg
	DepthStatus.msg
	EdgeHist.msg
	EdgeStatus.msg
	FeatureStatus.msg
	FeatureStatusList.msg
	FeatureStatusPose.msg
	FlightSegment.msg
	FlightSegments.msg
	FlightSegmentStatus.msg
	Float32ArrayStamped.msg
	FTPCmnd.msg
	FTPStatus.msg
	Gimbal.msg
	GimbalPose.msg
	GISEntity.msg
	GPSLocation.msg
	GSAMStatus.msg
	GSCommand.msg
	GSHeader.msg
	GSMSDKStatus.msg
	GSPNStatus.msg
	GuidanceStatus.msg
	Int32Stamped.msg
	Heartbeat.msg
	KeyValue.msg
	LidarStatus.msg 
	LifeCycleState.msg 
	LifeCycleCommand.msg 
	Line.msg
	LineP2P.msg
	LaserCluster.msg
	LaserClusters.msg
	Latency_Image.msg
	Latency_LaserScan.msg
	Latency_Odometry.msg
	Latency_PointCloud.msg
	Latency_PointCloud2.msg
	Latency_PoseStamped.msg
	Latency_PoseWithCovarianceStamped.msg
	Latency_TwistStamped.msg
	Latency_TwistWithCovarianceStamped.msg
	Latency.msg
	LatencyHeader.msg
	LocationCoord.msg
	LocationSource.msg
	LogControl.msg
	MarkerConfig.msg
	MarkerConfigFamily.msg
	MarkDetectStatus.msg  
	MarkerStatus.msg
	MarkerType.msg
	MaxMinAve.msg
	NodeStatus.msg
	NormalsStamped.msg
	NormalWithPoint.msg
	NormalsWithPointsStamped.msg
	OdomLatency.msg
	OperatorMsg.msg
	PassageFeature.msg
	PassageFeatures.msg
	PassageFeatureWindow.msg
	PolarPointCloud.msg
	PanelStatus.msg
	PanelHist.msg
	ProximityVector.msg
	ProximityList.msg
	PIDParam.msg
	Point2.msg
	Profiling.msg
	Range.msg
	RangeBall.msg
	RGB.msg
	Row.msg
	RowView.msg 
	RPYMsgs.msg
	Segment.msg
	SegmentationStamped.msg
	SeqNo.msg
	SPStatus.msg 
	Status.msg 
	SSStatus.msg 
	SCStatus.msg 
	StampedAltimeter.msg
	StampedHeartBeat.msg
	StampedInterruptTime.msg
	SuperNodeStatus.msg
	SuperStatus.msg
	Super2Status.msg
	SystemReport.msg
	TargetPose.msg 
	TargetPoseArray.msg 
	VideoCmnd.msg
	VideoStatus.msg
	VisionCmnd.msg
	VisionStatus.msg  
	VisLogStatus.msg  
	VxFCUStatus.msg
	VxFeaturePose.msg
	VxFlightPlanCmd.msg
	VxFlightPlanStatus.msg
	VxKinematics.msg
	VxManeuver.msg
	VxMilestone.msg
	VxMissionExecCmd.msg
	VxMissionStatus.msg
	VxProximity.msg
	VxState.msg
	VxTrajectory.msg
	VxTrajectorySegment.msg
	VxTrajectoryStatus.msg
	VxYaw.msg
	ZEDStatus.msg
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


