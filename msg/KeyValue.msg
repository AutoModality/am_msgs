# General (key, value) pair
#
# This is equivalent to diagnostic_msgs/KeyValue, repeated here to
# avoid introducing a trivial stack dependency.

string key                     # tag label
string value                   # corresponding value

uint8 INT=0
uint8 BOOL=1
uint8 DOUBLE=2
uint8 STRING=3

uint8 type                     # type of the value
