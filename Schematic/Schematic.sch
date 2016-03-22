EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Schematic-cache
EELAYER 25 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title "Onion Omega Carputer"
Date "2016-03-21"
Rev "0"
Comp "Daniel Velazquez"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Additional capacitors, resistors and protective devices can be added for next revision"
$EndDescr
$Comp
L LM7824CT U1
U 1 1 56EFD6A4
P 5800 2500
F 0 "U1" H 5600 2700 50  0000 C CNN
F 1 "5V_Buck_Reg" H 5800 2700 50  0000 L CNN
F 2 "Board" H 5800 2600 50  0000 C CIN
F 3 "" H 5800 2500 50  0000 C CNN
	1    5800 2500
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 56EFD775
P 4550 2450
F 0 "D1" H 4550 2550 50  0000 C CNN
F 1 "D" H 4550 2350 50  0000 C CNN
F 2 "" H 4550 2450 50  0001 C CNN
F 3 "" H 4550 2450 50  0000 C CNN
	1    4550 2450
	-1   0    0    1   
$EndComp
$Comp
L CP1 C1
U 1 1 56EFD88A
P 5250 2800
F 0 "C1" H 5275 2900 50  0000 L CNN
F 1 "CP1" H 5275 2700 50  0000 L CNN
F 2 "" H 5250 2800 50  0001 C CNN
F 3 "" H 5250 2800 50  0000 C CNN
	1    5250 2800
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 56EFD8F5
P 6350 2800
F 0 "C2" H 6375 2900 50  0000 L CNN
F 1 "CP1" H 6375 2700 50  0000 L CNN
F 2 "" H 6350 2800 50  0001 C CNN
F 3 "" H 6350 2800 50  0000 C CNN
	1    6350 2800
	1    0    0    -1  
$EndComp
Text GLabel 7000 2450 2    60   Input ~ 0
Onion_5V
$Comp
L GNDREF #PWR01
U 1 1 56EFE0A4
P 5250 3050
F 0 "#PWR01" H 5250 2800 50  0001 C CNN
F 1 "GNDREF" H 5250 2900 50  0001 C CNN
F 2 "" H 5250 3050 50  0000 C CNN
F 3 "" H 5250 3050 50  0000 C CNN
	1    5250 3050
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR02
U 1 1 56EFE0C0
P 6350 3050
F 0 "#PWR02" H 6350 2800 50  0001 C CNN
F 1 "GNDREF" H 6350 2900 50  0001 C CNN
F 2 "" H 6350 3050 50  0000 C CNN
F 3 "" H 6350 3050 50  0000 C CNN
	1    6350 3050
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR03
U 1 1 56EFE3E1
P 3850 2300
F 0 "#PWR03" H 3850 2150 50  0001 C CNN
F 1 "+BATT" H 3850 2440 50  0000 C CNN
F 2 "" H 3850 2300 50  0000 C CNN
F 3 "" H 3850 2300 50  0000 C CNN
	1    3850 2300
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 56EFE5FB
P 4550 5450
F 0 "D2" H 4550 5550 50  0000 C CNN
F 1 "D" H 4550 5350 50  0000 C CNN
F 2 "" H 4550 5450 50  0001 C CNN
F 3 "" H 4550 5450 50  0000 C CNN
	1    4550 5450
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 56EFEC45
P 5100 5450
F 0 "R1" V 5180 5450 50  0000 C CNN
F 1 "R" V 5100 5450 50  0000 C CNN
F 2 "" V 5030 5450 50  0001 C CNN
F 3 "" H 5100 5450 50  0000 C CNN
	1    5100 5450
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 56EFECB2
P 5450 5700
F 0 "R4" V 5530 5700 50  0000 C CNN
F 1 "R" V 5450 5700 50  0000 C CNN
F 2 "" V 5380 5700 50  0001 C CNN
F 3 "" H 5450 5700 50  0000 C CNN
	1    5450 5700
	-1   0    0    1   
$EndComp
$Comp
L 2SC1941 Q1
U 1 1 56EFED7E
P 5900 5450
F 0 "Q1" H 6100 5525 50  0000 L CNN
F 1 "2SC1941" H 6100 5450 50  0000 L CNN
F 2 "TO-92" H 6100 5375 50  0000 L CIN
F 3 "" H 5900 5450 50  0000 L CNN
	1    5900 5450
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR04
U 1 1 56EFEE6D
P 6000 6100
F 0 "#PWR04" H 6000 5850 50  0001 C CNN
F 1 "GNDREF" H 6000 5950 50  0001 C CNN
F 2 "" H 6000 6100 50  0000 C CNN
F 3 "" H 6000 6100 50  0000 C CNN
	1    6000 6100
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 56EFF258
P 6000 4950
F 0 "R7" V 6080 4950 50  0000 C CNN
F 1 "R" V 6000 4950 50  0000 C CNN
F 2 "" V 5930 4950 50  0001 C CNN
F 3 "" H 6000 4950 50  0000 C CNN
	1    6000 4950
	-1   0    0    1   
$EndComp
$Comp
L +2V5 #PWR05
U 1 1 56EFF2C4
P 6000 4750
F 0 "#PWR05" H 6000 4600 50  0001 C CNN
F 1 "+2V5" H 6000 4890 50  0000 C CNN
F 2 "" H 6000 4750 50  0000 C CNN
F 3 "" H 6000 4750 50  0000 C CNN
	1    6000 4750
	1    0    0    -1  
$EndComp
Text GLabel 7050 5200 2    60   Input ~ 0
GPIO26
$Comp
L D D3
U 1 1 56F0034D
P 4550 7400
F 0 "D3" H 4550 7500 50  0000 C CNN
F 1 "D" H 4550 7300 50  0000 C CNN
F 2 "" H 4550 7400 50  0001 C CNN
F 3 "" H 4550 7400 50  0000 C CNN
	1    4550 7400
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 56F0035B
P 5100 7400
F 0 "R2" V 5180 7400 50  0000 C CNN
F 1 "R" V 5100 7400 50  0000 C CNN
F 2 "" V 5030 7400 50  0001 C CNN
F 3 "" H 5100 7400 50  0000 C CNN
	1    5100 7400
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 56F00361
P 5450 7650
F 0 "R5" V 5530 7650 50  0000 C CNN
F 1 "R" V 5450 7650 50  0000 C CNN
F 2 "" V 5380 7650 50  0001 C CNN
F 3 "" H 5450 7650 50  0000 C CNN
	1    5450 7650
	-1   0    0    1   
$EndComp
$Comp
L 2SC1941 Q2
U 1 1 56F0036B
P 5900 7400
F 0 "Q2" H 6100 7475 50  0000 L CNN
F 1 "2SC1941" H 6100 7400 50  0000 L CNN
F 2 "TO-92" H 6100 7325 50  0000 L CIN
F 3 "" H 5900 7400 50  0000 L CNN
	1    5900 7400
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR06
U 1 1 56F00376
P 6000 8050
F 0 "#PWR06" H 6000 7800 50  0001 C CNN
F 1 "GNDREF" H 6000 7900 50  0001 C CNN
F 2 "" H 6000 8050 50  0000 C CNN
F 3 "" H 6000 8050 50  0000 C CNN
	1    6000 8050
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 56F0037D
P 6000 6900
F 0 "R8" V 6080 6900 50  0000 C CNN
F 1 "R" V 6000 6900 50  0000 C CNN
F 2 "" V 5930 6900 50  0001 C CNN
F 3 "" H 6000 6900 50  0000 C CNN
	1    6000 6900
	-1   0    0    1   
$EndComp
$Comp
L +2V5 #PWR07
U 1 1 56F00385
P 6000 6700
F 0 "#PWR07" H 6000 6550 50  0001 C CNN
F 1 "+2V5" H 6000 6840 50  0000 C CNN
F 2 "" H 6000 6700 50  0000 C CNN
F 3 "" H 6000 6700 50  0000 C CNN
	1    6000 6700
	1    0    0    -1  
$EndComp
Text GLabel 7050 7150 2    60   Input ~ 0
GPIO13
$Comp
L D D4
U 1 1 56F02695
P 4550 9250
F 0 "D4" H 4550 9350 50  0000 C CNN
F 1 "D" H 4550 9150 50  0000 C CNN
F 2 "" H 4550 9250 50  0001 C CNN
F 3 "" H 4550 9250 50  0000 C CNN
	1    4550 9250
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 56F026A3
P 5100 9250
F 0 "R3" V 5180 9250 50  0000 C CNN
F 1 "R" V 5100 9250 50  0000 C CNN
F 2 "" V 5030 9250 50  0001 C CNN
F 3 "" H 5100 9250 50  0000 C CNN
	1    5100 9250
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 56F026A9
P 5450 9500
F 0 "R6" V 5530 9500 50  0000 C CNN
F 1 "R" V 5450 9500 50  0000 C CNN
F 2 "" V 5380 9500 50  0001 C CNN
F 3 "" H 5450 9500 50  0000 C CNN
	1    5450 9500
	-1   0    0    1   
$EndComp
$Comp
L 2SC1941 Q3
U 1 1 56F026B3
P 5900 9250
F 0 "Q3" H 6100 9325 50  0000 L CNN
F 1 "2SC1941" H 6100 9250 50  0000 L CNN
F 2 "TO-92" H 6100 9175 50  0000 L CIN
F 3 "" H 5900 9250 50  0000 L CNN
	1    5900 9250
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR08
U 1 1 56F026BE
P 6000 9900
F 0 "#PWR08" H 6000 9650 50  0001 C CNN
F 1 "GNDREF" H 6000 9750 50  0001 C CNN
F 2 "" H 6000 9900 50  0000 C CNN
F 3 "" H 6000 9900 50  0000 C CNN
	1    6000 9900
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 56F026C5
P 6000 8750
F 0 "R9" V 6080 8750 50  0000 C CNN
F 1 "R" V 6000 8750 50  0000 C CNN
F 2 "" V 5930 8750 50  0001 C CNN
F 3 "" H 6000 8750 50  0000 C CNN
	1    6000 8750
	-1   0    0    1   
$EndComp
$Comp
L +2V5 #PWR09
U 1 1 56F026CD
P 6000 8550
F 0 "#PWR09" H 6000 8400 50  0001 C CNN
F 1 "+2V5" H 6000 8690 50  0000 C CNN
F 2 "" H 6000 8550 50  0000 C CNN
F 3 "" H 6000 8550 50  0000 C CNN
	1    6000 8550
	1    0    0    -1  
$EndComp
Text GLabel 7050 9000 2    60   Input ~ 0
GPIO7
Text Notes 9450 3700 0    98   ~ 0
      ONION OMEGA\nAtheros AR9331 400MHz\n\n \n    With Expansion Dock
Text GLabel 7150 3850 2    60   Input ~ 0
2V5
$Comp
L +2V5 #PWR010
U 1 1 56F07AAC
P 6750 3600
F 0 "#PWR010" H 6750 3450 50  0001 C CNN
F 1 "+2V5" H 6750 3740 50  0000 C CNN
F 2 "" H 6750 3600 50  0000 C CNN
F 3 "" H 6750 3600 50  0000 C CNN
	1    6750 3600
	1    0    0    -1  
$EndComp
$Comp
L Photores R11
U 1 1 56F08843
P 6000 11900
F 0 "R11" V 6080 11900 50  0000 C CNN
F 1 "Photores" V 6210 11900 50  0000 C TNN
F 2 "" V 5930 11900 50  0001 C CNN
F 3 "" H 6000 11900 50  0000 C CNN
	1    6000 11900
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 56F0890A
P 6000 11200
F 0 "R10" V 6080 11200 50  0000 C CNN
F 1 "R" V 6000 11200 50  0000 C CNN
F 2 "" V 5930 11200 50  0001 C CNN
F 3 "" H 6000 11200 50  0000 C CNN
	1    6000 11200
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR011
U 1 1 56F08A42
P 6000 10950
F 0 "#PWR011" H 6000 10800 50  0001 C CNN
F 1 "+2V5" H 6000 11090 50  0000 C CNN
F 2 "" H 6000 10950 50  0000 C CNN
F 3 "" H 6000 10950 50  0000 C CNN
	1    6000 10950
	1    0    0    -1  
$EndComp
Text GLabel 7050 11500 2    60   Input ~ 0
GPIO8
$Comp
L GNDREF #PWR012
U 1 1 56F09874
P 6000 12300
F 0 "#PWR012" H 6000 12050 50  0001 C CNN
F 1 "GNDREF" H 6000 12150 50  0001 C CNN
F 2 "" H 6000 12300 50  0000 C CNN
F 3 "" H 6000 12300 50  0000 C CNN
	1    6000 12300
	1    0    0    -1  
$EndComp
Text GLabel 13250 3500 0    60   Input ~ 0
GPIO18
Text GLabel 13250 4300 0    60   Input ~ 0
GPIO19
Text GLabel 13350 7050 0    60   Input ~ 0
GPIO20
Text GLabel 13450 11300 0    60   Input ~ 0
GPIO0
$Comp
L R R12
U 1 1 56F0B831
P 14150 3500
F 0 "R12" V 14230 3500 50  0000 C CNN
F 1 "R" V 14150 3500 50  0000 C CNN
F 2 "" V 14080 3500 50  0001 C CNN
F 3 "" H 14150 3500 50  0000 C CNN
	1    14150 3500
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 56F0BD4A
P 14150 4300
F 0 "R13" V 14230 4300 50  0000 C CNN
F 1 "R" V 14150 4300 50  0000 C CNN
F 2 "" V 14080 4300 50  0001 C CNN
F 3 "" H 14150 4300 50  0000 C CNN
	1    14150 4300
	0    1    1    0   
$EndComp
Text GLabel 15300 3500 2    60   Input ~ 0
Close_Button
Text GLabel 15300 4300 2    60   Input ~ 0
Open_Button
Text GLabel 15750 2900 2    60   Input ~ 0
2V5
$Comp
L +2V5 #PWR013
U 1 1 56F0C2ED
P 15350 2550
F 0 "#PWR013" H 15350 2400 50  0001 C CNN
F 1 "+2V5" H 15350 2690 50  0000 C CNN
F 2 "" H 15350 2550 50  0000 C CNN
F 3 "" H 15350 2550 50  0000 C CNN
	1    15350 2550
	1    0    0    -1  
$EndComp
Text Notes 16700 3600 0    60   ~ 0
Spare Keyfob
$Comp
L GNDREF #PWR014
U 1 1 56F0CB62
P 15450 5250
F 0 "#PWR014" H 15450 5000 50  0001 C CNN
F 1 "GNDREF" H 15450 5100 50  0001 C CNN
F 2 "" H 15450 5250 50  0000 C CNN
F 3 "" H 15450 5250 50  0000 C CNN
	1    15450 5250
	1    0    0    -1  
$EndComp
Text GLabel 15700 5050 2    60   Input ~ 0
GND
$Comp
L R R14
U 1 1 56F0D2EB
P 14500 7350
F 0 "R14" V 14580 7350 50  0000 C CNN
F 1 "R" V 14500 7350 50  0000 C CNN
F 2 "" V 14430 7350 50  0001 C CNN
F 3 "" H 14500 7350 50  0000 C CNN
	1    14500 7350
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_DGS Q4
U 1 1 56F0D39C
P 15100 7050
F 0 "Q4" H 15400 7100 50  0000 R CNN
F 1 "Q_NMOS_DGS" H 15750 7000 50  0000 R CNN
F 2 "" H 15300 7150 50  0001 C CNN
F 3 "" H 15100 7050 50  0000 C CNN
	1    15100 7050
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR015
U 1 1 56F0D592
P 15200 7750
F 0 "#PWR015" H 15200 7500 50  0001 C CNN
F 1 "GNDREF" H 15200 7600 50  0001 C CNN
F 2 "" H 15200 7750 50  0000 C CNN
F 3 "" H 15200 7750 50  0000 C CNN
	1    15200 7750
	1    0    0    -1  
$EndComp
$Comp
L RELAY_2RT K1
U 1 1 56F0DED6
P 17000 6450
F 0 "K1" H 16950 6850 50  0000 C CNN
F 1 "RELAY_2RT" H 17150 5950 50  0000 C CNN
F 2 "" H 17000 6450 50  0001 C CNN
F 3 "" H 17000 6450 50  0000 C CNN
	1    17000 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2650 5250 2450
Connection ~ 5250 2450
Wire Wire Line
	6200 2450 7000 2450
Wire Wire Line
	6350 2450 6350 2650
Wire Wire Line
	4700 2450 5400 2450
Connection ~ 6350 2450
Wire Wire Line
	6350 3050 6350 2950
Wire Wire Line
	5250 3050 5250 2950
Wire Wire Line
	3850 2300 3850 2450
Wire Wire Line
	3850 2450 4400 2450
Wire Wire Line
	3250 5450 4400 5450
Wire Wire Line
	4700 5450 4950 5450
Wire Wire Line
	5250 5450 5700 5450
Wire Wire Line
	5450 5450 5450 5550
Connection ~ 5450 5450
Wire Wire Line
	5450 5850 5450 5950
Wire Wire Line
	5450 5950 6000 5950
Wire Wire Line
	6000 5650 6000 6100
Connection ~ 6000 5950
Wire Wire Line
	6000 5100 6000 5250
Wire Wire Line
	6000 4800 6000 4750
Wire Wire Line
	7050 5200 6000 5200
Connection ~ 6000 5200
Wire Wire Line
	3250 7400 4400 7400
Wire Wire Line
	4700 7400 4950 7400
Wire Wire Line
	5250 7400 5700 7400
Wire Wire Line
	5450 7400 5450 7500
Connection ~ 5450 7400
Wire Wire Line
	5450 7800 5450 7900
Wire Wire Line
	5450 7900 6000 7900
Wire Wire Line
	6000 7600 6000 8050
Connection ~ 6000 7900
Wire Wire Line
	6000 7050 6000 7200
Wire Wire Line
	6000 6750 6000 6700
Wire Wire Line
	7050 7150 6000 7150
Connection ~ 6000 7150
Wire Wire Line
	3250 9250 4400 9250
Wire Wire Line
	4700 9250 4950 9250
Wire Wire Line
	5250 9250 5700 9250
Wire Wire Line
	5450 9250 5450 9350
Connection ~ 5450 9250
Wire Wire Line
	5450 9650 5450 9750
Wire Wire Line
	5450 9750 6000 9750
Wire Wire Line
	6000 9450 6000 9900
Connection ~ 6000 9750
Wire Wire Line
	6000 8900 6000 9050
Wire Wire Line
	6000 8600 6000 8550
Wire Wire Line
	7050 9000 6000 9000
Connection ~ 6000 9000
Wire Notes Line
	7550 2200 7550 12350
Wire Notes Line
	12700 2150 12700 12350
Wire Notes Line
	12700 2150 7550 2150
Wire Notes Line
	12700 12350 7550 12350
Wire Wire Line
	7150 3850 6750 3850
Wire Wire Line
	6750 3850 6750 3600
Wire Wire Line
	6000 11050 6000 10950
Wire Wire Line
	6000 11350 6000 11650
Wire Wire Line
	7050 11500 6000 11500
Connection ~ 6000 11500
Wire Wire Line
	6000 12300 6000 12150
Wire Wire Line
	13250 4300 14000 4300
Wire Wire Line
	13250 3500 14000 3500
Wire Wire Line
	14300 3500 15300 3500
Wire Wire Line
	14300 4300 15300 4300
Wire Wire Line
	15350 2550 15350 2900
Wire Wire Line
	15350 2900 15750 2900
Wire Notes Line
	16050 2650 16050 5500
Wire Notes Line
	16050 5500 18000 5500
Wire Notes Line
	18000 5500 18000 2650
Wire Notes Line
	18000 2650 16050 2650
Wire Wire Line
	15450 5250 15450 5050
Wire Wire Line
	15450 5050 15700 5050
Wire Wire Line
	13350 7050 14900 7050
Wire Wire Line
	14500 7200 14500 7050
Connection ~ 14500 7050
Wire Wire Line
	15200 7250 15200 7750
Wire Wire Line
	15200 7600 14500 7600
Wire Wire Line
	14500 7600 14500 7500
Connection ~ 15200 7600
$Comp
L R R17
U 1 1 56F0E249
P 16000 6800
F 0 "R17" V 16080 6800 50  0000 C CNN
F 1 "R" V 16000 6800 50  0000 C CNN
F 2 "" V 15930 6800 50  0001 C CNN
F 3 "" H 16000 6800 50  0000 C CNN
	1    16000 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	16600 6800 16150 6800
Wire Wire Line
	15850 6800 15200 6800
Wire Wire Line
	15200 6800 15200 6850
$Comp
L +12V #PWR016
U 1 1 56F0E4A0
P 15800 6550
F 0 "#PWR016" H 15800 6400 50  0001 C CNN
F 1 "+12V" H 15800 6690 50  0000 C CNN
F 2 "" H 15800 6550 50  0000 C CNN
F 3 "" H 15800 6550 50  0000 C CNN
	1    15800 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	16600 6700 15800 6700
Wire Wire Line
	15800 6700 15800 6550
Text GLabel 18100 6600 2    60   Output ~ 0
Headlamps
Text GLabel 18250 5800 2    60   Input ~ 0
Battery
Wire Wire Line
	18250 5800 16300 5800
Wire Wire Line
	16300 5800 16300 6500
Wire Wire Line
	16300 6500 16600 6500
Wire Wire Line
	17400 6600 18100 6600
Text GLabel 13450 9450 0    60   Input ~ 0
GPIO21
$Comp
L R R15
U 1 1 56F12278
P 14600 9750
F 0 "R15" V 14680 9750 50  0000 C CNN
F 1 "R" V 14600 9750 50  0000 C CNN
F 2 "" V 14530 9750 50  0001 C CNN
F 3 "" H 14600 9750 50  0000 C CNN
	1    14600 9750
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_DGS Q5
U 1 1 56F1227E
P 15200 9450
F 0 "Q5" H 15500 9500 50  0000 R CNN
F 1 "Q_NMOS_DGS" H 15850 9400 50  0000 R CNN
F 2 "" H 15400 9550 50  0001 C CNN
F 3 "" H 15200 9450 50  0000 C CNN
	1    15200 9450
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR017
U 1 1 56F12284
P 15300 10150
F 0 "#PWR017" H 15300 9900 50  0001 C CNN
F 1 "GNDREF" H 15300 10000 50  0001 C CNN
F 2 "" H 15300 10150 50  0000 C CNN
F 3 "" H 15300 10150 50  0000 C CNN
	1    15300 10150
	1    0    0    -1  
$EndComp
$Comp
L RELAY_2RT K2
U 1 1 56F1228A
P 17100 8850
F 0 "K2" H 17050 9250 50  0000 C CNN
F 1 "RELAY_2RT" H 17250 8350 50  0000 C CNN
F 2 "" H 17100 8850 50  0001 C CNN
F 3 "" H 17100 8850 50  0000 C CNN
	1    17100 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 9450 15000 9450
Wire Wire Line
	14600 9600 14600 9450
Connection ~ 14600 9450
Wire Wire Line
	15300 9650 15300 10150
Wire Wire Line
	15300 10000 14600 10000
Wire Wire Line
	14600 10000 14600 9900
Connection ~ 15300 10000
$Comp
L R R18
U 1 1 56F12299
P 16100 9200
F 0 "R18" V 16180 9200 50  0000 C CNN
F 1 "R" V 16100 9200 50  0000 C CNN
F 2 "" V 16030 9200 50  0001 C CNN
F 3 "" H 16100 9200 50  0000 C CNN
	1    16100 9200
	0    1    1    0   
$EndComp
Wire Wire Line
	16700 9200 16250 9200
Wire Wire Line
	15950 9200 15300 9200
Wire Wire Line
	15300 9200 15300 9250
$Comp
L +12V #PWR018
U 1 1 56F122A2
P 15900 8950
F 0 "#PWR018" H 15900 8800 50  0001 C CNN
F 1 "+12V" H 15900 9090 50  0000 C CNN
F 2 "" H 15900 8950 50  0000 C CNN
F 3 "" H 15900 8950 50  0000 C CNN
	1    15900 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	16700 9100 15900 9100
Wire Wire Line
	15900 9100 15900 8950
Text GLabel 18350 9000 2    60   Output ~ 0
Starter
Text GLabel 18350 8200 2    60   Input ~ 0
Battery
Wire Wire Line
	18350 8200 16400 8200
Wire Wire Line
	16400 8200 16400 8900
Wire Wire Line
	16400 8900 16700 8900
Wire Wire Line
	17500 9000 18350 9000
$Comp
L R R16
U 1 1 56F12BE3
P 14600 11600
F 0 "R16" V 14680 11600 50  0000 C CNN
F 1 "R" V 14600 11600 50  0000 C CNN
F 2 "" V 14530 11600 50  0001 C CNN
F 3 "" H 14600 11600 50  0000 C CNN
	1    14600 11600
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_DGS Q6
U 1 1 56F12BE9
P 15200 11300
F 0 "Q6" H 15500 11350 50  0000 R CNN
F 1 "Q_NMOS_DGS" H 15850 11250 50  0000 R CNN
F 2 "" H 15400 11400 50  0001 C CNN
F 3 "" H 15200 11300 50  0000 C CNN
	1    15200 11300
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR019
U 1 1 56F12BEF
P 15300 12000
F 0 "#PWR019" H 15300 11750 50  0001 C CNN
F 1 "GNDREF" H 15300 11850 50  0001 C CNN
F 2 "" H 15300 12000 50  0000 C CNN
F 3 "" H 15300 12000 50  0000 C CNN
	1    15300 12000
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 11300 15000 11300
Wire Wire Line
	14600 11450 14600 11300
Connection ~ 14600 11300
Wire Wire Line
	15300 11500 15300 12000
Wire Wire Line
	15300 11850 14600 11850
Wire Wire Line
	14600 11850 14600 11750
Connection ~ 15300 11850
Wire Wire Line
	15300 11050 18050 11050
Wire Wire Line
	15300 11050 15300 11100
Text GLabel 18050 11050 2    60   Input ~ 0
LEDs_Stripes
$Comp
L GNDREF #PWR020
U 1 1 56F13D15
P 9900 13000
F 0 "#PWR020" H 9900 12750 50  0001 C CNN
F 1 "GNDREF" H 9900 12850 50  0001 C CNN
F 2 "" H 9900 13000 50  0000 C CNN
F 3 "" H 9900 13000 50  0000 C CNN
	1    9900 13000
	1    0    0    -1  
$EndComp
Text GLabel 9900 12700 1    60   Input ~ 0
GND
Wire Wire Line
	9900 13000 9900 12700
Text GLabel 3250 5450 0    60   Input ~ 0
Ignition
Text GLabel 3250 7400 0    60   Input ~ 0
Courtesy_Lights
Text GLabel 3250 9250 0    60   Input ~ 0
Spare
$Comp
L GNDREF #PWR021
U 1 1 56F18DAC
P 5800 3050
F 0 "#PWR021" H 5800 2800 50  0001 C CNN
F 1 "GNDREF" H 5800 2900 50  0001 C CNN
F 2 "" H 5800 3050 50  0000 C CNN
F 3 "" H 5800 3050 50  0000 C CNN
	1    5800 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3050 5800 2750
$EndSCHEMATC