-- TF-51D Export
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
	[11] = "%.4f",		-- AirspeedNeedle {0,50,100,150,200,250,300,350,400,450,500,550,600,650,700} {0.0,0.05,0.10,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5,0.55,0.6,0.65,0.7}
	[29] = "%.4f",		-- Variometer {-6000,-4000,-2000,2000,4000,6000} {-0.6,-0.4,-0.2,0.2,0.4,0.6}
	-- Altimeter
	[97] = "%.4f",		-- Altimeter_Pressure {28.1, 31.0}{0.0, 1.0}
	[96] = "%.41f",		-- Altimeter_10000_footPtr {0.0, 100000.0}{0.0, 1.0}
	[24] = "%.4f",		-- Altimeter_1000_footPtr {0.0, 10000.0}{0.0, 1.0}
	[25] = "%.4f",		-- Altimeter_100_footPtr{0.0, 1000.0}{0.0, 1.0}
	-- Artificial horizon
	[15] = "%.4f",		-- AHorizon_Pitch {1.0, -1.0}
	[14] = "%.4f",		-- AHorizon_Bank {1.0, -1.0}
	[16] = "%.1f",		-- AHorizon_PitchShift {-1.0, 1.0}
	[20] = "%.1f",		-- AHorizon_Caged {0.0, 1.0}
	-- directional gyro
	[12] = "%.4f",		-- GyroHeading
	-- turn indicator
	[27] = "%.4f",		-- TurnNeedle {-1.0, 1.0}
	[28] = "%.4f",		-- Slipball {-1.0, 1.0}
	-- oxygen pressure indicator
	[34] = "%.4f",		-- Oxygen_Pressure {0.0, 500.0} {0.0, 1.0}
	[33] = "%.4f",		-- Oxygen_Flow_Blinker
	-- fuel system
	[155] = "%.4f",		-- Fuel_Tank_Left {0.0,5.0,15.0,30.0,45.0,60.0,75.0,92.0} {0.0,0.2,0.36,0.52,0.65,0.77,0.92,1.0}
	[156] = "%.4f",		-- Fuel_Tank_Right {0.0,5.0,15.0,30.0,45.0,60.0,75.0,92.0} {0.0,0.2,0.36,0.52,0.65,0.77,0.92,1.0}
	[32] = "%.4f",		-- Fuel_Pressure {0.0, 25.0} {0.0, 1.0}
	-- A-11 clock
	[4] = "%.4f",		-- CLOCK_currtime_hours {0.0, 12.0}{0.0, 1.0}
	[5] = "%.4f",		-- CLOCK_currtime_minutes {0.0, 60.0}{0.0, 1.0}
	[6] = "%.4f",		-- CLOCK_currtime_seconds {0.0, 60.0}{0.0, 1.0}
	-- AN5730 remote compass
	[1] = "%.4f",		-- CompassHeading
	[2] = "%.4f",		-- CommandedCourse
	[3] = "%.4f",		-- CommandedCourseKnob
	-- TailRadarWarning
	[161] = "%.f",		-- Lamp TailRadarWarning
	-- SCR-522A Control panel
	[122] = "%.f",		-- A_channel_light
	[123] = "%.f",		-- B_channel_light
	[124] = "%.f",		-- C_channel_light
	[125] = "%.f",		-- D_channel_light
	[126] = "%.f",		-- Transmit_light
	-- hydraulic pressure
	[78] = "%.4f",		-- Hydraulic_Pressure {0.0, 2000.0} {0.0, 1.0}
	-- Landing gears handle
	[150] = "%.4f",		-- Landing_Gear_Handle
	[151] = "%.4f",		-- Landing_Gear_Handle_Indoor
	[80] = "%.f",		-- LandingGearGreenLight
	[82] = "%.f",		-- LandingGearRedLight
	-- gauges
	[10] = "%.4f",		-- Manifold_Pressure {10.0, 75.0} {0.0, 1.0}
	[23] = "%.4f",		-- Engine_RPM {0.0, 4500.0} {0.0, 1.0}
	[9] = "%.4f",		-- Vacuum_Suction {0.0, 10.0} {0.0, 1.0}
	[21] = "%.4f",		-- Carb_Temperature {-80, 150} {-0, 1}
	[22] = "%.4f",		-- Coolant_Temperature {-80, 150} {-0, 1}
	[30] = "%.4f",		-- Oil_Temperature {0.0, 100.0} {0, 1.0}
	[31] = "%.4f",		-- Oil_Pressure {0.0, 200.0} {0, 1.0}
	[164] = "%.1f",		-- Left_Fluor_Light
	[165] = "%.1f",		-- Right_Fluor_Light
	[59] = "%.f",		-- Hight_Blower_Lamp
	-- Trimmer
	[170] = "%.4f",		-- Aileron_Trimmer {-1.0, 1.0}
	[172] = "%.4f",		-- Rudder_Trimmer {-1.0, 1.0}
	[171] = "%.4f",		-- Elevator_Trimmer {-1.0, 1.0}
	[174] = "%.4f",		-- Control_Lock_Bracket
	[175] = "%.4f",		-- Accelerometer_main {-5.0, 12.0} {0.0, 1.0}
	[177] = "%.4f",		-- Accelerometer_min {-5.0, 12.0} {0.0, 1.0}
	[178] = "%.4f",		-- Accelerometer_max {-5.0, 12.0} {0.0, 1.0}
	[101] = "%.4f",		-- Ammeter {0.0, 150.0} {0.0, 1.0}
	-- light
	[185] = "%.1f",		-- Left_cockpit_light
	[186] = "%.1f",		-- Right_cockpit_light
	[190] = "%.4f",		-- warEmergencyPowerLimWire
}

ExportScript.ConfigArguments = 
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
	[100] = "%.4f",		-- Right Fluorescent Light (rotary)
	[90] = "%.4f",		-- Left Fluorescent Light (rotary)
	-- Flight Instrument panel
	[3] = "%.4f",		-- Course Set (rotary)
	[13] = "%.4f",		-- Heading Set/Cage (rotary)
	[179] = "%d",		-- Heading Set/Cage Button
	[17] = "%.4f",		-- Pitch Adjustment (rotary)
	[18] = "%.4f",		-- Cage (rotary)
	[19] = "%d",		-- Cage Button
	[8] = "%d",		-- Winding/Adjustment Clock Button
	[7] = "%.4f",		-- Winding/Adjustment Clock (rotary)
	[26] = "%.4f",		-- Set Pressure (rotary)
	-- SCR-522A Control panel
	[117] = "%d",		-- Radio ON/OFF
	[118] = "%d",		-- A Channel Activate
	[119] = "%d",		-- B Channel Activate
	[120] = "%d",		-- C Channel Activate
	[121] = "%d",		-- D Channel Activate
	[127] = "%.4f",		-- Radio Lights Dimmer (rotary)
	[116] = "%.4f",		-- Radio Audio Volume (rotary)
	[44] = "%d",		-- Microphone On
	[129] = "%d",		-- Switch Locking Lever
	[128] = "%d",		-- Radio Mode Transmit/Receive/Remote
	-------------
	[71] = "%.4f",		-- Cockpit Lights (rotary)
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
	[113] = "%.4f",		-- Tail Warning Radar Light Control (rotary)
	-------------
	[79] = "%d",		-- Hydraulic Release Knob
	[94] = "%.4f",		-- Flaps Control Handle (rotary)
	[84] = "%d",		-- Parking Brake Handle
	[81] = "%d",		-- Safe Landing Gear Light Test
	[83] = "%d",		-- Unsafe Landing Gear Light Test
	-- Detrola receiver
	[137] = "%.4f",		-- Detrola Frequency Selector (rotary)
	[138] = "%.4f",		-- Detrola Volume (rotary)
	-- canopy
	[147] = "%.4f",		-- Canopy Hand Crank (rotary)
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
	[91] = "%.4f",		-- Aileron Trim (rotary)
	[92] = "%.4f",		-- Elevator Trim (rotary)
	[93] = "%.4f",		-- Rudder Trim (rotary)
	-------------
	[157] = "%.4f",		-- Defroster (rotary)
	[158] = "%.4f",		-- Cold Air (rotary)
	[159] = "%.4f",		-- Hot Air (rotary)
	-------------
	[89] = "%d",		-- Landing Light On/Off
	[168] = "%d",		-- Coolant Control Cover
	[87] = "%0.1f",		-- Close Coolant Control/Automatic Coolant Control/Open Coolant Control
	[169] = "%d",		-- Oil Control Cover
	[88] = "%0.1f",		-- Close Oil Control/Automatic Oil Control/Open Oil Control
	[134] = "%0.1f",	-- Carburetor Cold Air Control (rotary)
	[135] = "%0.1f",	-- Carburetor Warm Air Control (rotary)
	[47] = "%0.1f",		-- Mixture Control Select IDLE CUT OFF/RUN/EMERGENCY FULL RICH
	[43] = "%.4f",		-- Throttle (rotary)
	[46] = "%.4f",		-- Propeller RPM (rotary)
	[173] = "%d",		-- Surface Control Lock Plunger. Left Button - Lock Stick in the Forward Position', Right Button - Lock Stick in the Neutral Position
	[48] = "%.4f",		-- Lock Throttle (rotary)
	[49] = "%.4f",		-- Lock Propeller & Mixture (rotary)
	[176] = "%d",		-- G-meter reset
	[183] = "%d",		-- Mirror
	--Gunsight Selector	
	[41] = "%d",		-- Sight On/Off
	[39] = "%d",		-- Fixed Reticle Mask Lever
	[40] = "%0.1f",		-- Sight Mode, Fixed Sight/Fixed-Gyro Sight/Gyro Sight
	[42] = "%.1f",		-- Gun Sight Brightness
	[35] = "%.1f",		-- Wing Span Selector
	-------------
	[132] = "%.4f",		-- Left Payload Salvo
	[133] = "%.4f"		-- Right Payload Salvo
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
