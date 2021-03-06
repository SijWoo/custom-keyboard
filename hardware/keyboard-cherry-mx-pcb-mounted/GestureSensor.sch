EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 10
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
L Sij_Sensors:APDS-9930 U2
U 1 1 5E817D7C
P 7550 1300
F 0 "U2" H 7700 850 60  0000 C CNN
F 1 "APDS-9960" H 7700 750 60  0000 C CNN
F 2 "Sij_Sensors:APDS-9930" H 8350 1540 60  0001 C CNN
F 3 "" H 7550 1300 60  0000 C CNN
	1    7550 1300
	-1   0    0    -1  
$EndComp
$Comp
L Sij_Sensors:APDS-9930 U4
U 1 1 5E81B7BE
P 7550 2300
F 0 "U4" H 7700 1850 60  0000 C CNN
F 1 "APDS-9960" H 7700 1750 60  0000 C CNN
F 2 "Sij_Sensors:APDS-9930" H 8350 2540 60  0001 C CNN
F 3 "" H 7550 2300 60  0000 C CNN
	1    7550 2300
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 5E836120
P 5700 1100
F 0 "#PWR014" H 5700 950 50  0001 C CNN
F 1 "+3.3V" H 5715 1273 50  0000 C CNN
F 2 "" H 5700 1100 50  0001 C CNN
F 3 "" H 5700 1100 50  0001 C CNN
	1    5700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1400 6650 1400
Text HLabel 6650 1400 0    50   Output ~ 0
~INT0
Text HLabel 6650 2400 0    50   Output ~ 0
~INT1
Wire Wire Line
	6650 2400 6900 2400
$Comp
L Device:R_Small R6
U 1 1 5E84F8D3
P 5700 2400
F 0 "R6" H 5759 2446 50  0000 L CNN
F 1 "1k" H 5759 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5700 2400 50  0001 C CNN
F 3 "~" H 5700 2400 50  0001 C CNN
	1    5700 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5E84F8D9
P 5700 2100
F 0 "#PWR019" H 5700 1950 50  0001 C CNN
F 1 "+3.3V" H 5715 2273 50  0000 C CNN
F 2 "" H 5700 2100 50  0001 C CNN
F 3 "" H 5700 2100 50  0001 C CNN
	1    5700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2600 5700 2500
Wire Wire Line
	5700 2300 5700 2200
$Comp
L Device:R_Small R7
U 1 1 5E84F8E1
P 6050 2400
F 0 "R7" H 6109 2446 50  0000 L CNN
F 1 "1k" H 6109 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6050 2400 50  0001 C CNN
F 3 "~" H 6050 2400 50  0001 C CNN
	1    6050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2300 6050 2200
Wire Wire Line
	6050 2200 5700 2200
Connection ~ 5700 2200
Wire Wire Line
	5700 2200 5700 2100
Wire Wire Line
	6050 2500 6050 2700
Wire Wire Line
	6050 1500 6050 1700
Wire Wire Line
	5700 1200 5700 1100
Connection ~ 5700 1200
Wire Wire Line
	6050 1200 5700 1200
Wire Wire Line
	6050 1300 6050 1200
$Comp
L Device:R_Small R2
U 1 1 5E839151
P 6050 1400
F 0 "R2" H 6109 1446 50  0000 L CNN
F 1 "1k" H 6109 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6050 1400 50  0001 C CNN
F 3 "~" H 6050 1400 50  0001 C CNN
	1    6050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1300 5700 1200
Wire Wire Line
	5700 1600 5700 1500
$Comp
L Device:R_Small R1
U 1 1 5E832D68
P 5700 1400
F 0 "R1" H 5759 1446 50  0000 L CNN
F 1 "1k" H 5759 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5700 1400 50  0001 C CNN
F 3 "~" H 5700 1400 50  0001 C CNN
	1    5700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1600 6900 1600
Wire Wire Line
	6050 1700 6900 1700
Wire Wire Line
	5700 2600 6900 2600
Wire Wire Line
	6050 2700 6900 2700
$Comp
L power:GND #PWR018
U 1 1 5E86560E
P 8300 2000
F 0 "#PWR018" H 8300 1750 50  0001 C CNN
F 1 "GND" H 8305 1827 50  0000 C CNN
F 2 "" H 8300 2000 50  0001 C CNN
F 3 "" H 8300 2000 50  0001 C CNN
	1    8300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1800 8300 1800
Wire Wire Line
	8300 1800 8300 1700
Wire Wire Line
	8300 1700 8200 1700
Wire Wire Line
	8200 1900 8300 1900
Wire Wire Line
	8300 1900 8300 2000
$Comp
L power:GND #PWR022
U 1 1 5E8694B6
P 8300 3000
F 0 "#PWR022" H 8300 2750 50  0001 C CNN
F 1 "GND" H 8305 2827 50  0000 C CNN
F 2 "" H 8300 3000 50  0001 C CNN
F 3 "" H 8300 3000 50  0001 C CNN
	1    8300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2800 8300 2800
Wire Wire Line
	8300 2800 8300 2700
Wire Wire Line
	8300 2700 8200 2700
Wire Wire Line
	8200 2900 8300 2900
Wire Wire Line
	8300 2900 8300 3000
$Comp
L power:+3.3V #PWR016
U 1 1 5E86B9E5
P 8300 1300
F 0 "#PWR016" H 8300 1150 50  0001 C CNN
F 1 "+3.3V" H 8315 1473 50  0000 C CNN
F 2 "" H 8300 1300 50  0001 C CNN
F 3 "" H 8300 1300 50  0001 C CNN
	1    8300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1300 8300 1400
Wire Wire Line
	8300 1400 8200 1400
Wire Wire Line
	8200 1500 8300 1500
Wire Wire Line
	8300 1500 8300 1400
Connection ~ 8300 1400
$Comp
L power:+3.3V #PWR020
U 1 1 5E86E1BD
P 8550 2300
F 0 "#PWR020" H 8550 2150 50  0001 C CNN
F 1 "+3.3V" H 8565 2473 50  0000 C CNN
F 2 "" H 8550 2300 50  0001 C CNN
F 3 "" H 8550 2300 50  0001 C CNN
	1    8550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2400 8300 2400
Wire Wire Line
	8550 2400 8550 2300
Wire Wire Line
	8200 2500 8300 2500
Wire Wire Line
	8300 2500 8300 2400
Connection ~ 8300 2400
Wire Wire Line
	8300 2400 8550 2400
$Comp
L Device:C_Small C13
U 1 1 5E8715BA
P 8550 2650
F 0 "C13" H 8458 2604 50  0000 R CNN
F 1 "0.1u" H 8458 2695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8550 2650 50  0001 C CNN
F 3 "~" H 8550 2650 50  0001 C CNN
	1    8550 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 2550 8550 2400
Connection ~ 8550 2400
Wire Wire Line
	8550 2750 8550 2900
Wire Wire Line
	8550 2900 8300 2900
Connection ~ 8300 2900
$Comp
L Device:C_Small C12
U 1 1 5E874696
P 8550 1650
F 0 "C12" H 8458 1604 50  0000 R CNN
F 1 "0.1u" H 8458 1695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8550 1650 50  0001 C CNN
F 3 "~" H 8550 1650 50  0001 C CNN
	1    8550 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 1550 8550 1400
Wire Wire Line
	8550 1400 8300 1400
Wire Wire Line
	2250 1400 2350 1400
Wire Wire Line
	2250 1500 2250 1400
$Comp
L power:GND #PWR017
U 1 1 5E834566
P 2250 1500
F 0 "#PWR017" H 2250 1250 50  0001 C CNN
F 1 "GND" H 2255 1327 50  0000 C CNN
F 2 "" H 2250 1500 50  0001 C CNN
F 3 "" H 2250 1500 50  0001 C CNN
	1    2250 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5E833684
P 2450 1400
F 0 "C11" V 2221 1400 50  0000 C CNN
F 1 "0.1u" V 2312 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2450 1400 50  0001 C CNN
F 3 "~" H 2450 1400 50  0001 C CNN
	1    2450 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1800 3350 1800
Wire Wire Line
	3000 1900 2400 1900
Wire Wire Line
	2400 2100 2650 2100
Text HLabel 2400 2100 0    50   Input ~ 0
~RESET
Wire Wire Line
	2650 2100 2650 1700
Wire Wire Line
	3000 1900 3000 1700
Wire Wire Line
	3350 1700 3350 1800
Wire Wire Line
	3350 1500 3350 1400
Wire Wire Line
	3350 1400 3000 1400
Connection ~ 3000 1400
Wire Wire Line
	3000 1500 3000 1400
Wire Wire Line
	3700 1400 3700 1600
Wire Wire Line
	2550 1400 2650 1400
Wire Wire Line
	3000 1400 2650 1400
Connection ~ 2650 1400
Wire Wire Line
	2650 1400 2650 1500
Connection ~ 3350 1400
Wire Wire Line
	3700 1400 3350 1400
$Comp
L Device:R_Small R5
U 1 1 5E82D8BA
P 3350 1600
F 0 "R5" H 3409 1646 50  0000 L CNN
F 1 "1k" H 3409 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3350 1600 50  0001 C CNN
F 3 "~" H 3350 1600 50  0001 C CNN
	1    3350 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5E82D111
P 3000 1600
F 0 "R4" H 3059 1646 50  0000 L CNN
F 1 "1k" H 3059 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3000 1600 50  0001 C CNN
F 3 "~" H 3000 1600 50  0001 C CNN
	1    3000 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5E82BA93
P 2650 1600
F 0 "R3" H 2709 1646 50  0000 L CNN
F 1 "10k" H 2709 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2650 1600 50  0001 C CNN
F 3 "~" H 2650 1600 50  0001 C CNN
	1    2650 1600
	1    0    0    -1  
$EndComp
Connection ~ 3700 1400
Wire Wire Line
	3700 1300 3700 1400
$Comp
L power:+3.3V #PWR015
U 1 1 5E82ABAB
P 3700 1300
F 0 "#PWR015" H 3700 1150 50  0001 C CNN
F 1 "+3.3V" H 3715 1473 50  0000 C CNN
F 2 "" H 3700 1300 50  0001 C CNN
F 3 "" H 3700 1300 50  0001 C CNN
	1    3700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5E826F2D
P 3700 2700
F 0 "#PWR021" H 3700 2450 50  0001 C CNN
F 1 "GND" H 3705 2527 50  0000 C CNN
F 2 "" H 3700 2700 50  0001 C CNN
F 3 "" H 3700 2700 50  0001 C CNN
	1    3700 2700
	1    0    0    -1  
$EndComp
Text HLabel 2400 1900 0    50   BiDi ~ 0
I2C_SDA
Text HLabel 2400 1800 0    50   BiDi ~ 0
I2C_SCL
Connection ~ 6050 1700
Connection ~ 5700 1600
Connection ~ 5700 2600
Wire Wire Line
	5500 2600 5700 2600
Connection ~ 6050 2700
Wire Wire Line
	5400 2700 6050 2700
Connection ~ 2650 2100
Connection ~ 3000 1900
Connection ~ 3350 1800
Wire Wire Line
	3700 2700 3700 2600
Connection ~ 3700 2600
Wire Wire Line
	3700 2600 3700 2500
Wire Wire Line
	3700 2500 3700 2400
Connection ~ 3700 2500
Wire Wire Line
	8300 1900 8550 1900
Wire Wire Line
	8550 1900 8550 1750
Connection ~ 8300 1900
Wire Wire Line
	3800 2600 3700 2600
Wire Wire Line
	3800 2100 2650 2100
Wire Wire Line
	3700 2400 3800 2400
Wire Wire Line
	3700 1600 3800 1600
Wire Wire Line
	3350 1800 3800 1800
Wire Wire Line
	3800 1900 3000 1900
Wire Wire Line
	3800 2500 3700 2500
$Comp
L Sij_MUX:PCA9546AD U3
U 1 1 5E782AA5
P 4300 1500
F 0 "U3" H 4300 1665 50  0000 C CNN
F 1 "PCA9546AD" H 4300 1574 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4300 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/pca9546a.pdf" H 4300 1500 50  0001 C CNN
	1    4300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2300 3700 2300
Wire Wire Line
	3700 2300 3700 2400
Connection ~ 3700 2400
$Comp
L Sij_Sensors:APDS-9930 U5
U 1 1 5E7B0BE0
P 7550 3300
F 0 "U5" H 7700 2850 60  0000 C CNN
F 1 "APDS-9960" H 7700 2750 60  0000 C CNN
F 2 "Sij_Sensors:APDS-9930" H 8350 3540 60  0001 C CNN
F 3 "" H 7550 3300 60  0000 C CNN
	1    7550 3300
	-1   0    0    -1  
$EndComp
$Comp
L Sij_Sensors:APDS-9930 U6
U 1 1 5E7B0BE6
P 7550 4300
F 0 "U6" H 7700 3850 60  0000 C CNN
F 1 "APDS-9960" H 7700 3750 60  0000 C CNN
F 2 "Sij_Sensors:APDS-9930" H 8350 4540 60  0001 C CNN
F 3 "" H 7550 4300 60  0000 C CNN
	1    7550 4300
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR023
U 1 1 5E7B0BEC
P 5700 3100
F 0 "#PWR023" H 5700 2950 50  0001 C CNN
F 1 "+3.3V" H 5715 3273 50  0000 C CNN
F 2 "" H 5700 3100 50  0001 C CNN
F 3 "" H 5700 3100 50  0001 C CNN
	1    5700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3400 6650 3400
Text HLabel 6650 3400 0    50   Output ~ 0
~INT2
Text HLabel 6650 4400 0    50   Output ~ 0
~INT3
Wire Wire Line
	6650 4400 6900 4400
$Comp
L Device:R_Small R10
U 1 1 5E7B0BF6
P 5700 4400
F 0 "R10" H 5759 4446 50  0000 L CNN
F 1 "1k" H 5759 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5700 4400 50  0001 C CNN
F 3 "~" H 5700 4400 50  0001 C CNN
	1    5700 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR026
U 1 1 5E7B0BFC
P 5700 4100
F 0 "#PWR026" H 5700 3950 50  0001 C CNN
F 1 "+3.3V" H 5715 4273 50  0000 C CNN
F 2 "" H 5700 4100 50  0001 C CNN
F 3 "" H 5700 4100 50  0001 C CNN
	1    5700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4600 5700 4500
Wire Wire Line
	5700 4300 5700 4200
$Comp
L Device:R_Small R11
U 1 1 5E7B0C04
P 6050 4400
F 0 "R11" H 6109 4446 50  0000 L CNN
F 1 "1k" H 6109 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6050 4400 50  0001 C CNN
F 3 "~" H 6050 4400 50  0001 C CNN
	1    6050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4300 6050 4200
Wire Wire Line
	6050 4200 5700 4200
Connection ~ 5700 4200
Wire Wire Line
	5700 4200 5700 4100
Wire Wire Line
	6050 4500 6050 4700
Wire Wire Line
	6050 3500 6050 3700
Wire Wire Line
	5700 3200 5700 3100
Connection ~ 5700 3200
Wire Wire Line
	6050 3200 5700 3200
Wire Wire Line
	6050 3300 6050 3200
$Comp
L Device:R_Small R9
U 1 1 5E7B0C14
P 6050 3400
F 0 "R9" H 6109 3446 50  0000 L CNN
F 1 "1k" H 6109 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6050 3400 50  0001 C CNN
F 3 "~" H 6050 3400 50  0001 C CNN
	1    6050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3300 5700 3200
Wire Wire Line
	5700 3600 5700 3500
$Comp
L Device:R_Small R8
U 1 1 5E7B0C1C
P 5700 3400
F 0 "R8" H 5759 3446 50  0000 L CNN
F 1 "1k" H 5759 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5700 3400 50  0001 C CNN
F 3 "~" H 5700 3400 50  0001 C CNN
	1    5700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3600 6900 3600
Wire Wire Line
	6050 3700 6900 3700
Wire Wire Line
	5700 4600 6900 4600
Wire Wire Line
	6050 4700 6900 4700
$Comp
L power:GND #PWR025
U 1 1 5E7B0C26
P 8300 4000
F 0 "#PWR025" H 8300 3750 50  0001 C CNN
F 1 "GND" H 8305 3827 50  0000 C CNN
F 2 "" H 8300 4000 50  0001 C CNN
F 3 "" H 8300 4000 50  0001 C CNN
	1    8300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3800 8300 3800
Wire Wire Line
	8300 3800 8300 3700
Wire Wire Line
	8300 3700 8200 3700
Wire Wire Line
	8200 3900 8300 3900
Wire Wire Line
	8300 3900 8300 4000
$Comp
L power:GND #PWR028
U 1 1 5E7B0C31
P 8300 5000
F 0 "#PWR028" H 8300 4750 50  0001 C CNN
F 1 "GND" H 8305 4827 50  0000 C CNN
F 2 "" H 8300 5000 50  0001 C CNN
F 3 "" H 8300 5000 50  0001 C CNN
	1    8300 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4800 8300 4800
Wire Wire Line
	8300 4800 8300 4700
Wire Wire Line
	8300 4700 8200 4700
Wire Wire Line
	8200 4900 8300 4900
Wire Wire Line
	8300 4900 8300 5000
$Comp
L power:+3.3V #PWR024
U 1 1 5E7B0C3C
P 8550 3300
F 0 "#PWR024" H 8550 3150 50  0001 C CNN
F 1 "+3.3V" H 8565 3473 50  0000 C CNN
F 2 "" H 8550 3300 50  0001 C CNN
F 3 "" H 8550 3300 50  0001 C CNN
	1    8550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3300 8550 3400
Wire Wire Line
	8300 3400 8200 3400
Wire Wire Line
	8200 3500 8300 3500
Wire Wire Line
	8300 3500 8300 3400
Connection ~ 8300 3400
$Comp
L power:+3.3V #PWR027
U 1 1 5E7B0C47
P 8550 4300
F 0 "#PWR027" H 8550 4150 50  0001 C CNN
F 1 "+3.3V" H 8565 4473 50  0000 C CNN
F 2 "" H 8550 4300 50  0001 C CNN
F 3 "" H 8550 4300 50  0001 C CNN
	1    8550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4400 8300 4400
Wire Wire Line
	8550 4400 8550 4300
Wire Wire Line
	8200 4500 8300 4500
Wire Wire Line
	8300 4500 8300 4400
Connection ~ 8300 4400
Wire Wire Line
	8300 4400 8550 4400
$Comp
L Device:C_Small C15
U 1 1 5E7B0C53
P 8550 4650
F 0 "C15" H 8458 4604 50  0000 R CNN
F 1 "0.1u" H 8458 4695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8550 4650 50  0001 C CNN
F 3 "~" H 8550 4650 50  0001 C CNN
	1    8550 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 4550 8550 4400
Connection ~ 8550 4400
Wire Wire Line
	8550 4750 8550 4900
Wire Wire Line
	8550 4900 8300 4900
Connection ~ 8300 4900
$Comp
L Device:C_Small C14
U 1 1 5E7B0C5E
P 8550 3650
F 0 "C14" H 8458 3604 50  0000 R CNN
F 1 "0.1u" H 8458 3695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8550 3650 50  0001 C CNN
F 3 "~" H 8550 3650 50  0001 C CNN
	1    8550 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 3550 8550 3400
Wire Wire Line
	8550 3400 8300 3400
Connection ~ 6050 3700
Connection ~ 5700 3600
Wire Wire Line
	5300 3600 5700 3600
Connection ~ 5700 4600
Connection ~ 6050 4700
Wire Wire Line
	8300 3900 8550 3900
Wire Wire Line
	8550 3900 8550 3750
Connection ~ 8300 3900
Connection ~ 8550 3400
Wire Wire Line
	5500 1900 5500 2600
Wire Wire Line
	5400 2000 5400 2700
Wire Wire Line
	5300 2200 5300 3600
Wire Wire Line
	5200 2300 5200 3700
Wire Wire Line
	5200 3700 6050 3700
Wire Wire Line
	4800 1600 5700 1600
Wire Wire Line
	4800 1700 6050 1700
Wire Wire Line
	4800 1900 5500 1900
Wire Wire Line
	4800 2000 5400 2000
Wire Wire Line
	4800 2200 5300 2200
Wire Wire Line
	4800 2300 5200 2300
Wire Wire Line
	5100 4600 5100 2500
Wire Wire Line
	5100 2500 4800 2500
Wire Wire Line
	5100 4600 5700 4600
Wire Wire Line
	5000 4700 5000 2600
Wire Wire Line
	5000 2600 4800 2600
Wire Wire Line
	5000 4700 6050 4700
$EndSCHEMATC
