# used to contain data about milestones

# unique identifier
string id

# speed in m/s to travers to the milestone. If 0 then use arrival time
float64 traversal_speed

# Time to arrive at the milestone. Is used only if the traversal time is 0.
builtin_interfaces/Time arrival_time

# Amount of time in sec to loiter at the milestone
builtin_interfaces/Duration loiter_time

# Yaw of the vehicle while in traversal to milestone
brain_box_msgs/VxYaw traversal_yaw

# Yaw of the vehicle while at the milestone. Only used if the loiter time > 0
brain_box_msgs/VxYaw loiter_yaw

# Location of the milestone
brain_box_msgs/GISEntity location
