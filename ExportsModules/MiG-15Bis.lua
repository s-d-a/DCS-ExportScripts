-- MiG-15Bis
-- Version 0.9.9 BETA

gES_FoundDCSModule = true

gES_GlassCockpitConfigEveryFrameArguments = 
{
-- arguments for export every frame
-- based of "mainpanel_init.lua"

	[225] = "%.4f",		-- Canopy
	[223] = "%.4f",		-- LeftCanopyLever
	[222] = "%.4f",		-- RightCanopyLever
	[224] = "%.4f",		-- AftCanopyLever
	[14] = "%.4f",		-- Variometer
	[28] = "%.4f",		-- Altimeter_km
	[29] = "%.4f",		-- Altimeter_m
	[31] = "%.4f",		-- Altimeter_Pressure
	[15] = "%.4f",		-- CLOCK_currtime_hours
	[16] = "%.4f",		-- CLOCK_currtime_minutes
	[22] = "%.4f",		-- CLOCK_flight_time_meter_status
	[18] = "%.4f",		-- CLOCK_flight_hours
	[19] = "%.4f",		-- CLOCK_flight_minutes
	[20] = "%.4f",		-- CLOCK_seconds_meter_time_minutes
	[17] = "%.4f",		-- CLOCK_seconds_meter_time_seconds
	[4] = "%.4f",		-- IAS
	[5] = "%.4f",		-- TAS
	[27] = "%.4f",		-- MACH
	[6] = "%.4f",		-- AGK_47B_roll
	[7] = "%.4f",		-- AGK_47B_pitch
	[11] = "%.4f",		-- AGK_47B_failure_flag
	[8] = "%.4f",		-- AGK_47B_sideslip
	[9] = "%.4f",		-- AGK_47B_turn
	[10] = "%.4f",		-- AGK_47B_horizon
	[35] = "%.4f",		-- PRV_46_RAlt
	[32] = "%.4f",		-- PDK-45 HeadingScale
	[33] = "%.4f",		-- PDK-45 Heading
	-- Weapon System
	[95] = "%.4f",		-- N37D_Ready_Lamp
	[93] = "%.4f",		-- NR23_TOP_Ready_Lamp
	[94] = "%.4f",		-- NR23_BOTTOM_Ready_Lamp
	[100] = "%.4f",		-- Tactical_Rel_Lamp
	[98] = "%.4f",		-- LEFT_BOMB_Lamp
	[99] = "%.4f",		-- RIGHT_BOMB_Lamp
	-- electric system	
	[83] = "%.4f",		-- VoltAmperMeter
	[244] = "%.4f",		-- lamps_lightness
	-- hydraulic system	
	[168] = "%.4f",		-- HydraulicPressureMain
	[139] = "%.4f",		-- HydraulicPressureGain
	[169] = "%.4f",		-- HydraulicPressureAirFlaps
	[165] = "%.4f",		-- HydraulicPressureAirGears
	[172] = "%.4f",		-- HydraulicPressureMainAir
	-- gear system
	[121] = "%.4f",		-- LeftBrakePressure
	[122] = "%.4f",		-- RightBrakePressure
	-- fuel system
	[47] = "%.4f",		-- FuelQuantity
	-- air system
	[188] = "%.4f",		-- CanopyAirValveIndication
	[39] = "%.4f",		-- CockpitAltitude
	[40] = "%.4f",		-- PressureDifference
	-- oxygen system
	[48] = "%.4f",		-- OxygenPressure
	[60] = "%.4f",		-- FlowBlinker
	[49] = "%.4f",		-- FlowPressure
	-- Engine
	[42] = "%.4f",		-- EngineTachometer
	[41] = "%.4f",		-- EngineTemperature
	[45] = "%.4f",		-- OilTemperature
	[44] = "%.4f",		-- OilPressure
	[43] = "%.4f",		-- EngineFuelPressure
	[46] = "%.4f",		-- FuelPressure
	-- radio compass	
	[238] = "%.4f",		-- ARC5_Band
	[176] = "%.4f",		-- ARC5_TuningMeter
	[175] = "%.4f",		-- ARC5_Tuning
	[38] = "%.4f",		-- ARC5_Bearing
	[239] = "%.4f",		-- ARC5_FreqScale
	-- Radio RSI-6K	
	[235] = "%.4f",		-- RadioAntennaPower
	[128] = "%.4f",		-- RadioReceiverKnob
	[127] = "%.4f",		-- RadioReceiverInd
	[144] = "%.4f",		-- RadioReceiverGauge
	[245] = "%.4f",		-- ASP_3N_Range
	-- Lamps	
	-- electric system
	[57] = "%.4f",		-- lamp_GeneratorOff
	[58] = "%.4f",		-- lamp_Ignition
	-- power plant
	[119] = "%.4f",		-- lamp_IsolatingValve
	-- gear system
	[75] = "%.4f",		-- lamp_LeftGearExt
	[74] = "%.4f",		-- lamp_LeftGearRet
	[79] = "%.4f",		-- lamp_RightGearExt
	[78] = "%.4f",		-- lamp_RightGearRet
	[77] = "%.4f",		-- lamp_NoseGearExt
	[76] = "%.4f",		-- lamp_NoseGearRet
	[53] = "%.4f",		-- lamp_ExtendGears
	-- fuel system	
	[56] = "%.4f",		-- lamp_Remain300
	[50] = "%.4f",		-- lamp_AftEmpty
	[52] = "%.4f",		-- lamp_DropTanks
	[51] = "%.4f",		-- lamp_BoostPressure
	-- control system	
	[113] = "%.4f",		-- lamp_TrimmerNeutral
	[59] = "%.4f",		-- lamp_FlapsExt
	[124] = "%.4f",		-- lamp_AirBrakeExt
	-- fire extinguisher system	
	[135] = "%.4f",		-- lamp_FireDetected
	-- ARC-5
	[183] = "%.4f",		-- lamp_ARC_5
	[218] = "%.4f",		-- light_ARC_5_scale
	-- MRP-48P
	[54] = "%.4f",		-- lamp_Marker
	-- Light System	
	[226] = "%.4f",		-- light_LeftUV
	[215] = "%.4f",		-- light_CenterUV
	[227] = "%.4f",		-- light_RightUV
	[217] = "%.4f",		-- light_Panels
	[216] = "%.4f",		-- light_AuxLeftPanel
	-- Gun Camera	
	[55] = "%.4f"		-- lamp_GunCamera	
}
gES_GlassCockpitConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]

	-- Cockpit mechanics
	[221] = "%.4f",    -- Emergency Canopy Jettison - Pull to jettison
	[222] = "%.4f",    -- Right Canopy Lever, OPEN/CLOSE
	[224] = "%.4f",    -- Aft Canopy Lever, OPEN/CLOSE
	-- Control system
	[114] = "%.4f",    -- Elevator Trimmer Switch, PULL(CLIMB)/OFF/PUSH(DESCEND)
	[142] = "%.4f",    -- Aileron Trimmer Switch, LEFT/OFF/RIGHT
	[207] = "%.4f",    -- Wing Flaps Handle, RETRACT/NEUTRAL/20 degrees/55 degrees
	[125] = "%.4f",    -- Airbrake Switch, CLOSE/OPEN
	[203] = "%.4f",    -- Hydro Booster Lever, ON/OFF
	[204] = "%.4f",    -- Throttle Friction Lever
	[198] = "%.4f",    -- Airbrake Button, Hold to extend
	-- Electric system
	[84] = "%.4f",    -- Ampere- & Voltmeter - Push to view Volts
	[149] = "%.4f",    -- Air Start Switch, ON/OFF
	[81] = "%.4f",    -- Pitot and Clock Heater Switch, ON/OFF
	[200] = "%.4f",    -- Engine Start Button - Push to start
	[214] = "%.4f",    -- Engine Start Button Cover
	-- Circuit Breakers
	[117] = "%.4f",    -- Transfer Pump Switch, ON/OFF
	[115] = "%.4f",    -- Booster Pump Switch, ON/OFF
	[120] = "%.4f",    -- Ignition Switch, ON/OFF
	[116] = "%.4f",    -- Instruments and Lights Switch, ON/OFF
	-- Right Panel
	[152] = "%.4f",    -- Accumulator Switch, ON/OFF
	[153] = "%.4f",    -- Generator Switch, ON/OFF
	[151] = "%.4f",    -- Nose Light Master Switch, ON/OFF
	[154] = "%.4f",    -- Trim Master Switch, ON/OFF
	[155] = "%.4f",    -- AGK-47B Artificial Horizon + DGMK-3 Switch, ON/OFF
	[158] = "%.4f",    -- Radio Switch, ON/OFF
	[157] = "%.4f",    -- Bombs Switch, ON/OFF
	[156] = "%.4f",    -- Emergency Drop Switch, ON/OFF
	[159] = "%.4f",    -- ARC Switch, ON/OFF
	[160] = "%.4f",    -- RV-2 Radio Altimeter Switch, ON/OFF
	[161] = "%.4f",    -- NR-23 Cannon Switch, ON/OFF
	[162] = "%.4f",    -- N-37D Cannon Switch, ON/OFF
	[163] = "%.4f",    -- ASP-3N Gunsight Switch, ON/OFF
	[164] = "%.4f",    -- S-13 Gun Camera Switch, ON/OFF
	-- HydroSystem
	[171] = "%.4f",    -- Emergency Flaps Valve
	[167] = "%.4f",    -- Emergency Gears Valve
	[170] = "%.4f",    -- Emergency Flaps Valve Cover
	[166] = "%.4f",    -- Emergency Gears Valve Cover
	[186] = "%.4f",    -- Emergency System Filling Valve
	[242] = "%.4f",    -- Air Net Valve
	[241] = "%.4f",    -- Cockpit Filling Valve
	-- Gear System
	[71] = "%.4f",    -- Landing Gear Handle, UP/DOWN
	[72] = "%.4f",    -- Gear Lamps Test Button - Push to test
	[210] = "%.4f",    -- Right Emergency Gear Release Handle
	[209] = "%.4f",    -- Left Emergency Gear Release Handle
	[85] = "%.4f",    -- Landing Gear Handle Lock, Lock/Unlock
	-- Fuel System
	[82] = "%.4f",    -- Drop Tank Signal Switch, ON/OFF
	[141] = "%.4f",    -- Oxygen Supply Valve
	[143] = "%.4f",    -- Air Valve
	[243] = "%.4f",    -- Oxygen Emergency Valve
	-- Conditioning and Heating System
	[187] = "%.4f",    -- Cockpit Air Valve
	[86] = "%.4f",    -- Ventilation Valve
	-- Internal Lights System
	[184] = "%.4f",    -- Left UV Light Rheostat
	[185] = "%.4f",    -- Right UV Light Rheostat
	[220] = "%.4f",    -- Panels Light Rheostat
	-- Nav Lights System
	[111] = "%.4f",    -- External Lights Switch, ON/OFF
	[80] = "%.4f",    -- Nose Light Switch, ON/OFF
	-- Power Plant
	[208] = "%.4f",    -- Engine Stop, CLOSE/OPEN
	[118] = "%.4f",    -- Isolating Valve Switch, ON/OFF
	-- Fire Extinguisher System
	[136] = "%.4f",    -- Engine Fire Extinguisher Button Cover
	[137] = "%.4f",    -- Engine Fire Extinguisher Button
	[138] = "%.4f",    -- Engine Fire Warning Light Test Button - Push to test
	-- Signal Flares
	[129] = "%.4f",    -- Signal Flare Switch, ON/OFF
	[130] = "%.4f",    -- Signal Flare Yellow Button
	[131] = "%.4f",    -- Signal Flare Green Button
	[132] = "%.4f",    -- Signal Flare Red Button
	[133] = "%.4f",    -- Signal Flare White Button
	----------------------------------------------------
	-- Devices
	-- AGK-47B
	[12] = "%.4f",    -- AGK-47B Artificial Horizon Cage - Pull to cage
	[13] = "%.4f",    -- AGK-47B Artificial Horizon Zero Pitch Trim Knob
	--VD-15
	[30] = "%.4f",    -- Barometric Pressure QFE Knob
	--PRV-46
	[36] = "%.4f",    -- PRV-46 Radar Altimeter Indicator Range Switch, 120m/1200m AGL
	[37] = "%.4f",    -- PRV-46 Radar Altimeter Indicator Power Switch, ON/OFF
	--PDK-45
	[34] = "%.4f",    -- Heading Knob
	[61] = "%.4f",    -- Fast Slave Button
	-- CLOCK
	[23] = "%.4f",    -- AChS-1 Cockpit Chronograph Left Knob
	[25] = "%.4f",    -- AChS-1 Cockpit Chronograph Right Knob
	-- Weapon System
	[92] = "%.4f",    -- N-37D Cannon Reload Button
	[90] = "%.4f",    -- NR-23 (Top) Cannon Reload Button
	[91] = "%.4f",    -- NR-23 (Bottom) Cannon Reload Button
	[96] = "%.4f",    -- Tactical Release Switch, ON/OFF
	[97] = "%.4f",    -- Emergency Release Button
	[104] = "%.4f",    -- Emergency Release Button Cover
	--ASP-3N Gunsight
	[101] = "%.4f",    -- ASP-3N Gunsight Mode, GYRO/FIXED
	[106] = "%.4f",    -- ASP-3N Gunsight Fixed Reticle Mask Lever
	[103] = "%.4f",    -- ASP-3N Gunsight Fixed Reticle Mask Lever
	[102] = "%.4f",    -- ASP-3N Gunsight Brightness Knob
	[201] = "%.4f",    -- ASP-3N Gunsight Target Distance
	[105] = "%.4f",    -- ASP-3N Gunsight Color Filter, ON/OFF
	-- ARC-5 radio compass
	[180] = "%.4f",    -- ARC-5 Audio Volume Control
	[177] = "%.4f",    -- ARC-5 Frequency Band Switch
	[174] = "%.4f",    -- ARC-5 Function Selector Switch, OFF/COMP/ANT./LOOP
	[178] = "%.4f",    -- ARC-5 LOOP L-R Switch
	[175] = "%.4f",    -- ARC-5 Tuning Crank
	[181] = "%.4f",    -- ARC-5 Scale Light Control
	[173] = "%.4f",    -- ARC-5 TLG-TLF Switch
	[182] = "%.4f",    -- ARC-5 Take Control Button
	[123] = "%.4f",    -- ARC-5 Near/Far NDB Switch
	[146] = "%.4f",    -- ARC-5 NDB 1 Switch
	[147] = "%.4f",    -- ARC-5 NDB 2 Switch
	[148] = "%.4f",    -- ARC-5 NDB 3 Switch
	-- RSI-6K radio
	[126] = "%.4f",    -- RSI-6K Audio Volume Control
	[232] = "%.4f",    -- RSI-6K Wave Control
	[230] = "%.4f",    -- RSI-6K Antenna Control
	[231] = "%.4f",    -- RSI-6K Wave Lock
	[233] = "%.4f",    -- RSI-6K Antenna Lock
	[128] = "%.4f",    -- RSI-6K Receiver Tuning
	[140] = "%.4f",    -- RSI-6K Receive/ARC
	[240] = "%.4f",    -- RSI-6K Forced Mode, ON/OFF
	[202] = "%.4f",    -- Microphone Button
}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessGlassCockpitDCSHighImportance
function ProcessGlassCockpitDCSConfigHighImportance(mainPanelDevice)
	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6

		-- ADI
		-- AGK_47B_roll;AGK_47B_pitch;AGK_47B_failure_flag;AGK_47B_sideslip;
		-- AGK_47B_turn;AGK_47B_horizon
		SendData(2001, string.format("%.4f;%.4f;%.4f;%.4f;%.4f;%.1f", 
										mainPanelDevice:get_argument_value(6), 
										mainPanelDevice:get_argument_value(7), 
										mainPanelDevice:get_argument_value(11),
										mainPanelDevice:get_argument_value(8),
										mainPanelDevice:get_argument_value(9),
										mainPanelDevice:get_argument_value(10)))
		-- Altimeter
		-- Altimeter_km;Altimeter_m;Altimeter_Pressure
		SendData(2002, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(28), 
										mainPanelDevice:get_argument_value(29), 
										mainPanelDevice:get_argument_value(31)))
		-- Airspeed
		-- IAS;TAS
		SendData(2003, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(4), 
										mainPanelDevice:get_argument_value(5)))
		-- Brake
		-- LeftBrakePressure;RightBrakePressure
		SendData(2004, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(121), 
										mainPanelDevice:get_argument_value(122)))
		-- Cockpit
		-- CockpitAltitude;PressureDifference;
		SendData(2005, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(39), 
										mainPanelDevice:get_argument_value(40)))
		-- FuelFlow
		-- OilTemperature;OilPressure;EngineFuelPressure;
		SendData(2006, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(45), 
										mainPanelDevice:get_argument_value(44), 
										mainPanelDevice:get_argument_value(43)))
		-- Gear
		-- lamp_LeftGearExt;lamp_LeftGearRet;lamp_RightGearExt;lamp_RightGearRet;lamp_NoseGearExt; 
		-- lamp_NoseGearRet;lamp_ExtendGears					
		SendData(2007, string.format("%.4f;%.4f;%.4f;%.4f;%.4f;%.4f;%.3f", 
										mainPanelDevice:get_argument_value(75), 
										mainPanelDevice:get_argument_value(74), 
										mainPanelDevice:get_argument_value(79),
										mainPanelDevice:get_argument_value(78),
										mainPanelDevice:get_argument_value(77),
										mainPanelDevice:get_argument_value(76),
										mainPanelDevice:get_argument_value(53)))
		-- GyroCompass
		-- HeadingScale;Heading
		SendData(2008, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(32), 
										mainPanelDevice:get_argument_value(33)))
		-- VoltAmpMeter
		-- VoltAmperMeter; lamps_lightness;
		SendData(2009, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(83), 
										mainPanelDevice:get_argument_value(244)))
		-- Clock
		-- CLOCK_currtime_hours;CLOCK_currtime_minutes;CLOCK_flight_time_meter_status;
		-- CLOCK_flight_hours; CLOCK_flight_minutes;CLOCK_seconds_meter_time_minutes;
		-- CLOCK_seconds_meter_time_seconds								
		SendData(2010, string.format("%.4f;%.4f;%.4f;%.4f;%.4f;%.4f;%.3f", 
										mainPanelDevice:get_argument_value(15), 
										mainPanelDevice:get_argument_value(16), 
										mainPanelDevice:get_argument_value(22),
										mainPanelDevice:get_argument_value(18),
										mainPanelDevice:get_argument_value(19),
										mainPanelDevice:get_argument_value(20),
										mainPanelDevice:get_argument_value(17)))
		-- Compass
		-- heading, pitch, bank
		SendData(2011, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(33), 
										mainPanelDevice:get_argument_value(7), 
										mainPanelDevice:get_argument_value(6)))
	end
end

function ProcessHARDWAREConfigHighImportance(mainPanelDevice)
--	SendDataHW("",  mainPanelDevice:get_argument_value())	-- 
	-- Lamps	
	-- electric system
	SendDataHW("57",  mainPanelDevice:get_argument_value(57))		-- lamp_GeneratorOff
	SendDataHW("58",  mainPanelDevice:get_argument_value(58))		-- lamp_Ignition
	-- power plant
	SendDataHW("119",  mainPanelDevice:get_argument_value(119))		-- lamp_IsolatingValve
	-- gear system
	SendDataHW("75",  mainPanelDevice:get_argument_value(75))		-- lamp_LeftGearExt
	SendDataHW("74",  mainPanelDevice:get_argument_value(74))		-- lamp_LeftGearRet
	SendDataHW("79",  mainPanelDevice:get_argument_value(79))		-- lamp_RightGearExt
	SendDataHW("78",  mainPanelDevice:get_argument_value(78))		-- lamp_RightGearRet
	SendDataHW("77",  mainPanelDevice:get_argument_value(77))		-- lamp_NoseGearExt
	SendDataHW("76",  mainPanelDevice:get_argument_value(76))		-- lamp_NoseGearRet
	SendDataHW("53",  mainPanelDevice:get_argument_value(53))		-- lamp_ExtendGears
	-- fuel system	
	SendDataHW("56",  mainPanelDevice:get_argument_value(56))		-- lamp_Remain300
	SendDataHW("50",  mainPanelDevice:get_argument_value(50))		-- lamp_AftEmpty
	SendDataHW("52",  mainPanelDevice:get_argument_value(52))		-- lamp_DropTanks
	SendDataHW("51",  mainPanelDevice:get_argument_value(51))		-- lamp_BoostPressure
	-- control system	
	SendDataHW("113",  mainPanelDevice:get_argument_value(113))		-- lamp_TrimmerNeutral
	SendDataHW("59",  mainPanelDevice:get_argument_value(59))		-- lamp_FlapsExt
	SendDataHW("124",  mainPanelDevice:get_argument_value(124))		-- lamp_AirBrakeExt
	-- fire extinguisher system	
	SendDataHW("135",  mainPanelDevice:get_argument_value(135))		-- lamp_FireDetected
	-- ARC-5
	SendDataHW("183",  mainPanelDevice:get_argument_value(183))		-- lamp_ARC_5
	SendDataHW("218",  mainPanelDevice:get_argument_value(218))		-- light_ARC_5_scale
	-- MRP-48P
	SendDataHW("54",  mainPanelDevice:get_argument_value(54))		-- lamp_Marker
	-- Light System	
	SendDataHW("226",  mainPanelDevice:get_argument_value(226))		-- light_LeftUV
	SendDataHW("215",  mainPanelDevice:get_argument_value(215))		-- light_CenterUV
	SendDataHW("227",  mainPanelDevice:get_argument_value(227))		-- light_RightUV
	SendDataHW("217",  mainPanelDevice:get_argument_value(217))		-- light_Panels
	SendDataHW("216",  mainPanelDevice:get_argument_value(216))		-- light_AuxLeftPanel
	-- Gun Camera	
	SendDataHW("55",  mainPanelDevice:get_argument_value(55))		-- lamp_GunCamera	
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ProcessGlassCockpitDCSConfigLowImportance
function ProcessGlassCockpitDCSConfigLowImportance(mainPanelDevice)
	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6
	end
end

function ProcessHARDWAREConfigLowImportance(mainPanelDevice)
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

	--=====================================================================================
	--[[
	WriteToLog('list_cockpit_params(): '..dump(list_cockpit_params()))
	WriteToLog('CMSP: '..dump(list_indication(7)))
	
	local ltmp1 = 0
	for ltmp2 = 0, 13, 1 do
		ltmp1 = list_indication(ltmp2)
		WriteToLog(ltmp2..': '..dump(ltmp1))
		--WriteToLog(ltmp2..' (metatable): '..dump(getmetatable(ltmp1)))
	end
	]]
--[[
	local ltmp1 = 0
	for ltmp2 = 1, 73, 1 do
		ltmp1 = GetDevice(ltmp2)
		WriteToLog(ltmp2..': '..dump(ltmp1))
		WriteToLog(ltmp2..' (metatable): '..dump(getmetatable(ltmp1)))
	end
]]
end

-----------------------------
--     Custom functions    --
-----------------------------

function genericRadio(key, value, hardware)
end
