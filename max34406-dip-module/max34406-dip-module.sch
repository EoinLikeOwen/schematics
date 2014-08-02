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
LIBS:max34406-dip-module-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2 aug 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MAX34406 U1
U 1 1 53DC3E3B
P 1550 1750
F 0 "U1" H 1150 2550 50  0000 C CNN
F 1 "MAX34406" H 1800 2550 50  0000 C CNN
F 2 "QFN24_EP" H 1850 750 50  0001 C CNN
F 3 "Quad_current-sense_amplifier_with_overcurrent_threshold_comparators" H 1550 1800 50  0001 C CNN
	1    1550 1750
	1    0    0    -1  
$EndComp
$Comp
L CONN_11 P1
U 1 1 53DC3E78
P 3150 1400
F 0 "P1" V 3100 1400 60  0000 C CNN
F 1 "CONN_11" V 3200 1400 60  0000 C CNN
F 2 "~" H 3150 1400 60  0000 C CNN
F 3 "~" H 3150 1400 60  0000 C CNN
	1    3150 1400
	-1   0    0    -1  
$EndComp
$Comp
L CONN_11 P2
U 1 1 53DC3E87
P 3150 2600
F 0 "P2" V 3100 2600 60  0000 C CNN
F 1 "CONN_11" V 3200 2600 60  0000 C CNN
F 2 "~" H 3150 2600 60  0000 C CNN
F 3 "~" H 3150 2600 60  0000 C CNN
	1    3150 2600
	-1   0    0    -1  
$EndComp
Text Label 600  1200 0    60   ~ 0
IN1+
Text Label 600  1300 0    60   ~ 0
IN1-
Text Label 600  1500 0    60   ~ 0
IN2+
Text Label 600  1600 0    60   ~ 0
IN2-
Text Label 600  1800 0    60   ~ 0
IN3+
Text Label 600  1900 0    60   ~ 0
IN3-
Text Label 600  2100 0    60   ~ 0
IN4+
Text Label 600  2200 0    60   ~ 0
IN4-
Text Label 600  2400 0    60   ~ 0
ENA
Text Label 600  2500 0    60   ~ 0
SHTDN
Text Label 600  2600 0    60   ~ 0
CDLY
Text Label 2500 1200 2    60   ~ 0
OUT1
Text Label 2500 1500 2    60   ~ 0
OUT2
Text Label 2500 1800 2    60   ~ 0
OUT3
Text Label 2500 2100 2    60   ~ 0
OUT4
Text Label 2500 1300 2    60   ~ 0
OC1
Text Label 2500 1600 2    60   ~ 0
OC2
Text Label 2500 1900 2    60   ~ 0
OC3
Text Label 2500 2200 2    60   ~ 0
OC4
Text Label 1850 3100 2    60   ~ 0
GND
Text Label 1750 650  2    60   ~ 0
VDD
$Comp
L CP1 C1
U 1 1 53DC40F1
P 800 3500
F 0 "C1" H 850 3600 50  0000 L CNN
F 1 "0.1u" H 850 3400 50  0000 L CNN
F 2 "~" H 800 3500 60  0000 C CNN
F 3 "~" H 800 3500 60  0000 C CNN
	1    800  3500
	1    0    0    -1  
$EndComp
Text Label 1000 3200 2    60   ~ 0
VDD
Text Label 1000 3800 2    60   ~ 0
GND
$Comp
L R R1
U 1 1 53DC415A
P 4850 900
F 0 "R1" V 4930 900 40  0000 C CNN
F 1 "R" V 4857 901 40  0000 C CNN
F 2 "~" V 4780 900 30  0000 C CNN
F 3 "~" H 4850 900 30  0000 C CNN
	1    4850 900 
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 53DC4167
P 4850 1100
F 0 "R2" V 4930 1100 40  0000 C CNN
F 1 "R" V 4857 1101 40  0000 C CNN
F 2 "~" V 4780 1100 30  0000 C CNN
F 3 "~" H 4850 1100 30  0000 C CNN
	1    4850 1100
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 53DC416D
P 4850 1300
F 0 "R3" V 4930 1300 40  0000 C CNN
F 1 "R" V 4857 1301 40  0000 C CNN
F 2 "~" V 4780 1300 30  0000 C CNN
F 3 "~" H 4850 1300 30  0000 C CNN
	1    4850 1300
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 53DC4173
P 4850 1500
F 0 "R4" V 4930 1500 40  0000 C CNN
F 1 "R" V 4857 1501 40  0000 C CNN
F 2 "~" V 4780 1500 30  0000 C CNN
F 3 "~" H 4850 1500 30  0000 C CNN
	1    4850 1500
	0    -1   -1   0   
$EndComp
Text Label 4350 900  0    60   ~ 0
IN1+
Text Label 4350 1100 0    60   ~ 0
IN2+
Text Label 4350 1300 0    60   ~ 0
IN3+
Text Label 4350 1500 0    60   ~ 0
IN4+
Text Label 5350 900  2    60   ~ 0
IN1-
Text Label 5350 1100 2    60   ~ 0
IN2-
Text Label 5350 1300 2    60   ~ 0
IN3-
Text Label 5350 1500 2    60   ~ 0
IN4-
Text Label 3700 900  2    60   ~ 0
IN1+
Text Label 3700 1000 2    60   ~ 0
IN1-
Text Label 3700 1100 2    60   ~ 0
IN2+
Text Label 3700 1200 2    60   ~ 0
IN2-
Text Label 3700 1600 2    60   ~ 0
IN3+
Text Label 3700 1700 2    60   ~ 0
IN3-
Text Label 3700 1800 2    60   ~ 0
IN4+
Text Label 3700 1900 2    60   ~ 0
IN4-
Text Label 3700 2100 2    60   ~ 0
OUT1
Text Label 3700 2300 2    60   ~ 0
OUT2
Text Label 3700 2800 2    60   ~ 0
OUT3
Text Label 3700 3000 2    60   ~ 0
OUT4
Text Label 3700 2200 2    60   ~ 0
OC1
Text Label 3700 2400 2    60   ~ 0
OC2
Text Label 3700 2900 2    60   ~ 0
OC3
Text Label 3700 3100 2    60   ~ 0
OC4
Text Label 3700 2600 2    60   ~ 0
VDD
Text Label 3700 2500 2    60   ~ 0
GND
Wire Wire Line
	600  1200 800  1200
Wire Wire Line
	600  1300 800  1300
Wire Wire Line
	600  1500 800  1500
Wire Wire Line
	600  1600 800  1600
Wire Wire Line
	600  1800 800  1800
Wire Wire Line
	600  1900 800  1900
Wire Wire Line
	600  2100 800  2100
Wire Wire Line
	600  2200 800  2200
Wire Wire Line
	600  2400 800  2400
Wire Wire Line
	600  2500 800  2500
Wire Wire Line
	600  2600 800  2600
Wire Wire Line
	2500 1200 2300 1200
Wire Wire Line
	2500 1300 2300 1300
Wire Wire Line
	2500 1500 2300 1500
Wire Wire Line
	2500 1600 2300 1600
Wire Wire Line
	2500 1800 2300 1800
Wire Wire Line
	2500 1900 2300 1900
Wire Wire Line
	2500 2100 2300 2100
Wire Wire Line
	2500 2200 2300 2200
Wire Wire Line
	1850 3100 1450 3100
Wire Wire Line
	1450 3100 1450 3000
Wire Wire Line
	1650 3000 1650 3100
Connection ~ 1650 3100
Wire Wire Line
	1550 700  1550 650 
Wire Wire Line
	1550 650  1750 650 
Wire Wire Line
	1000 3200 800  3200
Wire Wire Line
	800  3200 800  3300
Wire Wire Line
	1000 3800 800  3800
Wire Wire Line
	800  3800 800  3700
Wire Wire Line
	5350 1500 5100 1500
Wire Wire Line
	5100 900  5350 900 
Wire Wire Line
	5350 1100 5100 1100
Wire Wire Line
	5100 1300 5350 1300
Wire Wire Line
	4600 900  4350 900 
Wire Wire Line
	4350 1100 4600 1100
Wire Wire Line
	4600 1300 4350 1300
Wire Wire Line
	4350 1500 4600 1500
Wire Wire Line
	3700 900  3500 900 
Wire Wire Line
	3700 1000 3500 1000
Wire Wire Line
	3700 1100 3500 1100
Wire Wire Line
	3700 1200 3500 1200
Wire Wire Line
	3700 1600 3500 1600
Wire Wire Line
	3700 1700 3500 1700
Wire Wire Line
	3700 1800 3500 1800
Wire Wire Line
	3700 1900 3500 1900
Wire Wire Line
	3700 2100 3500 2100
Wire Wire Line
	3700 2200 3500 2200
Wire Wire Line
	3700 2300 3500 2300
Wire Wire Line
	3700 2400 3500 2400
Wire Wire Line
	3700 2800 3500 2800
Wire Wire Line
	3700 2900 3500 2900
Wire Wire Line
	3700 3000 3500 3000
Wire Wire Line
	3700 3100 3500 3100
Wire Wire Line
	3700 2700 3500 2700
Wire Wire Line
	3500 1500 3700 1500
Wire Wire Line
	3500 1400 3700 1400
Wire Wire Line
	3500 2600 3700 2600
Wire Wire Line
	3500 2500 3700 2500
Wire Wire Line
	3500 1300 3700 1300
Text Label 3700 1500 2    60   ~ 0
ENA
Text Label 3700 1400 2    60   ~ 0
SHTDN
Text Label 3700 1300 2    60   ~ 0
CDLY
$Comp
L R R5
U 1 1 53DC3CA3
P 5100 2650
F 0 "R5" V 5180 2650 40  0000 C CNN
F 1 "10M" V 5107 2651 40  0000 C CNN
F 2 "~" V 5030 2650 30  0000 C CNN
F 3 "~" H 5100 2650 30  0000 C CNN
	1    5100 2650
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 53DC3CB2
P 5300 2650
F 0 "R6" V 5380 2650 40  0000 C CNN
F 1 "10M" V 5307 2651 40  0000 C CNN
F 2 "~" V 5230 2650 30  0000 C CNN
F 3 "~" H 5300 2650 30  0000 C CNN
	1    5300 2650
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 53DC3CC1
P 5500 2650
F 0 "R7" V 5580 2650 40  0000 C CNN
F 1 "10M" V 5507 2651 40  0000 C CNN
F 2 "~" V 5430 2650 30  0000 C CNN
F 3 "~" H 5500 2650 30  0000 C CNN
	1    5500 2650
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 53DC3CD0
P 5700 2650
F 0 "R8" V 5780 2650 40  0000 C CNN
F 1 "10M" V 5707 2651 40  0000 C CNN
F 2 "~" V 5630 2650 30  0000 C CNN
F 3 "~" H 5700 2650 30  0000 C CNN
	1    5700 2650
	1    0    0    -1  
$EndComp
Text Label 4900 2300 0    60   ~ 0
OC_PU
Wire Wire Line
	4900 2300 5700 2300
Wire Wire Line
	5700 2300 5700 2400
Wire Wire Line
	5100 2300 5100 2400
Connection ~ 5100 2300
Wire Wire Line
	5300 2400 5300 2300
Connection ~ 5300 2300
Wire Wire Line
	5500 2300 5500 2400
Connection ~ 5500 2300
Text Label 5900 3000 2    60   ~ 0
OC1
Text Label 5900 3100 2    60   ~ 0
OC2
Text Label 5900 3200 2    60   ~ 0
OC3
Text Label 5900 3300 2    60   ~ 0
OC4
Wire Wire Line
	5900 3000 5700 3000
Wire Wire Line
	5700 3000 5700 2900
Wire Wire Line
	5900 3100 5500 3100
Wire Wire Line
	5500 3100 5500 2900
Wire Wire Line
	5900 3200 5300 3200
Wire Wire Line
	5300 3200 5300 2900
Wire Wire Line
	5900 3300 5100 3300
Wire Wire Line
	5100 3300 5100 2900
Text Label 3700 2700 2    60   ~ 0
OC_PU
$EndSCHEMATC
