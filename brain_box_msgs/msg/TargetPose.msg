int8 TYPE_MARKER_ARCUO = 0
int8 TYPE_MARKER_APRILTAG = 1

std_msgs/Header header
float32 confidence
geometry_msgs/Pose feature_pose
geometry_msgs/Pose pose
uint8 type
string target_id
brain_box_msgs/Point2[] outline
