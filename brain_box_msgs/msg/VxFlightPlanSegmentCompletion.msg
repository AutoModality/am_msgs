# Record of one completed trajectory segment within a flight plan execution.

uint16 command_index
string trajectory_id

uint16 segment_index
string segment_id

# Segment runtime totals measured by the same execution-layer state used to
# evaluate the segment's end conditions.
float64 segment_duration
float64 segment_distance

builtin_interfaces/Time completed_at

brain_box_msgs/VxSegmentCompletionReason reason
