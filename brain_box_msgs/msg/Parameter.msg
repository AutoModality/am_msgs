#the name of the recepient node for the parameter e.g. am_locator.
# receiver_type must be set to brain_box_msgs::msg::RECEIVER_TYPE_LOCAL for the node_name to be checked
string node_name

#an integer representing receiver type. Options: brain_box_msgs::msg::RECEIVER_TYPE_GLOBAL (0) for global parameters or  brain_box_msgs::msg::RECEIVER_TYPE_LOCAL (1) for local parameters
int64 receiver_type

rcl_interfaces/Parameter parameter

int64 RECEIVER_TYPE_GLOBAL = 0
int64 RECEIVER_TYPE_LOCAL = 1