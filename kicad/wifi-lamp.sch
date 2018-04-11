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
LIBS:ESP8266
LIBS:wifi-lamp-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP-01v090 U1
U 1 1 55F95030
P 5600 3550
F 0 "U1" H 5600 3450 50  0000 C CNN
F 1 "ESP-01v090" H 5600 3650 50  0000 C CNN
F 2 "ESP8266:ESP-01" H 5600 3550 50  0001 C CNN
F 3 "" H 5600 3550 50  0001 C CNN
	1    5600 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 55F96118
P 7050 3400
F 0 "#PWR01" H 7050 3150 50  0001 C CNN
F 1 "GND" H 7050 3250 50  0000 C CNN
F 2 "" H 7050 3400 60  0000 C CNN
F 3 "" H 7050 3400 60  0000 C CNN
	1    7050 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 55F96312
P 7600 4300
F 0 "#PWR02" H 7600 4050 50  0001 C CNN
F 1 "GND" H 7600 4150 50  0000 C CNN
F 2 "" H 7600 4300 60  0000 C CNN
F 3 "" H 7600 4300 60  0000 C CNN
	1    7600 4300
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 55F9635C
P 6800 4100
F 0 "SW1" H 6950 4210 50  0000 C CNN
F 1 "FLASH" H 6800 4020 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_REED_CT05-XXXX-G1" H 6800 4100 60  0001 C CNN
F 3 "" H 6800 4100 60  0000 C CNN
	1    6800 4100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 55F96393
P 6800 4400
F 0 "#PWR03" H 6800 4150 50  0001 C CNN
F 1 "GND" H 6800 4250 50  0000 C CNN
F 2 "" H 6800 4400 60  0000 C CNN
F 3 "" H 6800 4400 60  0000 C CNN
	1    6800 4400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 55F96711
P 7900 4100
F 0 "P2" H 7900 4250 50  0000 C CNN
F 1 "LED" V 8000 4100 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.50mmDrill" H 7900 4100 60  0001 C CNN
F 3 "" H 7900 4100 60  0000 C CNN
	1    7900 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 55F968F0
P 5500 2900
F 0 "#PWR04" H 5500 2650 50  0001 C CNN
F 1 "GND" H 5500 2750 50  0000 C CNN
F 2 "" H 5500 2900 60  0000 C CNN
F 3 "" H 5500 2900 60  0000 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 587FF437
P 3250 3550
F 0 "P1" H 3250 3700 50  0000 C CNN
F 1 "POWER" V 3350 3550 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.50mmDrill" H 3250 3550 50  0001 C CNN
F 3 "" H 3250 3550 50  0000 C CNN
	1    3250 3550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 587FF6E3
P 4000 3900
F 0 "#PWR05" H 4000 3650 50  0001 C CNN
F 1 "GND" H 4000 3750 50  0000 C CNN
F 2 "" H 4000 3900 50  0000 C CNN
F 3 "" H 4000 3900 50  0000 C CNN
	1    4000 3900
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 587FF7CE
P 4650 4150
F 0 "SW2" H 4800 4260 50  0000 C CNN
F 1 "RESET" H 4650 4070 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_REED_CT05-XXXX-G1" H 4650 4150 60  0001 C CNN
F 3 "" H 4650 4150 60  0000 C CNN
	1    4650 4150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 587FF839
P 4650 4450
F 0 "#PWR06" H 4650 4200 50  0001 C CNN
F 1 "GND" H 4650 4300 50  0000 C CNN
F 2 "" H 4650 4450 50  0000 C CNN
F 3 "" H 4650 4450 50  0000 C CNN
	1    4650 4450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P3
U 1 1 587FF862
P 5550 2500
F 0 "P3" H 5550 2750 50  0000 C CNN
F 1 "PROGRAMMER" V 5650 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 5550 2500 50  0001 C CNN
F 3 "" H 5550 2500 50  0000 C CNN
	1    5550 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 3400 7050 3400
Wire Wire Line
	4300 3500 4650 3500
Wire Wire Line
	7600 4050 7700 4050
Wire Wire Line
	6550 3500 6900 3500
Wire Wire Line
	6900 3500 6900 3700
Wire Wire Line
	6550 3600 6800 3600
Wire Wire Line
	6800 3600 6800 3800
Wire Wire Line
	7600 4300 7600 4150
Wire Wire Line
	7600 4150 7700 4150
Wire Wire Line
	4650 3400 4650 3100
Wire Wire Line
	4650 3100 5600 3100
Wire Wire Line
	5600 3100 5600 2700
Wire Wire Line
	6550 3700 6550 3100
Wire Wire Line
	6550 3100 5700 3100
Wire Wire Line
	5700 3100 5700 2700
Wire Wire Line
	5500 2700 5500 2900
Wire Wire Line
	5400 2700 5400 3000
Wire Wire Line
	6900 3700 7300 3700
Wire Wire Line
	7600 2800 7600 3500
Wire Wire Line
	7600 3900 7600 4050
$Comp
L AP111733 U2
U 1 1 58851E7F
P 4000 3500
F 0 "U2" H 4100 3250 50  0000 C CNN
F 1 "AMS1117" H 4000 3750 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 4000 3150 50  0001 C CNN
F 3 "" H 4100 3250 50  0000 C CNN
	1    4000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3800 4000 3900
Wire Wire Line
	3450 3500 3700 3500
$Comp
L GND #PWR07
U 1 1 5885218D
P 3600 3700
F 0 "#PWR07" H 3600 3450 50  0001 C CNN
F 1 "GND" H 3600 3550 50  0000 C CNN
F 2 "" H 3600 3700 50  0000 C CNN
F 3 "" H 3600 3700 50  0000 C CNN
	1    3600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3600 3600 3700
$Comp
L BCP51 Q1
U 1 1 5885236A
P 7500 3700
F 0 "Q1" H 7700 3775 50  0000 L CNN
F 1 "BCP53" H 7700 3700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 7700 3625 50  0000 L CIN
F 3 "" H 7500 3700 50  0000 L CNN
	1    7500 3700
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 3700 4650 3700
Wire Wire Line
	4650 3600 4650 3850
Wire Wire Line
	5400 3000 4500 3000
Wire Wire Line
	3600 3500 3600 2800
Wire Wire Line
	3600 2800 7600 2800
Connection ~ 3600 3500
Wire Wire Line
	3450 3600 3600 3600
Wire Wire Line
	4500 3000 4500 3700
Connection ~ 4500 3500
$EndSCHEMATC