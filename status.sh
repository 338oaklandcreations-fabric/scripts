#!/bin/sh

export HOST=$(hostname)

if [ $HOST = "apis" ]; then
    ps aux | grep Guidance
fi
ps aux | grep Machinery
ps aux | grep furSwarm
ps aux | grep tcl

echo "P9_14"
sudo sh -c "echo '   PWM RUN - '; cat /sys/devices/ocp.3/bs_pwm_test_P9_14.12/run"
sudo sh -c "echo '   PWM DUTY - '; cat /sys/devices/ocp.3/bs_pwm_test_P9_14.12/duty"
sudo sh -c "echo '   PWM PERIOD - '; cat /sys/devices/ocp.3/bs_pwm_test_P9_14.12/period"
if [ $HOST = "apis" ]; then
   echo "P9_16"
   sudo sh -c "echo '   PWM RUN - '; cat /sys/devices/ocp.3/bs_pwm_test_P9_16.13/run"
   sudo sh -c "echo '   PWM DUTY - '; cat /sys/devices/ocp.3/bs_pwm_test_P9_16.13/duty"
   sudo sh -c "echo '   PWM PERIOD - '; cat /sys/devices/ocp.3/bs_pwm_test_P9_16.13/period"
   echo "P8_19"
   sudo sh -c "echo '   PWM RUN - '; cat /sys/devices/ocp.3/bs_pwm_test_P8_19.14/run"
   sudo sh -c "echo '   PWM DUTY - '; cat /sys/devices/ocp.3/bs_pwm_test_P8_19.14/duty"
   sudo sh -c "echo '   PWM PERIOD - '; cat /sys/devices/ocp.3/bs_pwm_test_P8_19.14/period"
fi

sudo sh -c "echo 'GPIO 48 DIRECTION - '; cat /sys/class/gpio/gpio48/direction"
sudo sh -c "echo 'GPIO 48 VALUE - '; cat /sys/class/gpio/gpio48/value"
if [ $HOST = "apis" ]; then
   sudo sh -c "echo 'GPIO 67 DIRECTION - '; cat /sys/class/gpio/gpio67/direction"
   sudo sh -c "echo 'GPIO 67 VALUE - '; cat /sys/class/gpio/gpio67/value"
   sudo sh -c "echo 'GPIO 68 DIRECTION - '; cat /sys/class/gpio/gpio68/direction"
   sudo sh -c "echo 'GPIO 68 VALUE - '; cat /sys/class/gpio/gpio68/value"
fi
