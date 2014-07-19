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
LIBS:Tag-Connect
LIBS:attiny20-bga-dip-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "17 jun 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY20-CCU U1
U 1 1 539FD6D1
P 6550 2350
F 0 "U1" H 6550 2250 50  0000 C CNN
F 1 "ATTINY20-CCU" H 6550 2450 50  0000 C CNN
F 2 "UFBGA-15" H 6900 2050 50  0001 C CNN
F 3 "DOCUMENTATION" H 6550 2350 50  0001 C CNN
	1    6550 2350
	-1   0    0    -1  
$EndComp
$Comp
L CONN_7 P2
U 1 1 539FD6E0
P 4850 2400
F 0 "P2" V 4820 2400 60  0000 C CNN
F 1 "CONN_7" V 4920 2400 60  0000 C CNN
F 2 "~" H 4850 2400 60  0000 C CNN
F 3 "~" H 4850 2400 60  0000 C CNN
	1    4850 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5300 2100 5200 2100
Wire Wire Line
	6550 1500 6550 1650
Wire Wire Line
	5200 2200 5600 2200
Wire Wire Line
	5600 2300 5200 2300
Wire Wire Line
	5200 2400 5400 2400
Wire Wire Line
	5400 2400 5400 2500
Wire Wire Line
	5400 2500 5600 2500
Wire Wire Line
	5200 2500 5300 2500
Wire Wire Line
	5300 2500 5300 2450
Wire Wire Line
	5300 2450 5500 2450
Wire Wire Line
	5500 2450 5500 2400
Wire Wire Line
	5500 2400 5600 2400
$Comp
L CONN_7 P1
U 1 1 539FD730
P 8250 2200
F 0 "P1" V 8220 2200 60  0000 C CNN
F 1 "CONN_7" V 8320 2200 60  0000 C CNN
F 2 "~" H 8250 2200 60  0000 C CNN
F 3 "~" H 8250 2200 60  0000 C CNN
	1    8250 2200
	1    0    0    1   
$EndComp
Wire Wire Line
	7500 2700 7600 2700
Wire Wire Line
	7600 2700 7600 3200
Wire Wire Line
	7600 3200 5400 3200
Wire Wire Line
	5400 3200 5400 2600
Wire Wire Line
	5400 2600 5200 2600
Wire Wire Line
	5200 2700 5300 2700
Wire Wire Line
	5300 2700 5300 3300
Wire Wire Line
	5300 3300 7700 3300
Wire Wire Line
	7700 3300 7700 2600
Wire Wire Line
	7700 2600 7500 2600
Wire Wire Line
	6500 3050 6500 3100
Wire Wire Line
	6500 3100 7800 3100
Wire Wire Line
	7800 3100 7800 1900
Wire Wire Line
	7800 1900 7900 1900
Wire Wire Line
	6600 3050 6600 3100
Connection ~ 6600 3100
Wire Wire Line
	7500 2000 7900 2000
Wire Wire Line
	7500 2100 7900 2100
Wire Wire Line
	7500 2200 7900 2200
Wire Wire Line
	7500 2300 7900 2300
Wire Wire Line
	7500 2400 7900 2400
Wire Wire Line
	7500 2500 7900 2500
Text Label 7550 2000 0    60   ~ 0
PA0
Text Label 7550 2100 0    60   ~ 0
PA1
Text Label 7550 2200 0    60   ~ 0
PA2
Text Label 7550 2300 0    60   ~ 0
PA3
Text Label 7550 2400 0    60   ~ 0
PA4
Text Label 7550 2500 0    60   ~ 0
PA5
Text Label 7550 2600 0    60   ~ 0
PA6
Text Label 7550 2700 0    60   ~ 0
PA7
Text Label 5500 2200 0    60   ~ 0
PB0
Text Label 5500 2300 0    60   ~ 0
PB1
Text Label 5500 2400 0    60   ~ 0
PB2
Text Label 5500 2500 0    60   ~ 0
PB3
Text Label 6700 3100 0    60   ~ 0
GND
Text Label 5350 1500 0    60   ~ 0
VCC
$Comp
L CP1 C1
U 1 1 539FD64F
P 7800 1700
F 0 "C1" H 7850 1800 50  0000 L CNN
F 1 "CP1" H 7850 1600 50  0000 L CNN
F 2 "~" H 7800 1700 60  0000 C CNN
F 3 "~" H 7800 1700 60  0000 C CNN
	1    7800 1700
	1    0    0    -1  
$EndComp
Connection ~ 6550 1500
$Comp
L FILTER FB1
U 1 1 539FD683
P 5900 1500
F 0 "FB1" H 5900 1650 60  0000 C CNN
F 1 "FILTER" H 5900 1400 60  0000 C CNN
F 2 "~" H 5900 1500 60  0000 C CNN
F 3 "~" H 5900 1500 60  0000 C CNN
	1    5900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1500 7800 1500
Wire Wire Line
	5300 1500 5300 2100
Wire Wire Line
	5300 1500 5550 1500
$Comp
L TC2030-IDC P3
U 1 1 539FD8DB
P 4950 3900
F 0 "P3" H 4900 3700 40  0000 L CNN
F 1 "TC2030-IDC" H 4950 4100 40  0000 C CNN
F 2 "" H 4950 3900 60  0000 C CNN
F 3 "" H 4950 3900 60  0000 C CNN
	1    4950 3900
	1    0    0    -1  
$EndComp
NoConn ~ 5200 3900
Wire Wire Line
	5200 3800 5400 3800
Text Label 5400 3800 2    60   ~ 0
VCC
Text Label 5400 4000 2    60   ~ 0
GND
Wire Wire Line
	5400 4000 5200 4000
Wire Wire Line
	4700 4000 4500 4000
Wire Wire Line
	4500 3900 4700 3900
Wire Wire Line
	4700 3800 4500 3800
Text Label 4500 3800 0    60   ~ 0
PB1
Text Label 4500 3900 0    60   ~ 0
PB0
Text Label 4500 4000 0    60   ~ 0
PB3
$EndSCHEMATC
