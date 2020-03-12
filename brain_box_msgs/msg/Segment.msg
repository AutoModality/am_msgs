# Message for single segment
# It carries the unorganized point cloud, plane equation and the detected boundaries as line equations.

sensor_msgs/PointCloud2 points
shape_msgs/Plane plane
pc_segmentation/Line[] edges