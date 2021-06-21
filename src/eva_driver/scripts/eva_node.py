#!/usr/bin/env python
# Eva ROS Wrapper/Node
# Created on 20/05/2021
# Zainab Alasadi

import rospy
from eva_driver.eva_driver import EvaDriver

from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import Point
from std_msgs.msg import Int32
from std_srvs.srv import Trigger
from eva_driver.msg import EvaJoint


class EvaNode:
    def __init__(self):
        self.driver = EvaDriver()
       
        # Publishing frequency
        # publish_current_pos_frequency = rospy.get_param("~publish_current_pos_frequency", 5.0)
        publish_grip_status_frequency = rospy.get_param("~publish_motor_status_frequency", 1.0)

        # Subscribers and services
        rospy.Subscriber("pos_command", Point, self.callback_pos_command)
        rospy.Service("stop_motor", Trigger, self.callback_stop)

        # Publishers
        # self.current_pos_pub = rospy.Publisher("current_pos", EvaJoint, queue_size = 10)
        self.grip_status_pub = rospy.Publisher("grip_status", Int32, queue_size = 1)
        # rospy.Timer(rospy.Duration(1.0/publish_current_pos_frequency), self.publish_current_pos)
        rospy.Timer(rospy.Duration(1.0/publish_grip_status_frequency), self.publish_grip_status)


    def stop(self):
        self.driver.stop()

    def callback_pos_command(self, msg):
        if (msg.x == 0 and msg.y == 0 and msg.z == 0):
            return
        else:
            nudge_coordinates = {"x": msg.x, "y": msg.y, "z": msg.z}
            self.driver.go_to_position(nudge_coordinates)

    def callback_stop(self, req):
        self.stop()
        return {"success": True, "message": "Eva has been stopped."}


    # def publish_current_pos(self, event = None):
    #     self.current_pos_pub.publish(self.driver.get_current_pos())
       
    # def publish_current_speed(self, event=None):
        # self.current_speed_pub.publish(self.motor.get_speed())

    def publish_grip_status(self, event = None):
        self.grip_status_pub.publish(self.driver.get_is_grasp())

    def callback_pose(self, msg):
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
    # Instantiate Eva node
    rospy.init_node("eva_driver")
    eva_node = EvaNode()
    rospy.on_shutdown(eva_node.stop)
    rospy.loginfo("Eva node is now started, ready to get commands.")
    rospy.spin()
