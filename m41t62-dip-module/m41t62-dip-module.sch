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
LIBS:lcc8-dip-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "22 may 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L M41T62 U101
U 1 1 53781E67
P 5650 2550
F 0 "U101" H 5650 2450 50  0000 C CNN
F 1 "M41T62" H 5650 2650 50  0000 C CNN
F 2 "LCC8" H 5650 2550 50  0001 C CNN
F 3 "RTC_with_integrated_XTAL.__Pin-compatible_with_Abracon_AB-RTCMC-32.768kHz-AIGZ-S7" H 5600 3000 50  0001 C CNN
	1    5650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2400 4900 2400
Wire Wire Line
	4900 2500 4700 2500
Wire Wire Line
	4700 2600 4900 2600
Wire Wire Line
	6600 2600 6400 2600
Wire Wire Line
	6400 2700 6600 2700
$Comp
L CP1 C101
U 1 1 537D4F7F
P 5650 3050
F 0 "C101" H 5700 3150 50  0000 L CNN
F 1 "CP1" H 5700 2950 50  0000 L CNN
F 2 "~" H 5650 3050 60  0000 C CNN
F 3 "~" H 5650 3050 60  0000 C CNN
	1    5650 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2600 4800 3050
Wire Wire Line
	4800 3050 5450 3050
Connection ~ 4800 2600
Wire Wire Line
	5850 3050 6500 3050
Wire Wire Line
	6500 3050 6500 2700
Connection ~ 6500 2700
Text Label 4800 2400 0    60   ~ 0
SDA
Text Label 4800 2500 0    60   ~ 0
SQW
Text Label 4800 2600 0    60   ~ 0
Vss
Text Label 6500 2400 0    60   ~ 0
SCL
Text Label 6500 2600 0    60   ~ 0
nINT
Text Label 6500 2700 0    60   ~ 0
Vdd
NoConn ~ 6400 2500
NoConn ~ 4900 2700
$Comp
L CONN_3 K101
U 1 1 537D5065
P 4350 2500
F 0 "K101" V 4300 2500 50  0000 C CNN
F 1 "CONN_3" V 4400 2500 40  0000 C CNN
F 2 "~" H 4350 2500 60  0000 C CNN
F 3 "~" H 4350 2500 60  0000 C CNN
	1    4350 2500
	-1   0    0    -1  
$EndComp
$Comp
L CONN_3 K102
U 1 1 537D5074
P 6950 2600
F 0 "K102" V 6900 2600 50  0000 C CNN
F 1 "CONN_3" V 7000 2600 40  0000 C CNN
F 2 "~" H 6950 2600 60  0000 C CNN
F 3 "~" H 6950 2600 60  0000 C CNN
	1    6950 2600
	1    0    0    1   
$EndComp
Wire Wire Line
	6400 2400 6500 2400
Wire Wire Line
	6500 2400 6500 2500
Wire Wire Line
	6500 2500 6600 2500
$EndSCHEMATC
