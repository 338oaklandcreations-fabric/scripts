#!/bin/sh

ps aux | grep Machinery
ps aux | grep furSwarm
ps aux | grep tcl

sudo sh -c "echo 'PWM RUN - '; cat /sys/devices/ocp.3/bs_pwm_test_P9_14.12/run"
sudo sh -c "echo 'PWM DUTY - '; cat /sys/devices/ocp.3/bs_pwm_test_P9_14.12/duty"
sudo sh -c "echo 'PWM PERIOD - '; cat /sys/devices/ocp.3/bs_pwm_test_P9_14.12/period"

sudo sh -c "echo 'GPIO 48 DIRECTION - '; cat /sys/class/gpio/gpio48/direction"
sudo sh -c "echo 'GPIO 48 VALUE - '; cat /sys/class/gpio/gpio48/value"
