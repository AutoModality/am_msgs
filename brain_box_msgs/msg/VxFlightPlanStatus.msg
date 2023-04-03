# Status of currently executing flight plan
std_msgs/Header header

# ID of currently executing flight plan
string id

# status of currently executing flight plan
uint8 IDLE=0		# no currently executing flight plan
uint8 EXECUTING=1	# flight plan is executing
uint8 PAUSED=2		# flight plan is paused
uint8 ABORTED=3		# flight plan aborted
uint8 ERROR_EXIT=4	# flight plan exited with error
uint8 SUCCESS=5		# flight plan completed

uint8 status		# one of the above

uint16 cmd_index	# currently executing command index

brain_box_msgs/VxFlightPlanCmd cmd_current	# currently executing command

float64 cmd_duration	# duration in S of currently executing command in sec

float64 plan_duration	# duration in S since start of flight plan in sec

float64 plan_distance   # distance travelled since start of plan

float64 cmd_distance    # distance travlled since start of current command

float64 milestone_distance # distance traveled since approaching the surrent milestone

string milestone_id    # milestone id if following trajectory

uint16 milestone_index  # index of milestone approaching