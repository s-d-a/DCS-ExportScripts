-- AJS37 Export
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
	-- INSTRUMENTS Front panel
	-- Left Side
	-- Airspeed indicator
	[100] = "%.4f",	-- IndicatedAirSpeed {0, 0.01, 0.05, 0.10, 0.15, 0.20, 0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.60, 0.70, 0.75, 0.80, 0.85, 0.90, 0.95, 1} {0, 41.66, 47.78, 55.56, 64.17, 73.61, 83.33, 98.61, 106.9, 122.22, 136.1,   154.16,   194.44, 239, 263.89, 288.89, 319.44, 350, 380.55, 416.66}  --m/s
	-- Mach-meter
	[103] = "%.4f",	-- MachMeterDec2 	(1.2 _3_)
	[102] = "%.4f",	-- MachMeterDec1 	(1. _2_ 3)
	[101] = "%.4f",	-- Integer 			(_1_ .23)
	[2007] = "%.f",	-- ASI OFF Flag
	-- ADI
	[105] = "%.4f",	-- Pitch {1.0, -1.0}
	[106] = "%.4f",	-- Heading {1.0, -1.0} 
	[107] = "%.4f",	-- Roll {-1.0, 1.0} 
	[108] = "%.4f",	-- VerticalSpeed {-1.0, 1.0} {-5.0, 5.0}  --ms
	[107] = "%.4f",	-- Rollindex {1.0, -1.0} inverted
	[109] = "%.4f",	-- VerticalILS {1.0, -1.0} {-1 , 1}  --Degrees?
	[110] = "%.4f",	-- HorizontalILS {1.0, -1.0} {-1 , 1}  --Degrees?
	[160] = "%.4f",	-- ADI OFF Flag
	[1810] = "%.4f",	-- Slipball {-1.0, 1.0}, not animate
	[120] = "%.4f",	-- AoA
	-- Main altimeter
	[114] = "%.4f",	-- Altimeter_10000m {0.0, 1.0} {0.0, 10000}
	[113] = "%.4f",	-- Altimeter_1000m {0.0, 1.0} {0.0, 1000}
	[2008] = "%.f",	-- Altimeter OFF
	-- Altimeter setting 1 hPa
	[115] = "%.4f",	-- AltimeterSetting_000X
	[116] = "%.4f",	-- AltimeterSetting_00X0
	[117] = "%.4f",	-- AltimeterSetting_0X00
	[118] = "%.4f",	-- AltimeterSetting_X000
	-- Frequency
	-- FM/AM Radio
	[177] = "%.4f",	-- MHz_X00
	[178] = "%.4f",	-- MHz_0X0
	[179] = "%.4f",	-- MHz_00X
	[180] = "%.4f",	-- KHz_X00
	[181] = "%.4f",	-- KHz_0X0
	[182] = "%.4f",	-- KHz_00X
	-- Centre
	-- CI Instruments
	[128] = "%.4f",	-- CIHeading {1.0, -1.0}
	[129] = "%.4f",	-- CICommandedHeading {1.0, 0.0}
	[163] = "%.4f",	-- CI OFF Flag 0.0=OFF, 1.0=fade in
	[3000] = "%.2f",	-- Radar Scan Zone, 0.0=off, >= 0.1=15, >= 0.2=30, >= 0.3=60, >=0.4=120
	-- Right Side
	-- ENGINE
	[139] = "%.4f",	-- Engine_RPM_100 {-1.0, 1.0} {0.0, 1.1}
	[140] = "%.4f",	-- Engine_RPM_10		 
	-- Accelerometer
	[136] = "%.4f",	-- VerticalAcceleration {-0.3, 1.0} { -2.0, 9.0}
	-- Backup instruments
	[127] = "%.4f",	-- MagneticHeading {1.0, -1.0} 
	[138] = "%.4f",	-- IndicatedAirSpeedBackup {0.0, 0.01, 0.05, 0.10, 0.15, 0.20, 0.25, 0.30, 0.40, 0.50, 0.60, 0.70, 0.80, 0.90, 1.0} {0.0, 56.39, 60.56, 65.83, 70.83, 75.83, 81.11, 86.11, 100.0, 113.9, 130.55, 150.0, 170.8, 193.0, 222.22}  --m/s
	[121] = "%.4f",	-- BackupPitch {1.0, -1.0} 
	[122] = "%.4f",	-- BackupRoll {1.0, -1.0}
	[125] = "%.4f",	-- BackupAltimeter_10000m {0.0, 1.0} {0.0, 10000}
	[124] = "%.4f",	-- BackupAltimeter_1000m {0.0, 1.0} {0.0, 1000}
	-- BackupAltimeter setting 1 hPa
	[468] = "%.4f",	-- BackupAltimeterSetting_000X
	[467] = "%.4f",	-- BackupAltimeterSetting_00X0
	[466] = "%.4f",	-- BackupAltimeterSetting_0X00
	[465] = "%.4f",	-- BackupAltimeterSetting_X000
	-- Distance indicator
	[142] = "%.4f",	-- Distance {0.0, 0.4} {0.0, 40.0} 
	[143] = "%.1f",	-- km/mil Display 0.0=km >0.8=mil
	-- Fuel Gauge
	[144] = "%.4f",	-- FuelGauge {0.0, 1.0} {0.0, 135.0} 
	[145] = "%.4f",	-- FuelNeeded {0.0, 1.0} {0.0, 135.0}
	-- Clock
	[130] = "%.4f",	-- Hour
	--[] = "%.4f",	-- Minute
	[133] = "%.4f",	-- Second
	--
	[141] = "%.4f",	-- Engine pressure ratio EPR indicator
	-- INSTRUMENTS Right Panel
	[147] = "%.4f",	-- Engine nozzle indicator
	[146] = "%.4f",	-- Exhaust Gas Temperature indicator Engine_TEMP {0.0, 1.00} {100, 800}
	[148] = "%.4f",	-- Oxygen pressure indicator
	-- INSTRUMENTS Left Panel
	[2005] = "%.4f",	-- Cabin pressure indicator
	[150] = "%.4f",	-- Brake pressure indicator
	[151] = "%.4f",	-- Pitch trim indicator
	-- Lamps/Lights
	-- Left Warning Lampen Panel
	-- Left Side
	[406] = "%.f",	-- BRAND
	[407] = "%.f",	-- BRAND
	[408] = "%.f",	-- BRÄ UPPF
	[409] = "%.f",	-- XTANK BRÄ
	[410] = "%.f",	-- TANK PUMP
	[411] = "%.f",	-- LANDSTÄLL
	[412] = "%.f",	-- FÖRV FÖRBJ
	[413] = "%.f",	-- NOSSTÄLL
	[414] = "%.f",	-- V-STÄLL
	[415] = "%.f",	-- H-STÄLL
	-- Right Side
	[416] = "%.f",	-- TIPP VÄXEL
	[417] = "%.f",	-- ELFEL
	[418] = "%.f",	-- RESERVEFF
	[419] = "%.f",	-- HYDR-TR2
	[420] = "%.f",	-- HYDR-TR1
	[421] = "%.f",	-- AFK FEL
	[422] = "%.f",	-- EJ REV
	[423] = "%.f",	-- OLJETRYCK
	-- Right Warning Lampen Panel
	-- Left Side
	[424] = "%.f",	-- SPAK
	[425] = "%.f",	-- HALL FUNK
	[426] = "%.f",	-- RHM FEL
	[427] = "%.f",	-- ROLLVÄXEL
	[428] = "%.f",	-- CK
	[429] = "%.f",	-- KABINHÖJD
	[430] = "%.f",	-- HUV o STOLL
	[431] = "%.f",	-- TÄNDSYST
	[432] = "%.f",	-- STARTSYST
	[433] = "%.f",	-- MAN BR REG
	-- Right Side
	[434] = "%.f",	-- SYRGAS
	[435] = "%.f",	-- BRÄ < 24
	[436] = "%.f",	-- BRAND GTS
	[437] = "%.f",	-- TILS
	[438] = "%.f",	-- NAV-SYST
	[439] = "%.f",	-- KB-V SLUT
	[440] = "%.f",	-- KB-H/KA SL
	[441] = "%.f",	-- FACKL SL
	[442] = "%.f",	-- MOTVERK
	[443] = "%.f",	-- LUFTBROMS
	-- Masterwarning lamp HUVUDVARNING
	[444] = "%.f",	-- HUVUDVARNING - left lamp
	[445] = "%.f",	-- HUVUDVARNING - right lamp
	-- Central Indicator
	[450] = "%.f",	-- Altitude warning light
	-- RWR lights
	[451] = "%.f",	-- 1 o'clock light
	[452] = "%.f",	-- 3 o'clock light
	[453] = "%.f",	-- 5 o'clock light
	[454] = "%.f",	-- 7 o'clock light
	[455] = "%.f",	-- 9 o'clock light
	[456] = "%.f",	-- 11 o'clock light
	-- right main panel
	[461] = "%.f",	-- Stores released indicator light (FÄLLD LAST)
	[462] = "%.f",	-- Reserve and transonic indicator (REVAVDR TRANSONIC) red "REV" light
	-- 1,2,3 Lamps
	[405] = "%.1f",	-- Afterburner zone indicator 0.0=off, >= 0.3=1, >= 0.6=2, >= 0.9=3
	-- left main panel
	[463] = "%.f",	-- Auto throttle mode indicator light
	[464] = "%.f",	-- Alpha 15.5° button (for AFK)
	[460] = "%.f",	-- Reserve and transonic indicator (REVAVDR TRANSONIC) green "REV" light
	-- SA06 functionality lamps (Autopilot)
	[401] = "%.f",	-- SPAK Lamp
	[402] = "%.f",	-- ATT Lamp
	[403] = "%.f"	-- HOJD Lamp
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	-- Stick
	--[8] = "%1d",	-- Mastersafe
	--[3] = "%.4f"	-- Stick horizontal
	--[2] = "%.4f"	-- Stick vertical
	--
	[12] = "%1d",	-- Gear Handle
	[20] = "%1d",	-- Reverser Handle
	[401] = "%1d",	-- SPAK
	[402] = "%1d",	-- Attitude Hold ATT
	[403] = "%1d",	-- Altitude Hold HOJD
	[464] = "%1d",	-- AFK 15 Deg Mode
	[213] = "%1d",	-- Doppler Land/Sea Mode
	--[0] = "%.3f",	-- Altimeter Setting (Axis) {0.0,1.0} in 0.001 steps
	-- Datapanel 
	[200] = "%1d",	-- Datapanel Selector
	[201] = "%1d",	-- Datapanel IN/OUT Switch
	[290] = "%1d",	-- Datapanel Key 0
	[291] = "%1d",	-- Datapanel Key 1
	[292] = "%1d",	-- Datapanel Key 2
	[293] = "%1d",	-- Datapanel Key 3
	[294] = "%1d",	-- Datapanel Key 4
	[295] = "%1d",	-- Datapanel Key 5
	[296] = "%1d",	-- Datapanel Key 6
	[297] = "%1d",	-- Datapanel Key 7
	[298] = "%1d",	-- Datapanel Key 8
	[299] = "%1d",	-- Datapanel Key 9
	-- NAvigations Panel
	[271] = "%1d",	-- Navigation Selector Button B1
	[272] = "%1d",	-- Navigation Selector Button B2
	[273] = "%1d",	-- Navigation Selector Button B3
	[274] = "%1d",	-- Navigation Selector Button B4
	[275] = "%1d",	-- Navigation Selector Button B5
	[276] = "%1d",	-- Navigation Selector Button B6
	[277] = "%1d",	-- Navigation Selector Button B7
	[278] = "%1d",	-- Navigation Selector Button B8
	[279] = "%1d",	-- Navigation Selector Button B9
	[280] = "%1d",	-- Navigation Selector Button BX
	[270] = "%1d",	-- Navigation Selector Button LS
	[281] = "%1d",	-- Navigation Selector Button L MÅL
	[282] = "%.1f",	-- TILS Channel Selection {0.0,0.1,0.2,...,0.9,1.0}
	[283] = "%1d",	-- RHM switch, Radar Altimeter Power
	[285] = "%1d",	-- TILS Channel Layer Selection 11-20/1-10
	---
	[344] = "%1d",	-- Warning Panel Light Test
	[315] = "%1d",	-- Indicator System Test
	[175] = "%1d",	-- Max G Reset
	---
	[250] = "%1d",	-- Anti Collision Lights
	[251] = "%1d",	-- Navigation Lights {-1.0,0.0,1.0}
	[252] = "%1d",	-- Formation Lights
	[253] = "%1d",	-- Position Lights
	[254] = "%.1f",	-- Position Lights Brightness {0.0,0.1,0.2}
	---
	[392] = "%.2f",	-- Panel Lights (Axis) {0.0,1.0} in 0.05 steps
	[393] = "%.2f",	-- Flood Lights (Axis) {0.0,1.0} in 0.05 steps
	[394] = "%.2f",	-- Instrument Lights (Axis) {0.0,1.0} in 0.05 steps
	-- Engine panel
	[206] = "%1d",	-- Start System
	[204] = "%1d",	-- Low-pressure Fuel Valve
	[202] = "%1d",	-- High-pressure Fuel Valve
	[205] = "%1d",	-- Ignition System
	[310] = "%1d",	-- Engine De-Ice
	[312] = "%1d",	-- Backup Generator
	[21] = "%1d",	-- Ejection Seat Arm
	[208] = "%1d",	-- Restart
	[203] = "%1d",	-- Main Electric Power
	[207] = "%1d",	-- Generator
	[209] = "%1d",	-- Master Mode Selector
	[446] = "%1d",	-- "Master Caution Reset
	[323] = "%1d",	-- Slav SI
	[324] = "%1d",	-- HÖJD CISI
	--[0] = "%1d",	-- Snabbresning
	[123] = "%1d",	-- Backup ADI Cage
	[126] = "%.3f",	-- Backup Altimeter Setting (Axis) {0.0,1.0} in 0.001 steps
	[311] = "%1d",	-- Pitch Gear Automatic/Landing
	-- Countermeasure panel
	[317] = "%.1f",	-- Jammer Operation Mode Selector {0.0,0.1,0.2,0.3,0.4}
	[318] = "%.1f",	-- Jammer Band Selector {0.0,0.1,0.2,0.3,0.4}
	[319] = "%.1f",	-- Countermeasure Operation Mode Selector {0.0,0.1,0.2,0.3,0.4}
	[320] = "%.1f",	-- Countermeasure Streak Mode Selector {0.0,0.1}
	[321] = "%.1f",	-- Radarwarning Indication Selector {0.0,0.1,0.2}
	[322] = "%.1f",	-- Countermeasure Chaff/Flares Selector {0.0,0.1,0.2}
	-- Oxygen
	[176] = "%1d",	-- Oxygen Lever
	-- Canopy
	[9] = "%1d",	-- Canopy Open/Close {-1.0,0.0,1.0}
	[210] = "%1d",	-- Canopy Jettison
	---
	[210] = "%1d",	-- Countermeasure Fast Release {-1.0,0.0,1.0}
	[316] = "%1d",	-- Manual Fuel Regulator
	[212] = "%1d",	-- Roll Centering
	[390] = "%1d",	-- Emergency Roll Trim {-1.0,0.0,1.0}
	[389] = "%1d",	-- Emergency Pitch Trim {-1.0,0.0,1.0}
	[388] = "%1d",	-- Emergency Yaw Trim {-1.0,0.0,1.0}
	[313] = "%1d",	-- Manual Afterburner Fuel Regulator
	[11] = "%1d",	-- HUD Reflector Glass Position
	[180] = "%.2f",	-- HUD Brightness Knob (Axis) {0.0,1.0} in 0.02 steps
	[13] = "%1d",	-- AFK Lever
	[464] = "%1d",	-- AFK Mode 3
	[22] = "%1d",	-- Parking Brake
	-- Radio
	[171] = "%.1f",	-- Radio Manual Frequency Setting Knob Inner Left (Axis) {0.0,1.0} in 0.1 steps
	[172] = "%.1f",	-- Radio Manual Frequency Setting Knob Outer Left (Axis) {0.0,1.0} in 0.1 steps
	[173] = "%.1f",	-- Radio Manual Frequency Setting Knob Inner Right (Axis) {0.0,1.0} in 0.1 steps
	[174] = "%.1f",	-- Radio Manual Frequency Setting Knob Outer Right (Axis) {0.0,1.0} in 0.1 steps
	[170] = "%1d",	-- Radio Manual Frequency Setting Modulation
	---
	[372] = "%1d",	-- Flight 0
	[373] = "%1d",	-- Flight 1
	[374] = "%1d",	-- Flight 2
	[375] = "%1d",	-- Flight 3
	[376] = "%1d",	-- Flight 4
	[377] = "%1d",	-- Flight 5
	[378] = "%1d",	-- Flight 6
	[379] = "%1d",	-- Flight 7
	[380] = "%1d",	-- Flight 8
	[381] = "%1d",	-- Flight 9
	[362] = "%1d",	-- Channel H
	[363] = "%1d",	-- Special 1
	[364] = "%1d",	-- Special 2
	[365] = "%1d",	-- Special 3
	[366] = "%1d",	-- Minus
	[367] = "%1d",	-- Channel A/G
	[368] = "%1d",	-- Channel B
	[369] = "%1d",	-- Channel C/F
	[370] = "%1d",	-- Channel C2
	[371] = "%1d",	-- Channel D/E
	---
	[386] = "%1d",	-- FR22 Mode Selector {-1.0,0.0,1.0}
	[361] = "%1d",	-- Base Selector {-1.0,0.0,1.0}
	[360] = "%1d",	-- Group Selector {-1.0,0.0,1.0}
	---
	[382] = "%1d",	-- Ground Intercom
	-- Weapons system
	-- trigger safety bracket
	[8] = "%1d",	-- Trigger Safety Bracket
	[260] = "%1d",	-- Weapon Emergency Release Cover
	[261] = "%1d",	-- Weapon Emergency Release Button
	[262] = "%1d",	-- External Tank Release Cover
	[263] = "%1d",	-- External Tank Release Button
	[264] = "%.1f",	-- Weapon Selector Knob - J/A Valjare {0.0,0.1,0.2,0.3,0.4,0.5}
	[265] = "%.1f",	-- Weapon Interval Selector Mode Knob - Siktningvaljare {0.0,0.1,0.2,...,0.9,1.0}
	[266] = "%1d",	-- Weapon Release Mode Switch - Fallsattomkopplare
	[267] = "%1d",	-- RB-04/RB-15/BK Release Mode Switch - MALVAL/PREP
	-- IFF panel
	[308] = "%1d",	-- IFF Power
	[309] = "%.1f",	-- IFF Code {0.0,0.1,0.2,...,0.9,1.0}
	-- CB Circuit breakers
	[302] = "%1d",	-- CB Autopilot SA
	[303] = "%1d",	-- CB High Alpha Warning
	[304] = "%1d",	-- CB Trim System
	[305] = "%1d",	-- CB CI/SI
	[306] = "%1d",	-- CB Ejection System
	[307] = "%1d",	-- CB CB Engine
	-- Radar
	[217] = "%.1f",	-- Anti Jamming Mode (AS) Selector {0.0,0.1,0.2,...,0.6,0.7}
	[214] = "%1d",	-- Lin/Log Radar Gain Switch
	[218] = "%1d",	-- Pulse Normal/Short Switch
	[216] = "%1d",	-- Passive Recce On/Off Switch
	[391] = "%.3f",	-- Radar Brightness (Axis) {0.0,1.0} in 0.001 steps
	-- Cabin air
	-- Var
	[286] = "%.3f",	-- Windscreen De-Ice (Axis) {0.0,1.0} in 0.001 steps
	[675] = "%.3f",	-- Maintenance Testing Mode (Axis) {0.0,1.0} in 0.001 steps
	[1006] = "%1d",	-- Radar/EL Maintenance Test
	[1200] = "%1d",	-- Magnetic Declination Cover
	[396] = "%.3f",	-- Drysuit Ventilation Adjustment (Axis) {0.0,1.0} in 0.001 steps
	[395] = "%1d",	-- Ignition Coils
	[1206] = "%1d",	-- DME Selector
	[1203] = "%1d",	-- IFF/Transponder Power
	[1204] = "%1d",	-- IFF Channel Selector
	[1205] = "%1d",	-- IFF Identification
	[384] = "%1d",	-- Flight Recorder {-1.0,0.0,1.0}
	[385] = "%.5f",	-- Radio Volume (Axis) {0.0,1.0} in 0.00001 steps
	--??[4200] = "%1d",	-- Insert/Remove Data Cartridge
	[300] = "%1d",	-- Rensa Button Cover
	[301] = "%1d",	-- CK37 Rensa (Clear)
	-- 
	[398] = "%1d",	-- Cabin Air Valve
	[493] = "%1d",	-- Autopilot Yaw Trim Cover
	[211] = "%.2f",	-- Autopilot yaw correction RENFLYGN (Axis) {0.0,1.0} in 0.01 steps
	[400] = "%1d",	-- Missile Select Button
	[399] = "%.3f",	-- Master Volume / Sidewinder Tone (Axis) {0.0,1.0} in 0.001 steps
	[1201] = "%.1f"	-- Magnetic Declination Correction (Axis) {0.0,1.0} in 0.1 steps
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

	local lFR22Radio = GetDevice(31)
	--ExportScript.Tools.SendData(2500, string.format("%7.3f", lFR22Radio:get_frequency()/1000000)) -- full frequency
	ExportScript.Tools.SendData(2500, ExportScript.Tools.RoundFreqeuncy(lFR22Radio:get_frequency()/1000000)) -- full frequency
	local lMHz = string.format("%0.0f", lFR22Radio:get_frequency()/1000000)
	local lKHz = string.sub(string.format("%0.3f", string.format("%.3f", lFR22Radio:get_frequency()/1000000) - lMHz), 3)
	ExportScript.Tools.SendData(2501, lMHz) -- slice frequency MHz
	ExportScript.Tools.SendData(2502, lKHz) -- slice frequency KHz

	-- 1,2,3 Lamps
	--[405] = "%.1f",	-- Afterburner zone indicator 0.0=off, >= 0.3=1, >= 0.6=2, >= 0.9=3
	local lAfterburnerZoneIndicator = mainPanelDevice:get_argument_value(405)

	if lAfterburnerZoneIndicator >= 0.9 then
		ExportScript.Tools.SendData(2510, 1) -- Afterburner 1
		ExportScript.Tools.SendData(2511, 1) -- Afterburner 2
		ExportScript.Tools.SendData(2512, 1) -- Afterburner 3
	elseif lAfterburnerZoneIndicator >= 0.6 then
		ExportScript.Tools.SendData(2510, 1)
		ExportScript.Tools.SendData(2511, 2)
		ExportScript.Tools.SendData(2512, 0)
	elseif lAfterburnerZoneIndicator >= 0.3 then
		ExportScript.Tools.SendData(2510, 1)
		ExportScript.Tools.SendData(2511, 0)
		ExportScript.Tools.SendData(2512, 0)
	else
		ExportScript.Tools.SendData(2510, 0)
		ExportScript.Tools.SendData(2511, 0)
		ExportScript.Tools.SendData(2512, 0)
	end

	-- Cockpit Light
	ExportScript.Tools.IkarusCockpitLights(mainPanelDevice, {392, 393, 394})
	-- Panel Lights, Flood Lights, Instrument Lights
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

	local lFR22Radio = GetDevice(31)
	--ExportScript.Tools.SendData(2500, string.format("%7.3f", lFR22Radio:get_frequency()/1000000)) -- full frequency
	ExportScript.Tools.SendData(2500, ExportScript.Tools.RoundFreqeuncy(lFR22Radio:get_frequency()/1000000)) -- full frequency
	local lMHz = string.format("%0.0f", lFR22Radio:get_frequency()/1000000)
	local lKHz = string.sub(string.format("%0.3f", string.format("%.3f", lFR22Radio:get_frequency()/1000000) - lMHz), 3)
	ExportScript.Tools.SendData(2501, lMHz) -- slice frequency MHz
	ExportScript.Tools.SendData(2502, lKHz) -- slice frequency KHz

	-- 1,2,3 Lamps
	--[405] = "%.1f",	-- Afterburner zone indicator 0.0=off, >= 0.3=1, >= 0.6=2, >= 0.9=3
	local lAfterburnerZoneIndicator = mainPanelDevice:get_argument_value(405)

	if lAfterburnerZoneIndicator >= 0.9 then
		ExportScript.Tools.SendDataDAC(2510, 1) -- Afterburner 1
		ExportScript.Tools.SendDataDAC(2511, 1) -- Afterburner 2
		ExportScript.Tools.SendDataDAC(2512, 1) -- Afterburner 3
	elseif lAfterburnerZoneIndicator >= 0.6 then
		ExportScript.Tools.SendDataDAC(2510, 1)
		ExportScript.Tools.SendDataDAC(2511, 2)
		ExportScript.Tools.SendDataDAC(2512, 0)
	elseif lAfterburnerZoneIndicator >= 0.3 then
		ExportScript.Tools.SendDataDAC(2510, 1)
		ExportScript.Tools.SendDataDAC(2511, 0)
		ExportScript.Tools.SendDataDAC(2512, 0)
	else
		ExportScript.Tools.SendDataDAC(2510, 0)
		ExportScript.Tools.SendDataDAC(2511, 0)
		ExportScript.Tools.SendDataDAC(2512, 0)
	end

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