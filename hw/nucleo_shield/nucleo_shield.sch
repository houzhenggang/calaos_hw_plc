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
LIBS:special
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
LIBS:F411RE
LIBS:nucleo_shield-cache
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
L Nucleo-F411RE-CN10 CN101
U 1 1 56658743
P 9600 1850
F 0 "CN101" H 9600 2850 60  0000 C CNN
F 1 "Nucleo-F411RE-CN10" H 9700 800 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x19" H 9600 -50 60  0001 C CNN
F 3 "" H 9600 -50 60  0000 C CNN
	1    9600 1850
	1    0    0    -1  
$EndComp
$Comp
L Nucleo-F411RE-CN7 CN71
U 1 1 56658787
P 7300 1850
F 0 "CN71" H 7300 2850 60  0000 C CNN
F 1 "Nucleo-F411RE-CN7" H 7100 750 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x19" H 7550 1800 60  0001 C CNN
F 3 "" H 7550 1800 60  0000 C CNN
	1    7300 1850
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U1
U 1 1 566589DD
P 9300 3950
F 0 "U1" H 9450 4550 70  0000 C CNN
F 1 "74HC595" H 9300 3350 70  0000 C CNN
F 2 "Housings_DIP:DIP-16__300" H 9300 3950 60  0001 C CNN
F 3 "" H 9300 3950 60  0000 C CNN
	1    9300 3950
	1    0    0    -1  
$EndComp
Text GLabel 10550 2050 2    60   Input ~ 0
SRLatch
Text GLabel 8050 4000 0    60   Input ~ 0
SRLatch
Text GLabel 10150 1950 2    60   Input ~ 0
SRCLK
$Comp
L GND #PWR01
U 1 1 56697602
P 8600 4350
F 0 "#PWR01" H 8600 4100 50  0001 C CNN
F 1 "GND" H 8600 4200 50  0000 C CNN
F 2 "" H 8600 4350 60  0000 C CNN
F 3 "" H 8600 4350 60  0000 C CNN
	1    8600 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 56697632
P 8600 5950
F 0 "#PWR02" H 8600 5700 50  0001 C CNN
F 1 "GND" H 8600 5800 50  0000 C CNN
F 2 "" H 8600 5950 60  0000 C CNN
F 3 "" H 8600 5950 60  0000 C CNN
	1    8600 5950
	1    0    0    -1  
$EndComp
Text GLabel 8000 3700 0    60   Input ~ 0
SRCLK
$Comp
L GND #PWR03
U 1 1 56699180
P 11050 1850
F 0 "#PWR03" H 11050 1600 50  0001 C CNN
F 1 "GND" H 11050 1700 50  0000 C CNN
F 2 "" H 11050 1850 60  0000 C CNN
F 3 "" H 11050 1850 60  0000 C CNN
	1    11050 1850
	1    0    0    -1  
$EndComp
Text GLabel 10150 2150 2    60   Input ~ 0
SRDATA
Text GLabel 8100 3500 0    60   Input ~ 0
SRDATA
$Comp
L LTV-847 U3
U 1 1 56A613FA
P 2000 1400
F 0 "U3" H 1800 2100 50  0000 L CNN
F 1 "LTV-847" H 2000 2100 50  0000 L CNN
F 2 "Housings_DIP:DIP-16__300" H 1800 800 50  0000 L CIN
F 3 "" H 2000 1300 50  0000 L CNN
	1    2000 1400
	1    0    0    -1  
$EndComp
Text GLabel 3450 3400 2    60   Input ~ 0
in5
Text GLabel 3450 3700 2    60   Input ~ 0
in6
Text GLabel 3450 4000 2    60   Input ~ 0
in7
Text GLabel 3450 4300 2    60   Input ~ 0
in8
Text GLabel 3400 1000 2    60   Input ~ 0
in1
Text GLabel 3400 1300 2    60   Input ~ 0
in2
Text GLabel 3400 1600 2    60   Input ~ 0
in3
Text GLabel 3400 1900 2    60   Input ~ 0
in4
Text GLabel 8050 2350 2    60   Input ~ 0
in6
Text GLabel 7800 2250 2    60   Input ~ 0
in5
Text GLabel 9000 2050 0    60   Input ~ 0
in4
Text GLabel 8750 2150 0    60   Input ~ 0
in3
Text GLabel 9000 2250 0    60   Input ~ 0
in2
Text GLabel 8750 2350 0    60   Input ~ 0
in1
Text GLabel 8050 2550 2    60   Input ~ 0
in8
Text GLabel 7800 2450 2    60   Input ~ 0
in7
Text GLabel 10350 3500 2    60   Input ~ 0
out1
Text GLabel 10650 3600 2    60   Input ~ 0
out2
Text GLabel 10350 3700 2    60   Input ~ 0
out3
Text GLabel 10650 3800 2    60   Input ~ 0
out4
Text GLabel 10350 3900 2    60   Input ~ 0
out5
Text GLabel 10650 4000 2    60   Input ~ 0
out6
Text GLabel 10350 4100 2    60   Input ~ 0
out7
Text GLabel 10650 4200 2    60   Input ~ 0
out8
Text GLabel 10300 5100 2    60   Input ~ 0
out9
Text GLabel 10650 5200 2    60   Input ~ 0
out10
Text GLabel 10300 5300 2    60   Input ~ 0
out11
Text GLabel 10650 5400 2    60   Input ~ 0
out12
Text GLabel 10300 5500 2    60   Input ~ 0
out13
Text GLabel 10650 5600 2    60   Input ~ 0
out14
Text GLabel 10300 5700 2    60   Input ~ 0
out15
$Comp
L R R10
U 1 1 56A63457
P 2400 4550
F 0 "R10" V 2480 4550 50  0000 C CNN
F 1 "R" V 2400 4550 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2330 4550 30  0001 C CNN
F 3 "" H 2400 4550 30  0000 C CNN
	1    2400 4550
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 56A636FF
P 2700 4550
F 0 "R12" V 2780 4550 50  0000 C CNN
F 1 "R" V 2700 4550 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2630 4550 30  0001 C CNN
F 3 "" H 2700 4550 30  0000 C CNN
	1    2700 4550
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 56A63739
P 3000 4550
F 0 "R14" V 3080 4550 50  0000 C CNN
F 1 "R" V 3000 4550 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2930 4550 30  0001 C CNN
F 3 "" H 3000 4550 30  0000 C CNN
	1    3000 4550
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 56A63767
P 3300 4550
F 0 "R16" V 3380 4550 50  0000 C CNN
F 1 "R" V 3300 4550 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3230 4550 30  0001 C CNN
F 3 "" H 3300 4550 30  0000 C CNN
	1    3300 4550
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 56A637CB
P 2400 2150
F 0 "R9" V 2480 2150 50  0000 C CNN
F 1 "R" V 2400 2150 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2330 2150 30  0001 C CNN
F 3 "" H 2400 2150 30  0000 C CNN
	1    2400 2150
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 56A63945
P 2700 2150
F 0 "R11" V 2780 2150 50  0000 C CNN
F 1 "R" V 2700 2150 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2630 2150 30  0001 C CNN
F 3 "" H 2700 2150 30  0000 C CNN
	1    2700 2150
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 56A639B1
P 3000 2150
F 0 "R13" V 3080 2150 50  0000 C CNN
F 1 "R" V 3000 2150 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2930 2150 30  0001 C CNN
F 3 "" H 3000 2150 30  0000 C CNN
	1    3000 2150
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 56A639E9
P 3300 2150
F 0 "R15" V 3380 2150 50  0000 C CNN
F 1 "R" V 3300 2150 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3230 2150 30  0001 C CNN
F 3 "" H 3300 2150 30  0000 C CNN
	1    3300 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 56A63D29
P 2850 5100
F 0 "#PWR04" H 2850 4850 50  0001 C CNN
F 1 "GND" H 2850 4950 50  0000 C CNN
F 2 "" H 2850 5100 60  0000 C CNN
F 3 "" H 2850 5100 60  0000 C CNN
	1    2850 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 56A643CB
P 2850 2600
F 0 "#PWR05" H 2850 2350 50  0001 C CNN
F 1 "GND" H 2850 2450 50  0000 C CNN
F 2 "" H 2850 2600 60  0000 C CNN
F 3 "" H 2850 2600 60  0000 C CNN
	1    2850 2600
	1    0    0    -1  
$EndComp
Text GLabel 1000 800  0    60   Input ~ 0
inh1
Text GLabel 1000 1100 0    60   Input ~ 0
inh2
Text GLabel 1000 1400 0    60   Input ~ 0
inh3
Text GLabel 1000 1700 0    60   Input ~ 0
inh4
Text GLabel 1000 3200 0    60   Input ~ 0
inh5
Text GLabel 1000 4100 0    60   Input ~ 0
inh8
$Comp
L LTV-847 U4
U 1 1 56A614C5
P 2000 3800
F 0 "U4" H 1800 4500 50  0000 L CNN
F 1 "LTV-847" H 2000 4500 50  0000 L CNN
F 2 "Housings_DIP:DIP-16__300" H 1800 3200 50  0000 L CIN
F 3 "" H 2000 3700 50  0000 L CNN
	1    2000 3800
	1    0    0    -1  
$EndComp
Text GLabel 1000 3800 0    60   Input ~ 0
inh7
Text GLabel 1000 3500 0    60   Input ~ 0
inh6
$Comp
L R R5
U 1 1 56A656E7
P 1300 3200
F 0 "R5" V 1380 3200 50  0000 C CNN
F 1 "R" V 1300 3200 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1230 3200 30  0001 C CNN
F 3 "" H 1300 3200 30  0000 C CNN
	1    1300 3200
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 56A657B7
P 1300 3500
F 0 "R6" V 1380 3500 50  0000 C CNN
F 1 "R" V 1300 3500 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1230 3500 30  0001 C CNN
F 3 "" H 1300 3500 30  0000 C CNN
	1    1300 3500
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 56A657F3
P 1300 3800
F 0 "R7" V 1380 3800 50  0000 C CNN
F 1 "R" V 1300 3800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1230 3800 30  0001 C CNN
F 3 "" H 1300 3800 30  0000 C CNN
	1    1300 3800
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 56A65833
P 1300 4100
F 0 "R8" V 1380 4100 50  0000 C CNN
F 1 "R" V 1300 4100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1230 4100 30  0001 C CNN
F 3 "" H 1300 4100 30  0000 C CNN
	1    1300 4100
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 56A65871
P 1300 1700
F 0 "R4" V 1380 1700 50  0000 C CNN
F 1 "R" V 1300 1700 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1230 1700 30  0001 C CNN
F 3 "" H 1300 1700 30  0000 C CNN
	1    1300 1700
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 56A65995
P 1300 1400
F 0 "R3" V 1380 1400 50  0000 C CNN
F 1 "R" V 1300 1400 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1230 1400 30  0001 C CNN
F 3 "" H 1300 1400 30  0000 C CNN
	1    1300 1400
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 56A659D7
P 1300 1100
F 0 "R2" V 1380 1100 50  0000 C CNN
F 1 "R" V 1300 1100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1230 1100 30  0001 C CNN
F 3 "" H 1300 1100 30  0000 C CNN
	1    1300 1100
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 56A65A1B
P 1300 800
F 0 "R1" V 1380 800 50  0000 C CNN
F 1 "R" V 1300 800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1230 800 30  0001 C CNN
F 3 "" H 1300 800 30  0000 C CNN
	1    1300 800 
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 56A76B8C
P 6400 1850
F 0 "#PWR06" H 6400 1600 50  0001 C CNN
F 1 "GND" H 6400 1700 50  0000 C CNN
F 2 "" H 6400 1850 60  0000 C CNN
F 3 "" H 6400 1850 60  0000 C CNN
	1    6400 1850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 56A76CA8
P 7900 1250
F 0 "#PWR07" H 7900 1000 50  0001 C CNN
F 1 "GND" H 7900 1100 50  0000 C CNN
F 2 "" H 7900 1250 60  0000 C CNN
F 3 "" H 7900 1250 60  0000 C CNN
	1    7900 1250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 56A779AD
P 8900 1350
F 0 "#PWR08" H 8900 1100 50  0001 C CNN
F 1 "GND" H 8900 1200 50  0000 C CNN
F 2 "" H 8900 1350 60  0000 C CNN
F 3 "" H 8900 1350 60  0000 C CNN
	1    8900 1350
	0    1    1    0   
$EndComp
Text GLabel 1500 2200 0    60   Input ~ 0
GND_24V
Text GLabel 1500 4650 0    60   Input ~ 0
GND_24V
Text GLabel 4900 1950 2    60   Input ~ 0
GND_24V
Text GLabel 4800 2450 2    60   Input ~ 0
inh1
Text GLabel 5100 2350 2    60   Input ~ 0
inh2
Text GLabel 4800 2250 2    60   Input ~ 0
inh3
Text GLabel 5100 2150 2    60   Input ~ 0
inh4
Text GLabel 4800 2650 2    60   Input ~ 0
inh7
Text GLabel 5100 2750 2    60   Input ~ 0
inh6
Text GLabel 5100 2550 2    60   Input ~ 0
inh8
Wire Wire Line
	8600 4100 8600 4350
Wire Wire Line
	8600 5700 8600 5950
Wire Wire Line
	8050 4000 8600 4000
Connection ~ 8150 4000
Wire Wire Line
	8150 4000 8150 5600
Wire Wire Line
	8150 5600 8600 5600
Wire Wire Line
	8000 3700 8600 3700
Connection ~ 8300 3700
Wire Wire Line
	8300 3700 8300 5300
Wire Wire Line
	8300 5300 8600 5300
Wire Wire Line
	10150 1950 10100 1950
Wire Wire Line
	10100 1850 11050 1850
Wire Wire Line
	2300 1000 3400 1000
Wire Wire Line
	2300 1300 3400 1300
Wire Wire Line
	2300 1600 3400 1600
Wire Wire Line
	2300 1900 3400 1900
Wire Wire Line
	2300 3400 3450 3400
Wire Wire Line
	2300 3700 3450 3700
Wire Wire Line
	2300 4000 3450 4000
Wire Wire Line
	2300 4300 3450 4300
Wire Wire Line
	10000 5100 10300 5100
Wire Wire Line
	10000 5200 10650 5200
Wire Wire Line
	10000 5300 10300 5300
Wire Wire Line
	10000 5400 10650 5400
Wire Wire Line
	10000 5500 10300 5500
Wire Wire Line
	10000 5600 10650 5600
Wire Wire Line
	10000 5700 10300 5700
Wire Wire Line
	10000 5800 10650 5800
Wire Wire Line
	10000 4200 10650 4200
Wire Wire Line
	10000 4100 10350 4100
Wire Wire Line
	10000 4000 10650 4000
Wire Wire Line
	10350 3900 10000 3900
Wire Wire Line
	10000 3800 10650 3800
Wire Wire Line
	10000 3700 10350 3700
Wire Wire Line
	10000 3600 10650 3600
Wire Wire Line
	10000 3500 10350 3500
Wire Wire Line
	3300 2000 3300 1000
Connection ~ 3300 1000
Wire Wire Line
	3000 2000 3000 1300
Connection ~ 3000 1300
Wire Wire Line
	2700 2000 2700 1600
Connection ~ 2700 1600
Wire Wire Line
	2400 2000 2400 1900
Connection ~ 2400 1900
Wire Wire Line
	2400 4400 2400 4300
Connection ~ 2400 4300
Wire Wire Line
	2700 4400 2700 4000
Connection ~ 2700 4000
Wire Wire Line
	3000 4400 3000 3700
Connection ~ 3000 3700
Wire Wire Line
	3300 4400 3300 3400
Connection ~ 3300 3400
Wire Wire Line
	2400 4700 2400 4900
Wire Wire Line
	2400 4900 3300 4900
Wire Wire Line
	2700 4900 2700 4700
Connection ~ 2700 4900
Wire Wire Line
	3000 4900 3000 4700
Wire Wire Line
	3300 4900 3300 4700
Connection ~ 3000 4900
Wire Wire Line
	2850 4900 2850 5100
Connection ~ 2850 4900
Wire Wire Line
	2400 2300 2400 2450
Wire Wire Line
	2400 2450 3300 2450
Wire Wire Line
	3300 2450 3300 2300
Wire Wire Line
	3000 2300 3000 2450
Connection ~ 3000 2450
Wire Wire Line
	2700 2300 2700 2450
Connection ~ 2700 2450
Wire Wire Line
	2850 2450 2850 2600
Connection ~ 2850 2450
Wire Wire Line
	1450 800  1700 800 
Wire Wire Line
	1150 800  1000 800 
Wire Wire Line
	1000 1100 1150 1100
Wire Wire Line
	1450 1100 1700 1100
Wire Wire Line
	1450 1400 1700 1400
Wire Wire Line
	1150 1400 1000 1400
Wire Wire Line
	1000 1700 1150 1700
Wire Wire Line
	1450 1700 1700 1700
Wire Wire Line
	1700 3200 1450 3200
Wire Wire Line
	1150 3200 1000 3200
Wire Wire Line
	1000 3500 1150 3500
Wire Wire Line
	1450 3500 1700 3500
Wire Wire Line
	1700 3800 1450 3800
Wire Wire Line
	1000 3800 1150 3800
Wire Wire Line
	1000 4100 1150 4100
Wire Wire Line
	1450 4100 1700 4100
Wire Wire Line
	1600 1900 1700 1900
Wire Wire Line
	1600 1000 1600 2200
Wire Wire Line
	1700 1600 1600 1600
Connection ~ 1600 1900
Wire Wire Line
	1700 1300 1600 1300
Connection ~ 1600 1600
Wire Wire Line
	1700 1000 1600 1000
Connection ~ 1600 1300
Wire Wire Line
	1600 4300 1700 4300
Wire Wire Line
	1600 3400 1600 4650
Wire Wire Line
	1700 4000 1600 4000
Connection ~ 1600 4300
Wire Wire Line
	1700 3700 1600 3700
Connection ~ 1600 4000
Wire Wire Line
	1700 3400 1600 3400
Connection ~ 1600 3700
Wire Wire Line
	6400 1850 6600 1850
Wire Wire Line
	9150 1350 8900 1350
Wire Wire Line
	2300 800  2750 800 
Wire Wire Line
	2450 800  2450 1700
Wire Wire Line
	2450 1700 2300 1700
Connection ~ 2450 800 
Wire Wire Line
	2300 1400 2450 1400
Connection ~ 2450 1400
Wire Wire Line
	2300 1100 2450 1100
Connection ~ 2450 1100
Wire Wire Line
	2300 3200 2750 3200
Wire Wire Line
	2450 4100 2300 4100
Wire Wire Line
	2450 3200 2450 4100
Connection ~ 2450 3200
Wire Wire Line
	2300 3500 2450 3500
Connection ~ 2450 3500
Wire Wire Line
	2300 3800 2450 3800
Connection ~ 2450 3800
Wire Wire Line
	1600 2200 1500 2200
Wire Wire Line
	1600 4650 1500 4650
Wire Wire Line
	4800 2850 4500 2850
Wire Wire Line
	4500 2750 5100 2750
Wire Wire Line
	4800 2650 4500 2650
Wire Wire Line
	4500 2550 5100 2550
Wire Wire Line
	4800 2450 4500 2450
Wire Wire Line
	4500 2350 5100 2350
Wire Wire Line
	4800 2250 4500 2250
Wire Wire Line
	4500 2150 5100 2150
Text GLabel 6050 3800 0    60   Input ~ 0
out1
Text GLabel 6450 3900 0    60   Input ~ 0
out2
Text GLabel 6050 4000 0    60   Input ~ 0
out3
Text GLabel 6450 4100 0    60   Input ~ 0
out4
Text GLabel 6050 4200 0    60   Input ~ 0
out5
Text GLabel 6450 4300 0    60   Input ~ 0
out6
Text GLabel 6050 4400 0    60   Input ~ 0
out7
Text GLabel 10650 5800 2    60   Input ~ 0
out16
Text GLabel 6450 4500 0    60   Input ~ 0
out8
Text GLabel 6100 5300 0    60   Input ~ 0
out9
Text GLabel 6550 5400 0    60   Input ~ 0
out10
Text GLabel 6150 5500 0    60   Input ~ 0
out11
Text GLabel 6550 5600 0    60   Input ~ 0
out12
Text GLabel 6150 5700 0    60   Input ~ 0
out13
Text GLabel 6550 5800 0    60   Input ~ 0
out14
Text GLabel 6150 5900 0    60   Input ~ 0
out15
Text GLabel 6550 6000 0    60   Input ~ 0
out16
Wire Wire Line
	6050 3800 6600 3800
Wire Wire Line
	6450 3900 6600 3900
Wire Wire Line
	6050 4000 6600 4000
Wire Wire Line
	6450 4100 6600 4100
Wire Wire Line
	6600 4200 6050 4200
Wire Wire Line
	6450 4300 6600 4300
Wire Wire Line
	6600 4400 6050 4400
Wire Wire Line
	6450 4500 6600 4500
Wire Wire Line
	6550 5400 6650 5400
Wire Wire Line
	6650 5500 6150 5500
Wire Wire Line
	6550 5600 6650 5600
Wire Wire Line
	6650 5700 6150 5700
Wire Wire Line
	6550 5800 6650 5800
Wire Wire Line
	6650 5900 6150 5900
Wire Wire Line
	6550 6000 6650 6000
$Comp
L CONN_01X10 P1
U 1 1 56A91B4E
P 4300 2400
F 0 "P1" H 4300 2950 50  0000 C CNN
F 1 "CONN_01X10" V 4400 2400 50  0000 C CNN
F 2 "w_conn_screw:mors_10p" H 4300 2400 60  0001 C CNN
F 3 "" H 4300 2400 60  0000 C CNN
	1    4300 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 1950 4900 1950
$Comp
L GND #PWR09
U 1 1 56A9304E
P 5600 3700
F 0 "#PWR09" H 5600 3450 50  0001 C CNN
F 1 "GND" H 5600 3550 50  0000 C CNN
F 2 "" H 5600 3700 60  0000 C CNN
F 3 "" H 5600 3700 60  0000 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5300 6650 5300
$Comp
L +5V #PWR010
U 1 1 56A945B7
P 5600 3600
F 0 "#PWR010" H 5600 3450 50  0001 C CNN
F 1 "+5V" H 5600 3740 50  0000 C CNN
F 2 "" H 5600 3600 60  0000 C CNN
F 3 "" H 5600 3600 60  0000 C CNN
	1    5600 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 P3
U 1 1 56A94610
P 6800 4050
F 0 "P3" H 6800 4600 50  0000 C CNN
F 1 "CONN_01X10" V 6900 4050 50  0000 C CNN
F 2 "w_conn_screw:mors_10p" H 6800 4050 60  0001 C CNN
F 3 "" H 6800 4050 60  0000 C CNN
	1    6800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3700 6600 3700
Wire Wire Line
	6600 3600 5600 3600
$Comp
L CONN_01X10 P2
U 1 1 56A94EF4
P 6850 5750
F 0 "P2" H 6850 6300 50  0000 C CNN
F 1 "CONN_01X10" V 6950 5750 50  0000 C CNN
F 2 "w_conn_screw:mors_10p" H 6850 5750 60  0001 C CNN
F 3 "" H 6850 5750 60  0000 C CNN
	1    6850 5750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 56A95011
P 5700 6100
F 0 "#PWR011" H 5700 5950 50  0001 C CNN
F 1 "+5V" H 5700 6240 50  0000 C CNN
F 2 "" H 5700 6100 60  0000 C CNN
F 3 "" H 5700 6100 60  0000 C CNN
	1    5700 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 56A9504E
P 5700 6200
F 0 "#PWR012" H 5700 5950 50  0001 C CNN
F 1 "GND" H 5700 6050 50  0000 C CNN
F 2 "" H 5700 6200 60  0000 C CNN
F 3 "" H 5700 6200 60  0000 C CNN
	1    5700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 6100 5700 6100
Wire Wire Line
	5700 6200 6650 6200
Text GLabel 4800 2850 2    60   Input ~ 0
inh5
Wire Wire Line
	4500 2050 4700 2050
Wire Wire Line
	4700 2050 4700 1950
Connection ~ 4700 1950
$Comp
L +5V #PWR013
U 1 1 56A99492
P 7900 1700
F 0 "#PWR013" H 7900 1550 50  0001 C CNN
F 1 "+5V" H 7900 1840 50  0000 C CNN
F 2 "" H 7900 1700 60  0000 C CNN
F 3 "" H 7900 1700 60  0000 C CNN
	1    7900 1700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 56A997FB
P 7750 1650
F 0 "#PWR014" H 7750 1500 50  0001 C CNN
F 1 "+3.3V" H 7750 1790 50  0000 C CNN
F 2 "" H 7750 1650 60  0000 C CNN
F 3 "" H 7750 1650 60  0000 C CNN
	1    7750 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1750 7900 1750
Wire Wire Line
	7900 1750 7900 1700
Wire Wire Line
	7750 1650 7600 1650
Wire Wire Line
	7900 1250 7600 1250
Wire Wire Line
	7600 1950 7800 1950
Wire Wire Line
	7800 1950 7800 1850
Wire Wire Line
	7600 1850 7900 1850
Connection ~ 7800 1850
$Comp
L GND #PWR015
U 1 1 56A99D0A
P 7900 1850
F 0 "#PWR015" H 7900 1600 50  0001 C CNN
F 1 "GND" H 7900 1700 50  0000 C CNN
F 2 "" H 7900 1850 60  0000 C CNN
F 3 "" H 7900 1850 60  0000 C CNN
	1    7900 1850
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR016
U 1 1 56A99FD2
P 7300 3800
F 0 "#PWR016" H 7300 3650 50  0001 C CNN
F 1 "+3.3V" H 7300 3940 50  0000 C CNN
F 2 "" H 7300 3800 60  0000 C CNN
F 3 "" H 7300 3800 60  0000 C CNN
	1    7300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3800 7300 3800
$Comp
L +3.3V #PWR017
U 1 1 56A9A0DC
P 2750 3200
F 0 "#PWR017" H 2750 3050 50  0001 C CNN
F 1 "+3.3V" H 2750 3340 50  0000 C CNN
F 2 "" H 2750 3200 60  0000 C CNN
F 3 "" H 2750 3200 60  0000 C CNN
	1    2750 3200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR018
U 1 1 56A9A119
P 2750 800
F 0 "#PWR018" H 2750 650 50  0001 C CNN
F 1 "+3.3V" H 2750 940 50  0000 C CNN
F 2 "" H 2750 800 60  0000 C CNN
F 3 "" H 2750 800 60  0000 C CNN
	1    2750 800 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR019
U 1 1 56A9A2A3
P 7850 5400
F 0 "#PWR019" H 7850 5250 50  0001 C CNN
F 1 "+3.3V" H 7850 5540 50  0000 C CNN
F 2 "" H 7850 5400 60  0000 C CNN
F 3 "" H 7850 5400 60  0000 C CNN
	1    7850 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5400 8600 5400
$Comp
L 74HC595 U2
U 1 1 56658CF9
P 9300 5550
F 0 "U2" H 9450 6150 70  0000 C CNN
F 1 "74HC595" H 9300 4950 70  0000 C CNN
F 2 "Housings_DIP:DIP-16__300" H 9300 5550 60  0001 C CNN
F 3 "" H 9300 5550 60  0000 C CNN
	1    9300 5550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 56A9B55E
P 9000 3200
F 0 "#PWR020" H 9000 3050 50  0001 C CNN
F 1 "+5V" H 9000 3340 50  0000 C CNN
F 2 "" H 9000 3200 60  0000 C CNN
F 3 "" H 9000 3200 60  0000 C CNN
	1    9000 3200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR021
U 1 1 56A9B59B
P 10700 4850
F 0 "#PWR021" H 10700 4700 50  0001 C CNN
F 1 "+5V" H 10700 4990 50  0000 C CNN
F 2 "" H 10700 4850 60  0000 C CNN
F 3 "" H 10700 4850 60  0000 C CNN
	1    10700 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5000 9000 4850
Wire Wire Line
	9000 4850 10700 4850
Wire Wire Line
	9000 3400 9000 3200
Wire Wire Line
	10550 2050 10100 2050
Wire Wire Line
	9000 2050 9150 2050
Wire Wire Line
	8750 2150 9150 2150
Wire Wire Line
	9000 2250 9150 2250
Wire Wire Line
	8750 2350 9150 2350
Wire Wire Line
	7600 2250 7800 2250
Wire Wire Line
	7600 2350 8050 2350
Wire Wire Line
	7600 2450 7800 2450
Wire Wire Line
	7600 2550 8050 2550
Wire Wire Line
	10100 2150 10150 2150
Wire Wire Line
	8100 3500 8600 3500
Wire Wire Line
	8600 5100 8600 4650
Wire Wire Line
	8600 4650 10000 4650
Wire Wire Line
	10000 4650 10000 4400
$Comp
L +5V #PWR022
U 1 1 56AB5C14
P 8550 1150
F 0 "#PWR022" H 8550 1000 50  0001 C CNN
F 1 "+5V" H 8550 1290 50  0000 C CNN
F 2 "" H 8550 1150 60  0000 C CNN
F 3 "" H 8550 1150 60  0000 C CNN
	1    8550 1150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 56AB61A1
P 4450 1050
F 0 "P4" H 4450 1200 50  0000 C CNN
F 1 "CONN_01X02" V 4550 1050 50  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 4450 1050 60  0001 C CNN
F 3 "" H 4450 1050 60  0000 C CNN
	1    4450 1050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR023
U 1 1 56AB6530
P 4250 900
F 0 "#PWR023" H 4250 750 50  0001 C CNN
F 1 "+5V" H 4250 1040 50  0000 C CNN
F 2 "" H 4250 900 60  0000 C CNN
F 3 "" H 4250 900 60  0000 C CNN
	1    4250 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 56AB6589
P 4250 1250
F 0 "#PWR024" H 4250 1000 50  0001 C CNN
F 1 "GND" H 4250 1100 50  0000 C CNN
F 2 "" H 4250 1250 60  0000 C CNN
F 3 "" H 4250 1250 60  0000 C CNN
	1    4250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1000 4250 900 
Wire Wire Line
	4250 1100 4250 1250
$Comp
L +3.3V #PWR025
U 1 1 56B4959A
P 5650 1150
F 0 "#PWR025" H 5650 1000 50  0001 C CNN
F 1 "+3.3V" H 5650 1290 50  0000 C CNN
F 2 "" H 5650 1150 60  0000 C CNN
F 3 "" H 5650 1150 60  0000 C CNN
	1    5650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1150 6600 1150
Text GLabel 3500 5800 2    60   Input ~ 0
in9
Text GLabel 3500 6100 2    60   Input ~ 0
in10
Text GLabel 3500 6400 2    60   Input ~ 0
in11
Text GLabel 3500 6700 2    60   Input ~ 0
in12
$Comp
L R R21
U 1 1 56B4AA6D
P 2450 6950
F 0 "R21" V 2530 6950 50  0000 C CNN
F 1 "R" V 2450 6950 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2380 6950 30  0001 C CNN
F 3 "" H 2450 6950 30  0000 C CNN
	1    2450 6950
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 56B4AA73
P 2750 6950
F 0 "R22" V 2830 6950 50  0000 C CNN
F 1 "R" V 2750 6950 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2680 6950 30  0001 C CNN
F 3 "" H 2750 6950 30  0000 C CNN
	1    2750 6950
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 56B4AA79
P 3050 6950
F 0 "R23" V 3130 6950 50  0000 C CNN
F 1 "R" V 3050 6950 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2980 6950 30  0001 C CNN
F 3 "" H 3050 6950 30  0000 C CNN
	1    3050 6950
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 56B4AA7F
P 3350 6950
F 0 "R24" V 3430 6950 50  0000 C CNN
F 1 "R" V 3350 6950 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3280 6950 30  0001 C CNN
F 3 "" H 3350 6950 30  0000 C CNN
	1    3350 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 56B4AA85
P 2900 7500
F 0 "#PWR026" H 2900 7250 50  0001 C CNN
F 1 "GND" H 2900 7350 50  0000 C CNN
F 2 "" H 2900 7500 60  0000 C CNN
F 3 "" H 2900 7500 60  0000 C CNN
	1    2900 7500
	1    0    0    -1  
$EndComp
Text GLabel 1050 5600 0    60   Input ~ 0
inh9
Text GLabel 1050 6500 0    60   Input ~ 0
inh12
$Comp
L LTV-847 U5
U 1 1 56B4AA8D
P 2050 6200
F 0 "U5" H 1850 6900 50  0000 L CNN
F 1 "LTV-847" H 2050 6900 50  0000 L CNN
F 2 "Housings_DIP:DIP-16__300" H 1850 5600 50  0000 L CIN
F 3 "" H 2050 6100 50  0000 L CNN
	1    2050 6200
	1    0    0    -1  
$EndComp
Text GLabel 1050 6200 0    60   Input ~ 0
inh11
Text GLabel 1050 5900 0    60   Input ~ 0
inh10
$Comp
L R R17
U 1 1 56B4AA95
P 1350 5600
F 0 "R17" V 1430 5600 50  0000 C CNN
F 1 "R" V 1350 5600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1280 5600 30  0001 C CNN
F 3 "" H 1350 5600 30  0000 C CNN
	1    1350 5600
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 56B4AA9B
P 1350 5900
F 0 "R18" V 1430 5900 50  0000 C CNN
F 1 "R" V 1350 5900 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1280 5900 30  0001 C CNN
F 3 "" H 1350 5900 30  0000 C CNN
	1    1350 5900
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 56B4AAA1
P 1350 6200
F 0 "R19" V 1430 6200 50  0000 C CNN
F 1 "R" V 1350 6200 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1280 6200 30  0001 C CNN
F 3 "" H 1350 6200 30  0000 C CNN
	1    1350 6200
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 56B4AAA7
P 1350 6500
F 0 "R20" V 1430 6500 50  0000 C CNN
F 1 "R" V 1350 6500 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1280 6500 30  0001 C CNN
F 3 "" H 1350 6500 30  0000 C CNN
	1    1350 6500
	0    1    1    0   
$EndComp
Text GLabel 1550 7050 0    60   Input ~ 0
GND_24V
Wire Wire Line
	2350 5800 3500 5800
Wire Wire Line
	2350 6100 3500 6100
Wire Wire Line
	2350 6400 3500 6400
Wire Wire Line
	2350 6700 3500 6700
Wire Wire Line
	2450 6800 2450 6700
Connection ~ 2450 6700
Wire Wire Line
	2750 6800 2750 6400
Connection ~ 2750 6400
Wire Wire Line
	3050 6800 3050 6100
Connection ~ 3050 6100
Wire Wire Line
	3350 6800 3350 5800
Connection ~ 3350 5800
Wire Wire Line
	2450 7100 2450 7300
Wire Wire Line
	2450 7300 3350 7300
Wire Wire Line
	2750 7300 2750 7100
Connection ~ 2750 7300
Wire Wire Line
	3050 7300 3050 7100
Wire Wire Line
	3350 7300 3350 7100
Connection ~ 3050 7300
Wire Wire Line
	2900 7300 2900 7500
Connection ~ 2900 7300
Wire Wire Line
	1750 5600 1500 5600
Wire Wire Line
	1200 5600 1050 5600
Wire Wire Line
	1050 5900 1200 5900
Wire Wire Line
	1500 5900 1750 5900
Wire Wire Line
	1750 6200 1500 6200
Wire Wire Line
	1050 6200 1200 6200
Wire Wire Line
	1050 6500 1200 6500
Wire Wire Line
	1500 6500 1750 6500
Wire Wire Line
	1650 6700 1750 6700
Wire Wire Line
	1650 5800 1650 7050
Wire Wire Line
	1750 6400 1650 6400
Connection ~ 1650 6700
Wire Wire Line
	1750 6100 1650 6100
Connection ~ 1650 6400
Wire Wire Line
	1750 5800 1650 5800
Connection ~ 1650 6100
Wire Wire Line
	2350 5600 2800 5600
Wire Wire Line
	2500 6500 2350 6500
Wire Wire Line
	2500 5600 2500 6500
Connection ~ 2500 5600
Wire Wire Line
	2350 5900 2500 5900
Connection ~ 2500 5900
Wire Wire Line
	2350 6200 2500 6200
Connection ~ 2500 6200
Wire Wire Line
	1650 7050 1550 7050
$Comp
L +3.3V #PWR027
U 1 1 56B4AADC
P 2800 5600
F 0 "#PWR027" H 2800 5450 50  0001 C CNN
F 1 "+3.3V" H 2800 5740 50  0000 C CNN
F 2 "" H 2800 5600 60  0000 C CNN
F 3 "" H 2800 5600 60  0000 C CNN
	1    2800 5600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P5
U 1 1 56B4B484
P 4500 7150
F 0 "P5" H 4500 7500 50  0000 C CNN
F 1 "CONN_01X06" V 4600 7150 50  0000 C CNN
F 2 "w_conn_screw:mors_6p" H 4500 7150 60  0001 C CNN
F 3 "" H 4500 7150 60  0000 C CNN
	1    4500 7150
	-1   0    0    1   
$EndComp
Text GLabel 5400 7300 2    60   Input ~ 0
GND_24V
Text GLabel 5400 6900 2    60   Input ~ 0
inh9
Text GLabel 4950 7000 2    60   Input ~ 0
inh10
Text GLabel 4950 7200 2    60   Input ~ 0
inh11
Text GLabel 5400 7100 2    60   Input ~ 0
inh12
Wire Wire Line
	5400 7100 4700 7100
Wire Wire Line
	4700 7200 4950 7200
Wire Wire Line
	4700 7300 5400 7300
Wire Wire Line
	4700 7400 5050 7400
Text GLabel 6500 1050 0    60   Input ~ 0
in12
Text GLabel 8050 1050 2    60   Input ~ 0
in11
Wire Wire Line
	7750 950  7600 950 
Wire Wire Line
	8050 1050 7600 1050
Text GLabel 7750 950  2    60   Input ~ 0
in9
Text GLabel 6200 950  0    60   Input ~ 0
in10
Wire Wire Line
	8550 1150 7600 1150
Wire Wire Line
	6500 1050 6600 1050
Wire Wire Line
	6600 950  6200 950 
Wire Wire Line
	5050 7400 5050 7300
Connection ~ 5050 7300
Wire Wire Line
	5400 6900 4700 6900
Wire Wire Line
	4700 7000 4950 7000
$EndSCHEMATC
