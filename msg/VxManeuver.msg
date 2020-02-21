# This message describes a particular maneuver that the vehicle may undertake

# Typical message header. 
# Note that the frame should be the same as the frame of the feature id as defined below
#
Header header

# if the following flag is false then this maneuver is invalid
#
bool valid

# unique identifier for this maneuver
#
string maneuver_id

# Identifier for the feature associated with this maneuver.
# In general the pose specified in this maneuver are in the frame of reference of the specified feature.
# By convention if the feature id is: 
# "GLOBAL" then the maneuver coordinates are in the global frame of reference. 
# "LOCAL_ABSOLUTE" then the coordinates are in the local frame of reference, but in absolute coordinates. 
# "LOCAL_RELATIVE" then the coordinates are relative to the vehicles current location. 
# Else the coordinates are in the fame of reference of the feature specified.
#
string feature_id

# Frame id of the maneuver. This is optional and if not defined should be set to "".
# This frame overrides the default frame for this maneuver.
string frame_id

# speed in m/s to traverse to the milestone.
#
float64 traversal_speed

# Fixed flight time of the maneuver.
# Zero means unlimited flight time.
#
float64 flight_time

# Yaw of the vehicle while in traversal to milestone
# Note the following wrt the yaw# speed in m/s to traverse to the milestone.
# If traversal_yaw.type == FIXED then the angle is wrt to the ENU frame
# If traversal_yaw.type == RELATIVE then the angle is wrt to the feature in ground plane.
#
VxYaw traversal_yaw

# coordinate milestone of the maneuver
#
geometry_msgs/Point position

# amount of time to pause once milestone is reached
#
float32 pause

