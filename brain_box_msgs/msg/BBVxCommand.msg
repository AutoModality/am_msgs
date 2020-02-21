uint8 COMMAND_START=0
uint8 COMMAND_STOP=1
uint8 COMMAND_TRACK_TARGET=2
uint8 FLIGHT_MODE_MANUAL=3
uint8 FLIGHT_MODE_ALTCTL=4
uint8 FLIGHT_MODE_POSCTL=5
uint8 COMMAND_MOVE=6

uint8 FOR_TARGET=0
uint8 FOR_GLOBAL=1
uint8 FOR_VEHICLE=2

Header header
uint8 command
string target_id
uint8 frame_of_reference
VxKinematics kinematics
