-- FW-190D9 Dora
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
	[36] = "%.4f",		-- AirspeedNeedle {0,   100,   150,   200,   250,   300,   350,	  400,   500,   600,   700,  750,   800,  850, 900} = {0.0, 0.038, 0.088, 0.150, 0.216, 0.278, 0.333, 0.395, 0.530, 0.660, 0.777,0.836, 0.892, 0.938, 0.988}
	[42] = "%.4f",		-- Variometer {-30, -20,   -10,    -5,    5, 	10, 	20,   30} = {-1, -0.770, -0.558, -0.338,0.338,0.558, 0.770, 1.0}
	--TrimmNeedle
	[76] = "%.4f",		-- TrimmNeedle {-1.0, 1.0}
	--ADF
	[29] = "%.4f",		-- ADF_Vertical {-1.0, 1.0}
	[30] = "%.4f",		-- ADF_Horizont {-1.0, 1.0}
	-- Altimeter
	[35] = "%.4f",		-- Altimeter_km {0.0, 10.0} = {0.0, 1.0}
	[32] = "%.4f",		-- Altimeter_m {0.0, 1000.0} = {0.0, 1.0}
	[33] = "%.4f",		-- Altimeter_Pressure {712.56, 780.07} = {0.0, 1.0}
	-- Artificial horizon
	[37] = "%.4f",		-- AHorizon_Pitch {0.33, -0.33}
	[38] = "%.4f",		-- AHorizon_Bank {1.0, -1.0}
	[40] = "%.4f",		-- TurnNeedle {-1.0, 1.0}
	[41] = "%.4f",		-- Slipball {-1.0, 1.0}
	--oxygen pressure indicator
	[112] = "%.4f",		-- Oxygen_Pressure {0.0, 250.0} = {0.0, 1.0}
	--[113] = "%.4f",		-- Oxygen_Flow_Blinker {0.0, 1.0}
	--Remote compass
	[45] = "%.4f",		-- CompassHeading {0.0, 1.0}
	[44] = "%.4f",		-- CommandedCourse {0.0, 1.0}
	-- Engine
	[46] = "%.4f",		-- Manifold_Pressure {0.5, 2.5} = {0.0, 1.0}
	[47] = "%.4f",		-- Engine_RPM {0.0, 500.0,  1000.0, 1500, 2000, 2500, 3000, 3500, 3600.0} = {0.0, 0.032, 0.082, 0.206, 0.390, 0.601, 0.789, 0.961, 0.983}
	[96] = "%.4f",		-- Coolant_Temperature {10.0, 	20.0,	30.0,	40.0,	50.0, 	60.0,	70.0,	80.0,	90.0,	100.0,	110.0,	120.0,	130.0} = {0.070, 	0.131,	0.206,	0.289,	0.377,	0.468,	0.564,	0.655,	0.738,	0.811,	0.892,	0.946,	1.0}
	[97] = "%.4f",		-- Oil_Temperature {10.0, 	20.0,	30.0,	40.0,	50.0, 	60.0,	70.0,	80.0,	90.0,	100.0,	110.0,	120.0,	130.0} = {0.070, 	0.131,	0.206,	0.289,	0.377,	0.468,	0.564,	0.655,	0.738,	0.811,	0.892,	0.946,	1.0}
	[95] = "%.4f",		-- Oil_Pressure {0.0, 15.0} -- at = {0, 1.0}
	[106] = "%.4f",		-- MW50_Pressure {0.0, 0.1,   0.2,    0.3,   0.7,  0.8, 0.9, 1.0} -- at = {0.0, 0.068, 0.169,  0.273, 0.680, 0.780, 0.880, 1.0}
	-- Fuel
	[94] = "%.4f",		-- Fuel_Pressure {0.0, 3.0} -- at = {0.0, 1.0}
	[98] = "%.4f",		-- FuelScaleUpper {0.0,	50.0,	100.0,	150.0,	200.0,	250.0, 300.0} = {0.0,	0.130,	0.308,	0.50,	0.7,	0.87,  1.0}
	--???[98] = "%.4f",		-- FuelScaleLower {0.0,	50.0,	100.0,	150.0, 	200.0, 230.0, 250.0} = {0.0,	0.098,	0.328,	0.576,  0.833, 0.950, 1.0}
	[100] = "%.4f",		-- Fuel_Low_Fwd {0.0, 1.0}
	[101] = "%.4f",		-- Fuel_Low_Rear {0.0, 1.0}
	[195] = "%.4f",		-- Fluor_Light {0.0, 1.0}
	--Clock
	[21] = "%.4f",		-- CLOCK_currtime_hours {0.0, 12.0} = {0.0, 1.0}
	[22] = "%.4f",		-- CLOCK_currtime_minutes {0.0, 60.0} = {0.0, 1.0}
	[23] = "%.4f",		-- CLOCK_currtime_seconds {0.0, 60.0} = {0.0, 1.0}
	[27] = "%.4f",		-- CLOCK_chrono_minutes {0.0, 15.0} = {0.0, 1.0}
	--Ammon Counter
	[52] = "%.4f",		-- Ammo_Counter_1 {0.0, 500.0} = {0.0, 1.0}
	[55] = "%.4f",		-- Ammo_Counter_2 {0.0, 500.0} = {0.0, 1.0}
	[58] = "%.4f",		-- Ammo_Counter_3 {0.0, 500.0} = {0.0, 1.0}
	[61] = "%.4f",		-- Ammo_Counter_4 {0.0, 500.0} = {0.0, 1.0}
	-- Gun_Fire
	--[50] = "%.4f",		-- Gun_Fire_1 {0.0, 1.0}
	--[164] = "%.4f",		-- Gun_Fire_2 {0.0, 1.0}
	--[165] = "%.4f",		-- Gun_Fire_3 {0.0, 1.0}
	--[166] = "%.4f",		-- Gun_Fire_4 {0.0, 1.0}
	--Target System
	[133] = "%.4f",		-- 	TargetDist {0.0, 10.0, 100.0, 300.0, 600.0, 700.0, 800.0, 1000.0} = {0.0, 0.0, 0.323, 0.568, 0.709, 0.813, 0.917, 1.0}
	--Bomb Lamps
	[196] = "%.f",		-- BombLamp_1 {0.0, 1.0}
	[197] = "%.f",		-- BombLamp_2 {0.0, 1.0}
	[198] = "%.f",		-- BombLamp_3 {0.0, 1.0}
	[199] = "%.f",		-- BombLamp_4 {0.0, 1.0}
	[137] = "%.f",		-- RocketEmCvr {0.0, 1.0}
	--Gear Lamps
	[68] = "%.f",		-- L_GEAR_UP {0.0, 1.0}
	[69] = "%.f",		-- L_GEAR_DOWN {0.0, 1.0}
	[70] = "%.f",		-- R_GEAR_UP {0.0, 1.0}
	[71] = "%.f",		-- R_GEAR_DOWN {0.0, 1.0}
	--Flaps Lamps
	[72] = "%.f",		-- FLAPS_UP {0.0, 1.0}
	[73] = "%.f",		-- FLAPS_START {0.0, 1.0}
	[74] = "%1d"		-- FLAPS_DOWN {0.0, 1.0}
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	[159] = "%.2f",     -- Radiator Flaps Control (axis) 1.0 in 0.4 steps
	[160] = "%1d",     -- Cold Start/Wind Screen Washer {0, 1}
	--Engine Control Panel
	[75] = "%.1f",     -- Magneto Switch (Off, M1, M2, M1+M2) {0.0, 0.3, 0.6, 0.9}
	[104] = "%1d",     -- Starter Switch Cover {0, 1}
	[105] = "%.1f",     -- Starter Switch. Left Button - Starter Power. Right Button - Magnetic Clutch {0.0, 0.5, 1.0}
	[91] = "%1d",     -- MBG Emergency Mode Handle {0, 1}
	[85] = "%1d",     -- MW-50 Switch {0, 1}
	--Fuel system
	[90] = "%.1f",     -- Fuel Tank Selector Valve (CLOSE/FORWARD/AFT/BOTH) {0.0, 0.1, 0.2, 0.3}
	[99] = "%.1f",     -- Fuel Gauge Selector (FORWARD/NONE/AFT) {0.0, 0.5, 1.0}
	[161] = "%1d",     -- MW-B4 Selector (Not Functional)
	[162] = "%1d",     -- Primer Pump {0, 1}
	--electric system
	[79] = "%1d",     -- Electric Kill-switch
	[163] = "%1d",     -- Emergency Equipment Destruction {0, 1}
	--Circuit Breakers
	[138] = "%1d",     -- Circuit Breakers Cover {0, 1}
	[141] = "%1d",     -- Flaps, Trimmer, Artificial Horizon Power On {0, 1}
	[142] = "%1d",     -- Flaps, Trimmer, Artificial Horizon Power Off {0, 1}
	[143] = "%1d",     -- Landing Gear Power On {0, 1}
	[144] = "%1d",     -- Landing Gear Power Off {0, 1}
	[145] = "%1d",     -- Pitot and Heating Cover On {0, 1}
	[146] = "%1d",     -- Pitot and Heating Cover Off {0, 1}
	[147] = "%1d",     -- FuG25a On {0, 1}
	[148] = "%1d",     -- FuG25a Off {0, 1}
	[149] = "%1d",     -- FuG16ZY On {0, 1}
	[150] = "%1d",     -- FuG16ZY Off {0, 1}
	[151] = "%1d",     -- Instrument Lights, Gun-sight, Indicators, Compass, Starter On {0, 1}
	[152] = "%1d",     -- Instrument Lights, Gun-sight, Indicators, Compass, Starter Off {0, 1}
	[153] = "%1d",     -- Generator On {0, 1}
	[154] = "%1d",     -- Generator Off {0, 1}
	[155] = "%1d",     -- Battery On {0, 1}
	[156] = "%1d",     -- Battery Off {0, 1}
	--Circuit Breakers of additional panel
	[121] = "%1d",     -- Navigation Lights On {0, 1}
	[120] = "%1d",     -- Navigation Lights Off {0, 1}
	[123] = "%1d",     -- Forward Tank Pump On {0, 1}
	[122] = "%1d",     -- Forward Tank Pump Off {0, 1}
	[125] = "%1d",     -- Rear Tank Pump On {0, 1}
	[124] = "%1d",     -- Rear Tank Pump Off {0, 1}
	[127] = "%1d",     -- Auxiliary Tank Pump On {0, 1}
	[126] = "%1d",     -- Auxiliary Tank Pump Off {0, 1}
	[129] = "%1d",     -- MW-50 On {0, 1}
	[128] = "%1d",     -- MW-50 Off {0, 1}
	--canopy
	[115] = "%1d",     -- Canopy Emergency Release Handle {0, 1}
	[114] = "%.2f",     -- Canopy Hand Crank (axis)
	-- Throttle
	[200] = "",     -- Throttle Lock {0, 1}
	--gauges
	[34] = "%.2f",     -- Altimeter Pressure Set (axis)
	[39] = "%.2f",     -- Horizon Cage (axis) {0.0 - 0.511 in 0.04 steps}
	[43] = "%.2f",     -- Course Set (axis)
	--flaps
	[62] = "%1d",     -- Flaps Up {0, 1}
	[63] = "%1d",     -- Flaps Take Off {0, 1}
	[64] = "%1d",     -- Flaps Landing {0, 1}
	--Landing Gears Retraction
	[65] = "%1d",     -- Landing Gears Retraction {0, 1}
	[66] = "%1d",     -- Landing Gears Retraction Cover {0, 1}
	[67] = "%1d",     -- Landing Gears Extending {0, 1}
	[89] = "%1d",     -- Landing Gear Emergency Release Handle {0, 1}
	--Trimmer
	[77] = "%1d",     -- Stabilizer Trimmer Up/Down {-1, 0, 1}
	--Clock
	[24] = "%.4f",     -- Turnable Bezel (axis) in 0.2 steps
	[25] = "%.2f",     -- Wind/Set Knob (axis) in 0.1 steps
	[26] = "%1d",     -- Start - Stop Button {0, 1}
	[28] = "%1d",     -- Stopwatch Button {0, 1}
	--weapons
	[48] = "%.2f",     -- Master Arm
	[51] = "%.2f",     -- Set Gun 1 Ammunition Count (axis) in 0.4 steps
	[54] = "%.2f",     -- Set Gun 2 Ammunition Count (axis) in 0.4 steps
	[57] = "%.2f",     -- Set Gun 3 Ammunition Count (axis) in 0.4 steps
	[60] = "%.2f",     -- Set Gun 4 Ammunition Count (axis) in 0.4 steps
	[107] = "%1d",     -- Main Rocket Switch {0, 1}
	[108] = "%1d",     -- Rocket Emergency Release {0, 1}
	[109] = "%.2f",     -- Bomb Fusing Selector {0.0, 0.1, 0.2, 0.3, 0.4}
	[92] = "%1d",     -- Jettison Fuselage Stores {0, 1}
	--Gunsight
	[132] = "%1d",     -- EZ42 Power Switch {0, 1}
	[131] = "%.2f",     -- Target Wingspan (axis) in 0.1 steps
	[134] = "%1d",     -- Gunsight Night Filter {0, 1}
	[4] = "%.2f",     -- Target Distance (axis) in 0.1 steps
	[135] = "%.2f",     -- Gunsight Brightness (axis) in 0.1 steps
	[191] = "%.2f",     -- Aiming correction 1 (axis) in 0.1 steps
	--Instrument Lights Brightness
	[78] = "",     -- Instrument Lights Brightness (axis) in 0.4 steps
	--Radio
	[81] = "%.1f",     -- Radio Channel Selector {0.0, 0.1, 0.2, 0.3}
	[83] = "%.2f",     -- Radio Volume (axis) in 0.04 steps
	[84] = "%1d",     -- FT FT / Y ZF Mode Switch {0, 1}
	[82] = "%.2f",     -- Radio Tuning (+/-30 kHz) (axis) in 0.04 steps
	--Oxygen
	[110] = "%.2f",     -- Oxygen Flow Valve (axis) in 0.04 steps
	[190] = "%1d",     -- Oxygen Emergency Knob {0, 1}
	--IFF
	[86] = "%1d",     -- IFF Channel Selector {-1, 0, 1}
	[88] = "%1d"     -- IFF Check {0, 1}
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
	--[50] = "%.4f",		-- Gun_Fire_1 {0.0, 1.0}
	--[164] = "%.4f",		-- Gun_Fire_2 {0.0, 1.0}
	--[165] = "%.4f",		-- Gun_Fire_3 {0.0, 1.0}
	--[166] = "%.4f",		-- Gun_Fire_4 {0.0, 1.0}
	--[113] = "%.4f",		-- Oxygen_Flow_Blinker {0.0, 1.0}
	ExportScript.Tools.SendData(50, string.format("%.4f", mainPanelDevice:get_argument_value(50)))			-- Gun_Fire_1 {0.0, 1.0}
	ExportScript.Tools.SendData(164, string.format("%.4f", mainPanelDevice:get_argument_value(164)))		-- Gun_Fire_2 {0.0, 1.0}
	ExportScript.Tools.SendData(165, string.format("%.4f", mainPanelDevice:get_argument_value(165)))		-- Gun_Fire_3 {0.0, 1.0}
	ExportScript.Tools.SendData(166, string.format("%.4f", mainPanelDevice:get_argument_value(166)))		-- Gun_Fire_4 {0.0, 1.0}
	ExportScript.Tools.SendData(113, string.format("%.4f", mainPanelDevice:get_argument_value(113)))		-- Oxygen_Flow_Blinker {0.0, 1.0}
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
	ExportScript.Tools.SendData(50,  mainPanelDevice:get_argument_value(50)  > 0.3 and 1 or 0)		-- Gun_Fire_1 {0.0, 1.0}
	ExportScript.Tools.SendData(164, mainPanelDevice:get_argument_value(164) > 0.3 and 1 or 0)		-- Gun_Fire_2 {0.0, 1.0}
	ExportScript.Tools.SendData(165, mainPanelDevice:get_argument_value(165) > 0.3 and 1 or 0)		-- Gun_Fire_3 {0.0, 1.0}
	ExportScript.Tools.SendData(166, mainPanelDevice:get_argument_value(166) > 0.3 and 1 or 0)		-- Gun_Fire_4 {0.0, 1.0}
	ExportScript.Tools.SendData(113, mainPanelDevice:get_argument_value(113) > 0.3 and 1 or 0)		-- Oxygen_Flow_Blinker {0.0, 1.0}
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
end

-----------------------------
--     Custom functions    --
-----------------------------