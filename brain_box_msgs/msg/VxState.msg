uint8 OFF=0
uint8 BOOTING=1
uint8 READY=2
uint8 ARMING=3
uint8 ARMED=4
uint8 AUTO=5
uint8 DISARMING = 6
uint8 SEMI_AUTO=7
uint8 HOLD=8
uint8 ABORT=9
uint8 MANUAL=10
uint8 SHUTDOWN=11
uint8 LAST_STATE=11

std_msgs/Header header
uint8 state
float64 gps_latitude
float64 gps_longitude
float64 gps_altitude
float32 hdop_m
float32 vdop_m
float32 alt_ato_m
float32 height_agl_m
float32 heading_deg
float32 pitch_deg
float32 roll_deg
float32 gimbal_yaw_deg
float32 gimbal_pitch_deg
float32 gimbal_roll_deg
float32 h_speed_mps
float32 v_speed_mps
uint8 log_level
uint16 log_duration
string fp_feature_id
bool fp_in_view
float64 fp_x
float64 fp_y
float64 fp_z
