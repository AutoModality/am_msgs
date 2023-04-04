# Pose wrt the feature

# The frame in this header should be tha same as the feature frame
std_msgs/Header header

# Feature id
#
string feature_id

# Location wrt the features reference point
#
geometry_msgs/Point position

# Yaw in radians wrt the features orientation in the ground plane.
#
float64 yaw_angle

# If this flag is true then the update is a result of an actual feature perception
#
bool perceived

# Set to true of the feature is at the end
#
bool feature_end

# Confidence (0 - 1.0) in each of the degrees of freedom being reported
# Order in the array is  x, y, z, yaw_angle
# If a particular degree of freedom is not being reported then its confidence should be 0.0
#
float32[4] confidence
