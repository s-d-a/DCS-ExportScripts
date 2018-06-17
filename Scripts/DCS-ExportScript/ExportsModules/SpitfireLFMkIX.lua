-- Spitfire LFMk IX
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
	-- Flight Instruments
	[11] = "%.4f", 	-- OxygenDeliveryGauge {0.0, 0.4}{0.0, 4000.0}
	[12] = "%.4f", 	-- OxygenSupplyGauge
	[17] = "%.4f", 	-- TrimGauge {-1.0, 1.0}
	[18] = "%.4f", 	-- PneumaticPressureGauge {0.0, 1.0}{0.0, 600.0}
	[19] = "%.4f", 	-- Left wheel brake pressure gauge {0.0, 1.0}{0.0, 130.0}
	[20] = "%.4f", 	-- Right wheel brake pressure gauge {0.0, 1.0}{0.0, 130.0}
	[21] = "%.4f", 	-- Airspeed gauge {0.0, 0.5}{0.0, 500.0}
	[23] = "%.4f", 	-- Attitude Horizon Bank {-1.0, 1.0}
	[24] = "%.4f", 	-- Attitude Horizon Pitch {-1.0, 1.0}
	[25] = "%.4f", 	-- Variometer gauge {-1.0, 1.0}{-4000.0, 4000.0}
	[26] = "%.4f", 	-- Altimeter gauge Hundreds {0.0, 1.0}{0.0, 10.0}
	[27] = "%.4f", 	-- Altimeter gauge Thousands {0.0, 1.0}{0.0, 10.0}
	[28] = "%.4f", 	-- Altimeter gauge Tens Thousabds {0.0, 1.0}{0.0, 10.0}
	[29] = "%.4f", 	-- Altimeter gauge Pressure {0.0, 1.0}{800.0, 1050.0}
	[31] = "%.4f", 	-- DI gauge {0.0, 1.0}{0.0, 2.0 * 3.1415926}
	[33] = "%.4f", 	-- Sideslip gauge {-1.0, 1.0}
	[34] = "%.4f", 	-- Turn gauge {-1.0, 1.0}
	[35] = "%.4f", 	-- Voltmeter {0.0, 1.0}{0.0, 20.0}
	[37] = "%.4f", 	-- Tachometer {0.0, 0.5}{0.0, 5000.0}
	[39] = "%.4f", 	-- Boost gauge {0.0, 1.0}{-7.0, 24.0}
	[40] = "%.4f", 	-- Oil pressure gauge {0.0, 1.0}{0.0, 150.0}
	[41] = "%.4f", 	-- Oil temperature gauge {0.0, 1.0}{0.0, 100.0}
	[42] = "%.4f", 	-- Radiator temperature gauge {0.0, 0.7}{0.0, 140.0}
	[43] = "%.4f", 	-- Fuel contents gauge {0.0, 0.1, 1.0}{-1.0, 0.0, 37.0}
	[51] = "%.4f", 	-- Clock Hour
	[52] = "%.4f", 	-- Clock Minute
	[53] = "%.4f", 	-- Clock Second
	[71] = "%.4f", 	-- Magnetic compass CompassRoseRoll {-1.0, 1.0}{-20.0, 20.0}
	[72] = "%.4f", 	-- Magnetic compass CompassRosePitch {-1.0, 1.0}{-20.0, 20.0}
	[73] = "%.4f", 	-- Magnetic compass CompassHeading{0.0, 1.0}
	[120] = "%1d",	-- Radio Lamp A
	[121] = "%1d",	-- Radio Lamp B
	[122] = "%1d",	-- Radio Lamp C
	[123] = "%1d",	-- Radio Lamp D
	[124] = "%1d",	-- Radio Lamp R
	--[131] = "%1d",	-- UC_DOWN_C ???
	[49] = "%1d",	-- Gear Lamp Down
	[48] = "%1d",	-- Gear Lamp Up
	--[62] = "%.4f",	--  ???
	--[63] = "%.4f",	--  ???
	--[59] = "%.4f",	--  ???
	--[45] = "%.4f"	-- GUNSIGHT_RANGE ???
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	[13] = "%1d", 	-- Oxygen Apparatus Controls Valve
	-- Main Panel
	[30] = "%.1f", 	-- Altimeter (Axis) {0.0, 1.0} in 0.1 Steps
	[32] = "%.1f", 	-- DI (Axis) {0.0, 1.0} in 0.1 Steps
	[44] = "%1d", 	-- Fuel Gauge Button
	[46] = "%1d", 	-- Nav. Lights Toggle
	[47] = "%1d",	-- Flaps Lever 
	[50] = "%1d",	-- U/C Indicator Blind
	[54] = "%1d",	-- Clock Setter Pinion
	[55] = "%.1f",	-- Clock Setter Pinion (Axis) {0.0, 1.0} in 0.1 Steps
	[56] = "%1d",	-- Magnetos Toggles 1
	[57] = "%1d",	-- Magnetos Toggles 2
	[58] = "%1d",	-- Supercharger Mode Toggle
	[60] = "%.1f",	-- Illumination Controls Left (Axis) {0.0, 1.0} in 0.1 Steps
	[61] = "%.1f",	-- Illumination Controls Right (Axis) {0.0, 1.0} in 0.1 Steps
	[65] = "%1d",	-- Starter Button
	[67] = "%1d",	-- Booster Coil Button
	[69] = "%1d",	-- Primer Pump
	[68] = "%.2f",	-- Primer Pump (Axis) {0.0, 1.0} in 0.04 Steps
	[70] = "%1d",	-- Tank Pressurizer Lever
	[74] = "%.4f",	-- Magnetic Compass Ring (Axis) {0.0, 1.0} in 0.0333 Steps
	-- Gun Sight and Tertiary Weapons Controls
	[77] = "%.2f",	-- Gun Sight Setter Rings Range (Axis) {0.0, 1.0} in 0.15 Steps
	[78] = "%.2f",	-- Gun Sight Setter Rings Base (Axis) {0.0, 1.0} in 0.15 Steps
	[79] = "%1d",	-- Gun Sight Tint Screen
	[80] = "%1d",	-- Gun Sight Master Switch
	[81] = "%.1f",	-- Gun Sight Dimmer (Axis) {0.0, 1.0} in 0.1 Steps
	-- Port Wall
	[145] = "%.2f",	-- Elevator Trim Wheel (Axis) {-1.0, 1.0} in 0.01 Steps
	[146] = "%.1f",	-- Rudder Trim Wheel (Axis) {-1.0, 1.0} in 0.1 Steps
	-- Radio Remote Channel Switcher
	[115] = "%1d",	-- Off Button
	[116] = "%1d",	-- A Button
	[117] = "%1d",	-- B Button
	[118] = "%1d",	-- C Button
	[119] = "%1d",	-- D Button
	[125] = "%1d",	-- Dimmer Toggle
	[155] = "%1d",	-- Transmit Lock Toggle
	[156] = "%1d",	-- Mode Selector
	-- Throttle Quadrant
	[126] = "%.1f",	-- Throttle Lever (Axis) {-1.0, 1.0} in 0.1 Steps
	[128] = "%1d",	-- Bomb Drop Button
	[129] = "%.1f",	-- Airscrew Lever (Axis) {-1.0, 1.0} in 0.1 Steps
	[130] = "%1d",	-- Mix Cut-Off Lever
	[131] = "%1d",	-- U/C Indicator Cut-Off Toggle
	--
	[133] = "%1d",	-- Radiator Control Toggle
	[134] = "%1d",	-- Pitot Heater Toggle
	[135] = "%1d",	-- Fuel Pump Toggle
	[137] = "%1d",	-- Carb. Air Control Lever
	[158] = "%1d",	-- Oil Diluter Button
	[160] = "%1d",	-- Supercharger Mode Test Button
	[162] = "%1d",	-- Radiator Flap Test Button
	-- Stbd. Wall
	[87] = "%1d",	-- De-Icer Lever
	[88] = "%1d",	-- U/C Emergency Release Lever
	[90] = "%1d",	-- Wobble Type Fuel Pump
	-- Wobble Type Fuel Pump
	[92] = "%.1f",	-- Upward Lamp Mode Selector {0.0,0.5,1.0}
	[93] = "%.1f",	-- Downward Lamp Mode Selector {0.0,0.5,1.0}
	[94] = "%1d",	-- Morse Key
	--
	[148] = "%1d",	--  U/C Lever
	-- I.F.F. Control Box
	[106] = "%1d",	-- I.F.F. Upper Toggle (Type B)
	[107] = "%1d",	-- I.F.F. Lower Toggle (Type D)
	[109] = "%1d",	-- I.F.F. Fore Button (0)
	[110] = "%1d",	-- I.F.F. Aft Button (1)
	-- Fuel Cocks & Tertiary
	[100] = "%1d",	-- Fuel Cock
	[98] = "%1d",	-- Droptank Cock
	[99] = "%1d",	-- Droptank Release Handle
	-- Canopy Controls
	[149] = "%1d",	-- Cockpit Open/Close Control
	[140] = "%1d",	-- Cockpit Jettison Pull Ball
	[147] = "%1d"	-- Cockpit Side Door Open/Close Control
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
	-- Cockpit Light
	ExportScript.Tools.IkarusCockpitLights(mainPanelDevice, {163, 62, 63})
	-- Gauges light, left panel light, right panel light
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
	
	-- VHF_Radio
	local lVHF_Radio = GetDevice(15)
	if lVHF_Radio:is_on() then
		ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", lVHF_Radio:get_frequency()/1000000))
		ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy(lVHF_Radio:get_frequency()/1000000))
	else
		ExportScript.Tools.SendDataDAC("2000", "       ")
	end

	--[[
	[115] = "%1d",	-- Off Button
	[116] = "%1d",	-- A Button
	[117] = "%1d",	-- B Button
	[118] = "%1d",	-- C Button
	[119] = "%1d",	-- D Button]]
	local lVHF_Radio_PRESET = ""
	if mainPanelDevice:get_argument_value(116) > 0.8 then   
		lVHF_Radio_PRESET = 1
	elseif mainPanelDevice:get_argument_value(117) > 0.8 then   
		lVHF_Radio_PRESET = 2
	elseif mainPanelDevice:get_argument_value(118) > 0.8 then   
		lVHF_Radio_PRESET = 3
	elseif mainPanelDevice:get_argument_value(119) > 0.8 then   
		lVHF_Radio_PRESET = 4
	else
		lVHF_Radio_PRESET = ""
	end
	ExportScript.Tools.SendDataDAC("2001", lVHF_Radio_PRESET)
end

-----------------------------
--     Custom functions    --
-----------------------------