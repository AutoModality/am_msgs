# controller
string controller

# axis x=0, y=1, z=2, 3=ALL
uint8 axis

#default 1.5
float32 pid_p
#default 0.2
float32 pid_i
#default 0.25
float32 pid_d

#default 0.03
float32 i_max
#default 0.0
float32 i_min

#default 5.0
float32 max_error
#default 2.0
float32 max_set_point
#default -2.0
float32 min_set_point

#default 1.0
float32 land_error

#default 10
float32 loiter_time

#default -0.5
float32 land_speed


