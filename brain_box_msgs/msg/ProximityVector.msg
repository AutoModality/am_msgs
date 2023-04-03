# This is used to define a prxomity vector.
# This same message is used to both specify what proximity vector the perception system
#   is suppose to track and for the perception system to report proximities along that vector.
#

# Normal header information.
# Note that the frame is typically Body_FLU, but in theory could be any frame of reference
std_msgs/Header header

# Simple id string used to correlate requests for proximity info with the reporting of the proximity info
string id

# Distance along the vector and region as reported by the proxmity preception system
float32 distance

# yaw_angle of the proximity vector in the frame of reference specified in radians
float32 yaw_angle_r

# pitch angle of the proximity vector in the frame of reference specified in radians
float32 pitch_angle_r

# Span of the region for the perception system to search for proximities in the yaw direction in radians
float32 yaw_span_r

# Span of the region for the perception system to search for proximities in the pitch direction in radians
float32 pitch_span_r
