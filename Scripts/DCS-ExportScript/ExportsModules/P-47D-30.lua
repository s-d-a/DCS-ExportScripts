--[[
P-47D-30 Export Script
Created by: nosaMtrevoC of ED Forums (dt1)
version 0.14

For use with DCS-ExportScripts plugin https://github.com/charlestytler/streamdeck-dcs-interface (Awesome work)

[Changelog]_______________________________________________________________________________________________________________________________________________________
Version 0.14 - Changed errors in the Drop Ordinance Arming Panel and added switch cover ID's (thanks to olddog from ED Forums for the find)
Version 0.13 - Formatting Changes
Version 0.12 - Fixed some string formatting inconsistancies and errors
Version 0.11 - Initial Release


Extra ID's created for nice formatted output on Stream Deck See ID Guide Below:
For use with ctytler's Stream Deck plugin (requires DCS-ExportScripts) at https://github.com/charlestytler/streamdeck-dcs-interface (Also Awesome)

The following ID's 2000-4000 in the table below are a work in progress. I figured I'd release the standard export script for people to use while working on this.

[Formatted for Stream Deck]
[ID]______ [Description]__________________________ [Status]_______ [Output e.g.]__________________________________________________________________________________
2012		True Heading Value Formatted			Working			235
2025		Altitude Formatted						Working			6544
2096		Altitude 50' or below					Working			1 or 0 (1 is altitude warning / 0 is no warning) Use this to change altitude warning light
2155		Main Fuel Tank							In Progress		Work in Progress (will output 92gal etc..)
2156		Aux. Fuel Tank							In Progress		Work in Progress (will output 92gal etc..)
2011		IAS Airspeed							Working			235 mph
3011		IAS Overspeed Indicator					Working			if Airspeed is greater than 475 value is 1 (allows you to show light etc..) P-47 Max IAS is 505 mph
3033		Multi Guage								In Progress		Shows Manifold Press./RPM/Oil Temp/Oil Pressure/Fueel Pressure in one button (on Stream Deck)
3032		Multi Guage Warning Light				In Progress		Monitors if any of the values on the multi guage are out of range (if so 1, if not 0) Allows you to change the button color to yellow if danger.

[Currently working on]____________________________________________________________________________________________________________________________________________
	-Documenting ID's and outputs better
	-Testing output to ensure proper string formatting for each value
	-Creating formatted outputs for Stream Deck Users (above table of id's)

]]

ExportScript.FoundDCSModule = true
ExportScript.Version.P47D30 = "1.2.1"

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
	
	
	-- [Flight Instruments] -------------------------------------------------------------------
		[11] = "%.4f",			-- Airspeed Indicator {0.0, 900.0} {0.0, 0.9} (IAS from 0-900) scale 10mph from 50-300 and 50mph after maxIAS:505mph
		[29] = "%.4f",  	    -- Variometer Guage {-6000.0, 6000.0} {-0.6, 0.6} (VSI-Vertical Speed indicator or Rate of Climb Indicator AN5825 0-6000' neg/pos vertical speed in feet per minute)
	
	-- [Directional Gyro] ---------------------------------------------------------------------
		[12] = "%.4f",      	-- DI gauge {0.0, 2.0 * 3.1415926} {0.0, 1.0} 

    -- [Altimeter Guage] ----------------------------------------------------------------------
		[24] = "%.4f",	      	-- Altimeter Hundreds {0.0, 10.0} {0.0, 1.0} (e.g. .9500 is 950 feet)
		[25] = "%.4f",  	    -- Altimeter Thousands {0.0, 10.0} {0.0, 1.0} (e.g. .0950 is 950 feet)
		[26] = "%.4f",      	-- Altimeter Tens of Thousands {0.0, 10.0} {0.0, 1.0} (e.g. .0095 is 950 feet, this value times 100,000 shows feet like 950.0000 feet)
		--CA   [21] = "%.4f",   -- Altimeter Set Pressure {28.1, 31.0} {0.0, 1.0} (sea level reference pressure in inches of Mercury (kolsmann window))
		[171] = "%.4f",     	-- Altimeter Reference Hundreds {0.0, 10.0} {0.0, 1.0} (100 ft. index triangle markers)
		[172] = "%.4f",     	-- Altimeter Reference Thousands {0.0, 10.0} {0.0, 1.0} (1000 ft. index triangle markers)

    -- [Artificial Horizon] -------------------------------------------------------------------
		[14] = "%.4f",	      	-- AH Bank {-math.pi, math.pi} {1.0, -1.0}
		[15] = "%.4f",  	  	-- AH Pitch {-math.pi / 4.0, math.pi / 4.0} {1.0, -1.0}
		[136] = "%.4f",     	-- AH Zero {-10.0 * math.pi / 180.0, 10.0 * math.pi / 180.0} {-1.0, 1.0}
		[20] = "%0.1f",      	-- AH Cage {0.0, 1.0} {0.0, 1.0}

    -- [Turn and bank indicator] --------------------------------------------------------------
		[28] = "%.4f",		    -- Side Slip Ball {-1.0, 1.0} {-1.0, 1.0}
		[27] = "%.4f",      	-- Turn Needle {-1.0, 1.0} {-1.0, 1.0}

	-- [Oxygen Pressure Indicator] ------------------------------------------------------------
		[33] = "%.4f",      	-- Oxygen delivery gauge {0.0, 1.0} {0.0, 1.0}
		[34] = "%.4f",      	-- Oxygen pressure gauge {0.0, 500.0} {0.0, 1.0}
	
    -- [Fuel contents gauge] ------------------------------------------------------------------
		[109] = "%.4f",     	-- Fuel Reserve main {  0.0,  40.0, 100.0, 150.0, 175.0, 200.0, 225.0, 250.0, 264.0, 270.0} {0.000, 0.144, 0.347, 0.506, 0.599, 0.666, 0.753, 0.828, 0.877, 1.000}
		[110] = "%.4f",     	-- Fuel Reserve Aux {  0.0,  10.0,  25.0,  50.0,  75.0, 100.0} {0.000, 0.103, 0.254, 0.506, 0.756, 1.000}
	
	-- [A-11 clock] ---------------------------------------------------------------------------
		[4] = "%.4f",			-- CLOCK_currtime_hours {0.0, 12.0}{0.0, 1.0} (needle position of hours, e.g. 0.5 is 6 pm for hour hand, 0.75 would be 9pm)
		[5] = "%.4f",			-- CLOCK_currtime_minutes {0.0, 60.0}{0.0, 1.0} (needle position of minutes hand, e.g. 0.5 would be 30 minutes, 0.25 would be 15 minutes etc..)
		[6] = "%.4f",			-- CLOCK_currtime_seconds {0.0, 60.0}{0.0, 1.0} (needle position of seconds hand, e.g. 0.25 would be 15 seconds, 0.75 would be 45 seconds)

	-- [hydraulic pressure] -------------------------------------------------------------------
		[78] = "%.4f",      	-- Hydraulic pressure gauge {0.0, 2000.0} {0.0, 1.0}

	-- [Landing gears handle] -----------------------------------------------------------------
		[150] = "%.4f",			-- Landing_Gear_Handle
		[151] = "%.4f",			-- Landing_Gear_Handle_Indoor
		[80] = "%.f",			-- LandingGearGreenLight (Need to test this one)
		[82] = "%.f",			-- LandingGearRedLight

	-- [Guages] -------------------------------------------------------------------------------
		[23] = "%.4f",      	-- Tachometer gauge RPM {0.0, 4500.0} {0.0, 1.0}
		[102] = "%.4f",     	-- Carburettor temperature gauge {-71.0, -70.0, 150.0} {-0.5, -0.35, 1.0}
		[103] = "%.4f",     	-- Turbine tachometer {0.0, 35000.0} {0.0, 1.0}
		[108] = "%.4f",     	-- Water pressure gauge {0.0, 5.0} {0.0, 1.0}
		[9] = "%.4f",			-- Vacuum Suction Guage {0.0, 10.0} {0.0, 1.0} (AN5771-5 Vacuum System 0-10 inches of mercury inHg) min:3.85 max:4.15 norm:4.0
		[10] = "%.4f",			-- Manifold pressure gauge {10.0, 75.0} {0.0, 1.0} (Absolute Pressure in inches of mercury inHg from 10-75) norm:32-45 inHg  WarEmerg: 64 inHg
		[104] = "%.4f",     	-- Ammeter {-150.0, 0.0, 150.0} {1.0, 0.0, 1.0}	
		[111] = "%.4f",     	-- Cylinder heads temperature gauge {0.0, 350.0} {0.0, 1.0}
		
	-- [Tri-needle gauge] ---------------------------------------------------------------------
		[30] = "%.4f",      	-- Tri Guage Oil Temperature {-71.0, -70.0, 150.0} {-1.0, 0.0, 1.0}
		[31] = "%.4f",      	-- Tri Guage Oil Pressure {0.0, 200.0} {0.0, 1.0}
		[32] = "%.4f",      	-- Tri Guage Fuel Pressure {0.0, 35.0} {0.0, 1.0}
	
    -- Accelerometer --------------------------------------------------------------------------
		[175] = "%.4f",     	-- Accelerometer Main {-5.0, 12.0} {0.0, 1.0}
		[177] = "%.4f",     	-- Accelerometer Minimum {-5.0, 12.0} {0.0, 1.0}
		[178] = "%.4f",     	-- Accelerometer Maximum {-5.0, 12.0} {0.0, 1.0}

    -- [Cooling flaps combined indicator] -----------------------------------------------------
		[89] = "%.4f",      	-- Intercooler Flap Position {0.0, 1.0} {0.0, 1.0}
		[90] = "%.4f",      	-- Oil Cooler Flap Position {0.0, 1.0} {0.0, 1.0}

	--[Other] ---------------------------------------------------------------------------------
		[180] = "%.4f",			-- Panel_Shake_Z
		[181] = "%.4f",			-- Panel_Shake_Y
		[189] = "%.4f",			-- Panel_Rot_X
		[118] = "%0.1f",		-- Canopy_Trucks
		[38] = "%0.1f",			-- Canopy_Visibility
		[135] = "%0.1f",			-- pilot Draw

	-- [Stick] --------------------------------------------------------------------------------
		[50] = "%.4f",			-- StickPitch
		[51] = "%.4f",			-- StickBank

	-- [Rudder Pedals] ------------------------------------------------------------------------
		[54] = "%.4f",			-- RudderPedals
		[55] = "%.4f",			-- Left_Wheel_Brake
		[56] = "%.4f",			-- Right_Wheel_Brake

	-- [K-14 gunsight] ------------------------------------------------------------------------
		[36] = "%.4f",			-- sightRange
		[188] = "%.4f",			-- K_14_Shake_Z
		[187] = "%.4f",			-- K_14_Shake_Y

}

ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]


	-- [Flight Stick] -------------------------------------------------------------------------
		[53] = "%d",			-- Button A - MG Trigger
		[52] = "%d",			-- Button B2 - Secondary & Drop Ordnance Trigger

	-- [Canopy Controls] ----------------------------------------------------------------------
		[39] = "%d",			-- ["HATCH_ES"] = cabin_rocker(0, _("Cockpit.P47.canopy_es"), devices.CONTROLS, device_commands.Button_13
		[155] = "%d",			-- ["HATCH_LH_H"] = cabin_pull_handle(0, _('Cockpit.Yak52.canopy_operate'), devices.CONTROLS, device_commands.Button_16
		[156] = "%d",			-- ["HATCH_RH_H"] = cabin_pull_handle(0, _('Cockpit.Yak52.canopy_operate'), devices.CONTROLS, device_commands.Button_17
		[157] = "%d",			-- Cockpit Jettison Pull Handle

	-- Main Panel -----------------------------------------------------------------------------
		-- [Flight Instrument Panel] ----------------------------------------------------------
			[8] = "%d",			-- Winding/Adjustment Clock Button
			[7] = "%.4f",		-- Winding/Adjustment Clock (rotary)

			[63] = "%d",		-- Starter Switch Activate
			
			[64] = "%d",		-- Primer Pump ???
			[65] = "%d",		-- Primer Activate ???

			[113] = "%d",		-- Cowl Flaps Button
			[46] = "%.4f",		-- Defroster Knob (rotary ???)

			[49] = "%.4f",		-- Cockpit Ventilation Knob (rotary ???)
			[66] = "%0.1f",		-- Magneto Selector (0.0=OFF / 0.1=LEFT / 0.2=RIGHT / 0.3=BOTH)
			[13] = "%.4f",		-- DI

			[17] = "%.4f",		-- Artificial Horizon (pitch adj. rotary)
			[18] = "%.4f",		-- Artificial Horizon (cage, rotary)

			[22] = "%0.1f", 	-- Altimeter (Axis) {0.0, 1.0} in 0.1 Steps
			[176] = "%d",		-- Accelerometer Reset
			[21] = "%d",		-- Turbine Overspeed Lamp Test Button
			[83] = "%d",		-- Landing Warning Lamp Test Button
			[81] = "%d",		-- Landing Warning Green Lamp Test Button, D-35 specific
			[83] = "%d",		-- Landing Warning Red Lamp Test Button, D-35 specific
			[70] = "%d",		-- Fuel Pressure Lamp Test Button
			[79] = "%d",		-- Battery Switch
			[162] = "%d",		-- Parking Brake Lever

		-- [Drop Ordinance Arming Panel] ------------------------------------------------------
			[163] = "%d",		-- Stores Jettison Pull Handles Jettison Left hand
			[164] = "%d",		-- Stores Jettison Pull Handles Jettison Right Hand
			[165] = "%d",		-- Stores Jettison Pull Handles Jettison Both

			[139] = "%d",		-- LH Wing Bomb Switch Cover
			[140] = "%d",		-- LH Wing Bomb Switch
			[141] = "%d",		-- RH Wing Bomb Switch Cover
			[142] = "%d",		-- RH Wing Bomb Switch
			[143] = "%d",		-- Belly Bomb Switch Cover
			[144] = "%d",		-- Belly Bomb Switch
			[145] = "%d",		-- LH Chemical Switch Cover
			[146] = "%d",		-- LH Chemical Switch
			[147] = "%d",		-- RH Chemical Switch Cover
			[148] = "%d",		-- RH Chemical Switch

	-- ----------------------------------------------------------------------------------------

	-- Port Wall ------------------------------------------------------------------------------
		-- [Throttle Quadrant] ----------------------------------------------------------------
			[43] = "%.4f",		-- Throttle (rotary/slider)
			[44] = "%d",		-- Radio Button / Microphone on (on throttle)
			[40] = "%d",		-- NOS_ES device_commands.Button_1 ???
			[41] = "%d",		-- NOS_ES device_commands.Button_2 ???
			[46] = "%.4f",		-- Airscrew Lever - Prop RPM
			[45] = "%.4f",		-- Airscrew Lever - Prop Lock
			[58] = "%.4f",		-- Boost Lever
			[49] = "%.4f",		-- Boost Lever Lock
			[48] = "%.4f",		-- Mix Lever
			[57] = "%.4f",		-- Frictioner Lever

		-- [Prop Control Box] ----------------------------------------------------------------
			[72] = "%0.1f",		-- Propellor Control Multi Position Switch (test ???)
			[74] = "%0.1f",		-- Propellor Control Multi Position Switch (test ???) (0.1=Minus / 0.2=Plus / 0.3=OFF / 0.4=AUTO)
			[73] = "%d",		-- Propellor Control CB (test ???)

		-- [Recovery Flaps Switch] -----------------------------------------------------------
			[75] = "%d",		-- Reovery Flaps Cover
			[76] = "%d",		-- Recovery Flaps (floating point ???)

        -- [Main Switch Box] -----------------------------------------------------------------
			[194] = "%.4f",		-- Gun Sight Rheostat
			[195] = "%.4f",		-- Compass Light Rheostat
			[170] = "%.4f",		-- UV Instruments Light Rheostat
			[61] = "%.4f",		-- Booster Pump(s) Control Rheostat
			[197] = "%d",		-- Wing Tips Nav. Lights Switch
			[198] = "%d",		-- Tail Nav. Light Switch
			[199] = "%d",		-- Landing Light Switch
			[71] = "%d",		-- Cockpit Light Switch
			[132] = "%d",		-- Cockpit Light Button
			[200] = "%d",		-- Generator Switch
			[201] = "%d",		-- Pitot Heater Switch
			[62] = "%d",		-- Oil Dilution Switch
			[202] = "%d",		-- LG / FL Test Switch
			[203] = "%d",		-- OXY / TRB Test Switch

			-- Circuit Breaker Reset Switches
			[204] = "%d",		-- LH Inboard Guns CB
			[205] = "%d",		-- LH Outboard Guns CB
			[206] = "%d",		-- RH Inboard Guns CB
			[207] = "%d",		-- RH Outboard Guns CB
			[208] = "%d",		-- Fuel Pumps CB
			[209] = "%d",		-- Oil Cooler CB
			[210] = "%d",		-- Intercooler CB
			[211] = "%d",		-- Gun Relay and Gun Camera CB
			[212] = "%d",		-- Gun Sight, Camera Heat & Water Injection CB
			[213] = "%d",		-- Canopy Motor CB
			[214] = "%d",		-- Landing Light CB
			[215] = "%d",		-- Warn. Instruments CB
			[216] = "%d",		-- Internal Lighting CB
			[217] = "%d",		-- Pitot & Starter CB
			[218] = "%d",		-- Position Lights + CB
			[219] = "%d",		-- Recognition Lights + CB
			[220] = "%d",		-- Radio CB
			[158] = "%d",		-- Drop Ordinance CB
			[159] = "%d",		-- Recovery Flaps CB

			[87] = "%d",		-- Intercooler Flap Switch
			[88] = "%d",		-- Oil Cooler Flap Switch
			[67] = "%d",		-- Guns Switch Cover
			[68] = "%d",		-- Guns Switch
		
			-- Trim Control Box
			[91] = "%.4f",		-- Aileron Trim Wheel
			[92] = "%.4f",		-- Elevator Trim Wheel
			[93] = "%.4f",		-- Rudder Trim Wheel

			[153] = "%d",		-- Undercarriage Extension Lever
			[94] = "%d",		-- Landing Flaps Lever
			[166] = "%d",		-- LH C5 Assy. Cover
	-- ----------------------------------------------------------------------------------------


	-- Starboard Wall -------------------------------------------------------------------------
		-- [Recognition Lights Control Box] ---------------------------------------------------
			[96] = "%d",		-- Recognition Lights Key Button
			[97] = "%d",		-- Recognition Lights White multipostion Switch
			[98] = "%d",		-- Recognition Lights Red multipostion Switch
			[99] = "%d",		-- Recognition Lights Green multipostion Switch
			[100] = "%d",		-- Recognition Lights Yellow multipostion Switch

		-- [Radio Remote Channel Switcher]
			[1] = "%d",			-- Off Button
			[2] = "%d",			-- A Button
			[3] = "%d",			-- B Button
			[4] = "%d",			-- C Button
			[5] = "%d",			-- D Button
			[6] = "%d",			-- Dimmer Toggle
			[17] = "%d",		-- Transmit Lock Toggle
			[156] = "%d",		-- Mode Selector
			[77] = "%d",		-- Volume Knob

		-- [Detrola Receiver] -----------------------------------------------------------------
			[137] = "%.4f",		-- Detrola Frequency Selector
			[138] = "%.4f",		-- Detrola Volume

		-- [Oxygen Apparatus] -----------------------------------------------------------------
			[130] = "%d",		-- Oxygen Emergency By-pass
			[131] = "%d",		-- Auto-Mix On-Off

		-- [Tail Wheel Lock Lever] ------------------------------------------------------------
			[101] = "%d",		-- Tail Wheel Lock

		-- [Secret Radio Destruction Box] -----------------------------------------------------
			[185] = "%d",		-- IFF_0
			[186] = "%d",		-- IFF_1

		-- [RH C5 Assy. Cover] ----------------------------------------------------------------
			[168] = "%.4f",		--Cockpit.Generic.uv_rotating_cap

	-- ----------------------------------------------------------------------------------------

	-- Deck -----------------------------------------------------------------------------------
		[85] = "%0.1f",			-- Main Fuel Tank Selector (0.0=MAIN / 0.25=EXTERNAL / 0.5=OFF / 0.75=AUX. )
		[86] = "%0.1f",			-- Droptank Selector (0.0=BELLY / 0.5=LEFT / 1.00=RIGHT )
		[114] = "%d",			-- Air Filter By-Pass Lever
		[160] = "%d",			-- Hydraulic System Hand Pump
		[161] = "%0.1f",		-- Carburettor Heater Lever

	-- Gunsight -------------------------------------------------------------------------------
		[35] = "%.4f",			-- Wing Span Selector
		[36] = "%.4f",			-- Target Range Selector
		[37] = "%d",			-- Fixed Reticle Mask Lever
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
	
	-- ID: [2012] - Heading
    local trueHeading = string.format("%d", (mainPanelDevice:get_argument_value(12) * 360)) .. "°" .. "\nHDG"
	ExportScript.Tools.SendData(2012, trueHeading) --True heading

	-- Altitude
	local digAltitude = mainPanelDevice:get_argument_value(26) * 100000
	local lowAltitude = 0
	-- Altitude Fix (needed if pressure isn't set properly)
	if digAltitude > 90000 then
		ExportScript.Tools.SendData(2025, "-") --ten thousands
	else
		ExportScript.Tools.SendData(2025, string.format("%d", digAltitude)) --ten thousands
	end
	
	-- Altitude Warning Light
	if digAltitude <= 50 then
		lowAltitude = 1
	elseif digAltitude > 90000 then
		lowAltitude = 1
	else
		lowAltitude = 0
	end
	ExportScript.Tools.SendData(2096, lowAltitude)

	-- Fuel Indicator
	ExportScript.Tools.SendData(2155, string.format("%d", ExportScript.CalculateFuel(mainPanelDevice:get_argument_value(109))) .. ' gal'  ) --155 Left Fuel Tank
	ExportScript.Tools.SendData(2156, string.format("%d", ExportScript.CalculateFuel(mainPanelDevice:get_argument_value(110))) .. ' gal'  ) --156 Right Fuel Tank

	-- Speed IAS in mph
	local speedNum = mainPanelDevice:get_argument_value(11) * 1000
	local speedNeedle = string.format("%d", (mainPanelDevice:get_argument_value(11) * 1000)) .. "\nMPH"
	ExportScript.Tools.SendData(2011, speedNeedle) --Air Speed Needle

	-- Over speed warning Indicator
	if speedNum < 475 then
		ExportScript.Tools.SendData(3011, 0) --Within Limits
	else
		ExportScript.Tools.SendData(3011, 1) --About to Overspeed
	end

	-- Multi Guage Indicators
	local manifold = (mainPanelDevice:get_argument_value(10) * 75) 	--Manifold pressure gauge {10.0, 75.0} {0.0, 1.0}
	local rpm = mainPanelDevice:get_argument_value(23) * 4500 		-- RPM
	local tofTemp = (mainPanelDevice:get_argument_value(30) -70) * 150 	-- Tri Guage Oil Temperature {-71.0, -70.0, 150.0} {-1.0, 0.0, 1.0}
	local tofOil = mainPanelDevice:get_argument_value(31) * 200 	-- Tri Guage Oil Pressure {0.0, 200.0} {0.0, 1.0}
	local tofFuel = mainPanelDevice:get_argument_value(32) * 35 	-- Tri Guage Fuel Pressure {0.0, 35.0} {0.0, 1.0} 	

	local FullInfoString = "Man. " .. string.format("%d", manifold) .. " inHg" ..
			   "\nEngRPM " .. string.format("%d", rpm) ..
			   "\nOil Temp " .. string.format("%d", tofTemp) .. " °C" ..
			   "\nOil " .. string.format("%d", tofOil) .. " PSI" ..
			   "\nFuel " .. string.format("%d", tofFuel) .. " PSI"

	ExportScript.Tools.SendData(3033, FullInfoString)

	--SYSTEMS MONITORING FOR ABOVE Multi Guage Indicators (changes stream deck buutton to red for one of the above values out of range (danger))
	local infoDanger = 0

	if manifold > 64 then 		--Manifold no more than 64 inches mercury
		infoDanger = 1
	elseif rpm > 3025 then 		--rpm no more than 3000
		infoDanger = 1
	elseif tofTemp > 105 then 	--temp no more than 105c
		infoDanger = 1
	elseif tofOil > 90 then 	--Oil press. no more than 90PSI
		infoDanger = 1
	elseif tofOil < 50 then 	--oil press. no less than 50
		infoDanger = 1
	elseif tofFuel > 21 then 	--fuel press. no more than
		infoDanger = 1
	elseif tofFuel < 24.2 then 	--fuel press. no less than
		infoDanger = 1
	end
	ExportScript.Tools.SendData(3032, infoDanger)


end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
	-- every frame export to DAC
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
	-- export in low tick interval to Ikarus
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
	-- export in low tick interval to DAC
end

-----------------------------
--     Custom functions    --
-----------------------------

function ExportScript.CalculateFuel(fuelNeedlePosition) -- Calculate fuel to nice output
	-- Fuel Reserve main {  0.0,  40.0, 100.0, 150.0, 175.0, 200.0, 225.0, 250.0, 264.0, 270.0} {0.000, 0.144, 0.347, 0.506, 0.599, 0.666, 0.753, 0.828, 0.877, 1.000}
	-- Fuel Reserve Aux {  0.0,  10.0,  25.0,  50.0,  75.0, 100.0} {0.000, 0.103, 0.254, 0.506, 0.756, 1.000}
	local usGallons = fuelNeedlePosition
	
		-- Calculate fuel needle position into US Gallons here

	return usGallons
end