-- F-86 Export 
-- Version 1.0.2

ExportScript.FoundDCSModule = true
--ExportScript.NoLuaExportBeforeNextFrame = true

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