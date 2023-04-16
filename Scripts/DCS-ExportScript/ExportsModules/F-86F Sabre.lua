-- F-86 Export 
-- https://github.com/asherao/DCS-ExportScripts

local base    = _G -- game information
local os      = base.os -- time
local Terrain = require('terrain') -- map info  
ExportScript.FoundDCSModule = true
ExportScript.Version.F86 = "1.2.1"

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
	-- Mechanic clock
	[19] = "%.4f",		-- CLOCK_currtime_hours {0.0, 12.0} = {0.0, 1.0}
	[18] = "%.4f",		-- CLOCK_currtime_minutes {0.0, 60.0} = {0.0, 1.0}
	--[37] = "%.4f",		-- CLOCK_currtime_seconds {0.0, 60.0} = {0.0, 1.0}
	--[56] = "%.4f",		-- CLOCK_flight_time_meter_status {0.0, 0.2} = {0.0, 1.0}
	--[52] = "%.4f",		-- CLOCK_flight_hours {0.0, 12.0} = {0.0, 1.0}
	--[53] = "%.4f",		-- CLOCK_flight_minutes {0.0, 60.0} = {0.0, 1.0}
	[37] = "%.4f",		-- CLOCK_seconds_meter_time_minutes {0.0, 60.0} = {0.0, 1.0}
	[1006] = "%.4f",	-- CLOCK_seconds_meter_time_seconds {0.0, 60.0} = {0.0, 1.0}
	-- flight gauge
	-- Airspeeed
	[178] = "%.4f",		-- Airspeeed {0.0, 25.7, 180.06, 334.4} = {0.0, 0.019, 0.494,  0.965}
	[709] = "%.4f",		-- AirspeeedDrum {0.0, 51.4444444} = {0.0, 1.0}
	[8] = "%.4f",		-- AirspeeedM1 {0.0, 25.7, 51.444, 308.67, 334.4} = {0.0, 0.02, 0.1,    0.6,    0.697}
	-- Altimeter
	[707] = "%.4f",		-- Altimeter10000 {0 ,30480} = {0 ,1}
	[523] = "%.4f",		-- Altimeter1000 {0 ,3048} = {0 ,1}
	[524] = "%.4f",		-- Altimeter100 {0 ,304.8} = {0 ,1}
	[700] = "%.4f",		-- AltimeterHG {0 , 91.44} = {0 ,1}
	-- Variometer
	[24] = "%.4f",		-- Variometer {-30.48, -10.16, -5.08,  0.0, 5.08,  10.16, 30.48} = {-1.0,   -0.5,   -0.29,  0.0, 0.29,  0.5,   1.0}
	-- MachNumber
	[179] = "%.4f",		-- MachNumber {0.5, 0.55, 0.6, 0.65, 0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5} = {0.0515, 0.0855, 0.122, 0.161, 0.203, 0.248, 0.295, 0.342, 0.3915, 0.441, 0.493, 0.597, 0.699, 0.796, 0.883, 0.965}
	-- TurnIndicator
	[25] = "%.4f",		-- TurnIndicator {-1.0, 1.0}
	-- SlipIndicator
	[31] = "%.4f",		-- SlipIndicator {-1.0, 1.0}
	-- Accelerometer
	[6] = "%.4f",		-- Accelerometer {-5.0, 0.0, 10.0} {0.0, 0.334, 1.0}
	[1003] = "%.4f",		-- AccelerometerMin {-5.0, 0.0, 10.0} {0.0, 0.334, 1.0}
	[1002] = "%.4f",		-- AccelerometerMax {-5.0, 0.0, 10.0} {0.0, 0.334, 1.0}
	-- GyroCompass
	[711] = "%.4f",		-- GyroCompassNeedle {1.0, 0.0}
	[712] = "%.4f",		-- GyroCompassScale {0.0, 1.0}
	-- AttitudeIndicator
	[713] = "%.4f",		-- AttitudeIndicatorOffFlag {0.0, 1.0} = {1.0, 0.0}
	[605] = "%.4f",		-- AttitudeIndicatorPitch {-0.27, 0.27}
	[606] = "%.4f",		-- AttitudeIndicatorBank {1.0, -1.0}
	[81] = "%.4f",		-- AttitudeIndicatorPitchSphere {-1.0, 1.0}
	[1005] = "%.4f",		-- AttitudeIndicatorBankNeedle {1.0, -1.0}
	-- engine gauges
	-- Tachometer
	[16] = "%.4f",		-- Tachometer {0.0, 0.5, 0.504, 1.1} = {0.012, 0.482, 0.5, 1.0}
	-- ExhaustTemperature
	[12] = "%.4f",		-- ExhaustTemperature {0.0, 1000.0} = {0.0, 1.0}
	-- OilPressure
	[112] = "%.4f",		-- OilPressure {0.0, 100.0} = {0.023, 1.0}
	-- FuelFlow
	[531] = "%.4f",		-- FuelFlow {0.0, 1.2599} = {0.0, 1.0}
	-- electric system
	[601] = "%.4f",		-- VoltageDC {0.0, 30.0} = {0.0, 0.3}
	[602] = "%.4f",		-- Loadmeter {0.0, 400.0} = {0.0, 1.0}
	-- hydraulic system
	[109] = "%.4f",		-- HydPress {0.0, 1.0} = {0.0, 1.0}
	-- fuel system
	[22] = "%.4f",		-- FuelQuantity {-500.0, 0.0, 45.36, 226.8, 453.6, 907.2, 1360.8, 1451.5} = {-1.0, 0.0, 0.012, 0.141, 0.31, 0.625, 0.938, 1.0}
	-- oxygen system
	[353] = "%.4f",		-- OxygenPressure {0.0, 500.0} = {0, 1}
	[705] = "%.1f",		-- OxygenFlowBlinker {0.0, 1.0}
	-- air system
	[114] = "%.4f",		-- CockpitAltimeter {0.0, 15240.0} = {0.0, 1.0}
	-- radio compass
	[804] = "%.4f",		-- ARN6_Band {0.0, 3.0} = {0.0, 1.0}
	[800] = "%.4f",		-- ARN6_TuningMeter {0.0, 1.0}
	[801] = "%.4f",		-- ARN6_Tuning {0.0, 0.2} = {0.0, 1.0}
	[600] = "%.4f",		-- ARN6_Bearing {0.0, 1.0}
	[814] = "%.4f",		-- ARN6_Scale {1.0, 0.0}
	[830] = "%.4f",		-- ARN6_FreqScale {0.0, 1.0}
	[219] = "%.4f",		-- ARN6_ScaleLight {0.0, 1.0}
	-- light system
	[182] = "%.f",		-- IlluminationLights {0.0, 1.0}
	[825] = "%.f",		-- StandByCompassLight {0.0, 1.0}
	[180] = "%.f",		-- PrimaryInstLights {0.0, 1.0}
	[185] = "%.f",		-- AuxiliaryInstrumentLights {0.0, 1.0}
	[222] = "%.4f",		-- LandingGearUnsafe {0.0, 1.0}
	--
	[603] = "%.4f",		-- LABS_roll_needle {-1.0, 1.0}
	[604] = "%.4f",		-- LABS_pitch_needle {-1.0, 1.0}
	--
	[818] = "%.4f",		-- EmergencyJettisonHandlePos {0.0, 1.0}
	[221] = "%.4f",		-- EmergencyJettisonHandleRot {0.0, 1.0}
	-- LAMPS
	-- electric system
	[617] = "%.f",		-- lamp_ELEC_GenOff {-1.0, 1.0}
	[610] = "%.f",		-- lamp_ELEC_MainInstInverterOffSelectAlt {-1.0, 1.0}
	[611] = "%.f",		-- lamp_ELEC_BothInstInvertersOff {-1.0, 1.0}
	[612] = "%.f",		-- lamp_ELEC_MainRadarInverterOff {-1.0, 1.0}
	-- hydraulic system
	[614] = "%.f",		-- lamp_HYDRO_AltFltContSysOper {-1.0, 1.0}
	[39] = "%.f",		-- lamp_HYDRO_LeftGear {-1.0, 1.0}
	[41] = "%.f",		-- lamp_HYDRO_RightGear {-1.0, 1.0}
	[40] = "%.f",		-- lamp_HYDRO_NoseGear {-1.0, 1.0}
	-- fuel system
	[625] = "%.f",		-- lamp_FUEL_OutbdTanksEmpty {-1.0, 1.0}
	-- fire detection system
	[615] = "%.f",		-- lamp_FIRE_DETECTION_FwdFireWarning {-1.0, 1.0}
	[616] = "%.f",		-- lamp_FIRE_DETECTION_AftFireWarning {-1.0, 1.0}
	-- control system
	[613] = "%.f",		-- lamp_CONTROL_TakeOffPosInd {-1.0, 1.0}
	-- air system
	[614] = "%.f"		-- lamp_WindshieldAntiIceOverheatWarning {-1.0, 1.0}
}

ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	-- cockpit mechanics
	[718] = "%.1f",     -- Canopy Switch, OPEN/OFF/CLOSE {-1.0, 0.0, 1.0}
	[818] = "%.1f",     -- Emergency Jettison Handle, IN/OUT {0.0, 1.0}
	[817] = "%.1f",     -- Canopy Alternate Emergency Jettison Handle, IN/OUT {0.0, 1.0}
	[816] = "%.1f",     -- Canopy Declutch Handle, IN/OUT {0.0, 1.0}
	-- electric
	[653] = "%1d",     -- Battery-Starter Switch, BATTERY/OFF/STARTER {-1, 1}
	[643] = "%.1f",     -- Instrument Power Switch, ALTERNATE/NORMAL {-1.0, 1.0}
	[664] = "%.1f",     -- Stop-Starter Button (Push to de-energize starter in case of malfunction) {0.0, 1.0}
	[652] = "%1d",     -- Engine Master Switch, ON/OFF {1}
	[670] = "%.1f",     -- Generator Switch, ON/OFF/RESET {1}
	[687] = "%1d",     -- Generator Warning Light (Push To Test) {1}
	[680] = "%1d",     -- Main Instrument (Three-phase) Inverter Failure Warning Light (Push to test) {1}
	[681] = "%1d",     -- Both Instrument (Main and alternate three-phase) Inverter Failure Warning Light (Push to test) {1}
	[682] = "%1d",     -- Main Radar (Single-phase) Inverter Failure Warning Light (Push to test) {1}
	-- Circuit Breaker (left panel)
	[760] = "%1d",     -- Bomb Rocket Tank Salvo {0, 1}
	[761] = "%1d",     -- Bomb Sel. {0, 1}
	[762] = "%1d",     -- Gyr'Syn Compass {0, 1}
	[763] = "%1d",     -- 3f Inverter {0, 1}
	[764] = "%1d",     -- Turn Bank Ind. {0, 1}
	[765] = "%1d",     -- Rudder Trim & Take-Off Ind. {0, 1}
	[766] = "%1d",     -- Alt Ail. Trim {0, 1}
	[767] = "%1d",     -- Ail & Horiz. Trim & Alt Horiz. Trim {0, 1}
	[768] = "%1d",     -- LDG Light Control {0, 1}
	[769] = "%1d",     -- LDG Lights {0, 1}
	[770] = "%1d",     -- Fire Warn. {0, 1}
	[771] = "%1d",     -- Bus Tie-In Control {0, 1}
	[772] = "%1d",     -- Speed Brake {0, 1}
	[773] = "%1d",     -- Free Air & Oil Temp & Air Sel. {0, 1}
	[774] = "%1d",     -- LDG Gear Warn. {0, 1}
	[775] = "%1d",     -- LDG Gear Control {0, 1}
	[776] = "%1d",     -- LDG Gear Pos Ind. {0, 1}
	[777] = "%1d",     -- Fuel Booster AFT {0, 1}
	[778] = "%1d",     -- Alt Emerg. Hyd. Cont. & Hyd. Press Ind. {0, 1}
	[779] = "%1d",     -- Sight Power {0, 1}
	[780] = "%1d",     -- Sight Heater {0, 1}
	[781] = "%1d",     -- Sight A.C. Power Unit {0, 1}
	[782] = "%1d",     -- AN/ARN-6 Radio Compass {0, 1}
	-- Circuit Breaker (right panel)
	[783] = "%1d",     -- Eng. Master Fuel Shut-Off {0, 1}
	[784] = "%1d",     -- Eng. Ign. {0, 1}
	[785] = "%1d",     -- Fuel Level {0, 1}
	[786] = "%1d",     -- Inv Gen. Failure Overvolt LTS Test {0, 1}
	[787] = "%1d",     -- Light Post IndCode {0, 1}
	[788] = "%1d",     -- Console & Ped LTS {0, 1}
	[789] = "%1d",     -- Fuel Boost FWD {0, 1}
	[790] = "%1d",     -- Wing Flap LH. {0, 1}
	[791] = "%1d",     -- Wing Flap RH. {0, 1}
	[792] = "%1d",     -- Light Fluor {0, 1}
	[793] = "%1d",     -- Sight Control {0, 1}
	[794] = "%1d",     -- AN/APC 3 Radio {0, 1}
	[795] = "%1d",     -- AN/APX-6 Radio IFF {0, 1}
    -- Hydraulic Interface
	[599] = "%1d",     -- Landing Gear Handle, UP/DOWN {1, 0}
	[710] = "%1d",     -- Landing Gear Emergency-up Button (Ground-use only! Hold in until gear retracts completely) {1}
	[631] = "%1d",     -- Hydraulic Pressure Gage and Selector Switch, UTILITY/NORMAL/ALTERNATE {1}
	[641] = "%1d",     -- Speed Brake Emergency Lever {1, 0}
	[684] = "%1d",     -- Alternate-on Warning Light (Push to test) {1}
	[706] = "%1d",     -- Alternate Hydraulic Emergency Override Handle, IN/OUT {1, -1}
	[647] = "%1d",     -- Flight Control Switch, ALTERNATE ON/NORMAL/RESET {1}
	[815] = "%1d",     -- Landing Gear Warning Horn Cutout Button (Push to silence horn) {1}
	[819] = "%.4f",	   -- Landing Gear Emergency Release Handle (rotary) {0.0,1.0} in 0.1 steps
	[211] = "%1d",     -- Speed Brake Switch, OUT/HOLD/IN {-1.0,0.0,1.0}
	[217] = "%1d",     -- Parking Brake Handle, ON/OFF
	-- Fuel Interface
	[672] = "%1d",     -- Fuel Densitometer Selection Switch, IN/OUT {2, -2}
	[662] = "%.1f",     -- Drop Tank Selector Switch {-0.1, 0.1}
	[701] = "%1d",     -- Drop Tank Jettison Button - Push to release drop tank(s) {1}
	[695] = "%1d",     -- Outboard Drop Tank Empty Indicator Light (Push to test) {1}
	-- Oxygen Interface
	[703] = "%1d",     -- Oxygen Regulator Diluter Lever, NORMAL OXYGEN/100% OXYGEN {1, -1}
	[704] = "%.4f",     -- Oxygen Regulator Supply Lever (rotary) {0.0 to 1.0} in -0.5 steps 
	-- Fire Detection Interface
	[635] = "%1d",     -- Engine Fire Warning Light Test Button {1,- 1}
	[685] = "%1d",     -- Forward Engine Compartment Fire-warning Light (Push to test) {1}
	[686] = "%1d",     -- Aft Engine Compartment Fire-warning Light (Push to test) {1}
	-- Air Interface
	[650] = "%1d",     -- Cockpit Pressure Control Switch, PRESS/RAM {2, -2}
	[651] = "%1d",     -- Cockpit Pressure Schedule Selector Switch, 5 PSI/2.75 PSI {2, -2}
	[646] = "%1d",     -- Pitot Heater Switch, ON/OFF {2, -2}
	[740] = "%.4f",     -- Cockpit Air Temperature Control Rheostat (rotary) {0.0, 1.0} in 0.3 steps
	--[736] = "%1d",     -- Cockpit Air Temperature Control Switch Cover {1, -1}
	[737] = "%.1f",     -- Cockpit Air Temperature Control Switch, AUTO/OFF/HOT/COLD {-1.0, 1.0}
	[645] = "%.1f",     -- Engine Anti-Ice & Screen Switch, EXTEND/RET./ANTI-ICE {-1.0, 1.0}
	[741] = "%1d",     -- Air Outlet Selector Lever, FLOOR/BOTH/DEFROST {-1, 1}
	[691] = "%1d",     -- Windshield Anti-Ice Overheat Warning Light
	[202] = "%.4f",    -- Windshield Anti-Icing Lever (rotary) {0.0,1.0} in 0.1 steps
	-- Light Interface
	[654] = "%1d",     -- Compass Light Switch, ON/OFF {2, -2}
	[813] = "%.1f",     -- Instrument Panel Primary Light Rheostat (rotary) {0.0, 1.0} in 0.5 steps
	[811] = "%.1f",     -- Instrument Panel Auxiliary Light Rheostat (rotary) {0.0, 1.0} in 0.5 steps
	[812] = "%.1f",     -- Console and Panel Light Rheostat (rotary) {0.0, 1.0} in 0.5 steps
	-- Nav Lights Interface
	[661] = "%.1f",     -- Landing & Taxi Lights Switch, EXTEND&ON/OFF/RETRACT {-1.0, 0.0, 1.0}
	[656] = "%.1f",     -- Position and Fuselage Light Selector Switch, STEADY/OFF/FLASH {-1.0, 0.0, 1.0}
	[655] = "%1d",     -- Exterior Lighting Dimmer Switch, BRIGHT/DIM {2, -2}
	-- Engine Interface
	[630] = "%1d",     -- Emergency Fuel Switch, ON/OFF {2, -2}
	--[732] = "%1d",     -- Emergency (In-air) Ignition Switch Cover {1, -1}
	[733] = "%.1f",     -- Emergency (In-air) Ignition Switch, ON/OFF {1.0, 1.0}
	-- Control Interface
	[649] = "%.1f",     -- Lateral Alternate Trim Switch, LEFT/RIGHT/NORMAL/OFF {0.3, 0.5, 0.1, 0.0}
	[648] = "%.1f",     -- Rudder Trim Switch, LEFT/OFF/RIGHT {1.0, -1.0}
	--[738] = "%1d",     -- Longitudinal Alternate Trim Switch Cover {1, -1}
	[739] = "%.1f",     -- Longitudinal Alternate Trim Switch, NORMAL GRIP CONT/NOSE UP/NOSE DOWN/OFF {0.5, 0.3, 0.1, 0.0}
	[683] = "%1d",     -- Take-off (Trim) Position Indicator Light (Push to test) {1}
	[735] = "%1d",     -- Wing Flaps Handle {-1, 1}
	[209] = "%1d",     -- Nose Wheel Steering Button
	-- radio ARC-27
	[806] = "%.4f",     -- AN/ARC-27 UHF Audio Volume Knob (rotary) {0.1, 0.9} in 0.5 steps
	[807] = "%.1f",     -- AN/ARC-27 UHF Preset Channel Selector {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8}
	[805] = "%.1f",     -- AN/ARC-27 UHF Power Switch, OFF/T/R/T/R + G REC/ADF  {0.0, 0.1, 0.2, 0.3}
	[213] = "%1d",      -- Microphone Button
	-- radio compass ARN-6
	[802] = "%.4f",     -- AN/ARN-6 Audio Volume Control (rotary) {0.1, 0.9} in 0.5 steps
	[803] = "%.1f",     -- AN/ARN-6 Frequency Band Switch {0.0, 0.1, 0.2, 0.3}
	[667] = "%.1f",     -- AN/ARN-6 Function Selector Switch, OFF/COMP/ANT./LOOP/CONT. {0.0, 0.1, 0.2, 0.3, 0.4}
	[666] = "%.1f",     -- AN/ARN-6 LOOP L-R Switch {-1.0, 0.0, 1.0}
	--[null] = "%.4f",     -- AN/ARN-6 Tuning Crank {0.0, 1.0} in 0.01 steps
	[657] = "%.1f",     -- AN/ARN-6 Scale Light Switch, HI/OFF/LO {-0.1, 0.0, 0.1}
	[826] = "%.4f",     -- AN/ARN-6 East/West Variation Knob (rotary) {0.0, 1.0} in 0.05 steps
	[658] = "%.1f",		-- AN/ARN-6 CW-VOICE Switch, CW/VOICE {1.0, -1.0}
	-- IFF APX-6
	[810] = "%.1f",     -- AN/APX-6 IFF Master Switch, EMERGENCY/NORM/LOW/STDBY/OFF {0.0, 0.1, 0.2, 0.3, 0.4}
	[659] = "%.1f",     -- AN/APX-6 IFF Mode 2 Switch, MODE 2/OUT/I/P {-0.1, 0.0, 0.1}
	[660] = "%.1f",     -- AN/APX-6 IFF Mode 3 Switch, MODE 3/OUT {0.0, 0.1}
	--[808] = "%1d",     -- AN/APX-6 IFF Destruct Switch Cover {1, -1}
	[809] = "%1d",     -- AN/APX-6 IFF Destruct Switch, OFF/ON {0, -1}
	-- baro altimeter
	[218] = "%.4f",     -- Altimeter reference pressure adjusting knob (rotary) {0.0, 1.0} in 0.1 steps
	-- gyromag compass
	--[null] = "%.4f",     -- Compass Correction (rotary) {0.0, 1.0} in 0.05 steps
	[598] = "%.1f",     -- Directional Indicator Fast Slaving Button {0.0, 1.0}
	-- attitude indicator
	[714] = "%.1f",     -- Pull to Cage Knob {0.0, 1.0}
	-- accelerometer
	[1004] = "%.1f",     -- Accelerometer Reset Button {0.0, 1.0}
	-- CLOCK
	--[null] = "%1d",     -- Set Clock Knob
	[831] = "%1d",     -- Elapsed Time Mechanism Button {0, 1}
	-- A4 Gun Sight
	[716] = "%.4f",     -- A-4 Sight Wing Span Adjustment Knob (rotary) {0.0, 1.0} in 0.1 steps
	[715] = "%.4f",     -- A-4 Sight Radar Range Sweep Rheostat (rotary) {0.0, 1.0} in 0.1 steps
	[734] = "%.4f",     -- A-4 Sight Reticle Dimmer Control (rotary) {0, 0.74} in -0.2 steps
	[755] = "%1d",      -- A-4 Sight Mechanical Caging Lever, CAGE/UNCAGE {0, 1}
	[755] = "%.4f",     -- A-4 Sight Mechanical Caging Lever, CAGE/UNCAGE (rotary) {0.001, 0.999} in 0.1 steps
	[212] = "%1d",      -- A-4 Sight Electrical Caging Button
	[642] = "%1d",      -- A-4 Sight Filament Selector Switch, SECONDARY/PRIMARY {2, -2}
	[210] = "%.4f",     -- A-4 Sight Rotating Grip - Mouse Wheel for manual ranging {-1.0,1.0} in 0.2 steps
	[210] = "%1d",      -- A-4 Sight Rotating Grip - Right Click for return to CCW spring-loaded position {1.0}
	[721] = "%.1f",     -- Variable Sight Selector Unit - Sight Function Selector Lever, ROCKET/GUN/BOMB {0.0, 0.1, 0.2}
	[720] = "%.1f",     -- Variable Sight Selector Unit - Target Speed Switch, HI/LO {0.0,0.5,1.0}
	[722] = "%.4f",     -- Variable Sight Selector Unit - Rocket Depression Angle Selector (rotary) {0.0, 1.0} in 0.1 steps
	[727] = "%.4f",     -- Bomb-Target Wind Control Knob (rotary) {0.0, 1.0} in 0.6 steps
	-- weapon system
	[639] = "",     -- Demolition Bomb Release Selector Switch, AUTO RELEASE/MANUAL RELEASE {2,-2}
	[641] = "%.1f",     -- Demolition Bomb Arming Switch (Fuze Selection), ARM NOSE&TAIL/OFF/TAIL ONLY {-1.0, 0.0, 1.0}
	[752] = "%.1f",     -- Demolition Bomb Sequence Selector Switch, ALL/OFF/LEFT/RIGHT {0.0, 0.1, 0.2, 0.3, 0.4, 0.5}
	[638] = "%.1f",     -- Rocket Fuze (Arming) Switch, DELAY/OFF/INSTANT {-1.0, 0.0, 1.0}
	[637] = "%1d",     -- Rocket Jettison Switch, READY/OFF {2, -2}
	--[750] = "%1d",     -- Rocket Release Selector Switch Cover {1, -1}
	[751] = "%.1f",     -- Rocket Release Selector Switch, SINGLE/OFF/AUTO {-1.0, 0.0, 1.0}
	[668] = "%.1f",     -- Gun Selector Switch {-0.2, 0.2}
	[665] = "%.1f",     -- Gun-Missile Selector Switch, OFF/SIGHT CAMERA & RADAR/GUNS/MISSILE {0, 0.3}
	[636] = "%.1f",     -- Gun Heater Switch, HEATER/OFF/(N/F) {-1.0, 1.0}
	[663] = "%1d",     -- Manual Pip Control Switch, BOMB/NORMAL {2, -2}
	[796] = "%.1f",     -- Manual Pip Control Change Calibrated Dials (Presets) {0.0, 0.3, 0.6, 0.9}
	[797] = "%.4f",     -- Manual Pip Control Knob (rotary) {0.0, 1.0} in 0.1 steps
	[729] = "%.4f",     -- A-4 Sight Bombing Altimeter Target Altitude Knob (rotary) {0.0, 1.0} in 0.015 steps
	[731] = "%.4f",     -- A-4 Sight Bombing Altimeter Index Altitude Handle (rotary) {0.0, 1.0} in -0.015 steps
	[632] = "%1d",     -- LABS Gyro Caging Switch, UNCAGE/CAGE {2,- 2}
	[633] = "%1d",     -- LABS Start Switch, ON/OFF {2, -2}
	[634] = "%1d",     -- LABS Change-over Switch, LABS/A-4 {2, -2}
	[702] = "%1d",     -- Bomb-Rocket-Tank Jettison Button {0.0, 1.0}
	[820] = "%.1f",     -- Missile Control Switch, LH & RH/RH/SALVO {-1.0, 0.0, 1.0}
	[821] = "%.4f",     -- Tone Volume (rotary) {0.0, 1.0} in 0.1 steps
	[822] = "%.1f",     -- Safe Launch Button {0.0, 1.0}
	[225] = "%1d",      -- G-Limit Light - Push to test
	[226] = "%.4f",     -- G-Limit Light - Rotate to adjust brightness(MW) (rotary) {0.0,0.5} in 0.02 steps
	[1001] = "%.1f",    -- Rocket Intervalometer {0.0, 1.0}
	[208] = "%1d"       -- A-4 Sight Radar Target Selector Button
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
	
	ExportScript.Radios(mainPanelDevice)
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

	ExportScript.Tools.IkarusCockpitLights(mainPanelDevice, {654,813,811,812}) 
	-- Compass Light Switch, Instrument Panel Primary Light Rheostat, Instrument Panel Auxiliary Light Rheostat, Console and Panel Light Rheostat
	
  if LoIsObjectExportAllowed() then -- returns true if world objects data is available
    if LoIsOwnshipExportAllowed() then -- returns true if ownship data is available
  ExportScript.LoAircraftInfo(mainPanelDevice) -- Provides a lot of aircraft properties
  ExportScript.AirportInfo(mainPanelDevice) -- Provides info on the two closest airports
  ExportScript.WindsAloft(mainPanelDevice) -- Gets winds at the aircraft
  ExportScript.GroundRadar(mainPanelDevice) -- Reports 2 closest friendlies and 2 enemies (Use in Single Player)
  ExportScript.AirRadar(mainPanelDevice) -- Reports 2 closest friendlies and 2 enemies (Use in Single Player)
  ExportScript.IglaHunter(mainPanelDevice) -- Locates closest Igla (Use in Single Player)
    end
  end	
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

function ExportScript.Radios(mainPanelDevice)

	local UHF_Freq = (GetDevice(26):get_frequency())/1000000
	--ExportScript.Tools.SendData(3000, string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	UHF_Freq = ExportScript.Tools.RoundFreqeuncy(UHF_Freq)
	
	local list_indication4 = ExportScript.Tools.split(list_indication(4), "%c")
	local UHF_Channel
	local ADF_Freq
	if list_indication4 ~= nil then
		UHF_Channel = list_indication4[123]
		ADF_Freq = list_indication4[108] -- using this way, the string looks like it is always 4 long
		ADF_Freq = ExportScript.Tools.trim(ADF_Freq)
	else
		UHF_Channel = "N/A"
		ADF_Freq = "N/A"
	end
	
	ExportScript.Tools.SendData(3000, UHF_Freq) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	ExportScript.Tools.SendData(3001, "CH " .. UHF_Channel) -- results in something like "1" or "G"
	ExportScript.Tools.SendData(3002, "CH " .. UHF_Channel .. "\n" .. UHF_Freq)
	ExportScript.Tools.SendData(3003, "ADF\n" .. ADF_Freq)
end

function ExportScript.LoAircraftInfo(mainPanelDevice)
  
  -- General
  local aircraftName = LoGetSelfData().Name -- DCS Name of the aircraft eg "F-5E-3"
  local pilotName = LoGetPilotName() -- Logbook Pilot name
  
	-- Times DCS times are default in seconds
  local dcsModelTime = LoGetModelTime() -- time since aircraft spawn
  local missionStartTime = LoGetMissionStartTime() -- second after midnight that the mission started
  local dcsTimeLocal = formatTime(LoGetMissionStartTime() + LoGetModelTime()) -- up-to-date time in dcs
  local utcOffset = -1 * Terrain.GetTerrainConfig('SummerTimeDelta') * 3600 -- eg -1 * 4 * 3600 (for seconds to get hours)
  local dcsTimeUtc = formatTime(dcsModelTime + LoGetMissionStartTime() + utcOffset) -- dcs zulu time
  local realTimeLocal = os.date("%H-%M-%S") -- real life time
  local realTimeUtc = os.date("!%H-%M-%S") -- real life zulu time
  --local playTime = formatTime(DCS.getRealTime()) -- does not work, export environment no access
  
  -- Player Aircraft Properties
  local altMsl_meters = LoGetAltitudeAboveSeaLevel()
  local altMsl_feet = meters2feet(altMsl_meters)
  local altAgl_meters = LoGetAltitudeAboveGroundLevel()
  local altAgl_feet = meters2feet(altAgl_meters)
  
  local verticalVelocity_metric = LoGetVerticalVelocity()
  local verticalVelocity_imperial = metersPerSecond2feetPerMinute(LoGetVerticalVelocity())
  
  local ias_metric = LoGetIndicatedAirSpeed()
  local ias_knots = metersPerSecond2knots(LoGetIndicatedAirSpeed())
  local ias_mph = metersPerSecond2milesPerHour(LoGetIndicatedAirSpeed())

  local tas_metric = LoGetTrueAirSpeed()
  local tas_knots = metersPerSecond2knots(LoGetTrueAirSpeed())
  local tas_mph = metersPerSecond2milesPerHour(LoGetTrueAirSpeed())
  
  local speed_mach = LoGetMachNumber()
  local accel_g = LoGetAccelerationUnits().y
  local aoa = LoGetAngleOfAttack()
  
   --local atmosphericPressure_mmhg = LoGetBasicAtmospherePressure() -- does not seem to work
  
  local aircraftPitch, aircraftBank, aircraftYawTrue = LoGetADIPitchBankYaw()
  aircraftPitch = aircraftPitch * 57.3
  aircraftBank = aircraftBank * 57.3
  aircraftYawTrue = aircraftYawTrue * 57.3 -- true heading
  local aircraftYawMagnetic = LoGetMagneticYaw()  * 57.3 -- magnetic heading
  local aircraftHeading = aircraftYawMagnetic -- this cound be negative
  if aircraftHeading < 0 then aircraftHeading = aircraftHeading + 360 end -- removes the negative
  local magneticVariance = aircraftYawTrue - aircraftYawMagnetic -- works for all maps
  
  local selfData = LoGetSelfData() -- relative the the player
  local lLatitude = selfData.LatLongAlt.Lat
  local lLongitude = selfData.LatLongAlt.Long
  local mgrs = Terrain.GetMGRScoordinates(LoGetSelfData().Position.x, LoGetSelfData().Position.z)
  local mgrsTable = mgrsTableize(mgrs) -- format is mgrsTable[1][1], mgrsTable[1][2], mgrsTable[1][3], mgrsTable[1][4]
 
  local aircraftHeadingTrue = selfData.Heading * 57.3 -- true yeading (same as trueYaw for fixed wing aircraft)
  
  -- Engine Info
  local engineInfo = LoGetEngineInfo()
  local lEngineRPMleft = engineInfo.RPM.left -- ENG1 RPM %
  local lEngineRPMright = engineInfo.RPM.right -- ENG2 RPM %
  local lEngineFuelInternal = engineInfo.fuel_internal -- 1 = full. 0 = empty. Includes external tanks for FF aircraft
  local lEngineFuelExternal = engineInfo.fuel_external -- TANK2 (EXT) (KG) -- does not seem to work for FF modules
  local lEngineFuelTotal = lEngineFuelInternal + lEngineFuelExternal
  local lEngineTempLeft = engineInfo.Temperature.left -- ENG1 EGT ºC. May get odd numbers
  local lEngineTempRight = engineInfo.Temperature.right -- ENG2 EGT ºC. May get odd numbers	
  
  local lFuelConsumptionLeft =  engineInfo.FuelConsumption.left -- {left ,right},kg per sec
  local lFuelConsumptionRight =  engineInfo.FuelConsumption.right -- {left ,right},kg per sec
  local lFuelConsumptionTotal =  lFuelConsumptionLeft + lFuelConsumptionRight -- total,kg per sec
  local lHydraulicPressureLeft =  engineInfo.HydraulicPressure.left -- {left ,right},kg per square centimeter
  local lHydraulicPressureRight =  engineInfo.HydraulicPressure.right -- {left ,right},kg per square centimeter
 
  ExportScript.Tools.SendData(8000, aircraftName)
  
  ExportScript.Tools.SendData(8001, pilotName)
  
  ExportScript.Tools.SendData(8002, 'Real Time\n'.. realTimeLocal .. '\nDCS Time\n' .. dcsTimeLocal) -- clocks
  
  ExportScript.Tools.SendData(8003, 'HDG ' .. prefixZerosFixedLength(round(aircraftHeading,0),3)  .. 'º'
                                    .. '\nALT ' .. format_int(round(altMsl_feet,-1)) .. ' ft'
                                    .. '\nIAS ' .. round(ias_knots,0)  .. ' kts'
                                    .. '\nV/S ' .. format_int(round(verticalVelocity_imperial,-2)) .. ' ft/min'
                                    ) -- Aircraft Instrument panel (western)
                                  
  ExportScript.Tools.SendData(8004, 'HDG ' .. prefixZerosFixedLength(round(aircraftHeading,0),3)  .. 'º'
                                    .. '\nALT ' .. format_int(round(altMsl_meters,-1)) .. ' m'
                                    .. '\nIAS ' .. round(ias_metric,0)  .. ' km/h'
                                    .. '\nV/S ' .. format_int(round(verticalVelocity_metric,0)) .. ' m/s'
                                    ) -- Aircraft Instrument panel (eastern)

  ExportScript.Tools.SendData(8005, 'HDG ' .. prefixZerosFixedLength(round(aircraftHeading,0),3)  .. 'º'
                                    .. '\nALT ' .. format_int(round(altMsl_feet,-1)) .. ' ft'
                                    .. '\nIAS ' .. round(ias_mph,0)  .. ' mph'
                                    .. '\nV/S ' .. format_int(round(verticalVelocity_imperial,-2)) .. ' ft/min'
                                    ) -- Aircraft Instrument panel (western ww2)
                                  
  ExportScript.Tools.SendData(8006, "Lat-Long-DMS\n" .. formatCoord("DMS",true, lLatitude) 
                                    .. "\n" .. formatCoord("DMS",false, lLongitude)
                                    ) -- Player coordinates in DMS

  ExportScript.Tools.SendData(8007, "Lat-Long-DDM\n" .. formatCoord("DDM",true, lLatitude) 
                                    .. "\n" .. formatCoord("DDM",false, lLongitude)
                                    ) -- Player coordinates in DDM

  ExportScript.Tools.SendData(8008, 'MGRS\n'.. mgrsTable[1][1] .. ' ' .. mgrsTable[1][2] 
                                    .. '\n' .. mgrsTable[1][3] .. ' ' .. mgrsTable[1][4]
                                    ) -- Player coordinates in MGRS on 2 rows + title

  ExportScript.Tools.SendData(8009, 'Mag Var\n' .. format_int(round(magneticVariance, 2))) -- also called magnetic deviation
  
  -- Example for using the Lo Data. Feel free to make your own!
  ExportScript.Tools.SendData(8010, format_int(round(kgPerSecond2poundPerHour(lFuelConsumptionLeft), -1))) -- fuel use in pph
  
end
function ExportScript.AirportInfo(mainPanelDevice)
  
  local airdromes = LoGetWorldObjects("airdromes") -- returns a list of runways and their popperties
  local airportInfo = {} -- contains generated table of important properties
  -- the table will be sorted by nearest airport first
  -- for this table:
  -- airportInfo[1] is the first element
  -- airportInfo[1][1] is the airport name of the first element/airport
  -- airportInfo[1][2] is the distance to the airport of the first element/airport
  -- airportInfo[1][3] is the bearing to the airport of the first element/airport
  -- airportInfo[1][4] is the extimated time en route 
  -- airportInfo[1][5] is the direction of the wind
  -- airportInfo[1][6] is the windStrength of the wind
  -- airportInfo[1][7] is the main runway heading
  -- airportInfo[1][8] is the reverse of the main runway
  -- airportInfo[1][9] is the prefered runway based on winds
  
  for key,value in pairs(airdromes) do
    
    -- remove the woRunWay entries so that only named runways are in the list
    if value.Name ~= 'woRunWay' then 
      
      -- get the distance from the player to the runway
      local distance = getdistance(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, "nm")
                                  
      -- get the direction from the player to the runway                       
      local bearing = getBearing(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, true)
                                  
      -- estimate the runway heading based on the reported values
      local runwayHeading = round(value.Heading * 57.3,-1) / 10
      if runwayHeading < 0 then
        runwayHeading = 36 + runwayHeading
      end
      -- Reverse it for the reciprocal runway
      local runwayHeadingReciprocal
      if runwayHeading > 18 then
        runwayHeadingReciprocal = runwayHeading-18
      else
        runwayHeadingReciprocal = runwayHeading+18
      end
      
      local ete = distance / metersPerSecond2knots(LoGetTrueAirSpeed()) * (60 * 60) --based on tas bc dcs is flat...
      -- if ete is more than 24hrs, make it 24 hrs, which shows up as 00-00-00
      -- this case is for choppers and aircraft that arent moving
      if ete > 86400 then ete = 86400 end
      ete = formatTime(ete)
      
      -- wind at airport calculations. Each airport has slighty different winds
      -- https://forum.dcs.world/topic/165136-logetwindatpoint-in-exportlua/#comment-3294428
      -- LoGetWindAtPoint(x,y,z,is_radio_alt), 2 meters off the ground for the "wind sensor"
      local vx,_vy,vz,_absolute_height = LoGetWindAtPoint(value.Position.x,2,value.Position.y,true) 
      local windDirectionInRadians = math.atan2(vz,vx)
      local windDirection = windDirectionInRadians * 57.3
      local windStrength = math.sqrt((vx)^2 + (vz)^2)
      if windDirection < 0 then
        windDirection = 360 + windDirection
      end
      -- Convert to direction to from direction 
      if windDirection > 180 then
        windDirection = windDirection - 180
      else
        windDirection = windDirection + 180
      end
      
      -- Calculate the prefered runway for landing
      -- if the rounded runway is within +- 9 of the rounded wind, then it is prefered
      local windRounded = round(windDirection, -1)
      if windRounded >= runwayHeading - 9 and windRounded <= runwayHeading + 9 then
        runwayHeadingPrefered = runwayHeading
      else
        runwayHeadingPrefered = runwayHeadingReciprocal
      end
      
      -- Populate the table with the important info for each airport
      table.insert(airportInfo, -- the table name
        {value.Name, -- airport name [1]
        distance, bearing, ete, --[2][3][4]
        windDirection,windStrength, --wind direction [5], wind Strength [6]
        runwayHeading, runwayHeadingReciprocal,runwayHeadingPrefered}) -- [7][8][9]
    
    end -- end of woRunWay
  end -- end of FOR loop
  
  -- sort the table based on the second value, which is distance
  -- https://stackoverflow.com/questions/51276613/how-to-sort-table-by-value-and-then-print-index-in-order
  -- https://www.tutorialspoint.com/sort-function-in-lua-programming
  table.sort(airportInfo, function(a,b) return a[2] < b[2] end)

  -- Primary Airport (closest)
  ExportScript.Tools.SendData(8101, airportInfo[1][1] .. '\n' -- name of airport
                                --[[.. 'BRG ']] .. format_int(addZeros3(round(airportInfo[1][3],0))) .. 'º ' -- bearing
                                --[[.. 'DIST ']] .. format_int(round(airportInfo[1][2], 0)) .. 'nm\n' -- distance
                                .. 'ETE ' .. airportInfo[1][4] .. '\n' -- estimated time in route
                                .. '' .. prefixZerosFixedLength(round(airportInfo[1][5], 0),3) .. 'º ' -- wind bearing
                                .. round(metersPerSecond2knots(airportInfo[1][6]),0) .. 'kts' -- wing strength
                                .. '\n' .. prefixZerosFixedLength(airportInfo[1][7],2) -- runway 1
                                .. '-' .. prefixZerosFixedLength(airportInfo[1][8],2) -- runway 2
                                .. ' (' .. prefixZerosFixedLength(airportInfo[1][9],2) .. ')') -- prefered runway based on wind in parens

  -- Secondary Airport (second closest)
  ExportScript.Tools.SendData(8102, airportInfo[2][1] .. '\n' -- name of airport
                                --[[.. 'BRG ']] .. format_int(addZeros3(round(airportInfo[2][3],0))) .. 'º ' -- bearing
                                --[[.. 'DIST ']] .. format_int(round(airportInfo[2][2], 0)) .. 'nm\n' -- distance
                                .. 'ETE ' .. airportInfo[2][4] .. '\n' -- estimated time in route
                                .. '' .. prefixZerosFixedLength(round(airportInfo[2][5], 0),3) .. 'º ' -- wind bearing
                                .. round(metersPerSecond2knots(airportInfo[2][6]),0) .. 'kts' -- wing strength
                                .. '\n' .. prefixZerosFixedLength(airportInfo[2][7],2) -- runway 1
                                .. '-' .. prefixZerosFixedLength(airportInfo[2][8],2) -- runway 2
                                .. ' (' .. prefixZerosFixedLength(airportInfo[2][9],2) .. ')') -- prefered runway based on wind in parens
end

function ExportScript.WindsAloft(mainPanelDevice)
  
  -- Winds relative to the aircraft, aka, winds aloft
  local windAloft = LoGetVectorWindVelocity()
  local windStrengthAloft  = math.sqrt((windAloft.x)^2 + (windAloft.z)^2)
  local windDirectionAloft = math.deg(math.atan2(windAloft.z, windAloft.x))
  if windDirectionAloft < 0 then
    windDirectionAloft = 360 + windDirectionAloft
  end
  
  -- Convert to direction to from direction 
  if windDirectionAloft > 180 then
    windDirectionAloft = windDirectionAloft - 180
  else
    windDirectionAloft = windDirectionAloft + 180
  end

  ExportScript.Tools.SendData(8100, 'Wind Aloft\n' .. addZeros3(round(windDirectionAloft,0)) .. 'º '
                                    .. round(metersPerSecond2knots(windStrengthAloft,0)) .. 'kts'
                              ) -- winds at the aircraft
end
function ExportScript.GroundRadar(mainPanelDevice) -- may return some odd things
  
  local tableOfUnits = LoGetWorldObjects('units')

  local tableOfGround = {}
  -- relative to the player...
  local tableOfGround_friendly = {}
  local tableOfGround_friendlyReports = {}
  local tableOfGround_enemy = {}
   local tableOfGround_enemyReports = {}
  
  for key,value in pairs(tableOfUnits) do
    if value.Type.level1 == 2 then
    	table.insert(tableOfGround, value)
    end
  end   
  
  local selfData = LoGetSelfData()
  local selfCoalitionID = selfData.CoalitionID
  
  for key,value in pairs(tableOfGround) do
    if value.CoalitionID == selfCoalitionID then
    	table.insert(tableOfGround_friendly, value)
    else
      table.insert(tableOfGround_enemy, value)
    end
  end
  
  -- TODO: only do enemy reports if there is an awacs unit(?)
  for key,value in pairs(tableOfGround_enemy) do
    local distance = getdistance(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, "nm")
                             
    local bearing = getBearing(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, true)

    table.insert(tableOfGround_enemyReports, -- the table name
        {value.Name, distance, bearing}) --[1][2][3]    
  end  
  table.sort(tableOfGround_enemyReports, function(a,b) return a[2] < b[2] end) -- sort based on the second value, which is distance
  
  
  for key,value in pairs(tableOfGround_friendly) do
    local distance = getdistance(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, "nm")
                             
    local bearing = getBearing(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, true)

    table.insert(tableOfGround_friendlyReports, -- the table name
        {value.Name, distance, bearing}) --[1][2][3]
        
  end
  table.sort(tableOfGround_friendlyReports, function(a,b) return a[2] < b[2] end) -- sort based on the second value, which is distance
  
  local string_8200 = 'No Ground\nEnemy\nDetected'
  if tableOfGround_enemyReports[1] ~= nill then
    string_8200 = 'Enemy Ground\n' .. tableOfGround_enemyReports[1][1]
                .. '\n ' .. prefixZerosFixedLength(tableOfGround_enemyReports[1][3],3) -- bearing
                .. 'º  ' .. round(tableOfGround_enemyReports[1][2],0) .. 'nm'--distance
  end
  
  local string_8201 = 'No Ground\nEnemy\nDetected'
  if tableOfGround_enemyReports[2] ~= nill then
    string_8201 = 'Enemy Ground\n'.. tableOfGround_enemyReports[2][1]
                .. '\n ' .. prefixZerosFixedLength(tableOfGround_enemyReports[2][3],3) -- bearing
                .. 'º  ' .. round(tableOfGround_enemyReports[2][2],0) .. 'nm'--distance
  end
  
  local string_8202 = 'No Ground\nFriend\nDetected'
  if tableOfGround_friendlyReports[1] ~= nill then
    string_8202 = 'Friend Ground\n' .. tableOfGround_friendlyReports[1][1]
                .. '\n ' .. prefixZerosFixedLength(tableOfGround_friendlyReports[1][3],3) -- bearing
                .. 'º  ' .. round(tableOfGround_friendlyReports[1][2],0) .. 'nm'--distance
  end
  
  local string_8203 = 'No Ground\nFriend\nDetected'
  if tableOfGround_friendlyReports[2] ~= nill then
    string_8203 = 'Friend Ground\n' .. tableOfGround_friendlyReports[2][1]
                .. '\n ' .. prefixZerosFixedLength(tableOfGround_friendlyReports[2][3],3) -- bearing
                .. 'º  ' .. round(tableOfGround_friendlyReports[2][2],0) .. 'nm'--distance
  end
  
  ExportScript.Tools.SendData(8200, string_8200)  
  ExportScript.Tools.SendData(8201, string_8201)                                 
  ExportScript.Tools.SendData(8202, string_8202)  
  ExportScript.Tools.SendData(8203, string_8203)                                  
end

function ExportScript.AirRadar(mainPanelDevice)
  
  local tableOfUnits = LoGetWorldObjects('units')

  local tableOfAircraft = {}
  -- relative to the player...
  local tableOfAircraft_friendly = {}
  local tableOfAircraft_friendlyReports = {}
  local tableOfAircraft_enemy = {}
   local tableOfAircraft_enemyReports = {}
  
  for key,value in pairs(tableOfUnits) do
    if value.Type.level1 == 1 then
    	table.insert(tableOfAircraft, value)
    end
  end   
  
  local selfData = LoGetSelfData()
  local selfCoalitionID = selfData.CoalitionID
  
  for key,value in pairs(tableOfAircraft) do
    if value.CoalitionID == selfCoalitionID then
    	table.insert(tableOfAircraft_friendly, value)
    else
      table.insert(tableOfAircraft_enemy, value)
    end
  end
  
  -- TODO: only do enemy reports if there is a awacs unit
  for key,value in pairs(tableOfAircraft_enemy) do
    local distance = getdistance(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, "nm")
                             
    local bearing = getBearing(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, true)

    table.insert(tableOfAircraft_enemyReports, -- the table name
        {value.Name, distance, bearing}) --[1][2][3]
        
    -- https://stackoverflow.com/questions/51276613/how-to-sort-table-by-value-and-then-print-index-in-order
    -- https://www.tutorialspoint.com/sort-function-in-lua-programming
    
  end  
  table.sort(tableOfAircraft_enemyReports, function(a,b) return a[2] < b[2] end) -- sort based on the second value, which is distance
  
  
  for key,value in pairs(tableOfAircraft_friendly) do -- [1] will always be the player
    local distance = getdistance(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, "nm")
                             
    local bearing = getBearing(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, true)

    table.insert(tableOfAircraft_friendlyReports, -- the table name
        {value.Name, distance, bearing}) --[1][2][3]
        
  end
  table.sort(tableOfAircraft_friendlyReports, function(a,b) return a[2] < b[2] end) -- sort based on the second value, which is distance
  
  local string_8210 = 'No Air\nEnemy\nDetected'
  if tableOfAircraft_enemyReports[1] ~= nill then
    string_8210 = 'Enemy Air\n' .. tableOfAircraft_enemyReports[1][1]
                .. '\n ' .. prefixZerosFixedLength(tableOfAircraft_enemyReports[1][3],3) -- bearing
                .. 'º  ' .. round(tableOfAircraft_enemyReports[1][2],0) .. 'nm'--distance
  end
  
  local string_8211 = 'No Air\nEnemy\nDetected'
  if tableOfAircraft_enemyReports[2] ~= nill then
    string_8211 = 'Enemy Air\n' .. tableOfAircraft_enemyReports[2][1]
                .. '\n ' .. prefixZerosFixedLength(tableOfAircraft_enemyReports[2][3],3) -- bearing
                .. 'º  ' .. round(tableOfAircraft_enemyReports[2][2],0) .. 'nm'--distance
  end
  
  local string_8212 = 'No Air\nFriend\nDetected'
  if tableOfAircraft_friendlyReports[2] ~= nill then
    string_8212 = 'Friend Air\n' .. tableOfAircraft_friendlyReports[2][1]
                  .. '\n ' .. prefixZerosFixedLength(tableOfAircraft_friendlyReports[2][3],3) -- bearing
                  .. 'º  ' .. round(tableOfAircraft_friendlyReports[2][2],0) .. 'nm'--distance
  end
  
  local string_8213 = 'No Air\nFriend\nDetected'
  if tableOfAircraft_friendlyReports[3] ~= nill then
    string_8213 = 'Friend Air\n' .. tableOfAircraft_friendlyReports[3][1]
                  .. '\n ' .. prefixZerosFixedLength(tableOfAircraft_friendlyReports[3][3],3) -- bearing
                  .. 'º  ' .. round(tableOfAircraft_friendlyReports[3][2],0) .. 'nm'--distance
  end
  
  ExportScript.Tools.SendData(8210,string_8210)  
  ExportScript.Tools.SendData(8211, string_8211)                                 
  ExportScript.Tools.SendData(8212, string_8212)  
  ExportScript.Tools.SendData(8213, string_8213)                                  
end

function ExportScript.IglaHunter(mainPanelDevice) -- Locates the nearest Igla
  
  local tableOfUnits = LoGetWorldObjects('units')
  local selfData = LoGetSelfData()
  local selfCoalitionID = selfData.CoalitionID
  
  local tableOfIgla = {}
  local tableOfIgla_report = {}
  
  --TODO: Might have to refine this.
  for key,value in pairs(tableOfUnits) do
    if value.CoalitionID ~= selfCoalitionID then
      if value.Type.level3 == 27 then
        if value.Type.level2 == 16 then
          if value.Type.level1 == 2 then
            if value.Type.level4 == 55 or 54 or 53 or 52 or 62 then
              table.insert(tableOfIgla, value)
            end
          end  
        end    
      end
    end
  end
  
  --if tableOfIgla ~= null then
  for key,value in pairs(tableOfIgla) do
    local distance = getdistance(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, "nm")
                             
    local bearing = getBearing(LoGetSelfData().LatLongAlt.Lat, 
                                    value.LatLongAlt.Lat, 
                                    LoGetSelfData().LatLongAlt.Long, 
                                    value.LatLongAlt.Long, true)

    table.insert(tableOfIgla_report, -- the table name
        {value.Name, distance, bearing}) --[1][2][3]    
  --end  
  end
  table.sort(tableOfIgla_report, function(a,b) return a[2] < b[2] end) -- sort based on the second value, which is distance
  
  local string_8666 = 'Igla Hunter\nSearching...'
  if tableOfIgla_report[1] ~= nill then
    string_8666 = 'Igla Detected\n' .. tableOfIgla_report[1][1]
                                        .. '\n ' .. prefixZerosFixedLength(tableOfIgla_report[1][3],3) -- bearing
                                        .. 'º  ' .. round(tableOfIgla_report[1][2],0) .. ' nm'--distance
  end
  
  ExportScript.Tools.SendData(8666, string_8666) 
  
end
----------------------
-- Helper Functions --
----------------------
function ExportScript.Linearize(current_value, raw_tab, final_tab)
  -- (c) scoobie
  if current_value <= raw_tab[1] then
    return final_tab[1] 
  end
  for index, value in pairs(raw_tab) do
    if current_value <= value then
      local ft = final_tab[index]
      local rt = raw_tab[index]
      return (current_value - rt) * (ft - final_tab[index - 1]) / (rt - raw_tab[index - 1]) + ft
    end
  end
  -- we shouldn't be here, so something went wrong - return arbitrary max. final value, maybe the user will notice the problem:
  return final_tab[#final_tab]
end

function trim(s) --http://lua-users.org/wiki/CommonFunctions
  -- from PiL2 20.4
  return (s:gsub("^%s*(.-)%s*$", "%1"))
end
function formatTime(time)
    local seconds = math.floor(time) % 60
    local minutes = math.floor(time / 60) % 60
    local hours = math.floor(time / (60 * 60)) % 24
    return string.format("%02d", hours) .. "-" .. string.format("%02d", minutes) .. "-" .. string.format("%02d", seconds)
end    

function meters2feet(meters)
  local feet = meters * 3.281
  return feet
end

function feet2meters(feet)
  local meters = feet / 3.281
  return feet
end

function metersPerSecond2milesPerHour(metersPerSecond)
  local milesPerHour = metersPerSecond * 2.237
  return milesPerHour
end

function metersPerSecond2knots(metersPerSecond)
  local knots = metersPerSecond * 1.944
  return knots
end

function kgPerSecond2poundPerHour(kgPerSecond)
  poundPerHour = kgPerSecond * 7937
  return poundPerHour
end

function metersPerSecond2feetPerMinute(metersPerSecond)
  local feetPerMinute = metersPerSecond * 197
  return feetPerMinute
end

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

function formatCoord(type, isLat, d)
    local h
    if isLat then
        if d < 0 then
            h = 'S'
            d = -d
        else
            h = 'N'
        end
    else
        if d < 0 then
            h = 'W'
            d = -d
        else
            h = 'E'
        end
    end

    local g = math.floor(d)
    local m = math.floor(d * 60 - g * 60)
    local s = d * 3600 - g * 3600 - m * 60

    if type == "DMS" then -- Degree Minutes Seconds
        s = math.floor(s * 100) / 100
        return string.format('%s %2d°%.2d\'%05.2f"', h, g, m, s)
    elseif type == "DDM" then -- Degree Decimal Minutes
        s = math.floor(s / 60 * 1000)
        return string.format('%s %2d°%02d.%3.3d\'', h, g, m, s)
    else -- Decimal Degrees
        return string.format('%f',d)
    end
end

function getdistance(lat1,lat2,lon1,lon2,unit) -- https://www.geeksforgeeks.org/program-distance-two-points-earth/
  --Example Locations
  --lat1 = 42.1578 -- POTI
  --lat2 = 42.3269 -- HONI
  --lon1 = 41.6777
  --lon2 = 42.4122
		
  local lon1 = toRadians(lon1)
  local lon2 = toRadians(lon2)
  local lat1 = toRadians(lat1)
  local lat2 = toRadians(lat2)
  
  -- Haversine formula
  local dlon = lon2 - lon1
  local dlat = lat2 - lat1
  local a = math.pow(math.sin(dlat / 2), 2) +
      math.cos(lat1) * math.cos(lat2) *
      math.pow(math.sin(dlon / 2),2)
    
  local c = 2 * math.asin(math.sqrt(a))

  local r -- Radius of earth in X.
  if unit == 'nm' then
      r = 6371 / 1.852 -- times 1.852 because I could not find a good NM source
    elseif unit == 'km' then
      r = 6371 -- Use 6371 for kilometers
    elseif unit == 'miles' then
    r = 3956 -- Use 3956 for miles
    elseif unit == 'meters' then
    r = 6371 * 1000
    end
  
  -- calculate the result
  return (c * r)
end

function toRadians(angleIn10thofaDegree)
  return (angleIn10thofaDegree * math.pi) / 180
end


function getBearing(lat1,lat2,lon1,lon2, magnetic)
  local bearing_rad = math.atan2(lon2 - lon1, lat2 - lat1)
  if bearing_rad < 0 then
    bearing_rad = bearing_rad + (2 * math.pi) 
  end
    
  bearing = math.deg(bearing_rad)
  
  -- start calculation for getting the magnetic bar
  local _aircraftPitch, _aircraftBank, aircraftYawTrue = LoGetADIPitchBankYaw()
  aircraftYawTrue = aircraftYawTrue * 57.3 -- actually heading
  local aircraftYawMagnetic = LoGetMagneticYaw()  * 57.3
  local magneticVariance = aircraftYawTrue - aircraftYawMagnetic
  
  if magnetic == true then
    bearing = bearing - magneticVariance
  end
  
  -- correction for bearings less than 0 due to the calculation above
  if bearing < 0 then
    bearing = bearing + 360
  end
  
  return bearing
end

function addZeros3(number)
	number = string.format("%.1d" , number)
	if #number == 2 then
		number = "0" .. number
	elseif #number == 1 then
		number = "00" .. number
	end
	return number
end

function prefixZerosFixedLength(number, digitLength) -- prefixZerosFixedLength(99, 3) --> 099
  number = string.format("%.1d" , number) -- make the number a string
  local zerosToAdd = digitLength - #number
  s = ''
  for i = 1, zerosToAdd do
    s = s .. 0
  end
  return s .. number
end

function mgrsTableize(mgrsString)
  -- Reference: https://upload.wikimedia.org/wikipedia/commons/b/b7/Universal_Transverse_Mercator_zones.svg
  -- example: 38 T LM 12345 54321
  -- (\d+\s\w)\s(\w+)\s(.+)\s(.+) --c# version of regex
  -- UTMZone = string,
  -- MGRSDigraph = string,
  -- Easting = number,
  -- Northing = number
   local UTMZone , MGRSDigraph, Easting, Northing = mgrsString:match('(%d+%s%w)%s(%w+)%s(.+)%s(.+)')
  local mgrsTbl = {}
  table.insert(mgrsTbl, {UTMZone,MGRSDigraph,Easting,Northing})
  return mgrsTbl
end

function isNilOrEmpty(value)
  if value == "" or value == nil then
    return true
  else
    return false
  end
end

function NilOrEmpty(value)
  if value == "" then
    return 'empty'
  elseif value == nil then
    return 'empty'
  else
    return value
  end
end
