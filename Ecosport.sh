#!/bin/ash
# To avoid cross compiling will write all functions in bash
# Daniel Velazquez - March 2016
# OpenSource


# Define Inputs and Outputs
  IgnitionPin=26
  CourtesyLightsInputPin=13
  LightSensorPin=8
  CountesyLightsOutputPin=0

#Initialize variables
  CourtesyLightsCounter=1
  IgnitionCounter=1
  LightSensorCounter=1
  echo $IgnitionCounter


#  while [ "$IgnitionCounter" -lt "150" ] 
  while true
  do
	# Courtesy Lights Input Counter
	CourtesyLights=$(fast-gpio read $CourtesyLightsPin)
	CourtesyLightsState=${CourtesyLights:14:14}
	CourtesyLightsCounter=$((CourtesyLightsCounter+CourtesyLightsState))
	echo "Courtesy Lights Counter:" $CourtesyLightsCounter

	# Ignition Pin Input Counter
	Ignition=$(fast-gpio read $IgnitionPin)
	IgnitionState=${Ignition:14:14}
	IgnitionCounter=$((IgnitionCounter+IgnitionState))
	echo "Ignition Counter:" $IgnitionCounter

	# Light Sensor Counter
	LightSensor=$(fast-gpio read $LightSensorPin)
	echo $LightSensor
	LightSensorState=${LightSensor:14:14}
	echo $LightSensorState
	LightSensorCounter=$((LightSensorCounter+LightSensorState))
	echo "LightSensor Counter:" $LightSensorCounter

	echo " "
done


# If Ignition is Low reduce current consumption by turning WiFi Off periodically


# Read light sensor and turn head lights On after filtering signal


# Protect WiFi undesired connections


# Log

# Auto connect with the Raspi (upstairs) and share usage statistics

