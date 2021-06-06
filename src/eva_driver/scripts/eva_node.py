#!/usr/bin/env python
# Eva ROS Wrapper/Node
# Created on 20/05/2021
# Zainab Alasadi

import rospy
from eva_driver.eva_driver import EvaDriver

# from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Int32
from geometry_msgs.msg import Vector3
from std_srvs.srv import Trigger

SECOND_POSE = [0.46364754, -0.72790223, -1.9077139, -0.00000023, -0.5059762, 0.46364772]
FIRST_POSE = [-0.5404194, 0.3765179, -2.7276318, 0.00000090, -0.79047835, -0.54042065]

class EvaNode:
    def __init__(self):
        self.driver = EvaDriver()
       
        # Publishing frequency
        publish_current_pos_frequency = rospy.get_param("~publish_current_pos_frequency", 5.0)
        publish_grip_status_frequency = rospy.get_param("~publish_motor_status_frequency", 1.0)

        # Subscribers and services
        # rospy.Subscriber("odom", PoseStamped, self.callback_pose)
        rospy.Subscriber("pos_command", Vector3, self.callback_pos_command)
        rospy.Service("stop_motor", Trigger, self.callback_stop)

        # Publishers
        self.current_pos_pub = rospy.Publisher("current_pos", Vector3, queue_size = 10)
        self.grip_status_pub = rospy.Publisher("grip_status", Int32, queue_size = 1)
        rospy.Timer(rospy.Duration(1.0/publish_current_pos_frequency), self.publish_current_pos)
        rospy.Timer(rospy.Duration(1.0/publish_grip_status_frequency), self.publish_grip_status)


    def stop(self):
        self.driver.stop()

    def callback_pos_command(self, msg):
        print(msg)
       
        self.driver.set_current_pos(msg)
       
        pos4 = Vector3()
        pos4.x = 0.3
        pos4.y = 0.1
        pos4.z = 0.2
       
        if self.driver.get_current_pos() == pos4:
       
            print("I am innnnn")
            eva_node.driver.go_to_position(pos4, 0)
            with eva_node.driver.eva.lock():
                eva_node.driver.go_home()
       

    def callback_stop(self, req):
        self.stop()
        return {"success": True, "message": "Eva has been stopped."}

    def publish_current_pos(self, event = None):
        self.current_pos_pub.publish(self.driver.get_current_pos())
       
    # def publish_current_speed(self, event=None):
        # self.current_speed_pub.publish(self.motor.get_speed())

    def publish_grip_status(self, event = None):
        self.grip_status_pub.publish(self.driver.get_is_grasp())

    def callback_pose(self, msg):
        # TODO: Need to format in way go_to_position() understands (msg.pose.position ?)
        # TODO: Check if value orders need to swapped (Unity -> Eva, LHC -> RHC)
        position = [msg.pose.position.x, msg.pose.position.y, msg.pose.position.z]
        self.driver.go_to_position(position, 0)

    def callback_pick(self):
        # TODO
        print("TODO: picking")
        self.driver.pick()

    def callback_drop(self):
        # TODO
        print("TODO: dropping")
        self.driver.drop()


if __name__ == "__main__":
    # Instantiate Eva noded
    rospy.init_node("eva_driver")
    eva_node = EvaNode()
    rospy.on_shutdown(eva_node.stop)
    rospy.loginfo("Eva node is now started, ready to get commands.")

    # with eva_node.driver.eva.lock():
        # eva_node.driver.eva.control_go_to(FIRST_POSE)
        # eva_node.driver.eva.control_go_to(SECOND_POSE)
        # eva_node.driver.go_home()
   
    rospy.spin()
