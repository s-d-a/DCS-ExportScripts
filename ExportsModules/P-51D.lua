-- P-51D Export
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
	[160] = "%.4f",		-- Fuel_Tank_Fuselage {0.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,85.0} {0.0,0.12,0.28,0.40,0.51,0.62,0.72,0.83,0.96,1.0}
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
	[161] = "%.1f",		-- Lamp TailRadarWarning
	-- SCR-522A Control panel
	[122] = "%.1f",		-- A_channel_light
	[123] = "%.1f",		-- B_channel_light
	[124] = "%.1f",		-- C_channel_light
	[125] = "%.1f",		-- D_channel_light
	[126] = "%.1f",		-- Transmit_light
	-- hydraulic pressure
	[78] = "%.4f",		-- Hydraulic_Pressure {0.0, 2000.0} {0.0, 1.0}
	-- Landing gears handle
	[150] = "%.4f",		-- Landing_Gear_Handle
	[151] = "%.4f",		-- Landing_Gear_Handle_Indoor
	[80] = "%.1f",		-- LandingGearGreenLight
	[82] = "%.1f",		-- LandingGearRedLight
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
	[59] = "%.1f",		-- Hight_Blower_Lamp
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
	-------------
	--[181] = "%.4f",		-- Panel_Shake_Z
	--[180] = "%.4f",		-- Panel_Shake_Y
	--[189] = "%.4f",		-- Panel_Rot_X
	--[162] = "%.1f",		-- Canopy_Trucks
	--[163] = "%.1f",		-- Canopy_Visibility
	-- Stick
	--[50] = "%.4f",		-- StickPitch
	--[51] = "%.4f",		-- StickBank
	-- RudderPedals
	--[54] = "%.4f",		-- RudderPedals
	--[55] = "%.4f",		-- Left_Wheel_Brake
	--[56] = "%.4f",		-- Right_Wheel_Brake
	-- K-14 gunsight
	[36] = "%.4f",		-- sightRange
	--[188] = "%.4f",		-- K_14_Shake_Z
	--[187] = "%.4f",		-- K_14_Shake_Y
	-------------
	--[45] = "%.4f",		-- ThrottleTwistGrip
	-------------
	[77] = "%.4f",		-- Rocket_Counter
	-------------
	--[413] = "%.1f",		-- WindShieldDamages
	--[412] = "%.1f",		-- WindShieldOil
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
	[200] = "%d",		-- Arm rest
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
	[73] = "%0.1f",		-- Rockets Release Mode Off/Single/Auto
	[74] = "%d",		-- Rockets Delay Switch Delay/Int
	[75] = "%0.4f",		-- Rockets Counter Control
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
	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
--		WriteToLog('in ProcessGlassCockpitDCSConfigHighImportance - HELIOS: '..t)
		local MainPanel = GetDevice(0)
		local AirspeedNeedle = MainPanel:get_argument_value(11)*1000
		local Altimeter_10000_footPtr = MainPanel:get_argument_value(96)*100000
		local Variometer = MainPanel:get_argument_value(29)   
		local TurnNeedle = MainPanel:get_argument_value(27)   
		local Slipball = MainPanel:get_argument_value(28)
		local CompassHeading = MainPanel:get_argument_value(1) 
		local CommandedCourse = MainPanel:get_argument_value(2) 							
		local Manifold_Pressure = MainPanel:get_argument_value(10) 
		local Engine_RPM = MainPanel:get_argument_value(23)
		local AHorizon_Pitch = MainPanel:get_argument_value(15) 
		local AHorizon_Bank = MainPanel:get_argument_value(14) 
		local AHorizon_PitchShift = MainPanel:get_argument_value(16) * 10.0 * math.pi/180.0
		local AHorizon_Caged = MainPanel:get_argument_value(20) 
		local GyroHeading = MainPanel:get_argument_value(12) 
		local vaccum_suction = MainPanel:get_argument_value(9)
		local carburator_temp = MainPanel:get_argument_value(21)
		local coolant_temp = MainPanel:get_argument_value(22)
		local Acelerometer = MainPanel:get_argument_value(175)
		local OilTemperature = MainPanel:get_argument_value(30)
		local OilPressure = MainPanel:get_argument_value(31)
		local FuelPressure = MainPanel:get_argument_value(32)
		local Clock_hours = MainPanel:get_argument_value(4)
		local Clock_minutes = MainPanel:get_argument_value(5)
		local Clock_seconds = MainPanel:get_argument_value(6)
		local LandingGearGreenLight = MainPanel:get_argument_value(80) 
		local LandingGearRedLight = MainPanel:get_argument_value(82)
		local Hight_Blower_Lamp = MainPanel:get_argument_value(59) 						
		local Acelerometer_Min = MainPanel:get_argument_value(177)
		local Acelerometer_Max = MainPanel:get_argument_value(178)
		local Ammeter = MainPanel:get_argument_value(101)	
		local hydraulic_Pressure = MainPanel:get_argument_value(78)  
		local Oxygen_Flow_Blinker = MainPanel:get_argument_value(33)
		local Oxygen_Pressure = MainPanel:get_argument_value(34)
		local Fuel_Tank_Left = MainPanel:get_argument_value(155)
		local Fuel_Tank_Right = MainPanel:get_argument_value(156)
		local Fuel_Tank_Fuselage = MainPanel:get_argument_value(160)
		local Tail_radar_warning = MainPanel:get_argument_value(161)
		local Channel_A = MainPanel:get_argument_value(122)
		local Channel_B = MainPanel:get_argument_value(123)
		local Channel_C = MainPanel:get_argument_value(124)
		local Channel_D = MainPanel:get_argument_value(125)
		local transmit_light = MainPanel:get_argument_value(126)
		local RocketCounter = MainPanel:get_argument_value(77)
								
	--- preparing landing gear and High Blower lights, all together, in only one value	
		local gear_lights = 0
		if LandingGearGreenLight > 0 then gear_lights = gear_lights +100 end
		if LandingGearRedLight > 0 then gear_lights = gear_lights +10 end
		if Hight_Blower_Lamp > 0 then gear_lights = gear_lights +1 end
	------------------------------------------------------------	
	
	--- preparing radio lights, all together, in only one value	
		local radio_active = 0
		if Channel_A > 0 then radio_active = 1 end
		if Channel_B >0 then radio_active= 2 end
		if Channel_C >0 then radio_active= 3 end
		if Channel_D >0 then radio_active= 4 end
		if transmit_light >0 then radio_active = radio_active + 10 end
	------------------------------------------------------------
	
	
	---- sending P51 and tf51 data across fc2 interface
	----Please comment out the appropriate entries in the table 'gES_GlassCockpitConfigEveryFrameArguments'.
	
		SendData("1", string.format("%.5f", math.floor((AHorizon_Pitch+1)*1000) + ((AHorizon_Bank+1)/100) ) ) 	-- pitch
		SendData("2", string.format("%.3f", math.floor(Oxygen_Flow_Blinker*100) + (Oxygen_Pressure/100) ) )		-- bank
		SendData("3", string.format("%.4f", math.floor(OilTemperature*100) + (vaccum_suction/100) ) )			-- yaw
		SendData("4", string.format("%.3f", math.floor(Altimeter_10000_footPtr) + (AHorizon_Caged/100) ) )		-- barometric altitude 
		SendData("5", string.format("%.5f", math.floor(Clock_hours*1000000) + (Tail_radar_warning/100) ) )		-- radar altitude 
		SendData("6", string.format("%.5f", math.floor(CompassHeading*1000) + (CommandedCourse/100) ) )			-- adf
		SendData("7", string.format("%.4f", math.floor(Clock_seconds*100) + (hydraulic_Pressure/100) ) )		-- rmi
		SendData("8", string.format("%.2f", math.floor(GyroHeading*1000) + (radio_active/100) ) )				-- heading
		SendData("9", string.format("%.4f", math.floor(Engine_RPM*100) + (Manifold_Pressure/100) ) )			-- left rpm
		SendData("10", string.format("%.4f", math.floor(Fuel_Tank_Left*100) + (Fuel_Tank_Right/100) ) )			-- right rpm
		SendData("11", string.format("%.4f", math.floor(carburator_temp*100) + (coolant_temp/100) ) )			-- left temp
		SendData("12", string.format("%.4f", math.floor(gear_lights) + (Acelerometer_Min/100 ) ) )				-- right temp
		SendData("13", string.format("%.2f", Variometer) )														-- vvi
		SendData("14", string.format("%.5f", math.floor(AirspeedNeedle)+ (RocketCounter/100) ) )				-- ias
		SendData("15", string.format("%.4f", math.floor(OilPressure*100) + (FuelPressure/100) ) )				-- distance to way
		SendData("16", string.format("%.3f", math.floor(Acelerometer*1000) + (Acelerometer_Max/100 ) ) )		-- aoa
		SendData("17", string.format("%.4f", math.floor((TurnNeedle+1)*100) + ((Slipball+1)/100) ) )			-- glide
		SendData("18", string.format("%.4f", math.floor(Fuel_Tank_Fuselage*100) + (Ammeter/100) ) )				-- side

	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6
--		WriteToLog('in ProcessGlassCockpitDCSConfigHighImportance - HawgTouch: '..t)
		-- ADI AN5736
		-- Artificial horizon
		--[15] = "%.4f",		-- AHorizon_Pitch {1.0, -1.0}
		--[14] = "%.4f",		-- AHorizon_Bank {1.0, -1.0}
		--[16] = "%.1f",		-- AHorizon_PitchShift
		--[20] = "%.1f",		-- AHorizon_Caged
		SendData(2000, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(15), 
										mainPanelDevice:get_argument_value(14)))
		-- turn indicator AN5820
		--[27] = "%.4f",		-- TurnNeedle {-1.0, 1.0}
		--[28] = "%.4f",		-- Slipball {-1.0, 1.0}
		SendData(2001, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(27), 
										mainPanelDevice:get_argument_value(28)))
		-- directional gyro AN5735
		--[12] = "%.1f",		-- GyroHeading {0.0, 1.0}
		-- Vacuum_Suction AN5771-5
		--[9] = "%.4f",		-- Vacuum_Suction {0.0, 1.0}
		--  F-2 Airspeed Indicator
		-- [11] = "%.2f",		-- AirspeedNeedle {0, 50, 100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600, 650, 700} {0.0, 0.05, 0.10, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55, 0.6, 0.65, 0.7}
		-- Altimeter AN5760-2
		--[96] = "%.1f",		-- Altimeter_10000_footPtr {0.0, 1.0}
		--[24] = "%.1f",		-- Altimeter_1000_footPtr {0.0, 1.0}
		--[25] = "%.1f",		-- Altimeter_100_footPtr {0.0, 1.0}
		--[97] = "%.1f",		-- Altimeter_Pressure {28.1, 31.0} {0.0, 1.0}
		SendData(2002, string.format("%0.4f;%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(96), 
										mainPanelDevice:get_argument_value(24),
										mainPanelDevice:get_argument_value(25),
										mainPanelDevice:get_argument_value(97)))
		-- Rate of Climb Indicator AN5825
		--[29] = "%.1f",		-- Variometer {0.0, 1.0}
		-- D-10 Manifold Pressure Indicator 
		--[10] = "%.4f",		-- Manifold_Pressure {10.0, 75.0} {0.0, 1.0}
		-- Tachometer
		--[23] = "%.4f",		-- Engine_RPM {0.0, 4500.0} {0.0, 1.0}
		-- AN5790-6 Carburetor Air Temperature Indicator
		--[21] = "%.4f",		-- Carb_Temperature {-80, 150} {-0, 1}
		-- Coolant Temperature Indicator
		--[22] = "%.4f",		-- Carb_Temperature {-80, 150} {-0, 1}
		-- Engine Gauge
		--[30] = "%.4f",		-- Oil_Temperature {0.0, 100.0} {0.0, 1.0}
		--[31] = "%.4f",		-- Oil_Pressure {0.0, 200.0} {0.0, 1.0}
		--[32] = "%.1f",		-- Fuel_Pressure {0.0, 25.0} -- PSI {0.0, 1.0}
		SendData(2003, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(30), 
										mainPanelDevice:get_argument_value(31),
										mainPanelDevice:get_argument_value(32)))
		-- Remote Indicator Compass
		-- AN5730 remote compass
		--[1] = "%.4f",		-- CompassHeading {0.0, 1.0}
		--[2] = "%.4f",		-- CommandedCourse {0.0, 1.0}
		SendData(2004, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(1), 
										mainPanelDevice:get_argument_value(2)))
		-- A-11 clock
		--[4] = "%.4f",		-- CLOCK_currtime_hours {0.0, 1.0}
		--[5] = "%.4f",		-- CLOCK_currtime_minutes {0.0, 1.0}
		--[6] = "%.4f",		-- CLOCK_currtime_seconds {0.0, 1.0}
		SendData(2005, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(4), 
										mainPanelDevice:get_argument_value(5),
										mainPanelDevice:get_argument_value(6)))
		-- Oxygen Flow Indicator
		--[33] = "%.1f",		-- Oxygen_Flow_Blinker {0.0, 1.0}
		-- Oxygen Pressure Gauge
		--[34] = "%.1f",		-- Oxygen_Pressure {0.0, 500.0} {0.0, 1.0}
		-- Hydraulic Pressure Gauge
		--[78] = "%.4f",		-- Hydraulic_Pressure {0.0, 2000.0} -- PSI {0.0, 1.0}
		-- Fuel Gauges
		-- Left Wing Main Tank
		--[155] = "%.2f",		-- Fuel_Tank_Left {0.0, 5.0, 15.0, 30.0, 45.0, 60.0, 75.0, 92.0} -- US GAL {0.0, 0.2, 0.36, 0.52, 0.65, 0.77, 0.92, 1.0}
		-- Fuselage Tank
		--[160] = "%.2f",		-- Fuel_Tank_Fuselage {0.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0, 70.0, 80.0, 85.0} -- US GAL {0.0, 0.12, 0.28, 0.40, 0.51, 0.62, 0.72,	0.83, 0.96, 1.0}
		-- Right Wing Main Tank
		--[156] = "%.2f",		-- Fuel_Tank_Right {0.0, 5.0, 15.0, 30.0, 45.0, 60.0, 75.0, 92.0} -- US GAL {0.0, 0.2, 0.36, 0.52, 0.65, 0.77, 0.92, 1.0}
		-- AN-5745 accelerometer indicator
		--[175] = "%.4f",		-- Accelerometer_main {-5.0, 12.0} {0.0, 1.0}
		--[177] = "%.4f",		-- Accelerometer_min {-5.0, 12.0} {0.0, 1.0}
		--[178] = "%.4f",		-- Accelerometer_max {-5.0, 12.0} {0.0, 1.0}
		SendData(2006, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(175), 
										mainPanelDevice:get_argument_value(177),
										mainPanelDevice:get_argument_value(178)))
		-- Landing Gear Warning Lights
		--[80] = "%.1f",		-- LandingGearGreenLight
		--[82] = "%.1f",		-- LandingGearRedLight
		SendData(2007, string.format("%.1f;%.1f", 
										mainPanelDevice:get_argument_value(80), 
										mainPanelDevice:get_argument_value(82)))
		-- AMMETER
		--[101] = "%.4f",		-- Ammeter {0.0, 150.0} {0.0, 1.0}
	end
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
	for ltmp2 = 1, 35, 1 do
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
