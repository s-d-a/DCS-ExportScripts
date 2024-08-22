-- F-15E Export 25 July 2023
-- IF YOU ARE USING NORSK-L's STREAMDECK PROFILE THEN YOU MUST SET THE FOLLOWING LINE to "TRUE"
Norsk_UFC = "FALSE" -- "TRUE" or "FALSE"

-- version 0.82
-- aded SpeedBrake % display to ID 6579 by user request

-- version 0.81
-- removed duplicate guage (383) found by a user.

-- version 0.8
-- Altered TOLTAL LBS label to TOTAL on 7368 (user request)
-- Add Oxygen PSI output, with label to 6554 (user request)
-- Added Basic Aircraft Data Function and added Current Magnetic Heading Readout to 6015 (user request)
-- Investigated HUD Data VVI (6009) as reported not working by user - no issue found?
-- Updated UFC data exports because of changes in patch 2.8.7.42583

-- To Do List:

-- Fix any issues with HUD data (yes I'm pretty sure there will be some) and expand it if possible
-- Check all argument values and convert to 1d or .1f where possible, only leaving .2f and .3f if actually needed
-- Create option to turn field labels on/off maybe?
--------------------------------------------------------------------------------------------------------------
-- version 0.7a
-- quick fix for the UFC crashes on GC align or when selecting the PP-EGI option - the F15 sends a really dodgy character that is being sent by the sim which is ok unless its in a modified string with escape characters...
-- then the export script dies a death and kills the streamdeck integration code as well

-- version 0.7
-- Had a good neaten up of all the argument values - no IDs have changed on these and no formats (so if it was .2f before it is still .2f now)
-- But I do want to redo these before this gets finalised so if decimal places are not needed then they do not get exported
-- Implemented the first round of HUD data display. You can call a single element or get blocks of data:
	-- 0		- Combined Speed & Alt 6001
	-- Speed	- the speed as diaplyed in HUD 6002
	-- AoA		- value diaplyed in HUD 6003
	-- Mach		- as in HUD 6005
	-- GMet		- The G readout, which I guess is current G and Max G? 6006
	-- HDG		- This is the heading caret on teh tape 6007
	-- Alt		- The altitude as diaplyed in the HUD (BARO only I think) 6008
	-- VVI		- The VVI, with spaces removed 6009
	-- AA		- I think this data is the weapon selected in AA mode? No ID Set
	-- UPLEFT	- Speed and AoA from the left side 6011
	-- LOLEFT	- Fields from the bottom left, so G AA weapon, mach and G meter 6012
	-- UPRIGHT	- Alt and VVI from the right side 6013
	-- LORIGHT	- Nearly the same as NAV but without the very bottom row of digits...what are they anyway?
-- Included a radio export as it's not easy to see the frequency when using presets. This draws data from the core sim to supplement the UFC info, separate items or a combined view available 6501 & 6504

-- version 0.6a typo corrected! 
-- version 0.6 
-- Fixed Left/Right Fuel Counters reading an extra 1000 lbs when < 100 lbs from next thousand - needed new function RoundDP()
-- Setup Export IDs for each data elements of the Fuel Display - THIS MEANS THE COMBINED DISPLAY HAS CHANGED DCSID from 8383 to 83830
-- Setup Export IDs for each of the data elements of the Engine Management Display
-- Moved UFC Display  to Functions and re-formated strings to fit better in single tile (!!!!!!!!NEEDS LOTS OF TESTING!!!!!!! and some documentation!

-- version 0.5c (Norsk-L)
-- Fixed intermitent UFC hangs when : character is present in string

-- version 0.5b (Norsk-L)
-- This version maintains full UFC campatability with Norsk-L's excellent StreamDeck PROFILE

-- version 0.5
-- Re-formatted some stuff for readability, more to be done...
-- Added a combined EMD to 81100 - use a font size of 6 or 7 centered to display. This function can also be used to extract each EMD element seperately (see notes in function section)
-- Added a combined Fuel guage to 8383 - use a font size of 6 or 7 centered to display. This function can also be used to extract each element seperately (see notes in function)
-- Added a simple Fuel Totalizer Readout to 8368 to fulfil a user request

-- version 0.4
-- Added WSO UFC Display, Changed A Few Control Knobs To 3 Decimal Places
-- NOTE: THIS VERSION FOLLOWS MY FORMAT FOR UFC OUTPUT AND IS NOT COMPATIBLE WITH NORSK-L'S PROFILE AS THEY TOOK A DIFFERENT NUMBER STRATGEY
-- I WILL CREATE A VERSION THAT IS FULLY COMPATIBLE FOR THE NEXT RELEASE

-- version 0.3b
--  Fixed My Silly Right Hand UFC Mistake

-- version 0.3
-- Added Basic UFC Display

-- version 0.2
-- Added Indicator Lights
-- Corrected Aircraft Name

-- F-15E Export 28 June 2023
-- version 0.6a (Norsk-L)
-- Fixed Left/Right Fuel Counters reading an extra 1000 ibs when < 100 lbs from next thousand - needed new function RoundDP()
-- Setup Export IDs for each data elements of the Fuel Display - THIS MEANS THE COMBINED DISPLAY HAS CHANGED DCSID from 8383 to 83830
-- Setup Export IDs for each of the data elements of the Engine Management Display
-- Moved UFC Display Fields to Functions and re-formated strings to fit better in single tile (!!!!!!!!NEEDS LOTS OF TESTING!!!!!!!)

-- version 0.5c (Norsk-L)
-- Fixed intermitent UFC hangs when : character is present in string

-- version 0.5b (Norsk-L)
-- This version maintains full UFC campatability with Norsk-L's excellent StreamDeck PROFILE
-- Added a combined EMD to 81100 - use a font size of 6 or 7 centered to display. This function can also be used to extract each EMD element seperately (see notes in function section)
-- Added a combined Fuel guage to 8383 - use a font size of 6 or 7 centered to display. This function can also be used to extract each element seperately (see notes in function)
-- Added a simple Fuel Totalizer Readout to 8368 to fulfil a user request
--------------------------------------------------------------------------------------------------------------
ExportScript.FoundDCSModule = true
ExportScript.Version.F15ESE= "1.2.1"
ExportScript.ConfigEveryFrameArguments = 	-- arguments for export every frame (usually indicators/lights/etc)
	{
	-------------------------------------------------------------------
	-- PILOT COCKPIT
	-------------------------------------------------------------------
		--  Altimeter Gauge
			[353]	= "%.2f",	-- PILOT Altimeter 100 ft count
			[354]	= "%.2f",	-- PILOT Altimeter 1000 ft count
			[355]	= "%.2f",	-- PILOT Altimeter 10000 ft count
			[352]	= "%.2f",	-- PILOT Altimeter Needle
			[356]	= "%.2f",	-- PILOT Altimeter Pressure Drum 0
			[357]	= "%.2f",	-- PILOT Altimeter Pressure Drum 1
			[358]	= "%.2f",	-- PILOT Altimeter Pressure Drum 2
			[359]	= "%.2f",	-- PILOT Altimeter Pressure Drum 3
		--  AMAD Panel Lights
			[130]	= "%.2f",	-- PILOT AMAD Fire Light (red)
			[133]	= "%.2f",	-- PILOT AMAD Left Engine Burn Throu Light (red)
			[131]	= "%.2f",	-- PILOT AMAD Left Engine Fire Light (red)
			[134]	= "%.2f",	-- PILOT AMAD Right Engine Burn Throu Light (red)
			[132]	= "%.2f",	-- PILOT AMAD Right Engine Fire Light (red)
		--  Attitute Gauge
			[351]	= "%.2f",	-- PILOT SAI Aircraft Reference Symbol
			[348]	= "%.2f",	-- PILOT SAI Bank
			[347]	= "%.2f",	-- PILOT SAI Off Flag
			[349]	= "%.2f",	-- PILOT SAI Pitch
		--  Canopy Lights/Gauges
			[186]	= "%.2f",	-- PILOT Canopy Lamp Position
			[196]	= "%.2f",	-- PILOT LOCK / SHOOT Lights (yellow)
			[195]	= "%.2f",	-- PILOT LOCK / SHOOT Lights Brightness (yellow)
			[197]	= "%.2f",	-- PILOT Refuel Ready Light (green)
		--  CAS Lights
			[458]	= "%.2f",	-- PILOT CAS Trim Light (green)
		--  Caution and IndicatorLights
			[404]	= "%.2f",	-- PILOT AI Light (red)
			[410]	= "%.2f",	-- PILOT Auto Pilot Light (yellow)
			[408]	= "%.2f",	-- PILOT CAN UNLCKD Light (red)
			[403]	= "%.2f",	-- PILOT EMIS LMT Light (yellow)
			[409]	= "%.2f",	-- PILOT LASER ARMED Light (red)
			[406]	= "%.2f",	-- PILOT LOW ALT Light (red)
			[402]	= "%.2f",	-- PILOT MASTER CAUTION Light (yellow)
			[429]	= "%.2f",	-- PILOT OBST Light (red)
			[405]	= "%.2f",	-- PILOT SAM Light (red)
			[407]	= "%.2f",	-- PILOT TF FAIL Light (red)
		--  Engine Monitor Display
			[1114]	= "%.2f",	-- PILOT EMD Left Fuel Flow 1
			[1115]	= "%.2f",	-- PILOT EMD Left Fuel Flow 10
			[1116]	= "%.2f",	-- PILOT EMD Left Fuel Flow 100
			[1117]	= "%.2f",	-- PILOT EMD Left Fuel Flow 1000
			[1118]	= "%.2f",	-- PILOT EMD Left Fuel Flow 10000
			[1130]	= "%.2f",	-- PILOT EMD Left Nozzle Posistion
			[1124]	= "%.2f",	-- PILOT EMD Left Oli Pressure 1
			[1125]	= "%.2f",	-- PILOT EMD Left Oli Pressure 10
			[1126]	= "%.2f",	-- PILOT EMD Left Oli Pressure 100
			[1100]	= "%.2f",	-- PILOT EMD Left RPM 1
			[1101]	= "%.2f",	-- PILOT EMD Left RPM 10
			[1102]	= "%.2f",	-- PILOT EMD Left RPM 100
			[1106]	= "%.2f",	-- PILOT EMD Left Temperature 1
			[1107]	= "%.2f",	-- PILOT EMD Left Temperature 10
			[1108]	= "%.2f",	-- PILOT EMD Left Temperature 100
			[1109]	= "%.2f",	-- PILOT EMD Left Temperature 1000
			[1119]	= "%.2f",	-- PILOT EMD Right Fuel Flow 1
			[1120]	= "%.2f",	-- PILOT EMD Right Fuel Flow 10
			[1121]	= "%.2f",	-- PILOT EMD Right Fuel Flow 100
			[1122]	= "%.2f",	-- PILOT EMD Right Fuel Flow 1000
			[1123]	= "%.2f",	-- PILOT EMD Right Fuel Flow 10000
			[1131]	= "%.2f",	-- PILOT EMD Right Nozzle Posistion
			[1127]	= "%.2f",	-- PILOT EMD Right Oli Pressure 1
			[1128]	= "%.2f",	-- PILOT EMD Right Oli Pressure 10
			[1129]	= "%.2f",	-- PILOT EMD Right Oli Pressure 100
			[1103]	= "%.2f",	-- PILOT EMD Right RPM 1
			[1104]	= "%.2f",	-- PILOT EMD Right RPM 10
			[1105]	= "%.2f",	-- PILOT EMD Right RPM 100
			[1110]	= "%.2f",	-- PILOT EMD Right Temperature 1
			[1111]	= "%.2f",	-- PILOT EMD Right Temperature 10
			[1112]	= "%.2f",	-- PILOT EMD Right Temperature 100
			[1113]	= "%.2f",	-- PILOT EMD Right Temperature 1000
			[1132]	= "%.2f",	-- PILOT Engine Monitor Display ON
		--  Flight Instruments Lights/Gauges
			[434]	= "%.2f",	-- PILOT Airvent Position Horizontal
			[433]	= "%.2f",	-- PILOT Airvent Position Vertical
			[346]	= "%.2f",	-- PILOT Angle of Attack Indicator
			[361]	= "%.2f",	-- PILOT Cabin Pressure Indicator
			[365]	= "%.2f",	-- PILOT Clock Hours
			[364]	= "%.2f",	-- PILOT Clock Minutes
			[363]	= "%.2f",	-- PILOT Clock Seconds
			[755]	= "%.2f",	-- PILOT Compassrose Bank
			[753]	= "%.2f",	-- PILOT Compassrose N-S
			[754]	= "%.2f",	-- PILOT Compassrose Up/Down
			[60]	= "%.2f",	-- PILOT DTM Cartridge
			[63]	= "%.2f",	-- PILOT DTM Cartridge Pos
			[1013]	= "%.2f",	-- PILOT Lightfilter
			[389]	= "%.2f",	-- PILOT PC 1 Hydraulic Pressure Gauge
			[390]	= "%.2f",	-- PILOT PC 2 Hydraulic Pressure Gauge
			[334]	= "%.2f",	-- PILOT Pitch Ratio Gauge
			[345]	= "%.2f",	-- PILOT Standby Airspeed Indicator
			[388]	= "%.2f",	-- PILOT Utility Hydraulic Pressure Gauge
			[362]	= "%.2f",	-- PILOT Vertical Velocity Indicator
			[339]	= "%.2f",	-- PILOT FLAP Light (green)
			[338]	= "%.2f",	-- PILOT FLAP Light (yellow)
		--  Fuel Gauges
			[383]	= "%.2f",	-- PILOT Fuel Needle
			[382]	= "%.2f",	-- PILOT Fuel OFF Flag
			[370]	= "%.2f",	-- PILOT Fuel Totalizer Counter 100
			[368]	= "%.2f",	-- PILOT Fuel Totalizer Counter 10K
			[369]	= "%.2f",	-- PILOT Fuel Totalizer Counter 1K
			[374]	= "%.2f",	-- PILOT Left Fuel Counter 100
			[373]	= "%.2f",	-- PILOT Left Fuel Counter 1K
			[378]	= "%.2f",	-- PILOT Right Fuel Counter 100
			[377]	= "%.2f",	-- PILOT Right Fuel Counter 1K
		--  Generators Lights
			[596]	= "%.2f",	-- PILOT Starter Ready Light (green)
		--  HUD Control Panel Lights
			[326]	= "%.2f",	-- PILOT HUD Master Mode AA Light (white)
			[327]	= "%.2f",	-- PILOT HUD Master Mode AG Light (white)
			[329]	= "%.2f",	-- PILOT HUD Master Mode INST Light (white)
			[328]	= "%.2f",	-- PILOT HUD Master Mode NAV Light (white)
		--  IFF Lights
			[541]	= "%.2f",	-- PILOT IFF REPLY Light (white)
		--  Internal Lights
			[185]	= "%.2f",	-- PILOT Canopy Lamp (green)
			[184]	= "%.2f",	-- PILOT Compass Light (white)
			[180]	= "%.2f",	-- PILOT Flood Light (green)
			[181]	= "%.2f",	-- PILOT Indicator Lights (multi)
			[182]	= "%.2f",	-- PILOT Instrument Light (white)
			[183]	= "%.2f",	-- PILOT Panel Light (white)
			[179]	= "%.2f",	-- PILOT PILOT Panel Backlight (white)
			[178]	= "%.2f",	-- PILOT UFC Backlight (red)
		--  Landing Gear Panel Lights
			[333]	= "%.2f",	-- PILOT Langing Gear Handle Light (red)
			[331]	= "%.2f",	-- PILOT Langing Gear LEFT Light (green)
			[331]	= "%.2f",	-- PILOT Langing Gear LEFT Light (red)
			[330]	= "%.2f",	-- PILOT Langing Gear NOSE Light (green)
			[330]	= "%.2f",	-- PILOT Langing Gear NOSE Light (red)
			[332]	= "%.2f",	-- PILOT Langing Gear RIGHT Light (green)
			[332]	= "%.2f",	-- PILOT Langing Gear RIGHT Light (red)
		--  Main Caution Lights Panel
			[432]	= "%.2f",	-- PILOT 4x SPARE Lights (white)
			[424]	= "%.2f",	-- PILOT AV BIT Light (white)
			[416]	= "%.2f",	-- PILOT BST SYS MAL Light (white)
			[413]	= "%.2f",	-- PILOT CHAFF Light (white)
			[425]	= "%.2f",	-- PILOT DSPFLOLO Light (white)
			[415]	= "%.2f",	-- PILOT EMER BST ON Light (white)
			[421]	= "%.2f",	-- PILOT ENGINE Light (white)
			[414]	= "%.2f",	-- PILOT FLARE Light (white)
			[422]	= "%.2f",	-- PILOT FLT CONTR Light (white)
			[418]	= "%.2f",	-- PILOT FUEL LOW Light (yellow)
			[423]	= "%.2f",	-- PILOT HYD Light (white)
			[419]	= "%.2f",	-- PILOT L GEN Light (yellow)
			[412]	= "%.2f",	-- PILOT MINIMUM Light (white)
			[417]	= "%.2f",	-- PILOT NUCLEAR Light (white)
			[426]	= "%.2f",	-- PILOT OXYGEN Light (white)
			[411]	= "%.2f",	-- PILOT PROGRAM Light (green)
			[420]	= "%.2f",	-- PILOT R GEN Light (white)
		--  Oxygen Control Panel Lights/Gauges
			[555]	= "%.2f",	-- PILOT Oxygen FLOW Indicator
			[554]	= "%.2f",	-- PILOT Oxygen Pressure Needle
			[555]	= "%.2f",	-- PILOT Oxygen FLOW Indicator as Light (white)
	-------------------------------------------------------------------
	-- WSO COCKPIT
	-------------------------------------------------------------------
		--  Altimeter Gauge
			[1357]	= "%.2f",	-- WSO Altimeter 100 ft count
			[1358]	= "%.2f",	-- WSO Altimeter 1000 ft count
			[1359]	= "%.2f",	-- WSO Altimeter 10000 ft count
			[1357]	= "%.2f",	-- WSO Altimeter Needle
			[1360]	= "%.2f",	-- WSO Altimeter Pressure Drum 0
			[1361]	= "%.2f",	-- WSO Altimeter Pressure Drum 1
			[1362]	= "%.2f",	-- WSO Altimeter Pressure Drum 2
			[1363]	= "%.2f",	-- WSO Altimeter Pressure Drum 3
		--  Attitute Gauge
			[1355]	= "%.2f",	-- WSO SAI Aircraft Reference Symbol
			[1352]	= "%.2f",	-- WSO SAI Bank
			[1351]	= "%.2f",	-- WSO SAI Off Flag
			[1353]	= "%.2f",	-- WSO SAI Pitch
		--  Canopy Lights/Gauges
			[188]	= "%.2f",	-- WSO Canopy Lamp Position
		--  Flight Instruments Gauges
			[1388]	= "%.2f",	-- WSO Airvent Position Horizontal
			[1387]	= "%.2f",	-- WSO Airvent Position Vertical
			[1349]	= "%.2f",	-- WSO Cabin Pressure Indicator
			[1381]	= "%.2f",	-- WSO Clock Hours
			[1380]	= "%.2f",	-- WSO Clock Minutes
			[1379]	= "%.2f",	-- WSO Clock Seconds
			[1014]	= "%.2f",	-- WSO Lightfilter
			[1350]	= "%.2f",	-- WSO Standby Airspeed Indicator
			[1365]	= "%.2f",	-- WSO Vertical Velocity Indicator
		--  Flight Instruments Lights
			[1344]	= "%.2f",	-- WSO FLAP Light (green)
			[1343]	= "%.2f",	-- WSO FLAP Light (yellow)
			[1333]	= "%.2f",	-- WSO HUD Master Mode AA Light (white)
			[1334]	= "%.2f",	-- WSO HUD Master Mode AG Light (white)
			[1336]	= "%.2f",	-- WSO HUD Master Mode INST Light (white)
			[1335]	= "%.2f",	-- WSO HUD Master Mode NAV Light (white)
			[1338]	= "%.2f",	-- WSO Langing Gear LEFT Light (green)
			[1337]	= "%.2f",	-- WSO Langing Gear NOSE Light (green)
			[1339]	= "%.2f",	-- WSO Langing Gear RIGHT Light (green)
			[1340]	= "%.2f",	-- WSO Langing Gear UNSAFE Light (yellow)
		--  Fuel Gauges
			[1372]	= "%.2f",	-- WSO Fuel Needle
			[1376]	= "%.2f",	-- WSO Fuel Totalizer Counter 100
			[1374]	= "%.2f",	-- WSO Fuel Totalizer Counter 10K
			[1375]	= "%.2f",	-- WSO Fuel Totalizer Counter 1K
		--  Internal Lights
			[187]	= "%.2f",	-- WSO Canopy Lamp (green)
			[191]	= "%.2f",	-- WSO Flood Lights (green)
			[192]	= "%.2f",	-- WSO Indicator Lights (multi)
			[193]	= "%.2f",	-- WSO Instrument Lights (white)
			[194]	= "%.2f",	-- WSO Panel Lights (white)
			[189]	= "%.2f",	-- WSO UFC Backlight (red)
			[190]	= "%.2f",	-- WSO UFC Panel Lights (white)
		--  Main Caution Lights Panel
			[1184]	= "%.2f",	-- WSO A/P Light (green)
			[1188]	= "%.2f",	-- WSO AI Light (red)
			[1182]	= "%.2f",	-- WSO AV BIT Light (yellow)
			[1173]	= "%.2f",	-- WSO CANOPY UNLOCKED Light (red)
			[1197]	= "%.2f",	-- WSO CHAFF Light (yellow)
			[1187]	= "%.2f",	-- WSO DISPLAY FLOW LOW Light (yellow)
			[1193]	= "%.2f",	-- WSO EMIS LMT Light (yellow)
			[1171]	= "%.2f",	-- WSO ENG FIRE LEFT Light (red)
			[1172]	= "%.2f",	-- WSO ENG FIRE RIGHT Light (red)
			[1179]	= "%.2f",	-- WSO ENGINE Light (yellow)
			[1198]	= "%.2f",	-- WSO FLARE Light (yellow)
			[1181]	= "%.2f",	-- WSO FLT CONTROL Light (yellow)
			[1194]	= "%.2f",	-- WSO FUEL LOW Light (yellow)
			[1180]	= "%.2f",	-- WSO HYD Light (yellow)
			[1191]	= "%.2f",	-- WSO L GEN Light (yellow)
			[1174]	= "%.2f",	-- WSO LOW ALT Light (red)
			[1183]	= "%.2f",	-- WSO MASTER ARM Light (green)
			[1177]	= "%.2f",	-- WSO MASTER CAUTION Light (yellow)
			[1186]	= "%.2f",	-- WSO MINIMUM Light (yellow)
			[1195]	= "%.2f",	-- WSO NUCLEAR Light (yellow)
			[1190]	= "%.2f",	-- WSO OBST Light (red)
			[1199]	= "%.2f",	-- WSO OXYGEN Light (yellow)
			[1185]	= "%.2f",	-- WSO PROGRAM Light (green)
			[1192]	= "%.2f",	-- WSO R GEN Light (yellow)
			[1189]	= "%.2f",	-- WSO SAM Light (red)
			[1178]	= "%.2f",	-- WSO TF FAIL Light (red)
			[1196]	= "%.2f",	-- WSO UNARMED NO ATF Light (yellow)
		--  Oxygen Control Panel Lights/Gauges
			[1454]	= "%.2f",	-- WSO Oxygen FLOW Indicator
			[1453]	= "%.2f",	-- WSO Oxygen Pressure Needle
			[1454]	= "%.2f",	-- WSO Oxygen FLOW Indicator as Light (white)
		--  TEWS Control Panel Lights
			[1472]	= "%.2f",	-- WSO TEWS 3x FAIL Lights (white)
	-------------------------------------------------------------------
	-- OTHER COCKPIT
	-------------------------------------------------------------------
		--  Canopy Gauges
			[38]	= "%.2f",	-- Canopy Position
	}	
ExportScript.ConfigArguments =	-- arguments for export in low tick interval based on "clickabledata.lua"
	{
	-------------------------------------------------------------------
	-- PILOT COCKPIT
	-------------------------------------------------------------------
		--  Air Condition
			[562]	= "%.1f",	-- PILOT Air Condition Auto/Manual/Off  ( DEVICE_ID: 26 DCS_ID: 3562)
			[564]	= "%.3f",	-- PILOT Air Condition Cold/Hot  ( DEVICE_ID: 26 DCS_ID: 3564)	-- EDITED
			[563]	= "%.1f",	-- PILOT Air Condition Max/Norm/Min  ( DEVICE_ID: 26 DCS_ID: 3563)
			[565]	= "%.3f",	-- PILOT Air Conditioning Source  ( DEVICE_ID: 26 DCS_ID: 3565)	-- EDITED
		--  AMAD Panel
			[314]	= "%.1f",	-- PILOT AMAD Fire Extinguisher Switch  ( DEVICE_ID: 15 DCS_ID: 3314)
			[316]	= "%.1f",	-- PILOT AMAD Fire Switch  ( DEVICE_ID: 15 DCS_ID: 3316)
			[315]	= "%.1f",	-- PILOT AMAD Fire Switch Cover  ( DEVICE_ID: 15 DCS_ID: 3315)
			[318]	= "%.1f",	-- PILOT AMAD Left Engine Fire Switch  ( DEVICE_ID: 15 DCS_ID: 3318)
			[317]	= "%.1f",	-- PILOT AMAD Left Engine Fire Switch Cover  ( DEVICE_ID: 15 DCS_ID: 3317)
			[320]	= "%.1f",	-- PILOT AMAD Right Engine Fire Switch  ( DEVICE_ID: 15 DCS_ID: 3320)
			[319]	= "%.1f",	-- PILOT AMAD Right Engine Fire Switch Cover  ( DEVICE_ID: 15 DCS_ID: 3319)
		--  Anti Ice
			[561]	= "%.1f",	-- PILOT Engine Heat Switch  ( DEVICE_ID: 26 DCS_ID: 3561)
			[560]	= "%.1f",	-- PILOT Pitot Heat Switch  ( DEVICE_ID: 26 DCS_ID: 3560)
			[559]	= "%.1f",	-- PILOT Windshield Anti-ice Switch  ( DEVICE_ID: 26 DCS_ID: 3559)
		--  Armament Panel
			[340]	= "%.1f",	-- PILOT Armament Emergency Jettison Button  ( DEVICE_ID: 44 DCS_ID: 3340)
			[322]	= "%.1f",	-- PILOT Armament Jettison Button  ( DEVICE_ID: 44 DCS_ID: 3322)
			[321]	= "%.3f",	-- PILOT Armament Jettison Selector  ( DEVICE_ID: 44 DCS_ID: 3321)	-- EDITED
			[323]	= "%.1f",	-- PILOT Armament Panel Master Arm  ( DEVICE_ID: 44 DCS_ID: 3323)
		--  Brake Panel
			[386]	= "%.1f",	-- PILOT JFS Control Handle PULL  ( DEVICE_ID: 6 DCS_ID: 3386)
			[430]	= "%.1f",	-- PILOT JFS Control Handle ROTATE  ( DEVICE_ID: 6 DCS_ID: 3430)
			[387]	= "%.1f",	-- PILOT Parking Brake Switch  ( DEVICE_ID: 21 DCS_ID: 3387)
		--  Canopy
			[599]	= "%.1f",	-- PILOT Canopy Handle  ( DEVICE_ID: 24 DCS_ID: 3599)
			[428]	= "%.1f",	-- PILOT Emergency Canopy Jettison  ( DEVICE_ID: 24 DCS_ID: 3428)
		--  CAS
			[455]	= "%.1f",	-- PILOT CAS BIT Button  ( DEVICE_ID: 18 DCS_ID: 3455)
			[457]	= "%.1f",	-- PILOT CAS T/O Trim Button  ( DEVICE_ID: 18 DCS_ID: 3457)
			[456]	= "%.1f",	-- PILOT CAS TF Couple Switch  ( DEVICE_ID: 18 DCS_ID: 3456)
			[454]	= "%.1f",	-- PILOT Pitch CAS Switch  ( DEVICE_ID: 18 DCS_ID: 3454)
			[453]	= "%.1f",	-- PILOT Roll CAS Switch  ( DEVICE_ID: 18 DCS_ID: 3453)
			[452]	= "%.1f",	-- PILOT Yaw CAS Switch  ( DEVICE_ID: 18 DCS_ID: 3452)
		--  Center MPCD
			[268]	= "%.1f",	-- PILOT Center MPCD Brightness Control  ( DEVICE_ID: 35 DCS_ID: 3082)
			[269]	= "%.1f",	-- PILOT Center MPCD Contrast Control  ( DEVICE_ID: 35 DCS_ID: 3083)
			[267]	= "%.1f",	-- PILOT Center MPCD Power Switch  ( DEVICE_ID: 35 DCS_ID: 3081)
			[251]	= "%.1f",	-- PILOT Center MPCD Push Button 1  ( DEVICE_ID: 35 DCS_ID: 3061)
			[250]	= "%.1f",	-- PILOT Center MPCD Push Button 2  ( DEVICE_ID: 35 DCS_ID: 3062)
			[249]	= "%.1f",	-- PILOT Center MPCD Push Button 3  ( DEVICE_ID: 35 DCS_ID: 3063)
			[248]	= "%.1f",	-- PILOT Center MPCD Push Button 4  ( DEVICE_ID: 35 DCS_ID: 3064)
			[247]	= "%.1f",	-- PILOT Center MPCD Push Button 5  ( DEVICE_ID: 35 DCS_ID: 3065)
			[266]	= "%.1f",	-- PILOT Center MPCD Push Button 6  ( DEVICE_ID: 35 DCS_ID: 3066)
			[265]	= "%.1f",	-- PILOT Center MPCD Push Button 7  ( DEVICE_ID: 35 DCS_ID: 3067)
			[264]	= "%.1f",	-- PILOT Center MPCD Push Button 8  ( DEVICE_ID: 35 DCS_ID: 3068)
			[263]	= "%.1f",	-- PILOT Center MPCD Push Button 9  ( DEVICE_ID: 35 DCS_ID: 3069)
			[262]	= "%.1f",	-- PILOT Center MPCD Push Button 10  ( DEVICE_ID: 35 DCS_ID: 3070)
			[261]	= "%.1f",	-- PILOT Center MPCD Push Button 11  ( DEVICE_ID: 35 DCS_ID: 3071)
			[260]	= "%.1f",	-- PILOT Center MPCD Push Button 12  ( DEVICE_ID: 35 DCS_ID: 3072)
			[259]	= "%.1f",	-- PILOT Center MPCD Push Button 13  ( DEVICE_ID: 35 DCS_ID: 3073)
			[258]	= "%.1f",	-- PILOT Center MPCD Push Button 14  ( DEVICE_ID: 35 DCS_ID: 3074)
			[257]	= "%.1f",	-- PILOT Center MPCD Push Button 15  ( DEVICE_ID: 35 DCS_ID: 3075)
			[256]	= "%.1f",	-- PILOT Center MPCD Push Button 16  ( DEVICE_ID: 35 DCS_ID: 3076)
			[255]	= "%.1f",	-- PILOT Center MPCD Push Button 17  ( DEVICE_ID: 35 DCS_ID: 3077)
			[254]	= "%.1f",	-- PILOT Center MPCD Push Button 18  ( DEVICE_ID: 35 DCS_ID: 3078)
			[253]	= "%.1f",	-- PILOT Center MPCD Push Button 19  ( DEVICE_ID: 35 DCS_ID: 3079)
			[252]	= "%.1f",	-- PILOT Center MPCD Push Button 20  ( DEVICE_ID: 35 DCS_ID: 3080)
		--  ECS Panel
			[558]	= "%.1f",	-- PILOT Anti-Fog  ( DEVICE_ID: 26 DCS_ID: 3558)
			[556]	= "%.1f",	-- PILOT Oxygen TEST  ( DEVICE_ID: 26 DCS_ID: 3556)
		--  Engine Panel
			[590]	= "%.1f",	-- PILOT Left Engine Control Switch  ( DEVICE_ID: 15 DCS_ID: 3590)
			[593]	= "%.1f",	-- PILOT Left Engine Master Switch  ( DEVICE_ID: 15 DCS_ID: 3593)
			[592]	= "%.1f",	-- PILOT Left Engine Master Switch Cover  ( DEVICE_ID: 15 DCS_ID: 3592)
			[591]	= "%.1f",	-- PILOT Right Engine Control Switch  ( DEVICE_ID: 15 DCS_ID: 3591)
			[598]	= "%.1f",	-- PILOT Right Engine Master Switch  ( DEVICE_ID: 15 DCS_ID: 3598)
			[597]	= "%.1f",	-- PILOT Right Engine Master Switch Cover  ( DEVICE_ID: 15 DCS_ID: 3597)
		--  External Lights Panel
			[466]	= "%.1f",	-- PILOT Anti Collison Light Switch  ( DEVICE_ID: 22 DCS_ID: 3466)
			[465]	= "%.3f",	-- PILOT Formation Lights Knob  ( DEVICE_ID: 22 DCS_ID: 3465)	-- EDITED
			[538]	= "%.1f",	-- PILOT Landing/Taxi Light Switch  ( DEVICE_ID: 22 DCS_ID: 3538)
			[467]	= "%.3f",	-- PILOT Position Lights Knob  ( DEVICE_ID: 22 DCS_ID: 3467)	-- EDITED
			[468]	= "%.1f",	-- PILOT Tail Flood Lights Knob  ( DEVICE_ID: 22 DCS_ID: 3468)
		--  Flight Instruments
			[360]	= "%.1f",	-- PILOT Altitude adjust  ( DEVICE_ID: 17 DCS_ID: 3360)
			[351]	= "%.1f",	-- PILOT Backup ADI Cage/Pitch Adjust Knob  ( DEVICE_ID: 17 DCS_ID: 3351)
			[350]	= "%.1f",	-- PILOT Backup ADI Cage/Pitch Adjust Pull  ( DEVICE_ID: 17 DCS_ID: 3350)
			[366]	= "%.1f",	-- PILOT Clock adjust  ( DEVICE_ID: 17 DCS_ID: 3366)
			[335]	= "%.1f",	-- PILOT Pitch Ratio Switch  ( DEVICE_ID: 18 DCS_ID: 3335)
			[367]	= "%.1f",	-- PILOT Timer Stop  ( DEVICE_ID: 17 DCS_ID: 3367)
		--  Fuel
			[532]	= "%.1f",	-- PILOT External Fuel Transfer  ( DEVICE_ID: 16 DCS_ID: 3532)
			[533]	= "%.1f",	-- PILOT Fuel A/R Slipway  ( DEVICE_ID: 16 DCS_ID: 3533)
			[531]	= "%.1f",	-- PILOT Fuel Conformal Tanks Emergency Transfer  ( DEVICE_ID: 16 DCS_ID: 3531)
			[528]	= "%.1f",	-- PILOT Fuel Control: Centerline Tanks  ( DEVICE_ID: 16 DCS_ID: 3528)
			[529]	= "%.1f",	-- PILOT Fuel Control: Conformal Tanks  ( DEVICE_ID: 16 DCS_ID: 3529)
			[527]	= "%.1f",	-- PILOT Fuel Control: Wing Tanks  ( DEVICE_ID: 16 DCS_ID: 3527)
			[530]	= "%.1f",	-- PILOT Fuel Dump  ( DEVICE_ID: 16 DCS_ID: 3530)
		--  Fuel Monitor Panel
			[385]	= "%.1f",	-- PILOT Fuel Bingo Selection  ( DEVICE_ID: 17 DCS_ID: 3385)
			[381]	= "%.1f",	-- PILOT Fuel Totalizer Selector  ( DEVICE_ID: 17 DCS_ID: 3381)
		--  Generators
			[589]	= "%.1f",	-- PILOT Emergency Generator  ( DEVICE_ID: 6 DCS_ID: 3589)
			[594]	= "%.1f",	-- PILOT External Power Switch  ( DEVICE_ID: 6 DCS_ID: 3594)
			[595]	= "%.1f",	-- PILOT Jet Starter  ( DEVICE_ID: 6 DCS_ID: 3595)
			[587]	= "%.1f",	-- PILOT Left Generator  ( DEVICE_ID: 6 DCS_ID: 3587)
			[588]	= "%.1f",	-- PILOT Right Generator  ( DEVICE_ID: 6 DCS_ID: 3588)
		--  Ground Power
			[483]	= "%.1f",	-- PILOT Ground Power 1 Switch  ( DEVICE_ID: 6 DCS_ID: 3483)
			[478]	= "%.1f",	-- PILOT Ground Power 2 Switch  ( DEVICE_ID: 6 DCS_ID: 3478)
			[479]	= "%.1f",	-- PILOT Ground Power 3 Switch  ( DEVICE_ID: 6 DCS_ID: 3479)
			[480]	= "%.1f",	-- PILOT Ground Power 4 Switch  ( DEVICE_ID: 6 DCS_ID: 3480)
			[484]	= "%.1f",	-- PILOT MPDP/A1U Switch  ( DEVICE_ID: 6 DCS_ID: 3484)
			[481]	= "%.1f",	-- PILOT PACS Switch  ( DEVICE_ID: 6 DCS_ID: 3481)
		--  HUD Control Panel
			[126]	= "%.1f",	-- PILOT HUD A/A Master Mode Selector  ( DEVICE_ID: 32 DCS_ID: 3126)
			[127]	= "%.1f",	-- PILOT HUD A/G Master Mode Selector  ( DEVICE_ID: 32 DCS_ID: 3127)
			[123]	= "%.1f",	-- PILOT HUD BIT Button  ( DEVICE_ID: 55 DCS_ID: 3123)
			[120]	= "%.1f",	-- PILOT HUD Brightness Control  ( DEVICE_ID: 55 DCS_ID: 3120)
			[125]	= "%.1f",	-- PILOT HUD Contrast Control  ( DEVICE_ID: 55 DCS_ID: 3125)
			[122]	= "%.1f",	-- PILOT HUD DAY/AUTO/NIGHT Mode Selector  ( DEVICE_ID: 55 DCS_ID: 3122)
			[129]	= "%.1f",	-- PILOT HUD INST Master Mode Selector  ( DEVICE_ID: 32 DCS_ID: 3129)
			[128]	= "%.1f",	-- PILOT HUD NAV Master Mode Selector  ( DEVICE_ID: 32 DCS_ID: 3128)
			[121]	= "%.1f",	-- PILOT HUD Symbology Reject Mode  ( DEVICE_ID: 55 DCS_ID: 3121)
			[124]	= "%.1f",	-- PILOT HUD Video Brightness Control  ( DEVICE_ID: 55 DCS_ID: 3124)
		--  IFF
			[517]	= "%.1f",	-- PILOT IFF Master Switch  ( DEVICE_ID: 17 DCS_ID: 3517)
			[515]	= "%.1f",	-- PILOT IFF Mode Switch  ( DEVICE_ID: 17 DCS_ID: 3515)
			[516]	= "%.1f",	-- PILOT IFF Reply Switch  ( DEVICE_ID: 17 DCS_ID: 3516)
		--  Internal Lights Panel
			[186]	= "%.1f",	-- PILOT Chart Spot Lamp  ( DEVICE_ID: 23 DCS_ID: 3575)
			[572]	= "%.1f",	-- PILOT Charts Spot Light  ( DEVICE_ID: 23 DCS_ID: 3572)
			[570]	= "%.1f",	-- PILOT Compass Lights  ( DEVICE_ID: 23 DCS_ID: 3570)
			[566]	= "%.1f",	-- PILOT Console Lights  ( DEVICE_ID: 23 DCS_ID: 3566)
			[571]	= "%.1f",	-- PILOT Day/Night Mode Selector  ( DEVICE_ID: 23 DCS_ID: 3571)
			[568]	= "%.1f",	-- PILOT Gauges/UFC Backlights  ( DEVICE_ID: 23 DCS_ID: 3568)
			[567]	= "%.1f",	-- PILOT Instruments Panel Lights  ( DEVICE_ID: 23 DCS_ID: 3567)
			[574]	= "%.1f",	-- PILOT Storm FLood Lights  ( DEVICE_ID: 23 DCS_ID: 3574)
			[573]	= "%.1f",	-- PILOT Warning/Caution Lights  ( DEVICE_ID: 23 DCS_ID: 3573)
			[573]	= "%.1f",	-- PILOT Warning/Caution Lights Reset  ( DEVICE_ID: 23 DCS_ID: 3473)
			[569]	= "%.1f",	-- PILOT Warning/Caution Lights Test  ( DEVICE_ID: 23 DCS_ID: 3569)
		--  Landing Gear Panel
			[337]	= "%.1f",	-- PILOT Emergency Landing Gear Handle PUSH/PULL  ( DEVICE_ID: 21 DCS_ID: 3337)
			[431]	= "%.1f",	-- PILOT Emergency Landing Gear Handle ROTATE  ( DEVICE_ID: 21 DCS_ID: 3431)
			[324]	= "%.1f",	-- PILOT Landing Gear Lever  ( DEVICE_ID: 21 DCS_ID: 3324)
			[325]	= "%.1f",	-- PILOT Landing Gear Warning Tone Silence Switch  ( DEVICE_ID: 21 DCS_ID: 3325)
		--  Left Bulkhead Panel
			[485]	= "%.1f",	-- PILOT Armament Safety Override Switch  ( DEVICE_ID: 17 DCS_ID: 3485)
			[540]	= "%.1f",	-- PILOT Emergency A/R Switch  ( DEVICE_ID: 16 DCS_ID: 3540)
			[539]	= "%.1f",	-- PILOT Emergency A/R Switch Cover  ( DEVICE_ID: 16 DCS_ID: 3539)
			[519]	= "%.1f",	-- PILOT EWWS Enable Switch  ( DEVICE_ID: 17 DCS_ID: 3519)
			[518]	= "%.1f",	-- PILOT EWWS Enable Switch Cover  ( DEVICE_ID: 17 DCS_ID: 3518)
			[523]	= "%.1f",	-- PILOT Flyup Enable Switch  ( DEVICE_ID: 17 DCS_ID: 3523)
			[522]	= "%.1f",	-- PILOT Flyup Enable Switch Cover  ( DEVICE_ID: 17 DCS_ID: 3522)
			[520]	= "%.1f",	-- PILOT IFF Antenna Select Switch  ( DEVICE_ID: 17 DCS_ID: 3520)
			[524]	= "%.1f",	-- PILOT NCTR Enable Switch  ( DEVICE_ID: 17 DCS_ID: 3524)
			[521]	= "%.1f",	-- PILOT Seat Adjust Switch  ( DEVICE_ID: 24 DCS_ID: 3521)
			[521]	= "%.1f",	-- PILOT Seat Adjust Switch  ( DEVICE_ID: 24 DCS_ID: 3521)
			[800]	= "%.1f",	-- PILOT Seat Arm Handle  ( DEVICE_ID: 24 DCS_ID: 3800)
			[526]	= "%.1f",	-- PILOT VMAX Switch  ( DEVICE_ID: 15 DCS_ID: 3526)
			[525]	= "%.1f",	-- PILOT VMAX Switch Cover  ( DEVICE_ID: 15 DCS_ID: 3525)
		--  Left MPD
			[222]	= "%.1f",	-- PILOT Left MPD Brightness Control  ( DEVICE_ID: 34 DCS_ID: 3082)
			[223]	= "%.1f",	-- PILOT Left MPD Contrast Control  ( DEVICE_ID: 34 DCS_ID: 3083)
			[221]	= "%.1f",	-- PILOT Left MPD Power Switch  ( DEVICE_ID: 34 DCS_ID: 3081)
			[204]	= "%.1f",	-- PILOT Left MPD Push Button 1  ( DEVICE_ID: 34 DCS_ID: 3061)
			[203]	= "%.1f",	-- PILOT Left MPD Push Button 2  ( DEVICE_ID: 34 DCS_ID: 3062)
			[202]	= "%.1f",	-- PILOT Left MPD Push Button 3  ( DEVICE_ID: 34 DCS_ID: 3063)
			[201]	= "%.1f",	-- PILOT Left MPD Push Button 4  ( DEVICE_ID: 34 DCS_ID: 3064)
			[200]	= "%.1f",	-- PILOT Left MPD Push Button 5  ( DEVICE_ID: 34 DCS_ID: 3065)
			[219]	= "%.1f",	-- PILOT Left MPD Push Button 6  ( DEVICE_ID: 34 DCS_ID: 3066)
			[218]	= "%.1f",	-- PILOT Left MPD Push Button 7  ( DEVICE_ID: 34 DCS_ID: 3067)
			[217]	= "%.1f",	-- PILOT Left MPD Push Button 8  ( DEVICE_ID: 34 DCS_ID: 3068)
			[216]	= "%.1f",	-- PILOT Left MPD Push Button 9  ( DEVICE_ID: 34 DCS_ID: 3069)
			[215]	= "%.1f",	-- PILOT Left MPD Push Button 10  ( DEVICE_ID: 34 DCS_ID: 3070)
			[214]	= "%.1f",	-- PILOT Left MPD Push Button 11  ( DEVICE_ID: 34 DCS_ID: 3071)
			[213]	= "%.1f",	-- PILOT Left MPD Push Button 12  ( DEVICE_ID: 34 DCS_ID: 3072)
			[212]	= "%.1f",	-- PILOT Left MPD Push Button 13  ( DEVICE_ID: 34 DCS_ID: 3073)
			[211]	= "%.1f",	-- PILOT Left MPD Push Button 14  ( DEVICE_ID: 34 DCS_ID: 3074)
			[210]	= "%.1f",	-- PILOT Left MPD Push Button 15  ( DEVICE_ID: 34 DCS_ID: 3075)
			[209]	= "%.1f",	-- PILOT Left MPD Push Button 16  ( DEVICE_ID: 34 DCS_ID: 3076)
			[208]	= "%.1f",	-- PILOT Left MPD Push Button 17  ( DEVICE_ID: 34 DCS_ID: 3077)
			[207]	= "%.1f",	-- PILOT Left MPD Push Button 18  ( DEVICE_ID: 34 DCS_ID: 3078)
			[206]	= "%.1f",	-- PILOT Left MPD Push Button 19  ( DEVICE_ID: 34 DCS_ID: 3079)
			[205]	= "%.1f",	-- PILOT Left MPD Push Button 20  ( DEVICE_ID: 34 DCS_ID: 3080)
		--  MICS
			[509]	= "%.1f",	-- PILOT MIC Switch  ( DEVICE_ID: 13 DCS_ID: 3509)
			[508]	= "%.1f",	-- PILOT MICS Crypto Switch  ( DEVICE_ID: 13 DCS_ID: 3508)
			[510]	= "%.1f",	-- PILOT MICS VW/Tone Silence Switch  ( DEVICE_ID: 29 DCS_ID: 3510)
		--  Misc
			[537]	= "%.1f",	-- PILOT Anti Skid Switch  ( DEVICE_ID: 21 DCS_ID: 3537)
			[336]	= "%.1f",	-- PILOT Arresting Hook Handle  ( DEVICE_ID: 21 DCS_ID: 3336)
			[341]	= "%.1f",	-- PILOT Emergency Brake/Steering Handle  ( DEVICE_ID: 21 DCS_ID: 3341)
			[427]	= "%.1f",	-- PILOT Emergency Vent Handle  ( DEVICE_ID: 26 DCS_ID: 3427)
			[535]	= "%.1f",	-- PILOT Left Inlet Ramp Switch  ( DEVICE_ID: 15 DCS_ID: 3535)
			[401]	= "%.1f",	-- PILOT Master Caution Button  ( DEVICE_ID: 29 DCS_ID: 3401)
			[536]	= "%.1f",	-- PILOT Right Inlet Ramp Switch  ( DEVICE_ID: 15 DCS_ID: 3536)
			[534]	= "%.1f",	-- PILOT Roll Ratio Switch  ( DEVICE_ID: 18 DCS_ID: 3534)
			[342]	= "%.1f",	-- PILOT Rudder Pedal Ajust Handle  ( DEVICE_ID: 18 DCS_ID: 3342)
		--  Misc Controls
			[1010]	= "%.1f",	-- Mirror Center Adjust Angle  ( DEVICE_ID: 24 DCS_ID: 3910)
			[10]	= "%.1f",	-- Mirror Center Rendering Toggle  ( DEVICE_ID: 24 DCS_ID: 3010)
			[1011]	= "%.1f",	-- Mirror Left Adjust Angle  ( DEVICE_ID: 24 DCS_ID: 3911)
			[11]	= "%.1f",	-- Mirror Left Rendering Toggle  ( DEVICE_ID: 24 DCS_ID: 3011)
			[1012]	= "%.1f",	-- Mirror Right Adjust Angle  ( DEVICE_ID: 24 DCS_ID: 3912)
			[12]	= "%.1f",	-- Mirror Right Rendering Toggle  ( DEVICE_ID: 24 DCS_ID: 3012)
			[1001]	= "%.1f",	-- Show/Hide Controls  ( DEVICE_ID: 24 DCS_ID: 3001)
		--  NUC
			[451]	= "%.1f",	-- PILOT Nuclear Consent Switch  ( DEVICE_ID: 17 DCS_ID: 3451)
			[450]	= "%.1f",	-- PILOT Nuclear Consent Switch Cover  ( DEVICE_ID: 17 DCS_ID: 3450)
		--  Oxygen Control Panel
			[552]	= "%.1f",	-- PILOT Oxygen 100%/Normal Switch  ( DEVICE_ID: 26 DCS_ID: 3552)
			[551]	= "%.1f",	-- PILOT Oxygen Emergency/Normal/Test Switch  ( DEVICE_ID: 26 DCS_ID: 3551)
			[553]	= "%.1f",	-- PILOT Oxygen Supply/Mode Control Switch  ( DEVICE_ID: 26 DCS_ID: 3553)
		--  Radio
			[514]	= "%.1f",	-- PILOT Radio Cypher Text Switch  ( DEVICE_ID: 17 DCS_ID: 3514)
			[513]	= "%.1f",	-- PILOT Radio Tone Switch  ( DEVICE_ID: 17 DCS_ID: 3513)
			[511]	= "%.1f",	-- PILOT Radio UHF Antenna Switch  ( DEVICE_ID: 17 DCS_ID: 3511)
			[512]	= "%.1f",	-- PILOT Radio VHF Antenna Switch  ( DEVICE_ID: 17 DCS_ID: 3512)
		--  Right MPD
			[245]	= "%.1f",	-- PILOT Right MPD Brightness Control  ( DEVICE_ID: 36 DCS_ID: 3082)
			[246]	= "%.1f",	-- PILOT Right MPD Contrast Control  ( DEVICE_ID: 36 DCS_ID: 3083)
			[244]	= "%.1f",	-- PILOT Right MPD Power Switch  ( DEVICE_ID: 36 DCS_ID: 3081)
			[228]	= "%.1f",	-- PILOT Right MPD Push Button 1  ( DEVICE_ID: 36 DCS_ID: 3061)
			[227]	= "%.1f",	-- PILOT Right MPD Push Button 2  ( DEVICE_ID: 36 DCS_ID: 3062)
			[226]	= "%.1f",	-- PILOT Right MPD Push Button 3  ( DEVICE_ID: 36 DCS_ID: 3063)
			[225]	= "%.1f",	-- PILOT Right MPD Push Button 4  ( DEVICE_ID: 36 DCS_ID: 3064)
			[224]	= "%.1f",	-- PILOT Right MPD Push Button 5  ( DEVICE_ID: 36 DCS_ID: 3065)
			[243]	= "%.1f",	-- PILOT Right MPD Push Button 6  ( DEVICE_ID: 36 DCS_ID: 3066)
			[242]	= "%.1f",	-- PILOT Right MPD Push Button 7  ( DEVICE_ID: 36 DCS_ID: 3067)
			[241]	= "%.1f",	-- PILOT Right MPD Push Button 8  ( DEVICE_ID: 36 DCS_ID: 3068)
			[240]	= "%.1f",	-- PILOT Right MPD Push Button 9  ( DEVICE_ID: 36 DCS_ID: 3069)
			[239]	= "%.1f",	-- PILOT Right MPD Push Button 10  ( DEVICE_ID: 36 DCS_ID: 3070)
			[238]	= "%.1f",	-- PILOT Right MPD Push Button 11  ( DEVICE_ID: 36 DCS_ID: 3071)
			[237]	= "%.1f",	-- PILOT Right MPD Push Button 12  ( DEVICE_ID: 36 DCS_ID: 3072)
			[236]	= "%.1f",	-- PILOT Right MPD Push Button 13  ( DEVICE_ID: 36 DCS_ID: 3073)
			[235]	= "%.1f",	-- PILOT Right MPD Push Button 14  ( DEVICE_ID: 36 DCS_ID: 3074)
			[234]	= "%.1f",	-- PILOT Right MPD Push Button 15  ( DEVICE_ID: 36 DCS_ID: 3075)
			[233]	= "%.1f",	-- PILOT Right MPD Push Button 16  ( DEVICE_ID: 36 DCS_ID: 3076)
			[232]	= "%.1f",	-- PILOT Right MPD Push Button 17  ( DEVICE_ID: 36 DCS_ID: 3077)
			[231]	= "%.1f",	-- PILOT Right MPD Push Button 18  ( DEVICE_ID: 36 DCS_ID: 3078)
			[230]	= "%.1f",	-- PILOT Right MPD Push Button 19  ( DEVICE_ID: 36 DCS_ID: 3079)
			[229]	= "%.1f",	-- PILOT Right MPD Push Button 20  ( DEVICE_ID: 36 DCS_ID: 3080)
		--  Sensor
			[477]	= "%.1f",	-- PILOT CC Reset  ( DEVICE_ID: 1 DCS_ID: 3477)
			[472]	= "%.3f",	-- PILOT INS Knob  ( DEVICE_ID: 42 DCS_ID: 3472)	-- EDITED
			[476]	= "%.3f",	-- PILOT JTIDS Knob  ( DEVICE_ID: 1 DCS_ID: 3476)	-- EDITED
			[473]	= "%.1f",	-- PILOT Nav FLIR Gain  ( DEVICE_ID: 50 DCS_ID: 3473)
			[474]	= "%.1f",	-- PILOT Nav FLIR Level  ( DEVICE_ID: 50 DCS_ID: 3474)
			[475]	= "%.1f",	-- PILOT Nav FLIR Switch  ( DEVICE_ID: 50 DCS_ID: 3475)
			[470]	= "%.1f",	-- PILOT Radar Altitude Switch  ( DEVICE_ID: 31 DCS_ID: 3470)
			[471]	= "%.3f",	-- PILOT Radar Mode Selector  ( DEVICE_ID: 3 DCS_ID: 3471)	-- EDITED
			[469]	= "%.1f",	-- PILOT Terrrain Follow Radar Switch  ( DEVICE_ID: 65 DCS_ID: 3469)
		--  Throttle Quadrant
			[459]	= "%.1f",	-- PILOT Throttle Flaps Control Switch  ( DEVICE_ID: 18 DCS_ID: 3459)
			[697]	= "%.1f",	-- PILOT Throttle Left Throttle Finger Lift  ( DEVICE_ID: 15 DCS_ID: 3697)
			[698]	= "%.1f",	-- PILOT Throttle Right Throttle Finger Lift  ( DEVICE_ID: 15 DCS_ID: 3698)
			[460]	= "%.1f",	-- PILOT Throttle Rudder Trim Switch  ( DEVICE_ID: 18 DCS_ID: 3460)
		--  UFC
			[270]	= "%.1f",	-- PILOT UFC Push Button 1  ( DEVICE_ID: 56 DCS_ID: 3001)
			[271]	= "%.1f",	-- PILOT UFC Push Button 2  ( DEVICE_ID: 56 DCS_ID: 3002)
			[272]	= "%.1f",	-- PILOT UFC Push Button 3  ( DEVICE_ID: 56 DCS_ID: 3003)
			[273]	= "%.1f",	-- PILOT UFC Push Button 4  ( DEVICE_ID: 56 DCS_ID: 3004)
			[274]	= "%.1f",	-- PILOT UFC Push Button 5  ( DEVICE_ID: 56 DCS_ID: 3005)
			[275]	= "%.1f",	-- PILOT UFC Push Button 10  ( DEVICE_ID: 56 DCS_ID: 3006)
			[276]	= "%.1f",	-- PILOT UFC Push Button 9  ( DEVICE_ID: 56 DCS_ID: 3007)
			[277]	= "%.1f",	-- PILOT UFC Push Button 8  ( DEVICE_ID: 56 DCS_ID: 3008)
			[278]	= "%.1f",	-- PILOT UFC Push Button 7  ( DEVICE_ID: 56 DCS_ID: 3009)
			[279]	= "%.1f",	-- PILOT UFC Push Button 6  ( DEVICE_ID: 56 DCS_ID: 3010)
			[280]	= "%.1f",	-- PILOT Left UHF Preset Channel Selector  ( DEVICE_ID: 56 DCS_ID: 3011)
			[281]	= "%.1f",	-- PILOT Right UHF Preset Channel Selector  ( DEVICE_ID: 56 DCS_ID: 3012)
			[282]	= "%.1f",	-- PILOT UHF Radio 1 Volume  ( DEVICE_ID: 56 DCS_ID: 3013)
			[283]	= "%.1f",	-- PILOT UHF Radio 2 Volume  ( DEVICE_ID: 56 DCS_ID: 3014)
			[284]	= "%.1f",	-- PILOT UHF Radio 3 Volume  ( DEVICE_ID: 56 DCS_ID: 3015)
			[285]	= "%.1f",	-- PILOT UHF Radio 4 Volume  ( DEVICE_ID: 56 DCS_ID: 3016)
			[286]	= "%.1f",	-- PILOT UFC LCD Brightness  ( DEVICE_ID: 56 DCS_ID: 3017)
			[287]	= "%.1f",	-- PILOT UFC Emission Limit Button  ( DEVICE_ID: 56 DCS_ID: 3018)
			[288]	= "%.1f",	-- PILOT Left Guard Receiver - Channel/Manual Key  ( DEVICE_ID: 56 DCS_ID: 3019)
			[289]	= "%.1f",	-- PILOT A/1 Key  ( DEVICE_ID: 56 DCS_ID: 3020)
			[290]	= "%.1f",	-- PILOT N/2 Key  ( DEVICE_ID: 56 DCS_ID: 3021)
			[291]	= "%.1f",	-- PILOT B/3 Key  ( DEVICE_ID: 56 DCS_ID: 3022)
			[292]	= "%.1f",	-- PILOT Right Guard Receiver - Channel/Manual Key  ( DEVICE_ID: 56 DCS_ID: 3023)
			[293]	= "%.1f",	-- PILOT Mark Key  ( DEVICE_ID: 56 DCS_ID: 3024)
			[294]	= "%.1f",	-- PILOT W/4 Key  ( DEVICE_ID: 56 DCS_ID: 3025)
			[295]	= "%.1f",	-- PILOT M/5 Key  ( DEVICE_ID: 56 DCS_ID: 3026)
			[296]	= "%.1f",	-- PILOT E/6 Key  ( DEVICE_ID: 56 DCS_ID: 3027)
			[297]	= "%.1f",	-- PILOT I/P Key  ( DEVICE_ID: 56 DCS_ID: 3028)
			[298]	= "%.1f",	-- PILOT Decimal Point Key  ( DEVICE_ID: 56 DCS_ID: 3029)
			[299]	= "%.1f",	-- PILOT :/7 Key  ( DEVICE_ID: 56 DCS_ID: 3030)
			[300]	= "%.1f",	-- PILOT S/8 Key  ( DEVICE_ID: 56 DCS_ID: 3031)
			[301]	= "%.1f",	-- PILOT C/9 Key  ( DEVICE_ID: 56 DCS_ID: 3032)
			[302]	= "%.1f",	-- PILOT Shift Key  ( DEVICE_ID: 56 DCS_ID: 3033)
			[303]	= "%.1f",	-- PILOT A/P Key  ( DEVICE_ID: 56 DCS_ID: 3034)
			[304]	= "%.1f",	-- PILOT Clear Key  ( DEVICE_ID: 56 DCS_ID: 3035)
			[305]	= "%.1f",	-- PILOT -/0 Key  ( DEVICE_ID: 56 DCS_ID: 3036)
			[306]	= "%.1f",	-- PILOT Data Key  ( DEVICE_ID: 56 DCS_ID: 3037)
			[307]	= "%.1f",	-- PILOT Menu Key  ( DEVICE_ID: 56 DCS_ID: 3038)
			[680]	= "%.1f",	-- PILOT Left UHF Preset Channel Switch  ( DEVICE_ID: 56 DCS_ID: 3055)
			[681]	= "%.1f",	-- PILOT Right UHF Preset Channel Switch  ( DEVICE_ID: 56 DCS_ID: 3056)
		--  Volume
			[502]	= "%.1f",	-- PILOT Caution Volume  ( DEVICE_ID: 59 DCS_ID: 3502)
			[504]	= "%.1f",	-- PILOT ICS Volume  ( DEVICE_ID: 13 DCS_ID: 3504)
			[506]	= "%.1f",	-- PILOT ILS Volume  ( DEVICE_ID: 11 DCS_ID: 3506)
			[503]	= "%.1f",	-- PILOT Launch Volume  ( DEVICE_ID: 59 DCS_ID: 3503)
			[507]	= "%.1f",	-- PILOT TACAN Volume  ( DEVICE_ID: 10 DCS_ID: 3507)
			[505]	= "%.1f",	-- PILOT WPN Volume  ( DEVICE_ID: 44 DCS_ID: 3505)
	-------------------------------------------------------------------
	-- WSO COCKPIT
	-------------------------------------------------------------------
		--  Canopy
			[1479]	= "%.1f",	-- WSO Canopy Handle  ( DEVICE_ID: 24 DCS_ID: 3600)
			[1386]	= "%.1f",	-- WSO Eject Selector Handle  ( DEVICE_ID: 24 DCS_ID: 3386)
			[1385]	= "%.1f",	-- WSO Emergency Canopy Jettison  ( DEVICE_ID: 24 DCS_ID: 3385)
		--  CMD Control Panel
			[1475]	= "%.1f",	-- WSO CMD Dispenser Selection Switch FLARE/BOTH/CHAFF  ( DEVICE_ID: 60 DCS_ID:3911)
			[1476]	= "%.3f",	-- WSO CMD Operational Mode OFF/STBY/MAN/SEMI/AUTO  ( DEVICE_ID: 60 DCS_ID: 3912)	-- EDITED
		--  EW Panel
			[1418]	= "%.1f",	-- WSO ECM PODS Mode Switch XMIT/STBY  ( DEVICE_ID: 61 DCS_ID: 3932)
			[1477]	= "%.1f",	-- WSO Flare Jettison Switch Cover  ( DEVICE_ID: 60 DCS_ID: 3913)
			[1478]	= "%.1f",	-- WSO Flare Jettison Switch NORM/JETT  ( DEVICE_ID: 60 DCS_ID: 3914)
			[1419]	= "%.1f",	-- WSO ICS Operational Mode Switch STBY/AUTO/MAN  ( DEVICE_ID: 61 DCS_ID: 3933)
			[1417]	= "%.1f",	-- WSO RWR/ICS Mode Switch COMBAT/TRNG  ( DEVICE_ID: 59 DCS_ID: 3931)
		--  Flight Instruments
			[1364]	= "%.1f",	-- WSO Altitude adjust  ( DEVICE_ID: 17 DCS_ID: 3403)
			[1355]	= "%.1f",	-- WSO Backup ADI Cage/Pitch Adjust Knob  ( DEVICE_ID: 17 DCS_ID: 3402)
			[1354]	= "%.1f",	-- WSO Backup ADI Cage/Pitch Adjust Pull  ( DEVICE_ID: 17 DCS_ID: 3401)
			[1382]	= "%.1f",	-- WSO Clock adjust  ( DEVICE_ID: 17 DCS_ID: 3404)
			[1176]	= "%.1f",	-- WSO Master Caution Button  ( DEVICE_ID: 29 DCS_ID: 3176)
			[1383]	= "%.1f",	-- WSO Timer Stop  ( DEVICE_ID: 17 DCS_ID: 3405)
		--  Internal Lights Panel
			[188]	= "%.1f",	-- WSO Chart Spot Lamp  ( DEVICE_ID: 23 DCS_ID: 3188)
			[1462]	= "%.1f",	-- WSO Charts Spot Light  ( DEVICE_ID: 23 DCS_ID: 3462)
			[1460]	= "%.1f",	-- WSO Compass Lights  ( DEVICE_ID: 23 DCS_ID: 3460)
			[1456]	= "%.1f",	-- WSO Console Lights  ( DEVICE_ID: 23 DCS_ID: 3456)
			[1461]	= "%.1f",	-- WSO Day/Night Mode Selector  ( DEVICE_ID: 23 DCS_ID: 3461)
			[1458]	= "%.1f",	-- WSO Gauges/UFC Backlights  ( DEVICE_ID: 23 DCS_ID: 3458)
			[1457]	= "%.1f",	-- WSO Instruments Panel Lights  ( DEVICE_ID: 23 DCS_ID: 3457)
			[1464]	= "%.1f",	-- WSO Storm FLood Lights  ( DEVICE_ID: 23 DCS_ID: 3464)
			[1463]	= "%.1f",	-- WSO Warning/Caution Lights  ( DEVICE_ID: 23 DCS_ID: 3463)
			[1463]	= "%.1f",	-- WSO Warning/Caution Lights Reset  ( DEVICE_ID: 23 DCS_ID: 3463)
			[1459]	= "%.1f",	-- WSO Warning/Caution Lights Test  ( DEVICE_ID: 23 DCS_ID: 3459)
		--  Left MPCD
			[1222]	= "%.1f",	-- WSO Left MPCD Brightness Control  ( DEVICE_ID: 37 DCS_ID: 3082)
			[1223]	= "%.1f",	-- WSO Left MPCD Contrast Control  ( DEVICE_ID: 37 DCS_ID: 3083)
			[1221]	= "%.1f",	-- WSO Left MPCD Power Switch  ( DEVICE_ID: 37 DCS_ID: 3081)
			[1204]	= "%.1f",	-- WSO Left MPCD Push Button 1  ( DEVICE_ID: 37 DCS_ID: 3061)
			[1203]	= "%.1f",	-- WSO Left MPCD Push Button 2  ( DEVICE_ID: 37 DCS_ID: 3062)
			[1202]	= "%.1f",	-- WSO Left MPCD Push Button 3  ( DEVICE_ID: 37 DCS_ID: 3063)
			[1201]	= "%.1f",	-- WSO Left MPCD Push Button 4  ( DEVICE_ID: 37 DCS_ID: 3064)
			[1200]	= "%.1f",	-- WSO Left MPCD Push Button 5  ( DEVICE_ID: 37 DCS_ID: 3065)
			[1219]	= "%.1f",	-- WSO Left MPCD Push Button 6  ( DEVICE_ID: 37 DCS_ID: 3066)
			[1218]	= "%.1f",	-- WSO Left MPCD Push Button 7  ( DEVICE_ID: 37 DCS_ID: 3067)
			[1217]	= "%.1f",	-- WSO Left MPCD Push Button 8  ( DEVICE_ID: 37 DCS_ID: 3068)
			[1216]	= "%.1f",	-- WSO Left MPCD Push Button 9  ( DEVICE_ID: 37 DCS_ID: 3069)
			[1215]	= "%.1f",	-- WSO Left MPCD Push Button 10  ( DEVICE_ID: 37 DCS_ID: 3070)
			[1214]	= "%.1f",	-- WSO Left MPCD Push Button 11  ( DEVICE_ID: 37 DCS_ID: 3071)
			[1213]	= "%.1f",	-- WSO Left MPCD Push Button 12  ( DEVICE_ID: 37 DCS_ID: 3072)
			[1212]	= "%.1f",	-- WSO Left MPCD Push Button 13  ( DEVICE_ID: 37 DCS_ID: 3073)
			[1211]	= "%.1f",	-- WSO Left MPCD Push Button 14  ( DEVICE_ID: 37 DCS_ID: 3074)
			[1210]	= "%.1f",	-- WSO Left MPCD Push Button 15  ( DEVICE_ID: 37 DCS_ID: 3075)
			[1209]	= "%.1f",	-- WSO Left MPCD Push Button 16  ( DEVICE_ID: 37 DCS_ID: 3076)
			[1208]	= "%.1f",	-- WSO Left MPCD Push Button 17  ( DEVICE_ID: 37 DCS_ID: 3077)
			[1207]	= "%.1f",	-- WSO Left MPCD Push Button 18  ( DEVICE_ID: 37 DCS_ID: 3078)
			[1206]	= "%.1f",	-- WSO Left MPCD Push Button 19  ( DEVICE_ID: 37 DCS_ID: 3079)
			[1205]	= "%.1f",	-- WSO Left MPCD Push Button 20  ( DEVICE_ID: 37 DCS_ID: 3080)
		--  Left MPD
			[1245]	= "%.1f",	-- WSO Left MPD Brightness Control  ( DEVICE_ID: 38 DCS_ID: 3082)
			[1246]	= "%.1f",	-- WSO Left MPD Contrast Control  ( DEVICE_ID: 38 DCS_ID: 3083)
			[1244]	= "%.1f",	-- WSO Left MPD Power Switch  ( DEVICE_ID: 38 DCS_ID: 3081)
			[1228]	= "%.1f",	-- WSO Left MPD Push Button 1  ( DEVICE_ID: 38 DCS_ID: 3061)
			[1227]	= "%.1f",	-- WSO Left MPD Push Button 2  ( DEVICE_ID: 38 DCS_ID: 3062)
			[1226]	= "%.1f",	-- WSO Left MPD Push Button 3  ( DEVICE_ID: 38 DCS_ID: 3063)
			[1225]	= "%.1f",	-- WSO Left MPD Push Button 4  ( DEVICE_ID: 38 DCS_ID: 3064)
			[1224]	= "%.1f",	-- WSO Left MPD Push Button 5  ( DEVICE_ID: 38 DCS_ID: 3065)
			[1243]	= "%.1f",	-- WSO Left MPD Push Button 6  ( DEVICE_ID: 38 DCS_ID: 3066)
			[1242]	= "%.1f",	-- WSO Left MPD Push Button 7  ( DEVICE_ID: 38 DCS_ID: 3067)
			[1241]	= "%.1f",	-- WSO Left MPD Push Button 8  ( DEVICE_ID: 38 DCS_ID: 3068)
			[1240]	= "%.1f",	-- WSO Left MPD Push Button 9  ( DEVICE_ID: 38 DCS_ID: 3069)
			[1239]	= "%.1f",	-- WSO Left MPD Push Button 10  ( DEVICE_ID: 38 DCS_ID: 3070)
			[1238]	= "%.1f",	-- WSO Left MPD Push Button 11  ( DEVICE_ID: 38 DCS_ID: 3071)
			[1237]	= "%.1f",	-- WSO Left MPD Push Button 12  ( DEVICE_ID: 38 DCS_ID: 3072)
			[1236]	= "%.1f",	-- WSO Left MPD Push Button 13  ( DEVICE_ID: 38 DCS_ID: 3073)
			[1235]	= "%.1f",	-- WSO Left MPD Push Button 14  ( DEVICE_ID: 38 DCS_ID: 3074)
			[1234]	= "%.1f",	-- WSO Left MPD Push Button 15  ( DEVICE_ID: 38 DCS_ID: 3075)
			[1233]	= "%.1f",	-- WSO Left MPD Push Button 16  ( DEVICE_ID: 38 DCS_ID: 3076)
			[1232]	= "%.1f",	-- WSO Left MPD Push Button 17  ( DEVICE_ID: 38 DCS_ID: 3077)
			[1231]	= "%.1f",	-- WSO Left MPD Push Button 18  ( DEVICE_ID: 38 DCS_ID: 3078)
			[1230]	= "%.1f",	-- WSO Left MPD Push Button 19  ( DEVICE_ID: 38 DCS_ID: 3079)
			[1229]	= "%.1f",	-- WSO Left MPD Push Button 20  ( DEVICE_ID: 38 DCS_ID: 3080)
		--  MICS
			[1427]	= "%.1f",	-- WSO MIC Switch  ( DEVICE_ID: 13 DCS_ID: 3427)
			[1426]	= "%.1f",	-- WSO MICS Crypto Switch  ( DEVICE_ID: 13 DCS_ID: 3426)
			[1428]	= "%.1f",	-- WSO MICS VW/Tone Silence Switch  ( DEVICE_ID: 29 DCS_ID: 3428)
		--  Misc
			[1341]	= "%.1f",	-- WSO Arresting Hook Handle  ( DEVICE_ID: 21 DCS_ID: 3344)
			[1345]	= "%.1f",	-- WSO Emergency Brake/Steering Handle  ( DEVICE_ID: 21 DCS_ID: 3345)
			[1342]	= "%.1f",	-- WSO Emergency Landing Gear Handle  ( DEVICE_ID: 21 DCS_ID: 3342)
			[1346]	= "%.1f",	-- WSO Rudder Pedal Ajust Handle  ( DEVICE_ID: 18 DCS_ID: 3346)
		--  NUC
			[1402]	= "%.1f",	-- WSO Nuclear Consent Switch  ( DEVICE_ID: 17 DCS_ID: 3453)
			[1401]	= "%.1f",	-- WSO Nuclear Consent Switch Cover  ( DEVICE_ID: 17 DCS_ID: 3452)
		--  Oxygen Control Panel
			[1451]	= "%.1f",	-- WSO Oxygen 100%/Normal Switch  ( DEVICE_ID: 26 DCS_ID: 3572)
			[1450]	= "%.1f",	-- WSO Oxygen Emergency/Normal/Test Switch  ( DEVICE_ID: 26 DCS_ID: 3571)
			[1452]	= "%.1f",	-- WSO Oxygen Supply/Mode Control Switch  ( DEVICE_ID: 26 DCS_ID: 3573)
		--  Radio
			[1430]	= "%.1f",	-- WSO Radio Cypher Text Switch  ( DEVICE_ID: 17 DCS_ID: 3430)
			[1429]	= "%.1f",	-- WSO Radio Tone Switch  ( DEVICE_ID: 17 DCS_ID: 3429)
		--  Right MPCD
			[1291]	= "%.1f",	-- WSO Right MPCD Brightness Control  ( DEVICE_ID: 40 DCS_ID: 3082)
			[1292]	= "%.1f",	-- WSO Right MPCD Contrast Control  ( DEVICE_ID: 40 DCS_ID: 3083)
			[1290]	= "%.1f",	-- WSO Right MPCD Power Switch  ( DEVICE_ID: 40 DCS_ID: 3081)
			[1274]	= "%.1f",	-- WSO Right MPCD Push Button 1  ( DEVICE_ID: 40 DCS_ID: 3061)
			[1273]	= "%.1f",	-- WSO Right MPCD Push Button 2  ( DEVICE_ID: 40 DCS_ID: 3062)
			[1272]	= "%.1f",	-- WSO Right MPCD Push Button 3  ( DEVICE_ID: 40 DCS_ID: 3063)
			[1271]	= "%.1f",	-- WSO Right MPCD Push Button 4  ( DEVICE_ID: 40 DCS_ID: 3064)
			[1270]	= "%.1f",	-- WSO Right MPCD Push Button 5  ( DEVICE_ID: 40 DCS_ID: 3065)
			[1289]	= "%.1f",	-- WSO Right MPCD Push Button 6  ( DEVICE_ID: 40 DCS_ID: 3066)
			[1288]	= "%.1f",	-- WSO Right MPCD Push Button 7  ( DEVICE_ID: 40 DCS_ID: 3067)
			[1287]	= "%.1f",	-- WSO Right MPCD Push Button 8  ( DEVICE_ID: 40 DCS_ID: 3068)
			[1286]	= "%.1f",	-- WSO Right MPCD Push Button 9  ( DEVICE_ID: 40 DCS_ID: 3069)
			[1285]	= "%.1f",	-- WSO Right MPCD Push Button 10  ( DEVICE_ID: 40 DCS_ID: 3070)
			[1284]	= "%.1f",	-- WSO Right MPCD Push Button 11  ( DEVICE_ID: 40 DCS_ID: 3071)
			[1283]	= "%.1f",	-- WSO Right MPCD Push Button 12  ( DEVICE_ID: 40 DCS_ID: 3072)
			[1282]	= "%.1f",	-- WSO Right MPCD Push Button 13  ( DEVICE_ID: 40 DCS_ID: 3073)
			[1281]	= "%.1f",	-- WSO Right MPCD Push Button 14  ( DEVICE_ID: 40 DCS_ID: 3074)
			[1280]	= "%.1f",	-- WSO Right MPCD Push Button 15  ( DEVICE_ID: 40 DCS_ID: 3075)
			[1279]	= "%.1f",	-- WSO Right MPCD Push Button 16  ( DEVICE_ID: 40 DCS_ID: 3076)
			[1278]	= "%.1f",	-- WSO Right MPCD Push Button 17  ( DEVICE_ID: 40 DCS_ID: 3077)
			[1277]	= "%.1f",	-- WSO Right MPCD Push Button 18  ( DEVICE_ID: 40 DCS_ID: 3078)
			[1276]	= "%.1f",	-- WSO Right MPCD Push Button 19  ( DEVICE_ID: 40 DCS_ID: 3079)
			[1275]	= "%.1f",	-- WSO Right MPCD Push Button 20  ( DEVICE_ID: 40 DCS_ID: 3080)
		--  Right MPD
			[1268]	= "%.1f",	-- WSO Right MPD Brightness Control  ( DEVICE_ID: 39 DCS_ID: 3082)
			[1269]	= "%.1f",	-- WSO Right MPD Contrast Control  ( DEVICE_ID: 39 DCS_ID: 3083)
			[1267]	= "%.1f",	-- WSO Right MPD Power Switch  ( DEVICE_ID: 39 DCS_ID: 3081)
			[1251]	= "%.1f",	-- WSO Right MPD Push Button 1  ( DEVICE_ID: 39 DCS_ID: 3061)
			[1250]	= "%.1f",	-- WSO Right MPD Push Button 2  ( DEVICE_ID: 39 DCS_ID: 3062)
			[1249]	= "%.1f",	-- WSO Right MPD Push Button 3  ( DEVICE_ID: 39 DCS_ID: 3063)
			[1248]	= "%.1f",	-- WSO Right MPD Push Button 4  ( DEVICE_ID: 39 DCS_ID: 3064)
			[1247]	= "%.1f",	-- WSO Right MPD Push Button 5  ( DEVICE_ID: 39 DCS_ID: 3065)
			[1266]	= "%.1f",	-- WSO Right MPD Push Button 6  ( DEVICE_ID: 39 DCS_ID: 3066)
			[1265]	= "%.1f",	-- WSO Right MPD Push Button 7  ( DEVICE_ID: 39 DCS_ID: 3067)
			[1264]	= "%.1f",	-- WSO Right MPD Push Button 8  ( DEVICE_ID: 39 DCS_ID: 3068)
			[1263]	= "%.1f",	-- WSO Right MPD Push Button 9  ( DEVICE_ID: 39 DCS_ID: 3069)
			[1262]	= "%.1f",	-- WSO Right MPD Push Button 10  ( DEVICE_ID: 39 DCS_ID: 3070)
			[1261]	= "%.1f",	-- WSO Right MPD Push Button 11  ( DEVICE_ID: 39 DCS_ID: 3071)
			[1260]	= "%.1f",	-- WSO Right MPD Push Button 12  ( DEVICE_ID: 39 DCS_ID: 3072)
			[1259]	= "%.1f",	-- WSO Right MPD Push Button 13  ( DEVICE_ID: 39 DCS_ID: 3073)
			[1258]	= "%.1f",	-- WSO Right MPD Push Button 14  ( DEVICE_ID: 39 DCS_ID: 3074)
			[1257]	= "%.1f",	-- WSO Right MPD Push Button 15  ( DEVICE_ID: 39 DCS_ID: 3075)
			[1256]	= "%.1f",	-- WSO Right MPD Push Button 16  ( DEVICE_ID: 39 DCS_ID: 3076)
			[1255]	= "%.1f",	-- WSO Right MPD Push Button 17  ( DEVICE_ID: 39 DCS_ID: 3077)
			[1254]	= "%.1f",	-- WSO Right MPD Push Button 18  ( DEVICE_ID: 39 DCS_ID: 3078)
			[1253]	= "%.1f",	-- WSO Right MPD Push Button 19  ( DEVICE_ID: 39 DCS_ID: 3079)
			[1252]	= "%.1f",	-- WSO Right MPD Push Button 20  ( DEVICE_ID: 39 DCS_ID: 3080)
		--  TEWS Control Panel
			[1470]	= "%.1f",	-- WSO TEWS EWWS ON/OFF Switch  ( DEVICE_ID: 59 DCS_ID: 3902)
			[1471]	= "%.1f",	-- WSO TEWS EWWS TONE/DEFEAT Switch  ( DEVICE_ID: 59 DCS_ID: 3903)
			[1465]	= "%.1f",	-- WSO TEWS ICS ON/OFF Switch  ( DEVICE_ID: 61 DCS_ID: 3921)
			[1466]	= "%.1f",	-- WSO TEWS ICS SET 1 MAN/AUTO Switch  ( DEVICE_ID: 61 DCS_ID: 3922)
			[1467]	= "%.1f",	-- WSO TEWS ICS SET 2 MAN/AUTO Switch  ( DEVICE_ID: 61 DCS_ID: 3923)
			[1468]	= "%.1f",	-- WSO TEWS ICS SET 3 MAN/AUTO Switch  ( DEVICE_ID: 61 DCS_ID: 3924)
			[1469]	= "%.1f",	-- WSO TEWS RWR ON/OFF Switch  ( DEVICE_ID: 59 DCS_ID: 3901)
		--  Throttle Quadrant
			[1403]	= "%.1f",	-- WSO Throttle Rudder Trim Switch  ( DEVICE_ID: 18 DCS_ID: 3403)
			[1431]	= "%.1f",	-- WSO Throttle Seat Adjust Switch  ( DEVICE_ID: 24 DCS_ID: 3431)
			[802]	= "%.1f",	-- WSO Throttle Seat Arm Handle  ( DEVICE_ID: 24 DCS_ID: 3802)
		--  TPOD Panel
			[1414]	= "%.1f",	-- WSO TGP FLIR Gain  ( DEVICE_ID: 54 DCS_ID: 3414)
			[1415]	= "%.1f",	-- WSO TGP FLIR Level  ( DEVICE_ID: 54 DCS_ID: 3415)
			[1416]	= "%.1f",	-- WSO TGP Laser Switch SAFE/ARM  ( DEVICE_ID: 54 DCS_ID: 3416)
			[1413]	= "%.1f",	-- WSO TGP Power Switch OFF/STBY/ON  ( DEVICE_ID: 54 DCS_ID: 3413)
		--  UFC
			[1293]	= "%.1f",	-- WSO UFC Push Button 1  ( DEVICE_ID: 57 DCS_ID: 3001)
			[1294]	= "%.1f",	-- WSO UFC Push Button 2  ( DEVICE_ID: 57 DCS_ID: 3002)
			[1295]	= "%.1f",	-- WSO UFC Push Button 3  ( DEVICE_ID: 57 DCS_ID: 3003)
			[1296]	= "%.1f",	-- WSO UFC Push Button 4  ( DEVICE_ID: 57 DCS_ID: 3004)
			[1297]	= "%.1f",	-- WSO UFC Push Button 5  ( DEVICE_ID: 57 DCS_ID: 3005)
			[1298]	= "%.1f",	-- WSO UFC Push Button 10  ( DEVICE_ID: 57 DCS_ID: 3006)
			[1299]	= "%.1f",	-- WSO UFC Push Button 9  ( DEVICE_ID: 57 DCS_ID: 3007)
			[1300]	= "%.1f",	-- WSO UFC Push Button 8  ( DEVICE_ID: 57 DCS_ID: 3008)
			[1301]	= "%.1f",	-- WSO UFC Push Button 7  ( DEVICE_ID: 57 DCS_ID: 3009)
			[1302]	= "%.1f",	-- WSO UFC Push Button 6  ( DEVICE_ID: 57 DCS_ID: 3010)
			[1303]	= "%.1f",	-- WSO Left UHF Preset Channel Selector  ( DEVICE_ID: 57 DCS_ID: 3011)
			[1304]	= "%.1f",	-- WSO Left UHF Preset Channel Switch  ( DEVICE_ID: 57 DCS_ID: 3055)
			[1305]	= "%.1f",	-- WSO Right UHF Preset Channel Selector  ( DEVICE_ID: 57 DCS_ID: 3012)
			[1306]	= "%.1f",	-- WSO Right UHF Preset Channel Switch  ( DEVICE_ID: 57 DCS_ID: 3056)
			[1307]	= "%.1f",	-- WSO UHF Radio 1 Volume  ( DEVICE_ID: 57 DCS_ID: 3013)
			[1308]	= "%.1f",	-- WSO UHF Radio 2 Volume  ( DEVICE_ID: 57 DCS_ID: 3014)
			[1309]	= "%.1f",	-- WSO UHF Radio 3 Volume  ( DEVICE_ID: 57 DCS_ID: 3015)
			[1310]	= "%.1f",	-- WSO UHF Radio 4 Volume  ( DEVICE_ID: 57 DCS_ID: 3016)
			[1311]	= "%.1f",	-- WSO UFC LCD Brightness  ( DEVICE_ID: 57 DCS_ID: 3017)
			[1312]	= "%.1f",	-- WSO UFC Emission Limit Button  ( DEVICE_ID: 57 DCS_ID: 3018)
			[1313]	= "%.1f",	-- WSO Left Guard Receiver - Channel/Manual Key  ( DEVICE_ID: 57 DCS_ID: 3019)
			[1314]	= "%.1f",	-- WSO A/1 Key  ( DEVICE_ID: 57 DCS_ID: 3020)
			[1315]	= "%.1f",	-- WSO N/2 Key  ( DEVICE_ID: 57 DCS_ID: 3021)
			[1316]	= "%.1f",	-- WSO B/3 Key  ( DEVICE_ID: 57 DCS_ID: 3022)
			[1317]	= "%.1f",	-- WSO Right Guard Receiver - Channel/Manual Key  ( DEVICE_ID: 57 DCS_ID: 3023)
			[1318]	= "%.1f",	-- WSO Mark Key  ( DEVICE_ID: 57 DCS_ID: 3024)
			[1319]	= "%.1f",	-- WSO W/4 Key  ( DEVICE_ID: 57 DCS_ID: 3025)
			[1320]	= "%.1f",	-- WSO M/5 Key  ( DEVICE_ID: 57 DCS_ID: 3026)
			[1321]	= "%.1f",	-- WSO E/6 Key  ( DEVICE_ID: 57 DCS_ID: 3027)
			[1322]	= "%.1f",	-- WSO I/P Key  ( DEVICE_ID: 57 DCS_ID: 3028)
			[1323]	= "%.1f",	-- WSO Decimal Point Key  ( DEVICE_ID: 57 DCS_ID: 3029)
			[1324]	= "%.1f",	-- WSO :/7 Key  ( DEVICE_ID: 57 DCS_ID: 3030)
			[1325]	= "%.1f",	-- WSO S/8 Key  ( DEVICE_ID: 57 DCS_ID: 3031)
			[1326]	= "%.1f",	-- WSO C/9 Key  ( DEVICE_ID: 57 DCS_ID: 3032)
			[1327]	= "%.1f",	-- WSO Shift Key  ( DEVICE_ID: 57 DCS_ID: 3033)
			[1328]	= "%.1f",	-- WSO A/P Key  ( DEVICE_ID: 57 DCS_ID: 3034)
			[1329]	= "%.1f",	-- WSO Clear Key  ( DEVICE_ID: 57 DCS_ID: 3035)
			[1330]	= "%.1f",	-- WSO -/0 Key  ( DEVICE_ID: 57 DCS_ID: 3036)
			[1331]	= "%.1f",	-- WSO Data Key  ( DEVICE_ID: 57 DCS_ID: 3037)
			[1332]	= "%.1f",	-- WSO Menu Key  ( DEVICE_ID: 57 DCS_ID: 3038)
		--  Volume
			[1420]	= "%.1f",	-- WSO Caution Volume  ( DEVICE_ID: 59 DCS_ID: 3510)
			[1422]	= "%.1f",	-- WSO ICS Volume  ( DEVICE_ID: 61 DCS_ID: 3512)
			[1424]	= "%.1f",	-- WSO ILS Volume  ( DEVICE_ID: 11 DCS_ID: 3514)
			[1421]	= "%.1f",	-- WSO Launch Volume  ( DEVICE_ID: 59 DCS_ID: 3511)
			[1425]	= "%.1f",	-- WSO TACAN Volume  ( DEVICE_ID: 10 DCS_ID: 3515)
			[1423]	= "%.1f",	-- WSO WPN Volume  ( DEVICE_ID: 44 DCS_ID: 3513)

	}
-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-----------------------------
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)	-- Pointed to by ProcessIkarusDCSHighImportance
	end
----------------------------
-- LOW IMPORTANCE EXPORTS --
----------------------------
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)	-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
	--ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
	--------------------------------------------------------------------------------------------------------------
	-- TEST DISPLAY
		ExportScript.Tools.SendData(757575,"⚪⚫\n🟡🔴\n🟢❌")

	-- ADVANCED UFC IMPLEMENTATION v1
		if Norsk_UFC == "TRUE" then
			PILOT_UFCa(ExportScript.Tools.getListIndicatorValue(9))	-- Updated 25/7/2023
		else
			PILOT_UFC(ExportScript.Tools.getListIndicatorValue(9))	-- Updated 25/7/2023
		end
		WSO_UFC(ExportScript.Tools.getListIndicatorValue(18))	-- Updated 25/7/2023
	-- COMBINED FUEL DISPLAY
		ExportScript.Tools.SendData(83830,FUEL_display(mainPanelDevice,0))	-- NOTE EXPORT ID HAS CHANGED
	-- INDIVIDUAL FUEL DATA
		-- With Lables
		ExportScript.Tools.SendData(7383,FUEL_display(mainPanelDevice,"INTL").."\nINTL")
		ExportScript.Tools.SendData(7368,FUEL_display(mainPanelDevice,"TOTAL").."\nTOTAL")
		ExportScript.Tools.SendData(7373,FUEL_display(mainPanelDevice,"LEFT").."\nLEFT")
		ExportScript.Tools.SendData(7377,FUEL_display(mainPanelDevice,"RIGHT").."\nRIGHT")
		ExportScript.Tools.SendData(7384,FUEL_display(mainPanelDevice,"BINGO").."\nBINGO")
		-- No Labels
		ExportScript.Tools.SendData(8383,FUEL_display(mainPanelDevice,"INTL"))
		ExportScript.Tools.SendData(8368,FUEL_display(mainPanelDevice,"TOTAL"))
		ExportScript.Tools.SendData(8373,FUEL_display(mainPanelDevice,"LEFT"))
		ExportScript.Tools.SendData(8377,FUEL_display(mainPanelDevice,"RIGHT"))
		ExportScript.Tools.SendData(8384,FUEL_display(mainPanelDevice,"BINGO"))
	-- COMBINED ENGINE MANAGEMENT DISPLAY
		ExportScript.Tools.SendData(81100,EMD_display(mainPanelDevice,0))
	-- INDIVIDUAL EMD DATA
		-- With Lables
		ExportScript.Tools.SendData(71102,EMD_display(mainPanelDevice,"RPM_L").."\nRPM_L")
		ExportScript.Tools.SendData(71105,EMD_display(mainPanelDevice,"RPM_R").."\nRPM_R")
		ExportScript.Tools.SendData(71109,EMD_display(mainPanelDevice,"TMP_L").."\nTMP_L")
		ExportScript.Tools.SendData(71113,EMD_display(mainPanelDevice,"TMP_R").."\nTMP_R")
		ExportScript.Tools.SendData(71118,EMD_display(mainPanelDevice,"FF_L").."\nFF_L")
		ExportScript.Tools.SendData(71123,EMD_display(mainPanelDevice,"FF_R").."\nFF_R")
		ExportScript.Tools.SendData(71130,EMD_display(mainPanelDevice,"NOZ_L").."\nNOZ_L")
		ExportScript.Tools.SendData(71131,EMD_display(mainPanelDevice,"NOZ_R").."\nNOZ_R")
		ExportScript.Tools.SendData(71126,EMD_display(mainPanelDevice,"OIL_L").."\nOIL_L")
		ExportScript.Tools.SendData(71129,EMD_display(mainPanelDevice,"OIL_R").."\nOIL_R")
		-- No Labels
		ExportScript.Tools.SendData(81102,EMD_display(mainPanelDevice,"RPM_L"))
		ExportScript.Tools.SendData(81105,EMD_display(mainPanelDevice,"RPM_R"))
		ExportScript.Tools.SendData(81109,EMD_display(mainPanelDevice,"TMP_L"))
		ExportScript.Tools.SendData(81113,EMD_display(mainPanelDevice,"TMP_R"))
		ExportScript.Tools.SendData(81118,EMD_display(mainPanelDevice,"FF_L"))
		ExportScript.Tools.SendData(81123,EMD_display(mainPanelDevice,"FF_R"))
		ExportScript.Tools.SendData(81130,EMD_display(mainPanelDevice,"NOZ_L"))
		ExportScript.Tools.SendData(81131,EMD_display(mainPanelDevice,"NOZ_R"))
		ExportScript.Tools.SendData(81126,EMD_display(mainPanelDevice,"OIL_L"))
		ExportScript.Tools.SendData(81129,EMD_display(mainPanelDevice,"OIL_R"))
	-- GEAR & FLAP STATUS TILES
		ExportScript.Tools.SendData(5022,GearTile(mainPanelDevice))
		ExportScript.Tools.SendData(5023,FlapTile(mainPanelDevice))
	-- BASIC HUD DATA DISPLAY v1
		ExportScript.Tools.SendData(6001,HUD_display(ExportScript.Tools.getListIndicatorValue(1),0))	-- Combined Speed & Alt Display

		ExportScript.Tools.SendData(6002,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"Speed"))
		ExportScript.Tools.SendData(6003,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"AoA"))

		ExportScript.Tools.SendData(6004,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"AA"))	-- AA Weapon Selected?
		ExportScript.Tools.SendData(6005,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"Mach"))
		ExportScript.Tools.SendData(6006,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"GMet"))

		ExportScript.Tools.SendData(6007,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"HDG"))	-- Comanded NAV Tape Heading?

		ExportScript.Tools.SendData(6008,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"Alt"))
		ExportScript.Tools.SendData(6009,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"VVI"))

		ExportScript.Tools.SendData(6010,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"NAV"))	-- Combined Nav Block
		ExportScript.Tools.SendData(6011,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"UPLEFT"))	
		ExportScript.Tools.SendData(6012,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"LOLEFT"))
		ExportScript.Tools.SendData(6013,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"UPRIGHT"))
		ExportScript.Tools.SendData(6014,HUD_display(ExportScript.Tools.getListIndicatorValue(1),"LORIGHT"))
		ExportScript.Tools.SendData(6015,Aircraft_Data("HDG_MAG"))	-- Added here but not related to HUD
	-- BASIC RADIO Data - This basically shows the actual frequency of transmit as not easy to see on UFC when in preset mode
		ExportScript.Tools.SendData(6501,RADIO_display("BOTH",1))
		ExportScript.Tools.SendData(6502,RADIO_display("CHAN",1))
		ExportScript.Tools.SendData(6503,RADIO_display("FREQ",1))
		ExportScript.Tools.SendData(6504,RADIO_display("BOTH",2))
		ExportScript.Tools.SendData(6505,RADIO_display("CHAN",2))
		ExportScript.Tools.SendData(6506,RADIO_display("FREQ",2))
	-- Oxygen PSI gauge export (6554)
		ExportScript.Tools.SendData(6554,string.format("%1.0f", mainPanelDevice:get_argument_value(554) * 400) .. "\nPSI")
	-- SpeedBrake
		ExportScript.Tools.SendData(6579,Mech_Data("SPDBRK_Value"))

	end	
--------------------------------------------------------------------------------------------------------------
-----------------------
-- GENERAL FUNCTIONS --
-----------------------
function ExportScript.CockpitParamsLogDump(mainPanelDevice) -- Get list of cockpit params
   ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
	end
function ExportScript.MetaTableLogDump(mainPanelDevice) -- getmetatable get function name from devices
    local ltmp1 = 0
    for ltmp2 = 1, 70, 1 do
        ltmp1 = GetDevice(ltmp2)
        ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
        ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
    end
	end
function ExportScript.ListIndicationLogDump(mainPanelDevice) -- list_indication get the value of cockpit displays
    local ltmp1 = 0
    for ltmp2 = 0, 20, 1 do
        ltmp1 = list_indication(ltmp2)
        ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
    end
	end
function Linearize(current_value, raw_tab, final_tab)	-- Converts Guage value to readable format 
	if current_value <= 0 then
		return 0
	end
	for index, value in ipairs(raw_tab) do
		if current_value <= value then
			local ft = final_tab[index]
			local rt = raw_tab[index]
			return (current_value - rt) * (ft - final_tab[index - 1]) / (rt - raw_tab[index - 1]) + ft
		end
	end
	-- we shouldn't be here, so something went wrong - return arbitrary max. final value, maybe the user will notice the problem:
	return final_tab[#final_tab]
	end
function RoundTo(num, numDecimalPlaces)	--http://lua-users.org/wiki/SimpleRound
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
	end
function Round(num)	-- Rounds UP/Down to Nearest Whole Number
	return num % 1 >= 0.5 and math.ceil(num) or math.floor(num)
	end
function RoundDP(num)	-- Rounds UP/Down to Nearest Whole Number
	value = Round(num*10)
	return value/10
	end
function ZeroNine(num)	-- Used with Round to roll a round up from 10 to 0.
	if num >= 9.9 then
		return 0
	else
		return num
	end
	end
function OneToZero(num)	-- Used to roll a round up from 1.0 to 0.0
	if num >= 1.0 then
		return 0.0
	else
		return num
	end
	end
function nilToEmpty(value)	-- Converts a nil string to an empty string ""
	if value == nil then
		value = ''
		return value
	else
		return value
	end
	end
----------------------
-- CUSTOM FUNCTIONS --
----------------------
function Aircraft_Data(Option)	-- The standard LoMAC Aircraft data extracted and formatted
	Pilot = LoGetPilotName()
	--IAS = string.format("%1d",LoGetIndicatedAirSpeed()).."kts"
	--TAS = string.format("%1d",LoGetTrueAirSpeed()).."kts"
	--AS = "I "..string.format("%1d",LoGetIndicatedAirSpeed()).."kts\nT "..string.format("%1d",LoGetTrueAirSpeed()).."kts"
	--Alt_ASL = string.format("%1d",LoGetAltitudeAboveSeaLevel()*3.28084)
	--Alt_AGL = string.format("%1d",LoGetAltitudeAboveGroundLevel())
	--AoA = (LoGetAngleOfAttack()*57.2957795).." α"
	--Mach = "M "..(string.format("%.2f",RoundTo(LoGetMachNumber(),2)))
	HDG_MAG = string.format("%1d",LoGetMagneticYaw()*57.2957795).."°"
	--HDG_TRU = string.format("%1d",((LoGetSelfData().Heading)*57.2957795)).."°"
	--HDG = "HDG\n"..HDG_MAG.." M\n"..HDG_TRU.." SE"
	--VVel = string.format("%1d",(LoGetVerticalVelocity()*3.28084)*60)
	return _G[Option]
	end
function Mech_Data(Option)	-- The standard LoMAC Mech data extracted and formatted
	mechanisationStatus = LoGetMechInfo()
	--SPDBRK_Status = mechanisationStatus.speedbrakes.status
    SPDBRK_Value = string.format("%1d",(mechanisationStatus.speedbrakes.value * 100)).."%"
	return _G[Option]
	end

function FORMAT_UFC(Input)	-- Re-Formats Data For Clear UFC Display v1
	Input = Input:gsub(":",".")
	if string.sub(Input,1,1) == " " then Input = Input:sub(2) end	-- remove leading space
	--if string.sub(Input,string.len(Input),sting.len(input)) == " " then Input = string.sub(Input,1,string.len(Input)-1) end	-- remove leading space
	if (string.sub(Input,1,1) == "N" or string.sub(Input,1,1) == "S")
			and string.sub(Input,2,2) ~= "T" and string.sub(Input,2,2) ~= "P" and string.sub(Input,2,2) ~= "-" and string.sub(Input,2,2) ~= "O" and string.sub(Input,2,2) ~= "Y"
			and string.sub(Input,2,2) ~= "E" and string.sub(Input,2,2) ~= "B" and string.sub(Input,2,2) ~= "Q" then -- Check for Latitude
		return string.sub(Input,1,1).." "..string.sub(Input,2,3).."°\n"..string.sub(Input,4,5)..".\n"..string.sub(Input,6,8) -- Format for Latitude
	elseif (string.sub(Input,1,1) == "E" or string.sub(Input,1,1) == "W") and string.sub(Input,2,2) == " " then -- Check for Longitude
		return string.sub(Input,1,4).."°\n"..string.sub(Input,5,6)..".\n"..string.sub(Input,7,9) -- Format for Longitude
	elseif (string.sub(Input,(string.len(Input)-2),(string.len(Input))) == "-AM" or string.sub(Input,(string.len(Input)-2),(string.len(Input))) == "-FM" )and string.len(Input) > 7 then
		return string.sub(Input,1,3).."\n."..string.sub(Input,4,6).."\n"..string.sub(Input,(string.len(Input)-1),(string.len(Input)))
	elseif string.sub(Input,1,3) == "ILS" and string.len(Input) > 7 then return string.sub(Input,1,3).."\n"..string.sub(Input,5,7).."."..string.sub(Input,8,9)
	--elseif string.sub(Input, 1,3)== "MV " then return Input:gsub(" ","\n")
	elseif string.sub(Input,1,3) == "MV " then return string.sub(Input,1,2).."\n"..string.sub(Input,4,5).." "..string.sub(Input,(string.len(Input)-2),(string.len(Input)))
	elseif string.sub(Input,1,3) == "N-F" or string.sub(Input,1,3) == "A/P"  then return Input:gsub(" ","\n")	-- check as this has lot's of break points and A/P is just annoying...
	elseif string.sub(Input,1,3) == "R  " then return Input:gsub("   ","\n")	-- How much White space?
	elseif (string.sub(Input,1,4) == "TIME" or string.sub(Input,1,4) == "ETE " or string.sub(Input,1,4) == "TOA " or string.sub(Input,1,4) == "ETA " or string.sub(Input,1,4) == "TOT ")  and string.len(Input) > 9 then
		return string.sub(Input:gsub(" "," "),1,4).."\n"..string.sub(Input,(string.len(Input)-7),(string.len(Input)-3)).."\n"..string.sub(Input,(string.len(Input)-1),(string.len(Input)))	-- Time is avery long string....
	elseif string.len(Input) > 5 then	-- Check the string is too long
		Input = ((((((((Input:gsub(":",".")):gsub("'","")):gsub("PROGRAM","PROG")):gsub("  "," ")):gsub(" ","\n")):gsub("-","\n-")):gsub("/","\n/")):gsub("SQUELCH","SQL")):gsub("CIPHER","CPHR")	-- then create new lines at logical points
		if string.find(Input,"\n") ~= nil then return Input	-- check if new lines have been created and return or
		elseif string.len(Input) == 6 then return string.sub(Input,1,3).."\n"..string.sub(Input,4,6)
		elseif string.len(Input) == 8 then return string.sub(Input,1,4).."\n"..string.sub(Input,5,8)
								----elseif string.len(Input) == 6 and string.sub(6,6) == "\'" then return Input
		else return nilToEmpty(string.sub(Input,1,5)).."\n".. nilToEmpty(string.sub(Input,6,10)).."\n".. nilToEmpty(Input:sub(11))	-- then create new lines at fixed points if needed
		end
	else
		return Input	-- or just retun the <5 char string
	end
	end
function FORMAT_UFCRAD(Input)	-- Re-Formats Data For Clear UFC RADIO Display v1
	-- OFF
	if string.sub(Input,(string.len(Input)-2),(string.len(Input))) == "OFF" then return string.sub(Input,2,string.len(Input)):gsub(" ","\n")
	elseif string.sub(Input,(string.len(Input)-3),(string.len(Input))) == "OFF " then return string.sub(Input,1,(string.len(Input)-1)):gsub(" ","\n")
	-- Match L & R Data Fields
	elseif string.sub(Input,(string.len(Input)),(string.len(Input))) == "*" then Input = "*".. string.sub(Input,1,(string.len(Input)-1))
	elseif string.sub(Input,(string.len(Input)),(string.len(Input))) == " " then Input = " "..string.sub(Input,1,(string.len(Input)-1))end
	-- Spit Freq from Channel and return strings
	if string.len(Input) < 5 then return Input else return string.sub(Input,1,(string.len(Input)-3)).."\n."..string.sub(Input,(string.len(Input)-2),(string.len(Input))) end
	end
function FORMAT_SCRATCH(Input)
	Input = Input:gsub(":",".")
	Len = string.len(Input)
	if Len <=5 then
		return Input
	elseif Len <=8 then
		return string.sub(Input,1,3).."\n"..string.sub(Input,4,Len)
	elseif Len <=10 then
		return string.sub(Input,1,3).."\n"..string.sub(Input,4,6).."\n"..string.sub(Input,7,Len)
	else
		return string.sub(Input,1,4).."\n"..string.sub(Input,5,8).."\n"..string.sub(Input, 9,Len)
	end
	end
function PILOT_UFC(UFC_PILOT)	-- PILOT UFC export for Norsk-L
	if UFC_PILOT == nil then
		ExportScript.Tools.SendData(82001,"NO\nDATA")
	else
	-- LEFT SIDE DESCENDING FROM THE TOP
		ExportScript.Tools.SendData(82001,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_01)))
		ExportScript.Tools.SendData(82002,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_02)))
		ExportScript.Tools.SendData(82003,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_03)))
		ExportScript.Tools.SendData(82004,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_04)))
		-- RADIO
		ExportScript.Tools.SendData(82005,FORMAT_UFCRAD(nilToEmpty(UFC_PILOT.UFC_SC_05)))	-- Radio Freq
		ExportScript.Tools.SendData(82006,FORMAT_UFCRAD(nilToEmpty(UFC_PILOT.UFC_SC_06)))	-- Radio Channel

	-- CENTRE DESCENDING FROM THE TOP
		ExportScript.Tools.SendData(82011,nilToEmpty(UFC_PILOT.UFC_CC_01:gsub(":",".")))	
		ExportScript.Tools.SendData(82012,nilToEmpty(UFC_PILOT.UFC_CC_02:gsub(":",".")))	
		ExportScript.Tools.SendData(82013,nilToEmpty(UFC_PILOT.UFC_CC_03:gsub(":",".")))	
		ExportScript.Tools.SendData(82014,FORMAT_SCRATCH(nilToEmpty(UFC_PILOT.UFC_CC_04)))	-- SCRATCHPAD
		
	-- RIGHT SIDE SIDE DESCENDING FROM THE TOP
		ExportScript.Tools.SendData(82021,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_12)))	
		ExportScript.Tools.SendData(82022,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_11)))	
		ExportScript.Tools.SendData(82023,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_10)))	
		ExportScript.Tools.SendData(82024,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_09)))
		-- RADIO
		ExportScript.Tools.SendData(82025,FORMAT_UFCRAD(nilToEmpty(UFC_PILOT.UFC_SC_08)))	-- Radio Freq
		ExportScript.Tools.SendData(82026,FORMAT_UFCRAD(nilToEmpty(UFC_PILOT.UFC_SC_07)))	-- Radio Channel
	end
	end
function PILOT_UFCa(UFC_PILOT)	-- PILOT UFC export for Norsk-L
	if UFC_PILOT == nil then
		ExportScript.Tools.SendData(82001,"NO\nDATA")
	else
	-- LEFT SIDE DESCENDING FROM THE TOP
		ExportScript.Tools.SendData(82001,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_01)))
		ExportScript.Tools.SendData(82002,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_02)))
		ExportScript.Tools.SendData(82003,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_03)))
		ExportScript.Tools.SendData(82004,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_04)))
		-- RADIO
		ExportScript.Tools.SendData(82005,FORMAT_UFCRAD(nilToEmpty(UFC_PILOT.UFC_SC_05)))	-- Radio Freq
		ExportScript.Tools.SendData(82006,FORMAT_UFCRAD(nilToEmpty(UFC_PILOT.UFC_SC_06)))	-- Radio Channel

	-- RIGHT SIDE SIDE DESCENDING FROM THE TOP
		ExportScript.Tools.SendData(82012,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_12)))	
		ExportScript.Tools.SendData(82011,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_11)))	
		ExportScript.Tools.SendData(82010,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_10)))	
		ExportScript.Tools.SendData(82009,FORMAT_UFC(nilToEmpty(UFC_PILOT.UFC_SC_09)))
		-- RADIO
		ExportScript.Tools.SendData(82008,FORMAT_UFCRAD(nilToEmpty(UFC_PILOT.UFC_SC_08)))	-- Radio Freq
		ExportScript.Tools.SendData(82007,FORMAT_UFCRAD(nilToEmpty(UFC_PILOT.UFC_SC_07)))	-- Radio Channel

	--CENTRE DESCENDING FROM THE TOP
		ExportScript.Tools.SendData(82013,nilToEmpty(UFC_PILOT.UFC_CC_01:gsub(":",".")))	
		ExportScript.Tools.SendData(82014,nilToEmpty(UFC_PILOT.UFC_CC_02:gsub(":",".")))	
		ExportScript.Tools.SendData(82015,nilToEmpty(UFC_PILOT.UFC_CC_03:gsub(":",".")))	
		ExportScript.Tools.SendData(82016,FORMAT_SCRATCH(nilToEmpty(UFC_PILOT.UFC_CC_04)))	-- SCRATCHPAD
	end
	end
function WSO_UFC(UFC_WSO)	-- WSO UFC export for Norsk-L
	if UFC_WSO == nil then
		ExportScript.Tools.SendData(82000,"NO\nDATA\nWSO")
	else
	-- LEFT SIDE DESCENDING FROM THE TOP
		ExportScript.Tools.SendData(82031,FORMAT_UFC(nilToEmpty(UFC_WSO.UFC_SC_01)))
		ExportScript.Tools.SendData(82032,FORMAT_UFC(nilToEmpty(UFC_WSO.UFC_SC_02)))
		ExportScript.Tools.SendData(82033,FORMAT_UFC(nilToEmpty(UFC_WSO.UFC_SC_03)))
		ExportScript.Tools.SendData(82034,FORMAT_UFC(nilToEmpty(UFC_WSO.UFC_SC_04)))
		-- RADIO
		ExportScript.Tools.SendData(82035,FORMAT_UFCRAD(nilToEmpty(UFC_WSO.UFC_SC_05)))	-- Radio Freq
		ExportScript.Tools.SendData(82036,FORMAT_UFCRAD(nilToEmpty(UFC_WSO.UFC_SC_06)))	-- Radio Channel	
	--CENTRE DESCENDING FROM THE TOP
		ExportScript.Tools.SendData(82041,nilToEmpty(UFC_WSO.UFC_CC_01:gsub(":",".")))	
		ExportScript.Tools.SendData(82042,nilToEmpty(UFC_WSO.UFC_CC_02:gsub(":",".")))	
		ExportScript.Tools.SendData(82043,nilToEmpty(UFC_WSO.UFC_CC_03:gsub(":",".")))	
		ExportScript.Tools.SendData(82044,FORMAT_SCRATCH(nilToEmpty(UFC_WSO.UFC_CC_04)))	-- SCRATCHPAD
	-- RIGHT SIDE SIDE DESCENDING FROM THE TOP
		ExportScript.Tools.SendData(82051,FORMAT_UFC(nilToEmpty(UFC_WSO.UFC_SC_12)))	
		ExportScript.Tools.SendData(82052,FORMAT_UFC(nilToEmpty(UFC_WSO.UFC_SC_11)))	
		ExportScript.Tools.SendData(82053,FORMAT_UFC(nilToEmpty(UFC_WSO.UFC_SC_10)))	
		ExportScript.Tools.SendData(82054,FORMAT_UFC(nilToEmpty(UFC_WSO.UFC_SC_09)))
		-- RADIO
		ExportScript.Tools.SendData(82055,FORMAT_UFCRAD(nilToEmpty(UFC_WSO.UFC_SC_08)))	-- Radio Freq
		ExportScript.Tools.SendData(82056,FORMAT_UFCRAD(nilToEmpty(UFC_WSO.UFC_SC_07)))	-- Radio Channel
	end
	end
function FUEL_display(Data,Option) -- Combines/Converts FUEL guage to single string or pulls the seperate values
	-- Option 0 gives all data, use the seperale element names to pull single values (OFF,Dial,TOTAL,Left,RIGHT)
	-- Example ExportScript.Tools.SendData(88383,ExportScript.FUEL(mainPanelDevice,"TOTAL")) sends back just the TOTALizer
	-- Convert the raw data and set as variables
		OFF = string.format("%1d",Data:get_argument_value(382))	
		INTL	=	string.format("%1d",Data:get_argument_value(383)*20000)
		BINGO	=	string.format("%1d",(Data:get_argument_value(384)/0.0714285)*1000)
		TOTAL	=	(string.format("%.1f",OneToZero(RoundDP(Data:get_argument_value(368))))*100000)+
					(string.format("%.1f",OneToZero(RoundDP(Data:get_argument_value(369))))*10000)+
					(string.format("%.1f",OneToZero(RoundDP(Data:get_argument_value(370))))*1000)
		LEFT	=	(string.format("%.1f",OneToZero(RoundDP(Data:get_argument_value(373))))*10000)+
					(string.format("%.1f",OneToZero(RoundDP(Data:get_argument_value(374))))*1000)
		RIGHT	=	(string.format("%.1f",OneToZero(RoundDP(Data:get_argument_value(377))))*10000)+
					(string.format("%.1f",OneToZero(RoundDP(Data:get_argument_value(378))))*1000)
	-- Extend roller displays with leading zeros
		if string.len(TOTAL) < 5 then
			repeat
				TOTAL = "0"..TOTAL
			until string.len(TOTAL) == 5
		end
		if string.len(LEFT) < 4 then
			repeat
				LEFT = "0"..LEFT
			until string.len(LEFT) == 4
		end
		if string.len(RIGHT) < 4 then
			repeat
				RIGHT = "0"..RIGHT
			until string.len(RIGHT) == 4
		end
	-- Publish the Data
		if Option == 0 then	-- Send all Data to single string	
			if OFF == "0" then return "OFF"
			else
				return	INTL.."\n"..
						"INTL\n"..
						TOTAL.."\n"..
						"TOTAL LBS".."\n"..
						" LEFT  RIGHT".."\n"..
						LEFT.."  "..RIGHT.."\n"..
						"BINGO "..BINGO
			end
		else	-- Just return the requested field
			return	_G[Option]
		end
	end
function EMD_display(Data,Option) -- Combines/Converts EMD to single string or pulls the seperate values
	-- Option 0 gives all data, use the seperale element names to pull single values (RPM_L,RPM_R,TMP_L,TMP_R,FF_L,FF_R,NOZ_L,NOZ_R,OIL_L,OIL_R)
	-- Example ExportScript.Tools.SendData(81101,ExportScript.EMD(mainPanelDevice,"RPM_L")) sends back just the Left RPM value
	RPM_L	=	(string.format("%.1f",OneToZero(Data:get_argument_value(1102)))*1000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1101)))*100)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1100)))*10)
	RPM_R	=	(string.format("%.1f",OneToZero(Data:get_argument_value(1105)))*1000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1104)))*100)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1103)))*10)
	TMP_L	=	(string.format("%.1f",OneToZero(Data:get_argument_value(1109)))*10000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1108)))*1000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1107)))*100)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1106)))*10)
	TMP_R	=	(string.format("%.1f",OneToZero(Data:get_argument_value(1113)))*10000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1112)))*1000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1111)))*100)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1110)))*10)
	FF_L	=	(string.format("%.1f",OneToZero(Data:get_argument_value(1118)))*100000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1117)))*10000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1116)))*1000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1115)))*100)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1114)))*10)
	FF_R	=	(string.format("%.1f",OneToZero(Data:get_argument_value(1123)))*100000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1122)))*10000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1121)))*1000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1120)))*100)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1119)))*10)
	NOZ_L	=	string.format("%1d",Data:get_argument_value(1130)*100)
	NOZ_R	=	string.format("%1d",Data:get_argument_value(1131)*100)
	OIL_L	=	(string.format("%.1f",OneToZero(Data:get_argument_value(1126)))*1000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1125)))*100)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1124)))*10)
	OIL_R	=	(string.format("%.1f",OneToZero(Data:get_argument_value(1129)))*1000)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1128)))*100)+
				(string.format("%.1f",OneToZero(Data:get_argument_value(1127)))*10)
	if Option == 0 then
		return	  RPM_L.." RPM "..RPM_R.."\n"
				..TMP_L.." TMP "..TMP_R.."\n"
	  			..FF_L.." FF "..FF_R.."\n"
				..NOZ_L.." NOZ "..NOZ_R.."\n"
				..OIL_L.." OIL "..OIL_R
	else
		return	_G[Option]
	end
	end
function HUD_display(Data,Option) -- Extracts dat aelemnts from the HUD to provide as single exports or combined exports
	-- Check for data flowing into function	
	if Data == nil then return "NO\nDATA"
	else
	-- Set No Data State for Variables
	Speed = '❌ kts'
	AoA = 'α ❌'
	Mach = 'm ❌'
	GMet = 'G ❌'
	AA = ''
	Alt = '❌ ft'
	VVI = '❌ fpm'
	HDG = '❌°'
	Nav1 = '❌'
	Nav2 = ''
	Nav3 = ''
	Nav4 = ''
	Nav5 = ''
	Nav6 = ''
	-- Update Variables based on data output, converting as needed for blank strings etc.
	if Data.Window01 ~= nil and Data.Window01 ~= ""  then Speed = Data.Window01.." kts" end
	if Data.Window02 ~= nil then AoA = "α "..Data.Window02 end
	if string.len(nilToEmpty(Data.Window05):gsub(" ","")) ~= 0 then AA = Data.Window05 end
	if string.len(nilToEmpty(Data.Window06):gsub(" ","")) ~= 0 then Mach = "m "..Data.Window06 end
	if string.len(nilToEmpty(Data.Window07):gsub(" ","")) ~= 0 then GMet = Data.Window07 end
	if Data.Window13_Low == "" and Data.Window13_High ~= nil then Alt = Data.Window13_High:gsub(" ","").." ft"
		elseif Data.Window13_Low ~= nil and Data.Window13_High ~= nil then Alt = Data.Window13_High:gsub(" ","")..","..Data.Window13_Low.."ft" end
	if string.len((nilToEmpty(Data.Window14):gsub("VV","")):gsub(" ","")) ~= 0 then VVI = (Data.Window14:gsub(" ","")):gsub("VV","").." fpm" end
	if Data.cmd_hdg ~= nil then HDG = Data.cmd_hdg.."°" end
	if Data.Window17 ~= nil then Nav1 = Data.Window17:gsub(":",".") end
	if Data.Window18 ~= nil then Nav2 = Data.Window18:gsub(":",".") end
	if Data.Window19 ~= nil then Nav3 = Data.Window19:gsub(":",".") end
	if Data.Window20 ~= nil then Nav4 = Data.Window20:gsub(":",".") end
	if Data.Window21 ~= nil then Nav5 = Data.Window21:gsub(":",".") end
	if Data.Window22 ~= nil then Nav6 = Data.Window22:gsub(":",".") end
	-- Check what dat ais being requested and return it
	if Option == 0  then
		return Speed.."\n"..Alt
	elseif Option == "NAV" then
		if string.len(Nav1) ~= 0 then Nav1 = Nav1.."\n" end
		if string.len(Nav2) ~= 0 then Nav2 = Nav2.."\n" end
		if string.len(Nav3) ~= 0 then Nav3 = Nav3.."\n" end
		if string.len(Nav4) ~= 0 then Nav4 = Nav4.."\n" end
		if string.len(Nav5) ~= 0 then Nav5 = Nav5.."\n" end
		return Nav1..Nav2..Nav3..Nav4..Nav5
	elseif Option == "FLT" then
		return Mach.."\n"..GMet
	elseif Option == "UPLEFT" then
		return Speed.."\n"..AoA
	elseif Option == "LOLEFT" then
		return AA.."\n"..Mach.."\n"..GMet
	elseif Option == "UPRIGHT" then
		return Alt.."\n"..VVI
	elseif Option == "LORIGHT" then
		if string.len(Nav1) ~= 0 then Nav1 = Nav1.."\n" end
		if string.len(Nav2) ~= 0 then Nav2 = Nav2.."\n" end
		if string.len(Nav3) ~= 0 then Nav3 = Nav3.."\n" end
		if string.len(Nav4) ~= 0 then Nav4 = Nav4.."\n" end
		if string.len(Nav5) ~= 0 then Nav5 = Nav5.."\n" end
		return Nav1..Nav2..Nav3..Nav4..Nav5..Nav6
	else
		return	_G[Option]
	end
	end
	end
function RADIO_display(Option,Radio)
	--	Set Raw Data Into variables
	r1_chan = nilToEmpty(ExportScript.Tools.getListIndicatorValue(8).UFC_SC_06)
	r1_freq = ExportScript.Tools.RoundFreqeuncy(GetDevice(7):get_frequency())	--string.format("%1d",(GetDevice(7):get_frequency())/1000)
	r1_ufc_freq = nilToEmpty(ExportScript.Tools.getListIndicatorValue(8).UFC_SC_05)
	r2_chan = nilToEmpty(ExportScript.Tools.getListIndicatorValue(8).UFC_SC_07)
	r2_freq = ExportScript.Tools.RoundFreqeuncy(GetDevice(8):get_frequency())	--string.format("%1d",(GetDevice(8):get_frequency())/1000)
	r2_ufc_freq = nilToEmpty(ExportScript.Tools.getListIndicatorValue(8).UFC_SC_08)
	-- Convert to Return Values
	CHAN = ""
	FREQ = ""
	BOTH = ""
	-- Return correct data based on Channel or Manual selected in UFC
	if Radio == 1 then
		if string.sub(r1_chan,1,1) == "*" then 
			CHAN = r1_chan:gsub("*","")
			FREQ = string.sub(r1_freq,1,3).."\n."..string.sub(r1_freq,4,6)
			BOTH = CHAN.."\n"..FREQ
		else
			CHAN = "MAN"
			FREQ = string.sub(r1_ufc_freq,3,5).."\n."..string.sub(r1_ufc_freq,6,8)
			BOTH = CHAN.."\n"..FREQ
		end
	elseif Radio == 2 then
		if string.sub(r2_chan,string.len(r2_chan),string.len(r2_chan)) == "*" then 
			CHAN = r2_chan:gsub("*","")
			FREQ = string.sub(r2_freq,1,3).."\n."..string.sub(r2_freq,4,6)
			BOTH = CHAN.."\n"..FREQ
		else
			CHAN = "MAN"
			FREQ = string.sub(r2_ufc_freq,2,4).."\n."..string.sub(r2_ufc_freq,5,7)
			BOTH = CHAN.."\n"..FREQ
		end
	else
		CHAN = "R NOT\nKNOWN"
		FREQ = "No\nRAD"
		BOTH = CHAN
	end
	return	_G[Option]
	end	
--[[function RadioFreqs(mainPanelDevice) -- TODO: can string this up to display both the channel and freq on the tile
	local radio1_freq = (GetDevice(7):get_frequency())/1000000 -- returns 243.000427
	local radio2_freq = (GetDevice(8):get_frequency())/1000000 -- returns 121.500759
	ExportScript.Tools.SendData(5020, ExportScript.Tools.RoundFreqeuncy(radio1_freq))
	ExportScript.Tools.SendData(5021, ExportScript.Tools.RoundFreqeuncy(radio2_freq))
	end]]
function GearTile(mainPanelDevice)	-- From Bailey's LUA: A grphical indication of Gear Status
	-- ⚪ white
	-- ⚫ black
	-- 🟡 yellow
	-- 🔴 red
	-- 🟢 green
	-- 🔵 blue
	-- 🟠 orange

	-- init as black because it represents the lights as off
	local noseCircle = '⚫'
	local leftCircle = '⚫'
	local rightCircle = '⚫'
	local handleCircle = '⚫'

	if mainPanelDevice:get_argument_value(330) > 0 then
		noseCircle = '🔴'
		if mainPanelDevice:get_argument_value(330) > 0.61 then
			noseCircle = '🟢'
		end
	end

	if mainPanelDevice:get_argument_value(331) > 0 then
		leftCircle = '🔴'
		if mainPanelDevice:get_argument_value(331) > 0.61 then
			leftCircle = '🟢'
		end
	end

	if mainPanelDevice:get_argument_value(332) > 0 then
		rightCircle = '🔴'
		if mainPanelDevice:get_argument_value(332) > 0.61 then
			rightCircle = '🟢'
		end
	end

	if mainPanelDevice:get_argument_value(333) > 0.51 then
		handleCircle = '🔴'
	end

	-- the position of the gear handle itself determines where the text will display
	if mainPanelDevice:get_argument_value(324) > 0.5 then
		return noseCircle .. '\n' .. leftCircle .. rightCircle .. '\n' .. handleCircle .. '\nGEAR'
	else
		return 'GEAR\n' .. noseCircle .. '\n' .. leftCircle .. rightCircle .. '\n' .. handleCircle
	end
	end
function  FlapTile(mainPanelDevice) -- From Bailey's LUA: A grphical indication of Flaps Status
	-- init as black because it represents the lights as off
	local flapOrange = '⚫'
	local flapGreen = '⚫'

	if mainPanelDevice:get_argument_value(338) > 0.1 then
		flapOrange = '🟠'
	end

	if mainPanelDevice:get_argument_value(339) > 0.1 then
		flapGreen = '🟢'
	end
	-- The position of the switch determines where the text is
	if mainPanelDevice:get_argument_value(459) > 0.5 then -- position of flap handle
		return flapOrange .. '\n' .. flapGreen .. '\nFLAP'
	else
		return 'FLAP\n' .. flapOrange .. '\n' .. flapGreen
	end
	end
----------------
-- NOT IN USE --
----------------
function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
	end
function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
	end
-- ⚪ white
-- ⚫ black
-- 🟡 yellow
-- 🔴 red
-- 🟢 green
-- 🔵 blue
-- 🟠 orang
-- '❌'
-- '✅'

-- Created by Trigati...but based on the excellent work of others!


