cmake_minimum_required(VERSION 3.5)
project(brain_box_msgs)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED) #for message generation
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(nav_msgs REQUIRED)
find_package(shape_msgs REQUIRED)
find_package(vision_msgs REQUIRED)


rosidl_generate_interfaces(${PROJECT_NAME}

	#messages
	msg/AMMap.msg
	msg/AprilTagDetection.msg
	msg/AprilTagDetectionArray.msg
	msg/BabySitterStatus.msg
	msg/BBAttitude.msg 
	msg/BBGlobalPosition.msg
	msg/BBLatency.msg 
	msg/BBVxCommand.msg
	msg/BeaconRangeMsg.msg
	msg/BlinkMCommand.msg
	msg/BoundingBox.msg
	msg/BoundingBoxes.msg
	msg/C2Status.msg
	msg/CeilingHist.msg
	msg/CeilingPC2.msg
	msg/CeilingStatus.msg
	msg/Collision.msg
	msg/CollisionView.msg
	msg/CollisionViews.msg
	msg/CommsStatus.msg
	msg/ControllerState.msg
	msg/ControlVariables.msg
	msg/CorrFrontHist.msg
	msg/CorrSidesHist.msg
	msg/CorrSidesYawList.msg
	msg/CorrStatus.msg
	msg/CRUD.msg
	msg/DelayStats.msg
	msg/DepthCmnd.msg
	msg/DepthStatus.msg
	msg/EdgeHist.msg
	msg/EdgeStatus.msg
	msg/FeatureStatus.msg
	msg/FeatureStatusList.msg
	msg/FeatureStatusPose.msg
	msg/FlightSegment.msg
	msg/FlightSegments.msg
	msg/FlightSegmentStatus.msg
	msg/Float32ArrayStamped.msg
	msg/FTPCmnd.msg
	msg/FTPStatus.msg
	msg/Gimbal.msg
	msg/GimbalPose.msg
	msg/GISEntity.msg
	msg/GPSAsset.msg
	msg/GPSLocation.msg
	msg/GSAMStatus.msg
	msg/GSCommand.msg
	msg/GSHeader.msg
	msg/GSMSDKStatus.msg
	msg/GSPNStatus.msg
	msg/GuidanceStatus.msg
	msg/Heartbeat.msg
	msg/Int32Stamped.msg
	msg/KeyValue.msg
	msg/LaserCluster.msg
	msg/LaserClusters.msg
	msg/LatencyImage.msg
	msg/LatencyLaserScan.msg
	msg/LatencyOdometry.msg
	msg/LatencyPointCloud.msg
	msg/LatencyPointCloud2.msg
	msg/LatencyPoseStamped.msg
	msg/LatencyPoseWithCovarianceStamped.msg
	msg/LatencyTwistStamped.msg
	msg/LatencyTwistWithCovarianceStamped.msg
	msg/Latency.msg
	msg/LatencyHeader.msg
	msg/LidarStatus.msg 
	msg/LifeCycleState.msg 
	msg/LifeCycleCommand.msg 
	msg/Line.msg
	msg/LineP2P.msg
	msg/LocationCoord.msg
	msg/LocationSource.msg
	msg/LogControl.msg
	msg/MarkerConfig.msg
	msg/MarkerConfigFamily.msg
	msg/MarkDetectStatus.msg  
	msg/MarkerStatus.msg
	msg/MarkerType.msg
	msg/MaxMinAve.msg
	msg/MissionIdArray.msg
	msg/NodeStatus.msg
	msg/NormalsStamped.msg
	msg/NormalWithPoint.msg
	msg/NormalsWithPointsStamped.msg
	msg/ObjectCount.msg
	msg/OdomLatency.msg
	msg/OperatorCommand.msg
	msg/OperatorMsg.msg
	msg/PacketMsg.msg
	msg/PassageFeature.msg
	msg/PassageFeatures.msg
	msg/PassageFeaturesArray.msg
	msg/PassageFeatureWindow.msg
	msg/PolarPointCloud.msg
	msg/PanelStatus.msg
	msg/PanelHist.msg
	msg/ProximityVector.msg
	msg/ProximityList.msg
	msg/PIDParam.msg
	msg/Point2.msg
	msg/Profiling.msg
	msg/ProfilingArray.msg
	msg/Range.msg
	msg/RangeBall.msg
	msg/RGB.msg
	msg/Row.msg
	msg/RowView.msg 
	msg/RPYMsgs.msg
	msg/Segment.msg
	msg/SegmentationIndicesStamped.msg
	msg/SegmentationStamped.msg
	msg/SegmentIndex.msg
	msg/SeqNo.msg
	msg/SPStatus.msg 
	msg/Status.msg 
	msg/SSStatus.msg 
	msg/SCStatus.msg 
	msg/StampedAltimeter.msg
	msg/SpatialDetection.msg
	msg/SpatialDetectionArray.msg
	msg/StampedHeartBeat.msg
	msg/StampedInterruptTime.msg
	msg/StationStatus.msg
	msg/SuperNodeStatus.msg
	msg/SuperStatus.msg
	msg/Super2Status.msg
	msg/SystemReport.msg
	msg/SystemState.msg
	msg/TargetPose.msg 
	msg/TargetPoseArray.msg 
	msg/VideoCmnd.msg
	msg/VideoStatus.msg
	msg/VisionCmnd.msg
	msg/VisionStatus.msg  
	msg/VisLogStatus.msg  
	msg/VxFCUStatus.msg
	msg/VxFeaturePose.msg
	msg/VxFlightPlanCmd.msg
	msg/VxFlightPlanStatus.msg
	msg/VxKinematics.msg
	msg/VxManeuver.msg
	msg/VxMilestone.msg
	msg/VxMissionExecCmd.msg
	msg/VxMissionStatus.msg
	msg/VxProximity.msg
	msg/VxState.msg
	msg/VxTrajectory.msg
	msg/VxTrajectorySegment.msg
	msg/VxTrajectoryStatus.msg
	msg/VxYaw.msg
	msg/ZEDStatus.msg
	
	#services
	srv/AMMapBoundingBoxQuery.srv
	srv/AnalyzeSingleImage.srv
	srv/AttitudeControl.srv
	srv/CameraActionControl.srv
	srv/CameraSelect.srv
	srv/DroneTaskControl.srv
	srv/GetAMMap.srv
	srv/GimbalAngleControl.srv
	srv/GimbalSpeedControl.srv
	srv/GlobalPositionControl.srv
	srv/LocalPositionControl.srv
	srv/SDKPermissionControl.srv
	srv/SegmentSearch.srv
	srv/VelocityControl.srv
	srv/VxFlightPlan.srv
	srv/VxMissionExec.srv
	
	#actions
	action/CheckForObjects.action
	action/GlobalPositionNavigation.action
	action/LocalPositionNavigation.action
	action/WaypointNavigation.action
	action/Launch.action
	action/Land.action
	action/RTL.action
	action/VxFlightExec.action
	action/Fibonacci.action
	
	DEPENDENCIES builtin_interfaces std_msgs geometry_msgs sensor_msgs nav_msgs shape_msgs vision_msgs
 )
 
if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # uncomment the line when a copyright and license is not present in all source files
  #set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # uncomment the line when this package is not in a git repo
  #set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
