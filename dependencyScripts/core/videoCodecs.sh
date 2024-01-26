#!/bin/bash

############################# Video Codecs Setups #######################################


echo "Started to setup video codecs."
echo "Installing GStreamer plugins..."
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel

echo "Upgrading Multimedia group with optional packages..."
sudo dnf group upgrade --with-optional Multimedia

echo "Media Codecs installed"