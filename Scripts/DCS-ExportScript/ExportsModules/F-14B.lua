-- F-14B Export

ExportScript.FoundDCSModule = true
ExportScript.Version.F14B = "1.2.1"

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
	
	-- BEGIN PILOT
	-- Air Combat Maneuver Panel
	[1049] = "%1d",		-- ACM Cover, CLOSE/OPEN (0,1)
	[1048] = "%1d",		-- ACM Jettison
	[1046] = "%1d",		-- Master Arm Cover, CLOSE/OPEN (0,1)
	[1047] = "%1d",		-- Master Arm Switch, ON/OFF/TNG (-1,0,1)
	[16000] = "%.6f",	-- Gun rate, LOW/HIGH (0,1)
	[9204] = "%1d", 	-- Gun rate HIGH lamp
	[9205] = "%1d",		-- Gun rate LOW lamp
	[16001] = "%1d",	-- Sidewinder cool, OFF/ON (0,1)
	[9206] = "%1d",		-- Sidewinder cool ON lamp
	[9207] = "%1d",		-- Sidewinder cool OFF lamp
	[16002] = "%1d",	-- Missile prepare, OFF/ON (0,1)
	[9208] = "%1d",		-- Missile prepare ON lamp
	[9209] = "%1d",		-- Missile prepare OFF lamp
	[16003] = "%1d",	-- Missile mode, NORM/BRSIT (0,1)
	[9210] = "%1d",		-- Missile mode NORM lamp
	[9211] = "%1d",		-- Missile mode BRSIT lamp
	[9199] = "%1d",		-- Master Caution Reset
	[9200] = "%1d",		-- Master Caution lamp
	[239] = "%1d",		-- Emergency stores jettison
	[15014] = "%1d",	-- Right Engine Fire lamp
	[15015] = "%1d",	-- Left Engine Fire lamp
	[9201] = "%1d",		-- Hot Trigger lamp
	[9202] = "%1d",		-- Collision lamp
	[9203] = "%1d",		-- SEAM Lock lamp
	-- DISPLAY Panel: Mode
	[1015] = "%1d",		-- HUD Take-Off Mode, OFF/ON (0,1)
	[1014] = "%1d",		-- HUD Cruise Mode, OFF/ON (0,1)
	[1013] = "%1d",		-- HUD Air-to-Air Mode, OFF/ON (0,1)
	[1012] = "%1d",		-- HUD Air-to-Ground Mode, OFF/ON (0,1)
	[1011] = "%1d",		-- HUD Landing Mode, OFF/ON (0,1)
	-- DISPLAY Panel: HUD
	[1021] = "%1d",		-- HUD De-clutter, OFF/ON (0,1)
	[1020] = "%1d",		-- HUD AWL Mode, ACL/ILS (0,1)
	-- DISPLAY Panel: VDI
	[1019] = "%1d",		-- VDI Display Mode, OFF/ON (0,1)
	[1018] = "%1d",		-- VDI Landing Mode, ACL/ILS (0,1)
	-- DISPLAY Panel: HSD
	[1016] = "%1d",		-- HSD Display Mode, TID/TV (0,1)
	[1017] = "%1d",		-- HSD ECM Override, OFF/ORIDE (0,1)
	-- DISPLAY Panel: Power
	[1010] = "%1d",		-- VDI Power, OFF/ON (0,1)
	[1009] = "%1d",		-- HUD Power, OFF/ON (0,1)
	[1008] = "%1d",		-- HSD/ECMD Power, OFF/ON (0,1)
	-- DISPLAY Panel: Navigation Steer Commands
	[1002] = "%1d",		-- Steer CMD TACAN, OFF/ON (0,1)
	[1003] = "%1d",		-- Steer CMD Destination, OFF/ON (0,1)
	[1004] = "%1d",		-- Steer CMD AWL PCD, OFF/ON (0,1)
	[1005] = "%1d",		-- Steer CMD Vector, OFF/ON (0,1)
	[1006] = "%1d",		-- Steer CMD Manual, OFF/ON (0,1)
	-- DISPLAY Panel: Pitch Ladder Brightness
    [1007] = "%.4f",	-- HUD Pitch Ladder Brightness, Lev (0,1)
	-- AFCS Control Panel
	[2109] = "%1d",		-- Autopilot - Vector / Automatic Carrier Landing, ACL/OFF/VEC-PCD (-1,0,1)
	[2110] = "%1d",		-- Autopilot - Altitude Hold, OFF/ON (0,1)
	[2111] = "%1d",		-- Autopilot - Heading / Ground Track, GT/OFF/HDG (-1,0,1)
	[2112] = "%1d",		-- Autopilot - Engage, OFF/ON (-2,2)
	-- Landing Gear & Hook
	[326] = "%1d",		-- Landing Gear Lever (RB cycle emergency extend), UP/DOWN (0,1)
	[238] = "%1d",		-- Hook Extension Handle (RB cycle emergency mode), UP/DOWN (0,1)
	-- Fuel System
	[1073] = "%1d",		-- Refuel Probe, RET/EXT-FUS/EXT-ALL (-1,0,1)
	-- Oxygen-Vent Airflow Panel
	[3190] = "%1d",		-- Pilot Oxygen, OFF/ON (0,1)
	--[] = "%.4f",		-- Vent Airflow Dial, Lev (0,1)
	-- Volume/TACAN Command Panel
	[2040] = "%.4f",	-- ALR-67 Volume, Lev (0,1)
	[2039] = "%.4f",	-- Sidewinder Volume, Lev (0,1)
	[2038] = "%.4f",	-- V/UHF Volume (Pilot), Lev (0,1)	
	[292] = "%1d",		-- TACAN CMD Button, PILOT/RIO (0,1)
	-- TACAN Control Panel
	[2041] = "%.2f",	-- TACAN Mode (Pilot), OFF/REC/T-R/A-A/BCN (0,.25,.50,.75,1)
	[2036] = "%.4f",	-- TACAN Volume (Pilot), Lev (0,1)
	[2042] = "%1d",		-- TACAN Mode Normal/Inverse (Pilot), NORMAL/INVERSE (0,1)
	[2043] = "%1d",		-- TACAN Channel X/Y (Pilot), X/Y (0,1)
	[2115] = "%1d",		-- TACAN BIT (Pilot), OFF/ON (0,1)
	[8050] = "%1d",		-- TACAN BIT GO lamp (Pilot)
	[8051] = "%1d",		-- TACAN BIT NOGO lamp (Pilot)
	--[] = "%1d"		-- TACAN Channel Wheel (Tens) (Pilot), 0-12 (0,12)
	--[] = "%1d"		-- TACAN Channel Lever (Ones) (Pilot), 0-9 (0,9)
	-- ICS Control Panel
	[2048] = "%.4f",	-- ICS Volume (Pilot), Lev (0,1)
	[2045] = "%.2f",	-- ICS Amplifier Selector (Pilot), B-U/NORM/EMER (0,.50,1)
	[2044] = "%1d",		-- ICS Function Selector (Pilot), COLD-MIC/HOT-MIC,RADIO-OVRD (-1,0,1)
	-- END PILOT
	
	-- BEGIN RIO
	-- ICS Control Panel
	[400] = "%.4f"		-- ICS Volume (RIO), Lev (0,1)
	-- END RIO
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	
	-- BEGIN PILOT
	--[] = "%1d", -- TACAN BIT light
	-- END PILOT
	
	-- BEGIN RIO
	-- END RIO
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