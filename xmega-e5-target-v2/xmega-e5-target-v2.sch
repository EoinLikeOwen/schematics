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
LIBS:special
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
LIBS:parts
LIBS:xmega-e5-target-v2-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "27 jan 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L XMEGA-E5 U1
U 1 1 52E5E07D
P 2750 2650
F 0 "U1" H 2750 2550 50  0000 C CNN
F 1 "XMEGA-E5" H 2750 2750 50  0000 C CNN
F 2 "QFN32" H 2750 2400 50  0001 C CNN
F 3 "DOCUMENTATION" H 2750 2650 50  0001 C CNN
	1    2750 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P3
U 1 1 52E5E08C
P 2750 4150
F 0 "P3" V 2700 4150 60  0000 C CNN
F 1 "PORT C" V 2800 4150 60  0000 C CNN
F 2 "~" H 2750 4150 60  0000 C CNN
F 3 "~" H 2750 4150 60  0000 C CNN
	1    2750 4150
	0    1    1    0   
$EndComp
$Comp
L CONN_8 P1
U 1 1 52E5E0B4
P 750 2450
F 0 "P1" V 700 2450 60  0000 C CNN
F 1 "PORT A" V 800 2450 60  0000 C CNN
F 2 "~" H 750 2450 60  0000 C CNN
F 3 "~" H 750 2450 60  0000 C CNN
	1    750  2450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 52E5E107
P 1500 2300
F 0 "#PWR01" H 1500 2300 30  0001 C CNN
F 1 "GND" H 1500 2230 30  0001 C CNN
F 2 "" H 1500 2300 60  0000 C CNN
F 3 "" H 1500 2300 60  0000 C CNN
	1    1500 2300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 52E5E128
P 2200 1300
F 0 "#PWR02" H 2200 1300 30  0001 C CNN
F 1 "GND" H 2200 1230 30  0001 C CNN
F 2 "" H 2200 1300 60  0000 C CNN
F 3 "" H 2200 1300 60  0000 C CNN
	1    2200 1300
	-1   0    0    1   
$EndComp
$Comp
L CONN_8 P4
U 1 1 52E5E20D
P 4550 2250
F 0 "P4" V 4500 2250 60  0000 C CNN
F 1 "PORT D" V 4600 2250 60  0000 C CNN
F 2 "~" H 4550 2250 60  0000 C CNN
F 3 "~" H 4550 2250 60  0000 C CNN
	1    4550 2250
	1    0    0    -1  
$EndComp
$Comp
L TSX-3225 U2
U 1 1 52E5E39C
P 4900 3250
F 0 "U2" H 4900 3050 60  0000 C CNN
F 1 "TSX-3225" H 4900 3425 60  0000 C CNN
F 2 "~" H 4900 3550 60  0000 C CNN
F 3 "~" H 4900 3550 60  0000 C CNN
	1    4900 3250
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 52E5E475
P 4900 3600
F 0 "C1" H 4900 3700 40  0000 L CNN
F 1 "10pF" H 4906 3515 40  0000 L CNN
F 2 "~" H 4938 3450 30  0000 C CNN
F 3 "~" H 4900 3600 60  0000 C CNN
	1    4900 3600
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 52E5E484
P 4900 3850
F 0 "C2" H 4900 3950 40  0000 L CNN
F 1 "10pF" H 4906 3765 40  0000 L CNN
F 2 "~" H 4938 3700 30  0000 C CNN
F 3 "~" H 4900 3850 60  0000 C CNN
	1    4900 3850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 52E5E5FD
P 5400 3950
F 0 "#PWR03" H 5400 3950 30  0001 C CNN
F 1 "GND" H 5400 3880 30  0001 C CNN
F 2 "" H 5400 3950 60  0000 C CNN
F 3 "" H 5400 3950 60  0000 C CNN
	1    5400 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 52E5E610
P 4400 3700
F 0 "#PWR04" H 4400 3700 30  0001 C CNN
F 1 "GND" H 4400 3630 30  0001 C CNN
F 2 "" H 4400 3700 60  0000 C CNN
F 3 "" H 4400 3700 60  0000 C CNN
	1    4400 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 52E5E665
P 4000 2900
F 0 "#PWR05" H 4000 2900 30  0001 C CNN
F 1 "GND" H 4000 2830 30  0001 C CNN
F 2 "" H 4000 2900 60  0000 C CNN
F 3 "" H 4000 2900 60  0000 C CNN
	1    4000 2900
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3X2 P2
U 1 1 52E5E722
P 1400 3450
F 0 "P2" H 1400 3700 50  0000 C CNN
F 1 "PDI" V 1400 3500 40  0000 C CNN
F 2 "~" H 1400 3450 60  0000 C CNN
F 3 "~" H 1400 3450 60  0000 C CNN
	1    1400 3450
	1    0    0    -1  
$EndComp
Text GLabel 2000 3300 2    60   Input ~ 0
Vcc
$Comp
L GND #PWR06
U 1 1 52E5E81C
P 2000 3500
F 0 "#PWR06" H 2000 3500 30  0001 C CNN
F 1 "GND" H 2000 3430 30  0001 C CNN
F 2 "" H 2000 3500 60  0000 C CNN
F 3 "" H 2000 3500 60  0000 C CNN
	1    2000 3500
	0    -1   -1   0   
$EndComp
NoConn ~ 1800 3400
NoConn ~ 1000 3400
Text GLabel 4000 3000 2    60   Input ~ 0
Vcc
Text GLabel 2400 1300 1    60   Input ~ 0
AVcc
Text GLabel 7400 1650 2    60   Input ~ 0
AVcc
Text GLabel 5700 1650 0    60   Input ~ 0
Vcc
$Comp
L GND #PWR07
U 1 1 52E5EA66
P 6400 2500
F 0 "#PWR07" H 6400 2500 30  0001 C CNN
F 1 "GND" H 6400 2430 30  0001 C CNN
F 2 "" H 6400 2500 60  0000 C CNN
F 3 "" H 6400 2500 60  0000 C CNN
	1    6400 2500
	1    0    0    -1  
$EndComp
$Comp
L CP1 C3
U 1 1 52E5EA7C
P 5800 1950
F 0 "C3" H 5850 2050 50  0000 L CNN
F 1 "4.7uF" H 5850 1850 50  0000 L CNN
F 2 "~" H 5800 1950 60  0000 C CNN
F 3 "~" H 5800 1950 60  0000 C CNN
	1    5800 1950
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 52E5EA8B
P 6100 1950
F 0 "C4" H 6100 2050 40  0000 L CNN
F 1 "0.1uF" H 6106 1865 40  0000 L CNN
F 2 "~" H 6138 1800 30  0000 C CNN
F 3 "~" H 6100 1950 60  0000 C CNN
	1    6100 1950
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 52E5EAA9
P 7250 1950
F 0 "C6" H 7250 2050 40  0000 L CNN
F 1 "0.1uF" H 7256 1865 40  0000 L CNN
F 2 "~" H 7288 1800 30  0000 C CNN
F 3 "~" H 7250 1950 60  0000 C CNN
	1    7250 1950
	1    0    0    -1  
$EndComp
$Comp
L FILTER FB1
U 1 1 52E5EAC5
P 6550 1650
F 0 "FB1" H 6550 1800 60  0000 C CNN
F 1 "FILTER" H 6550 1550 60  0000 C CNN
F 2 "~" H 6550 1650 60  0000 C CNN
F 3 "~" H 6550 1650 60  0000 C CNN
	1    6550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2800 1100 2800
Wire Wire Line
	1600 2700 1100 2700
Wire Wire Line
	1600 2600 1100 2600
Wire Wire Line
	1600 2500 1100 2500
Wire Wire Line
	1600 2400 1100 2400
Wire Wire Line
	2500 1800 2500 1600
Wire Wire Line
	2500 1600 1400 1600
Wire Wire Line
	1400 1600 1400 2300
Wire Wire Line
	1400 2300 1100 2300
Wire Wire Line
	2600 1800 2600 1500
Wire Wire Line
	2600 1500 1300 1500
Wire Wire Line
	1300 1500 1300 2200
Wire Wire Line
	1300 2200 1100 2200
Wire Wire Line
	2700 1800 2700 1400
Wire Wire Line
	2700 1400 1200 1400
Wire Wire Line
	1200 1400 1200 2100
Wire Wire Line
	1200 2100 1100 2100
Wire Wire Line
	1600 2300 1500 2300
Wire Wire Line
	2200 1300 2200 1800
Wire Wire Line
	2400 3800 2400 3500
Wire Wire Line
	2500 3500 2500 3800
Wire Wire Line
	2600 3800 2600 3500
Wire Wire Line
	2700 3500 2700 3800
Wire Wire Line
	2800 3800 2800 3500
Wire Wire Line
	2900 3500 2900 3800
Wire Wire Line
	3100 3500 3100 3800
Wire Wire Line
	4200 2600 3900 2600
Wire Wire Line
	3900 2500 4200 2500
Wire Wire Line
	4200 2400 3900 2400
Wire Wire Line
	3900 2300 4200 2300
Wire Wire Line
	3100 1800 3100 1700
Wire Wire Line
	3100 1700 3700 1700
Wire Wire Line
	3700 1700 3700 2200
Wire Wire Line
	3700 2200 4200 2200
Wire Wire Line
	4200 2100 3800 2100
Wire Wire Line
	3800 2100 3800 1600
Wire Wire Line
	3800 1600 3000 1600
Wire Wire Line
	3000 1600 3000 1800
Wire Wire Line
	2900 1800 2900 1500
Wire Wire Line
	2900 1500 3900 1500
Wire Wire Line
	3900 1500 3900 2000
Wire Wire Line
	3900 2000 4200 2000
Wire Wire Line
	4200 1900 4000 1900
Wire Wire Line
	4000 1900 4000 1400
Wire Wire Line
	4000 1400 2800 1400
Wire Wire Line
	2800 1400 2800 1800
Wire Wire Line
	3900 2700 5500 2700
Wire Wire Line
	5500 2700 5500 3600
Wire Wire Line
	5500 3300 5300 3300
Wire Wire Line
	4300 3200 4500 3200
Wire Wire Line
	4300 2800 4300 3850
Wire Wire Line
	4300 2800 3900 2800
Wire Wire Line
	4400 3300 4500 3300
Wire Wire Line
	4400 3300 4400 3700
Wire Wire Line
	4400 3600 4700 3600
Connection ~ 5500 3300
Wire Wire Line
	4300 3850 4700 3850
Connection ~ 4300 3200
Wire Wire Line
	5100 3850 5400 3850
Wire Wire Line
	5400 3200 5400 3950
Wire Wire Line
	5400 3200 5300 3200
Connection ~ 5400 3850
Connection ~ 4400 3600
Wire Wire Line
	4000 2900 3900 2900
Wire Wire Line
	800  2900 1600 2900
Wire Wire Line
	1600 3000 900  3000
Wire Wire Line
	900  3000 900  3700
Wire Wire Line
	800  3500 1000 3500
Wire Wire Line
	1800 3300 2000 3300
Wire Wire Line
	2000 3500 1800 3500
Wire Wire Line
	3000 3500 3000 3800
Wire Wire Line
	4000 3000 3900 3000
Wire Wire Line
	2400 1300 2400 1800
Wire Wire Line
	5700 1650 6200 1650
Wire Wire Line
	6100 1750 6100 1650
Connection ~ 6100 1650
Wire Wire Line
	5800 1650 5800 1750
Connection ~ 5800 1650
Wire Wire Line
	5800 2150 5800 2250
Wire Wire Line
	5800 2250 7250 2250
Wire Wire Line
	6100 2150 6100 2250
Connection ~ 6100 2250
Wire Wire Line
	6400 2500 6400 2250
Connection ~ 6400 2250
$Comp
L R R1
U 1 1 52E5EE41
P 1400 3700
F 0 "R1" V 1480 3700 40  0000 C CNN
F 1 "10k" V 1407 3701 40  0000 C CNN
F 2 "~" V 1330 3700 30  0000 C CNN
F 3 "~" H 1400 3700 30  0000 C CNN
	1    1400 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 3700 1900 3700
Wire Wire Line
	1900 3700 1900 3300
Connection ~ 1900 3300
Wire Wire Line
	7250 2250 7250 2150
Wire Wire Line
	6900 1650 7400 1650
Wire Wire Line
	7250 1750 7250 1650
Connection ~ 7250 1650
$Comp
L CP1 C5
U 1 1 52E5F059
P 7000 1950
F 0 "C5" H 7050 2050 50  0000 L CNN
F 1 "10uF" H 7050 1850 50  0000 L CNN
F 2 "~" H 7000 1950 60  0000 C CNN
F 3 "~" H 7000 1950 60  0000 C CNN
	1    7000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1750 7000 1650
Connection ~ 7000 1650
Wire Wire Line
	7000 2150 7000 2250
Connection ~ 7000 2250
Wire Wire Line
	5500 3600 5100 3600
Wire Wire Line
	900  3700 1150 3700
Connection ~ 900  3500
Wire Wire Line
	1000 3300 800  3300
Wire Wire Line
	800  3300 800  2900
Text GLabel 800  3500 0    60   Input ~ 0
RESET
Text GLabel 6450 3250 0    60   Input ~ 0
RESET
Text GLabel 6450 3050 0    60   Input ~ 0
Vcc
$Comp
L GND #PWR08
U 1 1 52E5FA42
P 6450 3150
F 0 "#PWR08" H 6450 3150 30  0001 C CNN
F 1 "GND" H 6450 3080 30  0001 C CNN
F 2 "" H 6450 3150 60  0000 C CNN
F 3 "" H 6450 3150 60  0000 C CNN
	1    6450 3150
	0    1    1    0   
$EndComp
$Comp
L CONN_3 K1
U 1 1 52E5FA54
P 6900 3150
F 0 "K1" V 6850 3150 50  0000 C CNN
F 1 "PWR/RST" V 6950 3150 40  0000 C CNN
F 2 "~" H 6900 3150 60  0000 C CNN
F 3 "~" H 6900 3150 60  0000 C CNN
	1    6900 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3250 6550 3250
Wire Wire Line
	6550 3150 6450 3150
Wire Wire Line
	6450 3050 6550 3050
$EndSCHEMATC