# used to represent a flight plan command
uint8 IDLE=0
uint8 LAUNCH=1
uint8 LAND=2
uint8 LOITER=3
uint8 TRACK_TARGET=4
uint8 FOLLOW_TRAJECTORY=5
uint8 RTL=6
uint8 TARGET_LAND=7
uint8 TERRAIN_FOLLOW=8
uint8 SEARCH=9
uint8 FOLLOW_ROW=10
uint8 MANUAL=11

# command as specified above
uint8 command

# identifier for the object to be executed by the command
string object_id

# amount of time to wait in sec before executing the command
builtin_interfaces/Duration wait_time
