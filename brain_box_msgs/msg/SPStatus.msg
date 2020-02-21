uint8 STATE_LANDED=0
uint8 STATE_TAKING_OFF=1
uint8 STATE_LOITER=2
uint8 STATE_TRACKING=3
uint8 STATE_LANDING=4
uint8 STATE_TRAJECTORY=5
uint8 STATE_RTL=6
uint8 STATE_WAYPOINT=7

Header header
Status status
uint8 state
uint16 watchdog_timeouts
string target_id
