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
LIBS:microSD-breakout-cache
EELAYER 25 0
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
L MICROSD_JAE_ST11-H U2
U 1 1 53DD0708
P 1700 1100
F 0 "U2" H 1700 500 60  0000 C CNN
F 1 "MICROSD_JAE_ST11-H" H 1700 1550 60  0000 C CNN
F 2 "" H 1700 800 60  0000 C CNN
F 3 "" H 1700 800 60  0000 C CNN
	1    1700 1100
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 53DD0677
P 5400 1100
F 0 "C2" H 5450 1200 50  0000 L CNN
F 1 "1u" H 5450 1000 50  0000 L CNN
F 2 "~" H 5400 1100 60  0000 C CNN
F 3 "~" H 5400 1100 60  0000 C CNN
	1    5400 1100
	1    0    0    -1  
$EndComp
Text Label 700  800  0    60   ~ 0
DAT2
Text Label 700  900  0    60   ~ 0
CD/DAT3
Text Label 700  1000 0    60   ~ 0
CMD
Text Label 700  1100 0    60   ~ 0
3V3
Text Label 700  1200 0    60   ~ 0
CLK
Text Label 700  1400 0    60   ~ 0
DAT0
Text Label 700  1500 0    60   ~ 0
DAT1
Text Label 2900 1700 2    60   ~ 0
GND
Text Label 2700 800  2    60   ~ 0
GND
Text Label 2700 900  2    60   ~ 0
DSW
Wire Wire Line
	700  800  900  800 
Wire Wire Line
	700  900  900  900 
Wire Wire Line
	700  1000 900  1000
Wire Wire Line
	700  1100 900  1100
Wire Wire Line
	700  1200 900  1200
Wire Wire Line
	700  1300 900  1300
Wire Wire Line
	700  1400 900  1400
Wire Wire Line
	700  1500 900  1500
Wire Wire Line
	2500 800  2700 800 
Wire Wire Line
	2700 900  2500 900 
Wire Wire Line
	2700 1100 2500 1100
Wire Wire Line
	2700 1200 2500 1200
Wire Wire Line
	2700 1300 2500 1300
Wire Wire Line
	2700 1400 2500 1400
Wire Wire Line
	2700 1500 2500 1500
Wire Wire Line
	2700 1600 2500 1600
Wire Wire Line
	2500 1700 2900 1700
Connection ~ 2700 1700
Wire Wire Line
	2700 1100 2700 1700
Connection ~ 2700 1200
Connection ~ 2700 1300
Connection ~ 2700 1400
Connection ~ 2700 1500
Connection ~ 2700 1600
Text Label 700  1300 0    60   ~ 0
GND
$Comp
L AAT3221 U1
U 1 1 53DD0EB4
P 4600 900
F 0 "U1" H 4600 650 50  0000 C CNN
F 1 "MIC5504-3.3YM5 TR" H 4600 1150 50  0000 C CNN
F 2 "SOT23-5" H 4600 450 50  0001 C CNN
F 3 "150_mA_LDO" H 4600 550 50  0001 C CNN
	1    4600 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 800  4000 800 
Wire Wire Line
	3700 900  4000 900 
Wire Wire Line
	4000 1000 3800 1000
Text Label 3200 800  0    60   ~ 0
VIN
Text Label 6300 800  2    60   ~ 0
3V3
Wire Wire Line
	6300 800  5200 800 
Text Label 3800 1000 0    60   ~ 0
EN
Text Label 3200 1400 0    60   ~ 0
GND
$Comp
L CP1 C3
U 1 1 53DD0F61
P 5750 1100
F 0 "C3" H 5800 1200 50  0000 L CNN
F 1 "0.1u" H 5800 1000 50  0000 L CNN
F 2 "~" H 5750 1100 60  0000 C CNN
F 3 "~" H 5750 1100 60  0000 C CNN
	1    5750 1100
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 53DD0F6C
P 3400 1100
F 0 "C1" H 3450 1200 50  0000 L CNN
F 1 "0.33u" H 3450 1000 50  0000 L CNN
F 2 "~" H 3400 1100 60  0000 C CNN
F 3 "~" H 3400 1100 60  0000 C CNN
	1    3400 1100
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 53DD11A3
P 3600 2250
F 0 "R1" V 3680 2250 40  0000 C CNN
F 1 "4M" V 3607 2251 40  0000 C CNN
F 2 "~" V 3530 2250 30  0000 C CNN
F 3 "~" H 3600 2250 30  0000 C CNN
	1    3600 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 1400 3700 900 
Wire Wire Line
	3200 1400 5750 1400
Wire Wire Line
	3400 1300 3400 1400
Connection ~ 3400 1400
Wire Wire Line
	3400 900  3400 800 
Connection ~ 3400 800 
Wire Wire Line
	5750 1400 5750 1300
Connection ~ 3700 1400
Wire Wire Line
	5400 1300 5400 1400
Connection ~ 5400 1400
Text Notes 3350 3000 0    60   ~ 0
DSW is open when card is present, pulled to ground when card is absent\nSo we pull that up to VIN and (optionally) use it to enable the regulator.\nAlternately we can pull DSW up to the 3V3 rail for use by the MCU
Text Label 3400 1900 0    60   ~ 0
VIN
Wire Wire Line
	3400 1900 3600 1900
Wire Wire Line
	3600 1900 3600 2000
Wire Wire Line
	3400 2600 3900 2600
Wire Wire Line
	3600 2600 3600 2500
Text Label 3400 2600 0    60   ~ 0
DSW
$Comp
L R R3
U 1 1 53DD14C2
P 4150 2600
F 0 "R3" V 4230 2600 40  0000 C CNN
F 1 "0" V 4157 2601 40  0000 C CNN
F 2 "~" V 4080 2600 30  0000 C CNN
F 3 "~" H 4150 2600 30  0000 C CNN
	1    4150 2600
	0    1    1    0   
$EndComp
Connection ~ 3600 2600
Wire Wire Line
	4600 2600 4400 2600
Text Label 4600 2600 2    60   ~ 0
EN
$Comp
L R R2
U 1 1 53DD1531
P 3800 2250
F 0 "R2" V 3880 2250 40  0000 C CNN
F 1 "4M" V 3807 2251 40  0000 C CNN
F 2 "~" V 3730 2250 30  0000 C CNN
F 3 "~" H 3800 2250 30  0000 C CNN
F 4 "DNP" V 3700 2250 60  0000 C CNN "Note"
	1    3800 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 2500 3800 2600
Connection ~ 3800 2600
Wire Wire Line
	4000 1900 3800 1900
Wire Wire Line
	3800 1900 3800 2000
Text Label 4000 1900 2    60   ~ 0
3V3
Wire Wire Line
	5400 800  5400 900 
Connection ~ 5400 800 
Wire Wire Line
	5750 800  5750 900 
Connection ~ 5750 800 
$Comp
L CONN_5 P1
U 1 1 53DD172F
P 900 2400
F 0 "P1" V 850 2400 50  0000 C CNN
F 1 "CONN_5" V 950 2400 50  0000 C CNN
F 2 "~" H 900 2400 60  0000 C CNN
F 3 "~" H 900 2400 60  0000 C CNN
	1    900  2400
	-1   0    0    -1  
$EndComp
$Comp
L CONN_5 P2
U 1 1 53DD1743
P 2300 2400
F 0 "P2" V 2250 2400 50  0000 C CNN
F 1 "CONN_5" V 2350 2400 50  0000 C CNN
F 2 "~" H 2300 2400 60  0000 C CNN
F 3 "~" H 2300 2400 60  0000 C CNN
	1    2300 2400
	1    0    0    1   
$EndComp
Text Label 1500 2600 2    60   ~ 0
DAT2
Text Label 1500 2500 2    60   ~ 0
CD/DAT3
Text Label 1500 2400 2    60   ~ 0
CMD
Text Label 1500 2300 2    60   ~ 0
VIN
Text Label 1700 2300 0    60   ~ 0
CLK
Text Label 1700 2500 0    60   ~ 0
DAT0
Text Label 1700 2600 0    60   ~ 0
DAT1
Wire Wire Line
	1500 2600 1300 2600
Wire Wire Line
	1500 2500 1300 2500
Wire Wire Line
	1500 2400 1300 2400
Wire Wire Line
	1500 2300 1300 2300
Wire Wire Line
	1700 2300 1900 2300
Wire Wire Line
	1700 2400 1900 2400
Wire Wire Line
	1700 2500 1900 2500
Wire Wire Line
	1700 2600 1900 2600
Text Label 1700 2400 0    60   ~ 0
GND
Wire Wire Line
	1500 2200 1300 2200
Wire Wire Line
	1700 2200 1900 2200
Text Label 1500 2200 2    60   ~ 0
EN
Text Label 1700 2200 0    60   ~ 0
DSW
$Comp
L CONN_1 TP1
U 1 1 53DD17DE
P 1150 2900
F 0 "TP1" H 1230 2900 40  0000 L CNN
F 1 "CONN_1" H 1150 2955 30  0001 C CNN
F 2 "~" H 1150 2900 60  0000 C CNN
F 3 "~" H 1150 2900 60  0000 C CNN
	1    1150 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 2900 1500 2900
Text Label 1500 2900 2    60   ~ 0
3V3
$EndSCHEMATC
