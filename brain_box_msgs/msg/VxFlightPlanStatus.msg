# Status of currently executing flight plan
std_msgs/Header header

# ID of currently executing flight plan
string id

# Stable identifier for one execution/run of the flight plan. This disambiguates
# repeated launches of the same plan_id when reporting completed segments.
string execution_id

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

# Explicit trajectory id for trajectory-backed commands. This avoids requiring
# consumers to infer trajectory identity from cmd_current.object_id.
string trajectory_id

float64 cmd_duration	# duration in S of currently executing command in sec

float64 plan_duration	# duration in S since start of flight plan in sec

float64 plan_distance   # distance travelled since start of plan

float64 cmd_distance    # distance travlled since start of current command

# Legacy milestone fields kept for backward compatibility with existing
# mission/task consumers. In the XML trajectory execution path these are
# currently populated with the active trajectory segment index/id, not a
# VxMilestone from the older milestone trajectory model. New consumers should
# use the explicit segment_* fields below.
float64 milestone_distance # distance traveled since approaching the current milestone

string milestone_id    # milestone id if following trajectory

uint16 milestone_index  # index of milestone approaching

# Explicit current trajectory segment fields for detailed progress reporting.
uint16 segment_index

string segment_id

float64 segment_duration # duration in S since the current segment started

float64 segment_distance # distance traveled since the current segment started

# Distance to the current segment destination/vicinity target. Negative means
# not applicable or not available for the current segment.
float64 vicinity_distance

# Ordered list of segments completed during this execution, oldest first.
brain_box_msgs/VxFlightPlanSegmentCompletion[] completed_segments
