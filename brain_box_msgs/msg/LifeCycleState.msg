uint8 STATE_INVALID=0			# illegal state
uint8 STATE_UNCONFIGURED=1		# node has no stored state
uint8 STATE_INACTIVE=2			# node is not currently performing any processing
uint8 STATE_ACTIVE=3			# normal run state
uint8 STATE_FINALIZED=4			# node will never run again
uint8 STATE_CONFIGURING=5		# load configuration and setup
uint8 STATE_CLEANING_UP=6		# return to original startup state
uint8 STATE_SHUTTING_DOWN=7   	# prepare to be destroyed
uint8 STATE_ACTIVATING=8		# prepare to run
uint8 STATE_DEACTIVATING=9    	# stop running
uint8 STATE_ERROR_PROCESSING=10	# deal with errors
uint8 STATE_LAST=10

uint8 STATUS_OK=0				# all systems normal
uint8 STATUS_WARN=1				# running on edge of specifications, output is suspect
uint8 STATUS_ERROR=2			# running well out of specificaiton, output can't be trusted
uint8 STATUS_LAST=2

std_msgs/Header header					# frame_id field is irrelevant
string node_name				# node name
int32 process_id				# node process id
uint8 state						# current state
uint8 status					# status
string subsystem				# node specific subsystem name
string value					# node specific subsystem value
