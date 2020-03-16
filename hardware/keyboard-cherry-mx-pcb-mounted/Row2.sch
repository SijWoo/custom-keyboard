EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 9
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
L Switch:SW_Push SW?
U 1 1 5E818F0E
P 3150 2400
AR Path="/5E697948/5E818F0E" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F0E" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F0E" Ref="SW74"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F0E" Ref="SW?"  Part="1" 
F 0 "SW74" V 3104 2548 50  0000 L CNN
F 1 "Tab" V 3195 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.50u_PCB" H 3150 2600 50  0001 C CNN
F 3 "~" H 3150 2600 50  0001 C CNN
	1    3150 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E78CA64
P 3150 2850
AR Path="/5E697948/5E78CA64" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E78CA64" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E78CA64" Ref="D74"  Part="1" 
AR Path="/5E697948/5E785F4F/5E78CA64" Ref="D?"  Part="1" 
F 0 "D74" V 3196 2770 50  0000 R CNN
F 1 "1N4148W" V 3105 2770 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 3150 2675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 3150 2850 50  0001 C CNN
	1    3150 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 2600 3150 2700
Text HLabel 2150 2100 0    50   Input ~ 0
R2
Wire Wire Line
	2150 2100 3150 2100
Wire Wire Line
	3150 2100 3150 2200
$Comp
L Switch:SW_Push SW?
U 1 1 5E790071
P 3900 2400
AR Path="/5E697948/5E790071" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790071" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790071" Ref="SW76"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790071" Ref="SW?"  Part="1" 
F 0 "SW76" V 3854 2548 50  0000 L CNN
F 1 "q" V 3945 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3900 2600 50  0001 C CNN
F 3 "~" H 3900 2600 50  0001 C CNN
	1    3900 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E78CA66
P 3900 2850
AR Path="/5E697948/5E78CA66" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E78CA66" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E78CA66" Ref="D76"  Part="1" 
AR Path="/5E697948/5E785F4F/5E78CA66" Ref="D?"  Part="1" 
F 0 "D76" V 3946 2770 50  0000 R CNN
F 1 "1N4148W" V 3855 2770 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 3900 2675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 3900 2850 50  0001 C CNN
	1    3900 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 2600 3900 2700
Wire Wire Line
	3900 2100 3900 2200
$Comp
L Switch:SW_Push SW?
U 1 1 5E78CA67
P 4650 2400
AR Path="/5E697948/5E78CA67" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E78CA67" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E78CA67" Ref="SW78"  Part="1" 
AR Path="/5E697948/5E785F4F/5E78CA67" Ref="SW?"  Part="1" 
F 0 "SW78" V 4604 2548 50  0000 L CNN
F 1 "w" V 4695 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 4650 2600 50  0001 C CNN
F 3 "~" H 4650 2600 50  0001 C CNN
	1    4650 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E790074
P 4650 2850
AR Path="/5E697948/5E790074" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790074" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790074" Ref="D78"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790074" Ref="D?"  Part="1" 
F 0 "D78" V 4696 2770 50  0000 R CNN
F 1 "1N4148W" V 4605 2770 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 4650 2675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 4650 2850 50  0001 C CNN
	1    4650 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 2600 4650 2700
Wire Wire Line
	4650 2100 4650 2200
$Comp
L Switch:SW_Push SW?
U 1 1 5E818F14
P 5400 2400
AR Path="/5E697948/5E818F14" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F14" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F14" Ref="SW80"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F14" Ref="SW?"  Part="1" 
F 0 "SW80" V 5354 2548 50  0000 L CNN
F 1 "e" V 5445 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 5400 2600 50  0001 C CNN
F 3 "~" H 5400 2600 50  0001 C CNN
	1    5400 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E818F15
P 5400 2850
AR Path="/5E697948/5E818F15" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F15" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F15" Ref="D80"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F15" Ref="D?"  Part="1" 
F 0 "D80" V 5446 2770 50  0000 R CNN
F 1 "1N4148W" V 5355 2770 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 5400 2675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 5400 2850 50  0001 C CNN
	1    5400 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 2600 5400 2700
Wire Wire Line
	5400 2100 5400 2200
$Comp
L Switch:SW_Push SW?
U 1 1 5E78CA6B
P 6150 2400
AR Path="/5E697948/5E78CA6B" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E78CA6B" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E78CA6B" Ref="SW82"  Part="1" 
AR Path="/5E697948/5E785F4F/5E78CA6B" Ref="SW?"  Part="1" 
F 0 "SW82" V 6104 2548 50  0000 L CNN
F 1 "r" V 6195 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 6150 2600 50  0001 C CNN
F 3 "~" H 6150 2600 50  0001 C CNN
	1    6150 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E78CA6C
P 6150 2850
AR Path="/5E697948/5E78CA6C" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E78CA6C" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E78CA6C" Ref="D82"  Part="1" 
AR Path="/5E697948/5E785F4F/5E78CA6C" Ref="D?"  Part="1" 
F 0 "D82" V 6196 2770 50  0000 R CNN
F 1 "1N4148W" V 6105 2770 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 6150 2675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 6150 2850 50  0001 C CNN
	1    6150 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 2600 6150 2700
Wire Wire Line
	6150 2100 6150 2200
$Comp
L Switch:SW_Push SW?
U 1 1 5E78CA6D
P 6900 2400
AR Path="/5E697948/5E78CA6D" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E78CA6D" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E78CA6D" Ref="SW84"  Part="1" 
AR Path="/5E697948/5E785F4F/5E78CA6D" Ref="SW?"  Part="1" 
F 0 "SW84" V 6854 2548 50  0000 L CNN
F 1 "t" V 6945 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 6900 2600 50  0001 C CNN
F 3 "~" H 6900 2600 50  0001 C CNN
	1    6900 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E78CA6E
P 6900 2850
AR Path="/5E697948/5E78CA6E" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E78CA6E" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E78CA6E" Ref="D84"  Part="1" 
AR Path="/5E697948/5E785F4F/5E78CA6E" Ref="D?"  Part="1" 
F 0 "D84" V 6946 2770 50  0000 R CNN
F 1 "1N4148W" V 6855 2770 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 6900 2675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 6900 2850 50  0001 C CNN
	1    6900 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 2600 6900 2700
Wire Wire Line
	6900 2100 6900 2200
$Comp
L Switch:SW_Push SW?
U 1 1 5E79007B
P 7650 2400
AR Path="/5E697948/5E79007B" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E79007B" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E79007B" Ref="SW86"  Part="1" 
AR Path="/5E697948/5E785F4F/5E79007B" Ref="SW?"  Part="1" 
F 0 "SW86" V 7604 2548 50  0000 L CNN
F 1 "y" V 7695 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 7650 2600 50  0001 C CNN
F 3 "~" H 7650 2600 50  0001 C CNN
	1    7650 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E79007C
P 7650 2850
AR Path="/5E697948/5E79007C" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E79007C" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E79007C" Ref="D86"  Part="1" 
AR Path="/5E697948/5E785F4F/5E79007C" Ref="D?"  Part="1" 
F 0 "D86" V 7696 2770 50  0000 R CNN
F 1 "1N4148W" V 7605 2770 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 7650 2675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 7650 2850 50  0001 C CNN
	1    7650 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 2600 7650 2700
Wire Wire Line
	7650 2100 7650 2200
$Comp
L Switch:SW_Push SW?
U 1 1 5E79007D
P 8400 2400
AR Path="/5E697948/5E79007D" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E79007D" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E79007D" Ref="SW88"  Part="1" 
AR Path="/5E697948/5E785F4F/5E79007D" Ref="SW?"  Part="1" 
F 0 "SW88" V 8354 2548 50  0000 L CNN
F 1 "u" V 8445 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 8400 2600 50  0001 C CNN
F 3 "~" H 8400 2600 50  0001 C CNN
	1    8400 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E77EFEA
P 8400 2850
AR Path="/5E697948/5E77EFEA" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EFEA" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EFEA" Ref="D88"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EFEA" Ref="D?"  Part="1" 
F 0 "D88" V 8446 2770 50  0000 R CNN
F 1 "1N4148W" V 8355 2770 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 8400 2675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 8400 2850 50  0001 C CNN
	1    8400 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 2600 8400 2700
Wire Wire Line
	8400 2100 8400 2200
$Comp
L Switch:SW_Push SW?
U 1 1 5E79007F
P 3150 4500
AR Path="/5E697948/5E79007F" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E79007F" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E79007F" Ref="SW75"  Part="1" 
AR Path="/5E697948/5E785F4F/5E79007F" Ref="SW?"  Part="1" 
F 0 "SW75" V 3104 4648 50  0000 L CNN
F 1 "i" V 3195 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3150 4700 50  0001 C CNN
F 3 "~" H 3150 4700 50  0001 C CNN
	1    3150 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E790080
P 3150 4950
AR Path="/5E697948/5E790080" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790080" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790080" Ref="D75"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790080" Ref="D?"  Part="1" 
F 0 "D75" V 3196 4870 50  0000 R CNN
F 1 "1N4148W" V 3105 4870 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 3150 4775 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 3150 4950 50  0001 C CNN
	1    3150 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 4700 3150 4800
Wire Wire Line
	3150 4200 3150 4300
$Comp
L Switch:SW_Push SW?
U 1 1 5E790081
P 3900 4500
AR Path="/5E697948/5E790081" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790081" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790081" Ref="SW77"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790081" Ref="SW?"  Part="1" 
F 0 "SW77" V 3854 4648 50  0000 L CNN
F 1 "o" V 3945 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3900 4700 50  0001 C CNN
F 3 "~" H 3900 4700 50  0001 C CNN
	1    3900 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E818F21
P 3900 4950
AR Path="/5E697948/5E818F21" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F21" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F21" Ref="D77"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F21" Ref="D?"  Part="1" 
F 0 "D77" V 3946 4870 50  0000 R CNN
F 1 "1N4148W" V 3855 4870 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 3900 4775 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 3900 4950 50  0001 C CNN
	1    3900 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 4700 3900 4800
Wire Wire Line
	3900 4200 3900 4300
$Comp
L Switch:SW_Push SW?
U 1 1 5E818F22
P 4650 4500
AR Path="/5E697948/5E818F22" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F22" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F22" Ref="SW79"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F22" Ref="SW?"  Part="1" 
F 0 "SW79" V 4604 4648 50  0000 L CNN
F 1 "p" V 4695 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 4650 4700 50  0001 C CNN
F 3 "~" H 4650 4700 50  0001 C CNN
	1    4650 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E78CA78
P 4650 4950
AR Path="/5E697948/5E78CA78" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E78CA78" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E78CA78" Ref="D79"  Part="1" 
AR Path="/5E697948/5E785F4F/5E78CA78" Ref="D?"  Part="1" 
F 0 "D79" V 4696 4870 50  0000 R CNN
F 1 "1N4148W" V 4605 4870 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 4650 4775 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 4650 4950 50  0001 C CNN
	1    4650 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 4700 4650 4800
Wire Wire Line
	4650 4200 4650 4300
$Comp
L Switch:SW_Push SW?
U 1 1 5E78CA79
P 5400 4500
AR Path="/5E697948/5E78CA79" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E78CA79" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E78CA79" Ref="SW81"  Part="1" 
AR Path="/5E697948/5E785F4F/5E78CA79" Ref="SW?"  Part="1" 
F 0 "SW81" V 5354 4648 50  0000 L CNN
F 1 "[" V 5445 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 5400 4700 50  0001 C CNN
F 3 "~" H 5400 4700 50  0001 C CNN
	1    5400 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E818F25
P 5400 4950
AR Path="/5E697948/5E818F25" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F25" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F25" Ref="D81"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F25" Ref="D?"  Part="1" 
F 0 "D81" V 5446 4870 50  0000 R CNN
F 1 "1N4148W" V 5355 4870 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 5400 4775 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 5400 4950 50  0001 C CNN
	1    5400 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 4700 5400 4800
Wire Wire Line
	5400 4200 5400 4300
$Comp
L Switch:SW_Push SW?
U 1 1 5E77F02A
P 6150 4500
AR Path="/5E697948/5E77F02A" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77F02A" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77F02A" Ref="SW83"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77F02A" Ref="SW?"  Part="1" 
F 0 "SW83" V 6104 4648 50  0000 L CNN
F 1 "]" V 6195 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 6150 4700 50  0001 C CNN
F 3 "~" H 6150 4700 50  0001 C CNN
	1    6150 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E77F030
P 6150 4950
AR Path="/5E697948/5E77F030" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77F030" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77F030" Ref="D83"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77F030" Ref="D?"  Part="1" 
F 0 "D83" V 6196 4870 50  0000 R CNN
F 1 "1N4148W" V 6105 4870 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 6150 4775 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 6150 4950 50  0001 C CNN
	1    6150 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 4700 6150 4800
Wire Wire Line
	6150 4200 6150 4300
$Comp
L Switch:SW_Push SW?
U 1 1 5E818F28
P 6900 4500
AR Path="/5E697948/5E818F28" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F28" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F28" Ref="SW85"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F28" Ref="SW?"  Part="1" 
F 0 "SW85" V 6854 4648 50  0000 L CNN
F 1 "\\" V 6945 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.50u_PCB" H 6900 4700 50  0001 C CNN
F 3 "~" H 6900 4700 50  0001 C CNN
	1    6900 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E79008A
P 6900 4950
AR Path="/5E697948/5E79008A" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E79008A" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E79008A" Ref="D85"  Part="1" 
AR Path="/5E697948/5E785F4F/5E79008A" Ref="D?"  Part="1" 
F 0 "D85" V 6946 4870 50  0000 R CNN
F 1 "1N4148W" V 6855 4870 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 6900 4775 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 6900 4950 50  0001 C CNN
	1    6900 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 4700 6900 4800
Wire Wire Line
	6900 4200 6900 4300
$Comp
L Switch:SW_Push SW?
U 1 1 5E818F2A
P 7650 4500
AR Path="/5E697948/5E818F2A" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F2A" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F2A" Ref="SW87"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F2A" Ref="SW?"  Part="1" 
F 0 "SW87" V 7604 4648 50  0000 L CNN
F 1 "PgUp" V 7695 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 7650 4700 50  0001 C CNN
F 3 "~" H 7650 4700 50  0001 C CNN
	1    7650 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E818F2B
P 7650 4950
AR Path="/5E697948/5E818F2B" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F2B" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F2B" Ref="D87"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F2B" Ref="D?"  Part="1" 
F 0 "D87" V 7696 4870 50  0000 R CNN
F 1 "1N4148W" V 7605 4870 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 7650 4775 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 7650 4950 50  0001 C CNN
	1    7650 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 4700 7650 4800
Wire Wire Line
	7650 4200 7650 4300
Wire Wire Line
	3150 2100 3900 2100
Connection ~ 3150 2100
Connection ~ 3900 2100
Wire Wire Line
	3900 2100 4650 2100
Connection ~ 4650 2100
Wire Wire Line
	4650 2100 5400 2100
Connection ~ 5400 2100
Wire Wire Line
	5400 2100 6150 2100
Connection ~ 6150 2100
Wire Wire Line
	6150 2100 6900 2100
Connection ~ 6900 2100
Wire Wire Line
	6900 2100 7650 2100
Connection ~ 7650 2100
Wire Wire Line
	7650 2100 8400 2100
Connection ~ 8400 2100
Wire Wire Line
	8400 2100 9400 2100
Connection ~ 3900 4200
Wire Wire Line
	3900 4200 3150 4200
Connection ~ 4650 4200
Wire Wire Line
	4650 4200 3900 4200
Connection ~ 5400 4200
Wire Wire Line
	5400 4200 4650 4200
Connection ~ 6150 4200
Wire Wire Line
	6150 4200 5400 4200
Connection ~ 6900 4200
Wire Wire Line
	6900 4200 6150 4200
Connection ~ 7650 4200
Wire Wire Line
	7650 4200 6900 4200
Wire Wire Line
	9400 2100 9400 4200
Wire Wire Line
	3900 3000 3900 3250
Wire Wire Line
	4650 3000 4650 3250
Wire Wire Line
	5400 3000 5400 3250
Wire Wire Line
	6150 3000 6150 3250
Wire Wire Line
	6900 3000 6900 3250
Wire Wire Line
	7650 3000 7650 3250
Wire Wire Line
	8400 3000 8400 3250
Wire Wire Line
	3150 5100 3150 5350
Wire Wire Line
	3900 5100 3900 5350
Wire Wire Line
	4650 5100 4650 5350
Wire Wire Line
	5400 5100 5400 5350
Wire Wire Line
	6150 5100 6150 5350
Wire Wire Line
	6900 5100 6900 5350
Wire Wire Line
	7650 5100 7650 5350
Text Label 3900 3250 1    50   ~ 0
C1
Text Label 4650 3250 1    50   ~ 0
C2
Text Label 5400 3250 1    50   ~ 0
C3
Text Label 6150 3250 1    50   ~ 0
C4
Text Label 6900 3250 1    50   ~ 0
C5
Text Label 7650 3250 1    50   ~ 0
C6
Text Label 8400 3250 1    50   ~ 0
C7
Text Label 3150 5350 1    50   ~ 0
C8
Text Label 3900 5350 1    50   ~ 0
C9
Text Label 4650 5350 1    50   ~ 0
C10
Text Label 5400 5350 1    50   ~ 0
C11
Text Label 6150 5350 1    50   ~ 0
C12
Text Label 6900 5350 1    50   ~ 0
C13
Text Label 7650 5350 1    50   ~ 0
C14
Entry Wire Line
	3150 3250 3250 3350
Entry Wire Line
	3900 3250 4000 3350
Entry Wire Line
	4650 3250 4750 3350
Entry Wire Line
	5400 3250 5500 3350
Entry Wire Line
	6150 3250 6250 3350
Entry Wire Line
	6900 3250 7000 3350
Entry Wire Line
	7650 3250 7750 3350
Entry Wire Line
	8400 3250 8500 3350
Entry Wire Line
	3150 5350 3250 5450
Entry Wire Line
	3900 5350 4000 5450
Entry Wire Line
	4650 5350 4750 5450
Entry Wire Line
	5400 5350 5500 5450
Entry Wire Line
	6150 5350 6250 5450
Entry Wire Line
	6900 5350 7000 5450
Entry Wire Line
	7650 5350 7750 5450
Wire Bus Line
	2850 3350 2850 5450
Wire Bus Line
	2150 3350 2850 3350
Connection ~ 2850 3350
Text HLabel 2150 3350 0    50   Output ~ 0
C[0..15]
Wire Wire Line
	3150 3000 3150 3250
Text Label 3150 3250 1    50   ~ 0
C0
Wire Wire Line
	7650 4200 9400 4200
Wire Bus Line
	2850 5450 7750 5450
Wire Bus Line
	2850 3350 8500 3350
$EndSCHEMATC