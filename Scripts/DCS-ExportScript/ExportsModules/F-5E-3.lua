-- F-5E-3
-- Version 1.0.2

ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	--[[
	every frames arguments
	based of "mainpanel_init.lua"
	Example (http://www.lua.org/manual/5.1/manual.html#pdf-string.format)
	[DeviceID] = "Format"
	  [4] = "%.4f",  <- floating-point number with 4 digits after point
	 [19] = "%0.1f", <- floating-point number with 1 digit after point
	[129] = "%1d",   <- decimal number
	  [5] = "%.f",   <- floating point number rounded to a decimal number
	]]
	-- Gear System
	[97] = "%.4f",	-- AlterReleaseRods
	-- Cockpit mechanics
	[712] = "%.4f",	-- CanopyHandle
	-- WEAPONS ----------------------------------------------------
	-- CMDS
	[401] = "%.4f",	-- ChaffDrumCounter_10 {0.0, 1.0} {0.0, 10.0}
	[402] = "%.4f",	-- ChaffDrumCounter_1 {0.0, 1.0} {0.0, 10.0}
	[405] = "%.4f",	-- FlareDrumCounter_10 {0.0, 1.0} {0.0, 10.0}
	[406] = "%.4f",	-- FlareDrumCounter_1 {0.0, 1.0} {0.0, 10.0}
	-- AN/ASG-31 Sight
	[43] = "%.4f",	-- RetDepressionDrum_100 {0.0, 1.0} {0.0, 10.0}
	[44] = "%.4f",	-- RetDepressionDrum_10 {0.0, 1.0} {0.0, 10.0}
	[45] = "%.4f",	-- RetDepressionDrum_1 {0.0, 1.0} {0.0, 10.0}
	-- Slipball
	[3] = "%.4f",	-- Slipball {-1.0, 1.0}
	-- Sight Camera
	[85] = "%.4f",	-- MotorRunKnob {1.0, 0.0}
	-- AN/APQ-159 Radar
	-- Range scale lights
	[155] = "%.4f",	-- RangeScale_5
	[156] = "%.4f",	-- RangeScale_10
	[157] = "%.4f",	-- RangeScale_20
	[158] = "%.4f",	-- RangeScale_40
	[159] = "%.f",	-- InRangeLight
	[160] = "%.f",	-- FailLight
	[161] = "%.f",	-- LockOnLight
	[162] = "%.f",	-- ExcessGLight
	[163] = "%.4f",	-- ScaleBrightness
	-- INSTRUMENTS ------------------------------------------------
	-- Angle-of-attack Indicator
	[7] = "%.4f",	-- AOA_Units {0.0, 1.0} {0.0, 30.0}
	[704] = "%.f",	-- AOA_poweroff_flag
	-- Accelerometer
	[6] = "%.4f",	-- Accelerometer { 0.0, 0.323, 0.653, 1.0} {-5.0, 0.0, 5.0, 10.0}
	[902] = "%.4f",	-- AccelerometerMin { 0.0, 0.323, 0.653, 1.0} {-5.0, 0.0, 5.0, 10.0}
	[903] = "%.4f",	-- AccelerometerMax { 0.0, 0.323, 0.653, 1.0} {-5.0, 0.0, 5.0, 10.0}
	-- AirSpeed/Mach Indicator
	[8] = "%.4f",	-- Airspeed {0.0, 0.0435, 0.1, 0.318, 0.3745, 0.397, 0.4495, 0.482,  0.54, 0.553, 0.6145, 0.658, 0.668, 0.761, 0.801, 0.877, 0.909, 0.942, 0.972, 1.0} {0.0, 80.0, 100.0, 170.0,  190.0, 200.0, 230.0, 250.0, 290.0, 300.0, 350.0, 390.0, 400.0, 500.0, 550.0, 650.0, 700.0, 750.0, 800.0, 850.0}
	[178] = "%.4f",	-- MaxAirspeed  {0.0, 0.0435, 0.1, 0.318, 0.3745, 0.397, 0.4495, 0.482,  0.54, 0.553, 0.6145, 0.658, 0.668, 0.761, 0.801, 0.877, 0.909, 0.942, 0.972, 1.0} {0.0, 80.0, 100.0, 170.0,  190.0, 200.0, 230.0, 250.0, 290.0, 300.0, 350.0, 390.0, 400.0, 500.0, 550.0, 650.0, 700.0, 750.0, 800.0, 850.0}
	[177] = "%.f",	-- SetAirspeed
	[179] = "%.4f",	-- MachIndicator {1.0, 0.957, 0.92, 0.631, 0.386} {0.0, 0.5, 1.0, 1.8, 2.5}
	-- Vertical Velocity Indicator
	[24] = "%.4f",	-- Variometer {-1.0, -0.64, -0.5, -0.29, 0.0, 0.29, 0.5, 0.64, 1.0} {-6000.0, -3000.0, -2000.0, -1000.0, 0.0, 1000.0, 2000.0, 3000.0, 6000.0}
	-- Altimeter AAU-34/A
	[10] = "%.4f",	-- Altimeter_100_footPtr {0.0, 1.0} {0.0, 1000.0}
	[11] = "%.4f",	-- Altimeter_10000_footCount {0.0, 1.0} {0.0, 10.0}
	[520] = "%.4f",	-- Altimeter_1000_footCount {0.0, 1.0} {0.0, 10.0}
	[521] = "%.4f",	-- Altimeter_100_footCount {0.0, 1.0} {0.0, 10.0}
	[59] = "%.4f",	-- pressure_setting_0 {0.0, 1.0} {0.0, 10.0}
	[58] = "%.4f",	-- pressure_setting_1 {0.0, 1.0} {0.0, 10.0}
	[57] = "%.4f",	-- pressure_setting_2 {0.0, 1.0} {0.0, 10.0}
	[56] = "%.4f",	-- pressure_setting_3 {0.0, 1.0} {0.0, 10.0}
	[9] = "%.4f",	-- AAU34_PNEU_flag {0.0, 1.0} {0.0, 0.4}
	-- Attitude Indicator ARU-20
	[81] = "%.4f",	-- AI_Pitch {-0.507, 0.0, 0.507} {-rad_(90.0), 0.0, rad_(90.0)}
	[30] = "%.4f",	-- AI_Bank {-1.0, 1.0} { 0.0, math.pi * 2.0}
	[149] = "%.4f",	-- AI_OFF_flag
	-- Horizontal Situation Indicator
	[32] = "%.4f",	-- HSI_CompassCard
	[139] = "%.4f",	-- HSI_BearingPtr
	[35] = "%.4f",	-- HSI_CourseArrow
	[36] = "%.4f",	-- HSI_CourseDevInd {-1.0, 1.0}
	[144] = "%.4f",	-- HSI_HeadingMark
	[268] = "%.4f",	-- HSI_Range_100 {0.0, 1.0} {0.0, 10.0}
	[269] = "%.4f",	-- HSI_Range_10 {0.0, 1.0} {0.0, 10.0}
	[270] = "%.4f",	-- HSI_Range_1 {0.0, 1.0} {0.0, 10.0}
	[142] = "%.4f",	-- HSI_Range_flag
	[275] = "%.4f",	-- HSI_CourseSel_100 {0.0, 1.0} {0.0, 10.0}
	[276] = "%.4f",	-- HSI_CourseSel_10 {0.0, 1.0} {0.0, 10.0}
	[277] = "%.4f",	-- HSI_CourseSel_1 {0.0, 1.0} {0.0, 10.0}
	[146] = "%.4f",	-- HSI_ToFrom
	[143] = "%.4f",	-- HSI_OFF_flag
	[141] = "%.4f",	-- HSI_DevDF_Win
	-- Standby Attitude Indicator
	[438] = "%.4f",	-- SAI_Pitch {-0.665, -0.581, -0.5, 0.0, 0.5, 0.581, 0.676, 0.735} {-rad_(78.0), -rad_(60.0), -rad_(42.0), 0.0, rad_(42.0), rad_(60.0), rad_(80.0), rad_(92.0)}
	[439] = "%.4f",	-- SAI_Bank {1.0, -1.0} {-math.pi, math.pi}
	[440] = "%.4f",	-- SAI_OFF_flag 
	[443] = "%.4f",	-- SAI_knob_arrow {-1.0, 1.0} {0.0, 1.0}
	-- Clock
	[19] = "%.4f",	-- CLOCK_currtime_hours
	[18] = "%.4f",	-- CLOCK_currtime_minutes
	[509] = "%.4f",	-- CLOCK_elapsed_time_minutes
	[37] = "%.4f",	-- CLOCK_elapsed_time_seconds
	-- Pitch Trim Indicator
	[52] = "%.4f",	-- Pitch_Trim {1.0, 0.0, -0.1} {-10.0, 0.0, 1.0}
	-- Flap Indicator
	[51] = "%.4f",	-- Flap_Indicator {0.0, 0.4} {0.0, 4.0}
	-- Hydraulic Pressure Indicators
	[109] = "%.4f",	-- Utility_Pressure {0.0, 1.0} {0.0, 4000.0}
	[110] = "%.4f",	-- Flight_Pressure {0.0, 1.0} {0.0, 4000.0}
	-- Engine Tachometers
	[16] = "%.4f",	-- Tachometer_Left {0.008, 0.475, 0.84, 0.94,   1.0} {0.0, 50.0, 90.0, 100.0, 107.0}
	[425] = "%.4f",	-- Tachometer_percent_Left {0.0, 1.0} {0.0, 10.0}
	[17] = "%.4f",	-- Tachometer_Right {0.008, 0.475, 0.84, 0.94,   1.0} {0.0, 50.0, 90.0, 100.0, 107.0}
	[426] = "%.4f",	-- Tachometer_percent_Right {0.0, 1.0} {0.0, 10.0}
	-- Exhaust Gas Temperature Indicators
	[12] = "%.4f",	-- EGT_Left {0.0, 0.03, 0.1, 0.274, 0.78, 1.0} {0.0, 140.0, 200.0, 500.0, 800.0, 1200.0}
	[14] = "%.4f",	-- EGT_Right {0.0, 0.03, 0.1, 0.274, 0.78, 1.0} {0.0, 140.0, 200.0, 500.0, 800.0, 1200.0}
	-- Aux Intake Doors Indicator
	[111] = "%.4f",	-- AuxIntakeDoors {0.0, 0.2} {0.0, 2.0}
	-- Oil Pressure Indicator (Dual)
	[112] = "%.4f",	-- OilPressure_Left {0.0, 1.0} {0.0, 100.0}
	[113] = "%.4f",	-- OilPressure_Right {0.0, 1.0} {0.0, 100.0}
	-- Nozzle Position Indicators
	[107] = "%.4f",	-- NozzlePos_Left {0.0, 1.0} {0.0, 100.0}
	[108] = "%.4f",	-- NozzlePos_Right {0.0, 1.0} {0.0, 100.0}
	-- Cabin Pressure Altimeter
	[114] = "%.4f",	-- CabinPressure {0.0, 1.0} {0.0, 50.0}
	-- Fuel Flow Indicator (Dual)
	[525] = "%.4f",	-- FuelFlow_Left {0.0, 0.67, 0.75, 0.83, 1.0} {0.0, 4000.0, 7000.0, 10000.0, 15000.0}
	[526] = "%.4f",	-- FuelFlow_Right {0.0, 0.67, 0.75, 0.83, 1.0} {0.0, 4000.0, 7000.0, 10000.0, 15000.0}
	-- Fuel Quantity Indicator (Dual)
	[22] = "%.4f",	-- FuelQuantity_Left {0.0, 1.0} {0.0, 2500.0}
	[23] = "%.4f",	-- FuelQuantity_Right {0.0, 1.0} {0.0, 2500.0}
	-- Oxygen Quantity Indicator
	[390] = "%.4f",	-- OxygenQuantity {0.0, 1.0} {0.0, 5.0}
	-- Oxygen Flow Pressure Indicator
	[604] = "%.4f",	-- FlowPressure {0.0, 0.5, 1.0} {0.0, 100.0, 500.0}
	-- Oxygen Flow Indicator
	[600] = "%.4f",	-- FlowBlinker
	-- RADIO ------------------------------------------------------
	-- UHF Radio AN/ARC-164
	[326] = "%.1f",	-- UHFRadioChannel
	[302] = "%.1f",	-- UHFRadio100MHz
	[303] = "%.1f",	-- UHFRadio10MHz {1.0, 0.0} {0.0, 1.0}
	[304] = "%.1f",	-- UHFRadio1MHz {1.0, 0.0} {0.0, 1.0}
	[305] = "%.1f",	-- UHFRadio01MHz {1.0, 0.0} {0.0, 1.0}
	[306] = "%.1f",	-- UHFRadio0025MHz {1.0, 0.0} {0.0, 1.0}
	-- IFF/SIF APX72
	[197] = "%.4f",	-- IFF_Code4Sw_Pull
	[198] = "%.4f",	-- IFF_MasterSw_Pull
	-- TACAN
	[263] = "%.4f",	-- TACAN_window_wheel.hundreds {0.0, 1.0} {0.0, 10.0}
	[264] = "%.4f",	-- TACAN_window_wheel.tens {0.0, 1.0} {0.0, 10.0}
	[265] = "%.4f",	-- TACAN_window_wheel.ones {0.0, 1.0} {0.0, 10.0}
	[266] = "%.4f",	-- XYwheel
	[260] = "%.f",	-- TACAN_test_light
	-- LAMPS
	-- Engine Fire Lights
	[167] = "%.f",	-- lamp_LeftFire
	[168] = "%.f",	-- lamp_RightFire
	-- AOA Indexer Lights
	[48] = "%.f",	-- lamp_AOA_Red
	[49] = "%.f",	-- lamp_AOA_Green
	[50] = "%.f",	-- lamp_AOA_Yellow
	-- Landing Gear Lights
	[96] = "%.f",	-- lamp_GearWarning
	[54] = "%.f",	-- lamp_GearNose
	[53] = "%.f",	-- lamp_GearLeft
	[55] = "%.f",	-- lamp_GearRight
	-- Hook Light
	[90] = "%.f",	-- lamp_Hook
	-- Caution Lights panel
	[530] = "%.f",	-- lamp_LeftGenerator
	[531] = "%.f",	-- lamp_Canopy
	[532] = "%.f",	-- lamp_RightGenerator
	[533] = "%.f",	-- lamp_UtilityHyd
	[534] = "%.f",	-- lamp_Spare1
	[535] = "%.f",	-- lamp_FlightHyd
	[536] = "%.f",	-- lamp_ExtTanksEmpty
	[537] = "%.f",	-- lamp_IFF
	[538] = "%.f",	-- lamp_Oxygen
	[539] = "%.f",	-- lamp_LeftFuelLow
	[540] = "%.f",	-- lamp_EngineAntiIce
	[541] = "%.f",	-- lamp_RightFuelLow
	[542] = "%.f",	-- lamp_LeftFuelPress
	[543] = "%.f",	-- lamp_INS
	[544] = "%.f",	-- lamp_RightFuelPress
	[545] = "%.f",	-- lamp_AOA_Flaps
	[546] = "%.f",	-- lamp_AirDataComputer
	[547] = "%.f",	-- lamp_DirGyro
	[548] = "%.f",	-- lamp_Spare2
	[549] = "%.f",	-- lamp_DC_Overload
	[550] = "%.f",	-- lamp_Spare3
	-- Master Caution Light
	[169] = "%.f",	-- lamp_MasterCaution
	--IFF Panel lamps
	[216] = "%.f",	-- IFF_reply_lamp
	[218] = "%.f",	-- IFF_test_lamp
	-- Internal Lights
	[801] = "%.f",	-- light_Flight
	[802] = "%.f",	-- light_Engine
	[803] = "%.f",	-- light_Console
	[804] = "%.f",	-- light_Compass
	[805] = "%.f",	-- light_Flood
	[806] = "%.f",	-- light_Sight
	[807] = "%.f",	-- light_Armt
	[810] = "%.f",	-- light_Tstorm
	-- RWR button lights
	[576] = "%.f",	-- rwr_Power
	[572] = "%.f",	-- rwr_Ship_unkn
	[571] = "%.f",	-- rwr_Ship_U
	[568] = "%.f",	-- rwr_Sys_On
	[569] = "%.f",	-- rwr_Sys
	[565] = "%.f",	-- rwr_Sep_Up
	[566] = "%.f",	-- rwr_Sep_Down
	[563] = "%.f",	-- rwr_Alt
	[562] = "%.f",	-- rwr_Alt_Low
	[557] = "%.f",	-- rwr_Hand_Up
	[558] = "%.f",	-- rwr_Hand_H
	[555] = "%.f",	-- rwr_Search
	[553] = "%.f",	-- rwr_Mode_Open
	[552] = "%.f",	-- rwr_Mode_Pri
	-- Brightness regulation
	[808] = "%.f",	-- brtRadarScale
	[815] = "%.f",	-- brtRwrLights
	[816] = "%.f",	-- brtFireLights
	[817] = "%.f",	-- brtMainLights
	[818] = "%.f",	-- brtIFFLights
	[819] = "%.f"	-- brtRadarLights
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	-- Control System
	[323] = "%1d",	-- Yaw Damper Switch, YAW/OFF
	[322] = "%1d",	-- Pitch Damper Switch, PITCH/OFF
	[324] = "%.4f",	-- Rudder Trim Knob (Axis) {-1.0, 1.0} in 0.15 Steps
	[116] = "%1d",	-- Flaps Lever, EMER UP/THUMB SW/FULL {-1.0, 0.0, 1.0}
	[132] = "%1d",	-- Pitch Damper Cutoff Switch - Push to cutoff
	[101] = "%1d",	-- Speed Brake Switch, OUT/OFF/IN {-1.0, 0.0, 1.0}
	[115] = "%1d",	-- Auto Flap System Thumb Switch, UP/FIXED/AUTO {-1.0, 0.0, 1.0}
	--[125] = "%1d",	-- Trimmer Switch, PUSH(DESCEND) {0.0, 1.0}
	--[125] = "%1d",	-- Trimmer Switch, PULL(CLIMB) {-1.0, 0.0}
	--[126] = "%1d",	-- Trimmer Switch, LEFT WING DOWN {0.0, 1.0}
	--[126] = "%1d",	-- Trimmer Switch, RIGHT WING DOWN {-1.0, 0.0}
	[125] = "%1d",	-- Trimmer Switch, PUSH(DESCEND)/PULL(CLIMB) {1.0, 0.0, -1.0}
	[126] = "%1d",	-- Trimmer Switch, LEFT WING DOWN/RIGHT WING DOWN {1.0, 0.0, -1.0}
	[278] = "%1d",	-- Rudder Pedal Adjust T-Handle, PULL/STOW
	-- Electric system
	[387] = "%1d",	-- attery Switch, BATT/OFF
	[388] = "%1d",	-- Left Generator Switch, L GEN/OFF/RESET {-1.0, 0.0, 1.0}
	[389] = "%1d",	-- Right Generator Switch, R GEN/OFF/RESET {-1.0, 0.0, 1.0}
	[375] = "%1d",	-- Pitot Anti-Ice Switch, PITOT/OFF
	[230] = "%1d",	-- Fuel & Oxygen Switch, GAGE TEST/OFF/QTY CHECK {-1.0, 0.0, 1.0}
	-- Fuel System
	[360] = "%1d",	-- Left Fuel Shutoff Switch, OPEN/CLOSED
	[362] = "%1d",	-- Right Fuel Shutoff Switch, OPEN/CLOSED
	[377] = "%1d",	-- Ext Fuel Cl Switch, ON/OFF
	[378] = "%1d",	-- Ext Fuel Pylons Switch, ON/OFF
	[380] = "%1d",	-- Left Boost Pump Switch, ON/OFF
	[381] = "%1d",	-- Crossfeed Switch, OPEN/CLOSED
	[382] = "%1d",	-- Right Boost Pump Switch, ON/OFF
	[383] = "%1d",	-- Autobalance Switch, LEFT/NEUT/RIGHT {-1.0, 0.0, 1.0}
	-- Engines
	[357] = "%1d",	-- Left Engine Start Button - Push to start
	[358] = "%1d",	-- Right Engine Start Button - Push to start
	[376] = "%1d",	-- Engine Anti-Ice Switch, ENGINE/OFF {1.0, -1.0}
	-- Gear System
	[83] = "%1d",	-- Landing Gear Lever, LG UP/LG DOWN
	[95] = "%1d",	-- Landing Gear Alternate Release Handle, Pull and Hold
	[98] = "%1d",	-- Gear Alternate Release Reset Control, OFF/RESET
	[88] = "%1d",	-- Landing Gear Downlock Override Button - Push and hold to override locking solenoid
	[87] = "%1d",	-- Landing Gear And Flap Warning Silence Button
	[250] = "%1d",	-- Nose Strut Switch, EXTEND/RETRACT {1.0, -1.0}
	[131] = "%1d",	-- Nosewheel Steering Button - Press and Hold to engage nosewheel control
	[92] = "%1d",	-- Left Landing Gear Lamp - Press to test(LMB)
	[93] = "%1d",	-- Nose Landing Gear Lamp - Press to test(LMB)
	[94] = "%1d",	-- Right Landing Gear Lamp - Press to test(LMB)
	[89] = "%1d",	-- Arresting Hook Button
	-- Oxygen System
	[603] = "%1d",	-- Oxygen Supply Lever, ON/OFF {1.0, -1.0}
	[602] = "%1d",	-- Diluter Lever
	[601] = "%1d",	-- Emergency Lever, EMERGENCY/NORMAL/TEST MASK {-1.0, 0.0, 1.0}
	-- EC System
	[371] = "%1d",	-- Cabin Press Switch, DEFOG ONLY/NORMAL/RAM DUMP {0.0, 0.5, 1.0}
	[372] = "%1d",	-- Cabin Temp Switch, AUTO/CENTER/MAN COLD/MAN HOT {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6}
	[373] = "%.2f",	-- Cabin Temp Knob (Axis) {-1.0, 1.0} in 0.15 Steps
	[374] = "%.2f",	-- Canopy Defog Knob (Axis) {0.0, 1.0} in 0.15 Steps
	[386] = "%.2f",	-- Cockpit Air Inlet (Horizontal) (Axis) {-1.0, 1.0} in 0.1 Steps
	[385] = "%.2f",	-- Cockpit Air Inlet (Vertical) (Axis) {-1.0, 1.0} in 0.1 Steps
	-- Cockpit Mechanics
	--[0] = "%1d",	-- Canopy Handle, OPEN/CLOSE
	[772] = "%1d",	-- Seat Adjust Switch, DOWN/NEUTRAL/UP {-1.0, 0.0, 1.0}
	[384] = "%1d",	-- Canopy Jettison T-Handle, PULL/PUSH
	[91] = "%.1f",	-- Drag Chute T-Handle, PULL/PUSH {0.1, -0.1}
	-- External Lights
	[227] = "%.2f",	-- Navigation Lights Knob (Axis) {0.0, 1.0} in 0.15 Steps
	[228] = "%.2d",	-- Formation Lights Knob (Axis) {0.0, 1.0} in 0.15 Steps
	[229] = "%1d",	-- Beacon Switch, BEACON/OFF
	[353] = "%1d",	-- Landing & Taxi Light Switch, ON/OFF
	-- Internal Lights
	[46] = "%1d",	-- AN/ASG-31 Sight Panel Light Button, ON/OFF
	[613] = "%1d",	-- Magnetic Compass Light Switch, LIGHT/OFF
	[221] = "%.2f",	-- Flood Lights Knob (Axis) {0.0, 1.0} in 0.15 Steps
	[222] = "%.2f",	-- Flight Instruments Lights Knob (Axis) {0.0, 1.0} in 0.15 Steps
	[223] = "%.2f",	-- Engine Instruments Lights Knob (Axis) {0.0, 1.0} in 0.15 Steps
	[224] = "%.2f",	-- Console Lights Knob (Axis) {0.0, 1.0} in 0.15 Steps
	[363] = "%.2f",	-- Armament Panel Lights Knob (Axis) {0.0, 1.0} in 0.15 Steps
	[172] = "%1d",	-- Master Caution Button - Push to reset
	[226] = "%1d",	-- Warning Test Switch, Press to test
	[225] = "%1d",	-- Bright/Dim Switch, BRT/NEUT/DIM {-1.0, 0.0, 1.0}
	-- Countermeasures Dispensing System
	[400] = "%1d",	-- Chaff Mode Selector, OFF/SINGLE/PRGM/MULT {0.0, 0.1, 0.2, 0.3}
	[404] = "%1d",	-- Flare Mode Selector, OFF/SINGLE/PRGM {0.0, 0.1, 0.2}
	[409] = "%1d",	-- Flare Jettison Switch, OFF/UP
	[403] = "%1d",	-- Chaff Counter Reset Button - Push to reset
	[407] = "%1d",	-- Flare Counter Reset Button - Push to reset
	[117] = "%1d",	-- Flare-Chaff Button - Push to dispense
	-- IFF
	[199] = "%1d",	-- IFF MODE 4 CODE Selector, ZERO(use MW to pull switch)/B/A/HOLD
	[197] = "%1d",	-- IFF MODE 4 CODE Selector, ZERO(use MW to pull switch)/B/A/HOLD
	[200] = "%1d",	-- IFF MASTER Control Selector, EMER(use MW to pull switch)/NORM/LOW/STBY/OFF
	[198] = "%1d",	-- IFF MASTER Control Selector, EMER(use MW to pull switch)/NORM/LOW/STBY/OFF
	[201] = "%1d",	-- IFF MODE 4 Monitor Control Switch, AUDIO/OUT/LIGHT {-1.0, 0.0, 1.0}
	[202] = "%1d",	-- IFF Mode Select/TEST Switch, M-1 /ON/OUT {-1.0, 0.0, 1.0}
	[203] = "%1d",	-- IFF Mode Select/TEST Switch, M-2 /ON/OUT {-1.0, 0.0, 1.0}
	[204] = "%1d",	-- IFF Mode Select/TEST Switch, M-3/A /ON/OUT {-1.0, 0.0, 1.0}
	[205] = "%1d",	-- IFF Mode Select/TEST Switch, M-C /ON/OUT {-1.0, 0.0, 1.0}
	[206] = "%1d",	-- IFF RAD TEST/MON Switch, RAD TEST/OUT/MON {-1.0, 0.0, 1.0}
	[207] = "%1d",	-- IFF Identification of Position (IP) Switch, IDENT/OUT/MIC {-1.0, 0.0, 1.0}
	[208] = "%1d",	-- IFF MODE 4 Control Switch, ON/OUT
	[209] = "%.1f",	-- IFF MODE 1 Code Selector Wheel 1 {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7}
	[210] = "%.1f",	-- IFF MODE 1 Code Selector Wheel 2 {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7}
	[211] = "%.1f",	-- IFF MODE 3/A Code Selector Wheel 1 {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7}
	[212] = "%.1f",	-- IFF MODE 3/A Code Selector Wheel 2 {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7}
	[213] = "%.1f",	-- IFF MODE 3/A Code Selector Wheel 3 {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7}
	[214] = "%.1f",	-- IFF MODE 3/A Code Selector Wheel 4 {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7}
	[217] = "%1d",	-- MODE 4 REPLY Light - Press to test(LMB)
	[215] = "%1d",	-- Radiation TEST and Monitor Light - Press to test(LMB)
	-- Jettison System
	[365] = "%1d",	-- Emergency All Jettison Button - Push to jettison
	[367] = "%1d",	-- Select Jettison Switch, SELECT POSITION/OFF/ALL PYLONS {-1.0, 0.0, 1.0}
	[366] = "%1d",	-- Select Jettison Button - Push to jettison
	-- Weapons Control
	[346] = "%1d",	-- Armament Position Selector Switch - LEFT WINGTIP, ON/OFF
	[347] = "%1d",	-- Armament Position Selector Switch - LEFT OUTBD, ON/OFF
	[348] = "%1d",	-- Armament Position Selector Switch - LEFT INBD, ON/OFF
	[349] = "%1d",	-- Armament Position Selector Switch - CENTERLINE, ON/OFF
	[350] = "%1d",	-- Armament Position Selector Switch - RIGHT INBD, ON/OFF
	[351] = "%1d",	-- Armament Position Selector Switch - RIGHT OUTBD, ON/OFF
	[352] = "%1d",	-- Armament Position Selector Switch - RIGHT WINGTIP, ON/OFF
	[340] = "%1d",	-- Interval Switch [sec], .06/.10/.14 {-1.0, 0.0, 1.0}
	[341] = "%1d",	-- Bombs Arm Switch, SAFE/TAIL/NOSE & TAIL/NOSE {0.0, 0.1, 0.2, 0.3}
	[343] = "%1d",	-- Guns, Missile and Camera Switch, GUNS MSL & CAMR/OFF/CAMR ONLY {-1.0, 0.0, 1.0}
	[344] = "%.1f",	-- External Stores Selector, RIPL/BOMB/SAFE/RKT DISP {0.0,0.1,0.2,0.3}
	[345] = "%.2f",	-- Missile Volume Knob - Rotate to adjust volume (Axis) {0.0, 1.0} in 0.15 Steps
	[128] = "%1d",	-- Weapon Release Button - Press to release (Stick)
	[137] = "%1d",	-- Missile Uncage Switch - Press and hold to uncage missile seeker head
	-- Trigger
	[127] = "%1d",	-- Trigger Button, FIRST DETENT(LMB) {0.0, 0.5}
	[127] = "%1d",	-- Trigger Button, SECOND DETENT(RMB) {0.0, 1.0}
	-- AHRS
	[166] = "%1d",	-- Fast Erect Button - Push to erect
	[220] = "%1d",	-- Compass Switch, DIR GYRO/MAG/FAST SLAVE
	[273] = "%.1f",	-- Nav Mode Selector Switch, DF/TACAN {0.1,-0.1}
	-- AN/APQ-159 Radar Control Panel
	[65] = "%.2f",	-- AN/APQ-159 Radar Scale Knob - Rotate to adjust scale brightness (Axis) {0.0, 1.0} in 0.15 Steps
	[321] = "%.2f",	-- AN/APQ-159 Radar Elevation Antenna Tilt Control Knob - Rotate to adjust antenna elevation (Axis) {-1.0, 1.0} in 0.15 Steps
	[315] = "%.1f",	-- AN/APQ-159 Radar Range Selector Switch [nm], 5/10/20/40 {0.0, 0.1, 0.2, 0.3}
	[316] = "%.1f",	-- AN/APQ-159 Radar Mode Selector Switch, OFF/STBY/OPER/TEST {0.0, 0.1, 0.2, 0.3}
	[317] = "%1d",	-- AN/APQ-159 Radar Acquisition Button
	[70] = "%.2f",	-- AN/APQ-159 Radar Bright Knob - Rotate to adjust brightness (Axis) {0.0, 1.0} in 0.15 Steps
	[69] = "%.2f",	-- AN/APQ-159 Radar Persistence Knob - Rotate to adjust persistence (Axis) {0.0, 1.0} in 0.15 Steps
	[68] = "%.2f",	-- AN/APQ-159 Radar Video Knob - Rotate to adjust video intensity (Axis) {0.0, 1.0} in 0.15 Steps
	[67] = "%.2f",	-- AN/APQ-159 Radar Cursor Knob - Rotate to adjust indication brightness (Axis) {0.0, 1.0} in 0.15 Steps
	[66] = "%.2f",	-- AN/APQ-159 Radar Pitch Knob - Rotate to adjust horizon bar (Axis) {-0.75, 0.75} in 0.1 Steps
	-- AN/ASG-31 Sight
	[40] = "%.1f",	-- AN/ASG-31 Sight Mode Selector, OFF/MSL/A/A1 GUNS/A/A2 GUNS/MAN {0.0, 0.1, 0.2, 0.3, 0.4}
	[42] = "%.2f",	-- AN/ASG-31 Sight Reticle Depression Knob - Rotate to adjust manual mode depression angle (Axis) {0.0, 1.0} in 0.10 Steps
	[41] = "%.2f",	-- AN/ASG-31 Sight Reticle Intensity Knob - Rotate to adjust brightness (Axis) {0.0, 1.0} in 0.15 Steps
	[136] = "%1d",	-- AN/ASG-31 Sight Cage Switch - Press and hold to cage
	-- RWR-IC
	[551] = "%1d",	-- RWR Indicator Control MODE Button
	[554] = "%1d",	-- RWR Indicator Control SEARCH Button
	[556] = "%1d",	-- RWR Indicator Control HANDOFF Button
	[559] = "%1d",	-- RWR Indicator Control LAUNCH Button
	[561] = "%1d",	-- RWR Indicator Control ALTITUDE Button
	[564] = "%1d",	-- RWR Indicator Control T Button
	[567] = "%1d",	-- RWR Indicator Control SYS TEST Button
	[570] = "%1d",	-- RWR Indicator Control UNKNOWN SHIP Button
	[573] = "%1d",	-- RWR Indicator Control ACT/PWR Button
	[575] = "%1d",	-- RWR Indicator Control POWER Button
	[577] = "%.1f",	-- RWR Indicator Control AUDIO Knob (Axis) {0.0, 1.0} in 0.1 Steps
	[578] = "%.1f",	-- RWR Indicator Control DIM Knob (Axis) {0.0, 1.0} in 0.1 Steps
	-- AN/ALR-87 RWR
	[140] = "%.2f",	-- Adjust Display Brightness (Axis) {0.15, 0.85} in 0.1 Steps
	-- Instruments --------------------------
	-- Accelerometer
	[904] = "%1d",	-- Accelerometer - Push to set
	-- AirSpeed/Mach Indicator
	[180] = "%.2f",	-- Index Setting Pointer Knob (Axis) {0.0, 1.0} in 0.15 Steps
	-- Altimeter AAU-34/A
	[62] = "%.2f",	-- Zero Setting Knob (Axis) {0.0, 1.0} in 0.04 Steps
	[60] = "%1d",	-- Altimeter Mode Control Lever, ELECT(rical)/PNEU(matic) {-1.0, 0.0, 1.0}
	-- Attitude Indicator ARU-20
	[150] = "%.3f",	-- AI Pitch Trim Knob (Axis) {0.0, 1.0} in 0.083 Steps
	-- Horizontal Situation Indicator
	[272] = "%.5f",	-- HSI Course Set Knob (Axis) {0.0, 1.0} in 0.05818 Steps
	[271] = "%.5f",	-- HSI Heading Set Knob (Axis) {0.0, 1.0} in 0.05818 Steps
	-- Standby Attitude Indicator
	[441] = "%1d",	-- Cage/Pitch Trim (Button)
	[442] = "%.1f",	-- Cage/Pitch Trim Knob (Axis) {0.0, 1.0} in 0.5 Steps
	-- Clock
	[511] = "%1d",	-- ABU-11 Clock Winding and Setting knob (Button)
	[510] = "%1d",	-- ABU-11 Clock Winding and Setting Knob (Axis) {0.0, 1.0} in 0.6 Steps
	[512] = "%1d",	-- ABU-11 Clock Elapsed Time Knob
	-- Electric system - CB Front Panel
	[280] = "%1d",	-- CB WPN PWR LEFT INBD, ON/OFF {1.0, 0.0}
	[281] = "%1d",	-- CB WPN PWR CENTER LINE, ON/OFF {1.0, 0.0}
	[282] = "%1d",	-- CB WPN PWR RIGHT INBD, ON/OFF {1.0, 0.0}
	[283] = "%1d",	-- CB WPN PWR LEFT OUTBD, ON/OFF {1.0, 0.0}
	[284] = "%1d",	-- CB WPN ARMING, ON/OFF {1.0, 0.0}
	[285] = "%1d",	-- CB WPN PWR RIGHT OUTBD, ON/OFF {1.0, 0.0}
	[286] = "%1d",	-- CB JETTISON CONTROL, ON/OFF {1.0, 0.0}
	[287] = "%1d",	-- CB WPN RELEASE, ON/OFF {1.0, 0.0}
	[288] = "%1d",	-- CB WPN MODE SEL & AIM-9-INTLK, ON/OFF {1.0, 0.0}
	[289] = "%1d",	-- CB EMERGENCY ALL JETTISON, ON/OFF {1.0, 0.0}
	[290] = "%1d",	-- CB LEFT AIM-9 CONT, ON/OFF {1.0, 0.0}
	[291] = "%1d",	-- CB RIGHT AIM-9 CONT, ON/OFF {1.0, 0.0}
	-- Electric system - CB Left Panel
	[450] = "%1d",	-- CB LEFT AIM-9 POWER, ON/OFF {1.0, 0.0}
	[451] = "%1d",	-- CB LEFT GUN FIRING, ON/OFF {1.0, 0.0}
	[453] = "%1d",	-- CB 26 VOLT AC POWER, ON/OFF {1.0, 0.0}
	[454] = "%1d",	-- CB ATTD & HDG REF SYS A, ON/OFF {1.0, 0.0}
	[455] = "%1d",	-- CB CENTRAL AIR DATA COMPUTER, ON/OFF {1.0, 0.0}
	[456] = "%1d",	-- CB ENG IGN L ENG INST & HYD IND, ON/OFF {1.0, 0.0}
	[457] = "%1d",	-- CB RIGHT AIM-9 POWER, ON/OFF {1.0, 0.0}
	[458] = "%1d",	-- CB RIGHT GUN FIRING, ON/OFF {1.0, 0.0}
	[460] = "%1d",	-- CB TRIM CONTROL, ON/OFF {1.0, 0.0}
	[461] = "%1d",	-- CB ATTD & HDG REF SYS B, ON/OFF {1.0, 0.0}
	[462] = "%1d",	-- CB TOTAL TEMP PROBE HTR, ON/OFF {1.0, 0.0}
	[463] = "%1d",	-- CB L ENG AUX DOOR, ON/OFF {1.0, 0.0}
	[464] = "%1d",	-- CB CABIN COND, ON/OFF {1.0, 0.0}
	[467] = "%1d",	-- CB FUEL QTY PRIMARY, ON/OFF {1.0, 0.0}
	[468] = "%1d",	-- CB ATTD & HDG REF SYS C, ON/OFF {1.0, 0.0}
	[469] = "%1d",	-- CB TACAN, ON/OFF {1.0, 0.0}
	[471] = "%1d",	-- CB PYLON TANK FUEL CONT, ON/OFF {1.0, 0.0}
	[472] = "%1d",	-- CB L BOOST CL & TIP TANK FUEL CONT, ON/OFF {1.0, 0.0}
	[473] = "%1d",	-- CB IGNITION INVERTER POWER, ON/OFF {1.0, 0.0}
	[474] = "%1d",	-- CB L ENG START & AB CONT, ON/OFF {1.0, 0.0}
	[475] = "%1d",	-- CB R ENG START & AB CONT, ON/OFF {1.0, 0.0}
	[476] = "%1d",	-- CB UHF COMMAND RADIO, ON/OFF {1.0, 0.0}
	[477] = "%1d",	-- CB LEFT LE FLAP CONT, ON/OFF {1.0, 0.0}
	[478] = "%1d",	-- CB RIGHT LE FLAP CONT, ON/OFF {1.0, 0.0}
	[479] = "%1d",	-- CB LEFT TE FLAP CONT, ON/OFF {1.0, 0.0}
	[480] = "%1d",	-- CB RIGHT TE FLAP CONT & IND, ON/OFF {1.0, 0.0}
	-- Electric system - CB Right Panel
	[231] = "%1d",	-- CB PITOT HEATER, ON/OFF {1.0, 0.0}
	[233] = "%1d",	-- CB R OIL & HYD IND FUEL QTY SEL, ON/OFF {1.0, 0.0}
	[234] = "%1d",	-- CB CABIN AIR VALVES, ON/OFF {1.0, 0.0}
	[238] = "%1d",	-- CB INST LIGHTS, ON/OFF {1.0, 0.0}
	[239] = "%1d",	-- CB R ENG AUX DOORS, ON/OFF {1.0, 0.0}
	[244] = "%1d",	-- CB CAUTION & WARN LIGHTS-DIM, ON/OFF {1.0, 0.0}
	[245] = "%1d",	-- CB OXY QTY & CANOPY SEAL, ON/OFF {1.0, 0.0}
	[246] = "%1d",	-- CB LDG-TAXI LAMP PWR, ON/OFF {1.0, 0.0}
	--UHF Radio AN/ARC-164
	[300] = "%.2f",	-- AN/ARC-164, UHF Radio Preset Channel Selector Knob {0.0, 0.1, 0.2, 0.3, 0.4, ... 0.15, 0.16, 0.17, 0.18, 0.19}
	[327] = "%.1f",	-- AN/ARC-164, UHF Radio 100 MHz Frequency Selector Knob {0.0, 0.1, 0.2, 0.3}
	[328] = "%.1f",	-- AN/ARC-164, UHF Radio 10 MHz Frequency Selector Knob {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9}
	[329] = "%.1f",	-- AN/ARC-164, UHF Radio 1 MHz Frequency Selector Knob {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9}
	[330] = "%.1f",	-- AN/ARC-164, UHF Radio 0.1 MHz Frequency Selector Knob {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9}
	[331] = "%.2f",	-- AN/ARC-164, UHF Radio 0.025 MHz Frequency Selector Knob {0.0, 0.25, 0.5, 0.75}
	[307] = "%.1f",	-- AN/ARC-164, UHF Radio Frequency Mode Selector Switch, MANUAL/PRESET/GUARD {0.0, 0.1, 0.2}
	[311] = "%.1f",	-- AN/ARC-164, UHF Radio Function Selector Switch, OFF/MAIN/BOTH/ADF {0.0, 0.1, 0.2}
	[310] = "%1d",	-- AN/ARC-164, UHF Radio Tone Button
	[308] = "%1d",	-- AN/ARC-164, UHF Radio Squelch Switch, ON/OFF
	[309] = "%.1f",	-- AN/ARC-164, UHF Radio Volume Knob (Axis) {0.0, 1.0} in 0.1 Steps
	[336] = "%.1f",	-- AN/ARC-164, UHF Radio Antenna Selector Switch, UPPER/AUTO/LOWER {0.0, 0.5, 1.0}
	[135] = "%1d",	-- AN/ARC-164, UHF Radio Microphone Button
	--TACAN
	[256] = "%.1f",	-- TACAN Channel Selector (Tens) - Rotate mouse wheel to select (Axis) {0.0, 1.0} in 0.1 Steps
	[257] = "%.1f",	-- TACAN Channel Selector (Ones) / X/Y Mode - Right mouse click to select X/Y. Rotate mouse wheel to make channel selection (Axis) {0.0, 1.0} in 0.1 Steps
	[258] = "%.2f",	-- TACAN Channel Selector (Ones) / X/Y Mode - Right mouse click to select X/Y. Rotate mouse wheel to make channel selection (Button) {0.87, 0.93}
	[259] = "%1d",	-- TACAN Signal on HSI Test Button
	[261] = "%1d",	-- TACAN Signal Volume Knob (Axis) {0.0, 1.0} in 0.1 Steps
	[262] = "%.1f",	-- TACAN Mode Selector Switch {0.0, 0.1, 0.2, 0.3, 0.4}
	-- Sight Camera
	[82] = "%.1f",	-- Sight Camera Lens f-Stop Selector, 2.8(dull)..22(bright) (Axis) {0.0, 0.3} in 0.1 Steps
	[80] = "%1d",	-- Sight Camera FPS Select Switch, 24/48
	[84] = "%.1f",	-- Sight Camera Overrun Selector, 0/3/10/20 {0.0, 0.1, 0.2, 0.3}
	[79] = "%1d"	-- Sight Camera Run (Test) Switch, ON/OFF
}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to Ikarus
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to DAC
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF_RADIO = GetDevice(54)
	ExportScript.Tools.SendDataDAC("ExportID", "Format")
	ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to Ikarus
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
	--AN/ARC-164 UHF 
	---------------------------------------------------
	local lUHFRadio = GetDevice(23)
	if lUHFRadio:is_on() then
		--ExportScript.Tools.SendData(2000, string.format("%.3f", lUHFRadio:get_frequency()/1000000))
		ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy(lUHFRadio:get_frequency()/1000000))
		
		local lUHFRadio_PRESET = {[0.0]="01",[0.1]="02",[0.2]="03",[0.3]="04",[0.4]="05",[0.5]="06",[0.6]="07",[0.7]="08",[0.8]="09",[0.9]="10",[0.10]="11",[0.11]="12",[0.12]="13",[0.13]="14",[0.14]="15",[0.15]="16",[0.16]="17",[0.17]="18",[0.18]="19",[0.19]="20"}
		ExportScript.Tools.SendData(2001, lUHFRadio_PRESET[ExportScript.Tools.round(mainPanelDevice:get_argument_value(300), 2)])
	end
	
	-- TACAN Channel
	-------------------------------------------------
	ExportScript.Tools.SendData(2002, (string.format("%0.2f", (mainPanelDevice:get_argument_value(263))) == "1.00" and "0" or "1")..ExportScript.Tools.round(mainPanelDevice:get_argument_value(264) * 10, 0)..ExportScript.Tools.round(mainPanelDevice:get_argument_value(265) * 10, 0)..(string.format("%1d", (mainPanelDevice:get_argument_value(266))) == "0" and "X" or "Y"))

end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to DAC
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF_RADIO = GetDevice(54)
	ExportScript.Tools.SendDataDAC("ExportID", "Format")
	ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
	
	--AN/ARC-164 UHF 
	---------------------------------------------------
	local lUHFRadio = GetDevice(23)
	if lUHFRadio:is_on() then
		--ExportScript.Tools.SendDataDAC(2000, string.format("%.3f", lUHFRadio:get_frequency()/1000000))
		ExportScript.Tools.SendDataDAC(2000, ExportScript.Tools.RoundFreqeuncy(lUHFRadio:get_frequency()/1000000))
		
		local lUHFRadio_PRESET = {[0.0]="01",[0.1]="02",[0.2]="03",[0.3]="04",[0.4]="05",[0.5]="06",[0.6]="07",[0.7]="08",[0.8]="09",[0.9]="10",[0.10]="11",[0.11]="12",[0.12]="13",[0.13]="14",[0.14]="15",[0.15]="16",[0.16]="17",[0.17]="18",[0.18]="19",[0.19]="20"}
		ExportScript.Tools.SendDataDAC(2001, lUHFRadio_PRESET[ExportScript.Tools.round(mainPanelDevice:get_argument_value(300), 2)])
	end
	
	-- TACAN Channel
	-------------------------------------------------
	ExportScript.Tools.SendDataDAC(2002, (string.format("%0.2f", (mainPanelDevice:get_argument_value(263))) == "1.00" and "0" or "1")..ExportScript.Tools.round(mainPanelDevice:get_argument_value(264) * 10, 0)..ExportScript.Tools.round(mainPanelDevice:get_argument_value(265) * 10, 0)..(string.format("%1d", (mainPanelDevice:get_argument_value(266))) == "0" and "X" or "Y"))

	-- Fuel Quantity Indicator (Dual)
	local lLeftFuel = ExportScript.Tools.round(mainPanelDevice:get_argument_value(22) * 2500, 0)
	local lRightFuel = ExportScript.Tools.round(mainPanelDevice:get_argument_value(23) * 2500, 0)
	
	ExportScript.Tools.SendDataDAC(2003, lLeftFuel)
	ExportScript.Tools.SendDataDAC(2004, lRightFuel)
	ExportScript.Tools.SendDataDAC(2005, lLeftFuel + lRightFuel)
	
	-- generic Radio display and frequency rotarys
	-------------------------------------------------
	-- genericRadioConf
	ExportScript.genericRadioConf = {}
	ExportScript.genericRadioConf['maxRadios'] = 1                       -- numbers of aviables/supported radios
	ExportScript.genericRadioConf[1] = {}                                -- first radio
	ExportScript.genericRadioConf[1]['Name'] = "AN/ARC-164 UHF"          -- name of radio
	ExportScript.genericRadioConf[1]['DeviceID'] = 23                    -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[1]['setFrequency'] = true              -- change frequency active
	ExportScript.genericRadioConf[1]['FrequencyMultiplicator'] = 1000000 -- Multiplicator from Hz to MHz
	ExportScript.genericRadioConf[1]['FrequencyFormat'] = "%7.3f"        -- frequency view format LUA style
	ExportScript.genericRadioConf[1]['FrequencyStep'] = 25               -- minimal step for frequency change
	ExportScript.genericRadioConf[1]['minFrequency'] = 220.000           -- lowest frequency
	ExportScript.genericRadioConf[1]['maxFrequency'] = 399.975           -- highest frequency
	ExportScript.genericRadioConf[1]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[1]['Power']['ButtonID'] = 3008         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Power']['ValueOn'] = 0.1           -- power on value from cklickable.lua
	ExportScript.genericRadioConf[1]['Power']['ValueOff'] = 0.0          -- power off value from cklickable.lua
	ExportScript.genericRadioConf[1]['Volume'] = {}                      -- volume knob active
	ExportScript.genericRadioConf[1]['Volume']['ButtonID'] = 3011        -- volume button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Preset'] = {}                      -- preset knob active
	ExportScript.genericRadioConf[1]['Preset']['ArgumentID'] = 300       -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[1]['Preset']['ButtonID'] = 3001        -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
	ExportScript.genericRadioConf[1]['Preset']['List'] = {[0.0]="01",[0.1]="02",[0.2]="03",[0.3]="04",[0.4]="05",[0.5]="06",[0.6]="07",[0.7]="08",[0.8]="09",[0.9]="10",[0.10]="11",[0.11]="12",[0.12]="13",[0.13]="14",[0.14]="15",[0.15]="16",[0.16]="17",[0.17]="18",[0.18]="19",[0.19]="20"}
	ExportScript.genericRadioConf[1]['Preset']['Step'] = 0.1             -- minimal step for preset change
	ExportScript.genericRadioConf[1]['Squelch'] = {}                     -- squelch switch active
	ExportScript.genericRadioConf[1]['Squelch']['ArgumentID'] = 308      -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ButtonID'] = 3010       -- squelch button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ValueOn'] = 0.0         -- squelch on value from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ValueOff'] = 1.0        -- squelch off value from cklickable.lua
	--ExportScript.genericRadioConf[1]['Load'] = {}                        -- load button preset
	--ExportScript.genericRadioConf[1]['Load']['ButtonID'] = 3015          -- load button id from cklickable.lua
	ExportScript.genericRadioConf[1]['ManualPreset'] = {}                -- switch manual or preset active
	ExportScript.genericRadioConf[1]['ManualPreset']['ArgumentID'] = 307 -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[1]['ManualPreset']['ButtonID'] = 3007  -- ManualPreset button id from cklickable.lua
	ExportScript.genericRadioConf[1]['ManualPreset']['ValueManual'] = 0.0-- ManualPreset Manual value from cklickable.lua
	ExportScript.genericRadioConf[1]['ManualPreset']['ValuePreset'] = 0.1-- ManualPreset Preset value from cklickable.lua
	
	
	--=====================================================================================
	--[[
	ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
	ExportScript.Tools.WriteToLog('CMSP: '..ExportScript.Tools.dump(list_indication(7)))
	
	-- list_indication get tehe value of cockpit displays
	local ltmp1 = 0
	for ltmp2 = 0, 20, 1 do
		ltmp1 = list_indication(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
	end
	]]
--[[
	-- getmetatable get function name from devices
	local ltmp1 = 0
	for ltmp2 = 1, 70, 1 do
		ltmp1 = GetDevice(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
		ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
]]
end

-----------------------------
--     Custom functions    --
-----------------------------
