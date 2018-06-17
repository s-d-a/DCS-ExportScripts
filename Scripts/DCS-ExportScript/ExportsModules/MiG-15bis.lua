-- MiG-15Bis
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
	[225] = "%.4f",		-- Canopy
	[223] = "%.4f",		-- LeftCanopyLever
	[222] = "%.4f",		-- RightCanopyLever
	[224] = "%.4f",		-- AftCanopyLever
	[14] = "%.4f",		-- Variometer {-75.0,-60.0,-45.0,-30.0,-15.0,-10.0,-5.0,0.0,5.0,10.0,15.0,30.0,45.0,60.0,75.0} {0.0,0.075,0.151,0.24,0.352,0.401,0.448,0.5,0.553,0.6,0.649,0.76,0.848,0.925,1.0}
	[28] = "%.4f",		-- Altimeter_km {0.0, 10.0}{0.0, 1.0}
	[29] = "%.4f",		-- Altimeter_m {0.0, 1000.0}{0.0, 1.0}
	[31] = "%.4f",		-- Altimeter_Pressure {670, 790}{0.0, 1.0}
	[15] = "%.4f",		-- CLOCK_currtime_hours {0.0, 12.0}{0.0, 1.0}
	[16] = "%.4f",		-- CLOCK_currtime_minutes {0.0, 60.0}{0.0, 1.0}
	[22] = "%.4f",		-- CLOCK_flight_time_meter_status {0.0, 0.2}{0.5, 0.0}
	[18] = "%.4f",		-- CLOCK_flight_hours {0.0, 12.0}{0.0, 1.0}
	[19] = "%.4f",		-- CLOCK_flight_minutes {0.0, 60.0}{0.0, 1.0}
	[20] = "%.4f",		-- CLOCK_seconds_meter_time_minutes {0.0, 60.0}{0.0, 1.0}
	[17] = "%.4f",		-- CLOCK_seconds_meter_time_seconds {0.0, 60.0}{0.0, 1.0}
	[4] = "%.4f",		-- IAS {100.0, 1100.0}{0.0,   1.0}
	[5] = "%.4f",		-- TAS {100.0, 1100.0}{0.0,   1.0}
	[27] = "%.4f",		-- MACH {0.0,0.3,0.95}{0.12,0.215,1.0}
	[6] = "%.4f",		-- AGK_47B_roll {-1.0, 1.0}
	[7] = "%.4f",		-- AGK_47B_pitch {1.0, -1.0}
	[11] = "%.4f",		-- AGK_47B_failure_flag {0.0, 1.0}
	--[8] = "%.4f",		-- AGK_47B_sideslip {-1.0, 1.0}
	[9] = "%.4f",		-- AGK_47B_turn {-1.0, 1.0}
	[10] = "%.4f",		-- AGK_47B_horizon {-1.0, 1.0}
	[35] = "%.4f",		-- PRV_46_RAlt {-10.0, 0.0, 1200.0}{-1.0, 0.0, 1.0}
	[32] = "%.4f",		-- PDK-45 HeadingScale {1.0, 0.0}
	[33] = "%.4f",		-- PDK-45 Heading {1.0, 0.0}
	-- Weapon System
	[95] = "%.4f",		-- N37D_Ready_Lamp
	[93] = "%.4f",		-- NR23_TOP_Ready_Lamp
	[94] = "%.4f",		-- NR23_BOTTOM_Ready_Lamp
	[100] = "%.4f",		-- Tactical_Rel_Lamp
	[98] = "%.4f",		-- LEFT_BOMB_Lamp
	[99] = "%.4f",		-- RIGHT_BOMB_Lamp
	-- electric system
	[83] = "%.4f",		-- VoltAmperMeter {-1.0, 0.0, 3.0}{-1.0, 0.0, 1.0}
	[244] = "%.4f",		-- lamps_lightness 
	-- hydraulic system
	[168] = "%.4f",		-- HydraulicPressureMain {0.0, 250.0}{0.0, 1.0}
	[139] = "%.4f",		-- HydraulicPressureGain {0.0, 150.0}{0.0, 1.0}
	[169] = "%.4f",		-- HydraulicPressureAirFlaps {0.0, 80.0}{0.0, 1.0}
	[165] = "%.4f",		-- HydraulicPressureAirGears {0.0, 80.0}{0.0, 1.0}
	[172] = "%.4f",		-- HydraulicPressureMainAir {0.0, 250.0}{0.0, 1.0}
	-- gear system
	[121] = "%.4f",		-- LeftBrakePressure {0.0, 12.0}{0.0, 1.0}
	[122] = "%.4f",		-- RightBrakePressure {0.0, 12.0}{0.0, 1.0}
	-- fuel system
	[47] = "%.4f",		-- FuelQuantity {-100.0,0.0,100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,1050.0}{0.0,0.047,0.136,0.22,0.38,0.52,0.631,0.755,0.869,0.921,1.0}
	-- air system
	[188] = "%.4f",		-- CanopyAirValveIndication
	[39] = "%.4f",		-- CockpitAltitude {0.0,8000.0} {0.008,1.0}
	[40] = "%.4f",		-- PressureDifference {-0.04,0.0,0.6} {0.0,0.243,1.0}
	-- oxygen system
	[48] = "%.4f",		-- OxygenPressure {0.0,250.0} {0.0,1.0}
	[60] = "%.4f",		-- FlowBlinker
	[49] = "%.4f",		-- FlowPressure {0.0,150.0,170.0} {0.0,0.9,1.0}
	-- Engine
	[42] = "%.4f",		-- EngineTachometer {0.0,15000.0} {0.0,1.0}
	[41] = "%.4f",		-- EngineTemperature {300.0,900.0} {0.0,1.0}
	[45] = "%.4f",		-- OilTemperature {-50.0,150.0} {0.0,1.0}
	[44] = "%.4f",		-- OilPressure {0.0, 10.0} {0.0,1.0}
	[43] = "%.4f",		-- EngineFuelPressure {0.0,100.0} {0.0,1.0}
	[46] = "%.4f",		-- FuelPressure {0.0,10.0} {0.0,1.0}
	-- radio compass
	[238] = "%.4f",		-- ARC5_Band {0.0, 2.0} {0.0, 0.4}
	[176] = "%.4f",		-- ARC5_TuningMeter
	[175] = "%.4f",		-- ARC5_Tuning {0.0, 0.2} {0.0, 1.0}
	[38] = "%.4f",		-- ARC5_Bearing
	[239] = "%.4f",		-- ARC5_FreqScale {0.0,0.5,1.0,1.5,2.0,2.5,3.0} {0.0,0.0695,0.14,0.2865,0.43,0.7155,1.0}
	-- Radio RSI-6K
	[235] = "%.4f",		-- RadioAntennaPower
	[128] = "%.4f",		-- RadioReceiverKnob {0.0, 0.2}{0.0, 1.0}
	[127] = "%.4f",		-- RadioReceiverInd {0.0, 1.0}{0.036, 0.961}
	[144] = "%.4f",		-- RadioReceiverGauge {0.0, 1.0}{0.026, 0.957}
	[245] = "%.4f",		-- ASP_3N_Range
	-- Lamps
	-- electric system
	[57] = "%.f",		-- lamp_GeneratorOff {-1.0, 1.0}{-1.0, 1.0}
	[58] = "%.f",		-- lamp_Ignition {-1.0, 1.0}{-1.0, 1.0}
	-- power plant
	[119] = "%.f",		-- lamp_IsolatingValve {-1.0, 1.0}{-1.0, 1.0}
	-- gear system
	[75] = "%.f",		-- lamp_LeftGearExt {-1.0, 1.0}{-1.0, 1.0}
	[74] = "%.f",		-- lamp_LeftGearRet {-1.0, 1.0}{-1.0, 1.0}
	[79] = "%.f",		-- lamp_RightGearExt {-1.0, 1.0}{-1.0, 1.0}
	[78] = "%.f",		-- lamp_RightGearRet {-1.0, 1.0}{-1.0, 1.0}
	[77] = "%.f",		-- lamp_NoseGearExt {-1.0, 1.0}{-1.0, 1.0}
	[76] = "%.f",		-- lamp_NoseGearRet {-1.0, 1.0}{-1.0, 1.0}
	[53] = "%.f",		-- lamp_ExtendGears {-1.0, 1.0}{-1.0, 1.0}
	-- fuel system
	[56] = "%.f",		-- lamp_Remain300 {-1.0, 1.0}{-1.0, 1.0}
	[50] = "%.f",		-- lamp_AftEmpty {-1.0, 1.0}{-1.0, 1.0}
	[52] = "%.f",		-- lamp_DropTanks {-1.0, 1.0}{-1.0, 1.0}
	[51] = "%.f",		-- lamp_BoostPressure {-1.0, 1.0}{-1.0, 1.0}
	-- control system
	[113] = "%.f",		-- lamp_TrimmerNeutral {-1.0, 1.0}{-1.0, 1.0}
	[59] = "%.f",		-- lamp_FlapsExt {-1.0, 1.0}{-1.0, 1.0}
	[124] = "%.f",		-- lamp_AirBrakeExt {-1.0, 1.0}{-1.0, 1.0}
	-- fire extinguisher system
	[135] = "%.f",		-- lamp_FireDetected {-1.0, 1.0}{-1.0, 1.0}
	-- ARC-5
	[183] = "%.f",		-- lamp_ARC_5 {-1.0, 1.0}{-1.0, 1.0}
	[218] = "%.f",		-- light_ARC_5_scale {-1.0, 1.0}{-1.0, 1.0}
	-- MRP-48P
	[54] = "%.f",		-- lamp_Marker {-1.0, 1.0}{-1.0, 1.0}
	-- Light System
	[226] = "%.4f",		-- light_LeftUV {-1.0, 1.0}{-1.0, 1.0}
	[215] = "%.4f",		-- light_CenterUV {-1.0, 1.0}{-1.0, 1.0}
	[227] = "%.4f",		-- light_RightUV {-1.0, 1.0}{-1.0, 1.0}
	[217] = "%.4f",		-- light_Panels {-1.0, 1.0}{-1.0, 1.0}
	[216] = "%.4f",		-- light_AuxLeftPanel {-1.0, 1.0}{-1.0, 1.0}
	-- Gun Camera
	[55] = "%.f"		-- lamp_GunCamera {-1.0, 1.0}{-1.0, 1.0}
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]

	-- Cockpit mechanics
	[221] = "%.4f",    -- Emergency Canopy Jettison - Pull to jettison
	[223] = "%.4f",    -- Left Canopy Lever, OPEN/CLOSE
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
	[23] = "%.4f",    -- AChS-1 Cockpit Chronograph Left Knob (button)
	[24] = "%.4f",    -- AChS-1 Cockpit Chronograph Left Knob (rotary)
	[25] = "%.4f",    -- AChS-1 Cockpit Chronograph Right Knob (button)
	[26] = "%.4f",    -- AChS-1 Cockpit Chronograph Right Knob (rotary)
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
	[103] = "%.4f",    -- ASP-3N Gunsight Fixed Reticle Mask Lever (rotary)
	[102] = "%.4f",    -- ASP-3N Gunsight Brightness Knob (rotary)
	[201] = "%.4f",    -- ASP-3N Gunsight Target Distance (rotary)
	[105] = "%.4f",    -- ASP-3N Gunsight Color Filter, ON/OFF
	-- ARC-5 radio compass
	[180] = "%.4f",    -- ARC-5 Audio Volume Control (rotary)
	[177] = "%.4f",    -- ARC-5 Frequency Band Switch
	[174] = "%.4f",    -- ARC-5 Function Selector Switch, OFF/COMP/ANT./LOOP
	[178] = "%.4f",    -- ARC-5 LOOP L-R Switch
	--[] = "%.4f",    -- ARC-5 Tuning Crank (rotary)
	[181] = "%.4f",    -- ARC-5 Scale Light Control (rotary)
	[173] = "%.4f",    -- ARC-5 TLG-TLF Switch
	[182] = "%.4f",    -- ARC-5 Take Control Button
	[123] = "%.4f",    -- ARC-5 Near/Far NDB Switch
	[146] = "%.4f",    -- ARC-5 NDB 1 Switch
	[147] = "%.4f",    -- ARC-5 NDB 2 Switch
	[148] = "%.4f",    -- ARC-5 NDB 3 Switch
	-- RSI-6K radio
	[126] = "%.4f",    -- RSI-6K Audio Volume Control (rotary)
	[232] = "%.4f",    -- RSI-6K Wave Control (rotary)
	[230] = "%.4f",    -- RSI-6K Antenna Control (rotary)
	[231] = "%.4f",    -- RSI-6K Wave Lock
	[233] = "%.4f",    -- RSI-6K Antenna Lock
	[128] = "%.4f",    -- RSI-6K Receiver Tuning (rotary)
	[140] = "%.4f",    -- RSI-6K Receive/ARC
	[240] = "%.4f",    -- RSI-6K Forced Mode, ON/OFF
	[202] = "%.4f",    -- Microphone Button
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
	-- AGK_47B_sideslip negate
	--[8] = "%.4f",		-- AGK_47B_sideslip {-1.0, 1.0}
	ExportScript.Tools.SendData(8, string.format("%.4f", ExportScript.Tools.negate(mainPanelDevice:get_argument_value(8)))) -- negate
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

	-- Cockpit Light
	ExportScript.Tools.IkarusCockpitLights(mainPanelDevice, 220)
	-- Panels Light Rheostat
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
