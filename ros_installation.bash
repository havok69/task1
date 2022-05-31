#!/bin/bash

#Setup your computer to accept software from packages.ros.org.
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

#The old key has been revoked as part of the measures to deal with a recent security incident

#The key has been updated and the old one is no longer valid, causing the issues with apt update and apt install

#Remove the old key
sudo apt-key del 421C365BD9FF1F717815A3895523BAEEB01FA116

#Add the new key
sudo -E apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

sudo apt clean && sudo apt update

sudo apt install ros-noetic-desktop-full

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

#To install this tool and other dependencies for building ROS packages
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

#With the following, you can initialize rosdep.
sudo apt install python3-rosdep
rosdep update
sudo rosdep init

