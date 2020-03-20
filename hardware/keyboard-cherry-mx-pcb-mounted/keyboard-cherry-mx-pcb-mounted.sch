EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 10
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
Wire Wire Line
	6450 2350 7000 2350
Wire Wire Line
	7000 2450 6450 2450
Wire Wire Line
	6450 2550 7000 2550
Wire Wire Line
	6450 2650 7000 2650
Text Label 7000 2350 2    50   ~ 0
R0
Text Label 7000 2450 2    50   ~ 0
R1
Text Label 7000 2550 2    50   ~ 0
R2
Text Label 7000 2650 2    50   ~ 0
R3
Wire Wire Line
	6450 2750 7000 2750
Wire Wire Line
	7000 2850 6450 2850
Text Label 7000 2750 2    50   ~ 0
R4
Text Label 7000 2850 2    50   ~ 0
R5
Entry Wire Line
	7100 2750 7000 2850
Entry Wire Line
	7100 2650 7000 2750
Entry Wire Line
	7100 2550 7000 2650
Entry Wire Line
	7100 2450 7000 2550
Entry Wire Line
	7100 2350 7000 2450
Entry Wire Line
	7100 2250 7000 2350
Text Label 7100 2150 0    50   ~ 0
R[0..5]
$Comp
L Device:Crystal_Small Y1
U 1 1 5E71E217
P 9250 2550
F 0 "Y1" H 9250 2775 50  0000 C CNN
F 1 "8MHz" H 9250 2684 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_TXC_7A-2Pin_5x3.2mm" H 9250 2550 50  0001 C CNN
F 3 "~" H 9250 2550 50  0001 C CNN
	1    9250 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5E7214AF
P 9450 2750
F 0 "C8" H 9542 2796 50  0000 L CNN
F 1 "15pF" H 9542 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9450 2750 50  0001 C CNN
F 3 "~" H 9450 2750 50  0001 C CNN
	1    9450 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5E722098
P 9050 2750
F 0 "C7" H 9142 2796 50  0000 L CNN
F 1 "15pF" H 9142 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9050 2750 50  0001 C CNN
F 3 "~" H 9050 2750 50  0001 C CNN
	1    9050 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E73F523
P 8750 1500
F 0 "C2" H 8658 1454 50  0000 R CNN
F 1 "0.1u" H 8658 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8750 1500 50  0001 C CNN
F 3 "~" H 8750 1500 50  0001 C CNN
	1    8750 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5E73FD52
P 9250 1500
F 0 "C3" H 9158 1454 50  0000 R CNN
F 1 "0.1u" H 9158 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9250 1500 50  0001 C CNN
F 3 "~" H 9250 1500 50  0001 C CNN
	1    9250 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5E73FF6A
P 9750 1500
F 0 "C4" H 9658 1454 50  0000 R CNN
F 1 "4.7u" H 9658 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9750 1500 50  0001 C CNN
F 3 "~" H 9750 1500 50  0001 C CNN
	1    9750 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5E7436DF
P 10250 1500
F 0 "C5" H 10158 1454 50  0000 R CNN
F 1 "0.1u" H 10158 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10250 1500 50  0001 C CNN
F 3 "~" H 10250 1500 50  0001 C CNN
	1    10250 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9750 1300 9750 1400
Wire Wire Line
	9250 1400 9250 1300
Connection ~ 9250 1300
Wire Wire Line
	9250 1300 9750 1300
Wire Wire Line
	8750 1400 8750 1300
Wire Wire Line
	8750 1300 9250 1300
$Comp
L power:GND #PWR03
U 1 1 5E748424
P 9750 1800
F 0 "#PWR03" H 9750 1550 50  0001 C CNN
F 1 "GND" H 9755 1627 50  0000 C CNN
F 2 "" H 9750 1800 50  0001 C CNN
F 3 "" H 9750 1800 50  0001 C CNN
	1    9750 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1800 9750 1700
Wire Wire Line
	9750 1700 9250 1700
Connection ~ 9750 1700
Wire Wire Line
	9750 1700 9750 1600
Wire Wire Line
	8750 1600 8750 1700
Wire Wire Line
	9250 1600 9250 1700
Connection ~ 9250 1700
Wire Wire Line
	9250 1700 8750 1700
$Comp
L Device:C_Small C6
U 1 1 5E75FD02
P 10750 1500
F 0 "C6" H 10658 1454 50  0000 R CNN
F 1 "1u" H 10658 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10750 1500 50  0001 C CNN
F 3 "~" H 10750 1500 50  0001 C CNN
	1    10750 1500
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 5E760327
P 10250 1200
F 0 "#PWR02" H 10250 1050 50  0001 C CNN
F 1 "+3.3V" H 10265 1373 50  0000 C CNN
F 2 "" H 10250 1200 50  0001 C CNN
F 3 "" H 10250 1200 50  0001 C CNN
	1    10250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1200 10250 1300
Wire Wire Line
	10250 1300 10750 1300
Wire Wire Line
	10750 1300 10750 1400
Connection ~ 10250 1300
Wire Wire Line
	10250 1300 10250 1400
$Comp
L power:GND #PWR04
U 1 1 5E7639CA
P 10750 1800
F 0 "#PWR04" H 10750 1550 50  0001 C CNN
F 1 "GND" H 10755 1627 50  0000 C CNN
F 2 "" H 10750 1800 50  0001 C CNN
F 3 "" H 10750 1800 50  0001 C CNN
	1    10750 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 1800 10750 1700
Wire Wire Line
	10750 1700 10250 1700
Wire Wire Line
	10250 1700 10250 1600
Connection ~ 10750 1700
Wire Wire Line
	10750 1700 10750 1600
Text Notes 10050 950  0    50   ~ 0
VDDA Bypass Capacitors
$Comp
L Switch:SW_Push SW1
U 1 1 5E77A2FE
P 10750 2750
F 0 "SW1" V 10704 2898 50  0000 L CNN
F 1 "RST" V 10795 2898 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P" H 10750 2950 50  0001 C CNN
F 3 "~" H 10750 2950 50  0001 C CNN
	1    10750 2750
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5E77AADC
P 10250 2750
F 0 "C9" H 10158 2704 50  0000 R CNN
F 1 "0.1u" H 10158 2795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10250 2750 50  0001 C CNN
F 3 "~" H 10250 2750 50  0001 C CNN
	1    10250 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 2650 10250 2500
Wire Wire Line
	10250 2500 10750 2500
Wire Wire Line
	10750 2500 10750 2550
Wire Wire Line
	10750 2950 10750 3000
Wire Wire Line
	10750 3000 10250 3000
Wire Wire Line
	10250 3000 10250 2850
$Comp
L power:GND #PWR010
U 1 1 5E77E3D6
P 10750 3100
F 0 "#PWR010" H 10750 2850 50  0001 C CNN
F 1 "GND" H 10755 2927 50  0000 C CNN
F 2 "" H 10750 3100 50  0001 C CNN
F 3 "" H 10750 3100 50  0001 C CNN
	1    10750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 3100 10750 3000
Connection ~ 10750 3000
Text Label 10250 2500 0    50   ~ 0
~nRST
Text Notes 10250 2350 0    50   ~ 0
Reset Button
$Comp
L power:GND #PWR09
U 1 1 5E7915B9
P 9250 3050
F 0 "#PWR09" H 9250 2800 50  0001 C CNN
F 1 "GND" H 9255 2877 50  0000 C CNN
F 2 "" H 9250 3050 50  0001 C CNN
F 3 "" H 9250 3050 50  0001 C CNN
	1    9250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3050 9250 2950
Wire Wire Line
	9250 2950 9450 2950
Wire Wire Line
	9450 2950 9450 2850
Wire Wire Line
	9250 2950 9050 2950
Wire Wire Line
	9050 2950 9050 2850
Connection ~ 9250 2950
Wire Wire Line
	9050 2650 9050 2550
Wire Wire Line
	9050 2550 9150 2550
Wire Wire Line
	9350 2550 9450 2550
Wire Wire Line
	9450 2550 9450 2650
Text Label 9050 2550 2    50   ~ 0
OSC_IN
Text Label 9450 2550 0    50   ~ 0
OSC_OUT
Connection ~ 8750 1300
Text Label 7000 4750 2    50   ~ 0
I2C1_SDA
Text Label 7000 4650 2    50   ~ 0
I2C1_SCL
Wire Wire Line
	7000 4750 6450 4750
Wire Wire Line
	6450 4650 7000 4650
$Comp
L power:GND #PWR08
U 1 1 5E90C3E8
P 4800 3050
F 0 "#PWR08" H 4800 2800 50  0001 C CNN
F 1 "GND" H 4805 2877 50  0000 C CNN
F 2 "" H 4800 3050 50  0001 C CNN
F 3 "" H 4800 3050 50  0001 C CNN
	1    4800 3050
	1    0    0    -1  
$EndComp
Text Label 4500 3550 0    50   ~ 0
OSC_OUT
Text Label 4500 3450 0    50   ~ 0
OSC_IN
Wire Wire Line
	4500 3550 5050 3550
Wire Wire Line
	5050 3450 4500 3450
Wire Wire Line
	5050 2750 4800 2750
Wire Wire Line
	4350 2300 4350 2350
$Comp
L power:+3.3V #PWR06
U 1 1 5E8F336A
P 4350 2300
F 0 "#PWR06" H 4350 2150 50  0001 C CNN
F 1 "+3.3V" H 4365 2473 50  0000 C CNN
F 2 "" H 4350 2300 50  0001 C CNN
F 3 "" H 4350 2300 50  0001 C CNN
	1    4350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2800 4350 2750
$Comp
L power:GND #PWR07
U 1 1 5E8F3363
P 4350 2800
F 0 "#PWR07" H 4350 2550 50  0001 C CNN
F 1 "GND" H 4355 2627 50  0000 C CNN
F 2 "" H 4350 2800 50  0001 C CNN
F 3 "" H 4350 2800 50  0001 C CNN
	1    4350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2550 4950 2550
$Comp
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 5E8F335C
P 4350 2550
F 0 "JP1" V 4396 2618 50  0000 L CNN
F 1 "BootJumper" V 4305 2618 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_Pad1.0x1.5mm" H 4350 2550 50  0001 C CNN
F 3 "~" H 4350 2550 50  0001 C CNN
	1    4350 2550
	0    -1   -1   0   
$EndComp
Text Label 4500 2350 0    50   ~ 0
~nRST
Wire Wire Line
	4500 2350 5050 2350
Wire Wire Line
	4500 3950 5050 3950
Wire Wire Line
	5050 4050 4500 4050
Wire Wire Line
	4500 4150 5050 4150
Wire Wire Line
	4500 4250 5050 4250
Wire Wire Line
	4500 4350 5050 4350
Text Label 4500 3950 0    50   ~ 0
C0
Text Label 4500 4050 0    50   ~ 0
C1
Text Label 4500 4150 0    50   ~ 0
C2
Text Label 4500 4250 0    50   ~ 0
C3
Text Label 4500 4350 0    50   ~ 0
C4
Text Label 4500 5350 0    50   ~ 0
C14
Text Label 4500 5250 0    50   ~ 0
C13
Text Label 4500 5150 0    50   ~ 0
C12
Text Label 4500 5050 0    50   ~ 0
C11
Text Label 4500 4950 0    50   ~ 0
C10
Text Label 4500 4850 0    50   ~ 0
C9
Text Label 4500 4750 0    50   ~ 0
C8
Text Label 4500 4650 0    50   ~ 0
C7
Text Label 4500 4550 0    50   ~ 0
C6
Text Label 4500 4450 0    50   ~ 0
C5
Wire Wire Line
	5050 4450 4500 4450
Wire Wire Line
	5050 5050 4500 5050
Wire Wire Line
	4500 4950 5050 4950
Wire Wire Line
	4500 4850 5050 4850
Wire Wire Line
	4500 4750 5050 4750
Wire Wire Line
	5050 4650 4500 4650
Wire Wire Line
	4500 4550 5050 4550
Wire Wire Line
	4500 5350 5050 5350
Wire Wire Line
	5050 5250 4500 5250
Wire Wire Line
	4500 5150 5050 5150
Wire Wire Line
	5550 5650 5550 5750
Wire Wire Line
	5550 5750 5650 5750
Wire Wire Line
	5650 5750 5750 5750
Connection ~ 5650 5750
Wire Wire Line
	5650 5650 5650 5750
Wire Wire Line
	5850 5750 5950 5750
Wire Wire Line
	5850 5650 5850 5750
Wire Wire Line
	5750 5750 5750 5650
Wire Wire Line
	5950 5750 5950 5650
Connection ~ 5850 5750
Connection ~ 5750 5750
Wire Wire Line
	5750 5750 5850 5750
Wire Wire Line
	5750 5850 5750 5750
$Comp
L power:GND #PWR013
U 1 1 5E8CAB51
P 5750 5850
F 0 "#PWR013" H 5750 5600 50  0001 C CNN
F 1 "GND" H 5755 5677 50  0000 C CNN
F 2 "" H 5750 5850 50  0001 C CNN
F 3 "" H 5750 5850 50  0001 C CNN
	1    5750 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2050 5650 2150
Wire Wire Line
	5650 2050 5750 2050
Connection ~ 5750 2050
Wire Wire Line
	5750 2150 5750 2050
Wire Wire Line
	5750 2050 5850 2050
Connection ~ 5850 2050
Wire Wire Line
	5850 2050 5850 2150
Wire Wire Line
	5850 2050 5950 2050
Wire Wire Line
	5950 2050 6050 2050
Connection ~ 5950 2050
Wire Wire Line
	5950 2150 5950 2050
Wire Wire Line
	6050 2050 6050 2150
Connection ~ 5650 2050
Wire Wire Line
	5550 2050 5650 2050
Wire Wire Line
	5550 1950 5550 2050
$Comp
L power:+3.3V #PWR05
U 1 1 5E8B41FD
P 5550 1950
F 0 "#PWR05" H 5550 1800 50  0001 C CNN
F 1 "+3.3V" H 5565 2123 50  0000 C CNN
F 2 "" H 5550 1950 50  0001 C CNN
F 3 "" H 5550 1950 50  0001 C CNN
	1    5550 1950
	1    0    0    -1  
$EndComp
Text Label 7000 3250 2    50   ~ 0
VBUS_SENSE
Wire Wire Line
	6450 3250 7000 3250
Text Label 7000 3550 2    50   ~ 0
D+
Text Label 7000 3450 2    50   ~ 0
D-
Wire Wire Line
	6450 3450 7000 3450
Wire Wire Line
	6450 3550 7000 3550
Wire Wire Line
	6450 3650 7000 3650
Text Label 7000 3650 2    50   ~ 0
SWDIO
Text Label 7000 3750 2    50   ~ 0
SWCLK
Wire Wire Line
	6450 3750 7000 3750
$Comp
L MCU_ST_STM32F4:STM32F413RHTx U1
U 1 1 5E895194
P 5750 3850
F 0 "U1" H 5750 3950 50  0000 C CNN
F 1 "STM32F413RHTx" H 5750 3850 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 5150 2150 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00282249.pdf" H 5750 3850 50  0001 C CNN
	1    5750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3050 4800 3000
Wire Wire Line
	4800 2800 4800 2750
$Comp
L Device:C_Small C10
U 1 1 5E71757F
P 4800 2900
F 0 "C10" H 4708 2854 50  0000 R CNN
F 1 "4.7u" H 4708 2945 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4800 2900 50  0001 C CNN
F 3 "~" H 4800 2900 50  0001 C CNN
	1    4800 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	8250 1700 8250 1600
Connection ~ 8750 1700
Wire Wire Line
	8750 1700 8250 1700
Wire Wire Line
	8250 1300 8750 1300
Wire Wire Line
	8250 1400 8250 1300
$Comp
L Device:C_Small C1
U 1 1 5E8A3593
P 8250 1500
F 0 "C1" H 8158 1454 50  0000 R CNN
F 1 "0.1u" H 8158 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8250 1500 50  0001 C CNN
F 3 "~" H 8250 1500 50  0001 C CNN
	1    8250 1500
	-1   0    0    1   
$EndComp
Connection ~ 8250 1300
Wire Wire Line
	8250 1200 8250 1300
Text Notes 8550 1250 0    50   ~ 0
VDD Bypass Capacitors
$Comp
L power:+3.3V #PWR01
U 1 1 5E743BF3
P 8250 1200
F 0 "#PWR01" H 8250 1050 50  0001 C CNN
F 1 "+3.3V" H 8265 1373 50  0000 C CNN
F 2 "" H 8250 1200 50  0001 C CNN
F 3 "" H 8250 1200 50  0001 C CNN
	1    8250 1200
	1    0    0    -1  
$EndComp
Entry Wire Line
	4400 3850 4500 3950
Entry Wire Line
	4400 3950 4500 4050
Entry Wire Line
	4400 4050 4500 4150
Entry Wire Line
	4400 4150 4500 4250
Entry Wire Line
	4400 4250 4500 4350
Entry Wire Line
	4400 4350 4500 4450
Entry Wire Line
	4400 4450 4500 4550
Entry Wire Line
	4400 4550 4500 4650
Entry Wire Line
	4400 4650 4500 4750
Entry Wire Line
	4400 4750 4500 4850
Entry Wire Line
	4400 4850 4500 4950
Entry Wire Line
	4400 4950 4500 5050
Entry Wire Line
	4400 5050 4500 5150
Entry Wire Line
	4400 5150 4500 5250
Entry Wire Line
	4400 5250 4500 5350
$Sheet
S 1000 2250 1000 1000
U 5E8711BD
F0 "GestureSensor" 50
F1 "GestureSensor.sch" 50
F2 "I2C_SCL" B R 2000 2400 50 
F3 "I2C_SDA" B R 2000 2500 50 
F4 "~RESET" I R 2000 2700 50 
F5 "~INT0" O R 2000 2800 50 
F6 "~INT1" O R 2000 2900 50 
F7 "~INT2" O R 2000 3000 50 
F8 "~INT3" O R 2000 3100 50 
$EndSheet
Text Label 2550 3900 2    50   ~ 0
VBUS_SENSE
Wire Wire Line
	2000 3900 2550 3900
Text Label 2550 4100 2    50   ~ 0
D+
Text Label 2550 4000 2    50   ~ 0
D-
Wire Wire Line
	2000 4000 2550 4000
Wire Wire Line
	2000 4100 2550 4100
$Sheet
S 1000 3750 1000 500 
U 5E7D269A
F0 "USB-C" 50
F1 "USB-C.sch" 50
F2 "D-" B R 2000 4000 50 
F3 "D+" B R 2000 4100 50 
F4 "VBUS" O R 2000 3900 50 
$EndSheet
Text Label 2550 2500 2    50   ~ 0
I2C1_SDA
Text Label 2550 2400 2    50   ~ 0
I2C1_SCL
Wire Wire Line
	2550 2500 2000 2500
Wire Wire Line
	2000 2400 2550 2400
NoConn ~ 6450 3350
NoConn ~ 6450 3850
NoConn ~ 6450 3150
NoConn ~ 6450 3050
NoConn ~ 6450 2950
Text Label 2550 1200 2    50   ~ 0
R[0..5]
Text Label 4400 3750 2    50   ~ 0
C[0..15]
Text Label 2550 1550 2    50   ~ 0
C[0..15]
Wire Bus Line
	2550 1200 2000 1200
Wire Bus Line
	2550 1550 2000 1550
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J1
U 1 1 5EA6CCCF
P 10400 4300
F 0 "J1" H 9956 4346 50  0000 R CNN
F 1 "SWDConn" H 9956 4255 50  0000 R CNN
F 2 "Connector:Tag-Connect_TC2050-IDC-NL_2x05_P1.27mm_Vertical" H 10400 4300 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 10050 3050 50  0001 C CNN
	1    10400 4300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5EA7066F
P 10500 5100
F 0 "#PWR012" H 10500 4850 50  0001 C CNN
F 1 "GND" H 10505 4927 50  0000 C CNN
F 2 "" H 10500 5100 50  0001 C CNN
F 3 "" H 10500 5100 50  0001 C CNN
	1    10500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 5100 10500 5000
Wire Wire Line
	10500 5000 10400 5000
Wire Wire Line
	10400 5000 10400 4900
Connection ~ 10500 5000
Wire Wire Line
	10500 5000 10500 4900
Text Label 7000 5050 2    50   ~ 0
PB10
Text Label 7000 5150 2    50   ~ 0
PB12
Text Label 7000 5250 2    50   ~ 0
PB13
Wire Wire Line
	6450 5250 7000 5250
Wire Wire Line
	7000 5150 6450 5150
Wire Wire Line
	6450 5050 7000 5050
Wire Wire Line
	6450 4350 7000 4350
Text Label 7000 4350 2    50   ~ 0
SWO
Wire Wire Line
	9900 4400 9350 4400
Text Label 9350 4400 0    50   ~ 0
SWO
NoConn ~ 9900 4500
Wire Wire Line
	9900 4300 9350 4300
Text Label 9350 4300 0    50   ~ 0
SWDIO
Text Label 9350 4200 0    50   ~ 0
SWCLK
Wire Wire Line
	9900 4200 9350 4200
$Comp
L power:+3.3V #PWR011
U 1 1 5EAB5F0F
P 10400 3600
F 0 "#PWR011" H 10400 3450 50  0001 C CNN
F 1 "+3.3V" H 10415 3773 50  0000 C CNN
F 2 "" H 10400 3600 50  0001 C CNN
F 3 "" H 10400 3600 50  0001 C CNN
	1    10400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3600 10400 3700
Text Label 9350 4000 0    50   ~ 0
~nRST
Wire Wire Line
	9350 4000 9900 4000
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5EAC43B9
P 8150 1700
F 0 "#FLG02" H 8150 1775 50  0001 C CNN
F 1 "PWR_FLAG" V 8150 1827 50  0000 L CNN
F 2 "" H 8150 1700 50  0001 C CNN
F 3 "~" H 8150 1700 50  0001 C CNN
	1    8150 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 1700 8250 1700
Connection ~ 8250 1700
NoConn ~ 6450 4250
NoConn ~ 6450 4150
NoConn ~ 6450 4050
Text Label 4800 2750 0    50   ~ 0
VCAP1
Text Label 8450 1950 2    50   ~ 0
VCAP1
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5EB0BDAA
P 8150 1950
F 0 "#FLG03" H 8150 2025 50  0001 C CNN
F 1 "PWR_FLAG" V 8150 2077 50  0000 L CNN
F 2 "" H 8150 1950 50  0001 C CNN
F 3 "~" H 8150 1950 50  0001 C CNN
	1    8150 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 1950 8450 1950
NoConn ~ 5050 3750
NoConn ~ 5050 5450
Wire Wire Line
	5550 2150 5550 2050
Connection ~ 5550 2050
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5EB62660
P 4950 2250
F 0 "#FLG04" H 4950 2325 50  0001 C CNN
F 1 "PWR_FLAG" H 4950 2423 50  0000 C CNN
F 2 "" H 4950 2250 50  0001 C CNN
F 3 "~" H 4950 2250 50  0001 C CNN
	1    4950 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2250 4950 2550
Connection ~ 4950 2550
Wire Wire Line
	4950 2550 4500 2550
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E7192AF
P 8150 1300
F 0 "#FLG01" H 8150 1375 50  0001 C CNN
F 1 "PWR_FLAG" V 8150 1427 50  0000 L CNN
F 2 "" H 8150 1300 50  0001 C CNN
F 3 "~" H 8150 1300 50  0001 C CNN
	1    8150 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 1300 8250 1300
Text Label 7000 5350 2    50   ~ 0
PB14
Text Label 7000 5450 2    50   ~ 0
PB15
Wire Wire Line
	6450 5450 7000 5450
Wire Wire Line
	7000 5350 6450 5350
NoConn ~ 6450 4850
NoConn ~ 6450 4950
NoConn ~ 6450 4450
NoConn ~ 6450 4550
Text Label 2550 2700 2    50   ~ 0
PB10
Text Label 2550 2800 2    50   ~ 0
PB12
Text Label 2550 2900 2    50   ~ 0
PB13
Wire Wire Line
	2000 2900 2550 2900
Wire Wire Line
	2550 2800 2000 2800
Wire Wire Line
	2000 2700 2550 2700
Text Label 2550 3000 2    50   ~ 0
PB14
Text Label 2550 3100 2    50   ~ 0
PB15
Wire Wire Line
	2000 3100 2550 3100
Wire Wire Line
	2550 3000 2000 3000
$Comp
L Mechanical:MountingHole H1
U 1 1 5E749BAA
P 2000 5500
F 0 "H1" H 2100 5546 50  0000 L CNN
F 1 "M2" H 2100 5455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2000 5500 50  0001 C CNN
F 3 "~" H 2000 5500 50  0001 C CNN
	1    2000 5500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E74A79D
P 2000 5750
F 0 "H2" H 2100 5796 50  0000 L CNN
F 1 "M2" H 2100 5705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2000 5750 50  0001 C CNN
F 3 "~" H 2000 5750 50  0001 C CNN
	1    2000 5750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E74AA5A
P 2000 6000
F 0 "H3" H 2100 6046 50  0000 L CNN
F 1 "M2" H 2100 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2000 6000 50  0001 C CNN
F 3 "~" H 2000 6000 50  0001 C CNN
	1    2000 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E74AC29
P 2000 6250
F 0 "H4" H 2100 6296 50  0000 L CNN
F 1 "M2" H 2100 6205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2000 6250 50  0001 C CNN
F 3 "~" H 2000 6250 50  0001 C CNN
	1    2000 6250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5E74B1D4
P 2000 6500
F 0 "H5" H 2100 6546 50  0000 L CNN
F 1 "M2" H 2100 6455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2000 6500 50  0001 C CNN
F 3 "~" H 2000 6500 50  0001 C CNN
	1    2000 6500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5E74DA72
P 2000 6750
F 0 "H6" H 2100 6796 50  0000 L CNN
F 1 "M2" H 2100 6705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2000 6750 50  0001 C CNN
F 3 "~" H 2000 6750 50  0001 C CNN
	1    2000 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5E74DCCC
P 2000 7000
F 0 "H7" H 2100 7046 50  0000 L CNN
F 1 "M2" H 2100 6955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2000 7000 50  0001 C CNN
F 3 "~" H 2000 7000 50  0001 C CNN
	1    2000 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 5E74E871
P 2000 7250
F 0 "H8" H 2100 7296 50  0000 L CNN
F 1 "M2" H 2100 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2000 7250 50  0001 C CNN
F 3 "~" H 2000 7250 50  0001 C CNN
	1    2000 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5E7549C0
P 2500 5500
F 0 "H?" H 2600 5546 50  0000 L CNN
F 1 "M2" H 2600 5455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2500 5500 50  0001 C CNN
F 3 "~" H 2500 5500 50  0001 C CNN
	1    2500 5500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5E7549C6
P 2500 5750
F 0 "H?" H 2600 5796 50  0000 L CNN
F 1 "M2" H 2600 5705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2500 5750 50  0001 C CNN
F 3 "~" H 2500 5750 50  0001 C CNN
	1    2500 5750
	1    0    0    -1  
$EndComp
Wire Bus Line
	7100 2150 7100 2750
Wire Bus Line
	4400 3750 4400 5350
$EndSCHEMATC
