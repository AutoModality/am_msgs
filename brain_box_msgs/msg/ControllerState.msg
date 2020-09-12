# State updates sent by the Controller of the Mission to indicate Session State
# https://automodality.atlassian.net/wiki/spaces/AMROS/pages/929234949/AMROS+System+States
# Commands generalized from to VxFCUStatus.msg
uint8 COMPLETED=0			    # The robot has completed the session

Header header					# frame_id field is irrelevant
string node_name				# node acting as the controller
uint8 command					# One of the enumerated commands above
