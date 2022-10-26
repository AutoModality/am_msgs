# A 3D AM occupancy map in binary format
std_msgs/Header header

# Resolution (in m) of the smallest octree nodes
float64 resolution

# binary serialization of octree, use conversions.h to read and write octrees
int8[] data