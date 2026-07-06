builtin_interfaces/Time stamp

# Mission executor states
uint8 NO_PLAN=0
uint8 PLAN_LOADED=1
uint8 VALIDATED=2
uint8 PREFLIGHT_READY=3
uint8 RUNNING=4
uint8 PAUSED=5
uint8 COMPLETED=6
uint8 ABORTED=7
uint8 ERROR=8

uint8 state
string plan_id
string message
