# Status of currently executing mission
Header header

# ID of currently executing mission
string id

# status of currently executing flight plan
uint8 IDLE=0		# no currently executing mission
uint8 EXECUTING=1	# flight plan is executing
uint8 PAUSED=2		# flight plan is paused
uint8 ABORTED=3		# flight plan aborted
uint8 ERROR_EXIT=4	# flight plan exited with error
uint8 DONE=5		# flight plan completed

uint8 status		# one of the above

uint8 error			# zero if no error, else error code

VxFlightPlanStatus cmd_current	# currently executing command

float64 duration	# duration of currently executing mission
