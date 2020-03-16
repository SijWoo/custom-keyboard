EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 10
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
L Connector:USB_C_Receptacle_USB2.0 J?
U 1 1 5E8055B4
P 2400 3250
F 0 "J?" H 2507 4117 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 2507 4026 50  0000 C CNN
F 2 "" H 2550 3250 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 2550 3250 50  0001 C CNN
	1    2400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3150 3100 3150
Wire Wire Line
	3000 3250 3100 3250
Wire Wire Line
	3100 3250 3100 3150
Connection ~ 3100 3150
Wire Wire Line
	3100 3150 3500 3150
Wire Wire Line
	3000 3350 3100 3350
Wire Wire Line
	3000 3450 3100 3450
Wire Wire Line
	3100 3450 3100 3350
Connection ~ 3100 3350
Wire Wire Line
	3100 3350 3500 3350
Text HLabel 3500 3150 2    50   BiDi ~ 0
D-
Text HLabel 3500 3350 2    50   BiDi ~ 0
D+
$Comp
L Device:R_Small R?
U 1 1 5E80893D
P 4250 3050
F 0 "R?" H 4309 3096 50  0000 L CNN
F 1 "5.1k" H 4309 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4250 3050 50  0001 C CNN
F 3 "~" H 4250 3050 50  0001 C CNN
	1    4250 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5E80B2F7
P 3900 3150
F 0 "R?" H 3959 3196 50  0000 L CNN
F 1 "5.1k" H 3959 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3900 3150 50  0001 C CNN
F 3 "~" H 3900 3150 50  0001 C CNN
	1    3900 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3050 3900 2950
Wire Wire Line
	3900 2950 3000 2950
Wire Wire Line
	3000 2850 4250 2850
Wire Wire Line
	4250 2850 4250 2950
$Comp
L power:GND #PWR?
U 1 1 5E80BFE4
P 3900 3450
F 0 "#PWR?" H 3900 3200 50  0001 C CNN
F 1 "GND" H 3905 3277 50  0000 C CNN
F 2 "" H 3900 3450 50  0001 C CNN
F 3 "" H 3900 3450 50  0001 C CNN
	1    3900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3450 3900 3350
Wire Wire Line
	4250 3350 3900 3350
Connection ~ 3900 3350
Wire Wire Line
	4250 3150 4250 3350
Wire Wire Line
	3900 3250 3900 3350
$Comp
L power:GND #PWR?
U 1 1 5E80F482
P 2400 4350
F 0 "#PWR?" H 2400 4100 50  0001 C CNN
F 1 "GND" H 2405 4177 50  0000 C CNN
F 2 "" H 2400 4350 50  0001 C CNN
F 3 "" H 2400 4350 50  0001 C CNN
	1    2400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4350 2400 4250
Wire Wire Line
	2100 4150 2100 4250
Wire Wire Line
	2100 4250 2400 4250
Connection ~ 2400 4250
Wire Wire Line
	2400 4250 2400 4150
$Comp
L power:+5V #PWR?
U 1 1 5E810FCD
P 3150 2550
F 0 "#PWR?" H 3150 2400 50  0001 C CNN
F 1 "+5V" H 3165 2723 50  0000 C CNN
F 2 "" H 3150 2550 50  0001 C CNN
F 3 "" H 3150 2550 50  0001 C CNN
	1    3150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2550 3150 2650
Wire Wire Line
	3150 2650 3000 2650
Text HLabel 3500 2650 2    50   Output ~ 0
VBUS
Wire Wire Line
	3500 2650 3150 2650
Connection ~ 3150 2650
NoConn ~ 3000 3750
NoConn ~ 3000 3850
$EndSCHEMATC
