# This message describes an action that might be included at the beginning or end of a trajectory segment in a flight plan

# Typical message header
# 
std_msgs/Header header

# id: the id of the action to be taken (i.e. reset_location)
# 
string id

# pre_execution: optional, determines if this action is taken before or after the execution of the trajectory
#                Defaults to false.
# 
bool pre_execution

# pause_length: optional, in milliseconds, how long to pause upon the execution of the action
# 
float32 pause

