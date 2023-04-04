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
string state_string

