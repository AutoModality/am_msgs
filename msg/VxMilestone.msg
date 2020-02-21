# used to contain data about milestones

# unique identifier
string id

# speed in m/s to travers to the milestone. If 0 then use arrival time
float64 traversal_speed

# Time to arrive at the milestone. Is used only if the traversal time is 0.
time arrival_time

# Amount of time in sec to loiter at the milestone
duration loiter_time

# Yaw of the vehicle while in traversal to milestone
VxYaw traversal_yaw

# Yaw of the vehicle while at the milestone. Only used if the loiter time > 0
VxYaw loiter_yaw

# Location of the milestone
GISEntity location
