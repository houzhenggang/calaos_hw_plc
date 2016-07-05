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
LIBS:w_analog
LIBS:nucleo_shield-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "DIY PLC"
Date "2016-05-04"
Rev "1"
Comp "Kalray"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Nucleo-F411RE-CN10 CN101
U 1 1 56658743
P 9400 2550
F 0 "CN101" H 9400 3550 60  0000 C CNN
F 1 "Nucleo-F411RE-CN10" H 9500 1500 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x19" H 9400 650 60  0001 C CNN
F 3 "" H 9400 650 60  0000 C CNN
	1    9400 2550
	1    0    0    -1  
$EndComp
$Comp
L Nucleo-F411RE-CN7 CN71
U 1 1 56658787
P 5400 2700
F 0 "CN71" H 5400 3700 60  0000 C CNN
F 1 "Nucleo-F411RE-CN7" H 5200 1600 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x19" H 5650 2650 60  0001 C CNN
F 3 "" H 5650 2650 60  0000 C CNN
	1    5400 2700
	1    0    0    -1  
$EndComp
Text GLabel 10000 2650 2    60   Input ~ 0
SRLatch
$Comp
L GND #PWR01
U 1 1 56699180
P 11150 2550
F 0 "#PWR01" H 11150 2300 50  0001 C CNN
F 1 "GND" H 11150 2400 50  0000 C CNN
F 2 "" H 11150 2550 60  0000 C CNN
F 3 "" H 11150 2550 60  0000 C CNN
	1    11150 2550
	1    0    0    -1  
$EndComp
Text GLabel 10600 2750 2    60   Input ~ 0
SRDATA
$Comp
L GND #PWR02
U 1 1 56A76B8C
P 4500 2700
F 0 "#PWR02" H 4500 2450 50  0001 C CNN
F 1 "GND" H 4500 2550 50  0000 C CNN
F 2 "" H 4500 2700 60  0000 C CNN
F 3 "" H 4500 2700 60  0000 C CNN
	1    4500 2700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 56A76CA8
P 6000 2100
F 0 "#PWR03" H 6000 1850 50  0001 C CNN
F 1 "GND" H 6000 1950 50  0000 C CNN
F 2 "" H 6000 2100 60  0000 C CNN
F 3 "" H 6000 2100 60  0000 C CNN
	1    6000 2100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 56A779AD
P 7500 2050
F 0 "#PWR04" H 7500 1800 50  0001 C CNN
F 1 "GND" H 7500 1900 50  0000 C CNN
F 2 "" H 7500 2050 60  0000 C CNN
F 3 "" H 7500 2050 60  0000 C CNN
	1    7500 2050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 56A99492
P 6000 2550
F 0 "#PWR05" H 6000 2400 50  0001 C CNN
F 1 "+5V" H 6000 2690 50  0000 C CNN
F 2 "" H 6000 2550 60  0000 C CNN
F 3 "" H 6000 2550 60  0000 C CNN
	1    6000 2550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 56A997FB
P 5850 2500
F 0 "#PWR06" H 5850 2350 50  0001 C CNN
F 1 "+3.3V" H 5850 2640 50  0000 C CNN
F 2 "" H 5850 2500 60  0000 C CNN
F 3 "" H 5850 2500 60  0000 C CNN
	1    5850 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56A99D0A
P 6000 2700
F 0 "#PWR07" H 6000 2450 50  0001 C CNN
F 1 "GND" H 6000 2550 50  0000 C CNN
F 2 "" H 6000 2700 60  0000 C CNN
F 3 "" H 6000 2700 60  0000 C CNN
	1    6000 2700
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR08
U 1 1 56AB5C14
P 7100 2000
F 0 "#PWR08" H 7100 1850 50  0001 C CNN
F 1 "+5V" H 7100 2140 50  0000 C CNN
F 2 "" H 7100 2000 60  0000 C CNN
F 3 "" H 7100 2000 60  0000 C CNN
	1    7100 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 56AB61A1
P 6950 900
F 0 "P4" H 6950 1050 50  0000 C CNN
F 1 "POWER_CON" V 7050 900 50  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 6950 900 60  0001 C CNN
F 3 "" H 6950 900 60  0000 C CNN
	1    6950 900 
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR09
U 1 1 56AB6530
P 7100 1100
F 0 "#PWR09" H 7100 950 50  0001 C CNN
F 1 "+5V" H 7100 1240 50  0000 C CNN
F 2 "" H 7100 1100 60  0000 C CNN
F 3 "" H 7100 1100 60  0000 C CNN
	1    7100 1100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 56AB6589
P 6750 1100
F 0 "#PWR010" H 6750 850 50  0001 C CNN
F 1 "GND" H 6750 950 50  0000 C CNN
F 2 "" H 6750 1100 60  0000 C CNN
F 3 "" H 6750 1100 60  0000 C CNN
	1    6750 1100
	0    1    1    0   
$EndComp
Text GLabel 2150 6750 2    60   Input ~ 0
SRLatch
Text GLabel 2250 6600 2    60   Input ~ 0
SRCLK
Text GLabel 2150 6450 2    60   Input ~ 0
SRDATA
Text GLabel 8300 2750 0    60   Input ~ 0
I2C3_SCL
Text GLabel 8850 2950 0    60   Input ~ 0
I2C3_SDA
Text GLabel 6450 1800 2    60   Input ~ 0
SPI3_MISO
Text GLabel 4450 1900 0    60   Input ~ 0
SPI3_MOSI
Text GLabel 4400 1750 0    60   Input ~ 0
SPI3_SCK
Text GLabel 8700 2650 0    60   Input ~ 0
IO_INT
$Sheet
S 950  4350 900  1500
U 572B2301
F0 "nucleo_shield_input_exp" 60
F1 "nucleo_shield_input_exp.sch" 60
F2 "I2C_SCL" I R 1850 4550 60 
F3 "I2C_SDA" I R 1850 4750 60 
F4 "INT" I R 1850 4950 60 
F5 "I2C2_SCL" I R 1850 5150 60 
F6 "I2C2_SDA" I R 1850 5350 60 
F7 "INT2" I R 1850 5550 60 
$EndSheet
Text GLabel 2300 4950 2    60   Input ~ 0
IO_INT
Text GLabel 2300 4550 2    60   Input ~ 0
I2C3_SCL
Text GLabel 2300 4750 2    60   Input ~ 0
I2C3_SDA
$Comp
L CONN_02X04 P6
U 1 1 572A6265
P 8550 5450
F 0 "P6" H 8550 5815 50  0000 C CNN
F 1 "ETH_CONN" H 8550 5724 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04" H 8550 4250 50  0001 C CNN
F 3 "" H 8550 4250 50  0000 C CNN
	1    8550 5450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 572A65CF
P 7150 5600
F 0 "#PWR011" H 7150 5450 50  0001 C CNN
F 1 "+5V" H 7150 5740 50  0000 C CNN
F 2 "" H 7150 5600 60  0000 C CNN
F 3 "" H 7150 5600 60  0000 C CNN
	1    7150 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 572A660A
P 8000 5250
F 0 "#PWR012" H 8000 5000 50  0001 C CNN
F 1 "GND" H 8000 5100 50  0000 C CNN
F 2 "" H 8000 5250 60  0000 C CNN
F 3 "" H 8000 5250 60  0000 C CNN
	1    8000 5250
	1    0    0    1   
$EndComp
Text GLabel 8800 5500 2    60   Input ~ 0
ETH_RST
Text GLabel 7750 5500 0    60   Input ~ 0
ETH_CS
Text GLabel 9450 5400 2    60   Input ~ 0
SPI3_SCK
Text GLabel 8300 5400 0    60   Input ~ 0
SPI3_MOSI
Text GLabel 8800 5300 2    60   Input ~ 0
SPI3_MISO
Text GLabel 10000 3050 2    60   Input ~ 0
SPI1_SCK
Text GLabel 10550 2950 2    60   Input ~ 0
SPI1_MISO
Text GLabel 10000 2850 2    60   Input ~ 0
SPI1_MOSI
Text GLabel 5250 5450 2    60   Input ~ 0
SPI1_MOSI
Text GLabel 5850 5350 2    60   Input ~ 0
SPI1_MISO
Text GLabel 5250 5250 2    60   Input ~ 0
SPI1_SCK
$Comp
L GND #PWR013
U 1 1 572AC1F8
P 4150 5650
F 0 "#PWR013" H 4150 5400 50  0001 C CNN
F 1 "GND" H 4150 5500 50  0000 C CNN
F 2 "" H 4150 5650 60  0000 C CNN
F 3 "" H 4150 5650 60  0000 C CNN
	1    4150 5650
	1    0    0    -1  
$EndComp
Text GLabel 8800 3450 0    60   Input ~ 0
LCD_CS
Text GLabel 4400 5250 0    60   Input ~ 0
LCD_CS
Text GLabel 3900 5350 0    60   Input ~ 0
LCD_RST
Text GLabel 4400 5450 0    60   Input ~ 0
LCD_DC
Text GLabel 8350 3350 0    60   Input ~ 0
LCD_RST
Text GLabel 8800 3250 0    60   Input ~ 0
LCD_DC
$Comp
L R R33
U 1 1 572AF737
P 5600 5650
F 0 "R33" V 5807 5650 50  0000 C CNN
F 1 "R_LCD_LED" V 5716 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5530 5650 50  0001 C CNN
F 3 "" H 5600 5650 50  0000 C CNN
	1    5600 5650
	0    1    -1   0   
$EndComp
$Comp
L +5V #PWR014
U 1 1 572B3B9C
P 6750 5450
F 0 "#PWR014" H 6750 5300 50  0001 C CNN
F 1 "+5V" H 6750 5590 50  0000 C CNN
F 2 "" H 6750 5450 60  0000 C CNN
F 3 "" H 6750 5450 60  0000 C CNN
	1    6750 5450
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P9
U 1 1 572F2BA1
P 8000 4400
F 0 "P9" H 8078 4441 50  0000 L CNN
F 1 "CONN_SCT" H 8078 4350 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 8000 4400 50  0001 C CNN
F 3 "" H 8000 4400 50  0000 C CNN
	1    8000 4400
	1    0    0    -1  
$EndComp
Text GLabel 4350 3600 0    60   Input ~ 0
SCT_IN
Text GLabel 7500 4150 0    60   Input ~ 0
SCT_IN
$Comp
L +3.3V #PWR015
U 1 1 572F3219
P 6850 4100
F 0 "#PWR015" H 6850 3950 50  0001 C CNN
F 1 "+3.3V" H 6850 4240 50  0000 C CNN
F 2 "" H 6850 4100 60  0000 C CNN
F 3 "" H 6850 4100 60  0000 C CNN
	1    6850 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 572F337B
P 7050 4850
F 0 "#PWR016" H 7050 4600 50  0001 C CNN
F 1 "GND" H 7050 4700 50  0000 C CNN
F 2 "" H 7050 4850 60  0000 C CNN
F 3 "" H 7050 4850 60  0000 C CNN
	1    7050 4850
	1    0    0    -1  
$EndComp
$Comp
L R R35
U 1 1 572F34DE
P 6850 4250
F 0 "R35" H 6920 4296 50  0000 L CNN
F 1 "R" H 6920 4205 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6780 4250 50  0001 C CNN
F 3 "" H 6850 4250 50  0000 C CNN
	1    6850 4250
	1    0    0    -1  
$EndComp
$Comp
L R R36
U 1 1 572F35F4
P 6850 4600
F 0 "R36" H 6920 4646 50  0000 L CNN
F 1 "R" H 6920 4555 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6780 4600 50  0001 C CNN
F 3 "" H 6850 4600 50  0000 C CNN
	1    6850 4600
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 572F38F4
P 7200 4600
F 0 "C1" H 7318 4646 50  0000 L CNN
F 1 "CP" H 7318 4555 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2" H 7238 4450 50  0001 C CNN
F 3 "" H 7200 4600 50  0000 C CNN
	1    7200 4600
	1    0    0    -1  
$EndComp
Text GLabel 4100 2800 0    60   Input ~ 0
RS_RX
Text GLabel 4100 2600 0    60   Input ~ 0
RS_TX
$Comp
L CONN_01X04 P13
U 1 1 5731D7CF
P 2350 3650
F 0 "P13" H 2350 3900 50  0000 C CNN
F 1 "CONN_RS485_IN" V 2450 3650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 2350 3650 60  0001 C CNN
F 3 "" H 2350 3650 60  0000 C CNN
	1    2350 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P12
U 1 1 5731D900
P 1800 2250
F 0 "P12" H 1800 2500 50  0000 C CNN
F 1 "CONN_RS485_OUT" V 1900 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 1800 2250 60  0001 C CNN
F 3 "" H 1800 2250 60  0000 C CNN
	1    1800 2250
	1    0    0    -1  
$EndComp
Text GLabel 4500 3000 0    60   Input ~ 0
RS_DE
Text GLabel 1550 3600 0    60   Input ~ 0
RS_DE
Text GLabel 2150 3800 0    60   Input ~ 0
RS_TX
Text GLabel 2150 3500 0    60   Input ~ 0
RS_RX
$Comp
L +5V #PWR017
U 1 1 5731E393
P 1400 2050
F 0 "#PWR017" H 1400 1900 50  0001 C CNN
F 1 "+5V" H 1400 2190 50  0000 C CNN
F 2 "" H 1400 2050 60  0000 C CNN
F 3 "" H 1400 2050 60  0000 C CNN
	1    1400 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5731E3CA
P 1400 2550
F 0 "#PWR018" H 1400 2300 50  0001 C CNN
F 1 "GND" H 1400 2400 50  0000 C CNN
F 2 "" H 1400 2550 60  0000 C CNN
F 3 "" H 1400 2550 60  0000 C CNN
	1    1400 2550
	1    0    0    -1  
$EndComp
Text GLabel 5950 1900 2    60   Input ~ 0
ETH_RST
Text GLabel 4100 2400 0    60   Input ~ 0
ETH_CS
Text GLabel 8250 3150 0    60   Input ~ 0
SD_CS
$Comp
L CONN_02X05 P7
U 1 1 5732EADC
P 4850 5450
F 0 "P7" H 4850 5750 50  0000 C CNN
F 1 "CONN_LCD_SD" H 4850 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 4850 4250 60  0001 C CNN
F 3 "" H 4850 4250 60  0000 C CNN
	1    4850 5450
	1    0    0    -1  
$EndComp
Text GLabel 3850 5550 0    60   Input ~ 0
SD_CS
$Comp
L CONN_01X05 P16
U 1 1 57337E5A
P 3050 1300
F 0 "P16" H 3050 1550 50  0000 C CNN
F 1 "CONN_EXTI2C" V 3150 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 3050 1300 60  0001 C CNN
F 3 "" H 3050 1300 60  0000 C CNN
	1    3050 1300
	1    0    0    -1  
$EndComp
Text GLabel 2150 1400 0    60   Input ~ 0
I2C1_SCL
Text GLabel 2750 1300 0    60   Input ~ 0
I2C1_SDA
$Comp
L GND #PWR019
U 1 1 573383E2
P 1450 1200
F 0 "#PWR019" H 1450 950 50  0001 C CNN
F 1 "GND" H 1450 1050 50  0000 C CNN
F 2 "" H 1450 1200 60  0000 C CNN
F 3 "" H 1450 1200 60  0000 C CNN
	1    1450 1200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 573384B1
P 2750 1050
F 0 "#PWR020" H 2750 900 50  0001 C CNN
F 1 "+5V" H 2750 1190 50  0000 C CNN
F 2 "" H 2750 1050 60  0000 C CNN
F 3 "" H 2750 1050 60  0000 C CNN
	1    2750 1050
	1    0    0    -1  
$EndComp
Text GLabel 8850 1850 0    60   Input ~ 0
I2C1_SDA
Text GLabel 8300 1750 0    60   Input ~ 0
I2C1_SCL
Text GLabel 3950 3500 0    60   Input ~ 0
1WIRE_IN
$Comp
L CONN_01X03 P18
U 1 1 5733A232
P 4800 4550
F 0 "P18" H 4878 4591 50  0000 L CNN
F 1 "CONN_1WIRE" H 4878 4500 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4800 4550 50  0001 C CNN
F 3 "" H 4800 4550 50  0000 C CNN
	1    4800 4550
	1    0    0    -1  
$EndComp
Text GLabel 4600 4550 0    60   Input ~ 0
1WIRE_IN
$Comp
L +3.3V #PWR021
U 1 1 5733BF71
P 4300 4300
F 0 "#PWR021" H 4300 4150 50  0001 C CNN
F 1 "+3.3V" H 4300 4440 50  0000 C CNN
F 2 "" H 4300 4300 60  0000 C CNN
F 3 "" H 4300 4300 60  0000 C CNN
	1    4300 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5733BFD9
P 4300 4750
F 0 "#PWR022" H 4300 4500 50  0001 C CNN
F 1 "GND" H 4300 4600 50  0000 C CNN
F 2 "" H 4300 4750 60  0000 C CNN
F 3 "" H 4300 4750 60  0000 C CNN
	1    4300 4750
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P15
U 1 1 5734225A
P 6250 3200
F 0 "P15" H 6250 3515 50  0000 C CNN
F 1 "CONN_EXT2" H 6250 3424 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 6250 2000 50  0001 C CNN
F 3 "" H 6250 2000 50  0000 C CNN
	1    6250 3200
	1    0    0    -1  
$EndComp
Text GLabel 10150 1650 2    60   Input ~ 0
I2C_GPIO
Text GLabel 2750 1500 0    60   Input ~ 0
I2C_GPIO
Text GLabel 4700 2500 0    60   Input ~ 0
EXT_SPI_SS
Text GLabel 5200 6950 0    60   Input ~ 0
EXT_SPI_SS
Text GLabel 5150 7150 0    60   Input ~ 0
SPI3_SCK
$Comp
L CONN_01X06 P19
U 1 1 5734A2DB
P 5500 7000
F 0 "P19" H 5500 7350 50  0000 C CNN
F 1 "CONN_EXT_SPI" V 5600 7000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 5500 7000 60  0001 C CNN
F 3 "" H 5500 7000 60  0000 C CNN
	1    5500 7000
	1    0    0    -1  
$EndComp
Text GLabel 4600 7050 0    60   Input ~ 0
SPI3_MISO
Text GLabel 4600 7250 0    60   Input ~ 0
SPI3_MOSI
$Comp
L +5V #PWR023
U 1 1 5734A4A6
P 4150 6850
F 0 "#PWR023" H 4150 6700 50  0001 C CNN
F 1 "+5V" H 4150 6990 50  0000 C CNN
F 2 "" H 4150 6850 60  0000 C CNN
F 3 "" H 4150 6850 60  0000 C CNN
	1    4150 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5734A4ED
P 4650 6600
F 0 "#PWR024" H 4650 6350 50  0001 C CNN
F 1 "GND" H 4650 6450 50  0000 C CNN
F 2 "" H 4650 6600 60  0000 C CNN
F 3 "" H 4650 6600 60  0000 C CNN
	1    4650 6600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P20
U 1 1 57419091
P 5300 950
F 0 "P20" H 5378 991 50  0000 L CNN
F 1 "CON_BME" H 5378 900 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 5300 950 50  0001 C CNN
F 3 "" H 5300 950 50  0000 C CNN
	1    5300 950 
	1    0    0    -1  
$EndComp
Text GLabel 4550 1100 0    60   Input ~ 0
I2C1_SCL
Text GLabel 5050 1000 0    60   Input ~ 0
I2C1_SDA
$Comp
L GND #PWR025
U 1 1 5741922D
P 3950 900
F 0 "#PWR025" H 3950 650 50  0001 C CNN
F 1 "GND" H 3950 750 50  0000 C CNN
F 2 "" H 3950 900 60  0000 C CNN
F 3 "" H 3950 900 60  0000 C CNN
	1    3950 900 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR026
U 1 1 57419326
P 4850 750
F 0 "#PWR026" H 4850 600 50  0001 C CNN
F 1 "+5V" H 4850 890 50  0000 C CNN
F 2 "" H 4850 750 60  0000 C CNN
F 3 "" H 4850 750 60  0000 C CNN
	1    4850 750 
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 5768580D
P 8300 850
F 0 "P3" H 8300 1000 50  0000 C CNN
F 1 "POWER_24V_CON" V 8400 850 50  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 8300 850 60  0001 C CNN
F 3 "" H 8300 850 60  0000 C CNN
	1    8300 850 
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR027
U 1 1 57685F0E
P 8450 1050
F 0 "#PWR027" H 8450 900 50  0001 C CNN
F 1 "+24V" H 8450 1190 50  0000 C CNN
F 2 "" H 8450 1050 60  0000 C CNN
F 3 "" H 8450 1050 60  0000 C CNN
	1    8450 1050
	0    1    1    0   
$EndComp
Text GLabel 8100 1050 0    60   Input ~ 0
GND_24V
Text GLabel 2250 5150 2    60   Input ~ 0
I2C1_SCL
Text GLabel 2250 5350 2    60   Input ~ 0
I2C1_SDA
Text GLabel 8850 1650 0    60   Input ~ 0
I2C1_GPIO
Text GLabel 2250 5550 2    60   Input ~ 0
I2C1_GPIO
$Sheet
S 1250 6250 550  700 
U 5729DAE6
F0 "nucleo_shield_output" 60
F1 "nucleo_shield_output.sch" 60
F2 "SRDATA" I R 1800 6450 60 
F3 "SRCLK" I R 1800 6600 60 
F4 "SRLatch" I R 1800 6750 60 
$EndSheet
Text Label 8750 2150 2    60   ~ 0
PA5
Text Label 8500 2250 2    60   ~ 0
PA6
Text Label 8750 2350 2    60   ~ 0
PA7
Text Label 10050 2150 0    60   ~ 0
PA12
Text Label 10300 2250 0    60   ~ 0
PA11
Text Label 10050 2350 0    60   ~ 0
PB12
Text Label 9700 4300 2    60   ~ 0
PA5
Text Label 10000 4200 2    60   ~ 0
PA12
Text Label 9700 4500 2    60   ~ 0
PA6
Text Label 10000 4400 2    60   ~ 0
PA11
Text Label 9700 4700 2    60   ~ 0
PA7
Text Label 10000 4600 2    60   ~ 0
PB12
$Comp
L GND #PWR028
U 1 1 576AD6D1
P 10700 4900
F 0 "#PWR028" H 10700 4650 50  0001 C CNN
F 1 "GND" H 10700 4750 50  0000 C CNN
F 2 "" H 10700 4900 60  0000 C CNN
F 3 "" H 10700 4900 60  0000 C CNN
	1    10700 4900
	1    0    0    -1  
$EndComp
Text GLabel 8550 2450 0    60   Input ~ 0
SRCLK
Wire Wire Line
	9900 2550 11150 2550
Wire Wire Line
	4500 2700 4700 2700
Wire Wire Line
	5700 2600 6900 2600
Wire Wire Line
	6000 2600 6000 2550
Wire Wire Line
	5850 2500 5700 2500
Wire Wire Line
	6000 2100 5700 2100
Wire Wire Line
	5700 2800 5900 2800
Wire Wire Line
	5900 2800 5900 2700
Wire Wire Line
	5700 2700 6000 2700
Connection ~ 5900 2700
Wire Wire Line
	10000 2650 9900 2650
Wire Wire Line
	9900 2750 10600 2750
Wire Wire Line
	7000 1100 7100 1100
Wire Wire Line
	6900 1100 6750 1100
Wire Wire Line
	5700 2000 7100 2000
Wire Wire Line
	1800 6450 2150 6450
Wire Wire Line
	1800 6600 2250 6600
Wire Wire Line
	1800 6750 2150 6750
Wire Wire Line
	8300 2750 8950 2750
Wire Wire Line
	6450 1800 5700 1800
Wire Wire Line
	4400 1750 4700 1750
Wire Wire Line
	4700 1750 4700 1800
Wire Wire Line
	4700 1900 4450 1900
Wire Wire Line
	8700 2650 8950 2650
Wire Wire Line
	8950 2950 8850 2950
Wire Wire Line
	1850 4550 2300 4550
Wire Wire Line
	2300 4750 1850 4750
Wire Wire Line
	1850 4950 2300 4950
Wire Wire Line
	8300 5300 8000 5300
Wire Wire Line
	8000 5300 8000 5250
Wire Wire Line
	7750 5500 8300 5500
Wire Wire Line
	8800 5400 9450 5400
Wire Wire Line
	5100 5450 5250 5450
Wire Wire Line
	5850 5350 5100 5350
Wire Wire Line
	5100 5250 5250 5250
Wire Wire Line
	4600 5650 4150 5650
Wire Wire Line
	10000 3050 9900 3050
Wire Wire Line
	9900 2950 10550 2950
Wire Wire Line
	10000 2850 9900 2850
Wire Wire Line
	8950 3250 8800 3250
Wire Wire Line
	4600 5250 4400 5250
Wire Wire Line
	8950 3350 8350 3350
Wire Wire Line
	4600 5350 3900 5350
Wire Wire Line
	4400 5450 4600 5450
Wire Wire Line
	5450 5650 5100 5650
Wire Wire Line
	6050 5650 5750 5650
Wire Wire Line
	7500 2050 8950 2050
Wire Wire Line
	4700 3600 4350 3600
Wire Wire Line
	6850 4400 6850 4450
Wire Wire Line
	6850 4450 7800 4450
Connection ~ 7200 4450
Wire Wire Line
	6850 4750 7200 4750
Wire Wire Line
	7050 4750 7050 4850
Connection ~ 7050 4750
Wire Wire Line
	7500 4150 7500 4350
Wire Wire Line
	7500 4350 7800 4350
Wire Wire Line
	8950 3450 8800 3450
Wire Wire Line
	4100 2600 4700 2600
Wire Wire Line
	4100 2800 4700 2800
Wire Wire Line
	4700 3000 4500 3000
Wire Wire Line
	1550 3600 2150 3600
Wire Wire Line
	2050 3600 2050 3700
Wire Wire Line
	2050 3700 2150 3700
Connection ~ 2050 3600
Wire Wire Line
	1400 2050 1400 2100
Wire Wire Line
	1400 2100 1600 2100
Wire Wire Line
	1600 2400 1400 2400
Wire Wire Line
	1400 2400 1400 2550
Wire Wire Line
	8300 5600 7150 5600
Wire Wire Line
	5700 1900 5950 1900
Wire Wire Line
	4100 2400 4700 2400
Wire Wire Line
	8250 3150 8950 3150
Wire Wire Line
	4600 5550 3850 5550
Wire Wire Line
	5100 5550 6750 5550
Wire Wire Line
	6050 5550 6050 5650
Connection ~ 6050 5550
Wire Wire Line
	6750 5550 6750 5450
Wire Wire Line
	5700 3100 6000 3100
Wire Wire Line
	6000 3200 5700 3200
Wire Wire Line
	5700 3300 6000 3300
Wire Wire Line
	5700 3400 6500 3400
Wire Wire Line
	5700 3500 6600 3500
Wire Wire Line
	5700 3600 6700 3600
Connection ~ 6000 2600
Connection ~ 6900 2000
Wire Wire Line
	2750 1500 2850 1500
Wire Wire Line
	2850 1400 2150 1400
Wire Wire Line
	2850 1200 1450 1200
Wire Wire Line
	2750 1050 2750 1100
Wire Wire Line
	2750 1100 2850 1100
Wire Wire Line
	8300 1750 8950 1750
Wire Wire Line
	8850 1850 8950 1850
Wire Wire Line
	3950 3500 4700 3500
Wire Wire Line
	4300 4300 4300 4450
Wire Wire Line
	4300 4450 4600 4450
Wire Wire Line
	4600 4650 4300 4650
Wire Wire Line
	4300 4650 4300 4750
Wire Wire Line
	6600 3500 6600 3200
Wire Wire Line
	6600 3200 6500 3200
Wire Wire Line
	6500 3100 6700 3100
Wire Wire Line
	6700 3100 6700 3600
Wire Wire Line
	6500 3400 6500 3300
Wire Wire Line
	2750 1300 2850 1300
Wire Wire Line
	8850 1650 8950 1650
Wire Wire Line
	4150 6850 5300 6850
Wire Wire Line
	5200 6950 5300 6950
Wire Wire Line
	5300 7050 4600 7050
Wire Wire Line
	5150 7150 5300 7150
Wire Wire Line
	5300 7250 4600 7250
Wire Wire Line
	5300 6750 5000 6750
Wire Wire Line
	5000 6750 5000 6550
Wire Wire Line
	5000 6550 4650 6550
Wire Wire Line
	4650 6550 4650 6600
Wire Wire Line
	4550 1100 5100 1100
Wire Wire Line
	5100 1000 5050 1000
Wire Wire Line
	5100 900  3950 900 
Wire Wire Line
	4850 750  4850 800 
Wire Wire Line
	4850 800  5100 800 
Wire Wire Line
	6900 2600 6900 2000
Wire Wire Line
	8350 1050 8450 1050
Wire Wire Line
	8250 1050 8100 1050
Wire Wire Line
	10150 1650 9900 1650
Wire Wire Line
	1850 5150 2250 5150
Wire Wire Line
	2250 5350 1850 5350
Wire Wire Line
	2250 5550 1850 5550
Wire Wire Line
	8950 2350 8750 2350
Wire Wire Line
	8550 2450 8950 2450
Wire Wire Line
	8950 2250 8500 2250
Wire Wire Line
	8750 2150 8950 2150
Wire Wire Line
	10050 2150 9900 2150
Wire Wire Line
	9900 2250 10300 2250
Wire Wire Line
	10050 2350 9900 2350
Wire Wire Line
	10100 4200 10000 4200
Wire Wire Line
	10000 4400 10100 4400
Wire Wire Line
	10100 4300 9700 4300
Wire Wire Line
	10100 4600 10000 4600
Wire Wire Line
	9700 4700 10100 4700
Wire Wire Line
	10700 4700 10600 4700
Wire Wire Line
	10700 4200 10600 4200
Connection ~ 10700 4200
Wire Wire Line
	10700 4300 10600 4300
Connection ~ 10700 4300
Wire Wire Line
	10700 4400 10600 4400
Connection ~ 10700 4400
Wire Wire Line
	10700 4500 10600 4500
Connection ~ 10700 4500
Wire Wire Line
	10700 4600 10600 4600
Connection ~ 10700 4600
Wire Wire Line
	10100 4500 9700 4500
Connection ~ 10700 4700
$Comp
L CONN_02X06 P14
U 1 1 576B1D03
P 10350 4450
F 0 "P14" H 10350 4800 50  0000 C CNN
F 1 "CONN_02X06" H 10350 4100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06" H 10350 3250 60  0001 C CNN
F 3 "" H 10350 3250 60  0000 C CNN
	1    10350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 4200 10700 4900
$Comp
L CONN_01X04 P21
U 1 1 577A3700
P 10600 900
F 0 "P21" H 10678 941 50  0000 L CNN
F 1 "CON_BH" H 10678 850 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 10600 900 50  0001 C CNN
F 3 "" H 10600 900 50  0000 C CNN
	1    10600 900 
	1    0    0    -1  
$EndComp
Text GLabel 9850 1050 0    60   Input ~ 0
I2C1_SCL
Text GLabel 10350 950  0    60   Input ~ 0
I2C1_SDA
$Comp
L GND #PWR029
U 1 1 577A3708
P 9250 850
F 0 "#PWR029" H 9250 600 50  0001 C CNN
F 1 "GND" H 9250 700 50  0000 C CNN
F 2 "" H 9250 850 60  0000 C CNN
F 3 "" H 9250 850 60  0000 C CNN
	1    9250 850 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR030
U 1 1 577A370E
P 10150 700
F 0 "#PWR030" H 10150 550 50  0001 C CNN
F 1 "+5V" H 10150 840 50  0000 C CNN
F 2 "" H 10150 700 60  0000 C CNN
F 3 "" H 10150 700 60  0000 C CNN
	1    10150 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1050 10400 1050
Wire Wire Line
	10400 950  10350 950 
Wire Wire Line
	10400 850  9250 850 
Wire Wire Line
	10150 700  10150 750 
Wire Wire Line
	10150 750  10400 750 
$EndSCHEMATC
