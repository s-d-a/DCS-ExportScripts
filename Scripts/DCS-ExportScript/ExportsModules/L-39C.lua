-- L-39C
-- Version 1.0.2

ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	-- Front Seat
	-- Mechanic clock
	[67] = "%.4f",		-- CLOCK currtime hours
	[68] = "%.4f",		-- CLOCK currtime minutes
	[70] = "%.4f",		-- CLOCK seconds meter time seconds
	[73] = "%.4f",		-- CLOCK flight time meter status
	[71] = "%.4f",		-- CLOCK flight hours
	[72] = "%.4f",		-- CLOCK flight minutes
	[69] = "%.4f",		-- CLOCK seconds meter time minutes
	-- Radar altimeter RV-5
	[58] = "%.4f",		-- RV-5 RALT {0.0, 0.086, 0.439, 0.878, 0.955}{0.0, 20.0, 100.0, 700.0, 800.0}
	[59] = "%.4f",		-- RV-5 DangerRALT index {0.0, 0.094, 0.48, 0.998}{0.0, 20.0, 100.0, 700.0}
	[63] = "%.f",		-- RV-5 DangerRALT lamp
	[62] = "%.4f",		-- RV-5 warning flag
	-- Variometer
	[74] = "%.4f",		-- Variometer {-1.0, -0.875, -0.775, -0.44, 0.0, 0.44, 0.775, 0.875, 1.0}{-80.0, -50.0, -20.0, -10.0, 0.0, 10.0, 20.0, 50.0, 80.0}
	[76] = "%.4f",		-- Variometer sideslip {-1.0, 1.0}
	[75] = "%.4f",		-- Variometer turn {-1.0, -0.58, -0.275, 0.275, 0.58, 1.0} {-math.rad(5.7), math.rad(-3.8), math.rad(-1.9), math.rad(1.9), math.rad(3.8), math.rad(5.7)}
	-- KPP (ADI)
	[38] = "%.4f",		-- KPP 1273K roll {-1.0, 1.0} {-math.pi, math.pi}
	--[31] = "%.4f",		-- KPP 1273K pitch {-0.5, 0.5} {-math.pi / 2.0, math.pi / 2.0}
	--[40] = "%.4f",		-- KPP 1273K sideslip {-1.0, 1.0}
	[35] = "%.4f",		-- KPP Course Deviation Bar {-1.0, 1.0}
	[34] = "%.4f",		-- KPP Alt Deviation Bar {-1.0, 1.0}
	[36] = "%1d",		-- KPP Glide Beacon
	[37] = "%1d",		-- KPP Localizer Beacon
	[29] = "%.4f",		-- KPP Arretir
	[32] = "%.4f",		-- KPP SDU Roll {-1.0, 1.0}
	[33] = "%.4f",		-- KPP SDU Pitch {-1.0, 1.0}
	-- NPP (HSI)
	--[41] = "%.4f",		-- HSI heading {1.0, 0.0} {0.0, math.pi * 2.0}
	--[42] = "%.4f",		-- HSI commanded course needle (yellow needle) {1.0, 0.0} {0.0, math.pi * 2.0} 
	[43] = "%.4f",		-- HSI bearing needle {1.0, 0.0} {0.0, math.pi * 2.0}
	[47] = "%.4f",		-- HSI Course Deviation Bar {-0.8, 0.8}{-1.0, 1.0}
	[45] = "%.4f",		-- HSI Alt Deviation Bar {-0.8, 0.8}{-1.0, 1.0}
	[46] = "%.4f",		-- HSI Glide Beacon G
	[44] = "%.4f",		-- HSI Localizer Beacon K
	-- RSBN
	--[189] = "%.4f",		-- RSBN NAV Chan {0.0, 0.39} {1.0, 40.0}
	--[190] = "%.4f",		-- RSBN LAND Chan {0.0, 0.39} {1.0, 40.0}
	[66] = "%.4f",		-- RSBN Range 100
	[65] = "%.4f",		-- RSBN Range 10
	[64] = "%.4f",		-- RSBN Range 1
	[580] = "%.4f",		-- RSBN PanelLightsLmp
	-- Barometric altimeter VD-20
	[52] = "%.4f",		-- VD-20 km {0.0, 1.0}{0.0, 20.0}
	[53] = "%.4f",		-- VD-20 m {0.0, 1.0}{0.0, 1000.0}
	[54] = "%.4f",		-- VD-20 km Ind {0.0, 1.0}{0.0, 20.0}
	[55] = "%.4f",		-- VD-20 m Ind {0.0, 1.0}{0.0, 1000.0}
	--[56] = "%.4f",		-- VD-20 PRESS {0.0, 1.0}{670.0, 826.0}
	-- Barometric altimeter
	-- Altimeter Feet , copy of A-10 altimeter
	[637] = "%.4f",		-- Altimeter_100_footPtr {0.0, 1.0}{0.0, 1000.0}
	[632] = "%.4f",		-- Altimeter_10000_footCount {0.0, 1.0}{0.0, 10.0}
	[631] = "%.4f",		-- Altimeter_1000_footCount {0.0, 1.0}{0.0, 10.0}
	[630] = "%.4f",		-- Altimeter_100_footCount {0.0, 1.0}{0.0, 10.0}
	[636] = "%.4f",		-- pressure_setting_0 {0.0, 1.0}{0.0, 10.0}
	[635] = "%.4f",		-- pressure_setting_1 {0.0, 1.0}{0.0, 10.0}
	[634] = "%.4f",		-- pressure_setting_2 {0.0, 1.0}{0.0, 10.0}
	[633] = "%.4f",		-- pressure_setting_3 {0.0, 1.0}{0.0, 10.0}
	-- AIRSPEED AND MACH
	[49] = "%.4f",		-- IAS {0.0, 0.08, 0.186, 0.296, 0.436, 0.55, 0.635, 0.705, 0.765, 0.824, 1.0}{0.0, 100.0, 150.0, 200.0, 300.0, 400.0, 500.0, 600.0, 700.0, 800.0, 1200.0}
	[50] = "%.4f",		-- TAS {0.0, 0.08, 0.186, 0.296, 0.436, 0.55, 0.635, 0.705, 0.765, 0.824, 1.0}{0.0, 100.0, 150.0, 200.0, 300.0, 400.0, 500.0, 600.0, 700.0, 800.0, 1200.0}
	[51] = "%.4f",		-- MACH
	-- RKL-41
	[77] = "%.4f",		-- RKL-41 needle {0.0, 1.0}{0.0, math.pi * 2.0}
	[156] = "%.4f",		-- RKL-41 Signal
	[531] = "%.4f",		-- KM-8 heading  {0.0, 1.0}{0.0, math.pi * 2.0}
	[530] = "%.4f",		-- KM-8 variation {1.0, -1.0}{-math.pi, math.pi}
	-- electric interface
	[92] = "%.4f",		-- Voltmeter {0.0, 1.0}{0.0, 40.0}
	[93] = "%.4f",		-- Ampermeter {0.0, 1.0}{-100.0, 300.0}
	-- oxygen interface
	[301] = "%.4f",		-- OxygenPressure {0.0, 0.025, 0.925, 1.0}{0.0, 10.0, 150.0, 160.0}
	[302] = "%.4f",		-- FlowBlinker
	-- accelerometer
	[86] = "%.4f",		-- Acceleration {0.0, 1.0}{-5.0, 10.0}
	[88] = "%.4f",		-- AccelerationMin {0.31, 0.695}{-5.0, 1.0}
	[87] = "%.4f",		-- AccelerationMax {0.0, 1.0}{-5.0, 10.0}
	-- 
	[95] = "%.4f",		-- CockpitAlt {0.0, 1.0}{0.0, 20000.0}
	[96] = "%.4f",		-- PressDiff {0.0, 0.102, 0.202, 0.398, 0.779, 1.0}{-0.04, -0.02, 0.0, 0.1, 0.4, 0.6}
	-- Hydro Pressure
	[198] = "%.4f",		-- MainHydro PRESS {0.0, 1.0}{0.0, 200.0}
	[200] = "%.4f",		-- AuxHydro PRESS {0.0, 1.0}{0.0, 200.0}
	[98] = "%.4f",		-- BrakeLMainHydro PRESS {0.0, 1.0}{0.0, 60.0}
	[99] = "%.4f",		-- BrakeRMainHydro PRESS {0.0, 1.0}{0.0, 60.0}
	[100] = "%.4f",		-- BrakeAuxHydro PRESS {0.0, 1.0}{0.0, 60.0}
	-- Fuel Quantity
	[91] = "%.4f",		-- Fuel Quantity {0.0, 0.127, 0.239, 0.35, 0.458, 0.56, 0.685, 0.82, 1.0}{0.0, 100.0, 200.0, 300.0, 400.0, 500.0, 600.0, 700.0, 825.0}
	-- Fan RPM
	[85] = "%.4f",		-- Fan RPM {0.0, 0.09, 0.18, 0.28, 0.372, 0.468, 0.555, 0.645, 0.733, 0.822, 0.909, 1.0}{0.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0, 70.0, 80.0, 90.0, 100.0, 110.0}
	-- Compressor RPM
	[84] = "%.4f",		-- Compressor RPM {0.0, 0.09, 0.18, 0.28, 0.372, 0.468, 0.555, 0.645, 0.733, 0.822, 0.909, 1.0}{0.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0, 70.0, 80.0, 90.0, 100.0, 110.0}
	-- Oil
	[83] = "%.4f",		-- Oil Temp {0.0, 0.323, 0.576, 0.817, 1.0}{-50.0, 0.0, 50.0, 100.0, 150.0}
	[82] = "%.4f",		-- Oil Press {0.0, 0.077, 1.0}{-1.0, 0.0, 6.0}
	-- Fuel Press
	[81] = "%.4f",		-- Fuel Press {0.0, 0.06, 0.148, 0.323, 0.547, 0.659, 0.801, 1.0}{-1.0, 0.0, 20.0, 40.0, 60.0, 70.0, 80.0, 100.0}
	-- Engine Temp
	[90] = "%.4f",		-- Engine Temp {0.0, 1.0}{0.0, 900.0}
	-- EngineVibration
	[94] = "%.4f",		-- EngineVibration {0.0, 1.0}{0.0, 100.0}
	-- PitchTrimInd
	[247] = "%.4f",		-- PitchTrimInd {1.0, -1.0}{-1.0, 1.0}
	-- lights system
	--[533] = "%.4f",		-- CptInstrumentLightsIntensity
	--[558] = "%.4f",		-- CompassLightIntensity
	--[555] = "%.4f",		-- EmergencyLightIntensity
	-- RKL-41 Radio Compass
	[561] = "%.f",		-- FarNDBSelectorLamp
	[570] = "%.f",		-- NearNDBSelectorLamp
	[563] = "%.f",		-- PanelLights
	-- BrakeHandle
	[127] = "%.4f",		-- BrakeHandle
	-- Lamps
	[18] = "%.f",		-- MRP 56
	[6] = "%.f",		-- MainGenerator
	[9] = "%.f",		-- ReserveGennerator
	[12] = "%.f",		-- Inverter115
	[16] = "%.f",		-- Inverter363
	[316] = "%.f",		-- GroundPower
	[278] = "%.f",		-- FlapsUp
	[279] = "%.f",		-- FlapsTO
	[280] = "%.f",		-- FlapsDn
	[117] = "%.f",		-- AirBrakes
	[113] = "%.f",		-- GearDown front
	[112] = "%.f",		-- GearDown left
	[114] = "%.f",		-- GearDown right
	[110] = "%.f",		-- GearUp front
	[109] = "%.f",		-- GearUp left
	[111] = "%.f",		-- GearUp right
	[115] = "%.f",		-- ExtendGears
	[116] = "%.f",		-- DoorsOut
	[185] = "%.f",		-- RSBN Azim Correction
	[186] = "%.f",		-- RSBN Range Correction
	[15] = "%.f",		-- BreakdownFinished
	[123] = "%.f",		-- GA TILT
	[206] = "%.f",		-- GA TILT PU26
	[2] = "%.f",		-- DangerAltitude
	[27] = "%.f",		-- EmergFuel
	[23] = "%.f",		-- TurboStarter
	[4] = "%.f",		-- Remain150
	[7] = "%.f",		-- DoNotStart
	[26] = "%.f",		-- FuelFilter
	[14] = "%.f",		-- WingTanks
	[246] = "%.f",		-- TrimmerRollNeutral
	[3] = "%.f",		-- MachMeterLamp
	[10] = "%.f",		-- CanopyNotClosed
	[556] = "%.f",		-- LeftPitot
	[557] = "%.f",		-- RightPitot
	[8] = "%.f",		-- Vibration
	[1] = "%.f",		-- Fire
	[28] = "%.f",		-- EngineTemperature700
	[24] = "%.f",		-- EngineTemperature730
	[20] = "%.f",		-- EngineMinOilPressure
	[359] = "%.f",		-- RSBN Azim Correct
	[362] = "%.f",		-- RSBN Range Correct
	[19] = "%.f",		-- HSI Accordance
	[11] = "%.f",		-- CockpitPressure
	[22] = "%.f",		-- ConditioningClosed
	[25] = "%.f",		-- Defrost
	[21] = "%.f",		-- Ice
	[182] = "%.f",		-- RIO HeatingOk
	[5] = "%.f",		-- HydraulicPressureDrop
	[253] = "%.f",		-- MasterDanger
	[17] = "%.f",		-- EmergConditioning
	[562] = "%.f",		-- RadioUnderControl
	-- Back Seat
	-- Mechanic clock
	[405] = "%.4f",		-- Backseat - CLOCK currtime hours
	[406] = "%.4f",		-- Backseat - CLOCK currtime minutes
	[408] = "%.4f",		-- Backseat - CLOCK seconds meter time seconds
	[411] = "%.4f",		-- Backseat - CLOCK flight time meter status
	[409] = "%.4f",		-- Backseat - CLOCK flight hours
	[410] = "%.4f",		-- Backseat - CLOCK flight minutes
	[407] = "%.4f",		-- Backseat - CLOCK seconds meter time minutes
	-- Radar altimeter RV-5
	[396] = "%.4f",		-- Backseat - RV-5 RALT {0.0, 0.086, 0.439, 0.878, 0.955}{0.0, 20.0, 100.0, 700.0, 800.0}
	[397] = "%.4f",		-- Backseat - RV-5 DangerRALT index {0.0, 0.094, 0.48, 0.998}{0.0, 20.0, 100.0, 700.0}
	[401] = "%.f",		-- Backseat - RV-5 DangerRALT lamp
	[400] = "%.4f",		-- Backseat - RV-5 warning flag
	-- Variometer
	[416] = "%.4f",		-- Backseat - Variometer {-1.0, -0.875, -0.775, -0.44, 0.0, 0.44, 0.775, 0.875, 1.0}{-80.0, -50.0, -20.0, -10.0, 0.0, 10.0, 20.0, 50.0, 80.0}
	[418] = "%.4f",		-- Backseat - Variometer sideslip {-1.0, 1.0}
	[417] = "%.4f",		-- Backseat - Variometer turn {-1.0, 1.0} {-math.rad(6.0), math.rad(6.0)}
	-- KPP (ADI)
	[375] = "%.4f",		-- Backseat - KPP 1273K roll {-1.0, 1.0} {-math.pi, math.pi}
	[368] = "%.4f",		-- Backseat - KPP 1273K pitch {-0.5, 0.5} {-math.pi / 2.0, math.pi / 2.0}
	[377] = "%.4f",		-- Backseat - KPP 1273K sideslip {-1.0, 1.0}
	[372] = "%.4f",		-- Backseat - KPP Course Deviation Bar {-1.0, 1.0}
	[373] = "%.4f",		-- Backseat - KPP Glide Beacon
	[374] = "%.4f",		-- Backseat - KPP Localizer Beacon
	[366] = "%.4f",		-- Backseat - KPP Arretir
	[369] = "%.4f",		-- Backseat - KPP SDU Roll {-1.0, 1.0}
	[370] = "%.4f",		-- Backseat - KPP SDU Pitch {-1.0, 1.0}
	-- NPP HSI
	[378] = "%.4f",		-- Backseat - HSI2 heading {1.0, 0.0}{0.0, math.pi * 2.0}
	[379] = "%.4f",		-- Backseat - HSI2 commanded course needle {1.0, 0.0}{0.0, math.pi * 2.0}
	[380] = "%.4f",		-- Backseat - HSI2 bearing needle {1.0, 0.0}{0.0, math.pi * 2.0}
	[384] = "%.4f",		-- Backseat - HSI2 Course Deviation Bar {-0.8, 0.8}{-1.0, 1.0}
	[382] = "%.4f",		-- Backseat - HSI2 Alt Deviation Bar {-0.8, 0.8}{-1.0, 1.0}
	[383] = "%.4f",		-- Backseat - HSI2 Glide Beacon
	[381] = "%.4f",		-- Backseat - HSI2 Localizer Beacon
	-- RSPN
	[404] = "%.4f",		-- Backseat - RSBN Range 100
	[403] = "%.4f",		-- Backseat - RSBN Range 10
	[402] = "%.4f",		-- Backseat - RSBN Range 1
	-- Barometric altimeter VD-20 instructor
	[389] = "%.4f",		-- Backseat - VD-20 km {0.0, 1.0}{0.0, 20.0}
	[390] = "%.4f",		-- Backseat - VD-20 m {0.0, 1.0}{0.0, 1000.0}
	[391] = "%.4f",		-- Backseat - VD-20 km Ind {0.0, 1.0}{0.0, 20.0}
	[392] = "%.4f",		-- Backseat - VD-20 m Ind {0.0, 1.0}{0.0, 1000.0}
	--[393] = "%.4f",		-- Backseat - VD-20 PRESS {0.0, 1.0}{670.0, 826.0}
	-- Barometric altimeter
	-- Altimeter Feet , copy of A-10 altimeter
	[737] = "%.4f",		-- Altimeter_100_footPtr {0.0, 1.0}{0.0, 1000.0}
	[732] = "%.4f",		-- Altimeter_10000_footCount {0.0, 1.0}{0.0, 10.0}
	[731] = "%.4f",		-- Altimeter_1000_footCount {0.0, 1.0}{0.0, 10.0}
	[730] = "%.4f",		-- Altimeter_100_footCount {0.0, 1.0}{0.0, 10.0}
	[736] = "%.4f",		-- pressure_setting_0 {0.0, 1.0}{0.0, 10.0}
	[735] = "%.4f",		-- pressure_setting_1 {0.0, 1.0}{0.0, 10.0}
	[734] = "%.4f",		-- pressure_setting_2 {0.0, 1.0}{0.0, 10.0}
	[733] = "%.4f",		-- pressure_setting_3 {0.0, 1.0}{0.0, 10.0}
	-- AIRSPEED AND MACH
	[386] = "%.4f",		-- Backseat - IAS {0.0, 0.08, 0.186, 0.296, 0.436, 0.55, 0.635, 0.705, 0.765, 0.824, 1.0}{0.0, 100.0, 150.0, 200.0, 300.0, 400.0, 500.0, 600.0, 700.0, 800.0, 1200.0}
	[387] = "%.4f",		-- Backseat - TAS {0.0, 0.08, 0.186, 0.296, 0.436, 0.55, 0.635, 0.705, 0.765, 0.824, 1.0}{0.0, 100.0, 150.0, 200.0, 300.0, 400.0, 500.0, 600.0, 700.0, 800.0, 1200.0}
	[388] = "%.4f",		-- Backseat - MACH 2
	-- RKL-41
	[420] = "%.4f",		-- Backseat - RKL-41 needle {0.0, 1.0}{0.0, math.pi * 2.0}
	[513] = "%.4f",		-- Backseat - RKL-41 Signal
	-- oxygen interface
	[477] = "%.4f",		-- Backseat - OxygenPressure {0.0, 0.025, 0.925, 1.0}{0.0, 10.0, 150.0, 160.0}
	[478] = "%.4f",		-- Backseat - FlowBlinker
	-- accelerometer
	[550] = "%.4f",		-- Backseat - CockpitAlt {0.0, 1.0}{0.0, 20000.0}
	[551] = "%.4f",		-- Backseat - PressDiff {0.0, 0.102, 0.202, 0.398, 0.779, 1.0}{-0.04, -0.02, 0.0, 0.1, 0.4, 0.6}
	-- Fuel Quantity
	[427] = "%.4f",		-- Backseat - Fuel Quantity {0.0, 0.127, 0.239, 0.35, 0.458, 0.56, 0.685, 0.82, 1.0}{0.0, 100.0, 200.0, 300.0, 400.0, 500.0, 600.0, 700.0, 825.0}
	-- Fan RPM
	[425] = "%.4f",		-- Backseat - Fan RPM {0.0, 0.09, 0.18, 0.28, 0.372, 0.468, 0.555, 0.645, 0.733, 0.822, 0.909, 1.0}{0.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0, 70.0, 80.0, 90.0, 100.0, 110.0}
	-- Compressor RPM
	[424] = "%.4f",		-- Backseat - Compressor RPM {0.0, 0.09, 0.18, 0.28, 0.372, 0.468, 0.555, 0.645, 0.733, 0.822, 0.909, 1.0}{0.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0, 70.0, 80.0, 90.0, 100.0, 110.0}
	-- Oil
	[423] = "%.4f",		-- Backseat - Oil Temp {0.0, 0.323, 0.576, 0.817, 1.0}{-50.0, 0.0, 50.0, 100.0, 150.0}
	[422] = "%.4f",		-- Backseat - Oil Press {0.0, 0.077, 1.0}{-1.0, 0.0, 6.0}
	-- Fuel Press
	[421] = "%.4f",		-- Backseat - Fuel Press {0.0, 0.06, 0.148, 0.323, 0.547, 0.659, 0.801, 1.0}{-1.0, 0.0, 20.0, 40.0, 60.0, 70.0, 80.0, 100.0}
	-- lights system
	--[559] = "%.4f",		-- Backseat - CptInstrumentLightsIntensity
	-- RKL-41 Radio Compass
	[564] = "%.f",		-- Backseat - FarNDBSelectorLamp CP
	[571] = "%.f",		-- Backseat - NearNDBSelectorLamp CP
	[566] = "%.f",		-- Backseat - RKL PanelLights
	-- BrakeHandle
	[542] = "%.4f",		-- Backseat - BrakeHandle CP
	-- Lamps
	[358] = "%.f",		-- Backseat - MRP 56 Instructor
	[347] = "%.f",		-- Backseat - MainGen Instructor
	[350] = "%.f",		-- Backseat - ReserveGen Instructor
	[353] = "%.f",		-- Backseat - Inverter115 Instructor
	[357] = "%.f",		-- Backseat - Inverter363 Instructor
	[462] = "%.f",		-- Backseat - FlapsUp
	[463] = "%.f",		-- Backseat - FlapsTO
	[464] = "%.f",		-- Backseat - FlapsDn
	[436] = "%.f",		-- Backseat - AirBrakes
	[432] = "%.f",		-- Backseat - GearDown front
	[431] = "%.f",		-- Backseat - GearDown left
	[433] = "%.f",		-- Backseat - GearDown right
	[429] = "%.f",		-- Backseat - GearUp front
	[428] = "%.f",		-- Backseat - GearUp left
	[430] = "%.f",		-- Backseat - GearUp right
	[434] = "%.f",		-- Backseat - ExtendGears
	[435] = "%.f",		-- Backseat - DoorsOu
	[356] = "%.f",		-- Backseat - BreakdownFinished
	[443] = "%.f",		-- Backseat - GA TILT
	[343] = "%.f",		-- Backseat - DangerAltitudeInstructor
	[365] = "%.f",		-- Backseat - EmergFuel
	[345] = "%.f",		-- Backseat - Remain150
	[348] = "%.f",		-- Backseat - DoNotStart
	[364] = "%.f",		-- Backseat - FuelFilter
	[355] = "%.f",		-- Backseat - WingTanks
	[441] = "%.f",		-- Backseat - TrimmerRollNeutral
	[442] = "%.f",		-- Backseat - TrimmerPitchNeutral
	[344] = "%.f",		-- Backseat - MachMeterLamp
	[351] = "%.f",		-- Backseat - CanopyNotClosed
	[349] = "%.f",		-- Backseat - Vibration
	[342] = "%.f",		-- Backseat - Fire
	[352] = "%.f",		-- Backseat - CockpitPressure
	[361] = "%.f",		-- Backseat - ConditioningClosed
	[363] = "%.f",		-- Backseat - Defrost
	[360] = "%.f",		-- Backseat - Ice
	[346] = "%.f",		-- Backseat - HydraulicPressureDrop
	[455] = "%.f",		-- Backseat - MasterDanger
	[565] = "%.f",		-- Backseat - RadioUnderControl
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	-- Front Seat
	-- ASP-3NMU Gunsight
	[101] = "%1d",		-- ASP-3NMU Gunsight Mode, GYRO/FIXED
	[102] = "%.1f",		-- ASP-3NMU Gunsight Brightness Knob (Axis) {0.0, 1.0} in 0.2 Steps
	[103] = "%.1f",		-- ASP-3NMU Gunsight Target Wingspan Adjustment Dial (meters) (Axis) {0.0, 1.0} in 0.1 Steps
	[104] = "%1d",		-- ASP-3NMU Gunsight Color Filter, ON/OFF
	[105] = "%1d",		-- ASP-3NMU Gunsight Fixed Reticle Mask Lever
	[106] = "%.1f",		-- ASP-3NMU Gunsight Mirror Depression (Axis) {0.0, 1.0} in 0.05 Steps
	[107] = "%.1f",		-- ASP-3NMU Gunsight Target Distance (Axis) {0.0, 1.0} in 0.1 Steps
	-- CLOCK
	[335] = "%1d",		-- Mech clock left lever Button
	[336] = "%.1f",		-- Mech clock left lever (Axis) {0.0, 1.0} in 0.04 Steps
	[337] = "%1d",		-- Mech clock right lever Button
	[338] = "%.1f",		-- Mech clock right lever (Axis) {0.0, 1.0} in 0.1 Steps
	-- Baro Altimeter
	[57] = "%.f2",		-- Baro pressure QFE knob (Axis) {0.0, 1.0} in 0.6 Steps
	-- Radar Altimeter
	[60] = "%1d",		-- RV-5M Radio Altimeter Test Button
	[61] = "%.2f",		-- RV-5M Radio Altimeter Decision Height Knob (Axis) {0.0, 1.0} in 0.2 Steps
	-- GMK
	[204] = "%1d",		-- GMK-1AE GMC Hemisphere Selection Switch, N(orth)/S(outh)
	[207] = "%1d",		-- GMK-1AE GMC Mode Switch, MC(Magnetic Compass Mode)/GC(Directional Gyro Mode)
	[205] = "%1d",		-- GMK-1AE GMC Test Switch, 0(degrees)/OFF/300(degrees) - Use to check heading indication accuracy {-1.0,0.0,1.0}
	[208] = "%1d",		-- GMK-1AE GMC Course Selector Switch, CCW/OFF/CW {-1.0,0.0,1.0}
	[209] = "%.2f",		-- GMK-1AE GMC Latitude Selector Knob (Axis) {0.0, 1.0} in 0.02 Steps
	-- Gyro
	[124] = "%1d",		-- MC Synchronization Button - Push to synchronize (level flight only)
	-- Magnetic Variation
	[532] = "%.2f",		-- Magnetic Declination set Knob (Axis) {0.0, 1.0} in 0.05 Steps
	-- KPP-1273K (ADI)
	[30] = "%1d",		-- KPP-1273K Attitude Director Indicator (ADI) Cage Button
	[39] = "%.2f",		-- KPP-1273K Attitude Director Indicator (ADI) Pitch Trim Knob {-1.0, 1.0} in 0.05 Steps
	[177] = "%1d",		-- SDU Switch, ON/OFF
	[460] = "%1d",		-- AGD Pitch Failure
	[461] = "%1d",		-- AGD Bank Failure
	-- NPP (HSI)
	[48] = "%.2f",		-- HSI Course set Knob (Axis) {0.0, 1.0} in 0.15 Steps
	[526] = "%1d",		-- Course Accordance
	[458] = "%1d",		-- GMK Failure
	-- ISKRA (RSBN)
	[178] = "%.1f",		-- RSBN Mode Switch, LANDING/NAVIGATION/GLIDE PATH {0.0,0.1,0.2}
	[179] = "%1d",		-- RSBN Identification Button
	[180] = "%1d",		-- RSBN Test Button - Push to test
	[181] = "%.2f",		-- RSBN Control Box Lighting Intensity Knob (Axis) {0.0, 0.8} in 0.04 Steps
	[184] = "%.2f",		-- RSBN Volume Knob (Axis) {0.0, 0.8} in 0.04 Steps
	[187] = "%1d",		-- Initial Azimuth {-1.0,0.0,1.0}
	[188] = "%1d",		-- Initial Range {-1.0,0.0,1.0}
	[191] = "%.3f",		-- RSBN Navigation Channel Selector Knob (Axis) {0.0, 1.0} in 0.025 Steps
	[192] = "%1d",		-- RSBN Landing Channel Selector Knob (Axis) {0.0, 1.0} in 0.025 Steps
	[193] = "%1d",		-- Set 0 Azimuth
	[201] = "%.2f",		-- RSBN Field Elevation Knob (Axis) {0.0, 1.0} in 0.02 Steps
	[297] = "%1d",		-- RSBN Listen Callsign Button - Push to listen
	[527] = "%1d",		-- RSBN Emergency Landing Switch, ON/OFF
	-- Variometer
	[569] = "%.1f",		-- Variometer adjustment knob (Axis) {0.0, 1.0} in 0.1 Steps
	-- RKL-41
	[119] = "%1d",		-- RKL-41 ADF Outer-Inner Beacon (Far-Near NDB) Switch
	[157] = "%.2f",		-- RKL-41 ADF Volume Knob (Axis) {1.0, 0.0} in 0.05 Steps
	[161] = "%1d",		-- RKL-41 ADF Brightness Knob (Axis) {1.0, 0.0} in 0.05 Steps
	[159] = "%1d",		-- RKL-41 ADF Mode Switch, TLF(A3)/TLG(A1,A2)
	[160] = "%.1f",		-- RKL-41 ADF Function Selector Switch, OFF/COMP(AUTO)/COMP(MAN)/ANT/LOOP {0.0,0.1,0.2,0.3,0.4}
	[162] = "%1d",		-- RKL-41 ADF Loop Switch, LEFT/OFF/RIGHT {-1.0,0.0,1.0}
	[158] = "%1d",		-- RKL-41 ADF Control Switch, TAKE CONTROL/HAND OVER CONTROL
	[165] = "%.2f",		-- RKL-41 ADF Far NDB Frequency Tune (Axis) {1.0, 0.0} in 0.05 Steps
	[163] = "%.4f",		-- RKL-41 ADF Far NDB 100kHz rotary (Axis) {0.0,0.938} in 0.0588 Steps
	[164] = "%.1f",		-- RKL-41 ADF Far NDB 10kHz rotary (Axis) {0.0,0.9} in 0.1 Steps
	[168] = "%.2f",		-- RKL-41 ADF Near NDB Frequency Tune (Axis) {0.0,1.0} in 0.05 Steps
	[166] = "%.4f",		-- RKL-41 ADF Near NDB 100kHz rotary (Axis) {0.0,0.938} in 0.0588 Steps
	[167] = "%.1f",		-- RKL-41 ADF Near NDB 10kHz rotary (Axis) {0.0,0.9} in 0.1 Steps
	[459] = "%1d",		-- ARK Failure
	-- electric system
	[141] = "%1d",		-- Battery Switch, ON/OFF
	[142] = "%1d",		-- Main Generator Switch, ON/OFF
	[143] = "%1d",		-- Emergency Generator Switch, ON/OFF
	[502] = "%1d",		-- Net Switch, ON/OFF
	[169] = "%1d",		-- Emergency Engine Instruments Power Switch, ON/OFF
	[315] = "%1d",		-- Turbo Button
	[313] = "%1d",		-- Stop Turbo Switch, ON/OFF
	[326] = "%1d",		-- Engine Button
	[320] = "%1d",		-- Emergency Fuel Switch
	[322] = "%.1f",		-- Engine Start Mode Switch, START/FALSE START/COLD CRANKING {0.0,0.1,0.2}
	[144] = "%1d",		-- CB Engine Switch, ON/OFF
	[145] = "%1d",		-- CB AGD-GMK Switch, ON/OFF
	[146] = "%1d",		-- CB Inverter 1 (AC 115V) Switch, ON/OFF
	[147] = "%1d",		-- CB Inverter 2 (AC 115V) Switch, ON/OFF
	[148] = "%1d",		-- CB RDO (ICS and Radio) Switch, ON/OFF
	[149] = "%1d",		-- CB MRP-RV (Marker Beacon Receiver and Radio Altimeter) Switch, ON/OFF
	[150] = "%1d",		-- CB RSBN (ISKRA) Switch, ON/OFF
	[151] = "%1d",		-- CB IFF (SRO) Emergency Connection Switch, ON/OFF
	[152] = "%1d",		-- CB RSBN (ISKRA) Emergency Connection Switch, ON/OFF
	[153] = "%1d",		-- CB Wing Tanks Switch, ON/OFF
	[154] = "%1d",		-- CB RIO-3 De-Icing Signal Switch, ON/OFF
	[155] = "%1d",		-- CB SDU Switch, ON/OFF
	[505] = "%1d",		-- CB Weapon Switch, ON/OFF
	[211] = "%1d",		-- CB Air Conditioning, ON/OFF
	[212] = "%1d",		-- CB Anti-Ice, ON/OFF
	[213] = "%1d",		-- CB Pitot Left, ON/OFF
	[214] = "%1d",		-- CB Pitot Right, ON/OFF
	[215] = "%1d",		-- CB PT-500C, ON/OFF
	[216] = "%1d",		-- CB ARC, ON/OFF
	[217] = "%1d",		-- CB SRO, ON/OFF
	[218] = "%1d",		-- CB Seat-Helmet, ON/OFF
	[219] = "%1d",		-- CB Gears, ON/OFF
	[220] = "%1d",		-- CB Control, ON/OFF
	[221] = "%1d",		-- CB Signaling, ON/OFF
	[222] = "%1d",		-- CB Nav. Lights, ON/OFF
	[223] = "%1d",		-- CB Spotlight Left, ON/OFF
	[224] = "%1d",		-- CB Spotlight Right, ON/OFF
	[225] = "%1d",		-- CB Red Lights, ON/OFF
	[226] = "%1d",		-- CB White Lights, ON/OFF
	[227] = "%1d",		-- CB Start Panel, ON/OFF
	[228] = "%1d",		-- CB Booster Pump, ON/OFF
	[229] = "%1d",		-- CB Ignition 1, ON/OFF
	[230] = "%1d",		-- CB Ignition 2, ON/OFF
	[231] = "%1d",		-- CB Engine Instruments, ON/OFF
	[232] = "%1d",		-- CB Fire, ON/OFF
	[233] = "%1d",		-- CB Emergency Jettison, ON/OFF
	[234] = "%1d",		-- CB SARPP, ON/OFF
	[503] = "%1d",		-- CB Seat, ON/OFF
	[504] = "%1d",		-- CB Signal, ON/OFF
	[512] = "%1d",		-- CB Ground Intercom, ON/OFF
	[294] = "%1d",		-- Standby (Left) Pitot Tube Heating Button - Push to turn heating on
	[295] = "%1d",		-- Main (Right) Pitot Tube Heating Button - Push to turn heating on
	[292] = "%1d",		-- Standby (Left) Pitot Tube Heating Off Button - Push to turn heating off
	[293] = "%1d",		-- Standby (Left) Pitot Tube Heating Off Button - Push to turn heating off
	-- lights system
	[176] = "%.1f",		-- Navigation Lights Mode Control Switch, FLICKER/OFF/FIXED {0.0,0.5,1.0}
	[175] = "%.1f",		-- Navigation Lights Intensity Control Switch, DIM(30%)/BRT(60%)/MAX(100%) {0.0,0.5,1.0}
	[311] = "%1d",		-- Taxi and Landing Lights (Searchlights) Control Switch, TAXI/OFF/LANDING {-1.0,0.0,1.0}
	[330] = "%1d",		-- Instrument Lighting Switch, Red/OFF/White {-1.0,0.0,1.0}
	[331] = "%.1f",		-- Instrument Lights Intensity Knob (Axis) {0.1,0.9} in 0.1 Steps
	[249] = "%1d",		-- Emergency Instrument Light Switch, ON/OFF
	[202] = "%.1f",		-- Warning-Light Intensity Knob (Axis) {0.0,1.0} in 0.1 Steps
	[203] = "%1d",		-- Warning-Light Check Button - Push to check
	-- Weapon System
	[254] = "%1d",		-- CB Armament System Power Switch, ON/OFF
	[255] = "%1d",		-- CB UB-16 Rocket Firing Control Circuit Power Switch, ON/OFF
	[256] = "%1d",		-- CB ASP-FKP (Gunsight and Gun Camera) Power Switch, ON/OFF
	[257] = "%1d",		-- CB Missile Seeker Heating Circuit Power Switch, ON/OFF
	[258] = "%1d",		-- CB Missile Seeker Glowing Circuit Power Switch, ON/OFF
	[259] = "%.1f",		-- Missile Seeker Tone Volume Knob (Axis) {0.0,1.0} in 0.1 Steps
	[268] = "%1d",		-- Arm/Safe Bombs Emergency Jettison Switch, LIVE/BLANK
	[271] = "%.1f",		-- Rockets Firing Mode Selector Switch, AUT./2RS/4RS {0.0,0.1,0.2}
	[509] = "%1d",		-- Arm/Safe Bombs Emergency Jettison Switch, LIVE/BOMBS/BLANK {-1.0,0.0,1.0}
	[507] = "%1d",		-- Emergency Jettison Switch, ON/OFF
	[273] = "%1d",		-- EKSR-46 Signal Flare Dispenser Power Switch, ON/OFF
	[274] = "%1d",		-- EKSR-46 Yellow Signal Flare Launch Button
	[275] = "%1d",		-- EKSR-46 Green Signal Flare Launch Button
	[276] = "%1d",		-- EKSR-46 Red Signal Flare Launch Button
	[277] = "%1d",		-- EKSR-46 White Signal Flare Launch Button
	[260] = "%1d",		-- Missile/Bomb Release Selector Switch, PORT(Left)/STARB-BOTH(Right for Missiles/Both)
	[270] = "%1d",		-- Emergency Jettison Outboard Stations Switch, ON/OFF
	-- oxygen system
	[303] = "%1d",		-- Emergency Oxygen Switch, ON/OFF
	[304] = "%1d",		-- Diluter Demand Switch, 100% / MIX
	[307] = "%1d",		-- Helmet Ventilation Switch, ON/OFF
	[306] = "%.2f",		-- Oxygen Supply Valve (CLOSE - CW, OPEN - CCW) (Axis) {0.0,1.0} in 0.05 Steps
	[484] = "%.2f",		-- Oxygen Interconnaction Valve (CLOSE - CW, OPEN - CCW) (Axis) {0.0,1.0} in 0.05 Steps
	-- sarpp
	[298] = "%1d",		-- SARPP Flight Recorder, ON/OFF
	-- fuel system
	[296] = "%1d",		-- Fuel Shut-Off Lever
	-- air system
	[245] = "%.1f",		-- ECS and Pressurization Handle, OFF/CANOPIES SEALED/ECS ON (Axis) {0.0,1.0} in 0.1 Steps
	[172] = "%.2f",		-- Cabin Air Conditioning Control Switch, OFF/HEAT/COOL/AUTOMATIC {0.0,0.25} in 0.05 Steps
	[173] = "%.1f",		-- Cabin Air Temperature Controller Rheostat (Axis) {0.0,1.0} in 0.1 Steps
	[121] = "%.2f",		-- Diffuser and Flight Suit Air Conditioning Control Switch, HEAT/AUTO/COOL {0.0,0.25} in 0.05 Steps
	[120] = "%.1f",		-- Diffuser and Flight Suit Temperature Rheostat (Axis) {0.0,1.0} in 0.1 Steps
	[511] = "%1d",		-- Conditioning Shutoff Switch, OPEN/FRONT PILOT CONTROL/CLOSE {-1.0,0.0,1.0}
	-- anti-icing system
	[174] = "%1d",		-- De-Icing Mode Switch, MANUAL/AUTOMATIC/OFF {0.0,0.1,0.2}
	[183] = "%1d",		-- RIO-3 De-Icing Sensor Heating Circuit Check Button - Push to test
	-- helmet heating
	[309] = "%1d",		-- Helmet Visor Quick Heating Button - Push to heat
	[308] = "%1d",		-- Helmet Heating Mode Switch, AUTO/OFF/ON {0.0,0.5,1.0}
	[310] = "%.1f",		-- Helmet Heating Temperature Rheostat (Axis) {0.0,1.0} in 0.1 Steps
	-- SPU-9
	[209] = "%1d",		-- Reserve Intercom Switch, ON/OFF
	[291] = "%1d",		-- ADF Audio Switch, ADF/OFF
	[288] = "%1d",		-- Intercom Volume Knob (Axis) {0.0,0.8} in 0.05 Steps
	[289] = "%1d",		-- Radio Volume Knob (Axis) {0.0,0.8} in 0.05 Steps
	[134] = "%1d",		-- Radio Button
	[133] = "%1d",		-- Intercom Button
	-- R-832M
	[287] = "%1d",		-- Radio Control Switch, ON/OFF
	[286] = "%1d",		-- Squelch Switch, ON/OFF
	[284] = "%1d",		-- R-832M Preset Channel Selector Knob (Axis) {0.0,1.0} in 20 0.05 Steps
	-- engine systems
	[329] = "%1d",		-- IV-300 Engine Vibration Test Button - Push to test
	[328] = "%1d",		-- Fire Extinguish Button - Push to extinguish
	[272] = "%1d",		-- Fire Warning Signal Test Switch, I/OFF/II {-1.0,0.0,1.0}
	[324] = "%1d",		-- RT-12 JPT Regulator Manual Disable Switch, RT-12 DISABLED/RT-12 ENABLED
	[243] = "%1d",		-- RT-12 JPT Regulator Power Switch, ON/OFF
	[242] = "%1d",		-- RT-12 JPT Regulator Test Switch, I/OFF/II {-1.0,0.0,1.0}
	[499] = "%1d",		-- EGT Indicator Switch, FRONT/REAR
	-- control system
	[281] = "%1d",		-- Flaps Flight Position (0 degrees) Button
	[282] = "%1d",		-- Flaps Takeoff Position (25 degrees) Button
	[283] = "%1d",		-- Flaps Landing Position (44 degrees) Button
	[549] = "%1d",		-- Throttle Limiter
	[135] = "%1d",		-- Air Brake Switch {0.0,1.0}
	[136] = "%1d",		-- Air Brake Switch (2nd position) {0.0,1.0}
	[118] = "%1d",		-- Landing Gear Control Lever {-1.0,0.0,1.0}
	[334] = "%.1f",		-- Emergency/Parking Wheel Brake Lever {0.0,1.0} in 0.1 Steps
	[334] = "%1d",		-- Parking Brake Lever Flag - Push to remove parking brake
	[197] = "%1d",		-- Main and Emergency Hydraulic Systems Interconnection Lever, FORWARD(OFF)/BACKWARD(ON)
	[194] = "%1d",		-- Emergency Landing Gear Extension Lever, FORWARD(OFF)/BACKWARD(ON)
	[195] = "%1d",		-- Emergency Flaps Extension Lever, FORWARD(OFF)/BACKWARD(ON)
	[196] = "%1d",		-- RAT (Emergency Generator) Emergency Lever, FORWARD(OFF)/BACKWARD(ON)
	[456] = "%1d",		-- Full Pressure Failure Lever, ON/STBY/FAILURE {-0.5,0.0,0.5}
	[457] = "%1d",		-- Static Pressure Failure Lever, ON/STBY/FAILURE {-0.5,0.0,0.5}
	-- accelerometer
	[89] = "%1d",		-- Reset Limits
	-- canopy
	[998] = "%1d",		-- Canopy Handle
	[285] = "%1d",		-- Forward Canopy Lock Handle
	[244] = "%1d",		-- Forward Canopy Emergency Jettison Handle
	-- Pitot Selector
	[333] = "%1d",		-- Pitot Tube Selector Lever, STBY(Left)/MAIN(Right)
	-- Back Seat
	-- CLOCK
	[412] = "%1d",		-- Backseat - Mech clock left lever Button
	[413] = "%.1f",		-- Backseat - Mech clock left lever (Axis) {0.0, 1.0} in 0.04 Steps
	[414] = "%1d",		-- Backseat - Mech clock right lever Button
	[415] = "%.1f",		-- Backseat - Mech clock right lever (Axis) {0.0, 1.0} in 0.1 Steps
	-- Baro Altimeter
	[394] = "%.f2",		-- Backseat - Baro pressure QFE knob (Axis) {0.0, 1.0} in 0.6 Steps
	-- Radar Altimeter
	[398] = "%1d",		-- Backseat - RV-5M Radio Altimeter Test Button
	[399] = "%.2f",		-- Backseat - RV-5M Radio Altimeter Decision Height Knob (Axis) {0.0, 1.0} in 0.2 Steps
	-- GMK
	-- Gyro
	[444] = "%1d",		-- Backseat - MC Synchronization Button - Push to synchronize (level flight only)
	-- KPP-1273K (ADI)
	[367] = "%1d",		-- Backseat - KPP-1273K Attitude Director Indicator (ADI) Cage Button
	[376] = "%.2f",		-- Backseat - KPP-1273K Attitude Director Indicator (ADI) Pitch Trim Knob (Axis) {-1.0, 1.0} in 0.05 Steps
	-- NPP (HSI)
	[385] = "%.2f",		-- Backseat - HSI Course set knob (Axis) {0.0, 1.0} in 0.15 Steps
	-- Variometer
	[419] = "%.1f",		-- Backseat - Variometer adjustment knob (Axis) {0.0, 1.0} in 0.1 Steps
	-- RKL-41
	[440] = "%1d",		-- Backseat - RKL-41 ADF Outer-Inner Beacon (Far-Near NDB) Switch
	[514] = "%.2f",		-- Backseat - RKL-41 ADF Volume Knob (Axis) {1.0, 0.0} in 0.05 Steps
	[518] = "%.2f",		-- Backseat - RKL-41 ADF Brightness Knob (Axis) {1.0, 0.0} in 0.05 Steps
	[516] = "%1d",		-- Backseat - RKL-41 ADF Mode Switch, TLF(A3)/TLG(A1,A2)
	[517] = "%.1f",		-- Backseat - RKL-41 ADF Function Selector Switch, OFF/COMP(AUTO)/COMP(MAN)/ANT/LOOP {0.0,0.1,0.2,0.3,0.4}
	[519] = "%1d",		-- Backseat - RKL-41 ADF Loop Switch, LEFT/OFF/RIGHT
	[515] = "%1d",		-- Backseat - RKL-41 ADF Control Switch, TAKE CONTROL/HAND OVER CONTROL
	[522] = "%.2f",		-- Backseat - RKL-41 ADF Far NDB Frequency Tune (Axis) {1.0, 0.0} in 0.05 Steps
	[520] = "%.4f",		-- Backseat - RKL-41 ADF Far NDB 100kHz rotary (Axis) {0.0,0.938} in 0.0588 Steps
	[521] = "%.1f",		-- Backseat - RKL-41 ADF Far NDB 10kHz rotary (Axis) {0.0,0.9} in 0.1 Steps
	[525] = "%.2f",		-- Backseat - RKL-41 ADF Near NDB Frequency Tune (Axis) {0.0,1.0} in 0.05 Steps
	[523] = "%.4f",		-- Backseat - RKL-41 ADF Near NDB 100kHz rotary (Axis) {0.0,0.938} in 0.0588 Steps
	[524] = "%.1f",		-- Backseat - RKL-41 ADF Near NDB 10kHz rotary (Axis) {0.0,0.9} in 0.1 Steps
	-- electric system
	[488] = "%1d",		-- Backseat - Turbo Button
	[494] = "%1d",		-- Backseat - Engine Button
	[490] = "%1d",		-- Backseat - Stop Engine Switch
	[492] = "%1d",		-- Backseat - Emergency Fuel Switch
	-- lights system
	[486] = "%1d",		-- Backseat - Taxi and Landing Lights (Searchlights) Control Switch, TAXI/OFF/LANDING {-1.0,0.0,1.0}
	[497] = "%1d",		-- Backseat - Instrument Lighting Switch, Red/OFF/White {-1.0,0.0,1.0}
	[498] = "%.1f",		-- Backseat - Instrument Lights Intensity Knob (Axis) {0.1,0.9} in 0.1 Steps
	[537] = "%.1f",		-- Backseat - Warning-Light Intensity Knob (Axis) {0.0,1.0} in 0.1 Steps
	[538] = "%1d",		-- Backseat - Warning-Light Check Button - Push to check
	-- oxygen system
	[479] = "%1d",		-- Backseat - Emergency Oxygen Switch, ON/OFF
	[480] = "%1d",		-- Backseat - Diluter Demand Switch, 100% / MIX
	[482] = "%.4f",		-- Backseat - Oxygen Supply Valve (CLOSE - CW, OPEN - CCW) (Axis) {0.0,1.0} in 0.05 Steps
	-- fuel system
	[475] = "%1d",		-- Backseat - Fuel Shut-Off Lever
	-- air system
	[245] = "%.1f",		-- Backseat - ECS and Pressurization Handle, OFF/CANOPIES SEALED/ECS ON (Axis) {0.0,1.0} in 0.1 Steps
	-- SPU-9
	[473] = "%1d",		-- Backseat - Reserve Intercom Switch, ON/OFF
	[474] = "%1d",		-- Backseat - ADF Audio Switch, ADF/OFF
	[471] = "%1d",		-- Backseat - Intercom Volume Knob (Axis) {0.0,0.8} in 0.05 Steps
	[472] = "%1d",		-- Backseat - Radio Volume Knob (Axis) {0.0,0.8} in 0.05 Steps
	[547] = "%1d",		-- Backseat - Radio Button
	[546] = "%1d",		-- Backseat - Intercom Button
	-- R-832M
	[470] = "%1d",		-- Backseat - Radio Control Switch, ON/OFF
	[469] = "%1d",		-- Backseat - Squelch Switch, ON/OFF
	[468] = "%1d",		-- Backseat - R-832M Preset Channel Selector Knob (Axis) {0.0,1.0} in 20 0.05 Steps
	-- control system
	[465] = "%1d",		-- Backseat - Flaps Flight Position (0 degrees) Button
	[466] = "%1d",		-- Backseat - Flaps Takeoff Position (25 degrees) Button
	[467] = "%1d",		-- Backseat - Flaps Landing Position (44 degrees) Button
	[548] = "%1d",		-- Backseat - Air Brake Switch {-1.0, 0.0, 1.0}
	[437] = "%1d",		-- Backseat - Landing Gear Control Lever {0.0,0.5,1.0} ??? eigentlich 4 Positionen
	[501] = "%.1f",		-- Backseat - Emergency Wheel Brake Lever {0.0,1.0} in 0.1 Steps
	[536] = "%1d",		-- Backseat - Main and Emergency Hydraulic Systems Interconnection Lever, FORWARD(OFF)/BACKWARD(ON)
	[533] = "%1d",		-- Backseat - Emergency Landing Gear Extension Lever, FORWARD(OFF)/BACKWARD(ON)
	[534] = "%1d",		-- Backseat - Emergency Flaps Extension Lever, FORWARD(OFF)/BACKWARD(ON)
	[535] = "%1d",		-- Backseat - RAT (Emergency Generator) Emergency Lever, FORWARD(OFF)/BACKWARD(ON)
	-- canopy
	[999] = "%1d",		-- Backseat - Canopy Handle
	[485] = "%1d",		-- Backseat - Canopy Lock Handle
	[539] = "%1d",		-- Backseat - Canopy Emergency Jettison Handle
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

	-- Front Seat

	-- ADI correction
	--[31] = "%.4f",		-- KPP 1273K pitch {-0.5, 0.5} {-math.pi / 2.0, math.pi / 2.0}
	--[40] = "%.4f",		-- KPP 1273K sideslip {-1.0, 1.0}
	local lPitch 	= mainPanelDevice:get_argument_value(31)

	lPitch = lPitch * 2

	ExportScript.Tools.SendData(31, string.format("%.4f", lPitch))
	ExportScript.Tools.SendData(40, string.format("%.4f", ExportScript.Tools.negate(mainPanelDevice:get_argument_value(40)))) -- negate

	-- HSI correction
	--[41] = "%.4f",		-- HSI heading {1.0, 0.0} {0.0, math.pi * 2.0}
	--[42] = "%.4f",		-- HSI commanded course needle (wihte needle) {1.0, 0.0} {0.0, math.pi * 2.0} 
	local lCommandCourse	= mainPanelDevice:get_argument_value(42)

	lCommandCourse = lCommandCourse + 0.5 -- 180 degree turn

	ExportScript.Tools.SendData(41, string.format("%.4f", ExportScript.Tools.negate(mainPanelDevice:get_argument_value(41)))) -- negate
	ExportScript.Tools.SendData(42, string.format("%.4f", lCommandCourse))

	-- Back Seat
	
	-- ADI correction
	--[368] = "%.4f",		-- KPP 1273K pitch {-0.5, 0.5} {-math.pi / 2.0, math.pi / 2.0}
	--[377] = "%.4f",		-- KPP 1273K sideslip {-1.0, 1.0}
	local lPitch2 	 = mainPanelDevice:get_argument_value(368)
	
	lPitch2 = lPitch2 * 2
	
	ExportScript.Tools.SendData(368, string.format("%.4f", lPitch2))
	ExportScript.Tools.SendData(377, string.format("%.4f", ExportScript.Tools.negate(mainPanelDevice:get_argument_value(377)))) -- negate
	
	-- HSI correction
	--[378] = "%.4f",		-- HSI heading {1.0, 0.0} {0.0, math.pi * 2.0}
	--[379] = "%.4f",		-- HSI commanded course needle (wihte needle) {1.0, 0.0} {0.0, math.pi * 2.0} 
	local lCommandCourse2	= mainPanelDevice:get_argument_value(379)

	lCommandCourse2 = lCommandCourse2 + 0.5 -- 180 degree turn

	ExportScript.Tools.SendData(378, string.format("%.4f", ExportScript.Tools.negate(mainPanelDevice:get_argument_value(378))))-- negate
	ExportScript.Tools.SendData(379, string.format("%.4f", lCommandCourse2))
	
	-- VD-20 Presseure correction
	--[56] = "%.4f",		-- VD-20 PRESS {0.0, 1.0}{670.0, 826.0}
	local lVD_20_PRESS = mainPanelDevice:get_argument_value(56)
	--ExportScript.Tools.WriteToLog('Pressure: '..ExportScript.Tools.dump(lVD_20_PRESS))
	--[[
	y_min = 0.0					-- minimaler Ausgabewert
	y_max = 0.89				-- maximaler Ausgabewert
	x_min = 0.0					-- minimaler Eingangswert
	x_max = 0.76793104410172	-- maximaler Eingangswert
	x = 0.57506740093231		-- aktueller Eingangswert

	d_y = 0.89																	-- Delta Ausgabewerte (y_max - y_min)
	d_x = 0.76793104410172														-- Delta Eingangswerte (x_max - x_min)
	m = 1.158958225267568124678891052043										-- Steigung der linearen Funktion (d_y / d_x)
	n = 0.0000000000000000000000000000002387929418604	(2.387929418604e-32)	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
	
	y = 0.66648		-- Ergebnis (m * x + n)
	]]
	if gVD_20_PRESS ~= lVD_20_PRESS then
		gVD_20_PRESS = lVD_20_PRESS
		lVD_20_PRESS = 1.158958225267568124678891052043 * lVD_20_PRESS + 0.0000000000000000000000000000002387929418604
		--ExportScript.Tools.WriteToLog('Pressure2: '..ExportScript.Tools.dump(lVD_20_PRESS))
		ExportScript.Tools.SendData(56, string.format("%.4f", lVD_20_PRESS))
	end

        --[393] = "%.4f",               -- Backseat - VD-20 PRESS {0.0, 1.0}{670.0, 826.0}
        local lVD_20_PRESS_Backseat = mainPanelDevice:get_argument_value(393)
        --ExportScript.Tools.WriteToLog('Pressure: '..ExportScript.Tools.dump(lVD_20_PRESS_Backseat))
        --[[
        y_min = 0.0                                     -- minimaler Ausgabewert
        y_max = 0.89                            -- maximaler Ausgabewert
        x_min = 0.0                                     -- minimaler Eingangswert
        x_max = 0.76793104410172        -- maximaler Eingangswert
        x = 0.57506740093231            -- aktueller Eingangswert

        d_y = 0.89                                                                                                                                      -- Delta Ausga
        d_x = 0.76793104410172                                                                                                          -- Delta Eingangswerte (x_max 
        m = 1.158958225267568124678891052043                                                                            -- Steigung der linearen Funktion (d_y / d_x)
        n = 0.0000000000000000000000000000002387929418604       (2.387929418604e-32)    -- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
        
        y = 0.66648             -- Ergebnis (m * x + n)
        ]]
        if gVD_20_PRESS_Backseat ~= lVD_20_PRESS_Backseat then
                gVD_20_PRESS_Backseat = lVD_20_PRESS_Backseat
                lVD_20_PRESS_Backseat = 1.158958225267568124678891052043 * lVD_20_PRESS_Backseat + 0.0000000000000000000000000000002387929418604
                --ExportScript.Tools.WriteToLog('Pressure2: '..ExportScript.Tools.dump(lVD_20_PRESS_Backseat))
                ExportScript.Tools.SendData(393, string.format("%.4f", lVD_20_PRESS_Backseat))
        end
end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to DAC
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF RADIO = GetDevice(54)
	ExportScript.Tools.SendDataDAC("ExportID", "Format")
	ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF RADIO:get_frequency()/1000000))
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

	-- R_832M Channel
	local R_832M = {[0.0]="0",[0.05]="1",[0.1]="2",[0.15]="3",[0.2]="4",[0.25]="5",[0.3]="6",[0.35]="7",[0.4]="8",[0.45]="9",[0.5]="10",[0.55]="11",[0.6]="12",[0.65]="13",[0.7]="14",[0.75]="15",[0.8]="16",[0.85]="17",[0.9]="18",[0.95]="19"}
	ExportScript.Tools.SendData(2000, R_832M[ExportScript.Tools.round(mainPanelDevice:get_argument_value(284), 2)])
	--ExportScript.Tools.WriteToLog('R_832M Channel: '..ExportScript.Tools.dump(mainPanelDevice:get_argument_value(284))..', '..R_832M[ExportScript.Tools.round(mainPanelDevice:get_argument_value(284), 2)])
	
	-- R_832M Frequency
	local lR_832M_F = GetDevice(19)
	if lR_832M_F:is_on() then
		--ExportScript.Tools.SendData(2001, string.format("%7.3f", lR_832M_F:get_frequency()/1000000))
		ExportScript.Tools.SendData(2001, ExportScript.Tools.RoundFreqeuncy(lR_832M_F:get_frequency()/1000000))
		--ExportScript.Tools.WriteToLog('R_832M Frequency: '..ExportScript.Tools.dump(string.format("%7.3f", lR_832M_F:get_frequency()/1000000)))
	else
		ExportScript.Tools.SendData(2001, "       ")
	end
	
	-- RSBN
	--[189] = "%.4f",		-- RSBN NAV Chan {0.0, 0.39} {1.0, 40.0}
	--[190] = "%.4f",		-- RSBN LAND Chan {0.0, 0.39} {1.0, 40.0}
	local lRSBN_Chan = {[0.0]="01",[0.01]="02",[0.02]="03",[0.03]="04",[0.04]="05",[0.05]="06",[0.06]="07",[0.07]="08",[0.08]="09",[0.09]="10",[0.10]="11",[0.11]="12",[0.12]="13",[0.13]="14",[0.14]="15",[0.15]="16",[0.16]="17",[0.17]="18",[0.18]="19",[0.19]="20",[0.20]="21",[0.21]="22",[0.22]="23",[0.23]="24",[0.24]="25",[0.25]="26",[0.26]="27",[0.27]="28",[0.28]="29",[0.29]="30",[0.30]="31",[0.31]="32",[0.32]="33",[0.33]="34",[0.34]="35",[0.35]="36",[0.36]="37",[0.37]="38",[0.38]="39",[0.39]="40"}
	ExportScript.Tools.SendData(189, lRSBN_Chan[ExportScript.Tools.round(mainPanelDevice:get_argument_value(189), 2)])
	--ExportScript.Tools.WriteToLog('RSBN 1: '..ExportScript.Tools.dump(mainPanelDevice:get_argument_value(189)))
	--ExportScript.Tools.WriteToLog('RSBN 2: '..ExportScript.Tools.dump(ExportScript.Tools.round(mainPanelDevice:get_argument_value(189), 2)))
	
	ExportScript.Tools.SendData(190, lRSBN_Chan[ExportScript.Tools.round(mainPanelDevice:get_argument_value(190), 2)])
	--ExportScript.Tools.WriteToLog('RSBN 1: '..ExportScript.Tools.dump(mainPanelDevice:get_argument_value(190)))
	--ExportScript.Tools.WriteToLog('RSBN 2: '..ExportScript.Tools.dump(ExportScript.Tools.round(mainPanelDevice:get_argument_value(190), 2)))
	
	-- Cockpit Light
	ExportScript.Tools.IkarusCockpitLights(mainPanelDevice, {222, 225, 226, 497})
	-- CB Nav. Lights, CB Red Lights, CB White Lights, Backseat - Instrument Lighting Switch
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to DAC
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF RADIO = GetDevice(54)
	ExportScript.Tools.SendDataDAC("ExportID", "Format")
	ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF RADIO:get frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]

	-- R_832M Channel
	local R_832M = {[0.0]="0",[0.05]="1",[0.1]="2",[0.15]="3",[0.2]="4",[0.25]="5",[0.3]="6",[0.35]="7",[0.4]="8",[0.45]="9",[0.5]="10",[0.55]="11",[0.6]="12",[0.65]="13",[0.7]="14",[0.75]="15",[0.8]="16",[0.85]="17",[0.9]="18",[0.95]="19"}
	ExportScript.Tools.SendDataDAC(2000, R_832M[ExportScript.Tools.round(mainPanelDevice:get_argument_value(284), 2)])
	--ExportScript.Tools.WriteToLog('R_832M Channel: '..ExportScript.Tools.dump(mainPanelDevice:get_argument_value(284))..', '..R_832M[ExportScript.Tools.round(mainPanelDevice:get_argument_value(284), 2)])
	
	
	-- R_832M Frequency
	local lR_832M_F = GetDevice(19)
	if lR_832M_F:is_on() then
		--ExportScript.Tools.SendDataDAC(2001, string.format("%7.3f", lR_832M_F:get_frequency()/1000000))
		ExportScript.Tools.SendDataDAC(2001, ExportScript.Tools.RoundFreqeuncy(lR_832M_F:get_frequency()/1000000))
		--ExportScript.Tools.WriteToLog('R_832M Frequency: '..ExportScript.Tools.dump(string.format("%7.3f", lR_832M_F:get_frequency()/1000000)))
	else
		ExportScript.Tools.SendDataDAC(2001, "       ")
	end
	
	-- RSBN
	--[189] = "%.4f",		-- RSBN NAV Chan {0.0, 0.39} {1.0, 40.0}
	--[190] = "%.4f",		-- RSBN LAND Chan {0.0, 0.39} {1.0, 40.0}
	local lRSBN_Chan = {[0.0]="01",[0.01]="02",[0.02]="03",[0.03]="04",[0.04]="05",[0.05]="06",[0.06]="07",[0.07]="08",[0.08]="09",[0.09]="10",[0.10]="11",[0.11]="12",[0.12]="13",[0.13]="14",[0.14]="15",[0.15]="16",[0.16]="17",[0.17]="18",[0.18]="19",[0.19]="20",[0.20]="21",[0.21]="22",[0.22]="23",[0.23]="24",[0.24]="25",[0.25]="26",[0.26]="27",[0.27]="28",[0.28]="29",[0.29]="30",[0.30]="31",[0.31]="32",[0.32]="33",[0.33]="34",[0.34]="35",[0.35]="36",[0.36]="37",[0.37]="38",[0.38]="39",[0.39]="40"}
	ExportScript.Tools.SendDataDAC(189, lRSBN_Chan[ExportScript.Tools.round(mainPanelDevice:get_argument_value(189), 2)])
	
	ExportScript.Tools.SendDataDAC(190, lRSBN_Chan[ExportScript.Tools.round(mainPanelDevice:get_argument_value(190), 2)])
	
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

-- global VD-20 Pressure variable
gVD_20_PRESS = 0
gVD_20_PRESS_Backseat = 0
-----------------------------
--     Custom functions    --
-----------------------------
