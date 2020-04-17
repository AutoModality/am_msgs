uint8 INVALID=0				# illegal state

uint8 UNCONFIGURED=1		# node has no stored state
uint8 INACTIVE=2			# node is not currently performing any processing
uint8 ACTIVE=3				# normal run state
uint8 FINALIZED=4			# node will never run again

uint8 CONFIGURING=5			# load configuration and setup
uint8 CLEANING_UP=6			# return to original startup state
uint8 SHUTTING_DOWN=7   	# prepare to be destroyed
uint8 ACTIVATING=8			# prepare to run
uint8 DEACTIVATING=9    	# stop running
uint8 ERROR_PROCESSING=10	# deal with errors

Header header				# frame_id field is irrelevant
string node_name			# node name
uint8 state					# current state
string status				# node specific state
string value				# node specific state
int32 process_id			# node process id
