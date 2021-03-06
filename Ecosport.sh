#!/bin/ash
# To avoid cross compiling will write all functions in bash
# Daniel Velazquez - March 2016
# OpenSource


# Define Inputs and Outputs
  IgnitionPin=26
  CourtesyLightsInputPin=13
  CourtesyLightsOutputPin=0
  LightSensorPin=8
  OpenDoorOutputPin=19
  CloseDoorOutputPin=18
  HeadlampOutputPin=20


#Initialize variables
  CourtesyLightsCounter=1
  IgnitionCounter=1
  LightSensorCounter=1
  CourtesyLightsTrigger=Low	# Starts with Courtesy Lights Off
  IgnitionTrigger=High		# Starts with Ignition OFF
  LightSensorTrigger=High	# Starts with Light Sensor is OFF (Bright / Headlamps Off)
  Limit=10
  Toggle=OFF  

Function_CourtesyLights()
{
	# Courtesy Lights Input Counter
	CourtesyLights=$(fast-gpio read $CourtesyLightsInputPin)
	CourtesyLightsState=${CourtesyLights:14:14}
	if [ "$CourtesyLightsState" -eq "1" ]
	  then
		CourtesyLightsCounter=$((CourtesyLightsCounter+CourtesyLightsState))	# Sum 1 until Limit
	  else
		CourtesyLightsCounter=$((CourtesyLightsCounter-1))			# Rest 1 until Zero
	fi
	if [ "$CourtesyLightsCounter" -ge "$Limit" ]
	  then
		CourtesyLightsCounter=$Limit				# Keep counter up to Limit
		CourtesyLightsTrigger=High
	fi	
	if [ "$CourtesyLightsCounter" -le "0" ]
	  then
		CourtesyLightsCounter=0					# Keep counter down to Zero
		CourtesyLightsTrigger=Low
	fi
	echo "Courtesy Lights Counter:" $CourtesyLightsCounter		# For debugging show me the Counter
	echo "Courtesy Lights Trigger:" $CourtesyLightsTrigger		# and show me trigger value
}

Function_Ignition()
{
	# Ignition Pin Input Counter
	Ignition=$(fast-gpio read $IgnitionPin)
	IgnitionState=${Ignition:14:14}
	if [ "$IgnitionState" -eq "1" ]
	  then
		IgnitionCounter=$((IgnitionCounter+IgnitionState))	# Sum 1 until Limit
	  else
		IgnitionCounter=$((IgnitionCounter-1))			# Rest 1 until Zero
	fi
	if [ "$IgnitionCounter" -ge "$Limit" ]
	  then
		IgnitionCounter=$Limit				# Keep counter up to Limit
		IgnitionTrigger=High
	fi	
	if [ "$IgnitionCounter" -le "0" ]
	  then
		IgnitionCounter=0					# Keep counter down to Zero
		IgnitionTrigger=Low
	fi
	echo "Ignition Counter:" $IgnitionCounter		# For debugging show me the Counter
	echo "Ignition Trigger:" $IgnitionTrigger		# and show me trigger value
}

Function_LightSensor()
{
	# Light Sensor Counter
	LightSensor=$(fast-gpio read $LightSensorPin)
	LightSensorState=${LightSensor:14:14}
	if [ "$LightSensorState" -eq "1" ]
	  then
		LightSensorCounter=$((LightSensorCounter+LightSensorState))	# Sum 1 until Limit
	  else
		LightSensorCounter=$((LightSensorCounter-1))			# Rest 1 until Zero
	fi
	if [ "$LightSensorCounter" -ge "$Limit" ]
	  then
		LightSensorCounter=$Limit				# Keep counter up to Limit
		LightSensorTrigger=High
	fi	
	if [ "$LightSensorCounter" -le "0" ]
	  then
		LightSensorCounter=0					# Keep counter down to Zero
		LightSensorTrigger=Low
	fi
	echo "Light Sensor Counter:" $LightSensorCounter		# For debugging show me the Counter
	echo "Light Sensor Trigger:" $LightSensorTrigger		# and show me trigger value
}



## Here is the main loop of the program, above is the same function per pin
## to do: use one function for all inputs

#while [ "$IgnitionCounter" -lt "50" ] 
while true
  do
	Function_CourtesyLights
	Function_Ignition
	Function_LightSensor


	# Now with the Trigger Levels "filtered" by a second, do something:
	# Check Ignition Trigger Levels
	if [ "$IgnitionTrigger" = "Low" ] # I/O pins is low when Ignition is High
	  then
		# When Car is ON and Lights OFF then Lights at 5%
		echo -e "Ignition ON \t" $(date) >> Log
		Toggle=ON
		echo "Toggle at ON" $Toggle
		# When Car is ON and Lights ON then Lights at 100% (or something)
	  else
		# When Car is OFF reduce current consumption
		fast-gpio set 20 0		# keep headlamps off
		if [ "$Toggle" = "ON" ]
		  then
		    ./Open.sh
	   	    Toggle=OFF
		    #sleep 2
		    echo -e "Ignition OFF \t" $(date) >> Log
		fi
		Toggle=OFF
	fi

	# Check Courtesy Lights Input Trigger Levels
	if [ "$CourtesyLightsTrigger" = "Low" ]
	  then
		# What to do when Courtesy Lights are ON
		#echo -e "Courtesy Lights ON \t" $(date) >> Log
		fast-gpio pwm 0 100 100			# Max duty cycle (confirm good visibility)
	  else
		# What to do when Courtesy Lights are OFF
		#echo -e "Courtesy Lights OFF \t" $(date) >> Log
		fast-gpio pwm 0 100 5			# Min duty cycle when all lights OFF (confirm good visibility)
	fi

	# Check Lights Sensor Trigger Levels and Ignition is ON
	if [ "$LightSensorTrigger" = "Low" ] && [ "$IgnitionTrigger" = "Low" ]		# Sensor pulls low when lighted
	  then
		# What to do when is day time
		echo -e "LightSensor OFF \t" $(date) >> Log
		fast-gpio set 20 0			# Turn OFF Head Lamps
		
	  else
		# What to do when is night time
		#echo -e "LightSensor ON \t" $(date) >> Log
		if [ "$IgnitionTrigger" = "Low" ]
		  then
			fast-gpio set 20 1			# Turn ON Head Lamps
		fi
	fi

	echo $IgnitionCounter
	#sleep 1	
	clear
done


# If Ignition is Low reduce current consumption by turning WiFi Off periodically

# Read light sensor and turn head lights On after filtering signal

# Protect WiFi undesired connections

# Log

# Auto connect with the Raspi (upstairs) and share usage statistics
