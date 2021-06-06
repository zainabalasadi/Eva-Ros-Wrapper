import math
import numpy as np
import json
import types
import time
import socket
from evasdk import Eva
from geometry_msgs.msg import Vector3

# VARIABLES
DEFAULT_POSE_HOME = [0, 0.5235, -1.7453, 0, -1.9198, 0]
DEFAULT_END_EFFECTOR_ORIENTATION = {'w': 0.0, 'x': 0.0, 'y': 1.0, 'z': 0.0}

"""
Helper method to setup the Eva object
"""
def _setup_eva_connection():
    # config = load_use_case_config()
    host = '172.16.172.1'
    token = '532dc0b09dbcc79423bc21e31560de5f22c82206'
    return Eva(host, token)
   
"""
This method performs a standard quaternion multiplication
quaternion_0 : [qR0, qV0], with qR0 being the real part of the quaternion
quaternion_1 : [qR1, qV1], with qR1 being the real part of the quaternion
"""
def _quaternion_multiply(quaternion_1, quaternion_0):
    w0, x0, y0, z0 = quaternion_0
    w1, x1, y1, z1 = quaternion_1
    return np.array([-x1 * x0 - y1 * y0 - z1 * z0 + w1 * w0,
                     x1 * w0 + y1 * z0 - z1 * y0 + w1 * x0,
                     -x1 * z0 + y1 * w0 + z1 * x0 + w1 * y0,
                     x1 * y0 - y1 * x0 + z1 * w0 + w1 * z0], dtype=np.float64)


class EvaDriver:
    def __init__(self):
        self.eva = _setup_eva_connection()
        self._is_grasp = False
        pos3 = Vector3()
        pos3.x = 0.25
        pos3.y = -0.15
        pos3.z = 0.2
        self._current_pos = pos3

    """
    Generic getters and setters for EvaDriver.
    """
    def get_is_grasp(self):
        return self._is_grasp
    def set_is_grasp(self, new_is_grasp):
        if isinstance(new_is_grasp, types.BooleanType):
            self._is_grasp = new_is_grasp

    def get_current_pos(self):
        return self._current_pos
    def set_current_pos(self, new_pos):
        self._current_pos = new_pos

    """
    Pick up the item in Eva's current position. The function will do
    nothing if Eva already has something in her grasp. For now, we will
    just print out a message and sleep for a while.
    """
    def pick(self):
        if not self.get_is_grasp():
            print('ACTION: I am picking up an object...')
            time.sleep(1)
            self.set_is_grasp(True)

    """
    Drop the item in Eva's grasp at the current position. The function
    will do nothing if Eva has nothing in her grasp. For now, we will
    just print out a message.
    """
    def drop(self):
        if self.get_is_grasp():
            print('ACTION: I am dropping an object...')
            time.sleep(1)
            self.set_is_grasp(False)

    """
    Take Eva back to her home position.
    """
    def go_home(self):
        print('MOVE: I am going home...')
        self.eva.control_go_to(DEFAULT_POSE_HOME)

    """
    Stubby stop function
    TODO: Check if Eva SDK has stop functionality
    """
    def stop(self):
        # self.eva.control_stop_loop()
        print("Fake stopping...")

    """
    Move Eva to the given position.
    position: Catersian position, with respect to the robot's origin (in metres)
    angle: Angular rotation of axis 6 in degrees
    """
    def go_to_position(self, position, angle):
        #print('MOVE: I am going to move by x={:f}, y={:f} y={:f}'.format(position["x"], position["y"], position["z"]))
        print('MOVE: I am going to move by x={:f}, y={:f} y={:f}'.format(position.x, position.y, position.z))
        success_ik, joints_ik = self.solve_ik_head_down([0, 0.5235, -1.7453, 0, -1.9198, 0], angle, position)

        if 'success' in success_ik:
            with self.eva.lock():
                self.eva.control_go_to(joints_ik)
                print('Performed move to joint angles', joints_ik)
                #self.set_current_pos(joints_ik)
        else:
            print('Cannot perform move, error:', success_ik)
       
    """
    This method solves the inverse kinematics problem for the special
    case of the end-effector pointing downwards, perpendicular to the ground.
    guess: IK guess, a 1x6 array of joint angles in radians
    theta: Angular rotation of axis 6 in degrees
    xyz_absolute: Cartesian position, with respect to robot's origin (in metres)
    """
    def solve_ik_head_down(self, guess, theta, xyz_absolute):
        #pos_json = {'x': (xyz_absolute["x"]), 'y': (xyz_absolute["y"]), 'z': (xyz_absolute["z"])}
        pos_json = {'x': (xyz_absolute.x), 'y': (xyz_absolute.y), 'z': (xyz_absolute.z)}
       
        orient_relative = [math.cos(np.deg2rad(theta) / 2), 0, 0, math.sin(np.deg2rad(theta) / 2)]
        orient_absolute = _quaternion_multiply([0, 0, 1, 0], orient_relative)
        orient_json = {'w': (orient_absolute[0]), 'x': (orient_absolute[1]), 'y': (orient_absolute[2]), 'z': (orient_absolute[3])}
       
        result_ik = self.eva.calc_inverse_kinematics(guess, pos_json, orient_json)
        success_ik = result_ik['ik']['result']
        joints_ik = result_ik['ik']['joints']
        return success_ik, joints_ik