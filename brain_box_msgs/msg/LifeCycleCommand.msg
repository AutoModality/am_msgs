uint8 COMMAND_CREATE=0			# illegal state
uint8 COMMAND_CONFIGURE=1		# node has no stored state
uint8 COMMAND_CLEANUP=2			# node is not currently performing any processing
uint8 COMMAND_ACTIVATE=3		# normal run state
uint8 COMMAND_DEACTIVATE=4		# node will never run again
uint8 COMMAND_SHUTDOWN=5		# load configuration and setup
uint8 COMMAND_DESTROY=6			# return to original startup state
uint8 COMMAND_LAST=6

Header header					# frame_id field is irrelevant
string node_name				# node name
uint8 command					# lifecycle command
