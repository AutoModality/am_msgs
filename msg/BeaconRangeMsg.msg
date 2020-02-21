# Range message for beacon:
# header
# beaconPosition: where the beacon is placed
# isLos
# range
# std
# bias
# scale
# eta
# alpha
# d0
# id

std_msgs/Header header
geometry_msgs/Point beaconPosition
std_msgs/Bool isLos
std_msgs/Float32 range
std_msgs/Float32 std
std_msgs/Float32 bias
std_msgs/Float32 scale
std_msgs/Float32 eta
std_msgs/Float32 alpha
std_msgs/Float32 d0
std_msgs/UInt64 id