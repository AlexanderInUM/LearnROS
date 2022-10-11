#!/usr/bin/env python3

"""
    Python 版 HelloWorld

"""
import rospy

if __name__ == "__main__":
    rospy.init_node("Hello")
    rospy.loginfo("ALexander has just used Python to say: Hello World!!!!")

