-- Bf-109K-4 Kurfürst
-- Version 1.0.2

ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	[1] = "%.4f",	-- MW50 pressure {0.0, 3.0}kg/cm2 = {0.0, 1.0}
	[2] = "%.4f",	-- Airspeed Gauge {0,   100,  150,   200,  700,  750,   900,  1000} = {0.0, 0.1,  0.15,  0.2,  0.7,  0.75,  0.9,  1.0}
	-- Artificial horizon Fl_22415
	[3] = "%.4f",	-- turn indicator {-1.0, 1.0}
	[4] = "%.4f",	-- Bank {1.0, -1.0}
	[5] = "%.4f",	-- Pitch {1.0, -1.0}
	[6] = "%.4f",	-- Slipball {-1.0, 1.0}
	[7] = "%.4f",	-- Caged {0.0, 1.0}
	--Altitude Gauge
	[8] = "%.4f",	-- Altimeter_FinePtr {0.0, 1000.0} = {0.0, 1.0}
	[9] = "%.4f",	-- Altimeter_CoarsePtr {0.0, 13000.0} = {0.0, 1.0}
	[10] = "%.4f",	-- Altimeter_Pressure {712.56, 780.07} = {0.0, 1.0}
	[11] = "%.4f",	-- Pressure_Setter_Pinion {0.0, 1440.0} = {0.0, 1.0}
	-- AN5730 remote compass
	[13] = "%.4f",	-- CompassHeading {0.0, 1.0}
	[12] = "%.4f",	-- CommandedCourse {0.0, 1.0}
	-- AFN2 blind landing system
	[14] = "%.4f",	-- AFN2_Horizontal_Needle {-1.0, 1.0}
	[15] = "%.4f",	-- AFN2_Vertical_Needle {0.0, 1.0}
	[16] = "%.f",	-- AFN2_Signal_Lamp {0.0, 1.0}
	--Dual-Range Pressure Gauge
	[25] = "%.4f",	-- Fuel_Pressure {0.0, 2.0} -- kg/cm2 = {0.0, 1.0}
	[26] = "%.4f",	-- Oil_Pressure {0.0, 10.0} = {0, 1.0}
	[27] = "%.4f",	-- Coolant_Temperature {-1,   0,   130} = {-1,   0,   1}
	[28] = "%.4f",	-- Oil_Temperature {-1,   0,   130} = {-1,   0,   1}
	[29] = "%.4f",	-- Engine_RPM {400.0, 3600.0} = {0.0, 1.0}
	-- propeller pitch indicator, changed 1hour every 6degrees of pitch change 
	[30] = "%.4f",	-- Propeller_Pitch_Hour {0.0, 12.0} = {0.0, 1.0}
	[31] = "%.4f",	-- Propeller_Pitch_Minute {0.0, 60.0} = {0.0, 1.0}
	-- Manifold_Pressure
	[32] = "%.4f",	-- Manifold_Pressure {0.6, 1.8} = {0.0, 1.0}
	--fuel system
	[33] = "%.4f",	-- Fuel_Tank_Fuselage {-1.0,  0.0, 100.0, 150.0, 200.0, 250.0, 300.0, 350.0,  400.0} -- Liters = {-1.0,  0.0,  0.07, 0.175,  0.31,  0.52,  0.73,  0.88,    1.0}
	--oxygen pressure indicator
	[34] = "%.4f",	-- Oxygen_Pressure {0.0, 250.0} = {0.0, 1.0}
	--[35] = "%.1f",	-- Oxygen_Flow_Blinker {0.0, 1.0}
	-- Variometer
	[36] = "%.4f",	-- Variometer {-30,  -10,  -5,    0,   5,    10,  30} = {-0.3, -0.1, -0.05, 0.0, 0.05, 0.1, 0.3}
	--Weapon gauges
	[40] = "%.4f",	-- MG131_0_Shell_Counter {0.0, 500.0} = {0.0, 1.0}
	[41] = "%.4f",	-- MG131_1_Shell_Counter {0.0, 500.0} = {0.0, 1.0}
	--[42] = "%.4f",	-- MG131_0_Klappanker {0.0, 60.0} = {0.0, 1.0}
	--[43] = "%.4f",	-- MG131_1_Klappanker {0.0, 60.0} = {0.0, 1.0}
	[44] = "%.f",	-- LeftWing_MG151_Control_Lamp {0.0, 1.0}
	[45] = "%.f",	-- RightWing_MG151_Control_Lamp {0.0, 1.0}
	--REVI_16B_Gunsight
	[46] = "%.4f",	-- BodyState {0.0, 0.15,0.25, 1.0} = {0.0, 0.15,0.25, 1.0}
	[47] = "%.4f",	-- SmokedScreen {0.0, 1.0}
	[48] = "%.4f",	-- SightBrightness {0.0, 1.0}
	-- Landing Gear Light
	[56] = "%.f",	-- LandingGearRedLight {0.0, 1.0}
	[57] = "%.f",	-- LandingGearGreenLightLeft {0.0, 1.0}
	[58] = "%.f",	-- LandingGearGreenLightRight {0.0, 1.0}
	-- Fuel_Reserve_Lamp
	[135] = "%.f"	-- Fuel_Reserve_Lamp {0.0, 29.0} = {0.0, 1.0}
}
ExportScript.ConfigArguments =  
{
	-- FuseBox Controls - Electrical Switches
	-- RH Fuse Box Circuit Breakers
	-- Left Row
	-- A 100 - Generator Cut-Off Relay
	[114] = "%1d",	-- Generator On {0, 1}
	[151] = "%1d",	-- Generator OFF {0, 1}
	-- D 100 - Heating CB
	[115] = "%1d",	-- Pitot/Windscreen Heating On {0, 1}
	[152] = "%1d",	-- Pitot/Windscreen Heating OFF {0, 1}
	-- C 100 - Navigation Lights CB
	[116] = "%1d",	-- Nav. Lights On {0, 1}
	[153] = "%1d",	-- Nav. Lights OFF {0, 1}
	 -- C 101 - Instrument Panel Illumination CB {0, 1}
	[117] = "%1d",	-- UV Lights On {0, 1}
	[154] = "%1d",	-- UV Lights Off {0, 1}
	-- V 101 - Drop Ordnance & Optional Armament CB
	[118] = "%1d",	-- Wing / Drop Ordnance On {0, 1}
	[155] = "%1d",	-- Wing / Drop Ordnance Off {0, 1}
	-- V 100 - Systematic & Ignition CB
	[119] = "%1d",	-- Ignition On {0, 1}
	[156] = "%1d",	-- Ignition Off {0, 1}
	-- Spotlights CB - TODO implement when landing lights rustsatz is available
	--[] = "%1d",	-- Spotlights On {0, 1}
	--[] = "%1d",	-- Spotlights Off {0, 1}
	-- Right Row
	-- A 101 - Battery Cut-Off Relay
	[120] = "%1d",	-- Battery On {0, 1}
	[157] = "%1d",	-- Battery Off {0, 1}
	-- F 135 - Radio CB - Labelled "FuG 16"
	[121] = "%1d",	-- Radio On {0, 1}
	[158] = "%1d",	-- Radio Off {0, 1}
	-- F 211 - IFF CB - Labelled "FuG 25a"
	[122] = "%1d",	-- IFF On {0, 1}
	[159] = "%1d",	-- IFF Off {0, 1}
	-- E 101 - Fuel Pump CB - Labelled "Tankpumpe"
	[123] = "%1d",	-- Fuel Pump On {0, 1}
	[160] = "%1d",	-- Fuel Pump Off {0, 1}
	-- Ignition Controls and Starter and Motor-Related Switches
	-- Magneto Selector
	[59] = "%.1f",	-- Magnetos (Off, M1, M2, M1+M2) {0.0, 0.1, 0.2, 0.3}
	-- Starter Handle Cover
	[51] = "%1d",	-- Starter Handle Cover {0, 1}
	-- Starter Turn Handle
	[52] = "%1d",	-- Starter {0, 1}
	-- WM-Kommandgerat Toggle
	[62] = "%1d",	-- Governor Automation {0, 1}
	-- Dashboard and Secondary Switches
	-- A 104 - Kill Switch
	[49] = "%1d",	-- Kill Switch {0, 1}
	-- Button T - Gun Camera Trigger
	[149] = "%1d",	-- Button T {0, 1}
	-- SZKK3 Weapons Control Master Switch
	[37] = "%1d",	-- Weapons Master {0, 1}
	-- LH SZ 500 Ammo Counter
	[38] = "%.1f",	-- Left Ammo Counter Setter Pinion (axis) {0.0 - 0.0}
	-- RH SZ 500 Ammo Counter
	[39] = "%.1f",	-- Right Ammo Counter Setter Pinion (axis) {0.0 - 0.0}
	-- MW50 Operational Toggle
	[60] = "%1d",	-- MW50 Boost {0, 1}
	-- Wing Cannons Toggle
	[61] = "%1d",	-- Wing Cannons {0, 1}
	-- MK 108 / Wing Guns Toggle
	[62] = "%1d",	-- MK 108 / R 21 {0, 1}
	-- R 101 ZSK 244 A Bomb Panel Master Switch
	-- Operated internally via ZSK 244 A Mode Control
	-- R 101 ZSK 244 A Mode Selector
	[64] = "%.1f",	-- Bomb Fusing Selector (DIVE (INSTANT), DIVE (DELAYED), OFF, LEVEL (DELAYED), LEVEL (INSTANT)) {0.0, 0.25, 0.5, 0.75, 1.0}
	-- Illumination Controls
	-- C 102 LH UV Lamp Rheostat
	[80] = "%.1f",	-- Left UV Lamp Brightness (axis) {0.0 - 0.5}
	-- C 103 RH UV Lamp Rheostat
	[82] = "%.1f",	-- Right UV Lamp Brightness (axis) {0.0 - 0.5}
	-- Oxygen Apparatus Controls
	-- Apparatus Connecting Valve
	[127] = "%1d",	-- Oxygen Operating Valve {0, 1}
	[126] = "%1d",	-- Oxygen Emergency By-Pass {0, 1}
	-- Main Panel Controls
	-- Undercarriage Controls
	-- U/C Plungers Cover
	[53] = "%1d",	-- Undercarriage Controls Cover {0, 1}
	[54] = "%1d",	-- Undercarriage Raise {1.0, 1.0}
	[55] = "%1d",	-- Undercarriage Lower {1.0, 1.0}
	[63] = "%1d",	-- Undercarriage Emergency Release
	-- Fuel and MW50 Systems Controls
	-- Fuel Primer Hand Pump
	[140] = "%1d",	-- Fuel Priming Pump {0, 1}
	-- Schnellstop Lever
	[88] = "%1d",	-- Engine Stop {0, 1}
	-- Booster Pumps Lever
	[87] = "%.1f",	-- Booster Pumps (Off, P1, P2, P1+P2) {0.0, 0.1, 0.2, 0.3}
	-- Stoff-Kraftstoff Ventilbatterie Lever
	[96] = "%1d",	-- MW / Fuel {0, 1}
	-- Fuel Jettison Knob
	[112] = "%1d",	-- "Fuel / MW Jettison {0, 1}
	-- Coolant System Controls
	-- Radiator Mode Lever {0, 1}
	[113] = "%.1f",	-- Radiators Mode (Drive Off, Open, Automatic, Close) {0.0, 0.1, 0.2, 0.3}
	-- LH Radiator Hose Cut-Off Pull Handle
	[90] = "%1d",	-- LH Radiator Cut-Off {0, 1}
	-- RH Radiator Hose Cut-Off Pull Handle
	[91] = "%1d",	-- RH Radiator Cut-Off {0, 1}
	-- Navigation Instruments
	-- Altimeter
	[11] = "%.2f",	-- Altimeter Pressure Set (axis) 1.0 in 0.04 steps
	-- Artificial Horizon
	--[7] = "%.2f",	-- Horizon Cage (axis) {0.0, 0.511} in 0.04 steps
	-- Repeater Compass
	--[12] = "%.2f",	-- Course Set (axis) 0.0 in 0.04 steps
	-- Instruments
	-- Clock Scale
	[21] = "%.8f",	-- Scale Set (axis) 0.0 in 0.01612434 steps
	-- Clock Setter Pinion
	[22] = "%.1f",	-- Adjusting Knob (axis) 0.0 in 0.1 steps
	-- Clock Freeze Lever
	[23] = "%1d",	-- Time Setting Lever {0, 1}
	-- Clock Stopwatch Button
	[24] = "%1d",	-- Start/Stop/Reset Chronometer
	-- P 112 Gun Sight Brightness Rheostat {0, 1}
	--[48] = "%.1f",	-- Gun Sight Brightness (axis) 0.5 in 0.1 steps
	-- P 112 Gun Sight Folding Controls
	[139] = "%1d",	-- Gunsight Fold {0, 1}
	-- P 112 Gun Sight Smoked Screen Controls
	--[47] = "%.1f",	-- Gunsight Smoked Screen (axis) {0, 1} in 01 steps
	-- Radio Controls
	-- FUG16
	[128] = "%.1f",	-- FuG16ZY Preset Selector (1, 2, TR, SQ) {0.0, 0.1, 0.2, 0.3}
	[129] = "%.2f",	-- FuG16 ZY Fine Tune (axis) 0.5 in 0.05 steps
	[130] = "%.2f",	-- FuG16 ZY Volume (axis) 0.0 in 0.04 steps
	[131] = "%1d",	-- "Mic. On/Off {0, 1}
	-- FUG25
	[132] = "%.1f",	-- FuG25 Mode Selector (1, 2) {0.0, 1.0}
	[133] = "%1d",	-- FuG25 Test {0, 1}
	-- Left Wall Controls
	-- Tail Wheel Lock Handle
	[97] = "%1d",	-- Tail Wheel Lock {0, 1}
	-- Cockpit Open/Close Control
	[136] = "%1d",	-- Canopy (Open/Close) {0, 1}
	[137] = "%1d",	-- Canopy (Open/Close) H {0, 1}
	[138] = "%1d",	-- Canopy (Open/Close) S {0, 1}
	-- Cockpit Jettison Pull Handle
	[83] = "%1d",	-- Jettison Canopy {0, 1}
	-- Trim Wheel
	[141] = "%1d",	-- Stabilizer Trim Nose Up {0, 1}
	[142] = "%1d",	-- Stabilizer Trim Nose Down {0, 1}
	-- Flaps Wheel
	[143] = "%1d",	-- Extend Flaps {0, 1}
	[144] = "%1d",	-- Retract Flaps {0, 1}
	-- Notwurf / Ordinance Dump
	[92] = "%1d",	-- Ordinance Emergency Release
	--[98] = "$1d",	-- Cockpit Left Vent {0, 1}
	-- Right Wall Controls
	-- RH Cockpit Vent
	--[99] = "%1d",	-- Cockpit Right Vent {0, 1}
	-- Flare Gun Trigger
	[72] = "%1d",	-- Fire Flare Gun
	-- Engine Controls & Quadrant
	-- Propellor Control Rocker
	[85] = "%.1f",	-- Decrease RPM {1.0, -1.0}
	-- Radio Transmit Button
	[150] = "%1d",	-- Microphone On {0, 1}
	-- E 103 Propellor Automation Switch
	[89] = "%1d",	-- Governor Automation {0, 1}
	-- Cold Weather Start Valve Handle
	[86] = "%1d"	-- Cold Weather Start {0, 1}
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
	ExportScript.Tools.SendData(35, string.format("%0.4f", mainPanelDevice:get_argument_value(35)))	-- Oxygen_Flow_Blinker
	ExportScript.Tools.SendData(42, string.format("%0.4f", mainPanelDevice:get_argument_value(42)))	-- MG131_0_Klappanker
	ExportScript.Tools.SendData(43, string.format("%0.4f", mainPanelDevice:get_argument_value(43)))	-- MG131_1_Klappanker
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

	local lRADIO = GetDevice(14)
	--ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", lRADIO:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy(lRADIO:get_frequency()/1000000))

	-- Lamps
	ExportScript.Tools.SendDataDAC("35",  mainPanelDevice:get_argument_value(35) > 0.8 and 1 or 0)	-- Oxygen_Flow_Blinker
	ExportScript.Tools.SendDataDAC("42",  mainPanelDevice:get_argument_value(42) > 0.8 and 1 or 0)	-- MG131_0_Klappanker
	ExportScript.Tools.SendDataDAC("43",  mainPanelDevice:get_argument_value(43) > 0.8 and 1 or 0)	-- MG131_1_Klappanker

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