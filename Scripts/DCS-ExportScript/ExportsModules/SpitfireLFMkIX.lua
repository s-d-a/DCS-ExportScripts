-- Spitfire LFMk IX

-------------
-- Exports --
-------------
--[[
2000 - Radio Freq
2001 - Radio Channel
2002 - 
2003 - Compass readout
2004 - Directional Gyro Readout
2005 - Oxygen Flow Rate Pilot
2006 - isDial_oxygenFlowRatePilotEmergency
2007 - dial_oxygenSupplyPilot
2008 - isDial_oxygenSupplyPilotRedZone
2009 - isPilotOxygenEmergency (either oxygen goes emergency)
2010 - Altimeter Altitude
2011 - Altimeter Pressure setting
2012 - Efficient Climb Airspeed
2013 - Gun Wingspan
2014 - Gun Range
2015 - Optimal Target Aircraft Wingspan
2016 - (is) gear lamp down on
2017 - (is) gear lamp up on
2018 - Elevator Trim readout
2019 - Rudder Trim Readout


3000 - RPM and Boost Tile
3001 - Compass and Directional Gyro Tile
3002 - Oxygen Tile
3003 - Channel and Freq Tile
3004 - Altimeter Tile
3005 - Best Takeoff Tile
3006 - Best Combat Tile
3007 - Best Nominal Tile
3008 - Best Cruising Tile
3009 - Best Climb Tile
3010 - Gun Sight Solution Tile
3011 - Trim Tile

--]]

ExportScript.FoundDCSModule = true
ExportScript.Version.SpitfireLFMkIX = "1.2.1"

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
	[31] = "%.4f", 	-- DI gauge Directional Gyro {0.0, 1.0}{0.0, 2.0 * 3.1415926}
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
	--[45] = "%.4f"	-- ???
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
	[154] = "%.1f",	-- Rudder Trim Wheel (Axis) {-1.0, 1.0} in 0.1 Steps
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
	
	[165] = "%1d",	-- Pilot ON/OFF. 0 to 1. 1 and 0 are OFF
	
	[95] = "%1d",	-- Gear Handle Fore/Aft
	[96] = "%1d",	-- Gear Handle Left/Right
	[97] = "%1d",	-- Gear UP/DOWN roller
	
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
	
	ExportScript.trimReadouts(mainPanelDevice) -- for some reason this does not work at the bottom of this list
	ExportScript.gearLamp(mainPanelDevice) -- for some reason this does not work at the bottom of this list
	------ Working line?
	ExportScript.engLeftRpmTile(mainPanelDevice)
	ExportScript.oxygenTile(mainPanelDevice)
	ExportScript.VhfRadioTile(mainPanelDevice)
	ExportScript.navigation1Tile(mainPanelDevice)
	ExportScript.altimeterTile(mainPanelDevice)
	ExportScript.BestPowerTiles(mainPanelDevice)
	ExportScript.bestClimb(mainPanelDevice)
	ExportScript.gunnerTile(mainPanelDevice)
	ExportScript.radioButtonSelection(mainPanelDevice)
	
	
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

function ExportScript.trimReadouts(mainPanelDevice)
	--[145] = "%.2f",	-- Elevator Trim Wheel (Axis) {-1.0, 1.0} in 0.01 Steps
	--[154] = "%.1f",	-- Rudder Trim Wheel (Axis) {-1.0, 1.0} in 0.1 Steps
	
	local trimElevatorRaw = mainPanelDevice:get_argument_value(145)	
	local trimElevatorDirection = " "
	local trimElevatorDirectionShorthand = " "
	trimElevatorAmt = round(trimElevatorRaw * 100,0)
	
	
	if trimElevatorAmt > 1 then  --trim is positive, which is nose down
		trimElevatorDirection = "DOWN"
		trimElevatorDirectionShorthand = "D"
	elseif trimElevatorAmt < -1 then --trim is negative, which is nose up
		trimElevatorDirection = "UP"
		trimElevatorDirectionShorthand = "U"
	else --trim is basically neutral
		trimElevatorDirection = " "
	end
	
	trimElevatorAmt = math.abs(trimElevatorAmt)
	ExportScript.Tools.SendData(2018, "ELVTR TRM\n" .. trimElevatorAmt .. "% " .. trimElevatorDirection)
	
	
	local trimRudderRaw = mainPanelDevice:get_argument_value(154)
	local trimRudderDirection = " "
	local trimRudderDirectionShortHand = " "
	local trimRudderAmt = round(trimRudderRaw * 100,0)
	
	
	if trimRudderAmt > 1 then  --trim is positive, which is stbd
		trimRudderDirection = "STBD"
		trimRudderDirectionShortHand = "S"
	elseif trimRudderAmt < -1 then --trim is negative, which is port
		trimRudderDirection = "PORT"
		trimRudderDirectionShortHand = "P"
	else --trim is basically neutral
		trimRudderDirection = " "
	end
	
	trimRudderAmt = math.abs(trimRudderAmt)
	ExportScript.Tools.SendData(2019, "RDR TRM\n" .. trimRudderAmt .. "% " .. trimRudderDirection)
	
	ExportScript.Tools.SendData(3011, "TRIM" .. "\n" ..
										"ELVTR " .. trimElevatorAmt .. "% " .. trimElevatorDirectionShorthand .. "\n" .. 
										"RDR  " .. trimRudderAmt .. "% " .. trimRudderDirectionShortHand)
	
end

function ExportScript.engLeftRpmTile(mainPanelDevice) --boost is [39], rpm is [37]
	
	local guage_rpm = math.floor(mainPanelDevice:get_argument_value(37) * 10000)
	
	local dial_boostRaw = math.floor(mainPanelDevice:get_argument_value(39))--experemental
	
	
	local dial_boostLeft = math.floor(dial_boostRaw * 24)
	
	ExportScript.Tools.SendData(3000, string.format("Eng" .. "\n" 
													.. "RPM  ".. guage_rpm .. "\n"
													.. "Boost  ".. dial_boostLeft .. "\n"))
end


function ExportScript.oxygenTile(mainPanelDevice)
	local dial_oxygenFlowRatePilot = math.floor(mainPanelDevice:get_argument_value(11) * 100)
	ExportScript.Tools.SendData(2005, dial_oxygenFlowRatePilot)
	
	--numbers above 40 are "EMERGENCY"
	
	local isDial_oxygenFlowRatePilotEmergency
	if dial_oxygenFlowRatePilot > 40 then
		isDial_oxygenFlowRatePilotEmergency = 1
	else
		isDial_oxygenFlowRatePilotEmergency = 0
	end
	ExportScript.Tools.SendData(2006, isDial_oxygenFlowRatePilotEmergency)
	
	
	local dial_oxygenSupplyPilotRaw = mainPanelDevice:get_argument_value(12)
	
	local dial_oxygenSupplyPilot = (
										
                          (87.118 * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw)
                        - (228.16 * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw)
                        + (189.84 * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw)
                        + (51.237 * dial_oxygenSupplyPilotRaw)
                        - 0.0026)	
						
	dial_oxygenSupplyPilot = round(dial_oxygenSupplyPilot, 0)		
						
	ExportScript.Tools.SendData(2007, dial_oxygenSupplyPilot)
	
	--numbers below 12.5 (1/8 on the dial) are red zone
	local isDial_oxygenSupplyPilotRedZone
	if dial_oxygenSupplyPilot < 12.5 then
		isDial_oxygenSupplyPilotRedZone = 1
	else
		isDial_oxygenSupplyPilotRedZone = 0
	end
	ExportScript.Tools.SendData(2008, isDial_oxygenSupplyPilotRedZone)
	
	local oxygenTile_output = string.format("Oxy PLT" .. "\n" 
											.. "Flow  ".. dial_oxygenFlowRatePilot .. "k ft\n"
											.. "Amt.  ".. dial_oxygenSupplyPilot .. "\n")
	
	ExportScript.Tools.SendData(3002, oxygenTile_output)
	
	local isPilotOxygenEmergency
	if isDial_oxygenSupplyPilotRedZone == 1 or isDial_oxygenFlowRatePilotEmergency == 1 then
		isPilotOxygenEmergency = 1
	else
		isPilotOxygenEmergency = 0
	end
	
	ExportScript.Tools.SendData(2009, isPilotOxygenEmergency)
	
end

function ExportScript.VhfRadioTile(mainPanelDevice)
-- VHF_Radio
	local lVHF_Radio = GetDevice(15)
	local VhfRadioFreq
	if lVHF_Radio:is_on() then
		ExportScript.Tools.SendData(2000, string.format("%7.3f", lVHF_Radio:get_frequency()/1000000))
		VhfRadioFreq = ExportScript.Tools.RoundFreqeuncy(lVHF_Radio:get_frequency()/1000000)
		ExportScript.Tools.SendData(2000, VhfRadioFreq)
	else
		ExportScript.Tools.SendData(2000, "       ")
	end

	--[[
	[115] = "%1d",	-- Off Button
	[116] = "%1d",	-- A Button
	[117] = "%1d",	-- B Button
	[118] = "%1d",	-- C Button
	[119] = "%1d",	-- D Button]]
	local lVHF_Radio_PRESET = ""
	if mainPanelDevice:get_argument_value(116) > 0.8 then   
		lVHF_Radio_PRESET = "A"
	elseif mainPanelDevice:get_argument_value(117) > 0.8 then   
		lVHF_Radio_PRESET = "B"
	elseif mainPanelDevice:get_argument_value(118) > 0.8 then   
		lVHF_Radio_PRESET = "C"
	elseif mainPanelDevice:get_argument_value(119) > 0.8 then   
		lVHF_Radio_PRESET = "D"
	else
		lVHF_Radio_PRESET = ""
	end
	ExportScript.Tools.SendData(2001, lVHF_Radio_PRESET)
	
	ExportScript.Tools.SendData(3003, string.format("Radio " .. lVHF_Radio_PRESET .. "\n"  .. VhfRadioFreq))
	
end


function ExportScript.navigation1Tile(mainPanelDevice) -- [73]
	local dial_compass = math.floor(mainPanelDevice:get_argument_value(73) * 360)

	if dial_compass == 0 then
		dial_compass = 360
	end
	
	local dial_compassTxt = dial_compass
	if string.len(tostring(dial_compassTxt)) == 2 then
		dial_compass = string.format("0" .. dial_compass)
	elseif string.len(tostring(dial_compassTxt)) == 1 then
		dial_compass = string.format("00" .. dial_compass)
	end
	
	ExportScript.Tools.SendData(2003, dial_compass)
	
	
	local dial_directionalGyro = math.floor(mainPanelDevice:get_argument_value(31) * 360)

	if dial_directionalGyro == 0 then
		dial_directionalGyro = 360
	end
	
	local dial_directionalGyroTxt = dial_directionalGyro
	if string.len(tostring(dial_directionalGyroTxt)) == 2 then
		dial_directionalGyro = string.format("0" .. dial_directionalGyro)
	elseif string.len(tostring(dial_directionalGyroTxt)) == 1 then
		dial_directionalGyro = string.format("00" .. dial_directionalGyro)
	end
	ExportScript.Tools.SendData(2004, dial_directionalGyro)
	
	ExportScript.Tools.SendData(3001, string.format("Comp " .. dial_compass .. "\n"  
												.. "Gyro " .. dial_directionalGyro))
end


function ExportScript.altimeterTile(mainPanelDevice)
	--[26] = "%.4f", 	-- Altimeter gauge Hundreds {0.0, 1.0}{0.0, 10.0}
	--[27] = "%.4f", 	-- Altimeter gauge Thousands {0.0, 1.0}{0.0, 10.0}
	--[28] = "%.4f", 	-- Altimeter gauge Tens Thousands {0.0, 1.0}{0.0, 10.0}
	--[29] = "%.4f", 	-- Altimeter gauge Pressure {0.0, 1.0}{800.0, 1050.0}
	local dial_altimeter_tenThousands = math.floor(mainPanelDevice:get_argument_value(28) * 100000)
	local altitude = dial_altimeter_tenThousands
	altitude = round(altitude,-1)
	if altitude > 60000 then
		altitude = altitude - 100000
	end
	
	altitude = format_int(altitude)
	
	local dial_altimeterPressure = round((mainPanelDevice:get_argument_value(29) * 250) + 800,0)
	
	if string.find(dial_altimeterPressure, ".") then
		--the dot was there, dont do anything
	else --the dot is not there, so add it
		dial_altimeterPressure = string.format(dial_altimeterPressure .. ".0")
	end
	

	ExportScript.Tools.SendData(2010, "Altimeter" .. "\n" .. altitude .. "ft")
	ExportScript.Tools.SendData(2011, "Pressure" .. "\n" ..dial_altimeterPressure .. " mbar")
	ExportScript.Tools.SendData(3004, "Altitude\n" .. altitude .. " ft" .. "\n" .. dial_altimeterPressure .. " mbar")--mbar == hpa. really!

end

function ExportScript.BestPowerTiles(mainPanelDevice)
	ExportScript.Tools.SendData(3005, "Takeoff 5" .. "\n" .. "RPM 3000\nBoost 12\nAlt 305")
	ExportScript.Tools.SendData(3006, "Combat 5" .. "\n" .. "RPM 3000\nBoost 18\nAlt 5.5/16.2")
	ExportScript.Tools.SendData(3007, "Nominal 60" .. "\n" .. "RPM 2850\nBoost 12\nAlt 9/19")
	ExportScript.Tools.SendData(3008, "Cruse" .. "\n" .. "RPM 2650\nBoost 7\nAlt 12/20.7")
end

function ExportScript.bestClimb(mainPanelDevice)
	
	local dial_altimeter_tenThousands = math.floor(mainPanelDevice:get_argument_value(28) * 100000)--altitude
	local efficientAirspeed
	if dial_altimeter_tenThousands < 12000 then
		efficientAirspeed = 185
	elseif dial_altimeter_tenThousands < 15000 then
		efficientAirspeed = 180	
	elseif dial_altimeter_tenThousands < 20000 then
		efficientAirspeed = 170	
	elseif dial_altimeter_tenThousands < 25000 then
		efficientAirspeed = 160	
	elseif dial_altimeter_tenThousands < 30000 then
		efficientAirspeed = 150	
	elseif dial_altimeter_tenThousands < 33000 then
		efficientAirspeed = 140	
	elseif dial_altimeter_tenThousands < 37000 then
		efficientAirspeed = 130	
	elseif dial_altimeter_tenThousands < 40000 then
		efficientAirspeed = 120	
	else
		efficientAirspeed = 110	
	end
	ExportScript.Tools.SendData(3009, "Climb" .. "\n" .. "RPM 2650\nBoost 7\n" .. efficientAirspeed .. " mph")
	ExportScript.Tools.SendData(2012, "Efficient\nClimb\n" .. efficientAirspeed .. " mph")
end

function ExportScript.gunnerTile(mainPanelDevice)
	local dial_gunnerWingspan = mainPanelDevice:get_argument_value(78)
	dial_gunnerWingspan = (-75.229 * dial_gunnerWingspan) + 100.51
	dial_gunnerWingspan = round(dial_gunnerWingspan,0)
	ExportScript.Tools.SendData(2013, "Gun\nWingspan\n" .. dial_gunnerWingspan .. " ft")
	
	local dial_gunnerRange = mainPanelDevice:get_argument_value(77)
	dial_gunnerRange = (301.1 * dial_gunnerRange * dial_gunnerRange) 
						+ (243.06 * dial_gunnerRange)
						+ (149.68)
	dial_gunnerRange = round(dial_gunnerRange,-1)
	ExportScript.Tools.SendData(2014, "Gun\nRange\n" .. dial_gunnerRange .. " ft")
	
	--Wingspan in feet
	local v1_wingspanFt = 19
	local I16_wingspanFt = 30
	local BF109_wingspanFt = 32
	local Fw190_wingspanFt = 34
	local spitfire_wingspanFt = 32
	local P40P51_wingspanFt = 51
	local P47_wingspanFt =  41
	local mosquito_wingspanFt =  54
	local B17G_wingspanFt =  104
	
	local optimalTargetWidthName
	
	if dial_gunnerWingspan >= (v1_wingspanFt - 1) and dial_gunnerWingspan <= (v1_wingspanFt + 1) then
		optimalTargetWidthName = "V1"
	elseif dial_gunnerWingspan >= (I16_wingspanFt - 1) and dial_gunnerWingspan <= (I16_wingspanFt + 1) then
		optimalTargetWidthName = "I-16"
	elseif dial_gunnerWingspan >= (BF109_wingspanFt - 1) and dial_gunnerWingspan <= (BF109_wingspanFt + 1) then
		optimalTargetWidthName = "BF109"
	elseif dial_gunnerWingspan >= (Fw190_wingspanFt - 1) and dial_gunnerWingspan <= (Fw190_wingspanFt + 1) then
		optimalTargetWidthName = "Fw109"
	elseif dial_gunnerWingspan >= (spitfire_wingspanFt - 1) and dial_gunnerWingspan <= (spitfire_wingspanFt + 1) then
		optimalTargetWidthName = "Spitfire"
	elseif dial_gunnerWingspan >= (P40P51_wingspanFt - 1) and dial_gunnerWingspan <= (P40P51_wingspanFt + 1) then
		optimalTargetWidthName = "P-40/51"
	elseif dial_gunnerWingspan >= (P47_wingspanFt - 1) and dial_gunnerWingspan <= (P47_wingspanFt + 1) then
		optimalTargetWidthName = "P-47"
	elseif dial_gunnerWingspan >= (mosquito_wingspanFt - 1) and dial_gunnerWingspan <= (mosquito_wingspanFt + 1) then
		optimalTargetWidthName = "Mossie"
	elseif dial_gunnerWingspan >= (B17G_wingspanFt - 1) and dial_gunnerWingspan <= (B17G_wingspanFt + 1) then
		optimalTargetWidthName = "B-17G"
	else
		optimalTargetWidthName = "Tgt - N/A"
	end

	ExportScript.Tools.SendData(2015, "Optimal\nTarget\n" .. optimalTargetWidthName)
	
	ExportScript.Tools.SendData(3010, "Gun Sight\nRng " .. dial_gunnerRange .. " ft\n" .. 
										"Base " .. dial_gunnerWingspan .. " ft\n" ..
										"" .. optimalTargetWidthName)
end




function ExportScript.gearLamp(mainPanelDevice)
	--[49] = "%1d",	-- Gear Lamp Down
	--[48] = "%1d",	-- Gear Lamp Up
	
	local gearLampDown = mainPanelDevice:get_argument_value(49)
	local gearLampUp = mainPanelDevice:get_argument_value(48)
	
	local isgearLampDownLightOn
	local isgearLampUpLightOn
	
	
	if gearLampDown == 1 then 
		isgearLampDownLightOn = 1
	else
		isgearLampDownLightOn = 0
	end
	
	if gearLampUp == 1 then 
		isgearLampUpLightOn = 1
	else
		isgearLampUpLightOn = 0
	end
	
	
	ExportScript.Tools.SendData(2016, isgearLampDownLightOn)
	ExportScript.Tools.SendData(2017, isgearLampUpLightOn)
end




-----------------------
-- General Functions --
-----------------------

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