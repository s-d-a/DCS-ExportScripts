-- Ka-50 Export

ExportScript.FoundDCSModule = true
ExportScript.Version.Ka50 = "1.2.1"

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
	-- LAMPS
	---------------------------------------------------
	--[44]  = "%.1f",			-- lamp_MasterWarning {0.0,0.3}
	--[46]  = "%.1f", 			-- lamp_RotorRPM {0.0,1.0}
	[47]  = "%.f", 			-- lamp_UNDERFIREwarning {0.0,1.0}
	[48]  = "%.f", 			-- lamp_LowerGear {0.0,1.0}
	[78]  = "%.f", 			-- lamp_RPM_leftEngineMax {0.0,1.0}
	[79]  = "%.f", 			-- lamp_RPM_rightEngineMax {0.0,1.0}
	[80]  = "%.f", 			-- lamp_NyMax {0.0,1.0}
	[81]  = "%.f", 			-- lamp_vibr_leftEngine {0.0,1.0}
	[82]  = "%.f", 			-- lamp_vibr_rightEngine {0.0,1.0}
	[83]  = "%.f", 			-- lamp_IAS_max {0.0,1.0}
	[84]  = "%.f", 			-- lamp_mainTransmission {0.0,1.0}
	[85]  = "%.f", 			-- lamp_Fire {0.0,1.0}
	[86]  = "%.f", 			-- lamp_IFFfailure {0.0,1.0}
	-- VVI
	---------------------------------------------------
	[24]  = "%.4f", 		-- vy (Vertical Velocity Indicator) {-1.0,1.0}
	-- ADI (IKP-81)
	---------------------------------------------------
	[100] = "%.4f", 		-- ADI_Roll {-1.0,1.0}
	[101] = "%.4f", 		-- ADI_Pitch {-math.pi/2.0,math.pi/2.0}{1.0,-1.0}
	[102] = "%0.1f", 		-- ADI_steering_warning_flag {0.0,1.0}
	[109] = "%0.1f", 		-- ADI_attitude_warning_flag {0.0,1.0}
	[107] = "%.4f", 		-- ADI_bank_steering {-1.0,1.0}
	[106] = "%.4f", 		-- ADI_pitch_steering {-1.0,1.0}
	[111] = "%.4f", 		-- ADI_airspeed_deviation {-1.0,1.0}
	[103] = "%.4f", 		-- ADI_track_deviation {-1.0,1.0}
	[526] = "%.4f", 		-- ADI_height_deviation {-1.0,1.0}
	[108] = "%.4f", 		-- ADI_sideslip {-1.0,1.0}
	-- Barometric Altimeter (VM_15PV)
	--------------------------------------------------
	[87]  = "%.4f", 		-- VM_15PV_BALT_thousands {0.0,1.0}
	[573] = "%.4f", 		-- VM_15PV_BALT_tenths {0.0,1.0}
	[88]  = "%0.2f", 		-- VM_15PV_BaroPressure {0.0,1.0}
	[89]  = "%.4f", 		-- VM_15PV_BALT_CommandedAlt {0.0,1.0}
	-- HSI (PNP-72-16)
	---------------------------------------------------
	[112] = "%.4f", 		-- HSI_heading {0.0, 1.0}
	[118] = "%.4f", 		-- HSI_commanded_course_needle {0.0, 1.0}
	[124] = "%.4f", 		-- HSI_commanded_heading_needle {0.0, 1.0}
	[115] = "%.4f", 		-- HSI_bearing_needle {0.0, 1.0}
	[119] = "%0.1f", 		-- HSI_heading_warning_flag{0.0,1.0}
	[114] = "%0.1f", 		-- HSI_course_warning_flag{0.0, 1.0}
	[125] = "%0.1f", 		-- HSI_glideslope_warning_flag{0.0, 1.0}
	[117] = "%0.4f", 		-- HSI_range_counter_100 {0.0,1.0}
	[527] = "%0.4f", 		-- HSI_range_counter_10 {0.0,1.0}
	[528] = "%0.4f", 		-- HSI_range_counter_1 {0.0,1.0}
	[127] = "%.4f", 		-- HSI_longitudinal_deviation{-1.0, 1.0}
	[128] = "%.4f", 		-- HSI_lateral_deviation{-1.0, 1.0}
	[116] = "%0.1f", 		-- HSI_range_unavailable_flag{0.0, 1.0}
	[121] = "%0.1f", 		-- HSI_course_unavailable_flag{0.0, 1.0}
	-- Rotor Pitch
	---------------------------------------------------
	[53]  = "%.4f", 		-- RotorPitch {0.0,1.0}
	-- Rotor RPM
	---------------------------------------------------
	[52]  = "%.4f", 		-- RotorRPM {0.0,1.0}
	-- Radar Altimeter ( A_036)
	---------------------------------------------------
	[94]  = "%.4f", 		-- A_036_RALT {0.0,1.0}
	[93]  = "%.4f", 		-- A_036_DangerRALT {0.0,1.0}
	[95]  = "%0.1f", 		-- A_036_warning_flag {0.0,1.0}
	[92]  = "%.f",	 		-- A_036_DangerRALT_lamp {0.0,1.0}
	-- Indicated Airspeed
	---------------------------------------------------
	[51]  = "%.4f", 		-- IAS {0.0,1.0}
	-- Accelerometer (ADP_4)
	---------------------------------------------------
	[97]  = "%0.4f", 		-- ADP_4_acceleration {0.0,1.0}
	[98]  = "%0.2f", 		-- ADP_4_max_achieved_acc {0.0,1.0}
	[99]  = "%0.2f", 		-- ADP_4_min_achieved_acc {0.0,1.0}
	-- Mechanic Clock
	---------------------------------------------------
	[68]  = "%.4f", 		-- CLOCK_currtime_hours {0.0,1.0}
	[69]  = "%.4f", 		-- CLOCK_currtime_minutes {0.0,1.0}
	[70]  = "%.4f", 		-- CLOCK_currtime_seconds {0.0,1.0}
	--[75]  = "%0.1f", 		-- CLOCK_flight_time_meter_status{0.0,0.1,0.2}
	[72]  = "%.4f", 		-- CLOCK_flight_hours {0.0,1.0}
	[531] = "%.4f", 		-- CLOCK_flight_minutes {0.0,1.0}
	[73]  = "%.4f", 		-- CLOCK_seconds_meter_time_minutes {0.0,1.0}
	[532] = "%.4f", 		-- CLOCK_seconds_meter_time_seconds {0.0,1.0}
	-- backup ADI (AGR-81)
	---------------------------------------------------
	[142] = "%.4f", 		-- AGR_81_Roll {1.0, -1.0}
	[143] = "%.4f", 		-- AGR_81_Pitch {-1.0, 1.0}
	[144] = "%.4f", 		-- AGR_81_sideslip	{-1.0, 1.0}
	[145] = "%0.1f", 		-- AGR_81_failure_flag{0.0, 1.0}
	-- Engines temperature
	---------------------------------------------------
	[133] = "%.4f", 		-- LeftEngineTemperatureHund {0.0,1.0}
	[566] = "%.4f", 		-- LeftEngineTemperatureTenth {0.0,1.0}
	[134] = "%.4f", 		-- RightEngineTemperatureHund {0.0,1.0}
	[567] = "%.4f", 		-- RightEngineTemperatureHund {0.0,1.0}
	-- Engine RPM
	---------------------------------------------------
	[135] = "%.4f", 		-- LeftEngineRPM {0.0,1.0}
	[136] = "%.4f", 		-- RightEngineRPM {0.0,1.0}
	-- Fuel tanks 
	---------------------------------------------------
	[138] = "%.4f", 		-- RearTankAmount {0.0,1.0}
	[137] = "%.4f", 		-- ForwardTankAmount {0.0,1.0}
	[139] = "%0.1f", 		-- lamp_ForwardTankTest {0.0,1.0}
	[140] = "%0.1f", 		-- lamp_RearTankTest {0.0,1.0}
	-- PUI-800 Weapon panel
	---------------------------------------------------
	[392] = "%.f", 			-- lamp_PUI800_Sta1_WeapIsPresent{0.0, 1.0}
	[393] = "%.f", 			-- lamp_PUI800_Sta2_WeapIsPresent{0.0, 1.0}
	[394] = "%.f", 			-- lamp_PUI800_Sta3_WeapIsPresent{0.0, 1.0}
	[395] = "%.f", 			-- lamp_PUI800_Sta4_WeapIsPresent{0.0, 1.0}
	[388] = "%.f", 			-- lamp_PUI800_Sta1_WeapIsReady{0.0, 1.0}
	[389] = "%.f", 			-- lamp_PUI800_Sta2_WeapIsReady{0.0, 1.0}
	[390] = "%.f", 			-- lamp_PUI800_Sta3_WeapIsReady{0.0, 1.0}
	[391] = "%.f", 			-- lamp_PUI800_Sta4_WeapIsReady{0.0, 1.0}
	-- LGCP - Landing gear control panel
	---------------------------------------------------
	[63]  = "%.f", 			-- LGCP_Lamp_NoseGearUp {0.0,1.0}
	[64]  = "%.f", 			-- LGCP_Lamp_NoseGearDown {0.0,1.0}
	[61]  = "%.f", 			-- LGCP_Lamp_RightMainGearUp {0.0,1.0}
	[62]  = "%.f", 			-- LGCP_Lamp_RightMainGearDown {0.0,1.0}
	[59]  = "%.f", 			-- LGCP_Lamp_LeftMainGearUp {0.0,1.0}
	[60]  = "%.f", 			-- LGCP_Lamp_LeftMainGearDown{0.0, 1.0}
	-- LAMPS
	---------------------------------------------------
	[170] = "%.f", 			-- lamp_H_RALT_stab {0.0,1.0}
	[175] = "%.f", 			-- lamp_Hover {0.0,1.0}
	[172] = "%.f", 			-- lamp_Descent {0.0,1.0}
	[165] = "%.f", 			-- lamp_RouteHeadingSteering {0.0,1.0}
	[171] = "%.f", 			-- lamp_RouteCourseSteering {0.0,1.0}
	[176] = "%.f",			-- lamp_Waypoint {0.0,1.0}
	[166] = "%.f", 			-- lamp_EndOfRoute {0.0,1.0}
	[164] = "%.f", 			-- lamp_RoughNAVcalc {0.0,1.0}
	[178] = "%.f", 			-- lamp_Burst {0.0,1.0}
	[173] = "%.f", 			-- lamp_CannonMovingBarr {0.0,1.0}
	[177] = "%.f", 			-- lamp_CannonMovingBarr2 {0.0,1.0}
	[211] = "%.f", 			-- lamp_FuelCrossfeedOn {0.0,1.0}
	[187] = "%.f", 			-- lamp_CouplerOff {0.0,1.0}
	[204] = "%.f", 			-- lamp_ActuatorsOilPress {0.0,1.0}
	[213] = "%.f", 			-- lamp_LockOff {0.0,1.0}
	-- Magnetic Compass (KI-13)
	---------------------------------------------------
	[11]  = "%.4f", 		-- KI_13_course {-1,1}
	[12]  = "%.4f", 		-- KI_13_pitch {-1,1}
	[14]  = "%.4f", 		-- KI_13_bank {-1,1}
	-- LAMPS
	---------------------------------------------------
	[167] = "%.f", 			-- lamp_WeapSysBUS_ON {0.0,1.0}
	[180] = "%.f", 			-- lamp_TrainingMode {0.0,1.0}
	[179] = "%.f", 			-- lamp_OBZOR_800 {0.0,1.0}
	[188] = "%.f", 			-- lamp_RANET {0.0,1.0}
	[189] = "%.f", 			-- lamp_CC_test {0.0,1.0}
	[206] = "%.f", 			-- lamp_CC_failure {0.0,1.0}
	[212] = "%.f", 			-- lamp_DC_AC_Inverter {0.0,1.0}
	[205] = "%.f", 			-- lamp_I_251V {0.0,1.0}
	[181] = "%.f", 			-- lamp_AntiIceLeftEngine {0.0,1.0}
	[190] = "%.f", 			-- lamp_DustProtectLeftEngine {0.0,1.0}
	[207] = "%.f", 			-- lamp_BackupModeLeftEngine {0.0,1.0}
	[183] = "%.f", 			-- lamp_AntiIceRotors {0.0,1.0}
	[182] = "%.f", 			-- lamp_AntiIceRightEngine {0.0,1.0}
	[191] = "%.f", 			-- lamp_DustProtectRightEngine {0.0,1.0}
	[208] = "%.f", 			-- lamp_BackupModeRightEngine {0.0,1.0}
	[184] = "%.f", 			-- lamp_VUO_Heat {0.0,1.0}
	[200] = "%.f", 			-- lamp_ForwardTank {0.0,1.0}
	[209] = "%.f", 			-- lamp_LeftValveClosed {0.0,1.0}
	[185] = "%.f", 			-- lamp_LeftOuterTank {0.0,1.0}
	[202] = "%.f", 			-- lamp_LeftInnerTank {0.0,1.0}
	[201] = "%.f", 			-- lamp_RearTank {0.0,1.0}
	[210] = "%.f", 			-- lamp_RightValveClosed {0.0,1.0}
	[186] = "%.f", 			-- lamp_RightOuterTank {0.0,1.0}
	[203] = "%.f", 			-- lamp_RightInnerTank {0.0,1.0}
	-- DATALINK
	---------------------------------------------------
	--[159] = "%.1f", 			-- PRC_button_SEND {0.0,0.3}
	--[150] = "%.1f", 			-- PRC_button_ESCAPE {0.0,0.3}
	--[161] = "%.1f", 			-- PRC_button_ERASE {0.0,0.3}
	--[15]  = "%.1f", 			-- PRC_button_CLEAN {0.0,0.3}
	--[16]  = "%.1f", 			-- PRC_button_WINGMAN_ALL {0.0,0.3}
	--[17]  = "%.1f", 			-- PRC_button_WINGMAN_1 {0.0,0.3}
	--[18]  = "%.1f", 			-- PRC_button_WINGMAN_2 {0.0,0.3}
	--[19]  = "%.1f", 			-- PRC_button_WINGMAN_3 {0.0,0.3}
	--[20]  = "%.1f", 			-- PRC_button_WINGMAN_4 {0.0,0.3}
	--[21]  = "%.1f", 			-- PRC_button_TARGET_1 {0.0,0.3}
	--[22]  = "%.1f", 			-- PRC_button_TARGET_2 {0.0,0.3}
	--[23]  = "%.1f", 			-- PRC_button_TARGET_3 {0.0,0.3}
	--[50]  = "%.1f", 			-- PRC_button_TARGET_POINT {0.0,0.3}
	-- Laser warning system
	---------------------------------------------------
	[25]  = "%.f", 			-- LWS_LampAzimuth_0 {0.0,1.0}
	[28]  = "%.f", 			-- LWS_LampAzimuth_90 {0.0,1.0}
	[26]  = "%.f", 			-- LWS_LampAzimuth_180 {0.0,1.0}
	[27]  = "%.f", 			-- LWS_LampAzimuth_270 {0.0,1.0}
	[31]  = "%.f", 			-- LWS_LampAzimuth_UpperHemisphere {0.0,1.0}
	[32]  = "%.f", 			-- LWS_LampAzimuth_LowerHemisphere {0.0,1.0}
	[33]  = "%.f", 			-- LWS_LampAzimuth_LaserRangefinder {0.0,1.0}
	[34]  = "%.f", 			-- LWS_LampAzimuth_LaserTargetingSystem {0.0,1.0}
	[582] = "%.f", 			-- LWS_LampReady {0.0,1.0}
	-- UV-26
	---------------------------------------------------
	[541] = "%.f", 			-- UV26_lampLeftBoard {0.0,1.0}
	[542] = "%.f", 			-- UV26_lampRightBoard {0.0,1.0}
	-- PVI (Nav Control Panel)
	---------------------------------------------------
	[315] = "%0.1f", 		-- PVI_button_WPT{0.0, 0.3}
	[519] = "%0.1f", 		-- PVI_button_INSREALN{0.0, 0.3}
	[316] = "%0.1f", 		-- PVI_button_FIXPT{0.0, 0.3}
	[520] = "%0.1f", 		-- PVI_button_PRECALN{0.0, 0.3}
	[317] = "%0.1f", 		-- PVI_button_AERDR{0.0, 0.3}
	[521] = "%0.1f", 		-- PVI_button_NORMALN{0.0, 0.3}
	[318] = "%0.1f", 		-- PVI_button_TGT{0.0, 0.3}
	[313] = "%0.1f", 		-- PVI_button_ENTER{0.0, 0.3}
	[314] = "%0.1f", 		-- PVI_button_CANCEL{0.0, 0.3}
	[522] = "%0.1f", 		-- PVI_button_INITCOORD{0.0, 0.3}
	[319] = "%0.1f", 		-- PVI_button_FILAMBDA{0.0, 0.3}
	[320] = "%0.1f", 		-- PVI_button_FIZ{0.0, 0.3}
	[321] = "%0.1f", 		-- PVI_button_DU{0.0, 0.3}
	[322] = "%0.1f", 		-- PVI_button_FII{0.0, 0.3}
	[323] = "%0.1f", 		-- PVI_button_BRGRNG{0.0, 0.3}
	[330] = "%0.1f", 		-- PPR_button_K{0.0, 0.3}
	[332] = "%0.1f", 		-- PPR_button_H{0.0, 0.3}
	[331] = "%0.1f", 		-- PPR_button_T{0.0, 0.3}
	[333] = "%0.1f", 		-- PPR_button_B{0.0, 0.3}
	[334] = "%0.1f", 		-- PPR_button_DIR{0.0, 0.3}
	-- RadioCommunicator R-828
	---------------------------------------------------
	[375] = "%0.1f", 		-- Radio_ASU_lamp{0.0,1.0}
	-- RadioCommunicator R-800
	---------------------------------------------------
	[419] = "%0.1f", 		-- Radio_Test_lamp {0.0,1.0}
	[577] = "%.3f", 		-- R800Rotary1 {0.0,1.0}
	[574] = "%.2f", 		-- R800Rotary2 {0.0,1.0}
	[575] = "%.2f", 		-- R800Rotary3 {0.0,1.0}
	[576] = "%.2f", 		-- R800Rotary4 {0.0,1.0}
	-- WEAPON  INTERFACE
	---------------------------------------------------
	--[437] = "%.1f", 		-- PRC_button_AUTO_TURN {0.0,0.3}
	--[438] = "%.1f", 		-- PRC_button_AIRBORNE_TARGET {0.0,0.3}
	--[439] = "%.1f", 		-- PRC_button_FORWARD_HEMISPHERE {0.0,0.3}
	--[440] = "%.1f", 		-- PRC_button_GROUND_MOVING_TARGET {0.0,0.3}
	--[441] = "%.1f", 		-- PRC_button_CLEAR {0.0,0.3}
	-- Engines start panel
	---------------------------------------------------
	[163] = "%.f", 			-- lamp_EnginesStartValve{0.0, 1.0}
	-- APU control panel
	---------------------------------------------------
	[162] = "%.f", 			-- lamp_APUValveOpen{0.0, 1.0}{0.0, 1.0}
	[168] = "%.f", 			-- lamp_APUOilPres{0.0, 1.0}{0.0, 1.0}
	[169] = "%.f", 			-- lamp_APUStoppedByRPM{0.0, 1.0}
	[174] = "%.f", 			-- lamp_APU_IsON{0.0, 1.0}
	-- APU Temperature
	---------------------------------------------------
	[6]   = "%.4f", 		-- APUTemperature {0.0, 900.0} = {0.0, 1.0}
	-- Right Side Panel
	---------------------------------------------------
	[586] = "%.f", 			-- lamp_AC_Ground_Power{0.0, 1.0}
	[261] = "%.f", 			-- lamp_DC_Ground_Power{0.0, 1.0}
	-- Eject system
	---------------------------------------------------
	[461] = "%0.1f", 		-- EjectSystemTestLamp{0.0, 1.0}
	-- Fire Extinguishers panel
	---------------------------------------------------
	[237] = "%.f", 			-- lamp_Exting_LeftEngineFire{0.0, 1.0}
	[239] = "%.f", 			-- lamp_Exting_APU_Fire{0.0, 1.0}
	[568] = "%.f", 			-- lamp_Exting_HydraulicsFire{0.0, 1.0}
	[241] = "%.f", 			-- lamp_Exting_RightEngineFire{0.0, 1.0}
	[243] = "%.f", 			-- lamp_Exting_VentilatorFire{0.0, 1.0}
	[244] = "%.f", 			-- lamp_Exting_Lamp1{0.0, 1.0}
	[245] = "%.f", 			-- lamp_Exting_Lamp2{0.0, 1.0}
	-- Engines mode indicator
	---------------------------------------------------
	[592] = "%.4f", 		-- EnginesMode	{0.0,1.0}
	[234] = "%0.2f", 		-- LeftEngineMode{0.0,1.0}
	[235] = "%0.2f", 		-- RightEngineMode	{0.0,1.0}
	-- Oil pressure and temperature indicators group (Right Panel)
	---------------------------------------------------
	[252] = "%.4f", 		-- NeedleOilPressureEngineLeft {0.0,1.0}
	[253] = "%.4f", 		-- NeedleOilPressureEngineRight {0.0, 1.0}
	[254] = "%.4f", 		-- NeedleOilPressureGearBox {0.0,1.0}
	[255] = "%.4f", 		-- NeedleOilTemperatureEngineLeft {0.0,1.0}
	[256] = "%.4f", 		-- NeedleOilTemperatureEngineRight {0.0,1.0}
	[257] = "%.4f", 		-- NeedleOilTemperatureGearBox {0.0,1.0}
	-- Right Back Panel
	---------------------------------------------------
	[469] = "%.f", 			-- lamp_flap_hydro_1{0.0, 1.0}
	[470] = "%.f", 			-- lamp_flap_hydro_2{0.0, 1.0}
	-- Hydraulics Gauges (Back Panel)
	---------------------------------------------------
	[471] = "%.4f", 		-- hydro_common_pressure {0.0,1.0}
	[472] = "%.4f", 		-- hydro_main_pressure {0.0,1.0}
	[473] = "%.4f", 		-- hydro_acc_brake_pressure {0.0,1.0}
	[474] = "%.4f", 		-- hydro_gear_brake_pressure {0.0,1.0}
	[475] = "%.4f", 		-- hydro_common_temperature {0.0,1.0}
	[476] = "%.4f", 		-- hydro_main_temperature {0.0,1.0}
	-- Latitude Entry Panel (PShK_7)
	---------------------------------------------------
	[342] = "%.f", 			-- PShK7_LampAuto {0.0,1.0}
	[339] = "%0.4f", 		-- PShK7_Latitude_counter_tenth {0.0,10.0}
	[594] = "%0.4f", 		-- PShK7_Latitude_counter_units {0.0,10.0}
	-- Magnetic Variation Entry Panel (ZMS_3)
	---------------------------------------------------
	[337] = "%0.4f", 		-- ZMS3_MagVar_counter_hundreds_tenth {-1.0,1.0}
	[596] = "%0.4f",		-- ZMS3_MagVar_counter_units {0.0,1.0}
	-- Ambient Temperature
	---------------------------------------------------
	[587] = "%0.4f"			-- Ambient Temperature {-60, 50} = {-0.946, 0.788}
}

ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	-- ADI
	---------------------------------------------------
	[110] = "%.1f",        -- TEST-IKP-PTR (ADI Test Button) {0.0,1.0}
	-- HSI
	---------------------------------------------------
	[113] = "%.1f",        -- TEST-PNP-PTR03 (HSI test Button) 
	[54]  = "%1d",         -- ZPU-ZK-PTR (HSI Desired track angle - Desired heading, Auto - Manual) {0,1}
	--laser ranger
	---------------------------------------------------
	[56]  = "%1d",         -- LDP-LD-PTR (Laser rangefinder / designator - mode switch) 
	[57]  = "%1d",         -- LD-LDP-COVER-PTR (Laser rangefinder Cover) 
	[55]  = "%.1f",        -- CHOP-LDP-PTR (Laser designator reset) 
	-- RADIOALTIMETER
	---------------------------------------------------
	[96]  = "%.1f",        -- TEST-RADIO-HIGHT-PTR (Radar altimeter test) 
	-- CPT MECH
	---------------------------------------------------
	[572] = "%.1f",        -- G--PTR (Accelerometer reset)
	-- SYSTEM CONTROLLER
	---------------------------------------------------
	[45]  = "%.1f",        -- CONTROL-ALARM-PTR (Lamps test) 
	-- STANDBY ADI (AGR-81)
	---------------------------------------------------
	[230] = "%1d",         -- RES-AG-PTR (Standby Attitude Indicator power switch)
	-- Engines Start-Up Control Panel
	---------------------------------------------------
	[131] = "%.1f",        -- CONTROL-TEMP-WORK-PTR (Running engines exhaust gas temperature indicator test button)
	[132] = "%.1f",        -- CONTROL-TEMP-NOTWORK-PTR (Stopped engines exhaust gas temperature indicator test button)
	-- FUEL SYSTEM
	---------------------------------------------------
	[616] = "%.1f",        -- CONTROL-OIL-PTR (Fuel quantity indicator self test button) 
	-- ABRIS Display
	---------------------------------------------------
	[512] = "%.1f",        -- PTR_BTN-ABRIS-01 (ABRIS Pushbutton 1) {start value 0.01 the same index for -2,-3,-4,-5,-6,-7,-8,-9,-RCL,-ENTR with increment 0.01}
	[513] = "%.1f",        -- PTR_BTN-ABRIS-02 (ABRIS Pushbutton 2) 
	[514] = "%.1f",        -- PTR_BTN-ABRIS-03 (ABRIS Pushbutton 3) 
	[515] = "%.1f",        -- PTR_BTN-ABRIS-04 (ABRIS Pushbutton 4) 
	[516] = "%.1f",        -- PTR_BTN-ABRIS-05 (ABRIS Pushbutton 5) 
	[518] = "%.1f",        -- ABRIS_SHUNT_PTR (ABRIS Cursor Control (rotary)){0.0,1.0} (0.04) 
	[523] = "%.1f",        -- ABRIS_SHUNT_PTR (ABRIS Cursor Control (push))
	[517] = "%.3f",        -- ABRIS_BRIGHTNESS_PTR (ABRIS Brightness) {0.0,1.0} (0.05) 
	[130] = "%0.1f",       -- ABRIS-POWER_PTR (ABRIS Power)
	-- HUD
	---------------------------------------------------
	[8]   = "%.3f",        -- PTR_HUD-BRIGHTNESS (HUD Brightness)
	[9]   = "%1d",         -- PTR_HUD-TMB-SETKA02 (HUD Modes Reticle/Night/Day)
	[7]   = "%.1f",        -- PTR-HUD-TEST (HUD Test)
	[510] = "%0.1f",       -- PTR_HUD-FILTER (HUD Filter)
	-- PUI-800 Weapons Control Panel
	---------------------------------------------------
	[387] = "%1d",         -- MASTER-ARM-PTR (Master Arm)
	[402] = "%.1f",        -- UI800-AVARCHOP-PTR (External stores jettison)
	[396] = "%1d",         -- MASTER-EXPLODE-PTR (Jettison arm mode - arm fuse/disarm fuse)
	[403] = "%1d",         -- PUI800-AUTO-PTR (Manual/Auto weapon system control switch) 
	[399] = "%1d",         -- PUI800-OFBR-PTR (Cannon round selector switch HE/AP)
	[400] = "%.1f",       -- SR-PTR (Weapon mode switch - Burst Length) {0.0,0.1,0.2}
	[398] = "%1d",         -- MT-PTR (Cannon rate of fire setting)
	[397] = "%.1f",        -- MASTER-UNLOAD-PTR (Expedite emergency ATGM launch)
	-- PUR Weapons Aux Panel
    -- SHKVAL
	---------------------------------------------------
	[404] = "%1d",         -- PUR-BACKGROUND-PTR (IT-23 Black-White indication switch)
	[406] = "%.3f",        -- PUR-LIGHTIT-PTR (IT-23 display brightness)
	[407] = "%.3f",        -- PUR-CONTRAST-PTR (IT-23 display contrast)
    -- SHKVAL windscreen wiper
	[224] = "%.1f",        -- WIPER-PTR (SHKVAL windscreen wiper)
	-- HELMET
	[405] = "%.3f",        -- PUR-LIGHTNVU-PTR (Helmet device brightness)
	-- WEAPON SYSTEM
	[408] = "%0.1f",       -- PUR-LIT-PTR (Laser code selector)
	[409] = "%1d",         -- PUR-OGR-INF-PTR (HUD/TV declutter switch)
	-- Outside illumination
	---------------------------------------------------
	[382] = "%0.1f",       -- LANDING LIGHTS-DIR-LIGHT-PTR (Light landing-search. On/Retraction/Off)
	[383] = "%1d",         -- LANDING LIGHTS-BASE-RESERV-PTR (Lights landing-search change. Main/Reserved)
	-- ALMAZ system
	---------------------------------------------------
	[384] = "%.1f",        -- SPEECH-INFO-OFF-PTR01 (Voice message system messages off)
	[385] = "%.1f",        -- SPEECH-INFO-RETRY-PTR (Voice message system messages repeat)
	[386] = "%0.1f",       -- SPEECH-INFO-AVAR-PTR (Voice message system emergency on)
	[442] = "%.1f",        -- SPEECH-BIT-PTR (Voice message system check)
	-- CPT MECH
	---------------------------------------------------
	[65]  = "%1d",         -- GEAR-PTR (Gear lever)
	[66]  = "%1d",         -- AVAR-GEAR-PTR (Main/Common hydraulics for emergency gear)
	[67]  = "%1d",         -- AVAR-GEAR-COVER-PTR (Main/Common hydraulics for emergency gear Cover)
	-- OVERHEAD PANEL
	---------------------------------------------------
	[146] = "%0.1f",       -- ANO-PTR (Navigation Lights 10\% / 30\% / 100\% / Off)
	[147] = "%0.1f",       -- WINDSCREEN-WIPER-PTR (Windshield wiper switch)
	[539] = "%1d",         -- PPD-DUAS-PTR (Pitot static port and AoA sensors heat switch)
	[151] = "%1d",         -- PVD-CLOCK-PTR (Pitot ram air and clock heat switch)
	[153] = "%1d",         -- POS-ROTORS-PTR (Rotor de-icing system switch)
	[154] = "%0.1f",       -- POS-ENGINE-PZU-PTR (Engines de-icing / dust-protection systems switch)
	[156] = "%.1f",        -- KONTR-PVD-PTR (Pitot heat system test)
	-- Laser Warning System
	---------------------------------------------------
	[35]  = "%.1f",        -- L-140-RESET-PTR (LWS Reset button)
	[583] = "%1d",         -- L140-SWITCH (LWS Power switch)
	[584] = "%.1f",        -- L140-CNOB (LWS self-test button)
	-- UV-26 CMD Control Panel
	---------------------------------------------------
	[36]  = "%0.1f",       -- UV26-BOARD-PTR (CMD Select Left/Both/Right board flares dispensers)
	[37]  = "%0.1f",       -- UV26-PROGR-PTR (CMD Amount flares counter/Programming)
	[38]  = "%.1f",        -- UV26-SERIES-PTR (CMD Num of sequences)
	[39]  = "%.1f",        -- UV26-BURST-PTR (CMD Num in sequence)
	[41]  = "%.1f",        -- UV26-INTERVAL-PTR (CMD Dispense interval)
	[43]  = "%.1f",        -- UV26-START-PTR (CMD Start dispense)
	[42]  = "%.1f",        -- UV26-CANCELPRG-PTR (CMD Reset to default program)
	[40]  = "%.1f",        -- UV26-STOP-PTR (CMD Stop dispense)
	-- UV-26 related (REAR PANEL)
	[496] = "%1d",         -- UV26-POWER-PTR (CMD Power)
	[497] = "%1d",         -- UV26-POWER-COVER-PTR (CMD Power Cover)
	[498] = "%1d",         -- UV26-TEST-PTR (CMD BIT)
	[499] = "%1d",         -- UV26-TEST-COVER-PTR (CMD BIT Cover)
	-- PVI NAV Panel
	---------------------------------------------------
	[312] = "%0.1f",       -- PVI-0-PTR (NAV '0' Btn)
	[303] = "%0.1f",       -- PVI-1-PTR (NAV '1' Btn)
	[304] = "%0.1f",       -- PVI-2-PTR (NAV '2' Btn) 
	[305] = "%0.1f",       -- PVI-3-PTR (NAV '3' Btn) 
	[306] = "%0.1f",       -- PVI-4-PTR (NAV '4' Btn) 
	[307] = "%0.1f",       -- PVI-5-PTR (NAV '5' Btn) 
	[308] = "%0.1f",       -- PVI-6-PTR (NAV '6' Btn) 
	[309] = "%0.1f",       -- PVI-7-PTR (NAV '7' Btn) 
	[310] = "%0.1f",       -- PVI-8-PTR (NAV '8' Btn) 
	[311] = "%0.1f",       -- PVI-9-PTR (NAV '9' Btn) 
	[324] = "%0.1f",       -- PVI-SWITCH-PTR (NAV Master modes)
	[325] = "%1d",         -- PVI_I251V_PTR (NAV INU fixtaking method)
	[326] = "%1d",         -- PVI_VCU_PTR (NAV Datalink power)
	[327] = "%.3f",        -- PVI-BRIGHTNESS-PTR (NAV Brightness)
	-- DATALINK
	---------------------------------------------------
	-- Datalink Mode Controls
   	[328] = "%0.1f",       -- DTLK-SELF-ID-PTR (Datalink self ID)
	[329] = "%0.1f",       -- DTLK-MASTER-MODES-PTR (Datalink Master mode)
	-- PPR - Autopilot Control Panel
	-- AUTOPILOT
	---------------------------------------------------
	[335] = "%0.1f",       -- BAR-RV-PTR (Autopilot BARO/RALT altitude hold mode)
	-- NAV SYSTEM
	[336] = "%0.1f",       -- ZK-LZP-PTR (Autopilot Desired heading - Desired track)
	--ARK-22
	---------------------------------------------------
	[381] = "%0.2f",       -- IANDING LIGHTS-DIR-LIGHT-PTR01 (ADF Inner-Auto-Outer NDB switch)
	[355] = "%.1f",        -- ARK-CONTROL-PTR (ADF Test)
	[354] = "%1d",         -- TLF-TLG-PTR (TLF-TLG modes)
	[353] = "%.3f",        -- VARK-VOLUME-PTR (ADF Volume)
	[356] = "%1d",         -- TLF-TLG-PTR01 (COMPASS-ANTENNA modes)
	[357] = "%0.1f",       -- VARK-VOLUME-PTR01 (ADF channel switch)
	--R-828
	---------------------------------------------------
	[371] = "%0.1f",       -- CHANNEL-PTR (R-828 (VHF-1) Radio channel selector)
	[372] = "%.3f",        -- RADIO-VOLUME-PTR (R-828 (VHF-1) Radio Volume)
	[373] = "%.1f",        -- ASU-PTR (R-828 (VHF-1) Tuner button)
	[374] = "%1d",         -- RADIO-PSH-SWITCH-PTR (R-828 (VHF-1) Squelch)
	-- Signal Flares
	---------------------------------------------------
	[376] = "%.1f",        -- SIGNAL-FLARE-1-PTR (Signal flare red)
	[377] = "%.1f",        -- SIGNAL-FLARE-2-PTR (Signal flare green)
	[378] = "%.1f",        -- SIGNAL-FLARE-3-PTR (Signal flare white)
	[379] = "%.1f",        -- SIGNAL-FLARE-4-PTR (Signal flare yellow)
	[380] = "%1d",         -- SIGNAL-FLARE-SWITCH-PTR (Signal flare system power)
	--R-800
	---------------------------------------------------
	[418] = "%.1f",        -- START-PANEL-CONTROL-PTR (R-800 (VHF-2) BIT button)
	[417] = "%1d",         -- CONTR-RADIO-CHM-AM-PTR (R-800 (VHF-2) AM-FM toggle switch)
	[421] = "%1d",         -- CONTR-RADIO-AP-PTR (R-800 (VHF-2) Emergency receiver)
	[422] = "%1d",         -- CONTR-RADIO-ARK-PTR (R-800 (VHF-2) ADF switch)
	[420] = "%1d",         -- CONTR-RADIO-50-100-PTR01 (R-800 (VHF-2) Data transfer rate switch)
	[423] = "%1d",         -- CONTR-RADIO-PSH-PTR (R-800 (VHF-2) Squelch)
	-- PVR
	---------------------------------------------------
	-- WEAPONS
	[432] = "%1d",         -- PVR-DRILL-PTR (Training mode)
	[431] = "%0.1f",       -- PVR-MODE-PTR (Weapon system mode selector)
	[436] = "%1d",         -- PVR-AS-PM-PTR (Automatic Tracking / gun sight)
	-- K041
	[433] = "%1d",         -- K-041-PTR (K-041 Targeting-navigation system power switch)
	-- LASERRANGER
	[435] = "%1d",         -- PVR-IZL-PTR (Laser standby ON/OFF switch) 
	-- HELMET
	[434] = "%1d",         -- PVR-OBZ-PTR (Helmet-mounted sight system power switch)
	-- SHKVAL
	[301] = "%0.1f",       -- V-SCAN-PTR (Shkval scan rate)
	-- Engines Start-Up Control Panel
	---------------------------------------------------
	[412] = "%.1f",        -- START-PANEL-START-PTR (Start-up selected engine button)
	[413] = "%.1f",        -- START-PANEL-STOP-START-PTR ("Interrupt start-up button)
	[414] = "%.1f",        -- START-PANEL-STOP-START-PTR01 (Stop APU button)
	[415] = "%0.1f",       -- START-PANEL-ROLLING-PTR (Engine Startup/Crank/False Start selector)
	[416] = "%0.1f",       -- START-ENGINE-SELECTOR-PTR (Engine selector)
	[554] = "%1d",         -- EMERGENCY-BRAKE ENGINE-LEFT-PTR (Left engine cut-off valve)
	[555] = "%1d",         -- EMERGENCY-BRAKE ENGINE-RIGHT-PTR (Right engine cut-off valve)
	[556] = "%1d",         -- BRAKE-ROTOR-LOW-PTR01 (Rotor brake)
	--Radio switcher
	---------------------------------------------------
	[428] = "%0.2f",       -- RADIO-RATE-PTR (SPU-9 Radio communicator selector)
	-- Right Side Panel
	---------------------------------------------------
	-- ELECTRICS POWER
	[262] = "%1d",         -- ENERG-AER-RIT-PTR (DC ground power)
	[263] = "%1d",         -- ENERG-COVER-AER-RIT-PTR (DC ground power Cover)
	[543] = "%1d",         -- ENERG-AKK2-PTR (Battery 2)
	[544] = "%1d",         -- ENERG-COVER-AKK2-PTR (Battery 2 Cover)
	[264] = "%1d",         -- ENERG-AKK1-PTR (Battery 1)
	[265] = "%1d",         -- ENERG-COVER-AKK1-PTR (Battery 1 Cover)
	[267] = "%1d",         -- RAMP-POWER-PTR (AC ground power)
	[268] = "%1d",         -- GEN-LEFT-PTR (AC left generator)
	[269] = "%1d",         -- GEN-RIGHT-PTR (AC right generator)
	[270] = "%01.f",       -- CONVERTER-PTR (DC/AC inverter) {0.0, 0.2}
	-- FUEL SYSTEM
	[271] = "%1d",         -- FUEL-PUMP-FRONT-PTR (Forward fuel tank pumps)
	[272] = "%1d",         -- FUEL-PUMP-BACK-PTR (Rear fuel tank pumps)
	[273] = "%1d",         -- FUEL-PUMP-INNER-PTR (Inner external fuel tanks pumps)
	[274] = "%1d",         -- FUEL-PUMP-OUTER-PTR (Outer external fuel tanks pumps)
	[275] = "%1d",         -- FUEL-METER-PTR (Fuelmeter power)
	[276] = "%1d",         -- PAV-CRANE-ENGINE-LEFT-PTR (Left engine fuel shutoff valve)
	[277] = "%1d",         -- PAV-CRANE-COVER-ENGINE-LEFT-PTR (Left engine fuel shutoff valve)
	[278] = "%1d",         -- PAV-CRANE-ENGINE-RIGHT-PTR (Right engine fuel shutoff valve)
	[279] = "%1d",         -- PAV-CRANE-COVER-ENGINE-RIGHT-PTR (Right engine fuel shutoff valve)
	[280] = "%1d",         -- PAV-CRANE-VSU-PTR (APU fuel shutoff valve)
	[281] = "%1d",         -- PAV-CRANE-COVER-VSU-PTR (APU fuel shutoff valve Cover)
	[282] = "%1d",         -- PAV-CRANE-CYKLIZATION-PTR (Fuel crossfeed valve)
	[283] = "%1d",         -- PAV-CRANE-COVER-CYKLIZATION-PTR (Fuel crossfeed valve Cover)
	-- COMMS POWER
   	[284] = "%1d",         -- COMM-PWR-AVSK-PTR (Intercom) 
	[285] = "%1d",         -- COMM-PWR-UKV-1-PTR (VHF-1 (R828) power switch)
	[286] = "%1d",         -- COMM-PWR-UKV-2-PTR (VHF-2 (R-800) power switch)
	[287] = "%1d",         -- COMM-PWR-TLK-PTR (Radio equipment datalink TLK power switch)
	[288] = "%1d",         -- COMM-PWR-UKV-TLK-PTR (Radio equipment datalink UHF TLK power switch)
	[289] = "%1d",         -- COMM-PWR-SA-TLF-PTR (Radio equipment datalink SA-TLF power switch)
	-- WEAPON SYS
	[547] = "%1d",         -- SUO-PTR (Weapons Control system)
	[548] = "%1d",         -- SUO-COVER-PTR (Weapons Control system Cover)
	-- EJECT SYSTEM
	[214] = "%1d",         -- RIGHT-EMERG-SW1-PTR (Ejecting system power 1)
	[215] = "%1d",         -- RIGHT-EMERG-SW2-PTR (Ejecting system power 2)
	[216] = "%1d",         -- RIGHT-EMERG-SW3-PTR (Ejecting system power 3) 
	[217] = "%1d",         -- RIGHT-COVER-EMERG-VACATION-PTR (Ejecting system power Cover)
	[462] = "%0.1f",       -- CONTR-SAPROTATE-PTR (Ejecting system circuit selector)
	[460] = "%.1f",        -- CONTR-SAP-PTR (Ejecting system circuit test)
	-- HYDRAULICS
	[220] = "%1d",         -- HYDRO-PTR (Main hydraulics) 
	[221] = "%1d",         -- HYDRO-COVER-PTR02 (Main hydraulics Cover)
	-- IFF
	[218] = "%1d",         -- SRO-PTR (IFF power) 
	[219] = "%1d",         -- COVER-SRO-PTR (IFF power Cover)
	-- NAV SYSTEM
	[222] = "%1d",         -- PNK-PTR (Navigation system power)
	[229] = "%0.1f",       -- GYRO-MAG-MAN-HEADING-PTR (Gyro/Mag/Manual heading)
	-- Outside illumination
	[228] = "%1d",         -- FLASHER-PTR (Anticollision Light)
	[296] = "%1d",         -- CONTUR-LIGHT-PTR (Tip Lights) 
	[297] = "%0.1f",       -- FORMATION-PTR (Formation Lights)
	-- ENGINES
	[290] = "%1d",         -- ERD-LEFT-PTR (EEG Left engine Electronic Engine Governor) 
	[291] = "%1d",         -- ERD-LEFT-COVER-PTR (EEG Left engine Electronic Engine Governor Cover)
	[292] = "%1d",         -- ERD-RIGHT-PTR (EEG Right engine Electronic Engine Governor)
	[293] = "%1d",         -- ERD-RIGHT-COVER-PTR (EEG Right engine Electronic Engine Governor Cover)
	[294] = "%1d",         -- PAV-CRANE-VSU-PTR01 (EEG gas generator test Operate switch)
	[569] = "%1d",         -- PAV-CRANE-COVER-VSU-PTR01 (EEG gas generator test Operate switch Cover)
	[295] = "%0.1f",       -- PAV-CRANE-VSU-PTR02 (EEG power turbine channel 1 test Operate EEG power turbine channel 2 test, three-switch contactor)
	[570] = "%0.1f",       -- PAV-CRANE-COVER-VSU-PTR02 (EEG power turbine channel 1 test Operate EEG power turbine channel 2 test, three-switch contactor Cover)
	[457] = "%.1f",        -- RT-12-6-LEFT-PTR (Left EGT control threshold governor button)
	[458] = "%.1f",        -- RT-12-6-RIGHT-PTR (Right EGT control threshold governor button)
	[459] = "%.1f",        -- RT-12-6-IV-PTR (Engines vibrations monitoring system control button)
	-- Lighting
   	[300] = "%1d",         -- DESK-PTR (Lighting cockpit panel switch)
	[299] = "%1d",         -- DEVICES-PTR (Lighting night vision cockpit switch)
	[298] = "%1d",         -- AGR-PKP-PTR (Lighting ADI and SAI switch)
	-- Fire Extinguishers Control Panel
	[236] = "%.1f",        -- PUI800-AVARCHOP-PTR01 (Left engine extinguisher) 
	[238] = "%.1f",        -- PUI800-AVARCHOP-PTR02 (APU extinguisher)
	[240] = "%.1f",        -- PUI800-AVARCHOP-PTR03 (Right engine extinguisher)
	[242] = "%.1f",        -- PUI800-AVARCHOP-PTR04 (Ventilator extinguisher)
	[248] = "%0.1f",       -- FIREEXT-PTR (Fire extinguisher Work Off Test switch)
	[249] = "%0.1f",       -- FIREEXT-COVER-PTR (Fire extinguisher Work Off Test switch Cover)
	[250] = "%1d",         -- FIREEXT-INDICATION-PTR (Fire signaling)
	[246] = "%1d",         -- BALOONS-PTR (Fire extinguisher First (Auto) / Second (Manual) selector)
	[247] = "%1d",         -- BALOONS-COVER-PTR (Fire extinguisher First (Auto) / Second (Manual) selector Cover)
	-- Misc. systems
	[258] = "%0.1f",       -- REDUCTOR-PTR (Reducing gear box oil pressure indication selector) 
	[259] = "%1d",         -- HANGER-PTR (Sling load Auto/Manual)
	-- Auxiliary panel
	---------------------------------------------------
	-- Preflight Set and Check Panel
	[483] = "%0.1f",       -- PPK-BBTZ-PTR (ATGM Temperature selector)
	[484] = "%0.1f",       -- PPK-NRAKS-PTR (Unguided rocket and gun pods ballistics data settings selector)
	[485] = "%1d",         -- PPK-RNP-PTR (Systems BIT selector)
	[486] = "%1d",         -- KCVM-PTR (Control computers BIT switch)
	[489] = "%.1f",        -- AKS-PTR (Self test system push-button)
	[490] = "%1d",         -- VnK-PTR (Emergency INU alignment switch)
	[491] = "%1d",         -- ROPE-PTR (Stabilisation and indication of hanger cable switch)
	[492] = "%1d",         -- FKP-PTR (Video Tape Recorder switch)
	[487] = "%1d",         -- IKV-PTR (INU Power switch)
	[488] = "%1d",         -- HEAT_IKV-PTR (INU Heater switch)
	[452] = "%1d",         -- P-CONTR-VMG-HYDRO-PTR (Power plant, hydraulics, EKRAN self-test systems switch)
	[453] = "%1d",         -- P-CONTR-VMG-HYDRO-COVER-PTR (Power plant, hydraulics, EKRAN self-test systems switch Cover)
	-- PShK_7 (Latitude Entry Panel)
	[340] = "%.3f",        -- LATITUDE-PTR (Latitude selection rotaty)
	[341] = "%1d",         -- N-S-PTR (North/South latitude selection)
	-- ZMS_3 (Magnetic Variation Entry Panel)
	[338] = "%.3f"         -- DCLIN-PTR (Magnetic variation selection rotaty)
}

-- Lookup tables for weapons store type display
ExportScript.AF.Ka50StationTypes = 
{
	["9A4172"]     = "NC", 
	["S-8KOM"]     = "HP", 
	["S-13"]       = "HP", 
	["UPK-23-250"] = "NN", 
	["AO-2.5RT"]   = "A6", 
	["PTAB-2.5KO"] = "A6",
	["FAB-250"]    = "A6", 
	["FAB-500"]    = "A6" 
}

-- State data
ExportScript.AF.Ka50Trigger = 0

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
    -- function for Ikarus

	local lWeaponSystem = GetDevice(12)
	local lCannonAmmoCount = "  "
	local lStationNumbers = lWeaponSystem:get_selected_weapon_stations()
	local lStationCount = "  "
	local lStationType = "  "
	local lTargetingPower = mainPanelDevice:get_argument_value(433)
	local lTrigger = mainPanelDevice:get_argument_value(615)
	if lTrigger == 0 then
		ExportScript.AF.Ka50Trigger = 1
	end
	if lTrigger == -1 then
		ExportScript.AF.Ka50Trigger = 0
	end

	if lTargetingPower == 1 then
		lCannonAmmoCount = string.format("%02d",string.match(lWeaponSystem:get_selected_gun_ammo_count() / 10,"(%d+)"))

		if #lStationNumbers ~= 0 and ExportScript.AF.Ka50Trigger == 0 then
			lStationCount = 0
			for i=1,#lStationNumbers do
				lStationCount = lStationCount + lWeaponSystem:get_weapon_count_on_station(lStationNumbers[i])
			end

			lStationCount = string.format("%02d", lStationCount);

			lStationType = ExportScript.AF.Ka50StationTypes[lWeaponSystem:get_weapon_type_on_station(lStationNumbers[1])]
			if lStationType == nil then
				lStationType = ""
			end
		end
	end

	-- PUI-800 Weapon panel
	---------------------------------------------------
	ExportScript.Tools.SendData(2004, string.format("%s", lStationType))
	ExportScript.Tools.SendData(2005, string.format("%s", lStationCount))
	ExportScript.Tools.SendData(2006, string.format("%s", lCannonAmmoCount))

	-- UV-26
	local lUV26 = ExportScript.Tools.getListIndicatorValue(7)

	if lUV26 ~= nil and lUV26.txt_digits ~= nil then
		ExportScript.Tools.SendData(2007, string.format("%s", lUV26.txt_digits))
	else
		ExportScript.Tools.SendData(2007, " ")
	end

	-- EKRAN
	---------------------------------------------------

	local lEKRAN = GetDevice(10)
	local lEkranSendString = ""
	local lEkranText = lEKRAN:get_actual_text_frame()
	--ExportScript.Tools.WriteToLog('lEkranText: '..ExportScript.Tools.dump(lEkranText))
	--if lEkranText ~= "" then
	if ExportScript.utf8.len(lEkranText) > 0 then
		--lEkranSendString = string.sub(lEkranText,1,8).."\n"..string.sub(lEkranText,12,19).."\n"..string.sub(lEkranText,23,30).."\n"..string.sub(lEkranText,34,41)
		--ExportScript.Tools.SendData(2010, string.format("%s", string.sub(lEkranText,1,9)))
		--ExportScript.Tools.SendData(2011, string.format("%s", string.sub(lEkranText,12,20)))
		--ExportScript.Tools.SendData(2012, string.format("%s", string.sub(lEkranText,23,31)))
		--ExportScript.Tools.SendData(2013, string.format("%s", string.sub(lEkranText,34,42)))
		--ExportScript.Tools.WriteToLog('2011: '..ExportScript.Tools.dump(string.format("%s", ExportScript.utf8.sub(lEkranText,12,20))))
		ExportScript.Tools.SendData(2010, string.format("%s", ExportScript.utf8.sub(lEkranText,1,9)))
		ExportScript.Tools.SendData(2011, string.format("%s", ExportScript.utf8.sub(lEkranText,12,20)))
		ExportScript.Tools.SendData(2012, string.format("%s", ExportScript.utf8.sub(lEkranText,23,31)))
		ExportScript.Tools.SendData(2013, string.format("%s", ExportScript.utf8.sub(lEkranText,34,42)))
	else
		ExportScript.Tools.SendData(2010, "         ")
		ExportScript.Tools.SendData(2011, "         ")
		ExportScript.Tools.SendData(2012, "         ")
		ExportScript.Tools.SendData(2013, "         ")
	end

	--[75]  = "%0.1f", 		-- CLOCK_flight_time_meter_status{0.0,0.1,0.2}
	-- Ikarus WPClock		Ka-50 Clock
	-- White = 0.2			0.0
	-- Red = 0.0			0.1
	-- White/Red = 0.6		0.2
	local lClock  = string.format("%0.1f", mainPanelDevice:get_argument_value(75))
	if lClock == "0.0" then
		ExportScript.Tools.SendData(75, "0.2")
	elseif lClock == "0.1" then
		ExportScript.Tools.SendData(75, "0.0")
	elseif lClock == "0.2" then
		ExportScript.Tools.SendData(75, "0.6")
	end
	
	--[[
	local lFAILlight		= ""	-- FAILURE
	local lMEMORYlight		= ""	-- MEMORY
	local lTURNlight		= ""	-- TURN
	if lEkranSendString ~= "" then
		lFAILlight = "FAILURE"
	end
	-- DisplayWindow (main message)
	-- FAILlight (failure text)
	-- MEMORYlight (memmory text)
	-- TURNlight (turn text)
	--ExportScript.Tools.SendData(2001, string.format("%s", lEkranSendString))
	--ExportScript.Tools.SendData(2002, string.format("%s", lFAILlight))
	--ExportScript.Tools.SendData(2003, string.format("%s", lMEMORYlight))
	--ExportScript.Tools.SendData(2004, string.format("%s", lTURNlight))
	--ExportScript.Tools.WriteToLog('lEkranSendString: '..ExportScript.Tools.dump(lEkranSendString))
	--ExportScript.Tools.WriteToLog('lFAILlight: '..ExportScript.Tools.dump(lFAILlight))
	--ExportScript.Tools.WriteToLog('lMEMORYlight: '..ExportScript.Tools.dump(lMEMORYlight))
	--ExportScript.Tools.WriteToLog('lTURNlight: '..ExportScript.Tools.dump(lTURNlight))
	]]
	--[[
	--ExportScript.Tools.WriteToLog('EKRAN: '..ExportScript.Tools.dump(list_indication(4)))
	local lEKRAN = list_indication(4)
	lEKRAN = lEKRAN:gsub("-----------------------------------------", "")
	lEKRAN = lEKRAN:gsub("\n", "") -- oder %c
	
	
	local to1, to2, from1, from2, lEKRANframe, lEKRANtxtqueue, lEKRANtxt1, lEKRANtxt2, lEkranSendString = nil, nil, nil, nil, "", "", "", "", ""
	to1, to2 = lEKRAN:find("txt_queue")
	if (to1 == nil) then
		from1, from2 = 1,5 -- lEKRAN:find("frame")
		to1, to2 = lEKRAN:find("txt_1")
		if (to1 ~= nil) then
			lEKRANframe = lEKRAN:sub(from2+1, to1-1)
		end
	else
		from1, from2 = 1,5 -- lEKRAN:find("frame")
		--to1, to2 = lEKRAN:find("txt_queue")
		lEKRANframe = lEKRAN:sub(from2+1, to1-1)

		from1, from2 = lEKRAN:find("txt_queue")
		to1, to2 = lEKRAN:find("txt_1")
		if (to1 ~= nil and from2 ~= nil) then
			lEKRANtxtqueue = lEKRAN:sub(from2+1, to1-1)
		end
	end
	from1, from2 = lEKRAN:find("txt_1")
	to1, to2 = lEKRAN:find("txt_2")
	if (to1 ~= nil and from2 ~= nil) then
		lEKRANtxtqueue = lEKRAN:sub(from2+1, to1-1)
	end
	from1, from2 = lEKRAN:find("txt_2")
	--to1, to2 = lEKRAN:find("txt_2")
	if (from2 ~= nil) then
		lEKRANtxt2  = lEKRAN:sub(from2+1, -1)
	end
	
	--ExportScript.Tools.WriteToLog('lEKRANframe: '..ExportScript.Tools.dump(lEKRANframe))
	--ExportScript.Tools.WriteToLog('lEKRANtxtqueue: '..ExportScript.Tools.dump(lEKRANtxtqueue))
	--ExportScript.Tools.WriteToLog('lEKRANtxt1: '..ExportScript.Tools.dump(lEKRANtxt1))
	--ExportScript.Tools.WriteToLog('lEKRANtxt2: '..ExportScript.Tools.dump(lEKRANtxt2))

	--lEkranSendString = string.sub(lEKRANtxt2,1,9).."\n"..string.sub(lEKRANtxt2,11,19).."\n"..string.sub(lEKRANtxt2,21,29).."\n"..string.sub(lEKRANtxt2,31,39)
	ExportScript.Tools.SendData(2010, string.format("%s", string.sub(lEKRANtxt2,1,9)))
	ExportScript.Tools.SendData(2011, string.format("%s", string.sub(lEKRANtxt2,11,19)))
	ExportScript.Tools.SendData(2012, string.format("%s", string.sub(lEKRANtxt2,21,29)))
	ExportScript.Tools.SendData(2013, string.format("%s", string.sub(lEKRANtxt2,31,39)))
	]]

	-- Cockpit Light
	ExportScript.Tools.IkarusCockpitLights(mainPanelDevice, {300, 299, 298})
	-- Lighting cockpit panel switch, Lighting night vision cockpit switch, Lighting ADI and SAI switch
	
	-- Datalink Lamps
	ExportScript.Tools.SendData(159, string.format("%.1f", mainPanelDevice:get_argument_value(159)))		-- PRC_button_SEND {0.0,0.3}
	ExportScript.Tools.SendData(150, string.format("%.1f", mainPanelDevice:get_argument_value(150)))		-- PRC_button_ESCAPE {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(161, string.format("%.1f", mainPanelDevice:get_argument_value(161)))		-- PRC_button_ERASE {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(15, string.format("%.1f", mainPanelDevice:get_argument_value(15)))		-- PRC_button_CLEAN {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(16, string.format("%.1f", mainPanelDevice:get_argument_value(16)))		-- PRC_button_WINGMAN_ALL {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(17, string.format("%.1f", mainPanelDevice:get_argument_value(17)))		-- PRC_button_WINGMAN_1 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(18, string.format("%.1f", mainPanelDevice:get_argument_value(18)))		-- PRC_button_WINGMAN_2 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(19, string.format("%.1f", mainPanelDevice:get_argument_value(19)))		-- PRC_button_WINGMAN_3 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(20, string.format("%.1f", mainPanelDevice:get_argument_value(20)))		-- PRC_button_WINGMAN_4 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(21, string.format("%.1f", mainPanelDevice:get_argument_value(21)))		-- PRC_button_TARGET_1 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(22, string.format("%.1f", mainPanelDevice:get_argument_value(22)))		-- PRC_button_TARGET_2 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(23, string.format("%.1f", mainPanelDevice:get_argument_value(23)))		-- PRC_button_TARGET_3 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(50, string.format("%.1f", mainPanelDevice:get_argument_value(50)))		-- PRC_button_TARGET_POINT {0.0,0.3} {0,1}
	
	-- WEAPON  INTERFACE
	ExportScript.Tools.SendData(437, string.format("%.1f", mainPanelDevice:get_argument_value(437)))		-- PRC_button_AUTO_TURN {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(438, string.format("%.1f", mainPanelDevice:get_argument_value(438)))		-- PRC_button_AIRBORNE_TARGET {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(439, string.format("%.1f", mainPanelDevice:get_argument_value(439)))		-- PRC_button_FORWARD_HEMISPHERE {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(440, string.format("%.1f", mainPanelDevice:get_argument_value(440)))		-- PRC_button_GROUND_MOVING_TARGET {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(441, string.format("%.1f", mainPanelDevice:get_argument_value(441)))		-- PRC_button_CLEAR {0.0,0.3} {0,1}
end

-- Pointed to by ProcessDACLowImportance, if the player aircraft is a Ka-50
function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
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
	-- Radio comunication
	-- ARK_22 (ADF) Frequncy
	local lARK_22 = GetDevice(46)
	ExportScript.Tools.SendDataDAC("2000", string.format("%1d", lARK_22:get_channel()))

	-- R_800
	local lR_800 = GetDevice(48)
	--ExportScript.Tools.SendDataDAC("2001", string.format("%7.3f", lR_800:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2001",ExportScript.Tools.RoundFreqeuncy(lR_800:get_frequency()/1000000))

	-- R_828 Channel
	local lR_828 = {[0.0]="1",[0.1]="2",[0.2]="3",[0.3]="4",[0.4]="5",[0.5]="6",[0.6]="7",[0.7]="8",[0.8]="9",[0.9]="10"}
	ExportScript.Tools.SendDataDAC("2002", lR_828[ExportScript.Tools.round(mainPanelDevice:get_argument_value(371), 1)])

	-- R_828 Frequency
	local lR_828_F = GetDevice(49)
	if lR_828_F:is_on() then
		--ExportScript.Tools.SendDataDAC("2003", string.format("%7.3f", lR_828_F:get_frequency()/1000000))
		ExportScript.Tools.SendDataDAC("2003", ExportScript.Tools.RoundFreqeuncy(lR_828_F:get_frequency()/1000000))
	else
		ExportScript.Tools.SendDataDAC("2003", "-")
	end

	-- Weapon
	local lWeaponSystem = GetDevice(12)
	local lCannonAmmoCount = " "
	local lStationNumbers = lWeaponSystem:get_selected_weapon_stations()
	local lStationCount = " "
	local lStationType = " "	
	local lTargetingPower = mainPanelDevice:get_argument_value(433)
	local lTrigger = mainPanelDevice:get_argument_value(615)
	if lTrigger == 0 then
		ExportScript.AF.Ka50Trigger = 1
	end
	if lTrigger == -1 then
		ExportScript.AF.Ka50Trigger = 0
	end

	if lTargetingPower == 1 then
		lCannonAmmoCount = string.format("%02d",string.match(lWeaponSystem:get_selected_gun_ammo_count() / 10,"(%d+)"))

		if #lStationNumbers ~= 0 and ExportScript.AF.Ka50Trigger == 0 then
			lStationCount = 0
			for i=1,#lStationNumbers do
				lStationCount = lStationCount + lWeaponSystem:get_weapon_count_on_station(lStationNumbers[i])
			end

			lStationCount = string.format("%02d", lStationCount);

			lStationType = ExportScript.AF.Ka50StationTypes[lWeaponSystem:get_weapon_type_on_station(lStationNumbers[1])]
			if lStationType == nil then
				lStationType = " "
			end
		end
	end

	--ExportScript.Tools.SendDataDAC("2004",lStationType)
	ExportScript.Tools.SendDataDAC("2005",lStationCount)
	ExportScript.Tools.SendDataDAC("2006",lCannonAmmoCount)

	-- UV-26
	local lUV26 = ExportScript.Tools.getListIndicatorValue(7)

	if lUV26 ~= nil and lUV26.txt_digits ~= nil then
		ExportScript.Tools.SendDataDAC("2007", string.format("%s", lUV26.txt_digits))
	else
		ExportScript.Tools.SendDataDAC("2007", "-")
	end

	local lPVI800 = list_indication(5)
	--[[
	txt_VIT Inhalt obere Zeile
	txt_NIT Inhalt untere Zeile
	txt_OIT_PPM Punkt obere Zeile
	txt_OIT_NOT Punkt untere Zeile
	txt_VIT_apostrophe1 1. Apostroph obere Zeile 3. Ziffer
	txt_VIT_apostrophe2 2. Apostroph obere Zeile 5. Ziffer
	txt_NIT_apostrophe1 1. Apostroph untere Zeile 3. Ziffer
	txt_NIT_apostrophe2 2. Apostroph untere Zeile 5. Ziffer
	]]
	local ltxt_upper_row, ltxt_lower_row = ""
	local lpos1, pos2, lpos3, pos4, ltxt_VIT, ltxt_NIT, ltxt_OIT_PPM, ltxt_OIT_NOT
	local ltxt_VIT_apostrophe1, ltxt_VIT_apostrophe2, ltxt_NIT_apostrophe1, ltxt_NIT_apostrophe2 = false
	lpos1, pos2 = lPVI800:find("txt_VIT%c", 1)
	if pos2 ~= nil then
		lpos3, pos4 = lPVI800:find("-----------------------------------------", pos2)
		if lpos3 ~= nil then
			ltxt_VIT = lPVI800:sub(pos2 + 1, lpos3 - 2)
		else
			ltxt_VIT = lPVI800:sub(pos2 + 1)
		end
	end
	lpos1, pos2 = lPVI800:find("txt_NIT%c", 1)
	if pos2 ~= nil then
		lpos3, pos4 = lPVI800:find("-----------------------------------------", pos2)
		if lpos3 ~= nil then
			ltxt_NIT = lPVI800:sub(pos2 + 1, lpos3 - 2)
		else
			ltxt_NIT = lPVI800:sub(pos2 + 1)
		end
	end
	lpos1, pos2 = lPVI800:find("txt_OIT_PPM%c", 1)
	if pos2 ~= nil then
		lpos3, pos4 = lPVI800:find("-----------------------------------------", pos2)
		if lpos3 ~= nil then
			ltxt_OIT_PPM = lPVI800:sub(pos2 + 1, lpos3 - 2)
		else
			ltxt_OIT_PPM = lPVI800:sub(pos2 + 1)
		end
	end
	lpos1, pos2 = lPVI800:find("txt_OIT_NOT%c", 1)
	if pos2 ~= nil then
		lpos3, pos4 = lPVI800:find("-----------------------------------------", pos2)
		if lpos3 ~= nil then
			ltxt_OIT_NOT = lPVI800:sub(pos2 + 1, lpos3 - 2)
		else
			ltxt_OIT_NOT = lPVI800:sub(pos2 + 1)
		end
	end
	lpos1, pos2 = lPVI800:find("txt_VIT_apostrophe1", 1)
	if pos2 ~= nil then
		ltxt_VIT_apostrophe1 = true
	end
	lpos1, pos2 = lPVI800:find("txt_VIT_apostrophe2", 1)
	if pos2 ~= nil then
		ltxt_VIT_apostrophe2 = true
	end
	lpos1, pos2 = lPVI800:find("txt_NIT_apostrophe1", 1)
	if pos2 ~= nil then
		ltxt_NIT_apostrophe1 = true
	end
	lpos1, pos2 = lPVI800:find("txt_NIT_apostrophe2", 1)
	if pos2 ~= nil then
		ltxt_NIT_apostrophe2 = true
	end

	if ltxt_VIT ~= nil then
		ltxt_VIT = ltxt_VIT:gsub("%c", "")
		ltxt_upper_row = ltxt_VIT:sub(1, 3)
		if ltxt_VIT_apostrophe1 then
			ltxt_upper_row = ltxt_upper_row.."."
		end
		ltxt_upper_row = ltxt_upper_row..ltxt_VIT:sub(4, 5)
		if ltxt_VIT_apostrophe2 then
			ltxt_upper_row = ltxt_upper_row.."."
		end
		ltxt_upper_row = ltxt_upper_row..ltxt_VIT:sub(6)
	end

	if ltxt_NIT ~= nil then
		ltxt_NIT = ltxt_NIT:gsub("%c", "")
		ltxt_lower_row = ltxt_NIT:sub(1, 3)
		if ltxt_NIT_apostrophe1 then
			ltxt_lower_row = ltxt_lower_row.."."
		end
		ltxt_lower_row = ltxt_lower_row..ltxt_NIT:sub(4, 5)
		if ltxt_NIT_apostrophe2 then
			ltxt_lower_row = ltxt_lower_row.."."
		end
		ltxt_lower_row = ltxt_lower_row..ltxt_NIT:sub(6)
	end

	if ltxt_VIT ~= nil then
		ltxt_upper_row = ltxt_upper_row..string.rep(" ", 7 - ltxt_VIT:len())
	else
		ltxt_upper_row = string.rep(" ", 7)
	end

	if ltxt_OIT_PPM ~= nil then
		ltxt_OIT_PPM = ltxt_OIT_PPM:gsub("%c", "")
		ltxt_upper_row = ltxt_upper_row..ltxt_OIT_PPM
	else
		ltxt_upper_row = ltxt_upper_row.." "
	end

	if ltxt_NIT ~= nil then
		ltxt_lower_row = ltxt_lower_row..string.rep(" ", 7 - ltxt_NIT:len())
	else
		ltxt_lower_row = string.rep(" ", 7)
	end

	if ltxt_OIT_NOT ~= nil then
		ltxt_OIT_NOT = ltxt_OIT_NOT:gsub("%c", "")
		ltxt_lower_row = ltxt_lower_row..ltxt_OIT_NOT
	else
		ltxt_lower_row = ltxt_lower_row.." "
	end

	ExportScript.Tools.SendDataDAC("2008", string.format("%s", ltxt_upper_row))
	ExportScript.Tools.SendDataDAC("2009", string.format("%s", ltxt_lower_row))

	-- Datalink Lamps
	ExportScript.Tools.SendData(159, (mainPanelDevice:get_argument_value(159) > 0 and 1 or 0))		-- PRC_button_SEND {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(150, (mainPanelDevice:get_argument_value(150) > 0 and 1 or 0))		-- PRC_button_ESCAPE {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(161, (mainPanelDevice:get_argument_value(161) > 0 and 1 or 0))		-- PRC_button_ERASE {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(15, (mainPanelDevice:get_argument_value(15) > 0 and 1 or 0))		-- PRC_button_CLEAN {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(16, (mainPanelDevice:get_argument_value(16) > 0 and 1 or 0))		-- PRC_button_WINGMAN_ALL {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(17, (mainPanelDevice:get_argument_value(17) > 0 and 1 or 0))		-- PRC_button_WINGMAN_1 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(18, (mainPanelDevice:get_argument_value(18) > 0 and 1 or 0))		-- PRC_button_WINGMAN_2 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(19, (mainPanelDevice:get_argument_value(19) > 0 and 1 or 0))		-- PRC_button_WINGMAN_3 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(20, (mainPanelDevice:get_argument_value(20) > 0 and 1 or 0))		-- PRC_button_WINGMAN_4 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(21, (mainPanelDevice:get_argument_value(21) > 0 and 1 or 0))		-- PRC_button_TARGET_1 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(22, (mainPanelDevice:get_argument_value(22) > 0 and 1 or 0))		-- PRC_button_TARGET_2 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(23, (mainPanelDevice:get_argument_value(23) > 0 and 1 or 0))		-- PRC_button_TARGET_3 {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(50, (mainPanelDevice:get_argument_value(50) > 0 and 1 or 0))		-- PRC_button_TARGET_POINT {0.0,0.3} {0,1}
	
	-- WEAPON  INTERFACE
	ExportScript.Tools.SendData(437, (mainPanelDevice:get_argument_value(437) > 0 and 1 or 0))		-- PRC_button_AUTO_TURN {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(438, (mainPanelDevice:get_argument_value(438) > 0 and 1 or 0))		-- PRC_button_AIRBORNE_TARGET {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(439, (mainPanelDevice:get_argument_value(439) > 0 and 1 or 0))		-- PRC_button_FORWARD_HEMISPHERE {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(440, (mainPanelDevice:get_argument_value(440) > 0 and 1 or 0))		-- PRC_button_GROUND_MOVING_TARGET {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(441, (mainPanelDevice:get_argument_value(441) > 0 and 1 or 0))		-- PRC_button_CLEAR {0.0,0.3} {0,1}
	
	-- generic Radio display and frequency rotarys
	-------------------------------------------------
	-- genericRadioConf
	ExportScript.genericRadioConf = {}
	ExportScript.genericRadioConf['maxRadios'] = 2                       -- numbers of aviables/supported radios
	ExportScript.genericRadioConf[1] = {}                                -- first radio
	ExportScript.genericRadioConf[1]['Name'] = "R_800 FM/AM"             -- name of radio
	ExportScript.genericRadioConf[1]['DeviceID'] = 48                    -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[1]['setFrequency'] = true              -- change frequency active
	ExportScript.genericRadioConf[1]['FrequencyMultiplicator'] = 1000000 -- Multiplicator from Hz to MHz
	ExportScript.genericRadioConf[1]['FrequencyFormat'] = "%7.3f"        -- frequency view format LUA style
	ExportScript.genericRadioConf[1]['FrequencyStep'] = 25               -- minimal step for frequency change
	ExportScript.genericRadioConf[1]['minFrequency'] = 100.000           -- lowest frequency
	ExportScript.genericRadioConf[1]['maxFrequency'] = 399.975           -- highest frequency
	ExportScript.genericRadioConf[1]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[1]['Power']['ButtonID'] = 3011         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Power']['ValueOn'] = 1.0           -- power on value from cklickable.lua
	ExportScript.genericRadioConf[1]['Power']['ValueOff'] = 0.0          -- power off value from cklickable.lua
--	ExportScript.genericRadioConf[1]['Volume'] = {}                      -- volume knob active
--	ExportScript.genericRadioConf[1]['Volume']['ButtonID'] = 3011        -- volume button id from cklickable.lua
--	ExportScript.genericRadioConf[1]['Preset'] = {}                      -- preset knob active
--	ExportScript.genericRadioConf[1]['Preset']['ArgumentID'] = 161       -- ManualPreset argument id from cklickable.lua
--	ExportScript.genericRadioConf[1]['Preset']['ButtonID'] = 3001        -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
--	ExportScript.genericRadioConf[1]['Preset']['List'] = {[0.0]="01",[0.05]="02",[0.10]="03",[0.15]="04",[0.20]="05",[0.25]="06",[0.30]="07",[0.35]="08",[0.40]="09",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20",[1.00]="01"}
--	ExportScript.genericRadioConf[1]['Preset']['Step'] = 0.05            -- minimal step for preset change
	ExportScript.genericRadioConf[1]['Squelch'] = {}                     -- squelch switch active
	ExportScript.genericRadioConf[1]['Squelch']['ArgumentID'] = 170      -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ButtonID'] = 3006       -- squelch button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ValueOn'] = 1.0         -- squelch on value from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ValueOff'] = 0.0        -- squelch off value from cklickable.lua
--	ExportScript.genericRadioConf[1]['Load'] = {}                        -- load button preset
--	ExportScript.genericRadioConf[1]['Load']['ButtonID'] = 3015          -- load button id from cklickable.lua
	-- ManualPreset is AM FM modus switch Manual=AM, Preset=FM
	ExportScript.genericRadioConf[1]['ManualPreset'] = {}                -- switch manual or preset active
	ExportScript.genericRadioConf[1]['ManualPreset']['ArgumentID'] = 167 -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[1]['ManualPreset']['ButtonID'] = 3002  -- ManualPreset button id from cklickable.lua
	ExportScript.genericRadioConf[1]['ManualPreset']['ValueManual'] = 1.0-- ManualPreset Manual value from cklickable.lua
	ExportScript.genericRadioConf[1]['ManualPreset']['ValuePreset'] = 0.0-- ManualPreset Preset value from cklickable.lua

	ExportScript.genericRadioConf[2] = {}                                -- secound radio
	ExportScript.genericRadioConf[2]['Name'] = "R_828 VHF"               -- name of radio
	ExportScript.genericRadioConf[2]['DeviceID'] = 49                    -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[2]['setFrequency'] = false             -- change frequency active
	ExportScript.genericRadioConf[2]['FrequencyMultiplicator'] = 1000000 -- Multiplicator from Hz to MHz
	ExportScript.genericRadioConf[2]['FrequencyFormat'] = "%7.3f"        -- frequency view format LUA style
--	ExportScript.genericRadioConf[2]['FrequencyStep'] = 25               -- minimal step for frequency change
--	ExportScript.genericRadioConf[2]['minFrequency'] = 116.000           -- lowest frequency
--	ExportScript.genericRadioConf[2]['maxFrequency'] = 151.975           -- highest frequency
	ExportScript.genericRadioConf[2]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[2]['Power']['ButtonID'] = 3003         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[2]['Power']['ValueOn'] = 0.1           -- power on value from cklickable.lua
	ExportScript.genericRadioConf[2]['Power']['ValueOff'] = 0.0          -- power off value from cklickable.lua
	ExportScript.genericRadioConf[2]['Volume'] = {}                      -- volume knob active
	ExportScript.genericRadioConf[2]['Volume']['ButtonID'] = 3002        -- volume button id from cklickable.lua
	ExportScript.genericRadioConf[2]['Preset'] = {}                      -- preset knob active
	ExportScript.genericRadioConf[2]['Preset']['ArgumentID'] = 371       -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[2]['Preset']['ButtonID'] = 3001        -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
	ExportScript.genericRadioConf[2]['Preset']['List'] = {[0.0]="1",[0.1]="2",[0.2]="3",[0.3]="4",[0.4]="5",[0.5]="6",[0.6]="7",[0.7]="8",[0.8]="9",[0.9]="10"}
	ExportScript.genericRadioConf[2]['Preset']['Step'] = 0.1             -- minimal step for preset change
	ExportScript.genericRadioConf[2]['Squelch'] = {}                     -- squelch switch active
	ExportScript.genericRadioConf[2]['Squelch']['ArgumentID'] = 134      -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[2]['Squelch']['ButtonID'] = 3004       -- squelch button id from cklickable.lua
	ExportScript.genericRadioConf[2]['Squelch']['ValueOn'] = 1.0         -- squelch on value from cklickable.lua
	ExportScript.genericRadioConf[2]['Squelch']['ValueOff'] = 0.0        -- squelch off value from cklickable.lua
	-- Load Button is Autotune
	ExportScript.genericRadioConf[2]['Load'] = {}                        -- load button preset
	ExportScript.genericRadioConf[2]['Load']['ButtonID'] = 3003          -- load button id from cklickable.lua
	ExportScript.genericRadioConf[2]['Load']['ArgumentID'] = 375         -- load argument id for autotune lamp on Ka-50
--	ExportScript.genericRadioConf[2]['ManualPreset'] = {}                -- switch manual or preset active
--	ExportScript.genericRadioConf[2]['ManualPreset']['ArgumentID'] = 135 -- ManualPreset argument id from cklickable.lua
--	ExportScript.genericRadioConf[2]['ManualPreset']['ButtonID'] = 0     -- ManualPreset button id from cklickable.lua
--	ExportScript.genericRadioConf[2]['ManualPreset']['ValueManual'] = 0.0-- ManualPreset Manual value from cklickable.lua
--	ExportScript.genericRadioConf[2]['ManualPreset']['ValuePreset'] = 0.0-- ManualPreset Preset value from cklickable.lua

	ExportScript.genericRadio(nil, nil)

end

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
	ExportScript.Tools.SendData(44, string.format("%.1f", mainPanelDevice:get_argument_value(44)))		-- lamp_MasterWarning {0.0,0.3} {0,1}
	ExportScript.Tools.SendData(46, string.format("%.1f", mainPanelDevice:get_argument_value(46)))		-- lamp_RotorRPM {0.0,0.1} {0,1}
end

-- Pointed to by ProcessDACHighImportance, if the player aircraft is a Ka-50
function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
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

	ExportScript.Tools.SendDataDAC("44", mainPanelDevice:get_argument_value(44) > 0.0 and 1 or 0)			-- lamp_MasterWarning {0.0,0.3}
	ExportScript.Tools.SendDataDAC("46", mainPanelDevice:get_argument_value(46) > 0.0 and 1 or 0)			-- lamp_RotorRPM {0.0,0.1}

--[[	
	-- ENGINE_INTERFACE
	local lENGINE_INTERFACE = GetDevice(4)
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_left_engine_temp '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_left_engine_temp()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_left_engine_rpm '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_left_engine_rpm()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_right_engine_temp '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_right_engine_temp()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_right_engine_rpm '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_right_engine_rpm()))
	ExportScript.Tools.WriteToLog('lENGINE_INTERFACE:get_apu_temp '..ExportScript.Tools.dump(lENGINE_INTERFACE:get_apu_temp()))
	
	-- ABRIS
	local lABRIS = GetDevice(9)
	ExportScript.Tools.WriteToLog('lABRIS:get_active_route '..ExportScript.Tools.dump(lABRIS:get_active_route()))
	ExportScript.Tools.WriteToLog('lABRIS:get_edited_route '..ExportScript.Tools.dump(lABRIS:get_edited_route()))
	ExportScript.Tools.WriteToLog('lABRIS:get_sns_mode '..ExportScript.Tools.dump(lABRIS:get_sns_mode()))
	ExportScript.Tools.WriteToLog('lABRIS:get_current_route '..ExportScript.Tools.dump(lABRIS:get_current_route()))
	--ExportScript.Tools.WriteToLog('lABRIS:get_current_route_segment_info '..ExportScript.Tools.dump(lABRIS:get_current_route_segment_info())) -- DCS Error
	ExportScript.Tools.WriteToLog('lABRIS:get_mode '..ExportScript.Tools.dump(lABRIS:get_mode()))
	ExportScript.Tools.WriteToLog('lABRIS:print_to_console '..ExportScript.Tools.dump(lABRIS:print_to_console()))
	--ExportScript.Tools.WriteToLog('lABRIS:replace_last_console_line '..ExportScript.Tools.dump(lABRIS:replace_last_console_line())) -- DCS Error
	
	-- EKRAN
	local lEKRAN = GetDevice(10)
	ExportScript.Tools.WriteToLog('lEKRAN:get_actual_text_frame '..ExportScript.Tools.dump(lEKRAN:get_actual_text_frame()))
	
	-- WEAP_INTERFACE
	local lWEAP_INTERFACE = GetDevice(12)
	ExportScript.Tools.WriteToLog('lWEAP_INTERFACE:get_weapon_type_on_station '..ExportScript.Tools.dump(lWEAP_INTERFACE:get_weapon_type_on_station()))
	ExportScript.Tools.WriteToLog('lWEAP_INTERFACE:get_selected_weapon_stations '..ExportScript.Tools.dump(lWEAP_INTERFACE:get_selected_weapon_stations()))
	ExportScript.Tools.WriteToLog('lWEAP_INTERFACE:get_selected_gun_ammo '..ExportScript.Tools.dump(lWEAP_INTERFACE:get_selected_gun_ammo()))
	ExportScript.Tools.WriteToLog('lWEAP_INTERFACE:get_selected_gun_ammo_count '..ExportScript.Tools.dump(lWEAP_INTERFACE:get_selected_gun_ammo_count()))
	ExportScript.Tools.WriteToLog('lWEAP_INTERFACE:get_weapon_count_on_station '..ExportScript.Tools.dump(lWEAP_INTERFACE:get_weapon_count_on_station()))
	
	-- DISS
	local lDISS = GetDevice(16)
	ExportScript.Tools.WriteToLog('lDISS:get_w_vector '..ExportScript.Tools.dump(lDISS:get_w_vector()))
	ExportScript.Tools.WriteToLog('lDISS:get_drift_angle '..ExportScript.Tools.dump(lDISS:get_drift_angle()))
	
	-- NAV_INTERFACE
	local lNAV_INTERFACE = GetDevice(28)
	ExportScript.Tools.WriteToLog('lNAV_INTERFACE:get_indicated_air_speed '..ExportScript.Tools.dump(lNAV_INTERFACE:get_indicated_air_speed()))
	ExportScript.Tools.WriteToLog('lNAV_INTERFACE:get_vertical_velocity '..ExportScript.Tools.dump(lNAV_INTERFACE:get_vertical_velocity()))
	
	-- HSI
	local lHSI = GetDevice(30)
	ExportScript.Tools.WriteToLog('lHSI:get_course '..ExportScript.Tools.dump(lHSI:get_course()))
	ExportScript.Tools.WriteToLog('lHSI:get_course_dev_warning_flag '..ExportScript.Tools.dump(lHSI:get_course_dev_warning_flag()))
	ExportScript.Tools.WriteToLog('lHSI:get_heading '..ExportScript.Tools.dump(lHSI:get_heading()))
	ExportScript.Tools.WriteToLog('lHSI:get_heading_warning_flag '..ExportScript.Tools.dump(lHSI:get_heading_warning_flag()))
	ExportScript.Tools.WriteToLog('lHSI:get_glideslope_dev_warning_flag '..ExportScript.Tools.dump(lHSI:get_glideslope_dev_warning_flag()))
	ExportScript.Tools.WriteToLog('lHSI:get_range '..ExportScript.Tools.dump(lHSI:get_range()))
	ExportScript.Tools.WriteToLog('lHSI:get_commanded_course '..ExportScript.Tools.dump(lHSI:get_commanded_course()))
	ExportScript.Tools.WriteToLog('lHSI:get_bearing '..ExportScript.Tools.dump(lHSI:get_bearing()))
	ExportScript.Tools.WriteToLog('lHSI:get_commanded_heading '..ExportScript.Tools.dump(lHSI:get_commanded_heading()))
	
	-- ADI
	local lADI = GetDevice(31)
	ExportScript.Tools.WriteToLog('lADI:get_sideslip '..ExportScript.Tools.dump(lADI:get_sideslip()))
	ExportScript.Tools.WriteToLog('lADI:get_attitude_warn_flag_val '..ExportScript.Tools.dump(lADI:get_attitude_warn_flag_val()))
	ExportScript.Tools.WriteToLog('lADI:get_pitch_steering '..ExportScript.Tools.dump(lADI:get_pitch_steering()))
	ExportScript.Tools.WriteToLog('lADI:get_track_deviation '..ExportScript.Tools.dump(lADI:get_track_deviation()))
	ExportScript.Tools.WriteToLog('lADI:get_airspeed_deviation '..ExportScript.Tools.dump(lADI:get_airspeed_deviation()))
	ExportScript.Tools.WriteToLog('lADI:get_height_deviation '..ExportScript.Tools.dump(lADI:get_height_deviation()))
	ExportScript.Tools.WriteToLog('lADI:get_bank_steering '..ExportScript.Tools.dump(lADI:get_bank_steering()))
	ExportScript.Tools.WriteToLog('lADI:get_pitch '..ExportScript.Tools.dump(lADI:get_pitch()))
	ExportScript.Tools.WriteToLog('lADI:get_steering_warn_flag_val '..ExportScript.Tools.dump(lADI:get_steering_warn_flag_val()))
	ExportScript.Tools.WriteToLog('lADI:get_bank '..ExportScript.Tools.dump(lADI:get_bank()))
	
	-- AUTOPILOT
	local lAUTOPILOT = GetDevice(33)
	ExportScript.Tools.WriteToLog('lAUTOPILOT:get_channel_status_Bank '..ExportScript.Tools.dump(lAUTOPILOT:get_channel_status_Bank()))
	ExportScript.Tools.WriteToLog('lAUTOPILOT:get_directional_mode '..ExportScript.Tools.dump(lAUTOPILOT:get_directional_mode()))
	ExportScript.Tools.WriteToLog('lAUTOPILOT:get_channel_status_Yaw '..ExportScript.Tools.dump(lAUTOPILOT:get_channel_status_Yaw()))
	ExportScript.Tools.WriteToLog('lAUTOPILOT:get_channel_status_Pitch '..ExportScript.Tools.dump(lAUTOPILOT:get_channel_status_Pitch()))
	ExportScript.Tools.WriteToLog('lAUTOPILOT:get_channel_status_Height '..ExportScript.Tools.dump(lAUTOPILOT:get_channel_status_Height()))
	
	-- RADAR_ALTIMETER
	local lRADAR_ALTIMETER = GetDevice(38)
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_altitude '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_altitude()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_dangerous_height_flag '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_dangerous_height_flag()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_distance_limit '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_distance_limit()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_dangerous_height '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_dangerous_height()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_warning_flag '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_warning_flag()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_mode '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_mode()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_aperture_size '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_aperture_size()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_needle_value '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_needle_value()))
	
	-- MISC_SYSTEMS_INTERFACE
	local lMISC_SYSTEMS_INTERFACE = GetDevice(41)
	ExportScript.Tools.WriteToLog('lMISC_SYSTEMS_INTERFACE:get_rotor_blades_pitch '..ExportScript.Tools.dump(lMISC_SYSTEMS_INTERFACE:get_rotor_blades_pitch()))
	ExportScript.Tools.WriteToLog('lMISC_SYSTEMS_INTERFACE:get_main_rotor_rpm '..ExportScript.Tools.dump(lMISC_SYSTEMS_INTERFACE:get_main_rotor_rpm()))
	
	-- ARK_22
	local lARK_22 = GetDevice(46)
	ExportScript.Tools.WriteToLog('lARK_22:get_channel '..ExportScript.Tools.dump(lARK_22:get_channel()))
	ExportScript.Tools.WriteToLog('lARK_22:get_mode '..ExportScript.Tools.dump(lARK_22:get_mode()))
	ExportScript.Tools.WriteToLog('lARK_22:get_homer_selector_pos '..ExportScript.Tools.dump(lARK_22:get_homer_selector_pos()))
	
	-- R_800
	local lR_800 = GetDevice(48)
	ExportScript.Tools.WriteToLog('lR_800:is_on '..ExportScript.Tools.dump(lR_800:is_on()))
	ExportScript.Tools.WriteToLog('lR_800:get_frequency '..ExportScript.Tools.dump(lR_800:get_frequency()))
	--ExportScript.Tools.WriteToLog('lR_800:set_modulation '..ExportScript.Tools.dump(lR_800:set_modulation())) -- test the parameters
	--ExportScript.Tools.WriteToLog('lR_800:set_frequency '..ExportScript.Tools.dump(lR_800:(set_frequency))) -- test the parameters

	-- R_828
	local R_828 = GetDevice(49)
	ExportScript.Tools.WriteToLog('R_828:is_on '..ExportScript.Tools.dump(R_828:is_on()))
	ExportScript.Tools.WriteToLog('R_828:get_frequency '..ExportScript.Tools.dump(R_828:get_frequency()))
	--ExportScript.Tools.WriteToLog('R_828:set_modulation '..ExportScript.Tools.dump(R_828:set_modulation())) -- test the parameters
	--ExportScript.Tools.WriteToLog('R_828:set_frequency '..ExportScript.Tools.dump(R_828:(set_frequency))) -- test the parameters
	--ExportScript.Tools.WriteToLog('R_828:set_channel '..ExportScript.Tools.dump(R_828:(set_channel))) -- test the parameters
	
	-- SPU_9
	local lSPU_9 = GetDevice(50)
	ExportScript.Tools.WriteToLog('lSPU_9:get_is_on '..ExportScript.Tools.dump(lSPU_9:get_is_on()))
	ExportScript.Tools.WriteToLog('lSPU_9:is_communicator_available '..ExportScript.Tools.dump(lSPU_9:is_communicator_available()))
	ExportScript.Tools.WriteToLog('lSPU_9:get_selector_pos '..ExportScript.Tools.dump(lSPU_9:get_selector_pos()))
	ExportScript.Tools.WriteToLog('lSPU_9:get_noise_level '..ExportScript.Tools.dump(lSPU_9:get_noise_level()))
	ExportScript.Tools.WriteToLog('lSPU_9:get_signal_level '..ExportScript.Tools.dump(lSPU_9:get_signal_level()))
	--ExportScript.Tools.WriteToLog('lSPU_9:set_communicator '..ExportScript.Tools.dump(lSPU_9:set_communicator())) -- test the parameters
	--ExportScript.Tools.WriteToLog('lSPU_9:set_voip_mode '..ExportScript.Tools.dump(lSPU_9:set_voip_mode())) -- test the parameters
	
	-- STBY_ADI
	local lSTBY_ADI = GetDevice(55)
	ExportScript.Tools.WriteToLog('lSTBY_ADI:get_sideslip '..ExportScript.Tools.dump(lSTBY_ADI:get_sideslip()))
	ExportScript.Tools.WriteToLog('lSTBY_ADI:get_bank '..ExportScript.Tools.dump(lSTBY_ADI:get_bank()))
	ExportScript.Tools.WriteToLog('lSTBY_ADI:get_pitch '..ExportScript.Tools.dump(lSTBY_ADI:get_pitch()))
	]]
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
