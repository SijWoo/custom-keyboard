EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1000 1000 1000 750 
U 5E697948
F0 "KeySwitches" 50
F1 "KeySwitches.sch" 50
F2 "R[0..5]" B R 2000 1200 50 
F3 "C[0..15]" O R 2000 1550 50 
$EndSheet
$Comp
L Sij_MCU:BGM13S U?
U 1 1 5E85FADA
P 6000 4000
F 0 "U?" H 6000 4100 50  0000 C CNN
F 1 "BGM13S" H 6000 4000 50  0000 C CNN
F 2 "Sij_MCU:BGM13S" H 6000 4150 50  0001 C CNN
F 3 "https://www.silabs.com/documents/login/data-sheets/bgm13s-datasheet.pdf" H 6000 4150 50  0001 C CNN
	1    6000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5400 5500 5500
Wire Wire Line
	5500 5500 5600 5500
Wire Wire Line
	6500 5500 6500 5400
Wire Wire Line
	6400 5400 6400 5500
Connection ~ 6400 5500
Wire Wire Line
	6400 5500 6500 5500
Wire Wire Line
	6300 5400 6300 5500
Connection ~ 6300 5500
Wire Wire Line
	6300 5500 6400 5500
Wire Wire Line
	6200 5400 6200 5500
Connection ~ 6200 5500
Wire Wire Line
	6200 5500 6300 5500
Wire Wire Line
	6100 5400 6100 5500
Connection ~ 6100 5500
Wire Wire Line
	6100 5500 6200 5500
Wire Wire Line
	6000 5400 6000 5500
Connection ~ 6000 5500
Wire Wire Line
	6000 5500 6100 5500
Wire Wire Line
	5900 5400 5900 5500
Connection ~ 5900 5500
Wire Wire Line
	5900 5500 6000 5500
Wire Wire Line
	5800 5400 5800 5500
Connection ~ 5800 5500
Wire Wire Line
	5800 5500 5900 5500
Wire Wire Line
	5700 5400 5700 5500
Connection ~ 5700 5500
Wire Wire Line
	5700 5500 5800 5500
Wire Wire Line
	5600 5400 5600 5500
Connection ~ 5600 5500
Wire Wire Line
	5600 5500 5700 5500
$Comp
L power:GND #PWR?
U 1 1 5E864ACF
P 6000 5600
F 0 "#PWR?" H 6000 5350 50  0001 C CNN
F 1 "GND" H 6005 5427 50  0000 C CNN
F 2 "" H 6000 5600 50  0001 C CNN
F 3 "" H 6000 5600 50  0001 C CNN
	1    6000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5600 6000 5500
$Sheet
S 1000 2250 1000 750 
U 5E8711BD
F0 "GestureSensor" 50
F1 "GestureSensor.sch" 50
$EndSheet
Wire Wire Line
	6800 2800 7350 2800
Wire Wire Line
	6800 2900 7350 2900
Wire Wire Line
	6800 3000 7350 3000
Text Label 7350 2800 2    50   ~ 0
SWCLK
Text Label 7350 2900 2    50   ~ 0
SWDIO
Text Label 7350 3000 2    50   ~ 0
SWO
$Comp
L power:GND #PWR?
U 1 1 5E873C21
P 4650 3000
F 0 "#PWR?" H 4650 2750 50  0001 C CNN
F 1 "GND" V 4655 2872 50  0000 R CNN
F 2 "" H 4650 3000 50  0001 C CNN
F 3 "" H 4650 3000 50  0001 C CNN
	1    4650 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 3000 5200 3000
Wire Wire Line
	5200 2900 5100 2900
Wire Wire Line
	5100 2900 5100 2800
Wire Wire Line
	5100 2800 5200 2800
$Comp
L power:+3.3V #PWR?
U 1 1 5E87759E
P 6000 2200
F 0 "#PWR?" H 6000 2050 50  0001 C CNN
F 1 "+3.3V" H 6015 2373 50  0000 C CNN
F 2 "" H 6000 2200 50  0001 C CNN
F 3 "" H 6000 2200 50  0001 C CNN
	1    6000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2200 6000 2300
Wire Wire Line
	6000 2300 5900 2300
Wire Wire Line
	5900 2300 5900 2400
Connection ~ 6000 2300
Wire Wire Line
	6000 2300 6000 2400
NoConn ~ 6100 2400
Wire Wire Line
	4650 3200 5200 3200
Text Label 4650 3200 0    50   ~ 0
~nRST
Wire Wire Line
	5200 3500 4650 3500
Wire Wire Line
	4650 3600 5200 3600
Wire Wire Line
	5200 3700 4650 3700
Wire Wire Line
	5200 3800 4650 3800
Text Label 4650 3500 0    50   ~ 0
R0
Text Label 4650 3600 0    50   ~ 0
R1
Text Label 4650 3700 0    50   ~ 0
R2
Text Label 4650 3800 0    50   ~ 0
R3
Wire Wire Line
	5200 3900 4650 3900
Wire Wire Line
	4650 4000 5200 4000
Text Label 4650 3900 0    50   ~ 0
R4
Text Label 4650 4000 0    50   ~ 0
R5
Entry Wire Line
	4550 3900 4650 4000
Entry Wire Line
	4550 3800 4650 3900
Entry Wire Line
	4550 3700 4650 3800
Entry Wire Line
	4550 3600 4650 3700
Entry Wire Line
	4550 3500 4650 3600
Entry Wire Line
	4550 3400 4650 3500
Wire Bus Line
	4550 3300 4000 3300
Text Label 4000 3300 0    50   ~ 0
R[0..5]
Wire Wire Line
	7350 4700 6800 4700
Wire Wire Line
	6800 4800 7350 4800
Wire Wire Line
	7350 4900 6800 4900
Wire Wire Line
	7350 5000 6800 5000
Wire Wire Line
	7350 3200 6800 3200
Wire Wire Line
	6800 3300 7350 3300
Wire Wire Line
	7350 3400 6800 3400
Wire Wire Line
	7350 3500 6800 3500
Wire Wire Line
	7350 4500 6800 4500
Wire Wire Line
	6800 4600 7350 4600
Wire Wire Line
	6800 3100 7350 3100
Text Label 7350 3100 2    50   ~ 0
C5
Text Label 7350 3200 2    50   ~ 0
C6
Text Label 7350 3300 2    50   ~ 0
C7
Text Label 7350 3400 2    50   ~ 0
C8
Text Label 7350 3500 2    50   ~ 0
C9
Text Label 7350 4500 2    50   ~ 0
C10
Text Label 7350 4600 2    50   ~ 0
C11
Text Label 7350 4700 2    50   ~ 0
C12
Text Label 7350 4800 2    50   ~ 0
C13
Text Label 7350 4900 2    50   ~ 0
C14
Text Label 7350 5000 2    50   ~ 0
C15
Text Label 4650 4600 0    50   ~ 0
C4
Text Label 4650 4500 0    50   ~ 0
C3
Text Label 4650 4400 0    50   ~ 0
C2
Text Label 4650 4300 0    50   ~ 0
C1
Text Label 4650 4200 0    50   ~ 0
C0
Wire Wire Line
	4650 4600 5200 4600
Wire Wire Line
	4650 4500 5200 4500
Wire Wire Line
	4650 4400 5200 4400
Wire Wire Line
	5200 4300 4650 4300
Wire Wire Line
	4650 4200 5200 4200
Wire Bus Line
	4550 3300 4550 3900
$EndSCHEMATC
