# This is used to represent a specific view for collision avoidance

# enums of view direction
uint8 DIRECTION_FRONT=0
uint8 DIRECTION_BACK=1
uint8 DIRECTION_LEFT=2
uint8 DIRECTION_RIGHT=3
uint8 DIRECTION_UP=4
uint8 DIRECTION_DOWN=5
uint8 DIRECTION_MOTION=6

# Direction of this view using one of the above enums
uint8 direction

# Direction vector of the view in FLU body frame
float32[3] direction_vector_m

# Span of the view in vertical and horizontal direction
float32 vertical_span
float32 horizontal_span

# Vector to closest object in view. If vector unknown then set coordinates to negative
float32[3] obstacle_vector_m

# Distance to closest obstacle in view. If the view is not working then set to negative
float32 obstacle_distance_m
