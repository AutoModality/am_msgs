# Commands sent by the Operator to Transition System States
# https://automodality.atlassian.net/wiki/spaces/AMROS/pages/929234949/AMROS+System+States
uint8 ARM=0			# Prepare the drone for launch
uint8 LAUNCH=1		# launch the mission
uint8 PAUSE=2		# momentarily wait at current position
uint8 RESUME=3		# continue mission from paused state
uint8 MANUAL=4		# operator controlled takeover
uint8 LANDED=5		# mission complete (not necessarily a success) and ready to ARM again
uint8 ABORT=6		# operator signals to stop mission, but not yet in manual control
uint8 SHUTDOWN=7	# stopping the system completely

Header header					# frame_id field is irrelevant
string node_name				# node sending the commands for the operator
