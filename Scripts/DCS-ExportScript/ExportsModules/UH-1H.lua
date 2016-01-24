-- Uh-1H Export
-- Version 1.0.0 BETA

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
	[117] = "%0.4f",		-- AIRSPEED_Nose {0.0, 20.0, 30.0, 40.0, 50.0, 60.0, 80.0, 120.0, 150.0} {0.0, 0.075, 0.19, 0.32, 0.395, 0.44, 0.55, 0.825, 1.0}
	[118] = "%0.4f",		-- AIRSPEED_Roof {0.0, 20.0, 30.0, 40.0, 50.0, 60.0, 80.0, 120.0, 150.0} {0.0, 0.075, 0.19, 0.32, 0.395, 0.44, 0.55, 0.825, 1.0}
	-- Course Indicator ID-1347
	[151] = "%.4f",		-- VerticalBar {-1.0, 1.0} {-0.7, 0.7}
	[152] = "%.4f",		-- HorisontalBar {-1.0, 1.0} {-0.7, 0.7}
	[153] = "%.4f",		-- ToMarker
	[154] = "%.4f",		-- FromMarker
	[156] = "%.4f",		-- RotCourseCard
	[157] = "%.1f",		-- VerticalOFF
	[158] = "%.1f",		-- HorisontalOFF
	-- ADF_ARN83
	[45] = "%0.2f",		-- ADF_ARN83_Frequency {0.0, 1.0} {0.0, 0.55}
	[40] = "%.4f",		-- ARN83_SignalLevel
	-- GMC
	[159] = "%.4f",		-- GMC_CoursePointer1
	[160] = "%.4f",		-- GMC_CoursePointer2
	[162] = "%.4f",		-- GMC_HeadingMarker
	[165] = "%.4f",		-- GMC_Heading
	[166] = "%.4f",		-- GMC_Annunciator {-1.0, 1.0} {0.0, 1.0}
	[167] = "%.2f",		-- GMC_PowerFail
	-- Copilot RMI
	[266] = "%.4f",		-- RMI_CoursePointer1
	[267] = "%.4f",		-- RMI_CoursePointer2
	[269] = "%.4f",		-- RMI_Heading
	-- Altimeter Indicator AAU-32/A (operator)
	[168] = "%.4f",		-- Pointer {0.0, 1000.0} {0.0, 1.0}
	[169] = "%.4f",		-- Alt1AAU_10000_footCount {0.0, 10.0} {0.0, 1.0}
	[170] = "%.4f",		-- Alt1AAU_1000_footCount {0.0, 10.0} {0.0, 1.0}
	[171] = "%.4f",		-- Alt1AAU_100_footCount {0.0, 10.0} {0.0, 1.0}
	[174] = "%.2f",		-- AAU_32_Drum_Counter {-2.0, 1.0} {0.0, 0.3}
	[175] = "%.2f",		-- AAU_32_Drum_Counter {0.0, 10.0} {0.0, 1.0}
	[176] = "%.2f",		-- AAU_32_Drum_Counter {0.0, 10.0} {0.0, 1.0}
	[177] = "%.1f",		-- CodeOff_flag
	-- Altimeter Indicator AAU-7/A (pilot) (AAU-31/A)
	[178] = "%.4f",		-- Alt_10000_AAU_7A {0.0, 100000.0} {0.0, 1.0}
	[179] = "%.4f",		-- Alt_1000_AAU_7A {0.0, 10000.0} {0.0, 1.0}
	[180] = "%.4f",		-- Alt_100_AAU_7A {0.0, 1000.0} {0.0, 1.0}
	[182] = "%.4f",		-- Press_AAU_7A {28.1, 31.0} {0.0, 1.0}
	-- Gauges
	[113] = "%.4f",		-- EngOilPress {-3.0, 0.0, 100.0} {0.0, 0.029, 1.0}
	[114] = "%.4f",		-- EngOilTemp {-70.0, -50.0, 0.0, 100.0, 150.0} {0.0, 0.13, 0.38, 0.71, 1.0}
	[115] = "%.4f",		-- TransmOilPress {-3.0, 0.0, 100.0} {0.0, 0.029, 1.0}
	[116] = "%.4f",		-- TransmOilTemp {-70.0, -50.0, 0.0, 100.0, 150.0} {0.0, 0.13, 0.38, 0.71, 1.0}
	--[117] = "%.4f",		-- AIRSPEED_Nose
	--[118] = "%.4f",		-- AIRSPEED_Roof
	[121] = "%.4f",		-- ExhaustTemp {0.0, 1000.0} {0.0, 1.0}
	[122] = "%.4f",		-- EngineTach {0.0, 7200.0} {0.0, 1.0}
	[123] = "%.4f",		-- RotorTach {0.0, 360.0} {0.0, 1.0}
	[119] = "%.4f",		-- GasProducerTach {0.0, 101.5} {0.0, 1.0}
	[120] = "%.4f",		-- GasProducerTach_U {0.0, 10.0} {0.0, 1.0}
	[124] = "%.4f",		-- TorquePress {-3.0, 0.0, 100.0} {0.0, 0.029, 1.0}
	[149] = "%.4f",		-- VoltageDC {0.0, 30.0} {0.0, 1.0}
	[150] = "%.4f",		-- VoltageAC {0.0, 150.0} {0.0, 1.0}
	[436] = "%.4f",		-- LoadmeterMainGen {-1.5, 0.0, 12.5} {0.0, 0.156, 1.0}
	[125] = "%.4f",		-- LoadmeterSTBYGen {-1.5, 0.0, 12.5} {0.0, 0.09, 1.0}
	[126] = "%.4f",		-- FuelPress {-2.0, 0.0, 50.0} {0.0, 0.015, 1.0}
	[239] = "%.4f",		-- FuelQuantity {0.0, 1580.0} {0.0, 1.0}
	-- Mechanic clock
	[127] = "%.4f",		-- CLOCK_hours {0.0, 12.0} {0.0, 1.0}
	[128] = "%.4f",		-- CLOCK_minutes {0.0, 60.0} {0.0, 1.0}
	[129] = "%.4f",		-- CLOCK_seconds {0.0, 60.0} {0.0, 1.0}
	-- 
	[132] = "%.4f",		-- TurnPtr {-1.0, 1.0}
	[133] = "%.4f",		-- SideSlip {-1.0, 1.0}
	[134] = "%.2f",		-- VertVelocPilot {-4000.0, -3000.0, -1500.0, -1000.0, 1000.0, 1500.0, 3000.0, 4000.0} {-1.0, -0.81,  -0.54, -0.36, 0.36, 0.54, 0.81, 1.0}
	[251] = "%.2f",		-- VertVelocCopilot {-4000.0, -3000.0, -1500.0, -1000.0, 1000.0, 1500.0, 3000.0, 4000.0} {-1.0, -0.81,  -0.54, -0.36, 0.36, 0.54, 0.81, 1.0}
	-- ADI - pilot
	[142] = "%.4f",		-- Attitude_Roll {1.0, -1.0}
	[143] = "%.4f",		-- Attitude_Pitch {1.0, -1.0}
	[148] = "%.1f",		-- Attitude_Off_flag
	-- ADI - operator
	[135] = "%.4f",		-- Attitude_Roll_left {1.0, -1.0}
	[136] = "%.4f",		-- Attitude_Pitch_left {1.0, -1.0}
	[141] = "%.1f",		-- Attitude_Off_flag_left  {0.0, 1.0} {1.0, 0.0}
	[138] = "%.4f",		-- Attitude_PitchShift {0.0, 1.0} {-1.0, 1.0}
	-- operator
	--[149] = "%.4f",		-- DCVoltmeter
	--[150] = "%.4f",		-- ACVoltmeter
	-- UHF_ARC51
	[10] = "%.4f",		-- UHF_ARC51_Freq1 {2.0, 3.0} {0.0, 1.0}
	[11] = "%.4f",		-- UHF_ARC51_Freq2 {0.0, 10.0} {0.0, 1.0}
	[12] = "%.4f",		-- UHF_ARC51_Freq3 {0.0, 10.0} {0.0, 1.0}
	[13] = "%.4f",		-- UHF_ARC51_Freq4 {0.0, 10.0} {0.0, 1.0}
	[14] = "%.4f",		-- UHF_ARC51_Freq5 {0.0, 10.0} {0.0, 1.0}
	-- NAV_ARN82
	[46] = "%.4f",		-- NAV_ARN82_Freq1 {0.0, 10.0} {0.0, 1.0}
	[47] = "%.4f",		-- NAV_ARN82_Freq2 {0.0, 10.0} {0.0, 1.0}
	[48] = "%.4f",		-- NAV_ARN82_Freq3 {0.0, 10.0} {0.0, 1.0}
	[49] = "%.4f",		-- NAV_ARN82_Freq4 {0.0, 10.0} {0.0, 1.0}
	[50] = "%.4f",		-- NAV_ARN82_Freq5 {0.0, 10.0} {0.0, 1.0}
	-- VHF_ARC134
	[1] = "%.4f",		-- VHF_ARC134_Freq1 {0.0, 10.0} {0.0, 1.0}
	[2] = "%.4f",		-- VHF_ARC134_Freq2 {0.0, 10.0} {0.0, 1.0}
	[3] = "%.4f",		-- VHF_ARC134_Freq3 {0.0, 10.0} {0.0, 1.0}
	[4] = "%.4f",		-- VHF_ARC134_Freq4 {0.0, 10.0} {0.0, 1.0}
	-- 
	[56] = "%.1f",		-- Marker_Beacon_Lamp {0.0, 1.0} {0.0, 0.9}
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
	[279] = "%.4f",		-- light_ConsoleLight
	[410] = "%.4f",		-- light_DomeLight
	[411] = "%.4f",		-- light_DomeLightGreen
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
	[443] = "%.4f",		-- RALT_Needle {0.0, 0.98} {0.0, 0.98}
	[467] = "%.1f",		-- RALT_Off_Flag
	[447] = "%.f",		-- RALT_LO_Lamp
	[465] = "%.f",		-- RALT_HI_Lamp
	[444] = "%.4f",		-- RALT_LO_Index {-0.02, -0.01, -0.0001,0.0, 0.744} {0.97,  0.99, 1.0, 0.0, 0.744}
	[466] = "%.4f",		-- RALT_HI_Index {0.0, 0.744} {0.0, 0.744}
	[468] = "%0.1f",		-- RALT_Digit_1 {0.0, 10.0} {0.0, 1.0}
	[469] = "%0.1f",		-- RALT_Digit_2 {0.0, 10.0} {0.0, 1.0}
	[470] = "%0.1f",		-- RALT_Digit_3 {0.0, 10.0} {0.0, 1.0}
	[471] = "%0.1f",		-- RALT_Digit_4 {0.0, 10.0} {0.0, 1.0}
	-- FLARE CHAFF
	[460] = "%.1f",		-- FLARE_Digit_1 {0.0, 10.0} {0.0, 1.0}
	[461] = "%.1f",		-- FLARE_Digit_2 {0.0, 10.0} {0.0, 1.0}
	[462] = "%.1f",		-- CHAFF_Digit_1 {0.0, 10.0} {0.0, 1.0}
	[463] = "%.1f",		-- CHAFF_Digit_2 {0.0, 10.0} {0.0, 1.0}
	-- XM130 Chaff Flare
	[458] = "%.f",		-- lamp_XM130_ARMED
	-- SIGHTS_FOR_CIVIL
	[473] = "$.1f",		-- SIGHTS_FOR_CIVIL
	-- Main Panel Lights
	[277] = "%.f",		-- lamp_MASTER
	[276] = "%.f",		-- lamp_LOW_RPM
	[275] = "%.f",		-- lamp_FIRE
	-- Caution Panel Lights
	[91] = "%.f",		-- lamp_ENGINE_OIL_PRESS
	[92] = "%.f",		-- lamp_ENGINE_ICING
	[93] = "%.f",		-- lamp_ENGINE_ICE_JET
	[94] = "%.f",		-- lamp_ENGINE_CHIP_DET
	[95] = "%.f",		-- lamp_LEFT_FUEL_BOOST
	[96] = "%.f",		-- lamp_RIGHT_FUEL_BOOST
	[97] = "%.f",		-- lamp_ENG_FUEL_PUMP
	[98] = "%.f",		-- lamp_20_MINUTE
	[99] = "%.f",		-- lamp_FUEL_FILTER
	[100] = "%.f",		-- lamp_GOV_EMERG
	[101] = "%.f",		-- lamp_AUX_FUEL_LOW
	[102] = "%.f",		-- lamp_XMSN_OIL_PRESS
	[103] = "%.f",		-- lamp_XMSN_OIL_HOT
	[104] = "%.f",		-- lamp_HYD_PRESSURE
	[105] = "%.f",		-- lamp_ENGINE_INLET_AIR
	[106] = "%.f",		-- lamp_INST_INVERTER
	[107] = "%.f",		-- lamp_DC_GENERATOR
	[108] = "%.f",		-- lamp_EXTERNAL_POWER
	[109] = "%.f",		-- lamp_CHIP_DETECTOR
	[110] = "%.f",		-- lamp_IFF
	-- M21
	[254] = "%.f",		-- lamp_M21_ARMED
	[255] = "%.f",		-- lamp_M21_SAFE
	-- 
	[76] = "%.f",		-- lamp_IFF_REPLY
	[77] = "%.f",		-- lamp_IFF_TEST
	-- Electic Gauges
	[526] = "%.4f",		-- DC_voltage {0.0, 30.0} {0.0, 1.0}
	[532] = "%.2f",		-- AC_voltage {0.0, 100.0, 150.0, 200.0, 250.0} {0.0, 0.14,  0.31,  0.56,  1.0}
	[527] = "%.4f",		-- DC_battery_I_current {0.0, 400.0} {0.0, 1.0}
	[528] = "%.4f",		-- DC_battery_II_current {0.0, 400.0} {0.0, 1.0}
	[529] = "%.4f",		-- DC_VU_I_current {0.0, 400.0} {0.0, 1.0}
	[530] = "%.4f",		-- DC_VU_II_current {0.0, 400.0} {0.0, 1.0}
	[531] = "%.4f",		-- DC_VU_III_current {0.0, 400.0} {0.0, 1.0}
	[533] = "%.2f",		-- AC_generator_I_current {0.0,  50,  70,   90,   120,  130,  140,  150} {0.0, 0.1, 0.2, 0.36, 0.63, 0.75, 0.86, 1.0}
	[534] = "%.2f",		-- AC_generator_II_current {0.0,  50,  70,   90,   120,  130,  140,  150} {0.0, 0.1, 0.2, 0.36, 0.63, 0.75, 0.86, 1.0}
	[371] = "%.2f"		-- AntiIce_ampermeter {0.0,  50,  70,   90,   120,  130,  140,  150} {0.0, 0.1, 0.2, 0.36, 0.63, 0.75, 0.86, 1.0}
}
ExportScript.ConfigArguments = 
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
	[58] = "%.1f",		-- Code
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
	[6] = "%1d",		-- Comm Test Button
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
	[464] = "%1d",		-- Test / Hight Set. Left mouse click to Test. Rotate mouse wheel to set Hight, Axis
	-- Doors
	[419] = "%1d",		-- Open Left Doors
	[421] = "%1d"		-- Open Right Doors
}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
	--[[
	export in low tick interval to Ikarus
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) <- special function for get frequency data
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
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000), 2) -- export to Hardware '2' Config
	]]
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to GlassCockpit
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) <- special function for get frequency data
	]]
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
--[[
	export in low tick interval to hardware
	Example from A-10C
    Landing Gear
	mainPanelDevice, basis panel
	ExportScript.Tools.SendDataDAC("2004",  mainPanelDevice:get_argument_value(659))			-- GEAR_N_SAFE
	ExportScript.Tools.SendDataDAC("2005",  mainPanelDevice:get_argument_value(660))			-- GEAR_L_SAFE
	ExportScript.Tools.SendDataDAC("2006",  mainPanelDevice:get_argument_value(661))			-- GEAR_R_SAFE
	]]

	-- Radio comunication
	-- UHF_ARC_51
	local lUHF_ARC_51 = GetDevice(22)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", lUHF_ARC_51:get_frequency()/1000000))

	local lUHF_ARC_51_PRESET = {[0.00]="1",[0.05]="2",[0.10]="3",[0.15]="4",[0.20]="5",[0.25]="6",[0.30]="7",[0.35]="8",[0.40]="9",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20"}
	ExportScript.Tools.SendDataDAC("2001", lUHF_ARC_51_PRESET[ExportScript.Tools.round(mainPanelDevice:get_argument_value(16), 2)])
	
	-- VHF_ARC_131
	local lVHF_ARC_131 = GetDevice(23)
	ExportScript.Tools.SendDataDAC("2002", string.format("%7.3f", lVHF_ARC_131:get_frequency()/1000000))
	
	-- VHF_ARC_134
	local lVHF_ARC_134 = GetDevice(20)
	ExportScript.Tools.SendDataDAC("2003", string.format("%7.3f", lVHF_ARC_134:get_frequency()/1000000))
	
	-- ARN_82 VHF Navigation Set  NOT FUNCTIONAL
	--local lARN_82 = GetDevice(26)
	--ExportScript.Tools.WriteToLog('lARN_82: '..ExportScript.Tools.dump(lARN_82))
	--ExportScript.Tools.WriteToLog('lARN_82 (metatable): '..ExportScript.Tools.dump(getmetatable(lARN_82)))
	--ExportScript.Tools.SendDataDAC("2004", string.format("%7.3f", lVHF_ARC_134:get_frequency()/1000000))

	-- XM130 FLARE CHAFF
	ExportScript.Tools.SendDataDAC("2005", string.format("%1d", ExportScript.Tools.round(mainPanelDevice:get_argument_value(460) * 10, 0)..ExportScript.Tools.round(mainPanelDevice:get_argument_value(461) * 10, 0)))		-- FLARE_Digit_1 -- FLARE_Digit_2
	ExportScript.Tools.SendDataDAC("2006", string.format("%1d", ExportScript.Tools.round(mainPanelDevice:get_argument_value(462) * 10, 0)..ExportScript.Tools.round(mainPanelDevice:get_argument_value(463) * 10, 0)))		-- CHAFF_Digit_1 -- CHAFF_Digit_2

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
			lADF_ARN83 = ExportScript.Tools.round(tonumber(lADF_ARN83) / 1000, 2)
		end
	end
	
	ExportScript.Tools.SendDataDAC("2007", string.format("%s", lADF_ARN83))
	
	-- Radar Altimeter - AN/APN-209
	-- [468] = "%0.1f",		-- RALT_Digit_1
	-- {0.0, 1.0} 0.0=0, 0.1=1, 0.2=2,..., 0.9=9, 1.0=' '
	-- [469] = "%0.1f",		-- RALT_Digit_2
	-- {0.0, 1.0} 0.0=0, 0.1=1, 0.2=2,..., 0.9=9, 1.0=' '
	-- [470] = "%0.1f",		-- RALT_Digit_3
	-- {0.0, 1.0} 0.0=0, 0.1=1, 0.2=2,..., 0.9=9, 1.0=' '
	-- [471] = "%0.1f",		-- RALT_Digit_4
	-- {0.0, 1.0} 0.0=0, 0.1=1, 0.2=2,..., 0.9=9, 1.0=' '
	local lAN_APN_209_PRESET = {[0.0]="0",[0.1]="1",[0.2]="2",[0.3]="3",[0.4]="4",[0.5]="5",[0.6]="6",[0.7]="7",[0.8]="8",[0.9]="9",[1.0]=" "}
	local lAN_APN_209 = ""
	lAN_APN_209 = lAN_APN_209_PRESET[ExportScript.Tools.round(mainPanelDevice:get_argument_value(468), 2)]
	lAN_APN_209 = lAN_APN_209 .. lAN_APN_209_PRESET[ExportScript.Tools.round(mainPanelDevice:get_argument_value(469), 2)]
	lAN_APN_209 = lAN_APN_209 .. lAN_APN_209_PRESET[ExportScript.Tools.round(mainPanelDevice:get_argument_value(470), 2)]
	lAN_APN_209 = lAN_APN_209 .. lAN_APN_209_PRESET[ExportScript.Tools.round(mainPanelDevice:get_argument_value(471), 2)]
	ExportScript.Tools.SendDataDAC("2008", string.format("%s", lAN_APN_209))

	-- generic Radio display and frequency rotarys
	-------------------------------------------------
	ExportScript.genericRadio(nil, nil, ExportScript.Config.genericRadioHardwareID)

	
	ExportScript.Tools.WriteToLog('VHF_ARC_134: '..string.format("%7.3f", lVHF_ARC_134:get_frequency()/1000000))
	ExportScript.Tools.WriteToLog('VHF_ARC134_Freq1: '..mainPanelDevice:get_argument_value(1))
	ExportScript.Tools.WriteToLog('VHF_ARC134_Freq2: '..mainPanelDevice:get_argument_value(2))
	ExportScript.Tools.WriteToLog('VHF_ARC134_Freq3: '..mainPanelDevice:get_argument_value(3))
	ExportScript.Tools.WriteToLog('VHF_ARC134_Freq4: '..mainPanelDevice:get_argument_value(4))
	
	--[[
	-- ENGINE_INTERFACE
	local lENGINE_INTERFACE = GetDevice(3)
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_eng_rpm '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_eng_rpm()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_fire_lamp '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_fire_lamp()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_gas_prod_tach '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_gas_prod_tach()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_fire_test_lamp '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_fire_test_lamp()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_trans_oil_temp '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_trans_oil_temp()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_eng_torq '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_eng_torq()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_trans_oil_press '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_trans_oil_press()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_exhaust_temp '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_exhaust_temp()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_low_rpm_lamp '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_low_rpm_lamp()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_eng_oil_temp '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_eng_oil_temp()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_eng_oil_press '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_eng_oil_press()))
	
	-- ADI_PILOT
	local lADI_PILOT = GetDevice(6)
	ExportScript.Tools.WriteToLog('lADI_PILOT:get_sideslip '..ExportScript.Tools.dump(lADI_PILOT:get_sideslip()))
	ExportScript.Tools.WriteToLog('lADI_PILOT:get_bank '..ExportScript.Tools.dump(lADI_PILOT:get_bank()))
	ExportScript.Tools.WriteToLog('lADI_PILOT:get_pitch '..ExportScript.Tools.dump(lADI_PILOT:get_pitch()))
	
	-- RADAR_ALTIMETER
	local lRADAR_ALTIMETER = GetDevice(13)
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_distance_limit '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_distance_limit()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_aperture_size '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_aperture_size()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_mode '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_mode()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_altitude '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_altitude()))
	]]
	--[[
	-- VHF_ARC_134
	local lVHF_ARC_134 = GetDevice(20)
	ExportScript.Tools.WriteToLog('lVHF_ARC_134:is_on '..ExportScript.Tools.dump(lVHF_ARC_134:is_on()))
	ExportScript.Tools.WriteToLog('lVHF_ARC_134:get_frequency '..ExportScript.Tools.dump(lVHF_ARC_134:get_frequency()))
	--ExportScript.Tools.WriteToLog('lVHF_ARC_134:set_frequency '..ExportScript.Tools.dump(lVHF_ARC_134:set_frequency())) -- test parameters
	--ExportScript.Tools.WriteToLog('lVHF_ARC_134:set_modulation '..ExportScript.Tools.dump(lVHF_ARC_134:set_modulation())) -- test parameters
	--ExportScript.Tools.WriteToLog('lVHF_ARC_134:set_channel '..ExportScript.Tools.dump(lVHF_ARC_134:set_channel())) -- test parameters
	
	-- INTERCOM
	local lINTERCOM = GetDevice(21)
	ExportScript.Tools.WriteToLog('lINTERCOM:is_communicator_available '..ExportScript.Tools.dump(lINTERCOM:is_communicator_available()))
	ExportScript.Tools.WriteToLog('lINTERCOM:get_noise_level '..ExportScript.Tools.dump(lINTERCOM:get_noise_level()))
	ExportScript.Tools.WriteToLog('lINTERCOM:get_signal_level '..ExportScript.Tools.dump(lINTERCOM:get_signal_level()))
	--ExportScript.Tools.WriteToLog('lINTERCOM:set_communicator '..ExportScript.Tools.dump(lINTERCOM:set_communicator())) -- test parameters
	--ExportScript.Tools.WriteToLog('lINTERCOM:set_voip_mode '..ExportScript.Tools.dump(lINTERCOM:set_voip_mode())) -- test parameters
	
	-- UHF_ARC_51
	local lUHF_ARC_51 = GetDevice(22)
	ExportScript.Tools.WriteToLog('lUHF_ARC_51:is_on '..ExportScript.Tools.dump(lUHF_ARC_51:is_on()))
	ExportScript.Tools.WriteToLog('lUHF_ARC_51:get_frequency '..ExportScript.Tools.dump(lUHF_ARC_51:get_frequency()))
	--ExportScript.Tools.WriteToLog('lUHF_ARC_51:set_frequency '..ExportScript.Tools.dump(lUHF_ARC_51:set_frequency())) -- test parameters
	--ExportScript.Tools.WriteToLog('lUHF_ARC_51:set_modulation '..ExportScript.Tools.dump(lUHF_ARC_51:set_modulation())) -- test parameters
	--ExportScript.Tools.WriteToLog('lUHF_ARC_51:set_channel '..ExportScript.Tools.dump(lUHF_ARC_51:set_channel())) -- test parameters

	-- VHF_ARC_131
	local lVHF_ARC_131 = GetDevice(23)
	ExportScript.Tools.WriteToLog('lVHF_ARC_131:is_on '..ExportScript.Tools.dump(lVHF_ARC_131:is_on()))
	ExportScript.Tools.WriteToLog('lVHF_ARC_131:get_frequency '..ExportScript.Tools.dump(lVHF_ARC_131:get_frequency()))
	--ExportScript.Tools.WriteToLog('lVHF_ARC_131:set_frequency '..ExportScript.Tools.dump(lVHF_ARC_131:set_frequency())) -- test parameters
	--ExportScript.Tools.WriteToLog('lVHF_ARC_131:set_modulation '..ExportScript.Tools.dump(lVHF_ARC_131:set_modulation())) -- test parameters
	--ExportScript.Tools.WriteToLog('lVHF_ARC_131:set_channel '..ExportScript.Tools.dump(lVHF_ARC_131:set_channel())) -- test parameters
	
	ExportScript.Tools.WriteToLog('Frequency Mode Dial '..ExportScript.Tools.dump(mainPanelDevice:get_argument_value(15)))
	ExportScript.Tools.WriteToLog('Function Dial '..ExportScript.Tools.dump(mainPanelDevice:get_argument_value(17)))
	]]
	--[[
	Device test, Device 2 to 32
	is value "userdata", is only DLL intern functions
	local ltmp1 = 0
	for ltmp2 = 1, 49, 1 do
		ltmp1 = GetDevice(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
		ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
	]]
	--[[
	ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
	
	local ltmp1 = 0
	for ltmp2 = 1, 8, 1 do
		ltmp1 = list_indication(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
		--ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
	]]
end

-----------------------------
--     Custom functions    --
-----------------------------

function ExportScript.genericRadio(key, value, hardware)
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
		ExportScript.Tools.WriteToLog("Radio Nr. "..gES_genericRadio.." not defined.")
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
			gES_genericRadioSquelch[gES_genericRadio] = ((ExportScript.Tools.round(lMainPanelDevice:get_argument_value(36), 1) == 0.1) and 0 or 1)
		end

		local lVHF_FM_RADIO_FREQUENCY = ExportScript.Tools.round(lVHF_FM_RADIO:get_frequency()/1000000 , 3, "floor")

		ExportScript.Tools.SendDataDAC("3000", string.format("%.3f", lVHF_FM_RADIO_FREQUENCY), lHardware)
		ExportScript.Tools.SendDataDAC("3001", string.format("-"), lHardware)
		ExportScript.Tools.SendDataDAC("3002", string.format("%.3f", lVHF_FM_RADIO_FREQUENCY), lHardware)
		
		if lRotaryFrequency_1 ~= nil and (lRotaryFrequency_1 >= 0.0 and lRotaryFrequency_1 <= 2.0) then

			local lFrequency = ExportScript.Tools.StrSplit(lVHF_FM_RADIO_FREQUENCY, "%.")

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
				ExportScript.Tools.WriteToLog("1. genericUH-1H AN/ARC-131 VHF FM Radio, don't split frequency: "..lFrequency)
			end
		end

		if lRotaryFrequency_2 ~= nil and (lRotaryFrequency_2 >= 0.0 and lRotaryFrequency_2 <= 2.0) then

			local lFrequency = ExportScript.Tools.StrSplit(lVHF_FM_RADIO_FREQUENCY, "%.")

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
				ExportScript.Tools.WriteToLog("2. generic UH-1H AN/ARC-131 VHF FM Radio, don't split frequency: "..lFrequency)
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
			gES_genericRadioPresetManual[gES_genericRadio] = ((ExportScript.Tools.round(lMainPanelDevice:get_argument_value(15), 1) == 0.1) and 0 or 1)
		end
		if gES_genericRadioSquelch[gES_genericRadio] == nil then
			gES_genericRadioSquelch[gES_genericRadio] = ExportScript.Tools.round(lMainPanelDevice:get_argument_value(22), 1)
		end
		
		local lPresetChannel = ExportScript.Tools.round(lMainPanelDevice:get_argument_value(16), 2)
		
		local lUHF_AM_RADIO_PRESET = {[0.0]="01",[0.05]="02",[0.10]="03",[0.15]="04",[0.20]="05",[0.25]="06",[0.30]="07",[0.35]="08",[0.40]="09",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20"}
		local lUHF_AM_RADIO_FREQUENCY = ExportScript.Tools.round(lUHF_AM_RADIO:get_frequency()/1000000 , 3, "floor")
		
		ExportScript.Tools.SendDataDAC("3000", string.format("%s%.3f", lUHF_AM_RADIO_PRESET[lPresetChannel], lUHF_AM_RADIO_FREQUENCY), lHardware)
		ExportScript.Tools.SendDataDAC("3001", string.format("%s", lUHF_AM_RADIO_PRESET[lPresetChannel]), lHardware)
		ExportScript.Tools.SendDataDAC("3002", string.format("%.3f", lUHF_AM_RADIO_FREQUENCY), lHardware)
		
		if lRotaryFrequency_1 ~= nil and (lRotaryFrequency_1 >= 0.0 and lRotaryFrequency_1 <= 2.0) then

			local lFrequency = ExportScript.Tools.StrSplit(lUHF_AM_RADIO_FREQUENCY, "%.")

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
				ExportScript.Tools.WriteToLog("1. generic UH-1H AN/ARC-51BX UHF AM Radio, don't split frequency: "..lFrequency)
			end
		end

		if lRotaryFrequency_2 ~= nil and (lRotaryFrequency_2 >= 0.0 and lRotaryFrequency_2 <= 2.0) then

			local lFrequency = ExportScript.Tools.StrSplit(lUHF_AM_RADIO_FREQUENCY, "%.")

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
				ExportScript.Tools.WriteToLog("2. generic UH-1H AN/ARC-51BX UHF AM Radio, don't split frequency: "..lFrequency)
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

		local lVHF_AM_RADIO_FREQUENCY = ExportScript.Tools.round(lVHF_AM_RADIO:get_frequency()/1000000 , 3, "floor")

		ExportScript.Tools.SendDataDAC("3000", string.format("%.3f", lVHF_AM_RADIO_FREQUENCY), lHardware)
		ExportScript.Tools.SendDataDAC("3001", string.format("-"), lHardware)
		ExportScript.Tools.SendDataDAC("3002", string.format("%.3f", lVHF_AM_RADIO_FREQUENCY), lHardware)

		if lRotaryFrequency_1 ~= nil and (lRotaryFrequency_1 >= 0.0 and lRotaryFrequency_1 <= 2.0) then

			local lFrequency = ExportScript.Tools.StrSplit(lVHF_AM_RADIO_FREQUENCY, "%.")

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
				ExportScript.Tools.WriteToLog("1. genericUH-1H AN/ARC-134 VHF AM Radio, don't split frequency: "..lFrequency)
			end
		end

		if lRotaryFrequency_2 ~= nil and (lRotaryFrequency_2 >= 0.0 and lRotaryFrequency_2 <= 2.0) then

			local lFrequency = ExportScript.Tools.StrSplit(lVHF_AM_RADIO_FREQUENCY, "%.")

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
				ExportScript.Tools.WriteToLog("2. generic UH-1H AN/ARC-134 VHF AM Radio, don't split frequency: "..lFrequency)
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
		ExportScript.Tools.SendDataDAC("3000", "-", lHardware)
		ExportScript.Tools.SendDataDAC("3001", "-", lHardware)
		ExportScript.Tools.SendDataDAC("3002", "-", lHardware)
		ExportScript.Tools.SendDataDAC("3010", 0, lHardware)
		ExportScript.Tools.SendDataDAC("3011", 0, lHardware)
		ExportScript.Tools.SendDataDAC("3012", 0, lHardware)
		return
	end

	ExportScript.Tools.SendDataDAC("3010", gES_genericRadioPower[gES_genericRadio], lHardware)
	ExportScript.Tools.SendDataDAC("3011", gES_genericRadioPresetManual[gES_genericRadio], lHardware)
	ExportScript.Tools.SendDataDAC("3012", gES_genericRadioSquelch[gES_genericRadio], lHardware)

	if lClickAction ~= nil then
		lDevice = GetDevice(lClickAction.DeviceID)
		if type(lDevice) == "table" then
			--ExportScript.Tools.WriteToLog("GetDevice("..lClickAction.DeviceID.."):performClickableAction("..lClickAction.ButtonID..", "..lClickAction.Value..") ")
			lDevice:performClickableAction(lClickAction.ButtonID, lClickAction.Value)
		end
	elseif lSetFrequency ~= nil then
		lDevice = GetDevice(lSetFrequency.DeviceID)
		if type(lDevice) == "table" and lDevice:is_on() then
			--ExportScript.Tools.WriteToLog("GetDevice("..lSetFrequency.DeviceID.."):set_frequency("..lSetFrequency.Frequency..") ")
			lDevice:set_frequency(lSetFrequency.Frequency)
		else
			ExportScript.Tools.WriteToLog("GetDevice("..lSetFrequency.DeviceID..") is no table or Radio is not on")
		end
	end
end
