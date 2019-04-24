EESchema Schematic File Version 4
EELAYER 29 0
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
L MCU_Microchip_ATmega:ATmega32A-AU U?
U 1 1 5CBFFAE5
P 2500 3125
F 0 "U?" H 2500 1036 50  0000 C CNN
F 1 "ATmega32A-AU" H 2500 945 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 2500 3125 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-8155-8-bit-microcontroller-avr-atmega32a_datasheet.pdf" H 2500 3125 50  0001 C CNN
	1    2500 3125
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J?
U 1 1 5CC074CC
P 1300 3350
F 0 "J?" H 1020 3446 50  0000 R CNN
F 1 "AVR-ISP-6" H 1500 3825 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 1050 3400 50  0001 C CNN
F 3 " ~" H 25  2800 50  0001 C CNN
	1    1300 3350
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5CC09050
P 1450 4350
F 0 "J?" H 1575 4600 50  0000 C CNN
F 1 "UART" H 1450 4650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1450 4350 50  0001 C CNN
F 3 "~" H 1450 4350 50  0001 C CNN
	1    1450 4350
	1    0    0    -1  
$EndComp
$Comp
L Envelope-cache-2018-08-04-13-00-04:GND #PWR?
U 1 1 5CC09F66
P 1075 4750
F 0 "#PWR?" H 1075 4500 50  0001 C CNN
F 1 "GND" H 1080 4577 50  0000 C CNN
F 2 "" H 1075 4750 50  0001 C CNN
F 3 "" H 1075 4750 50  0001 C CNN
	1    1075 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1250 4550 1075 4550
Wire Wire Line
	1075 4550 1075 4650
Wire Wire Line
	1250 4650 1075 4650
Connection ~ 1075 4650
Wire Wire Line
	1075 4650 1075 4750
$Comp
L Envelope-cache-2018-08-04-13-00-04:+5V #PWR?
U 1 1 5CC0A839
P 1075 4450
F 0 "#PWR?" H 1075 4300 50  0001 C CNN
F 1 "+5V" H 1090 4623 50  0000 C CNN
F 2 "" H 1075 4450 50  0001 C CNN
F 3 "" H 1075 4450 50  0001 C CNN
	1    1075 4450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1250 4450 1075 4450
Wire Wire Line
	1250 4250 950  4250
$Comp
L Device:C C?
U 1 1 5CC12AE1
P 675 4000
F 0 "C?" H 550 4125 50  0000 L CNN
F 1 "100n" H 700 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 713 3850 50  0001 C CNN
F 3 "~" H 675 4000 50  0001 C CNN
	1    675  4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	675  3850 675  3450
Wire Wire Line
	675  3450 850  3450
$Comp
L Device:R R?
U 1 1 5CC182A4
P 675 2900
F 0 "R?" H 745 2946 50  0000 L CNN
F 1 "10k" H 745 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 605 2900 50  0001 C CNN
F 3 "~" H 675 2900 50  0001 C CNN
	1    675  2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	675  2750 1400 2750
Wire Wire Line
	1400 2750 1400 2850
$Comp
L Envelope-cache-2018-08-04-13-00-04:+5V #PWR?
U 1 1 5CC18DA5
P 1400 2750
F 0 "#PWR?" H 1400 2600 50  0001 C CNN
F 1 "+5V" H 1415 2923 50  0000 C CNN
F 2 "" H 1400 2750 50  0001 C CNN
F 3 "" H 1400 2750 50  0001 C CNN
	1    1400 2750
	-1   0    0    -1  
$EndComp
Connection ~ 1400 2750
$Comp
L Envelope-cache-2018-08-04-13-00-04:GND #PWR?
U 1 1 5CC19177
P 1400 3825
F 0 "#PWR?" H 1400 3575 50  0001 C CNN
F 1 "GND" H 1275 3775 50  0000 C CNN
F 2 "" H 1400 3825 50  0001 C CNN
F 3 "" H 1400 3825 50  0001 C CNN
	1    1400 3825
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 3825 1400 3750
Wire Wire Line
	675  3050 675  3450
Connection ~ 675  3450
Text GLabel 850  3550 3    50   Input ~ 0
reset
Text GLabel 1650 1425 0    50   Input ~ 0
reset
Wire Wire Line
	1650 1425 1900 1425
$Comp
L Envelope-cache-2018-08-04-13-00-04:GND #PWR?
U 1 1 5CC1B3C8
P 2500 5400
F 0 "#PWR?" H 2500 5150 50  0001 C CNN
F 1 "GND" H 2505 5227 50  0000 C CNN
F 2 "" H 2500 5400 50  0001 C CNN
F 3 "" H 2500 5400 50  0001 C CNN
	1    2500 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2500 5400 2500 5125
$Comp
L Envelope-cache-2018-08-04-13-00-04:+5V #PWR?
U 1 1 5CC1BF65
P 2500 700
F 0 "#PWR?" H 2500 550 50  0001 C CNN
F 1 "+5V" H 2515 873 50  0000 C CNN
F 2 "" H 2500 700 50  0001 C CNN
F 3 "" H 2500 700 50  0001 C CNN
	1    2500 700 
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CC1CDC9
P 2750 725
F 0 "R?" V 2543 725 50  0000 C CNN
F 1 "0R" V 2634 725 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2680 725 50  0001 C CNN
F 3 "~" H 2750 725 50  0001 C CNN
	1    2750 725 
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 700  2500 725 
Wire Wire Line
	2600 725  2500 725 
Connection ~ 2500 725 
Wire Wire Line
	2500 725  2500 1125
$Comp
L Device:C C?
U 1 1 5CC1E276
P 3225 1050
F 0 "C?" H 3100 1175 50  0000 L CNN
F 1 "100n" H 2900 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3263 900 50  0001 C CNN
F 3 "~" H 3225 1050 50  0001 C CNN
	1    3225 1050
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5CC2040F
P 1725 1775
F 0 "Y?" V 1679 1906 50  0000 L CNN
F 1 "Crystal" V 1770 1906 50  0000 L CNN
F 2 "" H 1725 1775 50  0001 C CNN
F 3 "~" H 1725 1775 50  0001 C CNN
	1    1725 1775
	0    1    1    0   
$EndComp
$Comp
L Envelope-cache-2018-08-04-13-00-04:GND #PWR?
U 1 1 5CC21F1A
P 1275 1925
F 0 "#PWR?" H 1275 1675 50  0001 C CNN
F 1 "GND" H 1280 1752 50  0000 C CNN
F 2 "" H 1275 1925 50  0001 C CNN
F 3 "" H 1275 1925 50  0001 C CNN
	1    1275 1925
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CC22306
P 1500 1925
F 0 "C?" H 1375 2050 50  0000 L CNN
F 1 "22p" H 1175 1925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1538 1775 50  0001 C CNN
F 3 "~" H 1500 1925 50  0001 C CNN
	1    1500 1925
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 1925 1725 1925
$Comp
L Device:C C?
U 1 1 5CC23635
P 1500 1625
F 0 "C?" H 1375 1750 50  0000 L CNN
F 1 "22p" H 1175 1625 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1538 1475 50  0001 C CNN
F 3 "~" H 1500 1625 50  0001 C CNN
	1    1500 1625
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 1625 1725 1625
Wire Wire Line
	1350 1925 1275 1925
Wire Wire Line
	1275 1625 1350 1625
$Comp
L power:GNDA #PWR?
U 1 1 5CC25B6E
P 3650 1075
F 0 "#PWR?" H 3650 825 50  0001 C CNN
F 1 "GNDA" H 3655 902 50  0000 C CNN
F 2 "" H 3650 1075 50  0001 C CNN
F 3 "" H 3650 1075 50  0001 C CNN
	1    3650 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1050 3650 1075
Wire Wire Line
	3375 1050 3650 1050
$Comp
L power:GNDA #PWR?
U 1 1 5CC26CD0
P 1775 2075
F 0 "#PWR?" H 1775 1825 50  0001 C CNN
F 1 "GNDA" H 1780 1902 50  0000 C CNN
F 2 "" H 1775 2075 50  0001 C CNN
F 3 "" H 1775 2075 50  0001 C CNN
	1    1775 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2025 1775 2025
Wire Wire Line
	1775 2025 1775 2075
$Comp
L Device:R R?
U 1 1 5CC281EA
P 950 750
F 0 "R?" V 743 750 50  0000 C CNN
F 1 "1k" V 834 750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 880 750 50  0001 C CNN
F 3 "~" H 950 750 50  0001 C CNN
	1    950  750 
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5CC295C1
P 1350 750
F 0 "D?" H 1343 495 50  0000 C CNN
F 1 "LED" H 1343 586 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1350 750 50  0001 C CNN
F 3 "~" H 1350 750 50  0001 C CNN
	1    1350 750 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 750  1200 750 
$Comp
L Envelope-cache-2018-08-04-13-00-04:GND #PWR?
U 1 1 5CC2AB59
P 1650 775
F 0 "#PWR?" H 1650 525 50  0001 C CNN
F 1 "GND" H 1655 602 50  0000 C CNN
F 2 "" H 1650 775 50  0001 C CNN
F 3 "" H 1650 775 50  0001 C CNN
	1    1650 775 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1500 750  1650 750 
Wire Wire Line
	1650 750  1650 775 
Wire Wire Line
	1900 1925 1900 1825
Connection ~ 1275 1925
Wire Wire Line
	1275 1625 1275 1925
Connection ~ 1725 1625
Connection ~ 1725 1925
Wire Wire Line
	1725 1625 1900 1625
Wire Wire Line
	1725 1925 1900 1925
Wire Wire Line
	850  3550 850  3450
Connection ~ 850  3450
Wire Wire Line
	850  3450 900  3450
Text GLabel 1150 4350 2    50   Input ~ 0
Rx
Text GLabel 1150 4250 2    50   Input ~ 0
Tx
Text GLabel 3100 4325 2    50   Input ~ 0
10
Text GLabel 3100 4425 2    50   Input ~ 0
11
Text GLabel 3100 4525 2    50   Input ~ 0
12
Text GLabel 3100 4625 2    50   Input ~ 0
13
Text GLabel 3100 4725 2    50   Input ~ 0
14
Text GLabel 3100 4825 2    50   Input ~ 0
15
Text GLabel 3100 4225 2    50   Input ~ 0
9
Text GLabel 950  4250 0    50   Input ~ 0
9
Text GLabel 950  4350 0    50   Input ~ 0
8
Wire Wire Line
	950  4350 1250 4350
Text GLabel 3100 4125 2    50   Input ~ 0
8
Text GLabel 3100 3225 2    50   Input ~ 0
16
Text GLabel 3100 3325 2    50   Input ~ 0
17
Text GLabel 3100 3425 2    50   Input ~ 0
18
Text GLabel 3100 3525 2    50   Input ~ 0
19
Text GLabel 3100 3625 2    50   Input ~ 0
20
Text GLabel 3100 3725 2    50   Input ~ 0
21
Text GLabel 3100 3825 2    50   Input ~ 0
22
Text GLabel 3100 3925 2    50   Input ~ 0
23
Wire Wire Line
	675  4150 1250 4150
Text GLabel 3100 2325 2    50   Input ~ 0
0
Text GLabel 800  750  0    50   Input ~ 0
0
Text GLabel 3100 2425 2    50   Input ~ 0
1
Text GLabel 3100 2525 2    50   Input ~ 0
2
Text GLabel 3100 2625 2    50   Input ~ 0
3
Text GLabel 3100 2725 2    50   Input ~ 0
4
Text GLabel 3100 2825 2    50   Input ~ 0
5
Text GLabel 3100 2925 2    50   Input ~ 0
6
Text GLabel 3100 3025 2    50   Input ~ 0
7
Text GLabel 825  3350 0    50   Input ~ 0
7
Wire Wire Line
	825  3350 900  3350
Text GLabel 825  3150 0    50   Input ~ 0
6
Wire Wire Line
	825  3150 900  3150
Text GLabel 825  3250 0    50   Input ~ 0
5
Wire Wire Line
	825  3250 900  3250
Text GLabel 3100 1425 2    50   Input ~ 0
A0
Text GLabel 3100 1525 2    50   Input ~ 0
A1
Text GLabel 3100 1625 2    50   Input ~ 0
A2
Text GLabel 3100 1725 2    50   Input ~ 0
A3
Text GLabel 3100 1825 2    50   Input ~ 0
A4
Text GLabel 3100 1925 2    50   Input ~ 0
A5
Text GLabel 3100 2025 2    50   Input ~ 0
A6
Text GLabel 3100 2125 2    50   Input ~ 0
A7
$Comp
L Device:R R?
U 1 1 5CC9B2C2
P 3225 725
F 0 "R?" V 3432 725 50  0000 C CNN
F 1 "OPEN" V 3341 725 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3155 725 50  0001 C CNN
F 3 "~" H 3225 725 50  0001 C CNN
	1    3225 725 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 1125 2600 1050
Wire Wire Line
	3000 1050 3000 725 
Connection ~ 3000 1050
Wire Wire Line
	3000 1050 3075 1050
Connection ~ 3000 725 
Wire Wire Line
	3000 725  3075 725 
Wire Wire Line
	2900 725  3000 725 
Wire Wire Line
	3400 725  3650 725 
Wire Wire Line
	3650 725  3650 1050
Connection ~ 3650 1050
Wire Wire Line
	2600 1050 3000 1050
$EndSCHEMATC
