# Line equation message
# Carries the parameters that define a line in 3D space (parametric form).
# Format (X,Y,Z) = (x,y,z) + t*(a,b,c)
# Format (X,Y,Z) =  point  + t*direction

# The point that the line passes over
geometry_msgs/Point point

# Direction of the line.
geometry_msgs/Vector3 direction