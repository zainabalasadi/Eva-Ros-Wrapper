HoloLens-Eva-ROS Integration

## Setup
### Run Rosbridge
1. Source the IP address of the workspace and add this to the Unity Ros Connector game object  
`hostname -I`

2. Run rosbridge to listen to clients  
`roslaunch rosbridge_server rosbridge_websocket.launch`

### Run Eva
1. Run the Eva launch file to get start the Eva node  
`roslaunch eva_driver eva.launch`

2. To listen to topics and publish to topics, run  
`rostopic echo /current_pos`
`rostopic pub -1  pos_command geometry_msgs/Vector3 '0.2' '0.2' '0.2'`

### Troubleshooting
If you are receiving errors regarding the launch files, run:
```bash
catkin_make
source devel/setup.bash
```
