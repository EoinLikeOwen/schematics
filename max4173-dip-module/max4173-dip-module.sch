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
LIBS:max4173-dip-module-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "15 aug 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MAX4173_SO8 U1
U 1 1 53DC27DE
P 5750 3150
F 0 "U1" H 5750 3550 50  0000 C CNN
F 1 "MAX4173_SO8" H 5750 3450 50  0000 C CNN
F 2 "SO-8" H 5750 2850 50  0001 C CNN
F 3 "Low-Cost,_SOT23,_Voltage-Output,_High-Side_Current-Sense_Amplifier" H 5750 2700 50  0001 C CNN
	1    5750 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K1
U 1 1 53DC2802
P 4350 3100
F 0 "K1" V 4300 3100 50  0000 C CNN
F 1 "CONN_3" V 4400 3100 40  0000 C CNN
F 2 "~" H 4350 3100 60  0000 C CNN
F 3 "~" H 4350 3100 60  0000 C CNN
	1    4350 3100
	-1   0    0    -1  
$EndComp
$Comp
L CONN_3 K2
U 1 1 53DC2825
P 7650 3100
F 0 "K2" V 7600 3100 50  0000 C CNN
F 1 "CONN_3" V 7700 3100 40  0000 C CNN
F 2 "~" H 7650 3100 60  0000 C CNN
F 3 "~" H 7650 3100 60  0000 C CNN
	1    7650 3100
	1    0    0    1   
$EndComp
$Comp
L R R1
U 1 1 53DC2843
P 6950 2900
F 0 "R1" V 7030 2900 40  0000 C CNN
F 1 "Rsense" V 6957 2901 40  0000 C CNN
F 2 "~" V 6880 2900 30  0000 C CNN
F 3 "~" H 6950 2900 30  0000 C CNN
	1    6950 2900
	0    1    1    0   
$EndComp
$Comp
L CP1 C1
U 1 1 53DC2852
P 4500 2300
F 0 "C1" H 4550 2400 50  0000 L CNN
F 1 "0.1u" H 4550 2200 50  0000 L CNN
F 2 "~" H 4500 2300 60  0000 C CNN
F 3 "~" H 4500 2300 60  0000 C CNN
	1    4500 2300
	1    0    0    -1  
$EndComp
Text Label 6500 3200 2    60   ~ 0
RS-
Text Label 6500 3000 2    60   ~ 0
RS+
Text Label 5000 3300 0    60   ~ 0
OUT
Text Label 5000 3000 0    60   ~ 0
Vcc
Text Label 5000 3200 0    60   ~ 0
GND
Wire Wire Line
	4700 3000 5000 3000
NoConn ~ 6500 3300
NoConn ~ 6500 3100
NoConn ~ 5000 3100
Wire Wire Line
	4700 3100 4900 3100
Wire Wire Line
	4900 3100 4900 3200
Wire Wire Line
	4900 3200 5000 3200
Wire Wire Line
	4700 3200 4800 3200
Wire Wire Line
	4800 3200 4800 3300
Wire Wire Line
	4800 3300 5000 3300
NoConn ~ 7300 3100
Wire Wire Line
	4500 2100 4500 1900
Text Label 4500 1900 3    60   ~ 0
Vcc
Text Label 4500 2700 1    60   ~ 0
GND
Wire Wire Line
	4500 2700 4500 2500
Wire Wire Line
	6500 3200 7300 3200
Wire Wire Line
	6500 3000 7300 3000
Wire Wire Line
	7200 3000 7200 2900
Connection ~ 7200 3000
Wire Wire Line
	6700 2900 6700 3200
Connection ~ 6700 3200
$EndSCHEMATC
