-- Uh-1H Export
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
	[121] = "%.4f",		-- ExhaustTemp {0.0, 500.0, 600.0, 900.0, 1000.0} {0.0, 0.508, 0.604, 0.904, 1.0}
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
	[134] = "%.4f",		-- VertVelocPilot {-4000.0, -3000.0, -1500.0, -1000.0, 1000.0, 1500.0, 3000.0, 4000.0} {-1.0, -0.81,  -0.54, -0.36, 0.36, 0.54, 0.81, 1.0}
	[251] = "%.4f",		-- VertVelocCopilot {-4000.0, -3000.0, -1500.0, -1000.0, 1000.0, 1500.0, 3000.0, 4000.0} {-1.0, -0.81,  -0.54, -0.36, 0.36, 0.54, 0.81, 1.0}
	-- ADI - pilot
	[142] = "%.4f",		-- Attitude_Roll {1.0, -1.0}
	[143] = "%.4f",		-- Attitude_Pitch {1.0, -1.0}
	[148] = "%.1f",		-- Attitude_Off_flag
	-- ADI - operator
	[135] = "%.4f",		-- Attitude_Roll_left {1.0, -1.0}
	[136] = "%.4f",		-- Attitude_Pitch_left {1.0, -1.0}
	--[141] = "%.1f",		-- Attitude_Off_flag_left  {0.0, 1.0} {1.0, 0.0}
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
	[473] = "%.1f",		-- SIGHTS_FOR_CIVIL
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
	[371] = "%.2f",		-- AntiIce_ampermeter {0.0,  50,  70,   90,   120,  130,  140,  150} {0.0, 0.1, 0.2, 0.36, 0.63, 0.75, 0.86, 1.0}
	-- Magnetic Compass
	--[272] = "%.4f",		-- Heading
	[273] = "%.4f",		-- Roll
	[274] = "%.4f"		-- Pitch
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
	[218] = "%.1f",		-- DC Voltmeter Selector BAT, MAIN GEN, STBY GEN, ESS BUS, NON-ESS BUS {0.0,0.1,0.2,0.3,0.4}
	[221] = "%1d",		-- Non Essential bus
	[214] = "%.1f",		-- AC Voltmeter Selector AB, AC PHASE, BC {0.0,0.1,0.2}
	[215] = "%1d",		-- Inverter MAIN/OFF/SPARE {-1.0,0.0,1.0}
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
	[216] = "%1d",		-- Main generator (ON/OFF/RESET) {-1, 0, 1}
	[217] = "%1d",		-- Main generator switch cover
	--
	[111] = "%1d",		-- Reset/Test switch {-1, 0, 1}
	[112] = "%1d",		-- Bright/Dim switch {-1, 0, 1}
	-- Fuel system
	[81] = "%1d",		-- Main Fuel
	[240] = "%1d",		-- Test Fuel Gauge
	--Transponder APX-72
	[58] = "%.1f",		-- Code ZERO/B/A/HOLD input{-1.0,0.0,1.0} output{0.0,0.1,0.2,0.3}
	[59] = "%.1f",		-- Master OFF/STBY/LOW/NOMR/EMER {0.0,0.1,0.2,0.3,0.4}
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
	
	[68] = "%.2f",		-- MODE1-WHEEL1 0/1/2/3 {0.0,0.33,0.66,0.99}
	[69] = "%.2f",		-- MODE1-WHEEL2 0/1/2/3/4/5/6/7 {0.0,0.11,0.22,0.33,0.44,0.55,0.66,0.77}
	
	[70] = "%.2f",		-- MODE3A-WHEEL1 0/1/2/3/4/5/6/7 {0.0,0.11,0.22,0.33,0.44,0.55,0.66,0.77}
	[71] = "%.2f",		-- MODE3A-WHEEL2 0/1/2/3/4/5/6/7 {0.0,0.11,0.22,0.33,0.44,0.55,0.66,0.77}
	[72] = "%.2f",		-- MODE3A-WHEEL3 0/1/2/3/4/5/6/7 {0.0,0.11,0.22,0.33,0.44,0.55,0.66,0.77}
	[73] = "%.2f",		-- MODE3A-WHEEL4 0/1/2/3/4/5/6/7 {0.0,0.11,0.22,0.33,0.44,0.55,0.66,0.77}
	
	[74] = "%1d",		-- Reply test, Button
	[78] = "%.4f",		-- Reply test, (Axis) {0.0,1.0} in 0.1 steps
	
	[75] = "%1d",		-- Test test, Button
	[79] = "%4f",		-- Test test, (Axis) {0.0,1.0} in 0.1 steps
	
	[130] = "%1d",		-- Winding/Adjustment Clock (Axis) {0.0,1.0} in 0.04 steps
	[131] = "%1d",		-- Winding/Adjustment Clock, Button 
	-- ENGINE INTERFACE
	[250] = "%.4f",		-- Throttle (Axis) {-1.0, 0.4} in -0.1 steps
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
	[146] = "%.4f",		-- Attitude Indicator Pitch Trim Knob (Axis) {0.0,1.0} in 0.1 steps
	-- ADI PILOT
	[145] = "%.4f",		-- Attitude Indicator Pitch Trim Knob (Axis) {0.0,1.0} in 0.1 steps
	[144] = "%.4f",		-- Attitude Indicator Roll Trim Knob (Axis) {0.0,1.0} in 0.1 steps
	-- AAU32
	-- Copilot's altimeter
	[172] = "%.4f",		-- Pressure Adjustment (Axis) {0.0,1.0} in 0.2 steps
	-- AAU7
	-- Pilot's altimeter
	[181] = "%.4f",		-- Pressure Adjustment (Axis) {0.0,1.0} in 0.2 steps
	-- VHF ARC-134
	[6] = "%1d",		-- Comm Test Button
	[7] = "%.2f",		-- Frequency MHz / Power. Right mouse click to cycle power. Rotate mouse wheel to change frequency value, Button {0.85, 1.0}
	[5] = "%.1f",		-- Frequency MHz / Power. Right mouse click to cycle power. Rotate mouse wheel to change frequency value (Axis) {0.0, 1.0} in 0.1 Steps
	[8] = "%.2f",		-- Frequency kHz / Volume. Rotate mouse wheel to change frequency value. Left or Right click to adjust volume (Axis) {0.0, 0.65} in 0.05 Steps
	[9] = "%.1f",		-- Frequency kHz / Volume. Rotate mouse wheel to change frequency value. Left or Right click to adjust volume (Axis) {0.0, 1.0} in 0.1 Steps
	-- Intercom Control Panel
	[29] = "%.4f",		-- Intercom volume (Axis) {0.3,1.0} in 0.1 Steps
	[23] = "%1d",		-- VHF AM Radio Receiver
	[24] = "%1d",		-- UHF Radio Receiver
	[25] = "%1d",		-- VHF FM Radio Receiver
	[26] = "%1d",		-- Receiver 4 N/F
	[27] = "%1d",		-- INT Receiver
	[28] = "%1d",		-- Receiver NAV
	[30] = "%.1f",		-- Intercom Mode (PVT - hot line; INT - interphone; 1 - VHF FM transmitter; 2 - UHF transmitter; 3 - VHF AM transmitter; 4 - Not used) {0.0,0.1,0.2,0.3,0.4,0.5}
	[194] = "%.1f",		-- Radio/ICS
	-- ARC 51BX UHF Raido
	[16] = "%.2f",		-- Preset Channel Selector 1/2/.../19/20 {0.0,0.05,...,0.90,0.95}
	[18] = "%.4f",		-- 10 MHz Selector (Axis) {0.0,1.0} in 0.1 Steps
	[19] = "%.4f",		-- 1 MHz Selector (Axis) {0.0,1.0} in 0.1 Steps
	[20] = "%.4f",		-- 50 kHz Selector (Axis) {0.0,1.0} in 0.1 Steps
	
	[15] = "%.1f",		-- Frequency Mode Dial {0.0,0.1,0.2}
	[17] = "%.1f",		-- Function Dial {0.0,0.1,0.2,0.3}
	[22] = "%1d",		-- Squelch
	[21] = "%.4f",		-- Volume (Axis) {0.0,1.0} in 0.1 Steps
	-- VHF ARC 131
	[31] = "%.1f",		-- Frequency Tens MHz {0.3,0.4,0.5,0.6,0.7}
	[32] = "%.1f",		-- Frequency Ones MHz {0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9}
	[33] = "%.1f",		-- Frequency Decimals MHz {0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9}
	[34] = "%.1f",		-- Frequency Hundredths MHz {0.0,0.1}
	[35] = "%.1f",		-- Mode OFF/TR/RETRAN(N/F)/HOME(N/F) {0.0,0.1,0.2,0.3}
	[36] = "%.1f",		-- quelch Mode {0.0,0.1,0.2}
	[37] = "%.4f",		-- Volume (Axis) {0.0,1.0} in 0.1 Steps
	-- ARN-82
	[52] = "%.2f",		-- Frequency MHz / Power. Right mouse click to cycle power. Rotate mouse wheel to change frequency value, Button {0.8, 1.0}
	[51] = "%.4f",		-- Frequency MHz / Power. Right mouse click to cycle power. Rotate mouse wheel to change frequency value (Axis) {0.0,1.0} in 0.1 Steps
	[53] = "%.4f",		-- Frequency kHz / Volume. Rotate mouse wheel to change frequency value. Left or Right click to adjust volume (Axis) {0.0, 0.65} in 0.15 Steps
	[54] = "%.4f",		-- Frequency kHz / Volume. Rotate mouse wheel to change frequency value. Left or Right click to adjust volume (Axis) {0.0,1.0} in 0.1 Steps
	-- Marker beakon
	[57] = "%.4f",		-- Marker beacon On/Off/Volume (Axis) {0.0,1.0} in 0.1 Steps
	[55] = "%1d",		-- Marker beacon sensing
	-- AN/ARN-83
	[42] = "%.1f",		-- ADF Loop Antenna speed Left/Nom/Right {0.1,0.2,0.3}
	[41] = "%1d",		-- BFO (N/F)
	[43] = "%.1f",		-- Gain control / Mode. Right mouse click to cycle mode. Rotate mouse wheel to adjust gain (Axis) OFF/ADF/ANT/LOOP {0.0,0.3} in 0.1 Steps
	[44] = "%.4f",		-- Gain control / Mode. Right mouse click to cycle mode. Rotate mouse wheel to adjust gain (Axis) {0.0,1.0} in 0.1 Steps
	[38] = "%1d",		-- Tune control / Band selection. Right mouse click to select a band. Rotate mouse wheel to adjust tune 190/400/800 {-1.0,0.0,1.0}
	[39] = "%.4f",		-- Tune control / Band selection. Right mouse click to select a band. Rotate mouse wheel to adjust tune (Axis) {0.0,1.0} in 0.1 Steps
	-- Nav lights
	[222] = "%.1f",		-- Navigation lights, OFF/1/2/3/4/BRT {0.0,0.1,0.2,0.3,0.4,0.5}
	[223] = "%1d",		-- Position Lights, STEADY/OFF/FLASH {-1.0,0.0,1.0}
	[224] = "%1d",		-- Position Lights, DIM/BRIGHT
	[225] = "%1d",		-- Anti-Collision Lights, ON/OFF
	[202] = "%1d",		-- Landing Light
	[201] = "%1d",		-- Search Light
	[205] = "%1d",		-- Landing Light Ctrl
	-- Light System
	[230] = "%.4f",		-- Overhead Console Panel Lights Brightness Rheostat (Axis) {0.0,1.0} in 0.2 Steps
	[231] = "%.4f",		-- Pedestal Lights Brightness Rheostat (Axis) {0.0,1.0} in 0.2 Steps
	[232] = "%.4f",		-- Secondary Instrument Lights Brightness Rheostat (Axis) {0.0,1.0} in 0.2 Steps
	[233] = "%.4f",		-- Engine Instrument Lights Brightness Rheostat (Axis) {0.0,1.0} in 0.2 Steps
	[234] = "%.4f",		-- Copilot Instrument Lights Brightness Rheostat (Axis) {0.0,1.0} in 0.2 Steps
	[235] = "%.4f",		-- Pilot Instrument Lights Brightness Rheostat (Axis) {0.0,1.0} in 0.2 Steps
	[226] = "%1d",		-- Dome Light Ctrl
	-- HEATING SYSTEM
	[236] = "%.1f",		-- Bleed Air, OFF/1/2/3/4 {0.0,0.1,0.2,0.3,0.4}
	-- GCI(ID-998/ASN)
	[163] = "%.4f",		-- Heading Set Knob (Axis) {0.0,1.0} in 0.1 Steps
	[161] = "%.4f",		-- Compass Synchronizing (Axis) {0.0,1.0} in 0.05 Steps
	[164] = "%1d",		-- ADF/VOR control
	[241] = "%1d",		-- DG/Slave gyro mode
	-- COURSE IND
	[155] = "%.4f",		-- Course select knob (Axis) {0.0,1.0} in 0.1 Steps
	-- weapon system
	[252] = "%1d",		-- Armed/Safe/Off {-1.0,0.0,1.0}
	[253] = "%1d",		-- Left/Right/All {-1.0,0.0,1.0}
	[256] = "%1d",		-- 7.62/2.75/40 {-1.0,0.0,1.0}
	[257] = "%.1f",		-- Rocket Pair {0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7}
	[258] = "%1d",		-- Rocket Reset
	[259] = "%1d",		-- Jettison Cover
	[260] = "%1d",		-- Jettison
	-- sighting station
	[281] = "%.4f",		-- Sighting Station Intensity (Axis) {0.0,1.0} in 0.1 Steps
	[408] = "%1d",		-- Sighting Station Lamp Switch BACKUP/OFF/MAIN {-1.0,0.0,1.0}
	
	--[0] = "%1d",		-- Pilot Sight Armed/Safe ??
	[439] = "%1d",		-- Pilot Sight On/Off
	[440] = "%.4f",		-- Pilot Sighting Station Intensity (Axis) {0.0,1.0} in 0.1 Steps
	[441] = "%.4f",		-- Sight Elevation (Axis) {-1.0,1.0} in 0.1 Steps
	-- Windshield Wipers
	[227] = "%1d",		-- Pilot/Both/Operator {-1.0,0.0,1.0}
	[229] = "%.1f",		-- Wipers Speed PARK/OFF/LOW/MED/HIGH input{-1.0,0.0,1.0} output{0.0,0.1,0.2,0.3,0.4}
	-- Stick
	[189] = "%1d",		-- Force Trim ON/OFF (Pilot)
	[193] = "%1d",		-- Force Trim ON/OFF (CoPilot)
	-- Cargo Equipment
	[195] = "%1d",		-- Cargo Release Pilot
	[198] = "%1d",		-- Cargo Release CoPilot
	[228] = "%1d",		-- Cargo Safety
	-- XM 130 Chaff Flare
	[450] = "%1d",		-- Ripple Fire Cover
	[451] = "%1d",		-- Ripple Fire
	[456] = "%1d",		-- SAFE/ARMED Switcher
	[459] = "%1d",		-- MAN/PGRM Mode
	[464] = "%1d",		-- Flare Dispense
	[457] = "%1d",		-- Armed lamp Test
	[453] = "%1d",		-- Flare counter Reset. Rotate mouse wheel to set Number, Button
	[452] = "%.4f",		-- Flare counter Reset. Rotate mouse wheel to set Number (Axis) {0.0,1.0} in 0.2 Steps
	[455] = "%1d",		-- Chaff counter Reset. Rotate mouse wheel to set Number, Button
	[454] = "%.4f",		-- Chaff counter Reset. Rotate mouse wheel to set Number (Axis) {0.0,1.0} in 0.2 Steps
	-- Radar Altimeter
	[449] = "%1d",		-- Radar Altimeter Power
	[445] = "%.4f",		-- Turn On. Low Set.
	[446] = "%1d",		-- Test / Hight Set. Left mouse click to Test. Rotate mouse wheel to set Hight, Button
	[464] = "%.4f",		-- Test / Hight Set. Left mouse click to Test. Rotate mouse wheel to set Hight (Axis) {0.0,1.0} in 0.2 Steps
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
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
	-- Magnetic Compass
	--[272] = "%.4f",		-- Heading
	ExportScript.Tools.SendData(272, string.format("%.4f", ExportScript.Tools.negate(mainPanelDevice:get_argument_value(272)))) -- negate
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
	-- ADI Pilot
	--[142] = "%.4f",		-- Attitude_Roll {1.0, -1.0}
	--ExportScript.Tools.SendData(142, string.format("%.4f", ExportScript.Tools.negate(mainPanelDevice:get_argument_value(142)))) -- negate
	-- ADI - operator
	--[135] = "%.4f",		-- Attitude_Roll_left {1.0, -1.0}
	--ExportScript.Tools.SendData(135, string.format("%.4f", ExportScript.Tools.negate(mainPanelDevice:get_argument_value(135)))) -- negate
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
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]

	-- Cockpit Light
	ExportScript.Tools.IkarusCockpitLights(mainPanelDevice, {230, 231, 232, 233, 234, 235})
	-- Overhead Console Panel Lights Brightness Rheostat, Pedestal Lights Brightness Rheostat, Secondary Instrument Lights Brightness Rheostat, Engine Instrument Lights Brightness Rheostat, Copilot Instrument Lights Brightness Rheostat, Pilot Instrument Lights Brightness Rheostat, Axis

	-- ADI, disable needles and flags
	ExportScript.Tools.SendData(2100, -1.0) -- Horizontal yellow needle
	ExportScript.Tools.SendData(2101, -1.0) -- Vertical yellow needle
	ExportScript.Tools.SendData(2102, -1.0) -- Left white needle
	
	-- ADI - operator
	--[141] = "%.1f",		-- Attitude_Off_flag_left  {0.0, 1.0} {1.0, 0.0}
	ExportScript.Tools.SendData(141, string.format("%.4f", ExportScript.Tools.negate(mainPanelDevice:get_argument_value(141)))) -- negate
	
	-- Radio
	local lVHF_ARC_134 = GetDevice(20)
	--ExportScript.Tools.SendData(2003, string.format("%7.3f", lVHF_ARC_134:get_frequency()/1000000))
	ExportScript.Tools.SendData(2003, ExportScript.Tools.RoundFreqeuncy(lVHF_ARC_134:get_frequency()/1000000))
	
	local lUHF_ARC_51 = GetDevice(22)
	--ExportScript.Tools.SendData(2000, string.format("%6.2f", lUHF_ARC_51:get_frequency()/1000000))
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy(lUHF_ARC_51:get_frequency()/1000000, "6.2", false, 0.050))
	
	local lVHF_ARC_131 = GetDevice(23)
	--ExportScript.Tools.SendData(2002, string.format("%5.2f", lVHF_ARC_131:get_frequency()/1000000))
	ExportScript.Tools.SendData(2002, ExportScript.Tools.RoundFreqeuncy(lVHF_ARC_131:get_frequency()/1000000, "5.2"))
	
	ExportScript.Tools.SendData(2005, string.format("%02d", ExportScript.Tools.round(mainPanelDevice:get_argument_value(460) * 10, 0)..ExportScript.Tools.round(mainPanelDevice:get_argument_value(461) * 10, 0)))		-- FLARE_Digit_1 -- FLARE_Digit_2
	ExportScript.Tools.SendData(2006, string.format("%02d", ExportScript.Tools.round(mainPanelDevice:get_argument_value(462) * 10, 0)..ExportScript.Tools.round(mainPanelDevice:get_argument_value(463) * 10, 0)))		-- CHAFF_Digit_1 -- CHAFF_Digit_2
	
	--[[
	-- ARN_82 VHF Navigation Set  NOT FUNCTIONAL
	--local lARN_82 = GetDevice(26)
	--ExportScript.Tools.WriteToLog('lARN_82: '..ExportScript.Tools.dump(lARN_82))
	--ExportScript.Tools.WriteToLog('lARN_82 (metatable): '..ExportScript.Tools.dump(getmetatable(lARN_82)))
	--ExportScript.Tools.SendData(2004, string.format("%6.2f", lVHF_ARC_134:get_frequency()/1000000))
	]]
	--[[
	-- ADF_ARN83
	local lpos1, pos2, lpos3, pos4
	local lADF_ARN83 = ""
	local lCockpitParams = list_cockpit_params()
	if lCockpitParams ~= nil then
	--ExportScript.Tools.WriteToLog('lCockpitParams: '..ExportScript.Tools.dump(lCockpitParams))
		lpos1, pos2 = lCockpitParams:find("ADF_FREQ:", 1)
		if pos2 ~= nil then
			lpos3, pos4 = lCockpitParams:find("%c", pos2)
			if lpos3 ~= nil then
				lADF_ARN83 = lCockpitParams:sub(pos2 + 1, lpos3 - 2)
			else
				lADF_ARN83 = lCockpitParams:sub(pos2 + 1)
			end
			--ExportScript.Tools.WriteToLog('lADF_ARN83: '..ExportScript.Tools.dump(lADF_ARN83))
			lADF_ARN83 = ExportScript.Tools.round(tonumber(lADF_ARN83) / 1000, 2)
		end
	end
	ExportScript.Tools.SendData(2007, string.format("%s", lADF_ARN83))
	]]
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
	--[[
	every frame export to hardware
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF_RADIO = GetDevice(54)
	ExportScript.Tools.SendDataDAC("ExportID", "Format")
	ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]

	-- Radio comunication
	-- UHF_ARC_51
	local lUHF_ARC_51 = GetDevice(22)
	--ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", lUHF_ARC_51:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy(lUHF_ARC_51:get_frequency()/1000000, "7.3", false, 0.050))

	local lUHF_ARC_51_PRESET = {[0.00]="1",[0.05]="2",[0.10]="3",[0.15]="4",[0.20]="5",[0.25]="6",[0.30]="7",[0.35]="8",[0.40]="9",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20"}
	ExportScript.Tools.SendDataDAC("2001", lUHF_ARC_51_PRESET[ExportScript.Tools.round(mainPanelDevice:get_argument_value(16), 2)])
	
	-- VHF_ARC_131
	local lVHF_ARC_131 = GetDevice(23)
	--ExportScript.Tools.SendDataDAC("2002", string.format("%7.3f", lVHF_ARC_131:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2002", ExportScript.Tools.RoundFreqeuncy(lVHF_ARC_131:get_frequency()/1000000))
	
	-- VHF_ARC_134
	local lVHF_ARC_134 = GetDevice(20)
	--ExportScript.Tools.SendDataDAC("2003", string.format("%7.3f", lVHF_ARC_134:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2003", ExportScript.Tools.RoundFreqeuncy(lVHF_ARC_134:get_frequency()/1000000))
	
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

	--ExportScript.Tools.WriteToLog('VHF_ARC_134: '..string.format("%7.3f", lVHF_ARC_134:get_frequency()/1000000))
	--ExportScript.Tools.WriteToLog('VHF_ARC134_Freq1: '..mainPanelDevice:get_argument_value(1))
	--ExportScript.Tools.WriteToLog('VHF_ARC134_Freq2: '..mainPanelDevice:get_argument_value(2))
	--ExportScript.Tools.WriteToLog('VHF_ARC134_Freq3: '..mainPanelDevice:get_argument_value(3))
	--ExportScript.Tools.WriteToLog('VHF_ARC134_Freq4: '..mainPanelDevice:get_argument_value(4))

	-- generic Radio display and frequency rotarys
	-------------------------------------------------
	-- genericRadioConf
	ExportScript.genericRadioConf = {}
	ExportScript.genericRadioConf['maxRadios'] = 3                       -- numbers of aviables/supported radios
	ExportScript.genericRadioConf[1] = {}                                -- first radio
	ExportScript.genericRadioConf[1]['Name'] = "AN/ARC-131 VHF FM"          -- name of radio
	ExportScript.genericRadioConf[1]['DeviceID'] = 23                    -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[1]['setFrequency'] = true              -- change frequency active
	ExportScript.genericRadioConf[1]['FrequencyMultiplicator'] = 1000000 -- Multiplicator from Hz to MHz
	ExportScript.genericRadioConf[1]['FrequencyFormat'] = "%7.3f"        -- frequency view format LUA style
	ExportScript.genericRadioConf[1]['FrequencyStep'] = 25               -- minimal step for frequency change
	ExportScript.genericRadioConf[1]['minFrequency'] = 100.000           -- lowest frequency
	ExportScript.genericRadioConf[1]['maxFrequency'] = 399.975           -- highest frequency
	ExportScript.genericRadioConf[1]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[1]['Power']['ButtonID'] = 3008         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Power']['ValueOn'] = 0.1           -- power on value from cklickable.lua
	ExportScript.genericRadioConf[1]['Power']['ValueOff'] = 0.0          -- power off value from cklickable.lua
	ExportScript.genericRadioConf[1]['Volume'] = {}                      -- volume knob active
	ExportScript.genericRadioConf[1]['Volume']['ButtonID'] = 3006        -- volume button id from cklickable.lua
--	ExportScript.genericRadioConf[1]['Preset'] = {}                      -- preset knob active
--	ExportScript.genericRadioConf[1]['Preset']['ArgumentID'] = 161       -- ManualPreset argument id from cklickable.lua
--	ExportScript.genericRadioConf[1]['Preset']['ButtonID'] = 3001        -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
--	ExportScript.genericRadioConf[1]['Preset']['List'] = {[0.0]="01",[0.05]="02",[0.10]="03",[0.15]="04",[0.20]="05",[0.25]="06",[0.30]="07",[0.35]="08",[0.40]="09",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20",[1.00]="01"}
--	ExportScript.genericRadioConf[1]['Preset']['Step'] = 0.05            -- minimal step for preset change
	ExportScript.genericRadioConf[1]['Squelch'] = {}                     -- squelch switch active
	ExportScript.genericRadioConf[1]['Squelch']['ArgumentID'] = 36       -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ButtonID'] = 3005       -- squelch button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ValueOn'] = 0.1         -- squelch on value from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ValueOff'] = 0.0        -- squelch off value from cklickable.lua
--	ExportScript.genericRadioConf[1]['Load'] = {}                        -- load button preset
--	ExportScript.genericRadioConf[1]['Load']['ButtonID'] = 3015          -- load button id from cklickable.lua
--	ExportScript.genericRadioConf[1]['ManualPreset'] = {}                -- switch manual or preset active
--	ExportScript.genericRadioConf[1]['ManualPreset']['ArgumentID'] = 167 -- ManualPreset argument id from cklickable.lua
--	ExportScript.genericRadioConf[1]['ManualPreset']['ButtonID'] = 3007  -- ManualPreset button id from cklickable.lua
--	ExportScript.genericRadioConf[1]['ManualPreset']['ValueManual'] = 0.0-- ManualPreset Manual value from cklickable.lua
--	ExportScript.genericRadioConf[1]['ManualPreset']['ValuePreset'] = 0.1-- ManualPreset Preset value from cklickable.lua

	ExportScript.genericRadioConf[2] = {}                                -- secound radio
	ExportScript.genericRadioConf[2]['Name'] = "AN/ARC-51BX UHF AM"      -- name of radio
	ExportScript.genericRadioConf[2]['DeviceID'] = 22                    -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[2]['setFrequency'] = true              -- change frequency active
	ExportScript.genericRadioConf[2]['FrequencyMultiplicator'] = 1000000 -- Multiplicator from Hz to MHz
	ExportScript.genericRadioConf[2]['FrequencyFormat'] = "%7.3f"        -- frequency view format LUA style
	ExportScript.genericRadioConf[2]['FrequencyStep'] = 50               -- minimal step for frequency change
	ExportScript.genericRadioConf[2]['minFrequency'] = 225.000           -- lowest frequency
	ExportScript.genericRadioConf[2]['maxFrequency'] = 399.950           -- highest frequency
	ExportScript.genericRadioConf[2]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[2]['Power']['ButtonID'] = 3006         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[2]['Power']['ValueOn'] = 0.1           -- power on value from cklickable.lua
	ExportScript.genericRadioConf[2]['Power']['ValueOff'] = 0.0          -- power off value from cklickable.lua
	ExportScript.genericRadioConf[2]['Volume'] = {}                      -- volume knob active
	ExportScript.genericRadioConf[2]['Volume']['ButtonID'] = 3008        -- volume button id from cklickable.lua
	ExportScript.genericRadioConf[2]['Preset'] = {}                      -- preset knob active
	ExportScript.genericRadioConf[2]['Preset']['ArgumentID'] = 16        -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[2]['Preset']['ButtonID'] = 3001        -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
	ExportScript.genericRadioConf[2]['Preset']['List'] = {[0.0]="01",[0.05]="02",[0.10]="03",[0.15]="04",[0.20]="05",[0.25]="06",[0.30]="07",[0.35]="08",[0.40]="09",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20"}
	ExportScript.genericRadioConf[2]['Preset']['Step'] = 0.05            -- minimal step for preset change
	ExportScript.genericRadioConf[2]['Squelch'] = {}                     -- squelch switch active
	ExportScript.genericRadioConf[2]['Squelch']['ArgumentID'] = 134      -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[2]['Squelch']['ButtonID'] = 3007       -- squelch button id from cklickable.lua
	ExportScript.genericRadioConf[2]['Squelch']['ValueOn'] = 1.0         -- squelch on value from cklickable.lua
	ExportScript.genericRadioConf[2]['Squelch']['ValueOff'] = 0.0        -- squelch off value from cklickable.lua
	ExportScript.genericRadioConf[2]['Load'] = {}                        -- load button preset
	ExportScript.genericRadioConf[2]['Load']['ButtonID'] = 3006          -- load button id from cklickable.lua
	ExportScript.genericRadioConf[2]['ManualPreset'] = {}                -- switch manual or preset active
	ExportScript.genericRadioConf[2]['ManualPreset']['ArgumentID'] = 135 -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[2]['ManualPreset']['ButtonID'] = 3005  -- ManualPreset button id from cklickable.lua
	ExportScript.genericRadioConf[2]['ManualPreset']['ValueManual'] = 0.1-- ManualPreset Manual value from cklickable.lua
	ExportScript.genericRadioConf[2]['ManualPreset']['ValuePreset'] = 0.0-- ManualPreset Preset value from cklickable.lua

	ExportScript.genericRadioConf[3] = {}                                -- secound radio
	ExportScript.genericRadioConf[3]['Name'] = "AN/ARC-134 VHF AM"       -- name of radio
	ExportScript.genericRadioConf[3]['DeviceID'] = 20                    -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[3]['setFrequency'] = true              -- change frequency active
	ExportScript.genericRadioConf[3]['FrequencyMultiplicator'] = 1000000 -- Multiplicator from Hz to MHz
	ExportScript.genericRadioConf[3]['FrequencyFormat'] = "%7.3f"        -- frequency view format LUA style
	ExportScript.genericRadioConf[3]['FrequencyStep'] = 25               -- minimal step for frequency change
	ExportScript.genericRadioConf[3]['minFrequency'] = 100.000           -- lowest frequency
	ExportScript.genericRadioConf[3]['maxFrequency'] = 399.975           -- highest frequency
	ExportScript.genericRadioConf[3]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[3]['Power']['ButtonID'] = 3001         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[3]['Power']['ValueOn'] = 1.0           -- power on value from cklickable.lua
	ExportScript.genericRadioConf[3]['Power']['ValueOff'] = 0.85          -- power off value from cklickable.lua
	ExportScript.genericRadioConf[3]['Volume'] = {}                      -- volume knob active
	ExportScript.genericRadioConf[3]['Volume']['ButtonID'] = 3003        -- volume button id from cklickable.lua
--	ExportScript.genericRadioConf[3]['Preset'] = {}                      -- preset knob active
--	ExportScript.genericRadioConf[3]['Preset']['ArgumentID'] = 151       -- ManualPreset argument id from cklickable.lua
--	ExportScript.genericRadioConf[3]['Preset']['ButtonID'] = 3001        -- preset button id from cklickable.lua
--	ExportScript.genericRadioConf[3]['Preset']['ButtonID2'] = 3002       -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
--	ExportScript.genericRadioConf[3]['Preset']['List'] = {[0.0]="01",[0.01]="02",[0.02]="03",[0.03]="04",[0.04]="05",[0.05]="06",[0.06]="07",[0.07]="08",[0.08]="09",[0.09]="10",[0.10]="11",[0.11]="12",[0.12]="13",[0.13]="14",[0.14]="15",[0.15]="16",[0.16]="17",[0.17]="18",[0.18]="19",[0.19]="20",[0.20]="01"}
--	ExportScript.genericRadioConf[3]['Preset']['Step'] = 0.01            -- minimal step for preset change
--	ExportScript.genericRadioConf[3]['Preset']['Step2'] = -0.01          -- minimal step for preset change
--	ExportScript.genericRadioConf[3]['Squelch'] = {}                     -- squelch switch active
--	ExportScript.genericRadioConf[3]['Squelch']['ArgumentID'] = 148      -- ManualPreset argument id from cklickable.lua
--	ExportScript.genericRadioConf[3]['Squelch']['ButtonID'] = 3008       -- squelch button id from cklickable.lua
--	ExportScript.genericRadioConf[3]['Squelch']['ValueOn'] = 0.0         -- squelch on value from cklickable.lua
--	ExportScript.genericRadioConf[3]['Squelch']['ValueOff'] = -1.0        -- squelch off value from cklickable.lua
--	ExportScript.genericRadioConf[3]['Load'] = {}                        -- load button preset
--	ExportScript.genericRadioConf[3]['Load']['ButtonID'] = 3004          -- load button id from cklickable.lua
--	ExportScript.genericRadioConf[3]['ManualPreset'] = {}                -- switch manual or preset active
--	ExportScript.genericRadioConf[3]['ManualPreset']['ArgumentID'] = 149 -- ManualPreset argument id from cklickable.lua
--	ExportScript.genericRadioConf[3]['ManualPreset']['ButtonID'] = 3004  -- ManualPreset button id from cklickable.lua
--	ExportScript.genericRadioConf[3]['ManualPreset']['ValueManual'] = 0.2-- ManualPreset Manual value from cklickable.lua
--	ExportScript.genericRadioConf[3]['ManualPreset']['ValuePreset'] = 0.3-- ManualPreset Preset value from cklickable.lua
	
	ExportScript.genericRadio(nil, nil)
	
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