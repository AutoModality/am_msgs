# This message describes a trajectory segment which consists of maneuvers

# Typical message header. 
# Note that the frame in the flight segment is not relevant. The frames are associated with
# Specific maneuvers
#
std_msgs/Header header

# identifier for this segment
#
string id

# If this flag is true then this segment ends when the either the maneuvers are complete OR
# the feature in gthe next segment is detected.
#
bool next_feature_end

# This parameter specifies the amount of time to hover if the feature is not perceived.
# If there is no feature segment this is ignored.
# If this is < 0 then the default segment is executed.
#
float32 feature_hover_time

# The maneuver associated with a fearture. Note that the maneuver may not
# be valid meaning that there is no feature maneuver associated with this segment
#
brain_box_msgs/VxManeuver feature_maneuver

# The default maneuver to be done if either there is no valid feature maneuver or
# the features associated with that maneuver are not valid
#
brain_box_msgs/VxManeuver default_maneuver

