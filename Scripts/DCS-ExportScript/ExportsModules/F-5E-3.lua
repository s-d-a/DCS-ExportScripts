-- F-5E-3

local base    = _G -- game information
local os      = base.os -- time
local Terrain = require('terrain') -- map info

ExportScript.FoundDCSModule = true
ExportScript.Version.F5E3 = "1.2.1"

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
	[177] = "%.4f",	-- SetAirspeed
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
	--[443] = "%.4f",	-- SAI_knob_arrow {-1.0, 1.0} {0.0, 1.0}
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
	[326] = "%.2f",	-- UHFRadioChannel
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
	--[266] = "%.4f",	-- XYwheel
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
	[341] = "%.1f",	-- Bombs Arm Switch, SAFE/TAIL/NOSE & TAIL/NOSE {0.0, 0.1, 0.2, 0.3}
	[342] = "%1d",	-- Guns, Missile and Camera Switch Cover, OPEN/CLOSE {0.0, 1.0}
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
	[575] = "%1d",	-- RWR Indicator Control POWER Button {1.0,0.0,-1.0}
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
	--[327] = "%.1f",	-- AN/ARC-164, UHF Radio 100 MHz Frequency Selector Knob {0.0, 0.1, 0.2, 0.3}
	--[328] = "%.1f",	-- AN/ARC-164, UHF Radio 10 MHz Frequency Selector Knob {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9}
	--[329] = "%.1f",	-- AN/ARC-164, UHF Radio 1 MHz Frequency Selector Knob {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9}
	--[330] = "%.1f",	-- AN/ARC-164, UHF Radio 0.1 MHz Frequency Selector Knob {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9}
	--[331] = "%.2f",	-- AN/ARC-164, UHF Radio 0.025 MHz Frequency Selector Knob {0.0, 0.25, 0.5, 0.75}
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

	--[443] = "%.4f",	-- SAI_knob_arrow {-1.0, 1.0} {0.0, 1.0}
	ExportScript.Tools.SendData(443, ExportScript.Tools.negate(mainPanelDevice:get_argument_value(443)))
end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
	
  ExportScript.UhfRadio(mainPanelDevice) -- AN/ARC-164 UHF 
  ExportScript.UhfRadioPresets(mainPanelDevice) -- AN/ARC-164 UHF Preset List
  ExportScript.TacanRadio(mainPanelDevice) -- TACAN Channel
  ExportScript.FuelQuantityIndicator(mainPanelDevice) -- Fuel Quantity Indicator (Dual)
  ExportScript.UhfRadioKnobs(mainPanelDevice) -- AN/ARC-164 UHF 
  
  if LoIsObjectExportAllowed() then -- returns true if world objects data is available
    if LoIsOwnshipExportAllowed() then -- returns true if ownship data is available
  ExportScript.LoAircraftInfo(mainPanelDevice) -- Provides a lot of aircraft properties
  ExportScript.AirportInfo(mainPanelDevice) -- Provides info on the two closest airports
  ExportScript.WindsAloft(mainPanelDevice) -- Gets winds at the aircraft
  ExportScript.GroundRadar(mainPanelDevice) -- Reports 2 closest friendlies and 2 enemies
  ExportScript.AirRadar(mainPanelDevice) -- Reports 2 closest friendlies and 2 enemies
  ExportScript.IglaHunter(mainPanelDevice) -- Locates closest Igla
    end
  end

end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
	
	--AN/ARC-164 UHF 
	---------------------------------------------------
	local lUHFRadio = GetDevice(23)
	if lUHFRadio:is_on() then
		--ExportScript.Tools.SendDataDAC(2000, string.format("%.3f", lUHFRadio:get_frequency()/1000000))
		ExportScript.Tools.SendDataDAC(2000, ExportScript.Tools.RoundFreqeuncy(lUHFRadio:get_frequency()/1000000))

		local lUHFRadio_PRESET = {[0]="01",[0.05]="02",[0.1]="03",[0.15]="04",[0.2]="05",[0.25]="06",[0.3]="07",[0.35]="08",[0.4]="09",[0.45]="10",[0.5]="11",[0.55]="12",[0.6]="13",[0.65]="14",[0.7]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20"}
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

----------------------
-- Custom Functions --
----------------------

function ExportScript.LoAircraftInfo(mainPanelDevice)
  
  -- General
  local aircraftName = LoGetSelfData().Name -- DCS Name of the aircraft eg "F-5E-3"
  local pilotName = LoGetPilotName() -- Logbook Pilot name
  
	-- Times DCS times are default in seconds
  local dcsModelTime = LoGetModelTime() -- time since aircraft spawn
  local missionStartTime = LoGetMissionStartTime() -- second after midnight that the mission started
  local dcsTimeLocal = formatTime(LoGetMissionStartTime() + LoGetModelTime()) -- up-to-date time in dcs
  local utcOffset = -1 * Terrain.GetTerrainConfig('SummerTimeDelta') * 3600 -- eg -1 * 4 * 3600 (for seconds to get hours)
  local dcsTimeUtc = formatTime(dcsModelTime + LoGetMissionStartTime() + utcOffset) -- dcs zulu time
  local realTimeLocal = os.date("%H-%M-%S") -- real life time
  local realTimeUtc = os.date("!%H-%M-%S") -- real life zulu time
  --local playTime = formatTime(DCS.getRealTime()) -- does not work, export environment no access
  
  -- Player Aircraft Properties
  local altMsl_meters = LoGetAltitudeAboveSeaLevel()
  local altMsl_feet = meters2feet(altMsl_meters)
  local altAgl_meters = LoGetAltitudeAboveGroundLevel()
  local altAgl_feet = meters2feet(altAgl_meters)
  
  local verticalVelocity_metric = LoGetVerticalVelocity()
  local verticalVelocity_imperial = metersPerSecond2feetPerMinute(LoGetVerticalVelocity())
  
  local ias_metric = LoGetIndicatedAirSpeed()
  local ias_knots = metersPerSecond2knots(LoGetIndicatedAirSpeed())
  local ias_mph = metersPerSecond2milesPerHour(LoGetIndicatedAirSpeed())

  local tas_metric = LoGetTrueAirSpeed()
  local tas_knots = metersPerSecond2knots(LoGetTrueAirSpeed())
  local tas_mph = metersPerSecond2milesPerHour(LoGetTrueAirSpeed())
  
  local speed_mach = LoGetMachNumber()
  local accel_g = LoGetAccelerationUnits().y
  local aoa = LoGetAngleOfAttack()
  
   --local atmosphericPressure_mmhg = LoGetBasicAtmospherePressure() -- does not seem to work
  
  local aircraftPitch, aircraftBank, aircraftYawTrue = LoGetADIPitchBankYaw()
  aircraftPitch = aircraftPitch * 57.3
  aircraftBank = aircraftBank * 57.3
  aircraftYawTrue = aircraftYawTrue * 57.3 -- true heading
  local aircraftYawMagnetic = LoGetMagneticYaw()  * 57.3 -- magnetic heading
  local aircraftHeading = aircraftYawMagnetic -- this cound be negative
  if aircraftHeading < 0 then aircraftHeading = aircraftHeading + 360 end -- removes the negative
  local magneticVariance = aircraftYawTrue - aircraftYawMagnetic -- works for all maps
  
  local selfData = LoGetSelfData() -- relative the the player
  local lLatitude					= selfData.LatLongAlt.Lat
  local lLongitude				= selfData.LatLongAlt.Long
  local mgrs = Terrain.GetMGRScoordinates(LoGetSelfData().Position.x, LoGetSelfData().Position.z)
  local mgrsTable = mgrsTableize(mgrs) -- format is mgrsTable[1][1], mgrsTable[1][2], mgrsTable[1][3], mgrsTable[1][4]
 
  local aircraftHeadingTrue = selfData.Heading * 57.3 -- true yeading (same as trueYaw for fixed wing aircraft)
  
  -- Engine Info
  local engineInfo = LoGetEngineInfo()
  local lEngineRPMleft			= engineInfo.RPM.left -- ENG1 RPM %
  local lEngineRPMright			= engineInfo.RPM.right -- ENG2 RPM %
  local lEngineFuelInternal		= engineInfo.fuel_internal -- 1 = full. 0 = empty. Includes external tanks for FF aircraft
  local lEngineFuelExternal		= engineInfo.fuel_external -- TANK2 (EXT) (KG) -- does not seem to work for FF modules
  local lEngineFuelTotal = lEngineFuelInternal + lEngineFuelExternal
  local lEngineTempLeft			= engineInfo.Temperature.left -- ENG1 EGT ºC. May get odd numbers
  local lEngineTempRight			= engineInfo.Temperature.right -- ENG2 EGT ºC. May get odd numbers	
  
  local lFuelConsumptionLeft   =  engineInfo.FuelConsumption.left -- {left ,right},kg per sec
  local lFuelConsumptionRight   =  engineInfo.FuelConsumption.right -- {left ,right},kg per sec
  local lFuelConsumptionTotal   =  lFuelConsumptionLeft + lFuelConsumptionRight -- total,kg per sec
  local lHydraulicPressureLeft   =  engineInfo.HydraulicPressure.left -- {left ,right},kg per square centimeter
  local lHydraulicPressureRight   =  engineInfo.HydraulicPressure.right -- {left ,right},kg per square centimeter
 
  ExportScript.Tools.SendData(8000, aircraftName)
  
  ExportScript.Tools.SendData(8001, pilotName)
  
  ExportScript.Tools.SendData(8002, 'Real Time\n'.. realTimeLocal .. '\nDCS Time\n' .. dcsTimeLocal) -- clocks
  
  ExportScript.Tools.SendData(8003, 'HDG ' .. prefixZerosFixedLength(round(aircraftHeading,0),3)  .. 'º'
                                    .. '\nALT ' .. format_int(round(altMsl_feet,-1)) .. ' ft'
                                    .. '\nIAS ' .. round(ias_knots,0)  .. ' kts'
                                    .. '\nV/S ' .. format_int(round(verticalVelocity_imperial,-2)) .. ' ft/min'
                                  ) -- Aircraft Instrument panel (western)
                                  
  ExportScript.Tools.SendData(8004, 'HDG ' .. prefixZerosFixedLength(round(aircraftHeading,0),3)  .. 'º'
                                    .. '\nALT ' .. format_int(round(altMsl_meters,-1)) .. ' m'
                                    .. '\nIAS ' .. round(ias_metric,0)  .. ' km/h'
                                    .. '\nV/S ' .. format_int(round(verticalVelocity_metric,0)) .. ' m/s'
                                  ) -- Aircraft Instrument panel (eastern)

  ExportScript.Tools.SendData(8005, 'HDG ' .. prefixZerosFixedLength(round(aircraftHeading,0),3)  .. 'º'
                                    .. '\nALT ' .. format_int(round(altMsl_feet,-1)) .. ' ft'
                                    .. '\nIAS ' .. round(ias_mph,0)  .. ' mph'
                                    .. '\nV/S ' .. format_int(round(verticalVelocity_imperial,-2)) .. ' ft/min'
                                  ) -- Aircraft Instrument panel (western ww2)
                                  
  ExportScript.Tools.SendData(8006, "Lat-Long-DMS\n" .. formatCoord("DMS",true, lLatitude) 
                                    .. "\n" .. formatCoord("DMS",false, lLongitude)
                                  ) -- Player coordinates in DMS

  ExportScript.Tools.SendData(8007, "Lat-Long-DDM\n" .. formatCoord("DDM",true, lLatitude) 
                                    .. "\n" .. formatCoord("DDM",false, lLongitude)
                                  ) -- Player coordinates in DDM

  ExportScript.Tools.SendData(8008, 'MGRS\n'.. mgrsTable[1][1] .. ' ' .. mgrsTable[1][2] 
                                    .. '\n' .. mgrsTable[1][3] .. ' ' .. mgrsTable[1][4]
                                  ) -- Player coordinates in MGRS on 2 rows + title

  ExportScript.Tools.SendData(8009, 'Mag Var\n' .. format_int(round(magneticVariance, 2))) -- also called magnetic deviation
  
  -- Example for using the Lo Data. Feel free to make your own!
  ExportScript.Tools.SendData(8010, format_int(round(kgPerSecond2poundPerHour(lFuelConsumptionLeft), -1))) -- fuel use in pph
  
end
function ExportScript.AirportInfo(mainPanelDevice)
  
  local airdromes = LoGetWorldObjects("airdromes") -- returns a list of runways and their popperties
  local airportInfo = {} -- contains generated table of important properties
  -- the table will be sorted by nearest airport first
  -- for this table:
  -- airportInfo[1] is the first element
  -- airportInfo[1][1] is the airport name of the first element/airport
  -- airportInfo[1][2] is the distance to the airport of the first element/airport
  -- airportInfo[1][3] is the bearing to the airport of the first element/airport
  -- airportInfo[1][4] is the extimated time en route 
  -- airportInfo[1][5] is the direction of the wind
  -- airportInfo[1][6] is the windStrength of the wind
  -- airportInfo[1][7] is the main runway heading
  -- airportInfo[1][8] is the reverse of the main runway
  -- airportInfo[1][9] is the prefered runway based on winds
  
  for key,value in pairs(airdromes) do
    
    -- remove the woRunWay entries so that only named runways are in the list
    if value.Name ~= 'woRunWay' then 
      
      -- get the distance from the player to the runway
      local distance = getdistance(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, "nm")
                                  
      -- get the direction from the player to the runway                       
      local bearing = getBearing(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, true)
                                  
      -- estimate the runway heading based on the reported values
      local runwayHeading = round(value.Heading * 57.3,-1) / 10
      if runwayHeading < 0 then
        runwayHeading = 36 + runwayHeading
      end
      -- Reverse it for the reciprocal runway
      local runwayHeadingReciprocal
      if runwayHeading > 18 then
        runwayHeadingReciprocal = runwayHeading-18
      else
        runwayHeadingReciprocal = runwayHeading+18
      end
      
      local ete = distance / metersPerSecond2knots(LoGetTrueAirSpeed()) * (60 * 60) --based on tas bc dcs is flat...
      -- if ete is more than 24hrs, make it 24 hrs, which shows up as 00-00-00
      -- this case is for choppers and aircraft that arent moving
      if ete > 86400 then ete = 86400 end
      ete = formatTime(ete)
      
      -- wind at airport calculations. Each airport has slighty different winds
      -- https://forum.dcs.world/topic/165136-logetwindatpoint-in-exportlua/#comment-3294428
      -- LoGetWindAtPoint(x,y,z,is_radio_alt), 2 meters off the ground for the "wind sensor"
      local vx,_vy,vz,_absolute_height = LoGetWindAtPoint(value.Position.x,2,value.Position.y,true) 
      local windDirectionInRadians = math.atan2(vz,vx)
      local windDirection = windDirectionInRadians * 57.3
      local windStrength = math.sqrt((vx)^2 + (vz)^2)
      if windDirection < 0 then
        windDirection = 360 + windDirection
      end
      -- Convert to direction to from direction 
      if windDirection > 180 then
        windDirection = windDirection - 180
      else
        windDirection = windDirection + 180
      end
      
      -- Calculate the prefered runway for landing
      -- if the rounded runway is within +- 9 of the rounded wind, then it is prefered
      local windRounded = round(windDirection, -1)
      if windRounded >= runwayHeading - 9 and windRounded <= runwayHeading + 9 then
        runwayHeadingPrefered = runwayHeading
      else
        runwayHeadingPrefered = runwayHeadingReciprocal
      end
      
      -- Populate the table with the important info for each airport
      table.insert(airportInfo, -- the table name
        {value.Name, -- airport name [1]
        distance, bearing, ete, --[2][3][4]
        windDirection,windStrength, --wind direction [5], wind Strength [6]
        runwayHeading, runwayHeadingReciprocal,runwayHeadingPrefered}) -- [7][8][9]
    
    end -- end of woRunWay
  end -- end of FOR loop
  
  -- sort the table based on the second value, which is distance
  -- https://stackoverflow.com/questions/51276613/how-to-sort-table-by-value-and-then-print-index-in-order
  -- https://www.tutorialspoint.com/sort-function-in-lua-programming
  table.sort(airportInfo, function(a,b) return a[2] < b[2] end)

  -- Primary Airport (closest)
  ExportScript.Tools.SendData(8101, airportInfo[1][1] .. '\n' -- name of airport
                                --[[.. 'BRG ']] .. format_int(addZeros3(round(airportInfo[1][3],0))) .. 'º ' -- bearing
                                --[[.. 'DIST ']] .. format_int(round(airportInfo[1][2], 0)) .. 'nm\n' -- distance
                                .. 'ETE ' .. airportInfo[1][4] .. '\n' -- estimated time in route
                                .. '' .. prefixZerosFixedLength(round(airportInfo[1][5], 0),3) .. 'º ' -- wind bearing
                                .. round(metersPerSecond2knots(airportInfo[1][6]),0) .. 'kts' -- wing strength
                                .. '\n' .. prefixZerosFixedLength(airportInfo[1][7],2) -- runway 1
                                .. '-' .. prefixZerosFixedLength(airportInfo[1][8],2) -- runway 2
                                .. ' (' .. prefixZerosFixedLength(airportInfo[1][9],2) .. ')') -- prefered runway based on wind in parens

  -- Secondary Airport (second closest)
  ExportScript.Tools.SendData(8102, airportInfo[2][1] .. '\n' -- name of airport
                                --[[.. 'BRG ']] .. format_int(addZeros3(round(airportInfo[2][3],0))) .. 'º ' -- bearing
                                --[[.. 'DIST ']] .. format_int(round(airportInfo[2][2], 0)) .. 'nm\n' -- distance
                                .. 'ETE ' .. airportInfo[2][4] .. '\n' -- estimated time in route
                                .. '' .. prefixZerosFixedLength(round(airportInfo[2][5], 0),3) .. 'º ' -- wind bearing
                                .. round(metersPerSecond2knots(airportInfo[2][6]),0) .. 'kts' -- wing strength
                                .. '\n' .. prefixZerosFixedLength(airportInfo[2][7],2) -- runway 1
                                .. '-' .. prefixZerosFixedLength(airportInfo[2][8],2) -- runway 2
                                .. ' (' .. prefixZerosFixedLength(airportInfo[2][9],2) .. ')') -- prefered runway based on wind in parens
end

function ExportScript.WindsAloft(mainPanelDevice)
  
  -- Winds relative to the aircraft, aka, winds aloft
  local windAloft = LoGetVectorWindVelocity()
  local windStrengthAloft  = math.sqrt((windAloft.x)^2 + (windAloft.z)^2)
  local windDirectionAloft = math.deg(math.atan2(windAloft.z, windAloft.x))
  if windDirectionAloft < 0 then
    windDirectionAloft = 360 + windDirectionAloft
  end
  
  -- Convert to direction to from direction 
  if windDirectionAloft > 180 then
    windDirectionAloft = windDirectionAloft - 180
  else
    windDirectionAloft = windDirectionAloft + 180
  end

  ExportScript.Tools.SendData(8100, 'Wind Aloft\n' .. addZeros3(round(windDirectionAloft,0)) .. 'º '
                                    .. round(metersPerSecond2knots(windStrengthAloft,0)) .. 'kts'
                              ) -- winds at the aircraft
end
function ExportScript.GroundRadar(mainPanelDevice) -- may return some odd things
  
  local tableOfUnits = LoGetWorldObjects('units')

  local tableOfGround = {}
  -- relative to the player...
  local tableOfGround_friendly = {}
  local tableOfGround_friendlyReports = {}
  local tableOfGround_enemy = {}
   local tableOfGround_enemyReports = {}
  
  for key,value in pairs(tableOfUnits) do
    if value.Type.level1 == 2 then
    	table.insert(tableOfGround, value)
    end
  end   
  
  local selfData = LoGetSelfData()
  local selfCoalitionID = selfData.CoalitionID
  
  for key,value in pairs(tableOfGround) do
    if value.CoalitionID == selfCoalitionID then
    	table.insert(tableOfGround_friendly, value)
    else
      table.insert(tableOfGround_enemy, value)
    end
  end
  
  -- TODO: only do enemy reports if there is an awacs unit(?)
  for key,value in pairs(tableOfGround_enemy) do
    local distance = getdistance(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, "nm")
                             
    local bearing = getBearing(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, true)

    table.insert(tableOfGround_enemyReports, -- the table name
        {value.Name, distance, bearing}) --[1][2][3]    
  end  
  table.sort(tableOfGround_enemyReports, function(a,b) return a[2] < b[2] end) -- sort based on the second value, which is distance
  
  
  for key,value in pairs(tableOfGround_friendly) do
    local distance = getdistance(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, "nm")
                             
    local bearing = getBearing(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, true)

    table.insert(tableOfGround_friendlyReports, -- the table name
        {value.Name, distance, bearing}) --[1][2][3]
        
  end
  table.sort(tableOfGround_friendlyReports, function(a,b) return a[2] < b[2] end) -- sort based on the second value, which is distance
  
  local string_8200 = 'No Ground\nEnemy\nDetected'
  if tableOfGround_enemyReports[1] ~= nill then
    string_8200 = 'Enemy Ground\n' .. tableOfGround_enemyReports[1][1]
                .. '\n ' .. prefixZerosFixedLength(tableOfGround_enemyReports[1][3],3) -- bearing
                .. 'º  ' .. round(tableOfGround_enemyReports[1][2],0) .. 'nm'--distance
  end
  
  local string_8201 = 'No Ground\nEnemy\nDetected'
  if tableOfGround_enemyReports[2] ~= nill then
    string_8201 = 'Enemy Ground\n'.. tableOfGround_enemyReports[2][1]
                .. '\n ' .. prefixZerosFixedLength(tableOfGround_enemyReports[2][3],3) -- bearing
                .. 'º  ' .. round(tableOfGround_enemyReports[2][2],0) .. 'nm'--distance
  end
  
  local string_8202 = 'No Ground\nFriend\nDetected'
  if tableOfGround_friendlyReports[1] ~= nill then
    string_8202 = 'Friend Ground\n' .. tableOfGround_friendlyReports[1][1]
                .. '\n ' .. prefixZerosFixedLength(tableOfGround_friendlyReports[1][3],3) -- bearing
                .. 'º  ' .. round(tableOfGround_friendlyReports[1][2],0) .. 'nm'--distance
  end
  
  local string_8203 = 'No Ground\nFriend\nDetected'
  if tableOfGround_friendlyReports[2] ~= nill then
    string_8203 = 'Friend Ground\n' .. tableOfGround_friendlyReports[2][1]
                .. '\n ' .. prefixZerosFixedLength(tableOfGround_friendlyReports[2][3],3) -- bearing
                .. 'º  ' .. round(tableOfGround_friendlyReports[2][2],0) .. 'nm'--distance
  end
  
  ExportScript.Tools.SendData(8200, string_8200)  
  ExportScript.Tools.SendData(8201, string_8201)                                 
  ExportScript.Tools.SendData(8202, string_8202)  
  ExportScript.Tools.SendData(8203, string_8203)                                  
end

function ExportScript.AirRadar(mainPanelDevice)
  
  local tableOfUnits = LoGetWorldObjects('units')

  local tableOfAircraft = {}
  -- relative to the player...
  local tableOfAircraft_friendly = {}
  local tableOfAircraft_friendlyReports = {}
  local tableOfAircraft_enemy = {}
   local tableOfAircraft_enemyReports = {}
  
  for key,value in pairs(tableOfUnits) do
    if value.Type.level1 == 1 then
    	table.insert(tableOfAircraft, value)
    end
  end   
  
  local selfData = LoGetSelfData()
  local selfCoalitionID = selfData.CoalitionID
  
  for key,value in pairs(tableOfAircraft) do
    if value.CoalitionID == selfCoalitionID then
    	table.insert(tableOfAircraft_friendly, value)
    else
      table.insert(tableOfAircraft_enemy, value)
    end
  end
  
  -- TODO: only do enemy reports if there is a awacs unit
  for key,value in pairs(tableOfAircraft_enemy) do
    local distance = getdistance(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, "nm")
                             
    local bearing = getBearing(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, true)

    table.insert(tableOfAircraft_enemyReports, -- the table name
        {value.Name, distance, bearing}) --[1][2][3]
        
    -- https://stackoverflow.com/questions/51276613/how-to-sort-table-by-value-and-then-print-index-in-order
    -- https://www.tutorialspoint.com/sort-function-in-lua-programming
    
  end  
  table.sort(tableOfAircraft_enemyReports, function(a,b) return a[2] < b[2] end) -- sort based on the second value, which is distance
  
  
  for key,value in pairs(tableOfAircraft_friendly) do -- [1] will always be the player
    local distance = getdistance(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, "nm")
                             
    local bearing = getBearing(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, true)

    table.insert(tableOfAircraft_friendlyReports, -- the table name
        {value.Name, distance, bearing}) --[1][2][3]
        
  end
  table.sort(tableOfAircraft_friendlyReports, function(a,b) return a[2] < b[2] end) -- sort based on the second value, which is distance
  
  local string_8210 = 'No Air\nEnemy\nDetected'
  if tableOfAircraft_enemyReports[1] ~= nill then
    string_8210 = 'Enemy Air\n' .. tableOfAircraft_enemyReports[1][1]
                .. '\n ' .. prefixZerosFixedLength(tableOfAircraft_enemyReports[1][3],3) -- bearing
                .. 'º  ' .. round(tableOfAircraft_enemyReports[1][2],0) .. 'nm'--distance
  end
  
  local string_8211 = 'No Air\nEnemy\nDetected'
  if tableOfAircraft_enemyReports[2] ~= nill then
    string_8211 = 'Enemy Air\n' .. tableOfAircraft_enemyReports[2][1]
                .. '\n ' .. prefixZerosFixedLength(tableOfAircraft_enemyReports[2][3],3) -- bearing
                .. 'º  ' .. round(tableOfAircraft_enemyReports[2][2],0) .. 'nm'--distance
  end
  
  local string_8212 = 'No Air\nFriend\nDetected'
  if tableOfAircraft_friendlyReports[2] ~= nill then
    string_8212 = 'Friend Air\n' .. tableOfAircraft_friendlyReports[2][1]
                  .. '\n ' .. prefixZerosFixedLength(tableOfAircraft_friendlyReports[2][3],3) -- bearing
                  .. 'º  ' .. round(tableOfAircraft_friendlyReports[2][2],0) .. 'nm'--distance
  end
  
  local string_8213 = 'No Air\nFriend\nDetected'
  if tableOfAircraft_friendlyReports[3] ~= nill then
    string_8213 = 'Friend Air\n' .. tableOfAircraft_friendlyReports[3][1]
                  .. '\n ' .. prefixZerosFixedLength(tableOfAircraft_friendlyReports[3][3],3) -- bearing
                  .. 'º  ' .. round(tableOfAircraft_friendlyReports[3][2],0) .. 'nm'--distance
  end
  
  ExportScript.Tools.SendData(8210,string_8210)  
  ExportScript.Tools.SendData(8211, string_8211)                                 
  ExportScript.Tools.SendData(8212, string_8212)  
  ExportScript.Tools.SendData(8213, string_8213)                                  
end

function ExportScript.IglaHunter(mainPanelDevice) -- Locates the nearest Igla
  
  local tableOfUnits = LoGetWorldObjects('units')
  local selfData = LoGetSelfData()
  local selfCoalitionID = selfData.CoalitionID
  
  local tableOfIgla = {}
  local tableOfIgla_report = {}
  
  --TODO: Might have to refine this.
  for key,value in pairs(tableOfUnits) do
    if value.CoalitionID ~= selfCoalitionID then
      if value.Type.level3 == 27 then
        if value.Type.level2 == 16 then
          if value.Type.level1 == 2 then
            if value.Type.level4 == 55 or 54 or 53 or 52 or 62 then
              table.insert(tableOfIgla, value)
            end
          end  
        end    
      end
    end
  end
  
  --if tableOfIgla ~= null then
  for key,value in pairs(tableOfIgla) do
    local distance = getdistance(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, "nm")
                             
    local bearing = getBearing(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, true)

    table.insert(tableOfIgla_report, -- the table name
        {value.Name, distance, bearing}) --[1][2][3]    
  --end  
  end
  table.sort(tableOfIgla_report, function(a,b) return a[2] < b[2] end) -- sort based on the second value, which is distance
  
  local string_8666 = 'Igla Hunter\nSearching...'
  if tableOfIgla_report[1] ~= nill then
    string_8666 = 'Igla Detected\n' .. tableOfIgla_report[1][1]
                                        .. '\n ' .. prefixZerosFixedLength(tableOfIgla_report[1][3],3) -- bearing
                                        .. 'º  ' .. round(tableOfIgla_report[1][2],0) .. ' nm'--distance
  end
  
  ExportScript.Tools.SendData(8666, string_8666) 
  
end

function ExportScript.UhfRadioPresets(mainPanelDevice)
  
  local UhfPresetReadout = ExportScript.Tools.getListIndicatorValue(4) -- uhf radio presets
  
  local UhfCh1 = UhfPresetReadout.SheetTable_Channel1
  local UhfCh2 = UhfPresetReadout.SheetTable_Channel2
  local UhfCh3 = UhfPresetReadout.SheetTable_Channel3
  local UhfCh4 = UhfPresetReadout.SheetTable_Channel4
  local UhfCh5= UhfPresetReadout.SheetTable_Channel5
  local UhfCh6 = UhfPresetReadout.SheetTable_Channel6
  local UhfCh7 = UhfPresetReadout.SheetTable_Channel7
  local UhfCh8 = UhfPresetReadout.SheetTable_Channel8
  local UhfCh9 = UhfPresetReadout.SheetTable_Channel9
  local UhfCh10 = UhfPresetReadout.SheetTable_Channel10
  local UhfCh11 = UhfPresetReadout.SheetTable_Channel11
  local UhfCh12 = UhfPresetReadout.SheetTable_Channel12
  local UhfCh13 = UhfPresetReadout.SheetTable_Channel13
  local UhfCh14 = UhfPresetReadout.SheetTable_Channel14
  local UhfCh15 = UhfPresetReadout.SheetTable_Channel15
  local UhfCh16 = UhfPresetReadout.SheetTable_Channel16
  local UhfCh17 = UhfPresetReadout.SheetTable_Channel17
  local UhfCh18 = UhfPresetReadout.SheetTable_Channel18
  local UhfCh19 = UhfPresetReadout.SheetTable_Channel19
  local UhfCh20 = UhfPresetReadout.SheetTable_Channel20
  

  ExportScript.Tools.SendData(3016, "UHF 1-4"
                              .. "\n" .. UhfCh1
                              .. "\n" .. UhfCh2
                              .. "\n" .. UhfCh3
                              .. "\n" .. UhfCh4
                            )
                           
   ExportScript.Tools.SendData(3017, "UHF 5-8" 
                              .. "\n" .. UhfCh5
                              .. "\n" .. UhfCh6
                              .. "\n" .. UhfCh7
                              .. "\n" .. UhfCh8
                            )                         
                            
                          
  ExportScript.Tools.SendData(3018, "UHF 9-12"
                              .. "\n" .. UhfCh9
                              .. "\n" .. UhfCh10
                              .. "\n" .. UhfCh11
                              .. "\n" .. UhfCh12
                            )                          
                    
  ExportScript.Tools.SendData(3019, "UHF 13-16" 
                              .. "\n" .. UhfCh13
                              .. "\n" .. UhfCh14
                              .. "\n" .. UhfCh15
                              .. "\n" .. UhfCh16
                            )       
                            
  ExportScript.Tools.SendData(3020, "UHF 16-20" 
                              .. "\n" .. UhfCh17
                              .. "\n" .. UhfCh18
                              .. "\n" .. UhfCh19
                              .. "\n" .. UhfCh20
                            )     
end


function ExportScript.UhfRadio(mainPanelDevice)
	local lUHFRadio = GetDevice(23)
	if lUHFRadio:is_on() then
		--ExportScript.Tools.SendData(2000, string.format("%.3f", lUHFRadio:get_frequency()/1000000))
		ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy(lUHFRadio:get_frequency()/1000000))

		local lUHFRadio_PRESET = {[0]="01",[0.05]="02",[0.1]="03",[0.15]="04",[0.2]="05",
                              [0.25]="06",[0.3]="07",[0.35]="08",[0.4]="09",[0.45]="10",
                              [0.5]="11",[0.55]="12",[0.6]="13",[0.65]="14",[0.7]="15",
                              [0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20"}
		ExportScript.Tools.SendData(2001, lUHFRadio_PRESET[ExportScript.Tools.round(mainPanelDevice:get_argument_value(300), 2)])
	end
end


function ExportScript.TacanRadio(mainPanelDevice) -- TACAN Channel
	ExportScript.Tools.SendData(2002, (string.format("%0.2f", (mainPanelDevice:get_argument_value(263))) == "1.00" and "0" or "1")..ExportScript.Tools.round(mainPanelDevice:get_argument_value(264) * 10, 0)..ExportScript.Tools.round(mainPanelDevice:get_argument_value(265) * 10, 0)..(string.format("%1d", (mainPanelDevice:get_argument_value(266))) == "0" and "X" or "Y"))
	--[266] = "%.4f",	-- XYwheel
	ExportScript.Tools.SendData(266, mainPanelDevice:get_argument_value(266) == 0 and 0 or 1)
end

function ExportScript.FuelQuantityIndicator(mainPanelDevice) -- Fuel Quantity Indicator (Dual)
	
	local lLeftFuel = ExportScript.Tools.round(mainPanelDevice:get_argument_value(22) * 2500, 0)
	local lRightFuel = ExportScript.Tools.round(mainPanelDevice:get_argument_value(23) * 2500, 0)
	
	ExportScript.Tools.SendData(2006, lLeftFuel)
	ExportScript.Tools.SendData(2007, lRightFuel)
	ExportScript.Tools.SendData(2008, lLeftFuel + lRightFuel)
end

function ExportScript.UhfRadioKnobs(mainPanelDevice) --AN/ARC-164 UHF 
  
	local lTmp327 = tonumber(string.format("%0.1f", mainPanelDevice:get_argument_value(327)))
	local lTmp327_2 = lTmp327
        if lTmp327 == 0.0 then lTmp327_2 = 0.0
	elseif lTmp327 == 0.1 then lTmp327_2 = 0.3
	elseif lTmp327 == 0.2 then lTmp327_2 = 0.2
	elseif lTmp327 == 0.3 then lTmp327_2 = 0.1
	else                       lTmp327_2 = lTmp327 end
	
	local lTmp328_2 = 1 - mainPanelDevice:get_argument_value(328)
	local lTmp329_2 = 1 - mainPanelDevice:get_argument_value(329)
	local lTmp330_2 = 1 - mainPanelDevice:get_argument_value(330)
	
	local lTmp331 = mainPanelDevice:get_argument_value(331)
	local lTmp331_2 = 0
        if lTmp331 == 0.0  then lTmp331_2 = 0.0
	elseif lTmp331 == 0.25 then lTmp331_2 = 0.75
	elseif lTmp331 == 0.5  then lTmp331_2 = 0.5
	elseif lTmp331 == 0.75 then lTmp331_2 = 0.25
	else                       lTmp331_2 = lTmp331 end
	
	ExportScript.Tools.SendData(327, lTmp327_2)
	ExportScript.Tools.SendData(328, lTmp328_2)
	ExportScript.Tools.SendData(329, lTmp329_2)
	ExportScript.Tools.SendData(330, lTmp330_2)
	ExportScript.Tools.SendData(331, lTmp331_2)
end

----------------------
-- Helper Functions --
----------------------

function formatTime(time)
    local seconds = math.floor(time) % 60
    local minutes = math.floor(time / 60) % 60
    local hours = math.floor(time / (60 * 60)) % 24
    return string.format("%02d", hours) .. "-" .. string.format("%02d", minutes) .. "-" .. string.format("%02d", seconds)
end    

function meters2feet(meters)
  local feet = meters * 3.281
  return feet
end

function feet2meters(feet)
  local meters = feet / 3.281
  return feet
end

function metersPerSecond2milesPerHour(metersPerSecond)
  local milesPerHour = metersPerSecond * 2.237
  return milesPerHour
end

function metersPerSecond2knots(metersPerSecond)
  local knots = metersPerSecond * 1.944
  return knots
end

function kgPerSecond2poundPerHour(kgPerSecond)
  poundPerHour = kgPerSecond * 7937
  return poundPerHour
end

function metersPerSecond2feetPerMinute(metersPerSecond)
  local feetPerMinute = metersPerSecond * 197
  return feetPerMinute
end

function round(num, numDecimalPlaces) --http://lua-users.org/wiki/SimpleRound
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

function format_int(number) --https://stackoverflow.com/questions/10989788/format-integer-in-lua
  local i, j, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')
  -- reverse the int-string and append a comma to all blocks of 3 digits
  int = int:reverse():gsub("(%d%d%d)", "%1,")
  -- reverse the int-string back remove an optional comma and put the 
  -- optional minus and fractional part back
  return minus .. int:reverse():gsub("^,", "") .. fraction
end

function formatCoord(type, isLat, d)
    local h
    if isLat then
        if d < 0 then
            h = 'S'
            d = -d
        else
            h = 'N'
        end
    else
        if d < 0 then
            h = 'W'
            d = -d
        else
            h = 'E'
        end
    end

    local g = math.floor(d)
    local m = math.floor(d * 60 - g * 60)
    local s = d * 3600 - g * 3600 - m * 60

    if type == "DMS" then -- Degree Minutes Seconds
        s = math.floor(s * 100) / 100
        return string.format('%s %2d°%.2d\'%05.2f"', h, g, m, s)
    elseif type == "DDM" then -- Degree Decimal Minutes
        s = math.floor(s / 60 * 1000)
        return string.format('%s %2d°%02d.%3.3d\'', h, g, m, s)
    else -- Decimal Degrees
        return string.format('%f',d)
    end
end

function getdistance(lat1,lat2,lon1,lon2,unit) -- https://www.geeksforgeeks.org/program-distance-two-points-earth/
  --Example Locations
  --lat1 = 42.1578 -- POTI
  --lat2 = 42.3269 -- HONI
  --lon1 = 41.6777
  --lon2 = 42.4122
		
  local lon1 = toRadians(lon1)
  local lon2 = toRadians(lon2)
  local lat1 = toRadians(lat1)
  local lat2 = toRadians(lat2)
  
  -- Haversine formula
  local dlon = lon2 - lon1
  local dlat = lat2 - lat1
  local a = math.pow(math.sin(dlat / 2), 2) +
      math.cos(lat1) * math.cos(lat2) *
      math.pow(math.sin(dlon / 2),2)
    
  local c = 2 * math.asin(math.sqrt(a))

  local r -- Radius of earth in X.
  if unit == 'nm' then
      r = 6371 / 1.852 -- times 1.852 because I could not find a good NM source
    elseif unit == 'km' then
      r = 6371 -- Use 6371 for kilometers
    elseif unit == 'miles' then
    r = 3956 -- Use 3956 for miles
    elseif unit == 'meters' then
    r = 6371 * 1000
    end
  
  -- calculate the result
  return (c * r)
end

function toRadians(angleIn10thofaDegree)
  return (angleIn10thofaDegree * math.pi) / 180
end


function getBearing(lat1,lat2,lon1,lon2, magnetic)
  local bearing_rad = math.atan2(lon2 - lon1, lat2 - lat1)
  if bearing_rad < 0 then
    bearing_rad = bearing_rad + (2 * math.pi) 
  end
    
  bearing = math.deg(bearing_rad)
  
  -- start calculation for getting the magnetic bar
  local _aircraftPitch, _aircraftBank, aircraftYawTrue = LoGetADIPitchBankYaw()
  aircraftYawTrue = aircraftYawTrue * 57.3 -- actually heading
  local aircraftYawMagnetic = LoGetMagneticYaw()  * 57.3
  local magneticVariance = aircraftYawTrue - aircraftYawMagnetic
  
  if magnetic == true then
    bearing = bearing - magneticVariance
  end
  
  -- correction for bearings less than 0 due to the calculation above
  if bearing < 0 then
    bearing = bearing + 360
  end
  
  return bearing
end

function addZeros3(number)
	number = string.format("%.1d" , number)
	if #number == 2 then
		number = "0" .. number
	elseif #number == 1 then
		number = "00" .. number
	end
	return number
end

function prefixZerosFixedLength(number, digitLength) -- prefixZerosFixedLength(99, 3) --> 099
  number = string.format("%.1d" , number) -- make the number a string
  local zerosToAdd = digitLength - #number
  s = ''
  for i = 1, zerosToAdd do
    s = s .. 0
  end
  return s .. number
end

function mgrsTableize(mgrsString)
  -- Reference: https://upload.wikimedia.org/wikipedia/commons/b/b7/Universal_Transverse_Mercator_zones.svg
  -- example: 38 T LM 12345 54321
  -- (\d+\s\w)\s(\w+)\s(.+)\s(.+) --c# version of regex
  -- UTMZone = string,
  -- MGRSDigraph = string,
  -- Easting = number,
  -- Northing = number
   local UTMZone , MGRSDigraph, Easting, Northing = mgrsString:match('(%d+%s%w)%s(%w+)%s(.+)%s(.+)')
  local mgrsTbl = {}
  table.insert(mgrsTbl, {UTMZone,MGRSDigraph,Easting,Northing})
  return mgrsTbl
end