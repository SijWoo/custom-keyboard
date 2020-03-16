EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 9
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
U 1 1 5E79006F
P 3150 2400
AR Path="/5E697948/5E79006F" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E79006F" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E79006F" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E79006F" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E79006F" Ref="SW46"  Part="1" 
AR Path="/5E697948/5E78F98F/5E79006F" Ref="SW?"  Part="1" 
F 0 "SW46" V 3104 2548 50  0000 L CNN
F 1 "LShift" V 3195 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_2.25u_PCB" H 3150 2600 50  0001 C CNN
F 3 "~" H 3150 2600 50  0001 C CNN
	1    3150 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E790070
P 3150 2850
AR Path="/5E697948/5E790070" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790070" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790070" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790070" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E790070" Ref="D46"  Part="1" 
AR Path="/5E697948/5E78F98F/5E790070" Ref="D?"  Part="1" 
F 0 "D46" V 3196 2770 50  0000 R CNN
F 1 "1N4148W" V 3105 2770 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 3150 2675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 3150 2850 50  0001 C CNN
	1    3150 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 2600 3150 2700
Text HLabel 2150 2100 0    50   Input ~ 0
R4
Wire Wire Line
	2150 2100 3150 2100
Wire Wire Line
	3150 2100 3150 2200
$Comp
L Switch:SW_Push SW?
U 1 1 5E77EF90
P 3900 2400
AR Path="/5E697948/5E77EF90" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EF90" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EF90" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EF90" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EF90" Ref="SW48"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EF90" Ref="SW?"  Part="1" 
F 0 "SW48" V 3854 2548 50  0000 L CNN
F 1 "z" V 3945 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3900 2600 50  0001 C CNN
F 3 "~" H 3900 2600 50  0001 C CNN
	1    3900 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E77EF96
P 3900 2850
AR Path="/5E697948/5E77EF96" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EF96" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EF96" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EF96" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EF96" Ref="D48"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EF96" Ref="D?"  Part="1" 
F 0 "D48" V 3946 2770 50  0000 R CNN
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
U 1 1 5E790073
P 4650 2400
AR Path="/5E697948/5E790073" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790073" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790073" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790073" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E790073" Ref="SW50"  Part="1" 
AR Path="/5E697948/5E78F98F/5E790073" Ref="SW?"  Part="1" 
F 0 "SW50" V 4604 2548 50  0000 L CNN
F 1 "x" V 4695 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 4650 2600 50  0001 C CNN
F 3 "~" H 4650 2600 50  0001 C CNN
	1    4650 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E818F13
P 4650 2850
AR Path="/5E697948/5E818F13" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F13" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F13" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F13" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E818F13" Ref="D50"  Part="1" 
AR Path="/5E697948/5E78F98F/5E818F13" Ref="D?"  Part="1" 
F 0 "D50" V 4696 2770 50  0000 R CNN
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
U 1 1 5E790075
P 5400 2400
AR Path="/5E697948/5E790075" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790075" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790075" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790075" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E790075" Ref="SW52"  Part="1" 
AR Path="/5E697948/5E78F98F/5E790075" Ref="SW?"  Part="1" 
F 0 "SW52" V 5354 2548 50  0000 L CNN
F 1 "c" V 5445 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 5400 2600 50  0001 C CNN
F 3 "~" H 5400 2600 50  0001 C CNN
	1    5400 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E790076
P 5400 2850
AR Path="/5E697948/5E790076" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790076" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790076" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790076" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E790076" Ref="D52"  Part="1" 
AR Path="/5E697948/5E78F98F/5E790076" Ref="D?"  Part="1" 
F 0 "D52" V 5446 2770 50  0000 R CNN
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
U 1 1 5E77EFBA
P 6150 2400
AR Path="/5E697948/5E77EFBA" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EFBA" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EFBA" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EFBA" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EFBA" Ref="SW54"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EFBA" Ref="SW?"  Part="1" 
F 0 "SW54" V 6104 2548 50  0000 L CNN
F 1 "v" V 6195 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 6150 2600 50  0001 C CNN
F 3 "~" H 6150 2600 50  0001 C CNN
	1    6150 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E790078
P 6150 2850
AR Path="/5E697948/5E790078" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790078" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790078" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790078" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E790078" Ref="D54"  Part="1" 
AR Path="/5E697948/5E78F98F/5E790078" Ref="D?"  Part="1" 
F 0 "D54" V 6196 2770 50  0000 R CNN
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
U 1 1 5E77EFC8
P 6900 2400
AR Path="/5E697948/5E77EFC8" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EFC8" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EFC8" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EFC8" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EFC8" Ref="SW56"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EFC8" Ref="SW?"  Part="1" 
F 0 "SW56" V 6854 2548 50  0000 L CNN
F 1 "b" V 6945 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 6900 2600 50  0001 C CNN
F 3 "~" H 6900 2600 50  0001 C CNN
	1    6900 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E79007A
P 6900 2850
AR Path="/5E697948/5E79007A" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E79007A" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E79007A" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E79007A" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E79007A" Ref="D56"  Part="1" 
AR Path="/5E697948/5E78F98F/5E79007A" Ref="D?"  Part="1" 
F 0 "D56" V 6946 2770 50  0000 R CNN
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
U 1 1 5E818F1A
P 7650 2400
AR Path="/5E697948/5E818F1A" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F1A" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F1A" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F1A" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E818F1A" Ref="SW58"  Part="1" 
AR Path="/5E697948/5E78F98F/5E818F1A" Ref="SW?"  Part="1" 
F 0 "SW58" V 7604 2548 50  0000 L CNN
F 1 "n" V 7695 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 7650 2600 50  0001 C CNN
F 3 "~" H 7650 2600 50  0001 C CNN
	1    7650 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E818F1B
P 7650 2850
AR Path="/5E697948/5E818F1B" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F1B" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F1B" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F1B" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E818F1B" Ref="D58"  Part="1" 
AR Path="/5E697948/5E78F98F/5E818F1B" Ref="D?"  Part="1" 
F 0 "D58" V 7696 2770 50  0000 R CNN
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
U 1 1 5E77EFE4
P 8400 2400
AR Path="/5E697948/5E77EFE4" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EFE4" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EFE4" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EFE4" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EFE4" Ref="SW59"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EFE4" Ref="SW?"  Part="1" 
F 0 "SW59" V 8354 2548 50  0000 L CNN
F 1 "m" V 8445 2548 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 8400 2600 50  0001 C CNN
F 3 "~" H 8400 2600 50  0001 C CNN
	1    8400 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E79007E
P 8400 2850
AR Path="/5E697948/5E79007E" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E79007E" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E79007E" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E79007E" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E79007E" Ref="D59"  Part="1" 
AR Path="/5E697948/5E78F98F/5E79007E" Ref="D?"  Part="1" 
F 0 "D59" V 8446 2770 50  0000 R CNN
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
U 1 1 5E77EFF2
P 3150 4500
AR Path="/5E697948/5E77EFF2" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EFF2" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EFF2" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EFF2" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EFF2" Ref="SW47"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EFF2" Ref="SW?"  Part="1" 
F 0 "SW47" V 3104 4648 50  0000 L CNN
F 1 "," V 3195 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3150 4700 50  0001 C CNN
F 3 "~" H 3150 4700 50  0001 C CNN
	1    3150 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E77EFF8
P 3150 4950
AR Path="/5E697948/5E77EFF8" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77EFF8" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77EFF8" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77EFF8" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77EFF8" Ref="D47"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77EFF8" Ref="D?"  Part="1" 
F 0 "D47" V 3196 4870 50  0000 R CNN
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
U 1 1 5E77F000
P 3900 4500
AR Path="/5E697948/5E77F000" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77F000" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77F000" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77F000" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77F000" Ref="SW49"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77F000" Ref="SW?"  Part="1" 
F 0 "SW49" V 3854 4648 50  0000 L CNN
F 1 "." V 3945 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3900 4700 50  0001 C CNN
F 3 "~" H 3900 4700 50  0001 C CNN
	1    3900 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E790082
P 3900 4950
AR Path="/5E697948/5E790082" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790082" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790082" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790082" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E790082" Ref="D49"  Part="1" 
AR Path="/5E697948/5E78F98F/5E790082" Ref="D?"  Part="1" 
F 0 "D49" V 3946 4870 50  0000 R CNN
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
U 1 1 5E790083
P 4650 4500
AR Path="/5E697948/5E790083" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790083" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790083" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790083" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E790083" Ref="SW51"  Part="1" 
AR Path="/5E697948/5E78F98F/5E790083" Ref="SW?"  Part="1" 
F 0 "SW51" V 4604 4648 50  0000 L CNN
F 1 "/" V 4695 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 4650 4700 50  0001 C CNN
F 3 "~" H 4650 4700 50  0001 C CNN
	1    4650 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E77F014
P 4650 4950
AR Path="/5E697948/5E77F014" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77F014" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77F014" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77F014" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77F014" Ref="D51"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77F014" Ref="D?"  Part="1" 
F 0 "D51" V 4696 4870 50  0000 R CNN
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
U 1 1 5E77F01C
P 5400 4500
AR Path="/5E697948/5E77F01C" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E77F01C" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E77F01C" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E77F01C" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E77F01C" Ref="SW53"  Part="1" 
AR Path="/5E697948/5E78F98F/5E77F01C" Ref="SW?"  Part="1" 
F 0 "SW53" V 5354 4648 50  0000 L CNN
F 1 "RShift" V 5445 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.75u_PCB" H 5400 4700 50  0001 C CNN
F 3 "~" H 5400 4700 50  0001 C CNN
	1    5400 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E790086
P 5400 4950
AR Path="/5E697948/5E790086" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790086" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790086" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790086" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E790086" Ref="D53"  Part="1" 
AR Path="/5E697948/5E78F98F/5E790086" Ref="D?"  Part="1" 
F 0 "D53" V 5446 4870 50  0000 R CNN
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
U 1 1 5E790087
P 6150 4500
AR Path="/5E697948/5E790087" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790087" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790087" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790087" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E790087" Ref="SW55"  Part="1" 
AR Path="/5E697948/5E78F98F/5E790087" Ref="SW?"  Part="1" 
F 0 "SW55" V 6104 4648 50  0000 L CNN
F 1 "Up Arrow" V 6195 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 6150 4700 50  0001 C CNN
F 3 "~" H 6150 4700 50  0001 C CNN
	1    6150 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E790088
P 6150 4950
AR Path="/5E697948/5E790088" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790088" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790088" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790088" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E790088" Ref="D55"  Part="1" 
AR Path="/5E697948/5E78F98F/5E790088" Ref="D?"  Part="1" 
F 0 "D55" V 6196 4870 50  0000 R CNN
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
U 1 1 5E790089
P 6900 4500
AR Path="/5E697948/5E790089" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E790089" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E77913C/5E790089" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E790089" Ref="SW?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E790089" Ref="SW57"  Part="1" 
AR Path="/5E697948/5E78F98F/5E790089" Ref="SW?"  Part="1" 
F 0 "SW57" V 6854 4648 50  0000 L CNN
F 1 "End" V 6945 4648 50  0000 L CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 6900 4700 50  0001 C CNN
F 3 "~" H 6900 4700 50  0001 C CNN
	1    6900 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D?
U 1 1 5E818F29
P 6900 4950
AR Path="/5E697948/5E818F29" Ref="D?"  Part="1" 
AR Path="/5E697948/5E6CDE4B/5E818F29" Ref="D?"  Part="1" 
AR Path="/5E697948/5E77913C/5E818F29" Ref="D?"  Part="1" 
AR Path="/5E697948/5E785F4F/5E818F29" Ref="D?"  Part="1" 
AR Path="/5E697948/5E78C3AE/5E818F29" Ref="D57"  Part="1" 
AR Path="/5E697948/5E78F98F/5E818F29" Ref="D?"  Part="1" 
F 0 "D57" V 6946 4870 50  0000 R CNN
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
	6900 4200 9400 4200
Wire Bus Line
	2850 5450 7000 5450
Wire Bus Line
	2850 3350 8500 3350
$EndSCHEMATC