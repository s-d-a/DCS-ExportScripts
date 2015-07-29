-- Uh-1H Export
-- Version 0.9.9 BETA

gES_FoundDCSModule = true

gES_GlassCockpitConfigEveryFrameArguments = 
{ 
	--[[
	every frames arguments
	based of "mainpanel_init.lua"
	Example (http://www.lua.org/manual/5.1/manual.html#pdf-string.format)
	[DeviceID] = "Format"
	  [4] = "%.4f",  <- floating-point number with 4 digits after point
	 [19] = "%0.1f", <- floating-point number with 1 digit after point
	[129] = "%1d",   <- decimal number
	]]
	-- Controlls Pilot
	--[184] = "%.4f",		-- rudder
	--[187] = "%.4f",		-- stick_roll
	--[186] = "%.4f",		-- stick_pitch
	--[200] = "%.4f",		-- collective_position
	-- Controlls CoPilot
	--[185] = "%.4f",		-- rudder_add
	--[191] = "%.4f",		-- stick_roll_sec
	--[190] = "%.4f",		-- stick_pitch_sec
	--[207] = "%.4f",		-- collective_position_operator
	-- Gauges Pilot
	[117] = "%0.4f",		-- AIRSPEED_Nose
	[118] = "%0.4f",		-- AIRSPEED_Roof
	-- Course Indicator ID-1347
	[151] = "%.4f",		-- VerticalBar
	[152] = "%.4f",		-- HorisontalBar
	[153] = "%.4f",		-- ToMarker
	[154] = "%.4f",		-- FromMarker
	[156] = "%.4f",		-- RotCourseCard
	[157] = "%.1f",		-- VerticalOFF
	[158] = "%.1f",		-- HorisontalOFF
	-- ADF_ARN83
	[45] = "%0.2f",		-- ADF_ARN83_Frequency
	[40] = "%.4f",		-- ARN83_SignalLevel
	-- GMC
	[159] = "%.4f",		-- GMC_CoursePointer1
	[160] = "%.4f",		-- GMC_CoursePointer2
	[162] = "%.4f",		-- GMC_HeadingMarker
	[165] = "%.4f",		-- GMC_Heading
	[166] = "%.4f",		-- GMC_Annunciator
	[167] = "%.2f",		-- GMC_PowerFail
	-- Copilot RMI
	[266] = "%.4f",		-- RMI_CoursePointer1
	[267] = "%.4f",		-- RMI_CoursePointer2
	[269] = "%.4f",		-- RMI_Heading
	-- Altimeter Indicator AAU-32/A (operator)
	[168] = "%.4f",		-- Pointer
	[169] = "%.4f",		-- Alt1AAU_10000_footCount
	[170] = "%.4f",		-- Alt1AAU_1000_footCount
	[171] = "%.4f",		-- Alt1AAU_100_footCount
	[174] = "%.2f",		-- AAU_32_Drum_Counter
	[175] = "%.2f",		-- AAU_32_Drum_Counter
	[176] = "%.2f",		-- AAU_32_Drum_Counter
	[177] = "%.1f",		-- CodeOff_flag
	-- Altimeter Indicator AAU-7/A (pilot) (AAU-31/A)
	[178] = "%.4f",		-- Alt_10000_AAU_7A
	[179] = "%.4f",		-- Alt_1000_AAU_7A
	[180] = "%.4f",		-- Alt_100_AAU_7A
	[182] = "%.4f",		-- Press_AAU_7A
	-- Gauges
	[113] = "%.4f",		-- EngOilPress
	[114] = "%.4f",		-- EngOilTemp
	[115] = "%.4f",		-- TransmOilPress
	[116] = "%.4f",		-- TransmOilTemp
	[117] = "%.4f",		-- AIRSPEED_Nose
	[118] = "%.4f",		-- AIRSPEED_Roof
	[121] = "%.4f",		-- ExhaustTemp
	[122] = "%.4f",		-- EngineTach
	[123] = "%.4f",		-- RotorTach
	[119] = "%.4f",		-- GasProducerTach
	[120] = "%.4f",		-- GasProducerTach_U
	[124] = "%.4f",		-- TorquePress
	[149] = "%.4f",		-- VoltageDC
	[150] = "%.4f",		-- VoltageAC
	[436] = "%.4f",		-- LoadmeterMainGen
	[125] = "%.4f",		-- LoadmeterSTBYGen
	[126] = "%.4f",		-- FuelPress
	[239] = "%.4f",		-- FuelQuantity
	-- Mechanic clock
	[127] = "%.4f",		-- CLOCK_hours
	[128] = "%.4f",		-- CLOCK_minutes
	[129] = "%.4f",		-- CLOCK_seconds
	-- 
	[132] = "%.4f",		-- TurnPtr
	[133] = "%.4f",		-- SideSlip
	[134] = "%.2f",		-- VertVelocPilot
	[251] = "%.2f",		-- VertVelocCopilot
	-- ADI - pilot
	[142] = "%.4f",		-- Attitude_Roll
	[143] = "%.4f",		-- Attitude_Pitch
	[148] = "%.1f",		-- Attitude_Off_flag
	-- ADI - operator
	[135] = "%.4f",		-- Attitude_Roll_left
	[136] = "%.4f",		-- Attitude_Pitch_left
	[141] = "%.1f",		-- Attitude_Off_flag_left
	[138] = "%.4f",		-- Attitude_PitchShift
	-- operator
	--[149] = "%.4f",		-- DCVoltmeter
	--[150] = "%.4f",		-- ACVoltmeter
	-- UHF_ARC51
	[10] = "%.4f",		-- UHF_ARC51_Freq1
	[11] = "%.4f",		-- UHF_ARC51_Freq2
	[12] = "%.4f",		-- UHF_ARC51_Freq3
	[13] = "%.4f",		-- UHF_ARC51_Freq4
	[14] = "%.4f",		-- UHF_ARC51_Freq5
	-- NAV_ARN82
	[46] = "%.4f",		-- NAV_ARN82_Freq1
	[47] = "%.4f",		-- NAV_ARN82_Freq2
	[48] = "%.4f",		-- NAV_ARN82_Freq3
	[49] = "%.4f",		-- NAV_ARN82_Freq4
	[50] = "%.4f",		-- NAV_ARN82_Freq5
	-- VHF_ARC134
	[1] = "%.4f",		-- VHF_ARC134_Freq1
	[2] = "%.4f",		-- VHF_ARC134_Freq2
	[3] = "%.4f",		-- VHF_ARC134_Freq3
	[4] = "%.4f",		-- VHF_ARC134_Freq4
	-- 
	[56] = "%.1f",		-- Marker_Beacon_Lamp
	-- Panel_Shake
	--[264] = "%.1f",		-- Panel_Shake_Z
	--[265] = "%.1f",		-- Panel_Shake_Y
	--[282] = "%.1f",		-- Panel_Rot_X
	-- Wiper
	--[284] = "%.4f",		-- Wiper_Pilot
	--[283] = "%.4f",		-- Wiper_Operator
	-- Pilot Model
	--[242] = "%.1f",		-- Pilot_Model
	--[245] = "%.1f",		-- Operator_Model
	-- Flexible sight station
	--[263] = "%.2f",		-- FlexSightHeight
	--[261] = "%.4f",		-- FlexSightAzimuth
	--[262] = "%.4f",		-- FlexSightElevation
	-- Pilot sight station
	--[438] = "%.4f",		-- PilotSightHeight
	--[442] = "%.2f",		-- PilotSightGlass
	-- Light
	--[279] = "%.4f",		-- light_ConsoleLight
	--[410] = "%.4f",		-- light_DomeLight
	--[411] = "%.4f",		-- light_DomeLightGreen
	-- Damage
	--[248] = "%.1f",		-- DeadPilot
	--[249] = "%.1f",		-- DeadCoPilot
	--[414] = "%.4f",		-- LeftWindShield
	--[413] = "%.4f",		-- RightWindShield
	--[412] = "%.4f",		-- DownBlisters
	--[417] = "%.4f",		-- UpRightBlister
	--[418] = "%.4f",		-- UpLeftBlister
	--[415] = "%.4f",		-- RightWindow
	--[416] = "%.4f",		-- LeftWindow
	--[422] = "%.4f",		-- RightDoor
	--[420] = "%.4f",		-- LeftDoor
	-- 
	[437] = "%.3f",		-- RamTemp
	-- Radar Altimeter
	[443] = "%.4f",		-- RALT_Needle
	[467] = "%.1f",		-- RALT_Off_Flag
	[447] = "%.1f",		-- RALT_LO_Lamp
	[465] = "%.1f",		-- RALT_HI_Lamp
	[444] = "%.4f",		-- RALT_LO_Index
	[466] = "%.4f",		-- RALT_HI_Index
	[468] = "%0.1f",		-- RALT_Digit_1
	[469] = "%0.1f",		-- RALT_Digit_2
	[470] = "%0.1f",		-- RALT_Digit_3
	[471] = "%0.1f",		-- RALT_Digit_4
	-- FLARE CHAFF
	[460] = "%1d",		-- FLARE_Digit_1
	[461] = "%1d",		-- FLARE_Digit_2
	[462] = "%1d",		-- CHAFF_Digit_1
	[463] = "%1d",		-- CHAFF_Digit_2
	-- XM130 Chaff Flare
	[458] = "%.1f",		-- lamp_XM130_ARMED
	-- Main Panel Lights
	[277] = "%.1f",		-- lamp_MASTER
	[276] = "%.1f",		-- lamp_LOW_RPM
	[275] = "%.1f",		-- lamp_FIRE
	-- Caution Panel Lights
	[91] = "%.1f",		-- lamp_ENGINE_OIL_PRESS
	[92] = "%.1f",		-- lamp_ENGINE_ICING
	[93] = "%.1f",		-- lamp_ENGINE_ICE_JET
	[94] = "%.1f",		-- lamp_ENGINE_CHIP_DET
	[95] = "%.1f",		-- lamp_LEFT_FUEL_BOOST
	[96] = "%.1f",		-- lamp_RIGHT_FUEL_BOOST
	[97] = "%.1f",		-- lamp_ENG_FUEL_PUMP
	[98] = "%.1f",		-- lamp_20_MINUTE
	[99] = "%.1f",		-- lamp_FUEL_FILTER
	[100] = "%.1f",		-- lamp_GOV_EMERG
	[101] = "%.1f",		-- lamp_AUX_FUEL_LOW
	[102] = "%.1f",		-- lamp_XMSN_OIL_PRESS
	[103] = "%.1f",		-- lamp_XMSN_OIL_HOT
	[104] = "%.1f",		-- lamp_HYD_PRESSURE
	[105] = "%.1f",		-- lamp_ENGINE_INLET_AIR
	[106] = "%.1f",		-- lamp_INST_INVERTER
	[107] = "%.1f",		-- lamp_DC_GENERATOR
	[108] = "%.1f",		-- lamp_EXTERNAL_POWER
	[109] = "%.1f",		-- lamp_CHIP_DETECTOR
	[110] = "%.1f",		-- lamp_IFF
	-- M21
	[254] = "%.1f",		-- lamp_M21_ARMED
	[255] = "%.1f",		-- lamp_M21_SAFE
	-- 
	[76] = "%.1f",		-- lamp_IFF_REPLY
	[77] = "%.1f",		-- lamp_IFF_TEST
	-- Electic Gauges
	[526] = "%.4f",		-- DC_voltage
	[532] = "%.2f",		-- AC_voltage
	[527] = "%.4f",		-- DC_battery_I_current
	[528] = "%.4f",		-- DC_battery_II_current
	[529] = "%.4f",		-- DC_VU_I_current
	[530] = "%.4f",		-- DC_VU_II_current
	[531] = "%.4f",		-- DC_VU_III_current
	[533] = "%.2f",		-- AC_generator_I_current
	[534] = "%.2f",		-- AC_generator_II_current
	[371] = "%.2f"		-- AntiIce_ampermeter
}
gES_GlassCockpitConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	-- Electrosystem
	[219] = "%1d",		-- Battery
	[220] = "%1d",		-- Starter/Stdby GEN
	[218] = "%.1f",		-- DC Voltmeter Selector
	[221] = "%1d",		-- Non Essential bus
	[214] = "%.1f",		-- AC Voltmeter Selector
	[215] = "%1d",		-- Inverter
	-- Electrosystem circuit breakers
	-- Essential BUS. line 1
	[285] = "%1d",		-- CB IFF APX 1 (N/F)
	[287] = "%1d",		-- CB IFF APX 2 (N/F)
	[289] = "%1d",		-- CB Prox. warn.(N/F)
	[291] = "%1d",		-- CB Marker beacon
	[293] = "%1d",		-- CB VHF Nav. (ARN-82)
	[295] = "%1d",		-- CB LF Nav. (ARN-83)
	[297] = "%1d",		-- CB Intercom CPLT(N/F)
	[299] = "%1d",		-- CB Intercom PLT
	[349] = "%1d",		-- CB ARC-102 HF Static INVTR(N/F)
	[351] = "%1d",		-- CB HF ANT COUPLR(N/F)
	[353] = "%1d",		-- CB HF ARC-102(N/F)
	[355] = "%1d",		-- CB FM Radio
	[357] = "%1d",		-- CB UHF Radio
	[359] = "%1d",		-- CB FM 2 Radio(N/F)
	[361] = "%1d",		-- CB VHF AM Radio
	[321] = "%1d",		-- CB Pitot tube(N/F)
	[345] = "%1d",		-- CB Rescue hoist CTL(N/F)
	[347] = "%1d",		-- CB Rescue hoist cable cutter (N/F)
	-- Essential BUS. line 2
	[303] = "%1d",		-- CB Wind wiper PLT
	[301] = "%1d",		-- CB Wind wiper CPLT
	[305] = "%1d",		-- CB KY-28 voice security(N/F)
	[403] = "%1d",		-- CB Starter Relay(N/F)
	[307] = "%1d",		-- CB Search light power(N/F)
	[309] = "%1d",		-- CB Landing light power(N/F)
	[311] = "%1d",		-- CB Landing & Search light control(N/F)
	[313] = "%1d",		-- CB Anticollision light(N/F)
	[363] = "%1d",		-- CB Fuselage lights(N/F)
	[365] = "%1d",		-- CB Navigation lights(N/F)
	[367] = "%1d",		-- CB Dome lights(N/F)
	[369] = "%1d",		-- CB Cockpit lights(N/F)
	[371] = "%1d",		-- CB Caution lights(N/F)
	[373] = "%1d",		-- CB Console lights(N/F)
	[375] = "%1d",		-- CB INST Panel lights(N/F)
	[377] = "%1d",		-- CB INST SEC lights(N/F)
	[323] = "%1d",		-- CB Cabin heater (Outlet valve)(N/F)
	[325] = "%1d",		-- CB Cabin heater (Air valve)(N/F)
	[343] = "%1d",		-- CB Rescue hoist PWR(N/F)
	-- Essential BUS. line 3
	[327] = "%1d",		-- CB RPM Warning system(N/F)
	[329] = "%1d",		-- CB Engine anti-ice(N/F)
	[331] = "%1d",		-- CB Fire detector(N/F)
	[333] = "%1d",		-- CB LH fuel boost pump(N/F)
	[335] = "%1d",		-- CB Turn & Slip indicator
	[337] = "%1d",		-- CB TEMP indicator(N/F)
	[339] = "%1d",		-- CB HYD Control(N/F)
	[341] = "%1d",		-- CB FORCE Trim(N/F)
	[379] = "%1d",		-- CB Cargo hook release(N/F)
	[381] = "%1d",		-- CB EXT Stores jettison(N/F)
	[383] = "%1d",		-- CB Spare inverter PWR(N/F)
	[385] = "%1d",		-- CB Inverter CTRL (N/F)
	[387] = "%1d",		-- CB Main inverter PWR(N/F)
	[389] = "%1d",		-- CB Generator & Bus Reset(N/F)
	[391] = "%1d",		-- CB STBY Generator Field(N/F)
	[393] = "%1d",		-- CB Governor Control(N/F)
	[395] = "%1d",		-- CB IDLE Stop release(N/F)
	[397] = "%1d",		-- CB RH fuel boost pump(N/F)
	[399] = "%1d",		-- CB Fuel TRANS(N/F)
	[401] = "%1d",		-- CB Fuel valves(N/F)
	-- Non Essential BUS
	[315] = "%1d",		-- CB Heated blanket 1(N/F)
	[317] = "%1d",		-- CB Heated blanket 2(N/F)
	[319] = "%1d",		-- CB Voltmeter Non Ess Bus(N/F)
	-- other circuit breakers
	[405] = "%1d",		-- CB Ignition system(N/F)
	-- AC BUS circuit breakers
	[423] = "%1d",		-- CB Pilot ATTD1(N/F)
	[424] = "%1d",		-- CB Pilot ATTD2(N/F)
	[425] = "%1d",		-- CB Copilot ATTD1(N/F)
	[426] = "%1d",		-- CB Copilot ATTD2(N/F)
	[427] = "%1d",		-- CB Gyro Cmps(N/F)
	[428] = "%1d",		-- CB Fuel Quantity(N/F)
	[429] = "%1d",		-- CB 28V Trans(N/F)
	[430] = "%1d",		-- CB Fail Relay(N/F)
	[431] = "%1d",		-- CB Pressure Fuel(N/F)
	[432] = "%1d",		-- CB Pressure Torque(N/F)
	[433] = "%1d",		-- CB Pressure XMSN(N/F)
	[434] = "%1d",		-- CB Pressure Eng(N/F)
	[435] = "%1d",		-- CB Course Ind(N/F)
	--
	[238] = "%1d",		-- Pitot Heater
	[216] = "%1d",		-- Main generator (Left button - ON/OFF. Right button RESET) {-1, 0, 1}
	[217] = "%1d",		-- Main generator switch cover
	--
	[111] = "%1d",		-- Reset/Test switch {-1, 0, 1}
	[112] = "%1d",		-- Bright/Dim switch {-1, 0, 1}
	-- Fuel system
	[81] = "%1d",		-- Main Fuel
	[240] = "%1d",		-- Test Fuel Gauge
	--Transponder APX-72
	[78] = "%.1f",		-- Code
	[59] = "%.1f",		-- Master
	[60] = "%1d",		-- Audio/light
	
	[61] = "%1d",		-- Test M-1 {-1, 0, 1}
	[62] = "%1d",		-- Test M-2 {-1, 0, 1}
	[63] = "%1d",		-- Test M-3A {-1, 0, 1}
	[64] = "%1d",		-- Test M-C {-1, 0, 1}
	-- 
	[65] = "%1d",		-- RAD Test/Mon {-1, 0, 1}
	[66] = "%1d",		-- Ident/Mic {-1, 0, 1}
	-- IFF
	[67] = "%1d",		-- IFF On/Out
	
	[68] = "%1d",		-- MODE1-WHEEL1
	[69] = "%1d",		-- MODE1-WHEEL2
	
	[70] = "%1d",		-- "MODE3A-WHEEL1
	[71] = "%1d",		-- "MODE3A-WHEEL2
	[72] = "%1d",		-- "MODE3A-WHEEL3
	[73] = "%1d",		-- "MODE3A-WHEEL4
	
	[74] = "%.4f",		-- Reply test, Axis
	[78] = "%1d",		-- Reply test, Button
	
	[75] = "%.4f",		-- Test test, Axis
	[79] = "%1d",		-- Test test, Button
	
	[130] = "%1d",		-- Winding/Adjustment Clock, Axis ??
	[131] = "%1d",		-- Winding/Adjustment Clock, Button ??
	-- ENGINE INTERFACE
	[250] = "%.4f",		-- Throttle {-1.0, 0.4}
	[206] = "%1d",		-- Throttle Stop
	
	[84] = "%1d",		-- De-Ice On/Off
	[80] = "%1d",		-- Low RPM Warning
	[86] = "%1d",		-- Chip Detector {-1, 0, 1}
	[85] = "%1d",		-- Governor Emer/Auto
	[90] = "%1d",		-- Hydraulic Control
	[89] = "%1d",		-- Force Trim
	[203] = "%1d",		-- Governor {-1, 0, 1}
	[278] = "%1d",		-- Fire Test
	-- ADI OPERATOR
	-- Copilot's attutude indicator
	[140] = "%1d",		-- Cage Copilot's Attitude Indicator, Button
	[146] = "%.4f",		-- Attitude Indicator Pitch Trim Knob, Axis
	-- ADI PILOT
	[145] = "%.4f",		-- Attitude Indicator Pitch Trim Knob, Axis
	[144] = "%.4f",		-- Attitude Indicator Roll Trim Knob, Axis
	-- AAU32
	-- Copilot's altimeter
	[172] = "%.4f",		-- Pressure Adjustment, Axis
	-- AAU7
	-- Pilot's altimeter
	[181] = "%.4f",		-- Pressure Adjustment, Axis
	-- VHF ARC-134
	[7] = "%1d",		-- Frequency MHz / Power. Right mouse click to cycle power. Rotate mouse wheel to change frequency value, Button
	[5] = "%.4f",		-- Frequency MHz / Power. Right mouse click to cycle power. Rotate mouse wheel to change frequency value, Axis
	[8] = "%1d",		-- Frequency kHz / Volume. Rotate mouse wheel to change frequency value. Left or Right click to adjust volume, Button
	[9] = "%.4f",		-- Frequency kHz / Volume. Rotate mouse wheel to change frequency value. Left or Right click to adjust volume, Axis
	-- Intercom Control Panel
	[29] = "%.4f",		-- Intercom volume {0.3,1.0}
	[23] = "%1d",		-- VHF AM Radio Receiver
	[24] = "%1d",		-- UHF Radio Receiver
	[25] = "%1d",		-- VHF FM Radio Receiver
	[26] = "%1d",		-- Receiver 4 N/F
	[27] = "%1d",		-- INT Receiver
	[28] = "%1d",		-- Receiver NAV
	[30] = "%.1f",		-- Intercom Mode (PVT - hot line; INT - interphone; 1 - VHF FM transmitter; 2 - UHF transmitter; 3 - VHF AM transmitter; 4 - Not used)
	[194] = "%.1f",		-- Radio/ICS
	-- ARC 51BX UHF Raido
	[16] = "%.1f",		-- Preset Channel Selector
	[18] = "%.4f",		-- 10 MHz Selector, Axis
	[19] = "%.4f",		-- 1 MHz Selector, Axis
	[20] = "%.4f",		-- 50 kHz Selector, Axis
	
	[15] = "%.1f",		-- Frequency Mode Dial
	[17] = "%.1f",		-- Function Dial
	[22] = "%1d",		-- Squelch
	[21] = "%.4f",		-- Volume, Axis
	-- VHF ARC 131
	[31] = "%.1f",		-- Frequency Tens MHz
	[32] = "%.1f",		-- Frequency Ones MHz
	[33] = "%.1f",		-- Frequency Decimals MHz
	[34] = "%.1f",		-- Frequency Hundredths MHz
	[35] = "%.1f",		-- Mode OFF/TR/RETRAN(N/F)/HOME(N/F)
	[36] = "%.1f",		-- quelch Mode
	[37] = "%.4f",		-- Volume, Axis
	-- ARN-82
	[52] = "%1d",		-- Frequency MHz / Power. Right mouse click to cycle power. Rotate mouse wheel to change frequency value, Button
	[51] = "%.4f",		-- Frequency MHz / Power. Right mouse click to cycle power. Rotate mouse wheel to change frequency value, Axis
	[53] = "%1d",		-- Frequency kHz / Volume. Rotate mouse wheel to change frequency value. Left or Right click to adjust volume, Button
	[54] = "%.4f",		-- Frequency kHz / Volume. Rotate mouse wheel to change frequency value. Left or Right click to adjust volume, Axis
	-- Marker beakon
	[57] = "%.4f",		-- Marker beacon On/Off/Volume
	[55] = "%1d",		-- Marker beacon sensing
	-- AN/ARN-83
	[42] = "%.1f",		-- ADF Loop Antenna speed {0.1,0.3}
	[41] = "%1d",		-- BFO (N/F)
	[43] = "%1d",		-- Gain control / Mode. Right mouse click to cycle mode. Rotate mouse wheel to adjust gain, Button
	[44] = "%.4f",		-- Gain control / Mode. Right mouse click to cycle mode. Rotate mouse wheel to adjust gain, Axis
	[38] = "%1d",		-- Tune control / Band selection. Right mouse click to select a band. Rotate mouse wheel to adjust tune, Button
	[39] = "%.4f",		-- Tune control / Band selection. Right mouse click to select a band. Rotate mouse wheel to adjust tune, Axis
	-- Nav lights
	[222] = "%.1f",		-- Navigation lights
	[223] = "%1d",		-- Position Lights, STEADY/OFF/FLASH
	[224] = "%1d",		-- Position Lights, DIM/BRIGHT
	[225] = "%1d",		-- Anti-Collision Lights, ON/OFF
	[202] = "%1d",		-- Landing Light
	[201] = "%1d",		-- Search Light
	[205] = "%1d",		-- Landing Light Ctrl
	-- Light System
	[230] = "%.4f",		-- "Overhead Console Panel Lights Brightness Rheostat, Axis
	[231] = "%.4f",		-- Pedestal Lights Brightness Rheostat, Axis
	[232] = "%.4f",		-- Secondary Instrument Lights Brightness Rheostat, Axis
	[233] = "%.4f",		-- Engine Instrument Lights Brightness Rheostat, Axis
	[234] = "%.4f",		-- Copilot Instrument Lights Brightness Rheostat, Axis
	[235] = "%.4f",		-- Pilot Instrument Lights Brightness Rheostat, Axis
	[226] = "%1d",		-- Dome Light Ctrl
	-- HEATING SYSTEM
	[236] = "%.1f",		-- Bleed Air
	-- GCI(ID-998/ASN)
	[163] = "%.4f",		-- Heading Set Knob, Axis
	[161] = "%.4f",		-- Compass Synchronizing, Axis
	[164] = "%1d",		-- ADF/VOR control
	[241] = "%1d",		-- DG/Slave gyro mode
	-- COURSE IND
	[155] = "%.4f",		-- Course select knob, Axis
	-- weapon system
	[252] = "%1d",		-- Armed/Safe/Off
	[253] = "%1d",		-- Left/Right/All
	[256] = "%1d",		-- 7.62/2.75/40
	[257] = "%.1f",		-- Rocket Pair
	[258] = "%1d",		-- Rocket Reset
	[259] = "%1d",		-- Jettison Cover
	[260] = "%1d",		-- Jettison
	-- sighting station
	[281] = "%.4f",		-- Sighting Station Intensity
	[408] = "%1d",		-- Sighting Station Lamp Switch BACKUP/OFF/MAIN
	
	[0] = "%1d",		-- Pilot Sight Armed/Safe ??
	[439] = "%1d",		-- Pilot Sight On/Off
	[440] = "%.4f",		-- Pilot Sighting Station Intensity, Axis
	[441] = "%.4f",		-- Sight Elevation, Axis
	-- Windshield Wipers
	[227] = "%1d",		-- Pilot/Both/Operator
	[229] = "%.1f",		-- Wipers Speed
	-- Stick
	[189] = "%1d",		-- Force Trim ON/OFF (Pilot)
	[193] = "%1d",		-- Force Trim ON/OFF (CoPilot)
	-- XM 130 Chaff Flare
	[450] = "%1d",		-- Ripple Fire Cover
	[451] = "%1d",		-- Ripple Fire
	[456] = "%1d",		-- SAFE/ARMED Switcher
	[459] = "%1d",		-- MAN/PGRM Mode
	[464] = "%1d",		-- Flare Dispense
	[457] = "%1d",		-- Armed lamp Test
	[453] = "%1d",		-- Flare counter Reset. Rotate mouse wheel to set Number, Button
	[452] = "%.4f",		-- Flare counter Reset. Rotate mouse wheel to set Number, Axis
	[455] = "%1d",		-- Chaff counter Reset. Rotate mouse wheel to set Number, Button
	[454] = "%.4f",		-- Chaff counter Reset. Rotate mouse wheel to set Number, Axis
	-- Radar Altimeter
	[449] = "%1d",		-- Radar Altimeter Power
	[445] = "%.4f",		-- Turn On. Low Set.
	[446] = "%1d",		-- Test / Hight Set. Left mouse click to Test. Rotate mouse wheel to set Hight, Button
	[465] = "%1d",		-- Test / Hight Set. Left mouse click to Test. Rotate mouse wheel to set Hight, Axis
	-- Doors
	[419] = "%1d",		-- Open Left Doors
	[421] = "%1d"		-- Open Right Doors
}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

function ProcessGlassCockpitDCSConfigHighImportance(mainPanelDevice)
	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch Version 1.6
		
		-- Pilot Gauges
		
		-- Airspeed indicator
		-- [117] = "%0.4f",		-- AIRSPEED_Nose
		-- {0.0, 20.0, 30.0, 40.0, 50.0, 60.0, 80.0, 120.0, 150.0}
		-- {0.0, 0.075, 0.19, 0.32, 0.395, 0.44, 0.55, 0.825, 1.0}
		
		-- Attitude Indicators
		-- ADI - pilot
		-- [142] = "%.4f",		-- Attitude_Roll
		-- [143] = "%.4f",		-- Attitude_Pitch
		-- [148] = "%.1f",		-- Attitude_Off_flag
		SendData("2000", string.format("%0.4f;%0.4f;%0.1f", 
						mainPanelDevice:get_argument_value(142), 
						mainPanelDevice:get_argument_value(143), 
						mainPanelDevice:get_argument_value(148)))
		
		-- Dual tachometer
		-- [122] = "%.4f",		-- EngineTach
		-- [123] = "%.4f",		-- RotorTach
		SendData("2001", string.format("%0.4f;%0.4f", 
						mainPanelDevice:get_argument_value(122),  
						mainPanelDevice:get_argument_value(123)))
		
		-- Altimeter Indicator (AAU-31/A)
		-- Altimeter Indicator AAU-7/A (pilot)
		-- [182] = "%.4f",		-- Press_AAU_7A
		-- [178] = "%.4f",		-- Alt_10000_AAU_7A
		-- [179] = "%.4f",		-- Alt_1000_AAU_7A
		-- [180] = "%.4f",		-- Alt_100_AAU_7A
		SendData("2002", string.format("%0.4f;%0.4f;%0.4f;%0.4f", 
						mainPanelDevice:get_argument_value(182),
						mainPanelDevice:get_argument_value(178), 
						mainPanelDevice:get_argument_value(179), 
						mainPanelDevice:get_argument_value(180)))
		
		-- Radio Compass Indicator
		-- GMC
		-- [159] = "%.4f",		-- GMC_CoursePointer1
		-- [160] = "%.4f",		-- GMC_CoursePointer2
		-- [165] = "%.4f",		-- GMC_Heading
		-- [162] = "%.4f",		-- GMC_HeadingMarker
		-- [166] = "%.4f",		-- GMC_Annunciator
		-- [167] = "%.2f",		-- GMC_PowerFail 
		SendData("2003", string.format("%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.2f", 
						mainPanelDevice:get_argument_value(159), 
						mainPanelDevice:get_argument_value(160), 
						mainPanelDevice:get_argument_value(165), 
						mainPanelDevice:get_argument_value(162), 
						mainPanelDevice:get_argument_value(166), 
						mainPanelDevice:get_argument_value(167)))
		
		-- Vertical velocity indicator
		-- [134] = "%.2f",		-- VertVelocPilot
		-- {-4000.0, -3000.0, -1500.0, -1000.0, 1000.0, 1500.0, 3000.0, 4000.0}
		-- {-1.0, -0.81,  -0.54, -0.36, 0.36, 0.54, 0.81, 1.0}

		-- Exhaust gas temperature indicator
		-- [121] = "%.4f",		-- ExhaustTem
		
		-- Gas Producer Tachometer Indicator
		-- [119] = "%.4f",		-- GasProducerTach
		-- [120] = "%.4f",		-- GasProducerTach_U
		SendData("2004", string.format("%0.4f;%0.4f", 
						mainPanelDevice:get_argument_value(119),  
						mainPanelDevice:get_argument_value(120)))	
		
		-- Turn and slip indicator
		-- [132] = "%.4f",		-- TurnPtr
		-- [133] = "%.4f",		-- SideSlip
		SendData("2005", string.format("%0.4f;%0.4f", 
						mainPanelDevice:get_argument_value(132),  
						mainPanelDevice:get_argument_value(133)))
		
		-- Torquemeter Indicator
		-- [124] = "%.4f",		-- TorquePress
		-- {-3.0, 0.0, 100.0}
		-- {0.0, 0.029, 1.0}
		
		-- Mechanic clock
		-- [127] = "%.4f",		-- CLOCK_hours
		-- [128] = "%.4f",		-- CLOCK_minutes
		-- [129] = "%.4f",		-- CLOCK_seconds
		SendData("2006", string.format("%0.4f;%0.4f;%0.1f", 
						mainPanelDevice:get_argument_value(127), 
						mainPanelDevice:get_argument_value(128), 
						mainPanelDevice:get_argument_value(129)))
		
		-- Course deviation indicator
		-- Course Indicator ID-1347
		-- [151] = "%.4f",		-- VerticalBar
		-- {-1.0, 1.0}
		-- {-0.7, 0.7}
		-- [152] = "%.4f",		-- HorisontalBar
		-- {-1.0, 1.0}
		-- {-0.7, 0.7}
		-- [153] = "%.4f",		-- ToMarker
		-- [154] = "%.4f",		-- FromMarker
		-- [156] = "%.4f",		-- RotCourseCard
		-- [157] = "%.1f",		-- VerticalOFF
		-- [158] = "%.1f",		-- HorisontalOFF
		SendData("2007", string.format("%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f", 
						mainPanelDevice:get_argument_value(151), 
						mainPanelDevice:get_argument_value(152), 
						mainPanelDevice:get_argument_value(153), 
						mainPanelDevice:get_argument_value(154), 
						mainPanelDevice:get_argument_value(156), 
						mainPanelDevice:get_argument_value(157), 
						mainPanelDevice:get_argument_value(158)))
		
		-- Standby magnetic compass
		-- no ID
		-- SendData("2008", string.format("%0.4f;%0.4f;%0.1f", 
		--				mainPanelDevice:get_argument_value(), 
		--				mainPanelDevice:get_argument_value(), 
		--				mainPanelDevice:get_argument_value()))
		
		-- Radar Altimeter - AN/APN-209
		-- [443] = "%.4f",		-- RALT_Needle
		-- [467] = "%.2f",		-- RALT_Off_Flag
		-- [447] = "%.1f",		-- RALT_LO_Lamp
		-- [465] = "%.1f",		-- RALT_HI_Lamp
		-- [444] = "%.4f",		-- RALT_LO_Index
		-- {-0.02, -0.01, -0.0001,0.0, 0.744}
		-- {0.97,  0.99, 1.0, 0.0, 0.744}
		-- [466] = "%.4f",		-- RALT_HI_Index
		-- {0.0, 0.744}
		-- {0.0, 0.744}
		-- [468] = "%0.1f",		-- RALT_Digit_1
		-- {0.0, 1.0} 0.0=0, 0.1=1, 0.2=2,..., 0.9=9, 1.0=' '
		-- [469] = "%0.1f",		-- RALT_Digit_2
		-- {0.0, 1.0} 0.0=0, 0.1=1, 0.2=2,..., 0.9=9, 1.0=' '
		-- [470] = "%0.1f",		-- RALT_Digit_3
		-- {0.0, 1.0} 0.0=0, 0.1=1, 0.2=2,..., 0.9=9, 1.0=' '
		-- [471] = "%0.1f",		-- RALT_Digit_4
		-- {0.0, 1.0} 0.0=0, 0.1=1, 0.2=2,..., 0.9=9, 1.0=' '
		SendData("2009", string.format("%0.4f;%0.2f;%0.1f;%0.1f;%.4f;%.4f;%0.1f;%0.1f;%0.1f;%0.1f", 
						mainPanelDevice:get_argument_value(443), 
						mainPanelDevice:get_argument_value(467), 
						mainPanelDevice:get_argument_value(447), 
						mainPanelDevice:get_argument_value(465), 
						mainPanelDevice:get_argument_value(444), 
						mainPanelDevice:get_argument_value(466), 
						mainPanelDevice:get_argument_value(468), 
						mainPanelDevice:get_argument_value(469), 
						mainPanelDevice:get_argument_value(470), 
						mainPanelDevice:get_argument_value(471)))
		
		-- CoPilot Gauges
		
		-- Airspeed indicator
		-- [117] = "%0.4f",		-- AIRSPEED_Nose
		-- {0.0, 20.0, 30.0, 40.0, 50.0, 60.0, 80.0, 120.0, 150.0}
		-- {0.0, 0.075, 0.19, 0.32, 0.395, 0.44, 0.55, 0.825, 1.0}
		
		-- Attitude Indicators
		-- ADI - operator
		-- [135] = "%.4f",		-- Attitude_Roll_left
		-- [136] = "%.4f",		-- Attitude_Pitch_left
		-- [141] = "%.1f",		-- Attitude_Off_flag_left
		-- [138] = "%.4f",		-- Attitude_PitchShift
		SendData("2010", string.format("%0.4f;%0.4f;%0.4f;%0.4f", 
						mainPanelDevice:get_argument_value(135), 
						mainPanelDevice:get_argument_value(136), 
						mainPanelDevice:get_argument_value(141),
						mainPanelDevice:get_argument_value(138)))
		
		-- Radio compass indicator
		-- GMC
		-- [266] = "%.4f",		-- GMC_CoursePointer1
		-- [267] = "%.4f",		-- GMC_CoursePointer2
		-- [269] = "%.4f",		-- GMC_Heading
		SendData("2011", string.format("%0.4f;%0.4f;%0.4f", 
						mainPanelDevice:get_argument_value(266), 
						mainPanelDevice:get_argument_value(267), 
						mainPanelDevice:get_argument_value(269)))
		
		-- Altimeter indicator (AAU-32/A)
		-- [168] = "%.4f",		-- Pointer
		-- [169] = "%.4f",		-- Alt1AAU_10000_footCount
		-- [170] = "%.4f",		-- Alt1AAU_1000_footCount
		-- [171] = "%.4f",		-- Alt1AAU_100_footCount
		-- [174] = "%.2f",		-- AAU_32_Drum_Counter
		-- [175] = "%.2f",		-- AAU_32_Drum_Counter
		-- [176] = "%.2f",		-- AAU_32_Drum_Counter
		-- [177] = "%.1f",		-- CodeOff_flag
		SendData("2012", string.format("%0.4f;%0.4f;%0.4f;%0.4f;%0.2f;%0.2f;%0.2f;%0.1f", 
						mainPanelDevice:get_argument_value(168), 
						mainPanelDevice:get_argument_value(169), 
						mainPanelDevice:get_argument_value(170), 
						mainPanelDevice:get_argument_value(171), 
						mainPanelDevice:get_argument_value(174), 
						mainPanelDevice:get_argument_value(175), 
						mainPanelDevice:get_argument_value(176), 
						mainPanelDevice:get_argument_value(177)))

		-- Whisky Compass
		-- [269] = "%.4f",		-- RMI_Heading
		-- [142] = "%.4f",		-- Attitude_Roll
		-- [143] = "%.4f",		-- Attitude_Pitch
		SendData("2013", string.format("%0.4f;%0.4f;%0.4f", 
						mainPanelDevice:get_argument_value(269), 
						mainPanelDevice:get_argument_value(142), 
						mainPanelDevice:get_argument_value(143)))

		-- Vertical velocity indicator
		-- [251] = "%.2f",		-- VertVelocCopilot
		-- {-4000.0, -3000.0, -1500.0, -1000.0, 1000.0, 1500.0, 3000.0, 4000.0}
		-- {-1.0, -0.81,  -0.54, -0.36, 0.36, 0.54, 0.81, 1.0}
		
		-- Fuel Pressure Indicator
		-- [126] = "%.4f",		-- FuelPress
		-- {-2.0, 0.0, 50.0}
		-- {0.0, 0.015, 1.0}
		
		-- Transmission oil pressure
		-- [115] = "%.4f",		-- TransmOilPress
		-- {-3.0, 0.0, 100.0}
		-- {0.0, 0.029, 1.0}
		
		-- DC Loadmeters (Main)
		-- [436] = "%.4f",		-- LoadmeterMainGen
		-- {-1.5, 0.0, 12.5}
		-- {0.0, 0.156, 1.0}
		
		-- DC Loadmeters (Standby)
		-- [125] = "%.4f",		-- LoadmeterSTBYGen
		-- {-1.5, 0.0, 12.5}
		-- {0.0, 0.09, 1.0}
		
		-- Engine oil pressure indicator
		-- [113] = "%.4f",		-- EngOilPress
		-- {-3.0, 0.0, 100.0}
		-- {0.0, 0.029, 1.0}
		
		-- AC voltmeter
		-- [150] = "%.4f",		-- VoltageAC
		
		-- DC voltmeter
		-- [149] = "%.4f",		-- VoltageDC
		
		-- Transmission oil temperature indicator
		-- [116] = "%.4f",		-- TransmOilTemp
		-- {-70.0, -50.0, 0.0, 100.0, 150.0}
		-- {0.0, 0.13, 0.38, 0.71, 1.0}
		
		-- Engine oil temperature
		-- [114] = "%.4f",		-- EngOilTemp
		-- {-70.0, -50.0, 0.0, 100.0, 150.0}
		-- {0.0, 0.13, 0.38, 0.71, 1.0}
		
		-- Fuel Quantity Indicator
		-- [239] = "%.4f",		-- FuelQuantity

	end
end

function ProcessHARDWAREConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to hardware
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF_RADIO = GetDevice(54)
	SendDataHW("ExportID", "Format")
	SendDataHW("ExportID", "Format", HardwareConfigID)
	SendDataHW("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	SendDataHW("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000), 2) -- export to Hardware '2' Config
	]]
	
	-- no dimming lights
	-- Light
	SendDataHW("279", mainPanelDevice:get_argument_value(279) > 0.3 and 1 or 0)		-- light_ConsoleLight
	SendDataHW("410", mainPanelDevice:get_argument_value(410) > 0.3 and 1 or 0)		-- light_DomeLight
	SendDataHW("411", mainPanelDevice:get_argument_value(411) > 0.3 and 1 or 0)		-- light_DomeLightGreen
	-- Radar Altimeter
	SendDataHW("447", mainPanelDevice:get_argument_value(447) > 0.3 and 1 or 0)		-- RALT_LO_Lamp
	SendDataHW("465", mainPanelDevice:get_argument_value(465) > 0.3 and 1 or 0)		-- RALT_HI_Lamp
	-- Main Panel Lights
	SendDataHW("277", mainPanelDevice:get_argument_value(277) > 0.3 and 1 or 0)		-- lamp_MASTER
	SendDataHW("276", mainPanelDevice:get_argument_value(276) > 0.3 and 1 or 0)		-- lamp_LOW_RPM
	SendDataHW("275", mainPanelDevice:get_argument_value(275) > 0.3 and 1 or 0)		-- lamp_FIRE
	-- Caution Panel Lights
	SendDataHW("91", mainPanelDevice:get_argument_value(91) > 0.3 and 1 or 0)		-- lamp_ENGINE_OIL_PRESS
	SendDataHW("92", mainPanelDevice:get_argument_value(92) > 0.3 and 1 or 0)		-- lamp_ENGINE_ICING
	SendDataHW("93", mainPanelDevice:get_argument_value(93) > 0.3 and 1 or 0)		-- lamp_ENGINE_ICE_JET
	SendDataHW("94", mainPanelDevice:get_argument_value(94) > 0.3 and 1 or 0)		-- lamp_ENGINE_CHIP_DET
	SendDataHW("95", mainPanelDevice:get_argument_value(95) > 0.3 and 1 or 0)		-- lamp_LEFT_FUEL_BOOST
	SendDataHW("96", mainPanelDevice:get_argument_value(96) > 0.3 and 1 or 0)		-- lamp_RIGHT_FUEL_BOOST
	SendDataHW("97", mainPanelDevice:get_argument_value(97) > 0.3 and 1 or 0)		-- lamp_ENG_FUEL_PUMP
	SendDataHW("98", mainPanelDevice:get_argument_value(98) > 0.3 and 1 or 0)		-- lamp_20_MINUTE
	SendDataHW("99", mainPanelDevice:get_argument_value(99) > 0.3 and 1 or 0)		-- lamp_FUEL_FILTER
	SendDataHW("100", mainPanelDevice:get_argument_value(100) > 0.3 and 1 or 0)		-- lamp_GOV_EMERG
	SendDataHW("101", mainPanelDevice:get_argument_value(101) > 0.3 and 1 or 0)		-- lamp_AUX_FUEL_LOW
	SendDataHW("102", mainPanelDevice:get_argument_value(102) > 0.3 and 1 or 0)		-- lamp_XMSN_OIL_PRESS
	SendDataHW("103", mainPanelDevice:get_argument_value(103) > 0.3 and 1 or 0)		-- lamp_XMSN_OIL_HOT
	SendDataHW("104", mainPanelDevice:get_argument_value(104) > 0.3 and 1 or 0)		-- lamp_HYD_PRESSURE
	SendDataHW("105", mainPanelDevice:get_argument_value(105) > 0.3 and 1 or 0)		-- lamp_ENGINE_INLET_AIR
	SendDataHW("106", mainPanelDevice:get_argument_value(106) > 0.3 and 1 or 0)		-- lamp_INST_INVERTER
	SendDataHW("107", mainPanelDevice:get_argument_value(107) > 0.3 and 1 or 0)		-- lamp_DC_GENERATOR
	SendDataHW("108", mainPanelDevice:get_argument_value(108) > 0.3 and 1 or 0)		-- lamp_EXTERNAL_POWER
	SendDataHW("109", mainPanelDevice:get_argument_value(109) > 0.3 and 1 or 0)		-- lamp_CHIP_DETECTOR
	SendDataHW("110", mainPanelDevice:get_argument_value(110) > 0.3 and 1 or 0)		-- lamp_IFF
	-- M21
	SendDataHW("254", mainPanelDevice:get_argument_value(254) > 0.3 and 1 or 0)		-- lamp_M21_ARMED
	SendDataHW("255", mainPanelDevice:get_argument_value(255) > 0.3 and 1 or 0)		-- lamp_M21_SAFE
	-- IFF
	SendDataHW("76", mainPanelDevice:get_argument_value(76) > 0.3 and 1 or 0)		-- lamp_IFF_REPLY
	SendDataHW("77", mainPanelDevice:get_argument_value(77) > 0.3 and 1 or 0)		-- lamp_IFF_TEST
	-- Beacon
	SendDataHW("56", mainPanelDevice:get_argument_value(56) > 0.3 and 1 or 0)		-- lamp_Marker_Beacon
	-- XM130 Chaff Flare
	SendDataHW("458", mainPanelDevice:get_argument_value(458) > 0.3 and 1 or 0)		-- lamp_XM130_ARMED
	
	--[[
	-- dimming lights
	-- Light
	SendDataHW("279", string.format("%.1f", mainPanelDevice:get_argument_value(279)))		-- light_ConsoleLight
	SendDataHW("410", string.format("%.1f", mainPanelDevice:get_argument_value(410)))		-- light_DomeLight
	SendDataHW("411", string.format("%.1f", mainPanelDevice:get_argument_value(411)))		-- light_DomeLightGreen
	-- Radar Altimeter
	SendDataHW("447", string.format("%.1f", mainPanelDevice:get_argument_value(447)))		-- RALT_LO_Lamp
	SendDataHW("465", string.format("%.1f", mainPanelDevice:get_argument_value(465)))		-- RALT_HI_Lamp
	-- Main Panel Lights
	SendDataHW("277", string.format("%.1f", mainPanelDevice:get_argument_value(277)))		-- lamp_MASTER
	SendDataHW("276", string.format("%.1f", mainPanelDevice:get_argument_value(276)))		-- lamp_LOW_RPM
	SendDataHW("275", string.format("%.1f", mainPanelDevice:get_argument_value(275)))		-- lamp_FIRE
	-- Caution Panel Lights
	SendDataHW("91", string.format("%.1f", mainPanelDevice:get_argument_value(91)))		-- lamp_ENGINE_OIL_PRESS
	SendDataHW("92", string.format("%.1f", mainPanelDevice:get_argument_value(92)))		-- lamp_ENGINE_ICING
	SendDataHW("93", string.format("%.1f", mainPanelDevice:get_argument_value(93)))		-- lamp_ENGINE_ICE_JET
	SendDataHW("94", string.format("%.1f", mainPanelDevice:get_argument_value(94)))		-- lamp_ENGINE_CHIP_DET
	SendDataHW("95", string.format("%.1f", mainPanelDevice:get_argument_value(95)))		-- lamp_LEFT_FUEL_BOOST
	SendDataHW("96", string.format("%.1f", mainPanelDevice:get_argument_value(96)))		-- lamp_RIGHT_FUEL_BOOST
	SendDataHW("97", string.format("%.1f", mainPanelDevice:get_argument_value(97)))		-- lamp_ENG_FUEL_PUMP
	SendDataHW("98", string.format("%.1f", mainPanelDevice:get_argument_value(98)))		-- lamp_20_MINUTE
	SendDataHW("99", string.format("%.1f", mainPanelDevice:get_argument_value(99)))		-- lamp_FUEL_FILTER
	SendDataHW("100", string.format("%.1f", mainPanelDevice:get_argument_value(100)))		-- lamp_GOV_EMERG
	SendDataHW("101", string.format("%.1f", mainPanelDevice:get_argument_value(101)))		-- lamp_AUX_FUEL_LOW
	SendDataHW("102", string.format("%.1f", mainPanelDevice:get_argument_value(102)))		-- lamp_XMSN_OIL_PRESS
	SendDataHW("103", string.format("%.1f", mainPanelDevice:get_argument_value(103)))		-- lamp_XMSN_OIL_HOT
	SendDataHW("104", string.format("%.1f", mainPanelDevice:get_argument_value(104)))		-- lamp_HYD_PRESSURE
	SendDataHW("105", string.format("%.1f", mainPanelDevice:get_argument_value(105)))		-- lamp_ENGINE_INLET_AIR
	SendDataHW("106", string.format("%.1f", mainPanelDevice:get_argument_value(106)))		-- lamp_INST_INVERTER
	SendDataHW("107", string.format("%.1f", mainPanelDevice:get_argument_value(107)))		-- lamp_DC_GENERATOR
	SendDataHW("108", string.format("%.1f", mainPanelDevice:get_argument_value(108)))		-- lamp_EXTERNAL_POWER
	SendDataHW("109", string.format("%.1f", mainPanelDevice:get_argument_value(109)))		-- lamp_CHIP_DETECTOR
	SendDataHW("110", string.format("%.1f", mainPanelDevice:get_argument_value(110)))		-- lamp_IFF
	-- M21
	SendDataHW("254", string.format("%.1f", mainPanelDevice:get_argument_value(254)))		-- lamp_M21_ARMED
	SendDataHW("255", string.format("%.1f", mainPanelDevice:get_argument_value(255)))		-- lamp_M21_SAFE
	--
	SendDataHW("76", string.format("%.1f", mainPanelDevice:get_argument_value(76)))		-- lamp_IFF_REPLY
	SendDataHW("77", string.format("%.1f", mainPanelDevice:get_argument_value(77)))		-- lamp_IFF_TEST
	-- 
	SendDataHW("56", string.format("%.1f", mainPanelDevice:get_argument_value(56)))		-- Marker_Beacon_Lamp
	-- XM130 Chaff Flare
	SendDataHW("458", string.format("%.1f", mainPanelDevice:get_argument_value(458)))		-- XM130_ARMED_LAMP
	]]
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

function ProcessGlassCockpitDCSConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to GlassCockpit
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	SendData("ExportID", "Format")
	SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) <- special function for get frequency data
	]]
end

function ProcessHARDWAREConfigLowImportance(mainPanelDevice)
--[[
	export in low tick interval to hardware
	Example from A-10C
    Landing Gear
	mainPanelDevice, basis panel
	SendDataHW("2004",  mainPanelDevice:get_argument_value(659))			-- GEAR_N_SAFE
	SendDataHW("2005",  mainPanelDevice:get_argument_value(660))			-- GEAR_L_SAFE
	SendDataHW("2006",  mainPanelDevice:get_argument_value(661))			-- GEAR_R_SAFE
	]]

	-- Radio comunication
	-- UHF_ARC_51
	local lUHF_ARC_51 = GetDevice(22)
	SendDataHW("2000", string.format("%7.3f", lUHF_ARC_51:get_frequency()/1000000))

	local lUHF_ARC_51_PRESET = {[0.00]="1",[0.05]="2",[0.10]="3",[0.15]="4",[0.20]="5",[0.25]="6",[0.30]="7",[0.35]="8",[0.40]="9",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20"}
	SendDataHW("2001", lUHF_ARC_51_PRESET[math.round(mainPanelDevice:get_argument_value(16), 2)])
	
	-- VHF_ARC_131
	local lVHF_ARC_131 = GetDevice(23)
	SendDataHW("2002", string.format("%7.3f", lVHF_ARC_131:get_frequency()/1000000))
	
	-- VHF_ARC_134
	local lVHF_ARC_134 = GetDevice(20)
	SendDataHW("2003", string.format("%7.3f", lVHF_ARC_134:get_frequency()/1000000))
	
	-- ARN_82 VHF Navigation Set  NOT FUNCTIONAL
	--local lARN_82 = GetDevice(26)
	--WriteToLog('lARN_82: '..dump(lARN_82))
	--WriteToLog('lARN_82 (metatable): '..dump(getmetatable(lARN_82)))
	--SendDataHW("2004", string.format("%7.3f", lVHF_ARC_134:get_frequency()/1000000))

	-- XM130 FLARE CHAFF
	SendDataHW("2005", string.format("%1d", math.round(mainPanelDevice:get_argument_value(460) * 10, 0)..math.round(mainPanelDevice:get_argument_value(461) * 10, 0)))		-- FLARE_Digit_1 -- FLARE_Digit_2
	SendDataHW("2006", string.format("%1d", math.round(mainPanelDevice:get_argument_value(462) * 10, 0)..math.round(mainPanelDevice:get_argument_value(463) * 10, 0)))		-- CHAFF_Digit_1 -- CHAFF_Digit_2

	-- ADF_ARN83
	local lpos1, pos2, lpos3, pos4
	local lADF_ARN83 = ""
	local lCockpitParams = list_cockpit_params()
	if lCockpitParams ~= nil then
		lpos1, pos2 = lCockpitParams:find("ADF_FREQ:", 1)
		if pos2 ~= nil then
			lpos3, pos4 = lCockpitParams:find("%c", pos2)
			if lpos3 ~= nil then
				lADF_ARN83 = lCockpitParams:sub(pos2 + 1, lpos3 - 2)
			else
				lADF_ARN83 = lCockpitParams:sub(pos2 + 1)
			end
			lADF_ARN83 = math.round(tonumber(lADF_ARN83) / 1000, 2)
		end
	end
	
	SendDataHW("2007", string.format("%s", lADF_ARN83))

	-- generic Radio display and frequency rotarys
	-------------------------------------------------
	genericRadio(nil, nil, gES_genericRadioHardwareID)

	--[[
	-- ENGINE_INTERFACE
	local lENGINE_INTERFACE = GetDevice(3)
	WriteToLog('lENGINE_INTERFACE:get_eng_rpm '..dump(lENGINE_INTERFACE:get_eng_rpm()))
	WriteToLog('lENGINE_INTERFACE:get_fire_lamp '..dump(lENGINE_INTERFACE:get_fire_lamp()))
	WriteToLog('lENGINE_INTERFACE:get_gas_prod_tach '..dump(lENGINE_INTERFACE:get_gas_prod_tach()))
	WriteToLog('lENGINE_INTERFACE:get_fire_test_lamp '..dump(lENGINE_INTERFACE:get_fire_test_lamp()))
	WriteToLog('lENGINE_INTERFACE:get_trans_oil_temp '..dump(lENGINE_INTERFACE:get_trans_oil_temp()))
	WriteToLog('lENGINE_INTERFACE:get_eng_torq '..dump(lENGINE_INTERFACE:get_eng_torq()))
	WriteToLog('lENGINE_INTERFACE:get_trans_oil_press '..dump(lENGINE_INTERFACE:get_trans_oil_press()))
	WriteToLog('lENGINE_INTERFACE:get_exhaust_temp '..dump(lENGINE_INTERFACE:get_exhaust_temp()))
	WriteToLog('lENGINE_INTERFACE:get_low_rpm_lamp '..dump(lENGINE_INTERFACE:get_low_rpm_lamp()))
	WriteToLog('lENGINE_INTERFACE:get_eng_oil_temp '..dump(lENGINE_INTERFACE:get_eng_oil_temp()))
	WriteToLog('lENGINE_INTERFACE:get_eng_oil_press '..dump(lENGINE_INTERFACE:get_eng_oil_press()))
	
	-- ADI_PILOT
	local lADI_PILOT = GetDevice(6)
	WriteToLog('lADI_PILOT:get_sideslip '..dump(lADI_PILOT:get_sideslip()))
	WriteToLog('lADI_PILOT:get_bank '..dump(lADI_PILOT:get_bank()))
	WriteToLog('lADI_PILOT:get_pitch '..dump(lADI_PILOT:get_pitch()))
	
	-- RADAR_ALTIMETER
	local lRADAR_ALTIMETER = GetDevice(13)
	WriteToLog('lRADAR_ALTIMETER:get_distance_limit '..dump(lRADAR_ALTIMETER:get_distance_limit()))
	WriteToLog('lRADAR_ALTIMETER:get_aperture_size '..dump(lRADAR_ALTIMETER:get_aperture_size()))
	WriteToLog('lRADAR_ALTIMETER:get_mode '..dump(lRADAR_ALTIMETER:get_mode()))
	WriteToLog('lRADAR_ALTIMETER:get_altitude '..dump(lRADAR_ALTIMETER:get_altitude()))
	]]
	--[[
	-- VHF_ARC_134
	local lVHF_ARC_134 = GetDevice(20)
	WriteToLog('lVHF_ARC_134:is_on '..dump(lVHF_ARC_134:is_on()))
	WriteToLog('lVHF_ARC_134:get_frequency '..dump(lVHF_ARC_134:get_frequency()))
	--WriteToLog('lVHF_ARC_134:set_frequency '..dump(lVHF_ARC_134:set_frequency())) -- test parameters
	--WriteToLog('lVHF_ARC_134:set_modulation '..dump(lVHF_ARC_134:set_modulation())) -- test parameters
	--WriteToLog('lVHF_ARC_134:set_channel '..dump(lVHF_ARC_134:set_channel())) -- test parameters
	
	-- INTERCOM
	local lINTERCOM = GetDevice(21)
	WriteToLog('lINTERCOM:is_communicator_available '..dump(lINTERCOM:is_communicator_available()))
	WriteToLog('lINTERCOM:get_noise_level '..dump(lINTERCOM:get_noise_level()))
	WriteToLog('lINTERCOM:get_signal_level '..dump(lINTERCOM:get_signal_level()))
	--WriteToLog('lINTERCOM:set_communicator '..dump(lINTERCOM:set_communicator())) -- test parameters
	--WriteToLog('lINTERCOM:set_voip_mode '..dump(lINTERCOM:set_voip_mode())) -- test parameters
	
	-- UHF_ARC_51
	local lUHF_ARC_51 = GetDevice(22)
	WriteToLog('lUHF_ARC_51:is_on '..dump(lUHF_ARC_51:is_on()))
	WriteToLog('lUHF_ARC_51:get_frequency '..dump(lUHF_ARC_51:get_frequency()))
	--WriteToLog('lUHF_ARC_51:set_frequency '..dump(lUHF_ARC_51:set_frequency())) -- test parameters
	--WriteToLog('lUHF_ARC_51:set_modulation '..dump(lUHF_ARC_51:set_modulation())) -- test parameters
	--WriteToLog('lUHF_ARC_51:set_channel '..dump(lUHF_ARC_51:set_channel())) -- test parameters

	-- VHF_ARC_131
	local lVHF_ARC_131 = GetDevice(23)
	WriteToLog('lVHF_ARC_131:is_on '..dump(lVHF_ARC_131:is_on()))
	WriteToLog('lVHF_ARC_131:get_frequency '..dump(lVHF_ARC_131:get_frequency()))
	--WriteToLog('lVHF_ARC_131:set_frequency '..dump(lVHF_ARC_131:set_frequency())) -- test parameters
	--WriteToLog('lVHF_ARC_131:set_modulation '..dump(lVHF_ARC_131:set_modulation())) -- test parameters
	--WriteToLog('lVHF_ARC_131:set_channel '..dump(lVHF_ARC_131:set_channel())) -- test parameters
	
	WriteToLog('Frequency Mode Dial '..dump(mainPanelDevice:get_argument_value(15)))
	WriteToLog('Function Dial '..dump(mainPanelDevice:get_argument_value(17)))
	]]
	--[[
	Device test, Device 2 to 32
	is value "userdata", is only DLL intern functions
	local ltmp1 = 0
	for ltmp2 = 1, 49, 1 do
		ltmp1 = GetDevice(ltmp2)
		WriteToLog(ltmp2..': '..dump(ltmp1))
		WriteToLog(ltmp2..' (metatable): '..dump(getmetatable(ltmp1)))
	end
	]]
	--[[
	WriteToLog('list_cockpit_params(): '..dump(list_cockpit_params()))
	
	local ltmp1 = 0
	for ltmp2 = 1, 8, 1 do
		ltmp1 = list_indication(ltmp2)
		WriteToLog(ltmp2..': '..dump(ltmp1))
		--WriteToLog(ltmp2..' (metatable): '..dump(getmetatable(ltmp1)))
	end
	]]
end

-----------------------------
--     Custom functions    --
-----------------------------

function genericRadio(key, value, hardware)
	local lHardware = hardware or 1
	-- Werte werden per Encoder im Bereich von 0.0 bis 2.0 in 0.1 Schritten uebergeben
	-- im jeweiligen Abschnitt muessen die Eingangsdaten auf den Zulaessigen Bereich eingeschraengt werden
	local lRotaryFrequency_1, lRotaryFrequency_2, lVolume, lPreset, lLoad, lSquelch, lManualPreset, lPower, lDevice, lClickAction, lSetFrequency = nil
	local lMainPanelDevice = GetDevice(0)
	local lMaxRadios = 3
	
	if gES_genericRadio == nil then
		gES_genericRadio = 0
	end
	if gES_genericRadioFrequency1 == nil then
		gES_genericRadioFrequency1 = 0.0
	end
	if gES_genericRadioFrequency2 == nil then
		gES_genericRadioFrequency2 = 0.0
	end
	if gES_genericRadioPresetChannel == nil then
		gES_genericRadioPresetChannel = 0.0
	end
	if gES_genericRadioPower == nil then
		gES_genericRadioPower = {}
	end
	if gES_genericRadioPresetManual == nil then
		gES_genericRadioPresetManual = {}
	end
	if gES_genericRadioSquelch == nil then
		gES_genericRadioSquelch = {}
	end

	if key == "3001" then
		gES_genericRadio = tonumber(value)
	end
	if key == "3002" then
		lRotaryFrequency_1 = tonumber(value)
	end
	if key == "3003" then
		lRotaryFrequency_2 = tonumber(value)
	end
	if key == "3004" then
		lVolume = tonumber(value)
	end
	if key == "3005" then
		lPreset = tonumber(value)
	end
	if key == "3006" then
		lLoad = tonumber(value)
	end
	if key == "3007" then
		lSquelch = tonumber(value)
	end
	if key == "3008" then
		lManualPreset = tonumber(value)
	end
	if key == "3009" then
		lPower = tonumber(value)
	end
	
	if gES_genericRadio > lMaxRadios then
		WriteToLog("Radio Nr. "..gES_genericRadio.." not defined.")
		return
	end
	
	if gES_genericRadio == 1 then
	--  AN/ARC-131 VHF FM Radio
		local lDeviceID = 23
		local lVHF_FM_RADIO = GetDevice(lDeviceID)
		
		-- check status of the radio
		if gES_genericRadioPower[gES_genericRadio] == nil then
			if lVHF_FM_RADIO:is_on() then
				gES_genericRadioPower[gES_genericRadio] = 1.0
			else
				gES_genericRadioPower[gES_genericRadio] = 0.0
			end
		end
		if gES_genericRadioPresetManual[gES_genericRadio] == nil then
			gES_genericRadioPresetManual[gES_genericRadio] = 0 -- no preset channels
		end
		if gES_genericRadioSquelch[gES_genericRadio] == nil then
			gES_genericRadioSquelch[gES_genericRadio] = ((math.round(lMainPanelDevice:get_argument_value(36), 1) == 0.1) and 0 or 1)
		end

		local lVHF_FM_RADIO_FREQUENCY = math.round(lVHF_FM_RADIO:get_frequency()/1000000 , 3, "floor")

		SendDataHW("3000", string.format("%.3f", lVHF_FM_RADIO_FREQUENCY), lHardware)
		SendDataHW("3001", string.format("-"), lHardware)
		SendDataHW("3002", string.format("%.3f", lVHF_FM_RADIO_FREQUENCY), lHardware)
		
		if lRotaryFrequency_1 ~= nil and (lRotaryFrequency_1 >= 0.0 and lRotaryFrequency_1 <= 2.0) then

			local lFrequency = StrSplit(lVHF_FM_RADIO_FREQUENCY, "%.")

			if type(lFrequency) == "table" and lFrequency[1] ~= nil then
				lFrequency[1] = tonumber(lFrequency[1])
				if lFrequency[2] == nil then
					lFrequency[2] = 0
				else
					lFrequency[2] = tonumber(lFrequency[2])
					local ltmp = string.format("%.0f", lFrequency[2] / 25)
					lFrequency[2] = ltmp * 25
				end
				if lRotaryFrequency_1 < gES_genericRadioFrequency1 or lRotaryFrequency_1 == 0.0 or lRotaryFrequency_1 == 2.0 then
					lFrequency[1] = lFrequency[1] - 1
					if lFrequency[1] == 99 then
						lFrequency[1] = 399
					end
					gES_genericRadioFrequency1 = lRotaryFrequency_1
				else
					lFrequency[1] = lFrequency[1] + 1
					if lFrequency[1] == 400 then
						lFrequency[1] = 100
					end
					gES_genericRadioFrequency1 = lRotaryFrequency_1
				end
				
				lFrequency[2] = string.format("%.3f", lFrequency[2] / 1000)
				local ltempFrequency = string.format("%.3f", lFrequency[1] + lFrequency[2])
				ltempFrequency = tonumber(ltempFrequency)
				lSetFrequency = {DeviceID = lDeviceID,
				                 Frequency = ltempFrequency * 1000000}

			else
				WriteToLog("1. genericUH-1H AN/ARC-131 VHF FM Radio, don't split frequency: "..lFrequency)
			end
		end

		if lRotaryFrequency_2 ~= nil and (lRotaryFrequency_2 >= 0.0 and lRotaryFrequency_2 <= 2.0) then

			local lFrequency = StrSplit(lVHF_FM_RADIO_FREQUENCY, "%.")

			if type(lFrequency) == "table" and lFrequency[1] ~= nil then
				lFrequency[1] = tonumber(lFrequency[1])
				if lFrequency[2] == nil then
					lFrequency[2] = 0
				else
					lFrequency[2] = tonumber(lFrequency[2])
					local ltmp = string.format("%.0f", lFrequency[2] / 25)
					lFrequency[2] = ltmp * 25
				end
				if lRotaryFrequency_2 < gES_genericRadioFrequency2 or lRotaryFrequency_2 == 0.0 or lRotaryFrequency_2 == 2.0 then
					lFrequency[2] = lFrequency[2] - 25
					if lFrequency[2] == -25 then
						lFrequency[2] = 975
					end
					gES_genericRadioFrequency2 = lRotaryFrequency_2
				else
					lFrequency[2] = lFrequency[2] + 25
					if lFrequency[2] == 1000 then
						lFrequency[2] = 0
					end
					gES_genericRadioFrequency2 = lRotaryFrequency_2
				end
				
				lFrequency[2] = string.format("%.3f", lFrequency[2] / 1000)
				local ltempFrequency = string.format("%.3f", lFrequency[1] + lFrequency[2])
				ltempFrequency = tonumber(ltempFrequency)
				lSetFrequency = {DeviceID = lDeviceID,
				                 Frequency = ltempFrequency * 1000000}

			else
				WriteToLog("2. generic UH-1H AN/ARC-131 VHF FM Radio, don't split frequency: "..lFrequency)
			end
		end

		if lVolume ~= nil and (lVolume >= 0.0 and lVolume <= 2.0) then
			lVolume = lVolume / 2
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3006,
							Value    = lVolume}
		end
--[[
		if lPreset ~= nil and (lPreset >= 0.0 and lPreset <= 2.0) then
			-- Preset 0.0 to 0.20 in 0.01 steps
			if lPreset < gES_genericRadioPresetChannel or lPreset == 0.0 or lPreset == 2.0 then
				lClickAction = {DeviceID = lDeviceID,
								ButtonID = 3001,
								Value    = 0.01}
				gES_genericRadioPresetChannel = lPreset
			else
				lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3002,
							Value    = -0.01}
				gES_genericRadioPresetChannel = lPreset
			end
		end
		if lLoad ~= nil and (lLoad == 0.0 or lLoad <= 1.0) then
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3006,
							Value    = lLoad}
		end
		if lManualPreset ~= nil and (lManualPreset == 0.0 or lManualPreset <= 1.0) then
			if lManualPreset == 1.0 and gES_genericRadioPresetManual[gES_genericRadio] == 1.0 then
				-- Manual on
				lManualPreset = 0.1
				gES_genericRadioPresetManual[gES_genericRadio] = 0
			elseif lManualPreset == 1.0 and gES_genericRadioPresetManual[gES_genericRadio] == 0 then
				-- Preset on
				lManualPreset = 0.0
				gES_genericRadioPresetManual[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3005,
							Value    = lManualPreset}
		end
]]
		if lSquelch ~= nil and (lSquelch == 0.0 or lSquelch <= 1.0) then
			if lSquelch == 1.0 and gES_genericRadioSquelch[gES_genericRadio] == 1.0 then
				-- Squelch off
				lSquelch = 0.0
				gES_genericRadioSquelch[gES_genericRadio] = 0
			elseif lSquelch == 1.0 and gES_genericRadioSquelch[gES_genericRadio] == 0 then
				-- Squelch on
				lSquelch = 0.1
				gES_genericRadioSquelch[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3005,
							Value    = lSquelch}
		end
		if lPower ~= nil and (lPower == 0.0 or lPower <= 1.0) then
			if lPower == 1.0 and gES_genericRadioPower[gES_genericRadio] == 1.0 then
				-- Power off
				lPower = 0.0
				gES_genericRadioPower[gES_genericRadio] = 0
			elseif lPower == 1.0 and gES_genericRadioPower[gES_genericRadio] == 0 then
				-- Power on
				lPower = 0.1
				gES_genericRadioPower[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3007,
							Value    = lPower}
		end

	elseif gES_genericRadio == 2 then
		-- AN/ARC-51BX UHF AM Radio
		local lDeviceID = 22
		local lUHF_AM_RADIO = GetDevice(lDeviceID)
		
		-- check status of the radio
		if gES_genericRadioPower[gES_genericRadio] == nil then
			if lUHF_AM_RADIO:is_on() then
				gES_genericRadioPower[gES_genericRadio] = 1.0
			else
				gES_genericRadioPower[gES_genericRadio] = 0.0
			end
		end
		if gES_genericRadioPresetManual[gES_genericRadio] == nil then
			gES_genericRadioPresetManual[gES_genericRadio] = ((math.round(lMainPanelDevice:get_argument_value(15), 1) == 0.1) and 0 or 1)
		end
		if gES_genericRadioSquelch[gES_genericRadio] == nil then
			gES_genericRadioSquelch[gES_genericRadio] = math.round(lMainPanelDevice:get_argument_value(22), 1)
		end
		
		local lPresetChannel = math.round(lMainPanelDevice:get_argument_value(16), 2)
		
		local lUHF_AM_RADIO_PRESET = {[0.0]="01",[0.05]="02",[0.10]="03",[0.15]="04",[0.20]="05",[0.25]="06",[0.30]="07",[0.35]="08",[0.40]="09",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20"}
		local lUHF_AM_RADIO_FREQUENCY = math.round(lUHF_AM_RADIO:get_frequency()/1000000 , 3, "floor")
		
		SendDataHW("3000", string.format("%s%.3f", lUHF_AM_RADIO_PRESET[lPresetChannel], lUHF_AM_RADIO_FREQUENCY), lHardware)
		SendDataHW("3001", string.format("%s", lUHF_AM_RADIO_PRESET[lPresetChannel]), lHardware)
		SendDataHW("3002", string.format("%.3f", lUHF_AM_RADIO_FREQUENCY), lHardware)
		
		if lRotaryFrequency_1 ~= nil and (lRotaryFrequency_1 >= 0.0 and lRotaryFrequency_1 <= 2.0) then

			local lFrequency = StrSplit(lUHF_AM_RADIO_FREQUENCY, "%.")

			if type(lFrequency) == "table" and lFrequency[1] ~= nil then
				lFrequency[1] = tonumber(lFrequency[1])
				if lFrequency[2] == nil then
					lFrequency[2] = 0
				else
					lFrequency[2] = tonumber(lFrequency[2])
					local ltmp = string.format("%.0f", lFrequency[2] / 50)
					lFrequency[2] = ltmp * 50
				end
				if lRotaryFrequency_1 < gES_genericRadioFrequency1 or lRotaryFrequency_1 == 0.0 or lRotaryFrequency_1 == 2.0 then
					lFrequency[1] = lFrequency[1] - 1
					if lFrequency[1] == 224 then
						lFrequency[1] = 399
					end
					gES_genericRadioFrequency1 = lRotaryFrequency_1
				else
					lFrequency[1] = lFrequency[1] + 1
					if lFrequency[1] == 400 then
						lFrequency[1] = 225
					end
					gES_genericRadioFrequency1 = lRotaryFrequency_1
				end
				
				lFrequency[2] = string.format("%.3f", lFrequency[2] / 1000)
				local ltempFrequency = string.format("%.3f", lFrequency[1] + lFrequency[2])
				ltempFrequency = tonumber(ltempFrequency)
				lSetFrequency = {DeviceID = lDeviceID,
				                 Frequency = ltempFrequency * 1000000}

			else
				WriteToLog("1. generic UH-1H AN/ARC-51BX UHF AM Radio, don't split frequency: "..lFrequency)
			end
		end

		if lRotaryFrequency_2 ~= nil and (lRotaryFrequency_2 >= 0.0 and lRotaryFrequency_2 <= 2.0) then

			local lFrequency = StrSplit(lUHF_AM_RADIO_FREQUENCY, "%.")

			if type(lFrequency) == "table" and lFrequency[1] ~= nil then
				lFrequency[1] = tonumber(lFrequency[1])
				if lFrequency[2] == nil then
					lFrequency[2] = 0
				else
					lFrequency[2] = tonumber(lFrequency[2])
					local ltmp = string.format("%.0f", lFrequency[2] / 50)
					lFrequency[2] = ltmp * 50
				end
				if lRotaryFrequency_2 < gES_genericRadioFrequency2 or lRotaryFrequency_2 == 0.0 or lRotaryFrequency_2 == 2.0 then
					lFrequency[2] = lFrequency[2] - 50
					if lFrequency[2] == -50 then
						lFrequency[2] = 950
					end
					gES_genericRadioFrequency2 = lRotaryFrequency_2
				else
					lFrequency[2] = lFrequency[2] + 50
					if lFrequency[2] == 1000 then
						lFrequency[2] = 0
					end
					gES_genericRadioFrequency2 = lRotaryFrequency_2
				end
				
				lFrequency[2] = string.format("%.3f", lFrequency[2] / 1000)
				local ltempFrequency = string.format("%.3f", lFrequency[1] + lFrequency[2])
				ltempFrequency = tonumber(ltempFrequency)
				lSetFrequency = {DeviceID = lDeviceID,
				                 Frequency = ltempFrequency * 1000000}

			else
				WriteToLog("2. generic UH-1H AN/ARC-51BX UHF AM Radio, don't split frequency: "..lFrequency)
			end
		end
		if lVolume ~= nil and (lVolume >= 0.0 and lVolume <= 2.0) then
			lVolume = lVolume / 2
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3008,
							Value    = lVolume}
		end
		if lPreset ~= nil and (lPreset >= 0.0 and lPreset <= 2.0) then
			-- Preset 0.0 to 0.95 in 0.05 steps
			if lPreset < gES_genericRadioPresetChannel or lPreset == 0.0 or lPreset == 2.0 then
				lPresetChannel = lPresetChannel + 0.05
				gES_genericRadioPresetChannel = lPreset
				if lPresetChannel == 1.00 then
					lPresetChannel = 0.0
				end
			else
				lPresetChannel = lPresetChannel - 0.05
				gES_genericRadioPresetChannel = lPreset
				if lPresetChannel == -0.05 then
					lPresetChannel = 0.95
				end
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3001,
							Value    = lPresetChannel}
		end
		if lSquelch ~= nil and (lSquelch == 0.0 or lSquelch <= 1.0) then
			if lSquelch == 1.0 and gES_genericRadioSquelch[gES_genericRadio] == 1.0 then
				-- Power off
				lSquelch = 0.0
				gES_genericRadioSquelch[gES_genericRadio] = 0
			elseif lSquelch == 1.0 and gES_genericRadioSquelch[gES_genericRadio] == 0 then
				-- Power on
				lSquelch = 1.0
				gES_genericRadioSquelch[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3007,
							Value    = lSquelch}
		end
		if lManualPreset ~= nil and (lManualPreset == 0.0 or lManualPreset <= 1.0) then
			if lManualPreset == 1.0 and gES_genericRadioPresetManual[gES_genericRadio] == 1.0 then
				-- Manual on
				lManualPreset = 0.1
				gES_genericRadioPresetManual[gES_genericRadio] = 0
			elseif lManualPreset == 1.0 and gES_genericRadioPresetManual[gES_genericRadio] == 0 then
				-- Preset on
				lManualPreset = 0.0
				gES_genericRadioPresetManual[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3005,
							Value    = lManualPreset}
		end
		if lPower ~= nil and (lPower == 0.0 or lPower <= 1.0) then
			if lPower == 1.0 and gES_genericRadioPower[gES_genericRadio] == 1.0 then
				-- Power off
				lPower = 0.0
				gES_genericRadioPower[gES_genericRadio] = 0
			elseif lPower == 1.0 and gES_genericRadioPower[gES_genericRadio] == 0 then
				-- Power on
				lPower = 0.1
				gES_genericRadioPower[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3006,
							Value    = lPower}
		end

	elseif gES_genericRadio == 3 then
		-- AN/ARC-134 VHF AM Radio
		local lDeviceID = 20
		local lVHF_AM_RADIO = GetDevice(lDeviceID)

		-- check status of the radio
		if gES_genericRadioPower[gES_genericRadio] == nil then
			if lVHF_AM_RADIO:is_on() then
				gES_genericRadioPower[gES_genericRadio] = 1.0
			else
				gES_genericRadioPower[gES_genericRadio] = 0.85
			end
		end
		if gES_genericRadioPresetManual[gES_genericRadio] == nil then
			gES_genericRadioPresetManual[gES_genericRadio] = 0.0 -- no preset channels
		end
		if gES_genericRadioSquelch[gES_genericRadio] == nil then
			gES_genericRadioSquelch[gES_genericRadio] = 0.0 -- no Squelch
		end

		local lVHF_AM_RADIO_FREQUENCY = math.round(lVHF_AM_RADIO:get_frequency()/1000000 , 3, "floor")

		SendDataHW("3000", string.format("%.3f", lVHF_AM_RADIO_FREQUENCY), lHardware)
		SendDataHW("3001", string.format("-"), lHardware)
		SendDataHW("3002", string.format("%.3f", lVHF_AM_RADIO_FREQUENCY), lHardware)

		if lRotaryFrequency_1 ~= nil and (lRotaryFrequency_1 >= 0.0 and lRotaryFrequency_1 <= 2.0) then

			local lFrequency = StrSplit(lVHF_AM_RADIO_FREQUENCY, "%.")

			if type(lFrequency) == "table" and lFrequency[1] ~= nil then
				lFrequency[1] = tonumber(lFrequency[1])
				if lFrequency[2] == nil then
					lFrequency[2] = 0
				else
					lFrequency[2] = tonumber(lFrequency[2])
					local ltmp = string.format("%.0f", lFrequency[2] / 25)
					lFrequency[2] = ltmp * 25
				end
				if lRotaryFrequency_1 < gES_genericRadioFrequency1 or lRotaryFrequency_1 == 0.0 or lRotaryFrequency_1 == 2.0 then
					lFrequency[1] = lFrequency[1] - 1
					if lFrequency[1] == 99 then
						lFrequency[1] = 399
					end
					gES_genericRadioFrequency1 = lRotaryFrequency_1
				else
					lFrequency[1] = lFrequency[1] + 1
					if lFrequency[1] == 400 then
						lFrequency[1] = 100
					end
					gES_genericRadioFrequency1 = lRotaryFrequency_1
				end

				lFrequency[2] = string.format("%.3f", lFrequency[2] / 1000)
				local ltempFrequency = string.format("%.3f", lFrequency[1] + lFrequency[2])
				ltempFrequency = tonumber(ltempFrequency)
				lSetFrequency = {DeviceID = lDeviceID,
				                 Frequency = ltempFrequency * 1000000}

			else
				WriteToLog("1. genericUH-1H AN/ARC-134 VHF AM Radio, don't split frequency: "..lFrequency)
			end
		end

		if lRotaryFrequency_2 ~= nil and (lRotaryFrequency_2 >= 0.0 and lRotaryFrequency_2 <= 2.0) then

			local lFrequency = StrSplit(lVHF_AM_RADIO_FREQUENCY, "%.")

			if type(lFrequency) == "table" and lFrequency[1] ~= nil then
				lFrequency[1] = tonumber(lFrequency[1])
				if lFrequency[2] == nil then
					lFrequency[2] = 0
				else
					lFrequency[2] = tonumber(lFrequency[2])
					local ltmp = string.format("%.0f", lFrequency[2] / 25)
					lFrequency[2] = ltmp * 25
				end
				if lRotaryFrequency_2 < gES_genericRadioFrequency2 or lRotaryFrequency_2 == 0.0 or lRotaryFrequency_2 == 2.0 then
					lFrequency[2] = lFrequency[2] - 25
					if lFrequency[2] == -25 then
						lFrequency[2] = 975
					end
					gES_genericRadioFrequency2 = lRotaryFrequency_2
				else
					lFrequency[2] = lFrequency[2] + 25
					if lFrequency[2] == 1000 then
						lFrequency[2] = 0
					end
					gES_genericRadioFrequency2 = lRotaryFrequency_2
				end

				lFrequency[2] = string.format("%.3f", lFrequency[2] / 1000)
				local ltempFrequency = string.format("%.3f", lFrequency[1] + lFrequency[2])
				ltempFrequency = tonumber(ltempFrequency)
				lSetFrequency = {DeviceID = lDeviceID,
				                 Frequency = ltempFrequency * 1000000}

			else
				WriteToLog("2. generic UH-1H AN/ARC-134 VHF AM Radio, don't split frequency: "..lFrequency)
			end
		end

		if lVolume ~= nil and (lVolume >= 0.0 and lVolume <= 2.0) then
			lVolume = lVolume / 3
			if lVolume > 0.65 then
				lVolume = 0.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3003,
							Value    = lVolume}
		end
--[[
		if lPreset ~= nil and (lPreset >= 0.0 and lPreset <= 2.0) then
			-- Preset 0.0 to 0.20 in 0.01 steps
			if lPreset < gES_genericRadioPresetChannel or lPreset == 0.0 or lPreset == 2.0 then
				lClickAction = {DeviceID = lDeviceID,
								ButtonID = 3001,
								Value    = 0.01}
				gES_genericRadioPresetChannel = lPreset
			else
				lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3002,
							Value    = -0.01}
				gES_genericRadioPresetChannel = lPreset
			end
		end
		if lLoad ~= nil and (lLoad == 0.0 or lLoad <= 1.0) then
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3006,
							Value    = lLoad}
		end
		if lSquelch ~= nil and (lSquelch == 0.0 or lSquelch <= 1.0) then
			if lSquelch == 1.0 and gES_genericRadioSquelch[gES_genericRadio] == 1.0 then
				-- Power off
				lSquelch = 0.0
				gES_genericRadioSquelch[gES_genericRadio] = 0
			elseif lSquelch == 1.0 and gES_genericRadioSquelch[gES_genericRadio] == 0 then
				-- Power on
				lSquelch = 1.0
				gES_genericRadioSquelch[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3007,
							Value    = lSquelch}
		end
		if lManualPreset ~= nil and (lManualPreset == 0.0 or lManualPreset <= 1.0) then
			if lManualPreset == 1.0 and gES_genericRadioPresetManual[gES_genericRadio] == 1.0 then
				-- Manual on
				lManualPreset = 0.1
				gES_genericRadioPresetManual[gES_genericRadio] = 0
			elseif lManualPreset == 1.0 and gES_genericRadioPresetManual[gES_genericRadio] == 0 then
				-- Preset on
				lManualPreset = 0.0
				gES_genericRadioPresetManual[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3005,
							Value    = lManualPreset}
		end
]]
		if lPower ~= nil and (lPower == 0.0 or lPower <= 1.0) then
			if lPower == 1.0 and gES_genericRadioPower[gES_genericRadio] == 1.0 then
				-- Power off
				lPower = 0.85
				gES_genericRadioPower[gES_genericRadio] = 0
			elseif lPower == 1.0 and gES_genericRadioPower[gES_genericRadio] == 0 then
				-- Power on
				lPower = 1.0
				gES_genericRadioPower[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3001,
							Value    = lPower}
		end

	else
		SendDataHW("3000", "-", lHardware)
		SendDataHW("3001", "-", lHardware)
		SendDataHW("3002", "-", lHardware)
		SendDataHW("3010", 0, lHardware)
		SendDataHW("3011", 0, lHardware)
		SendDataHW("3012", 0, lHardware)
		return
	end

	SendDataHW("3010", gES_genericRadioPower[gES_genericRadio], lHardware)
	SendDataHW("3011", gES_genericRadioPresetManual[gES_genericRadio], lHardware)
	SendDataHW("3012", gES_genericRadioSquelch[gES_genericRadio], lHardware)

	if lClickAction ~= nil then
		lDevice = GetDevice(lClickAction.DeviceID)
		if type(lDevice) == "table" then
			--WriteToLog("GetDevice("..lClickAction.DeviceID.."):performClickableAction("..lClickAction.ButtonID..", "..lClickAction.Value..") ")
			lDevice:performClickableAction(lClickAction.ButtonID, lClickAction.Value)
		end
	elseif lSetFrequency ~= nil then
		lDevice = GetDevice(lSetFrequency.DeviceID)
		if type(lDevice) == "table" and lDevice:is_on() then
			--WriteToLog("GetDevice("..lSetFrequency.DeviceID.."):set_frequency("..lSetFrequency.Frequency..") ")
			lDevice:set_frequency(lSetFrequency.Frequency)
		else
			WriteToLog("GetDevice("..lSetFrequency.DeviceID..") is no table or Radio is not on")
		end
	end
end