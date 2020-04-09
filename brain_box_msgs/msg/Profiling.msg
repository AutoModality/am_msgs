# Profiling message carries a list of execution times with their associated names.

std_msgs/Header header

# Name of each code block executed
string[] names

# Time spent in each code block
# Must match the size with 'names' attribute
float32[] times

# (Optional) Any valuable indication from the execution of each code block
# Must match the size with 'names' attribute if it is not empty
float32[] data