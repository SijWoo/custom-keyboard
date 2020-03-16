EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 10
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
U 1 1 5E77EF80
P 3150 2400
AR Path="/5E697948/5E77EF80" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EF80" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EF80" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EF80" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EF80" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EF80" Ref="SW30"  Part="1" 
F 0 "SW30" V 3104 2548 50  0000 L CNN
F 1 "Ctrl" V 3195 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.25u_PCB" H 3150 2600 50  0001 C CNN
F 3 "~" H 3150 2600 50  0001 C CNN
	1    3150 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E77EF86
P 3150 2850
AR Path="/5E697948/5E77EF86" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EF86" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EF86" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EF86" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EF86" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EF86" Ref="D30"  Part="1" 
F 0 "D30" V 3196 2770 50  0000 R CNN
F 1 "1N4148W" V 3105 2770 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 3150 2675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 3150 2850 50  0001 C CNN
	1    3150 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 2600 3150 2700
Text HLabel 2150 2100 0    50   Input ~ 0
R5
Wire Wire Line
	2150 2100 3150 2100
Wire Wire Line
	3150 2100 3150 2200
$Comp
L Switch:SW_Push SW?
U 1 1 5E818F10
P 3900 2400
AR Path="/5E697948/5E818F10" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F10" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F10" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F10" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E818F10" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E818F10" Ref="SW32"  Part="1" 
F 0 "SW32" V 3854 2548 50  0000 L CNN
F 1 "Workspace" V 3945 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.25u_PCB" H 3900 2600 50  0001 C CNN
F 3 "~" H 3900 2600 50  0001 C CNN
	1    3900 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E818F11
P 3900 2850
AR Path="/5E697948/5E818F11" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F11" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F11" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F11" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E818F11" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E818F11" Ref="D32"  Part="1" 
F 0 "D32" V 3946 2770 50  0000 R CNN
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
U 1 1 5E77EF9E
P 4650 2400
AR Path="/5E697948/5E77EF9E" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EF9E" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EF9E" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EF9E" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EF9E" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EF9E" Ref="SW34"  Part="1" 
F 0 "SW34" V 4604 2548 50  0000 L CNN
F 1 "Alt" V 4695 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.25u_PCB" H 4650 2600 50  0001 C CNN
F 3 "~" H 4650 2600 50  0001 C CNN
	1    4650 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E77EFA4
P 4650 2850
AR Path="/5E697948/5E77EFA4" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EFA4" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EFA4" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EFA4" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EFA4" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EFA4" Ref="D34"  Part="1" 
F 0 "D34" V 4696 2770 50  0000 R CNN
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
U 1 1 5E77EFAC
P 5400 2400
AR Path="/5E697948/5E77EFAC" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EFAC" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EFAC" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EFAC" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EFAC" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EFAC" Ref="SW36"  Part="1" 
F 0 "SW36" V 5354 2548 50  0000 L CNN
F 1 "Space" V 5445 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_6.25u_PCB" H 5400 2600 50  0001 C CNN
F 3 "~" H 5400 2600 50  0001 C CNN
	1    5400 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E77EFB2
P 5400 2850
AR Path="/5E697948/5E77EFB2" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EFB2" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EFB2" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EFB2" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EFB2" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EFB2" Ref="D36"  Part="1" 
F 0 "D36" V 5446 2770 50  0000 R CNN
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
U 1 1 5E818F16
P 6150 2400
AR Path="/5E697948/5E818F16" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F16" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F16" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F16" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E818F16" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E818F16" Ref="SW38"  Part="1" 
F 0 "SW38" V 6104 2548 50  0000 L CNN
F 1 "Left Arrow" V 6195 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 6150 2600 50  0001 C CNN
F 3 "~" H 6150 2600 50  0001 C CNN
	1    6150 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E818F17
P 6150 2850
AR Path="/5E697948/5E818F17" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F17" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F17" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F17" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E818F17" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E818F17" Ref="D38"  Part="1" 
F 0 "D38" V 6196 2770 50  0000 R CNN
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
U 1 1 5E818F18
P 6900 2400
AR Path="/5E697948/5E818F18" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F18" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F18" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F18" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E818F18" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E818F18" Ref="SW40"  Part="1" 
F 0 "SW40" V 6854 2548 50  0000 L CNN
F 1 "Down Arrow" V 6945 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 6900 2600 50  0001 C CNN
F 3 "~" H 6900 2600 50  0001 C CNN
	1    6900 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E818F19
P 6900 2850
AR Path="/5E697948/5E818F19" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F19" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F19" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F19" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E818F19" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E818F19" Ref="D40"  Part="1" 
F 0 "D40" V 6946 2770 50  0000 R CNN
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
U 1 1 5E77EFD6
P 7650 2400
AR Path="/5E697948/5E77EFD6" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EFD6" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EFD6" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EFD6" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EFD6" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EFD6" Ref="SW42"  Part="1" 
F 0 "SW42" V 7604 2548 50  0000 L CNN
F 1 "Right Arrow" V 7695 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 7650 2600 50  0001 C CNN
F 3 "~" H 7650 2600 50  0001 C CNN
	1    7650 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E77EFDC
P 7650 2850
AR Path="/5E697948/5E77EFDC" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EFDC" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EFDC" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EFDC" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EFDC" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EFDC" Ref="D42"  Part="1" 
F 0 "D42" V 7696 2770 50  0000 R CNN
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
Text HLabel 2150 3350 0    50   Output ~ 0
C[0..15]
Wire Wire Line
	3150 3000 3150 3250
Text Label 3150 3250 1    50   ~ 0
C0
Wire Bus Line
	2150 3350 7750 3350
$EndSCHEMATC
