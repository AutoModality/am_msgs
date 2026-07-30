# Structured reason a trajectory segment completed.
#
# These values should be filled at the same branch that causes segment
# transition in the flight execution logic. Numeric final values are meaningful
# only for the matching reason type; use negative values when a field is not
# applicable or not available.

uint8 UNKNOWN=0
uint8 FLIGHT_TIME=1
uint8 DISTANCE=2
uint8 VICINITY=3
uint8 FEATURES_IN_VIEW=4
uint8 FEATURE_ENDS=5
uint8 PROXIMITY_CONDITIONS=6
uint8 ERROR=7

uint8 type

# Segment selected by the satisfied end condition. Reserved values such as
# GOTO_NEXT_SEGMENT, GOTO_END_TRAJECTORY, and GOTO_END_FLIGHTPLAN are allowed.
string goto_segment_id

# Final values for FLIGHT_TIME.
float64 elapsed_s
float64 target_s

# Final values for DISTANCE.
float64 distance_m
float64 target_m

# Final values for VICINITY.
float64 distance_to_target_m
float64 target_vicinity_m
float64 offset_x_m
float64 offset_y_m
float64 offset_z_m

# Final values for FEATURES_IN_VIEW or FEATURE_ENDS.
string feature_id
string feature_type

# Final values for PROXIMITY_CONDITIONS. For compound proximity conditions,
# this identifies the term that caused the group to evaluate true when known.
string proximity_direction
string proximity_comparator
float64 proximity_distance_m
float64 proximity_threshold_m

# Final values for ERROR or diagnostic detail for any reason type.
string error_type
string message
