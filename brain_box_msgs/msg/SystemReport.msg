uint8 DISCONNECTED=0
uint8 CONNECTED=1
uint8 CONNECTING=2

std_msgs/Header header


int32 uptime_seconds

#CPU Report
int32 cores_count
float32 cpu_percent_total
float32[] cpu_percent_cores
float32[] temperatures
int32[] cpu_hz

#CPU and Mem Usage along with PID and Process Name with Health Status of each processes 
brain_box_msgs/Status[] processes

#Hard Drive Report
float32 hd_used_percentage
float32 hd_used

#GPU Report
float32 gpu_temp
float32 gpu_used_percentage

#Memory Report
float32 mem_total_mb
float32 mem_used_percentage
float32 mem_free_percentage


#Transform Tree Status
brain_box_msgs/TransformStatus[] tf_tree_status

#Running Node names 
string[] nodes

#IP Sensors Status
brain_box_msgs/IPSensorStatus[] ip_sensors

#Network Report
float32 wifi_rssi
uint8 wifi_is_connected

#Error Messages
string error_msg