# Attributes describing a row in the field of view of the AUV

# X, Y location, in NED
float32[2] location

# orientation of the row at the location
float32 orientation

# average height above the location
float32 height

#length of the row along the orientation
float32 length

# width of the row perpendicular to the orientation
float32 width

# Where the row is located wrt the UAV
# 0 = in front of UAV
# < 0 means to the left of UAV
# > 0 means to the right of the UAV
# Furthermore the magnitude of the number tells you what row it is wrt other rows.
# e.g. -2 means that this is the second row to the left of the UAV
#   while 1 means it is the first row to the right.
int8 row_index

# id of the row. Sould be > 0 and globally unique
int32 row_id

# offset from center in meters (negative is to left of uav) 
float32 offset_m