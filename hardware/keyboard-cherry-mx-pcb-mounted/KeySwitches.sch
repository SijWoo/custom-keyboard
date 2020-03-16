EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 10
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
S 1000 1000 1500 500 
U 5E6CDE4B
F0 "Row0" 50
F1 "Row0.sch" 50
F2 "R0" B R 2500 1150 50 
F3 "C[0..15]" O R 2500 1350 50 
$EndSheet
$Sheet
S 1000 2000 1500 500 
U 5E763FD4
F0 "Row1" 50
F1 "Row1.sch" 50
F2 "R1" B R 2500 2150 50 
F3 "C[0..15]" O R 2500 2350 50 
$EndSheet
$Sheet
S 1000 6000 1500 500 
U 5E78F98F
F0 "Row5" 50
F1 "Row5.sch" 50
F2 "C[0..15]" O R 2500 6350 50 
F3 "R5" B R 2500 6150 50 
$EndSheet
$Sheet
S 1000 5000 1500 500 
U 5E78C3AE
F0 "Row4" 50
F1 "Row4.sch" 50
F2 "C[0..15]" O R 2500 5350 50 
F3 "R4" B R 2500 5150 50 
$EndSheet
$Sheet
S 1000 4000 1500 500 
U 5E785F4F
F0 "Row3" 50
F1 "Row3.sch" 50
F2 "C[0..15]" O R 2500 4350 50 
F3 "R3" B R 2500 4150 50 
$EndSheet
$Sheet
S 1000 3000 1500 500 
U 5E77913C
F0 "Row2" 50
F1 "Row2.sch" 50
F2 "R2" B R 2500 3150 50 
F3 "C[0..15]" O R 2500 3350 50 
$EndSheet
Wire Bus Line
	2500 6350 2750 6350
Wire Bus Line
	2750 6350 2750 5350
Wire Bus Line
	2750 1350 2500 1350
Wire Bus Line
	2500 2350 2750 2350
Connection ~ 2750 2350
Wire Bus Line
	2750 2350 2750 1350
Wire Bus Line
	2500 3350 2750 3350
Connection ~ 2750 3350
Wire Bus Line
	2750 3350 2750 2350
Wire Bus Line
	2500 4350 2750 4350
Connection ~ 2750 4350
Wire Bus Line
	2750 4350 2750 3350
Wire Bus Line
	2500 5350 2750 5350
Connection ~ 2750 5350
Wire Bus Line
	2750 5350 2750 4350
Wire Wire Line
	2500 6150 3000 6150
Wire Wire Line
	2500 5150 3000 5150
Text Label 3000 5150 2    50   ~ 0
R4
Text Label 3000 6150 2    50   ~ 0
R5
Wire Wire Line
	2500 4150 3000 4150
Text Label 3000 4150 2    50   ~ 0
R3
Wire Wire Line
	2500 3150 3000 3150
Text Label 3000 3150 2    50   ~ 0
R2
Wire Wire Line
	2500 2150 3000 2150
Text Label 3000 2150 2    50   ~ 0
R1
Wire Wire Line
	2500 1150 3000 1150
Text Label 3000 1150 2    50   ~ 0
R0
Wire Bus Line
	3100 6350 3500 6350
Entry Wire Line
	3000 6150 3100 6250
Entry Wire Line
	3000 5150 3100 5250
Entry Wire Line
	3000 4150 3100 4250
Entry Wire Line
	3000 3150 3100 3250
Entry Wire Line
	3000 2150 3100 2250
Entry Wire Line
	3000 1150 3100 1250
Wire Bus Line
	2750 6350 2750 6500
Wire Bus Line
	2750 6500 3500 6500
Connection ~ 2750 6350
Text HLabel 3500 6350 2    50   BiDi ~ 0
R[0..5]
Text HLabel 3500 6500 2    50   Output ~ 0
C[0..15]
Wire Bus Line
	3100 1250 3100 6350
$EndSCHEMATC
