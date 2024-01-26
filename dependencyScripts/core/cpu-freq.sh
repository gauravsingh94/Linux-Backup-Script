#!/bin/bash

################################## CPU Freq ###########################


# Step 1
echo "Step 1: Cloning auto-cpufreq repository and installing..."
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer

# Step 2
echo "Step 2: Checking auto-cpufreq version..."
auto-cpufreq --version

# Step 3
echo "Step 3: Displaying auto-cpufreq help..."
auto-cpufreq --help

# Step 4
echo "Step 4: Installing auto-cpufreq..."
sudo auto-cpufreq --install