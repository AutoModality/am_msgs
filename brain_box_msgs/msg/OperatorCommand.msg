# Commands sent by the Operator to Transition System States
# https://automodality.atlassian.net/wiki/spaces/AMROS/pages/929234949/AMROS+System+States
uint8 ARM=0			# Prepare the drone for launch
uint8 CANCEL=2		# Cancel ARMING and go back to ready
uint8 LAUNCH=3		# launch the mission
uint8 PAUSE=4		# momentarily wait at current position
uint8 RESUME=5		# continue mission from paused state
uint8 MANUAL=6		# operator controlled takeover
uint8 LANDED=7		# mission complete (not necessarily a success) and ready to ARM again
uint8 ABORT=8		# operator signals to stop mission, but not yet in manual control
uint8 SHUTDOWN=9	# stopping the system completely

std_msgs/Header header					# frame_id field is irrelevant
string node_name				# node sending the commands for the operator
uint8 command					# One of the enumerated commands above
