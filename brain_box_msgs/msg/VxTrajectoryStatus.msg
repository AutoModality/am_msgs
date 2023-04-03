# This message describes the currently executing segments in a flight plan

# Typical message header. 
# Note that the frame in the flight segment is not relevant. The frames are associated with
# Specific maneuvers
#
std_msgs/Header header

# Current segment being executed
#
brain_box_msgs/VxTrajectorySegment current

# Next segment being executed.
# Note that if the id attribute of the next segment is "" or "none" then there is no next segment
#
brain_box_msgs/VxTrajectorySegment next

