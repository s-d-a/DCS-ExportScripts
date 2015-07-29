-- TF-51D Export
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
	
	-- Flight Instruments
	[11] = "%.2f",		-- AirspeedNeedle
	[29] = "%.1f",		-- Variometer
	-- Altimeter
	[97] = "%.1f",		-- Altimeter_Pressure
	[96] = "%.1f",		-- Altimeter_10000_footPtr
	[24] = "%.1f",		-- Altimeter_1000_footPtr
	[25] = "%.1f",		-- Altimeter_100_footPtr
	-- Artificial horizon
	[15] = "%.1f",		-- AHorizon_Pitch
	[14] = "%.1f",		-- AHorizon_Bank
	[16] = "%.1f",		-- AHorizon_PitchShift
	[20] = "%.1f",		-- AHorizon_Caged
	-- directional gyro
	[12] = "%.1f",		-- GyroHeading
	-- turn indicator
	[27] = "%.1f",		-- TurnNeedle
	[28] = "%.1f",		-- Slipball
	-- oxygen pressure indicator
	[34] = "%.1f",		-- Oxygen_Pressure
	[33] = "%.1f",		-- Oxygen_Flow_Blinker
	-- fuel system
	[155] = "%.2f",		-- Fuel_Tank_Left
	[156] = "%.2f",		-- Fuel_Tank_Right
	[32] = "%.1f",		-- Fuel_Pressure
	-- A-11 clock
	[4] = "%.4f",		-- CLOCK_currtime_hours
	[5] = "%.4f",		-- CLOCK_currtime_minutes
	[6] = "%.4f",		-- CLOCK_currtime_seconds
	-- AN5730 remote compass
	[1] = "%.4f",		-- CompassHeading
	[2] = "%.4f",		-- CommandedCourse
	[3] = "%.4f",		-- CommandedCourseKnob
	-- TailRadarWarning
	[161] = "%.1f",		-- TailRadarWarning
	-- SCR-522A Control panel
	[122] = "%.1f",		-- A_channel_light
	[123] = "%.1f",		-- B_channel_light
	[124] = "%.1f",		-- C_channel_light
	[125] = "%.1f",		-- D_channel_light
	[126] = "%.1f",		-- Transmit_light
	-- hydraulic pressure
	[78] = "%.4f",		-- Hydraulic_Pressure
	-- Landing gears handle
	[150] = "%.4f",		-- Landing_Gear_Handle
	[151] = "%.4f",		-- Landing_Gear_Handle_Indoor
	[80] = "%.1f",		-- LandingGearGreenLight
	[82] = "%.1f",		-- LandingGearRedLight
	-- gauges
	[10] = "%.4f",		-- Manifold_Pressure
	[23] = "%.4f",		-- Engine_RPM
	[9] = "%.4f",		-- Vacuum_Suction
	[21] = "%.4f",		-- Carb_Temperature
	[22] = "%.4f",		-- Coolant_Temperature
	[30] = "%.4f",		-- Oil_Temperature
	[31] = "%.4f",		-- Oil_Pressure
	[164] = "%.1f",		-- Left_Fluor_Light
	[165] = "%.1f",		-- Right_Fluor_Light
	[59] = "%.1f",		-- Hight_Blower_Lamp
	-- Trimmer
	[170] = "%.4f",		-- Aileron_Trimmer
	[172] = "%.4f",		-- Rudder_Trimmer
	[171] = "%.4f",		-- Elevator_Trimmer
	[174] = "%.4f",		-- Control_Lock_Bracket
	[175] = "%.4f",		-- Accelerometer_main
	[177] = "%.4f",		-- Accelerometer_min
	[178] = "%.4f",		-- Accelerometer_max
	[101] = "%.4f",		-- Ammeter
	-- light
	[185] = "%.1f",		-- Left_cockpit_light
	[186] = "%.1f",		-- Right_cockpit_light
	[190] = "%.4f"		-- warEmergencyPowerLimWire
}
gES_GlassCockpitConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	
	-- Right Swich Panel
	[102] = "%d",		-- Generator Connect/Disconnect
	[103] = "%d",		-- Battery Connect/Disconnect
	[104] = "%d",		-- Gun Heating ON/OFF
	[105] = "%d",		-- Pitot Heating ON/OFF
	[106] = "%d",		-- Wing Position Lights Bright/Off/Dim
	[107] = "%d",		-- Tail Position Lights Bright/Off/Dim
	[108] = "%d",		-- Red Recognition Light Key/Off/Steady
	[109] = "%d",		-- Green Recognition Light Key/Off/Steady
	[110] = "%d",		-- Amber Recognition Light Key/Off/Steady
	[111] = "%d",		-- Recognition Lights Key
	[112] = "%d",		-- Circuit Protectors Reset
	[100] = "%d",		-- Right Fluorescent Light
	[90] = "%d",		-- Left Fluorescent Light
	-- Flight Instrument panel
	[3] = "%.4f",		-- Course Set
	[179] = "%.4f",		-- Heading Set/Cage
	[13] = "%d",		-- Heading Set/Cage Button
	[17] = "%.4f",		-- Pitch Adjustment
	[19] = "%.4f",		-- Cage
	[18] = "%d",		-- Cage Button
	[8] = "%d",		-- Winding/Adjustment Clock ??
	[7] = "%d",		-- Winding/Adjustment Clock ??
	[26] = "%.4f",		-- Set Pressure
	-- SCR-522A Control panel
	[117] = "%d",		-- Radio ON/OFF
	[118] = "%d",		-- A Channel Activate
	[119] = "%d",		-- B Channel Activate
	[120] = "%d",		-- C Channel Activate
	[121] = "%d",		-- D Channel Activate
	[127] = "%.4f",		-- Radio Lights Dimmer
	[116] = "%.4f",		-- Radio Audio Volume
	[44] = "%d",		-- Microphone On
	[129] = "%d",		-- Switch Locking Lever
	[128] = "%.4f",		-- Radio Mode Transmit/Receive/Remote
	-------------
	[71] = "%.4f",		-- Cockpit Lights
	[66] = "%0.1f",		-- Ignition Off/Right/Left/Both
	[67] = "%d",		-- Gun control Gun And Camera On/Gun And Camera OFF/Camera On
	[72] = "%d",		-- Silence Landing Gear Warning Horn Cut Off
	-- Bomb Arm/Chemical
	[69] = "%d",		-- Left Bomb Arm/Chemical
	[70] = "%d",		-- Right Bomb Arm/Chemical
	-- Release Mode
	[68] = "%0.1f",		-- Release Mode, Bombs and Rockets Safe/Bombs Train Release/Bombs Both Release/Rockets Arm
	-- Engine Control Panel
	[58] = "%d",		-- Supercharger Switch Cover
	[57] = "%0.1f",		-- Supercharger AUTO/LOW/HIGH
	[60] = "%d",		-- High Blower Lamp Test
	[61] = "%d",		-- Fuel Booster On/Off
	[62] = "%d",		-- Oil Dilute Activate
	[63] = "%d",		-- Starter Activate
	[64] = "%d",		-- Starter Switch Cover
	[65] = "%d",		-- Primer Activate
	-- Oxygen Regulator
	[131] = "%d",		-- Auto-Mix On-Off
	[130] = "%0.4f",		-- Oxygen Emergency By-pass
	-- Fuel system
	[85] = "%0.1f",		-- Fuel Selector Valve, Select Right Combat Tank/Select Left Main Tank/Select Fuselage Tank/Select Right Main Tank/Select Left Combat Tank
	[86] = "%d",		-- Fuel Shut-Off Valve ON/OFF
	-- AN/APS-13
	[114] = "%d",		-- ail Warning Radar Power ON/OFF
	[115] = "%d",		-- Tail Warning Radar Test
	[113] = "%.4f",		-- Tail Warning Radar Light Control
	-------------
	[79] = "%.4f",		-- Hydraulic Release Knob
	[94] = "%.4f",		-- Flaps Control Handle
	[84] = "%d",		-- Parking Brake Handle
	[81] = "%d",		-- Safe Landing Gear Light Test
	[83] = "%d",		-- Unsafe Landing Gear Light Test
	-- Detrola receiver
	[137] = "%0.4f",		-- Detrola Frequency Selector
	[138] = "%0.4f",		-- Detrola Volume
	-- canopy
	[147] = "%.4f",		-- Canopy Hand Crank
	[149] = "%d",		-- Canopy Emergency Release Handle
	-- AN/ARA-8
	[152] = "%0.1f",	-- Homing Adapter Mode TRANSMIT/COMM./HOMING
	[153] = "%d",		-- Homing Adapter Power On/Off
	[154] = "%d",		-- Homing Adapter's Circuit Breaker
	-- SCR-695
	[139] = "%0.1f",	-- IFF Code Selector Code 1/2/3/4/5/6
	[140] = "%d",		-- IFF Power On/Off
	[141] = "%d",		-- IFF TIME/OFF/ON
	[142] = "%d",		-- IFF Detonator Circuit On/Off
	[143] = "%d",		-- IFF Distress Signal On/Off
	[145] = "%d",		-- IFF Detonator Left
	[146] = "%d",		-- IFF Detonator Right
	-- Trimmers
	[91] = "%.4f",		-- Aileron Trim
	[92] = "%.4f",		-- Elevator Trim
	[93] = "%.4f",		-- Rudder Trim
	-------------
	[157] = "%.4f",		-- Defroster
	[158] = "%.4f",		-- Cold Air
	[159] = "%.4f",		-- Hot Air
	-------------
	[89] = "%d",		-- Landing Light On/Off
	[168] = "%d",		-- Coolant Control Cover
	[87] = "%0.1f",		-- Close Coolant Control/Automatic Coolant Control/Open Coolant Control
	[169] = "%d",		-- Oil Control Cover
	[88] = "%0.1f",		-- Close Oil Control/Automatic Oil Control/Open Oil Control
	[134] = "%0.1f",	-- Carburetor Cold Air Control
	[135] = "%0.1f",	-- Carburetor Warm Air Control
	[47] = "%0.1f",		-- Mixture Control Select IDLE CUT OFF/RUN/EMERGENCY FULL RICH
	[43] = "%.4f",		-- Throttle
	[46] = "%.4f",		-- Propeller RPM
	[173] = "%.4f",		-- Surface Control Lock Plunger. Left Button - Lock Stick in the Forward Position', Right Button - Lock Stick in the Neutral Position
	[48] = "%.4f",		-- Lock Throttle
	[49] = "%.4f",		-- Lock Propeller & Mixture
	[176] = "%.4f",		-- G-meter reset
	[183] = "%.4f"		-- Mirror
}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

function ProcessGlassCockpitDCSConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to GlassCockpit
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	SendData("ExportID", "Format")
	SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) <- special function for get frequency data
	]]
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
	-- TailRadarWarning
	SendDataHW("161", mainPanelDevice:get_argument_value(161) > 0.3 and 1 or 0)		-- Lamp TailRadarWarning
	-- SCR-522A Control panel
	SendDataHW("122", mainPanelDevice:get_argument_value(122) > 0.3 and 1 or 0)		-- A_channel_light
	SendDataHW("123", mainPanelDevice:get_argument_value(123) > 0.3 and 1 or 0)		-- B_channel_light
	SendDataHW("124", mainPanelDevice:get_argument_value(124) > 0.3 and 1 or 0)		-- C_channel_light
	SendDataHW("125", mainPanelDevice:get_argument_value(125) > 0.3 and 1 or 0)		-- D_channel_light
	SendDataHW("126", mainPanelDevice:get_argument_value(126) > 0.3 and 1 or 0)		-- Transmit_light
	-- Landing gears
	SendDataHW("80", mainPanelDevice:get_argument_value(80) > 0.3 and 1 or 0)		-- LandingGearGreenLight
	SendDataHW("82", mainPanelDevice:get_argument_value(82) > 0.3 and 1 or 0)		-- LandingGearRedLight
	-- Engine
	SendDataHW("59", mainPanelDevice:get_argument_value(59) > 0.3 and 1 or 0)		-- Hight_Blower_Lamp
	-- Cockpit Lights
	SendDataHW("164", mainPanelDevice:get_argument_value(164) > 0.3 and 1 or 0)		-- Left_Fluor_Light
	SendDataHW("165", mainPanelDevice:get_argument_value(165) > 0.3 and 1 or 0)		-- Right_Fluor_Light
	SendDataHW("185", mainPanelDevice:get_argument_value(185) > 0.3 and 1 or 0)		-- Left_cockpit_light
	SendDataHW("186", mainPanelDevice:get_argument_value(186) > 0.3 and 1 or 0)		-- Right_cockpit_light
	
	--[[
	-- dimming lights
	-- TailRadarWarning
	SendDataHW("161", string.format("%.1f", mainPanelDevice:get_argument_value(161)))		-- Lamp TailRadarWarning
	-- SCR-522A Control panel
	SendDataHW("122", string.format("%.1f", mainPanelDevice:get_argument_value(122)))		-- A_channel_light
	SendDataHW("123", string.format("%.1f", mainPanelDevice:get_argument_value(123)))		-- B_channel_light
	SendDataHW("124", string.format("%.1f", mainPanelDevice:get_argument_value(124)))		-- C_channel_light
	SendDataHW("125", string.format("%.1f", mainPanelDevice:get_argument_value(125)))		-- D_channel_light
	SendDataHW("126", string.format("%.1f", mainPanelDevice:get_argument_value(126)))		-- Transmit_light
	-- Landing gears
	SendDataHW("80", string.format("%.1f", mainPanelDevice:get_argument_value(80)))		-- LandingGearGreenLight
	SendDataHW("82", string.format("%.1f", mainPanelDevice:get_argument_value(82)))		-- LandingGearRedLight
	-- Engine
	SendDataHW("59", string.format("%.1f", mainPanelDevice:get_argument_value(59)))		-- Hight_Blower_Lamp
	-- Cockpit Lights
	SendDataHW("164", string.format("%.1f", mainPanelDevice:get_argument_value(164)))		-- Left_Fluor_Light
	SendDataHW("165", string.format("%.1f", mainPanelDevice:get_argument_value(165)))		-- Right_Fluor_Light
	SendDataHW("185", string.format("%.1f", mainPanelDevice:get_argument_value(185)))		-- Left_cockpit_light
	SendDataHW("186", string.format("%.1f", mainPanelDevice:get_argument_value(186)))		-- Right_cockpit_light
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

	--[[
	local lDETROLA = GetDevice(24)
	WriteToLog('lDETROLA: '..dump(lDETROLA:is_on()))
	WriteToLog('lDETROLA: '..dump(lDETROLA:get_frequency()))
	--SendData(2000, string.format("%7.3f", lDETROLA:get_frequency()/1000000)) 

	local lINTERCOM = GetDevice(31)
	WriteToLog('lINTERCOM: '..dump(lINTERCOM:is_communicator_available()))
	WriteToLog('lINTERCOM: '..dump(lINTERCOM:get_noise_level()))
	WriteToLog('lINTERCOM: '..dump(lINTERCOM:get_signal_level()))
	]]
	--[[
	local ltmp1 = 0
	for ltmp2 = 1, 32, 1 do
		ltmp1 = GetDevice(ltmp2)
		WriteToLog(ltmp2..': '..dump(ltmp1))
		WriteToLog(ltmp2..' (metatable): '..dump(getmetatable(ltmp1)))
	end
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
	
	--[[
	WriteToLog('list_cockpit_params(): '..dump(list_cockpit_params()))
	
	local ltmp1 = 0
	for ltmp2 = 1, 10, 1 do
		ltmp1 = list_indication(ltmp2)
		WriteToLog(ltmp2..': '..dump(ltmp1))
		--WriteToLog(ltmp2..' (metatable): '..dump(getmetatable(ltmp1)))
	end
	]]
end