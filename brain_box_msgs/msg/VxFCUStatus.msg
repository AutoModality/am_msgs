# Used to contain FCU status items

# Control Modes
uint8 MANUAL=0
uint8 ACRO=1
uint8 ALTCTL=2
uint8 POSCTL=3
uint8 OFFBOARD=4
uint8 STABILIZED=5
uint8 AUTO_MISSION=6
uint8 AUTO_LOITER=7
uint8 AUTO_RTL=8
uint8 AUTO_LAND=9
uint8 AUTO_RTGS=10
uint8 AUTO_READY=11
uint8 AUTO_TAKEOFF=12
uint8 UNKNOWN=13

# Flight status
uint8 STANDBY=1
uint8 TAKE_OFF=2
uint8 IN_AIR=3
uint8 LANDING=4
uint8 FINISH_LANDING=5

bool connected
bool armed
bool guided
uint8 mode
uint8 flight_status
uint8 control_status

# Battery status
float32 battery_voltage
float32 battery_current
float32 battery_remaining # percentage 0..1

# Gimbal position
brain_box_msgs/Gimbal gimbal
