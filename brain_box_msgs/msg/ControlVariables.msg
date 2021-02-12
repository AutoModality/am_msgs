Header header

string controller_name

string feature_id
string frame_id

string comment

float64 seq_no

float64[3] destination
float64[3] start_loc
float64[3] maneuver_vector
float64 maneuver_length
float64 target_yaw_rad
float64 target_yaw_x
float64 target_yaw_y
uint8 yaw_type

bool body_FLU_frame

uint8 control_type
bool rotate_only

float64 speed
float64 max_acceleration
bool speed_constrained

#    ControlState drone_state
float64[3] ds_location
float64[3] ds_location_confidence
float64[3] ds_velocity_FLU
float64 ds_yaw
float64 ds_yaw_confidence
float64 ds_update_age
float64 ds_perceived_age

float64 loop_time
float64 control_time

float64[3] set_point
float64 set_point_dist
float64 set_point_length
float64 set_point_length_start
float64[3] set_point_vector

float64 destination_dist
float64[3] destination_vector
float64[3] trajectory_vector
float64[3] trajectory_cmd
float64 trajectory_speed
float64[3] normal_vector
float64[3] normal_cmd
float64 normal_speed
float64[3] motion_vector

float64[3] vel_cmd

float64 yaw_err
float64 yaw_cmd

bool vel_ground_ref
bool yaw_absolute

bool feature_end

uint8 flight_status
uint8 control_status


