# used to send human readable messages to the operator

Header header

# types of messages
# If you make changes to these then also change operator_msg_type.h
uint8 INFO=0
uint8 WARNING=1
uint8 OP_ERROR=2
uint8 CRITICAL=3
uint8 SYSTEM=4
uint8 COMMAND=5

uint8 type

# actual message or command
string message

# additional parameter, if any that goes with the message or command
string parameter
