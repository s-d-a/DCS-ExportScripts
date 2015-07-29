-- Ka-50 Export
-- Version 0.9.9 BETA

gES_FoundDCSModule = true

gES_GlassCockpitConfigEveryFrameArguments = 
{
	-- LAMPS
	---------------------------------------------------
	[44]  = "%0.1f",		-- lamp_MasterWarning {0.0,0.3}
	[46]  = "%0.1f", 		-- lamp_RotorRPM {0.0,1.0}
	[47]  = "%0.1f", 		-- lamp_UNDERFIREwarning {0.0,1.0}
	[48]  = "%0.1f", 		-- lamp_LowerGear {0.0,1.0}
	[78]  = "%0.1f", 		-- lamp_RPM_leftEngineMax {0.0,1.0}
	[79]  = "%0.1f", 		-- lamp_RPM_rightEngineMax {0.0,1.0}
	[80]  = "%0.1f", 		-- lamp_NyMax {0.0,1.0}
	[81]  = "%0.1f", 		-- lamp_vibr_leftEngine {0.0,1.0}
	[82]  = "%0.1f", 		-- lamp_vibr_rightEngine {0.0,1.0}
	[83]  = "%0.1f", 		-- lamp_IAS_max {0.0,1.0}
	[84]  = "%0.1f", 		-- lamp_mainTransmission {0.0,1.0}
	[85]  = "%0.1f", 		-- lamp_Fire {0.0,1.0}
	[86]  = "%0.1f", 		-- lamp_IFFfailure {0.0,1.0}
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
	[92]  = "%0.1f", 		-- A_036_DangerRALT_lamp {0.0,1.0}
	-- Indicated Airspeed
	---------------------------------------------------
	[51]  = "%.4f", 		-- IAS {0.0,1.0}
	-- Accelerometer (ADP_4)
	---------------------------------------------------
	[97]  = "%0.2f", 		-- ADP_4_acceleration {0.0,1.0}
	[98]  = "%0.2f", 		-- ADP_4_max_achieved_acc {0.0,1.0}
	[99]  = "%0.2f", 		-- ADP_4_min_achieved_acc {0.0,1.0}
	-- Mechanic Clock
	---------------------------------------------------
	[68]  = "%.4f", 		-- CLOCK_currtime_hours {0.0,1.0}
	[69]  = "%.4f", 		-- CLOCK_currtime_minutes {0.0,1.0}
	[70]  = "%.4f", 		-- CLOCK_currtime_seconds {0.0,1.0}
	[75]  = "%0.1f", 		-- CLOCK_flight_time_meter_status{0.0,0.2}
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
	[392] = "%0.1f", 		-- lamp_PUI800_Sta1_WeapIsPresent{0.0, 1.0}
	[393] = "%0.1f", 		-- lamp_PUI800_Sta2_WeapIsPresent{0.0, 1.0}
	[394] = "%0.1f", 		-- lamp_PUI800_Sta3_WeapIsPresent{0.0, 1.0}
	[395] = "%0.1f", 		-- lamp_PUI800_Sta4_WeapIsPresent{0.0, 1.0}
	[388] = "%0.1f", 		-- lamp_PUI800_Sta1_WeapIsReady{0.0, 1.0}
	[389] = "%0.1f", 		-- lamp_PUI800_Sta2_WeapIsReady{0.0, 1.0}
	[390] = "%0.1f", 		-- lamp_PUI800_Sta3_WeapIsReady{0.0, 1.0}
	[391] = "%0.1f", 		-- lamp_PUI800_Sta4_WeapIsReady{0.0, 1.0}
	-- LGCP - Landing gear control panel
	---------------------------------------------------
	[63]  = "%0.1f", 		-- LGCP_Lamp_NoseGearUp {0.0,1.0}
	[64]  = "%0.1f", 		-- LGCP_Lamp_NoseGearDown {0.0,1.0}
	[61]  = "%0.1f", 		-- LGCP_Lamp_RightMainGearUp {0.0,1.0}
	[62]  = "%0.1f", 		-- LGCP_Lamp_RightMainGearDown {0.0,1.0}
	[59]  = "%0.1f", 		-- LGCP_Lamp_LeftMainGearUp {0.0,1.0}
	[60]  = "%0.1f", 		-- LGCP_Lamp_LeftMainGearDown{0.0, 1.0}
	-- LAMPS
	---------------------------------------------------
	[170] = "%0.1f", 		-- lamp_H_RALT_stab {0.0,1.0}
	[175] = "%0.1f", 		-- lamp_Hover {0.0,1.0}
	[172] = "%0.1f", 		-- lamp_Descent {0.0,1.0}
	[165] = "%0.1f", 		-- lamp_RouteHeadingSteering {0.0,1.0}
	[171] = "%0.1f", 		-- lamp_RouteCourseSteering {0.0,1.0}
	[176] = "%0.1f",		-- lamp_Waypoint {0.0,1.0}
	[166] = "%0.1f", 		-- lamp_EndOfRoute {0.0,1.0}
	[164] = "%0.1f", 		-- lamp_RoughNAVcalc {0.0,1.0}
	[178] = "%0.1f", 		-- lamp_Burst {0.0,1.0}
	[173] = "%0.1f", 		-- lamp_CannonMovingBarr {0.0,1.0}
	[177] = "%0.1f", 		-- lamp_CannonMovingBarr2 {0.0,1.0}
	[211] = "%0.1f", 		-- lamp_FuelCrossfeedOn {0.0,1.0}
	[187] = "%0.1f", 		-- lamp_CouplerOff {0.0,1.0}
	[204] = "%0.1f", 		-- lamp_ActuatorsOilPress {0.0,1.0}
	[213] = "%0.1f", 		-- lamp_LockOff {0.0,1.0}
	-- Magnetic Compass (KI-13)
	---------------------------------------------------
	[11]  = "%.4f", 		-- KI_13_course {-1,1}
	[12]  = "%.4f", 		-- KI_13_pitch {-1,1}
	[14]  = "%.4f", 		-- KI_13_bank {-1,1}
	-- LAMPS
	---------------------------------------------------
	[167] = "%0.1f", 		-- lamp_WeapSysBUS_ON {0.0,1.0}
	[180] = "%0.1f", 		-- lamp_TrainingMode {0.0,1.0}
	[179] = "%0.1f", 		-- lamp_OBZOR_800 {0.0,1.0}
	[188] = "%0.1f", 		-- lamp_RANET {0.0,1.0}
	[189] = "%0.1f", 		-- lamp_CC_test {0.0,1.0}
	[206] = "%0.1f", 		-- lamp_CC_failure {0.0,1.0}
	[212] = "%0.1f", 		-- lamp_DC_AC_Inverter {0.0,1.0}
	[205] = "%0.1f", 		-- lamp_I_251V {0.0,1.0}
	[181] = "%0.1f", 		-- lamp_AntiIceLeftEngine {0.0,1.0}
	[190] = "%0.1f", 		-- lamp_DustProtectLeftEngine {0.0,1.0}
	[207] = "%0.1f", 		-- lamp_BackupModeLeftEngine {0.0,1.0}
	[183] = "%0.1f", 		-- lamp_AntiIceRotors {0.0,1.0}
	[182] = "%0.1f", 		-- lamp_AntiIceRightEngine {0.0,1.0}
	[191] = "%0.1f", 		-- lamp_DustProtectRightEngine {0.0,1.0}
	[208] = "%0.1f", 		-- lamp_BackupModeRightEngine {0.0,1.0}
	[184] = "%0.1f", 		-- lamp_VUO_Heat {0.0,1.0}
	[200] = "%0.1f", 		-- lamp_ForwardTank {0.0,1.0}
	[209] = "%0.1f", 		-- lamp_LeftValveClosed {0.0,1.0}
	[185] = "%0.1f", 		-- lamp_LeftOuterTank {0.0,1.0}
	[202] = "%0.1f", 		-- lamp_LeftInnerTank {0.0,1.0}
	[201] = "%0.1f", 		-- lamp_RearTank {0.0,1.0}
	[210] = "%0.1f", 		-- lamp_RightValveClosed {0.0,1.0}
	[186] = "%0.1f", 		-- lamp_RightOuterTank {0.0,1.0}
	[203] = "%0.1f", 		-- lamp_RightInnerTank {0.0,1.0}
	-- DATALINK
	---------------------------------------------------
	[159] = "%0.1f", 		-- PRC_button_SEND {0.0,0.3}
	[150] = "%0.1f", 		-- PRC_button_ESCAPE {0.0,0.3}
	[161] = "%0.1f", 		-- PRC_button_ERASE {0.0,0.3}
	[15]  = "%0.1f", 		-- PRC_button_CLEAN {0.0,0.3}
	[16]  = "%0.1f", 		-- PRC_button_WINGMAN_ALL {0.0,0.3}
	[17]  = "%0.1f", 		-- PRC_button_WINGMAN_1 {0.0,0.3}
	[18]  = "%0.1f", 		-- PRC_button_WINGMAN_2 {0.0,0.3}
	[19]  = "%0.1f", 		-- PRC_button_WINGMAN_3 {0.0,0.3}
	[20]  = "%0.1f", 		-- PRC_button_WINGMAN_4 {0.0,0.3}
	[21]  = "%0.1f", 		-- PRC_button_TARGET_1 {0.0,0.3}
	[22]  = "%0.1f", 		-- PRC_button_TARGET_2 {0.0,0.3}
	[23]  = "%0.1f", 		-- PRC_button_TARGET_3 {0.0,0.3}
	[50]  = "%0.1f", 		-- PRC_button_TARGET_POINT {0.0,0.3}
	-- Laser warning system
	---------------------------------------------------
	[25]  = "%0.1f", 		-- LWS_LampAzimuth_0 {0.0,1.0}
	[28]  = "%0.1f", 		-- LWS_LampAzimuth_90 {0.0,1.0}
	[26]  = "%0.1f", 		-- LWS_LampAzimuth_180 {0.0,1.0}
	[27]  = "%0.1f", 		-- LWS_LampAzimuth_270 {0.0,1.0}
	[31]  = "%0.1f", 		-- LWS_LampAzimuth_UpperHemisphere {0.0,1.0}
	[32]  = "%0.1f", 		-- LWS_LampAzimuth_LowerHemisphere {0.0,1.0}
	[33]  = "%0.1f", 		-- LWS_LampAzimuth_LaserRangefinder {0.0,1.0}
	[34]  = "%0.1f", 		-- LWS_LampAzimuth_LaserTargetingSystem {0.0,1.0}
	[582] = "%0.1f", 		-- LWS_LampReady {0.0,1.0}
	-- UV-26
	---------------------------------------------------
	[541] = "%0.1f", 		-- UV26_lampLeftBoard {0.0,1.0}
	[542] = "%0.1f", 		-- UV26_lampRightBoard {0.0,1.0}
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
	[437] = "%0.1f", 		-- PRC_button_AUTO_TURN {0.0,0.3}
	[438] = "%0.1f", 		-- PRC_button_AIRBORNE_TARGET {0.0,0.3}
	[439] = "%0.1f", 		-- PRC_button_FORWARD_HEMISPHERE {0.0,0.3}
	[440] = "%0.1f", 		-- PRC_button_GROUND_MOVING_TARGET {0.0,0.3}
	[441] = "%0.1f", 		-- PRC_button_CLEAR {0.0,0.3}
	-- Engines start panel
	---------------------------------------------------
	[163] = "%0.1f", 		-- lamp_EnginesStartValve{0.0, 1.0}
	-- APU control panel
	---------------------------------------------------
	[162] = "%0.1f", 		-- lamp_APUValveOpen{0.0, 1.0}{0.0, 1.0}
	[168] = "%0.1f", 		-- lamp_APUOilPres{0.0, 1.0}{0.0, 1.0}
	[169] = "%0.1f", 		-- lamp_APUStoppedByRPM{0.0, 1.0}
	[174] = "%0.1f", 		-- lamp_APU_IsON{0.0, 1.0}
	-- APU Temperature
	---------------------------------------------------
	[6]   = "%.4f", 		-- APUTemperature {0.0, 900.0} = {0.0, 1.0}
	-- Right Side Panel
	---------------------------------------------------
	[586] = "%0.1f", 		-- lamp_AC_Ground_Power{0.0, 1.0}
	[261] = "%0.1f", 		-- lamp_DC_Ground_Power{0.0, 1.0}
	-- Eject system
	---------------------------------------------------
	[461] = "%0.1f", 		-- EjectSystemTestLamp{0.0, 1.0}
	-- Fire Extinguishers panel
	---------------------------------------------------
	[237] = "%0.1f", 		-- lamp_Exting_LeftEngineFire{0.0, 1.0}
	[239] = "%0.1f", 		-- lamp_Exting_APU_Fire{0.0, 1.0}
	[568] = "%0.1f", 		-- lamp_Exting_HydraulicsFire{0.0, 1.0}
	[241] = "%0.1f", 		-- lamp_Exting_RightEngineFire{0.0, 1.0}
	[243] = "%0.1f", 		-- lamp_Exting_VentilatorFire{0.0, 1.0}
	[244] = "%0.1f", 		-- lamp_Exting_Lamp1{0.0, 1.0}
	[245] = "%0.1f", 		-- lamp_Exting_Lamp2{0.0, 1.0}
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
	[469] = "%0.1f", 		-- lamp_flap_hydro_1{0.0, 1.0}
	[470] = "%0.1f", 		-- lamp_flap_hydro_2{0.0, 1.0}
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
	[342] = "%0.1f", 		-- PShK7_LampAuto {0.0,1.0}
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

gES_GlassCockpitConfigArguments = 
{
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
	[523] = "%.1f",        -- ABRIS_SHUNT_PTR (ABRIS Cursor Control (rot/push))
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
	[400] = "%0.1f",       -- SR-PTR (Weapon mode switch - Burst Length)
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
gES_Ka50StationTypes = 
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
gKa50Trigger = 0

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ProcessGlassCockpitDCSLowImportance, if the player aircraft is a Ka-50
function ProcessGlassCockpitDCSConfigLowImportance(mainPanelDevice)
    -- function for HELIOS and HawgTouch

	local lWeaponSystem = GetDevice(12)
	local lEKRAN = GetDevice(10)
	local lCannonAmmoCount = ""
	local lStationNumbers = lWeaponSystem:get_selected_weapon_stations()
	local lStationCount = ""
	local lStationType = ""	
	local lTargetingPower = mainPanelDevice:get_argument_value(433)
	local lTrigger = mainPanelDevice:get_argument_value(615)
	if lTrigger == 0 then
		gKa50Trigger = 1
	end
	if lTrigger == -1 then
		gKa50Trigger = 0
	end

	if lTargetingPower == 1 then
		lCannonAmmoCount = string.format("%02d",string.match(lWeaponSystem:get_selected_gun_ammo_count() / 10,"(%d+)"))

		if #lStationNumbers ~= 0 and gKa50Trigger == 0 then
			lStationCount = 0
			for i=1,#lStationNumbers do
				lStationCount = lStationCount + lWeaponSystem:get_weapon_count_on_station(lStationNumbers[i])
			end

			lStationCount = string.format("%02d", lStationCount);

			lStationType = gES_Ka50StationTypes[lWeaponSystem:get_weapon_type_on_station(lStationNumbers[1])]
			if lStationType == nil then
				lStationType = ""
			end
		end
	end

	local lEkranSendString = ""
	local lEkranText = lEKRAN:get_actual_text_frame()
	if lEkranText ~= "" then
		lEkranSendString = string.sub(lEkranText,1,8).."\n"..string.sub(lEkranText,12,19).."\n"..string.sub(lEkranText,23,30).."\n"..string.sub(lEkranText,34,41)
	end
	 
	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
    	SendData("2001",lStationType)
    	SendData("2002",lStationCount)
    	SendData("2003",lCannonAmmoCount)
    	SendData("2004",lEkranSendString)
	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6
    	--SendData("2016",lEkranSendString)
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
		SendData("2016", string.format("%s;%s;%s;%s",
										lEkranSendString,
										lFAILlight,
										lMEMORYlight,
										lTURNlight))
		--[[
		-- PUI-800 Weapon panel
		---------------------------------------------------
		[392] = "%0.1f", 		-- lamp_PUI800_Sta1_WeapIsPresent{0.0, 1.0}
		[393] = "%0.1f", 		-- lamp_PUI800_Sta2_WeapIsPresent{0.0, 1.0}
		[394] = "%0.1f", 		-- lamp_PUI800_Sta3_WeapIsPresent{0.0, 1.0}
		[395] = "%0.1f", 		-- lamp_PUI800_Sta4_WeapIsPresent{0.0, 1.0}
		[388] = "%0.1f", 		-- lamp_PUI800_Sta1_WeapIsReady{0.0, 1.0}
		[389] = "%0.1f", 		-- lamp_PUI800_Sta2_WeapIsReady{0.0, 1.0}
		[390] = "%0.1f", 		-- lamp_PUI800_Sta3_WeapIsReady{0.0, 1.0}
		[391] = "%0.1f", 		-- lamp_PUI800_Sta4_WeapIsReady{0.0, 1.0}
		]]
		SendData("2014", string.format("%.1f;%.1f;%.1f;%.1f;%.1f;%.1f;%.1f;%.1f;%s;%s;%s",
										mainPanelDevice:get_argument_value(392),
										mainPanelDevice:get_argument_value(393),
										mainPanelDevice:get_argument_value(394),
										mainPanelDevice:get_argument_value(395),
										mainPanelDevice:get_argument_value(388),
										mainPanelDevice:get_argument_value(389),
										mainPanelDevice:get_argument_value(390),
										mainPanelDevice:get_argument_value(391),
										lStationType,
										lStationCount,
										lCannonAmmoCount))
		-- LGCP - Landing gear control panel
		---------------------------------------------------
		--[[
		[63]  = "%0.1f", 		-- LGCP_Lamp_NoseGearUp {0.0,1.0}
		[64]  = "%0.1f", 		-- LGCP_Lamp_NoseGearDown {0.0,1.0}
		[61]  = "%0.1f", 		-- LGCP_Lamp_RightMainGearUp {0.0,1.0}
		[62]  = "%0.1f", 		-- LGCP_Lamp_RightMainGearDown {0.0,1.0}
		[59]  = "%0.1f", 		-- LGCP_Lamp_LeftMainGearUp {0.0,1.0}
		[60]  = "%0.1f", 		-- LGCP_Lamp_LeftMainGearDown{0.0, 1.0}
		]]
		SendData("2013", string.format("%.1f;%.1f;%.1f;%.1f;%.1f;%.1f",
										   mainPanelDevice:get_argument_value(63),
										   mainPanelDevice:get_argument_value(64),
										   mainPanelDevice:get_argument_value(61),
										   mainPanelDevice:get_argument_value(62),
										   mainPanelDevice:get_argument_value(59),
										   mainPanelDevice:get_argument_value(60)))
    
		-- Master Warning and Rotor RPM Lamp
		SendData("44", mainPanelDevice:get_argument_value(44) > 0.0 and 1 or 0)			-- lamp_MasterWarning {0.0,0.3}
		SendData("46", mainPanelDevice:get_argument_value(46) > 0.0 and 1 or 0)			-- lamp_RotorRPM {0.0,1.0}
	end		
end

-- Pointed to by ProcessHARDWARELowImportance, if the player aircraft is a Ka-50
function ProcessHARDWAREConfigLowImportance(mainPanelDevice)
	-- Radio comunication
	-- ARK_22 (ADF) Frequncy
	local lARK_22 = GetDevice(46)
	SendDataHW("2000", string.format("%1d", lARK_22:get_channel()))

	-- R_800
	local lR_800 = GetDevice(48)
	SendDataHW("2001", string.format("%7.3f", lR_800:get_frequency()/1000000))

	-- R_828 Channel
	local lR_828 = {[0.0]="1",[0.1]="2",[0.2]="3",[0.3]="4",[0.4]="5",[0.5]="6",[0.6]="7",[0.7]="8",[0.8]="9",[0.9]="10"}
	SendDataHW("2002", lR_828[math.round(mainPanelDevice:get_argument_value(371), 1)])
	
	-- R_828 Frequency
	local lR_828_F = GetDevice(49)
	if lR_828_F:is_on() then
		SendDataHW("2003", string.format("%7.3f", lR_828_F:get_frequency()/1000000))
	else
		SendDataHW("2003", "-")
	end

	-- Weapos
	local lWeaponSystem = GetDevice(12)
	local lCannonAmmoCount = " "
	local lStationNumbers = lWeaponSystem:get_selected_weapon_stations()
	local lStationCount = " "
	local lStationType = " "	
	local lTargetingPower = mainPanelDevice:get_argument_value(433)
	local lTrigger = mainPanelDevice:get_argument_value(615)
	if lTrigger == 0 then
		gKa50Trigger = 1
	end
	if lTrigger == -1 then
		gKa50Trigger = 0
	end

	if lTargetingPower == 1 then
		lCannonAmmoCount = string.format("%02d",string.match(lWeaponSystem:get_selected_gun_ammo_count() / 10,"(%d+)"))

		if #lStationNumbers ~= 0 and gKa50Trigger == 0 then
			lStationCount = 0
			for i=1,#lStationNumbers do
				lStationCount = lStationCount + lWeaponSystem:get_weapon_count_on_station(lStationNumbers[i])
			end

			lStationCount = string.format("%02d", lStationCount);

			lStationType = gES_Ka50StationTypes[lWeaponSystem:get_weapon_type_on_station(lStationNumbers[1])]
			if lStationType == nil then
				lStationType = " "
			end
		end
	end

	--SendDataHW("2004",lStationType)
	SendDataHW("2005",lStationCount)
	SendDataHW("2006",lCannonAmmoCount)

	local lUV26 = list_indication(7)
	lUV26 = lUV26:gsub("-----------------------------------------", "")
	lUV26 = lUV26:gsub("txt_digits", "")
	lUV26 = lUV26:gsub("%c", "")
	
	SendDataHW("2007", string.format("%s", lUV26))
	
	
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
	
	SendDataHW("2008", string.format("%s", ltxt_upper_row))
	SendDataHW("2009", string.format("%s", ltxt_lower_row))

	--[[
	--WriteToLog('list_cockpit_params(): '..dump(list_cockpit_params()))
	
	local ltmp1 = 0
	for ltmp2 = 1, 14, 1 do
		ltmp1 = list_indication(ltmp2)
		WriteToLog(ltmp2..': '..dump(ltmp1))
		--WriteToLog(ltmp2..' (metatable): '..dump(getmetatable(ltmp1)))
	end
	]]
end

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessGlassCockpitDCSHighImportance, if the player aircraft is a Ka-50
function ProcessGlassCockpitDCSConfigHighImportance(mainPanelDevice)
	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
		
		
	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6

		-- ADI (IKP-81)
		---------------------------------------------------
		--[[
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
		]]
		SendData("2000", string.format("%.4f;%.4f;%.1f;%.1f;%.4f;%.4f;%.4f;%.4f;%.4f;%.4f", 
										   mainPanelDevice:get_argument_value(100),
										   mainPanelDevice:get_argument_value(101),
										   mainPanelDevice:get_argument_value(102),
										   mainPanelDevice:get_argument_value(109),
										   mainPanelDevice:get_argument_value(107),
										   mainPanelDevice:get_argument_value(106),
										   mainPanelDevice:get_argument_value(111),
										   mainPanelDevice:get_argument_value(103),
										   mainPanelDevice:get_argument_value(526),
										   mainPanelDevice:get_argument_value(108)))
		-- VVI
		---------------------------------------------------
		--[24]  = "%.4f", 		-- vy (Vertical Velocity Indicator) {-1.0,1.0}
		-- Barometric Altimeter (VM_15PV)
		--------------------------------------------------
		--[[
		[87]  = "%.4f", 		-- VM_15PV_BALT_thousands {0.0,1.0}
		[573] = "%.4f",			-- VM_15PV_BALT_tenth {0.0,1.0}
		[88]  = "%0.2f", 		-- VM_15PV_BaroPressure {0.0,1.0}
		[89]  = "%.4f", 		-- VM_15PV_BALT_CommandedAlt {0.0,1.0}
		]]
		SendData("2001", string.format("%.4f;%.4f;%.2f;%.4f",
										   mainPanelDevice:get_argument_value(87),
										   mainPanelDevice:get_argument_value(573),
										   mainPanelDevice:get_argument_value(88),
										   mainPanelDevice:get_argument_value(89)))
		--WriteToLog('VM_15PV_BALT_thousands '..dump(mainPanelDevice:get_argument_value(87))..', VM_15PV_BALT_tenth '..dump(mainPanelDevice:get_argument_value(573))..', VM_15PV_BaroPressure '..dump(mainPanelDevice:get_argument_value(88))..', VM_15PV_BALT_CommandedAlt '..dump(mainPanelDevice:get_argument_value(89)))
		-- HSI (PNP-72-16)
		---------------------------------------------------
		--[[
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
		]]
		SendData("2002", string.format("%.4f;%.4f;%.4f;%.4f;%.1f;%.1f;%.1f;%.4f;%.4f;%.4f;%.4f;%.4f;%.1f;%.1f",
										   mainPanelDevice:get_argument_value(112),
										   mainPanelDevice:get_argument_value(118),
										   mainPanelDevice:get_argument_value(124),
										   mainPanelDevice:get_argument_value(115),
										   mainPanelDevice:get_argument_value(119),
										   mainPanelDevice:get_argument_value(114),
										   mainPanelDevice:get_argument_value(125),
										   mainPanelDevice:get_argument_value(117),
										   mainPanelDevice:get_argument_value(527),
										   mainPanelDevice:get_argument_value(528),
										   mainPanelDevice:get_argument_value(127),
										   mainPanelDevice:get_argument_value(128),
										   mainPanelDevice:get_argument_value(116),
										   mainPanelDevice:get_argument_value(121)))
		--WriteToLog('HSI_heading '..dump(mainPanelDevice:get_argument_value(118)))
		-- Rotor Pitch
		---------------------------------------------------
		--[53]  = "%.4f", 		-- RotorPitch {0.0,1.0}
		-- Rotor RPM
		---------------------------------------------------
		--[52]  = "%.4f", 		-- RotorRPM {0.0,1.0}
		-- Radar Altimeter ( A_036)
		---------------------------------------------------
		--[[
		[94]  = "%.4f", 		-- A_036_RALT {0.0,1.0}
		[93]  = "%.4f", 		-- A_036_DangerRALT {0.0,1.0}
		[95]  = "%0.1f", 		-- A_036_warning_flag {0.0,1.0}
		[92]  = "%0.1f", 		-- A_036_DangerRALT_lamp {0.0,1.0}
		]]
		SendData("2003", string.format("%.4f;%.4f;%.1f;%.1f",
										   mainPanelDevice:get_argument_value(94),
										   mainPanelDevice:get_argument_value(93),
										   mainPanelDevice:get_argument_value(95),
										   mainPanelDevice:get_argument_value(92)))
		-- Indicated Airspeed
		---------------------------------------------------
		---[51]  = "%.4f", 		-- IAS {0.0,1.0}
		--SendData("51", string.format("%.4f", mainPanelDevice:get_argument_value(51)))
		--WriteToLog('IAS '..dump(mainPanelDevice:get_argument_value(51)))
		-- Accelerometer (ADP_4)
		---------------------------------------------------
		--[[
		[97]  = "%0.2f", 		-- ADP_4_acceleration {0.0,1.0}
		[98]  = "%0.2f", 		-- ADP_4_max_achieved_acc {0.0,1.0}
		[99]  = "%0.2f", 		-- ADP_4_min_achieved_acc {0.0,1.0}
		]]
		SendData("2004", string.format("%.2f;%.2f;%.2f",
										   mainPanelDevice:get_argument_value(97),
										   mainPanelDevice:get_argument_value(98),
										   mainPanelDevice:get_argument_value(99)))
		-- Mechanic Clock
		---------------------------------------------------
		--[[
		[68]  = "%.4f", 		-- CLOCK_currtime_hours {0.0,1.0}
		[69]  = "%.4f", 		-- CLOCK_currtime_minutes {0.0,1.0}
		[70]  = "%.4f", 		-- CLOCK_currtime_seconds {0.0,1.0}
		[75]  = "%0.1f", 		-- CLOCK_flight_time_meter_status{0.0,0.2}
		[72]  = "%.4f", 		-- CLOCK_flight_hours {0.0,1.0}
		[531] = "%.4f", 		-- CLOCK_flight_minutes {0.0,1.0}
		[73]  = "%.4f", 		-- CLOCK_seconds_meter_time_minutes {0.0,1.0}
		[532] = "%.4f", 		-- CLOCK_seconds_meter_time_seconds {0.0,1.0}
		]]
		SendData("2005", string.format("%.4f;%.4f;%.4f;%.1f;%.4f;%.4f;%.4f;%.4f",
										   mainPanelDevice:get_argument_value(68),
										   mainPanelDevice:get_argument_value(69),
										   mainPanelDevice:get_argument_value(70),
										   mainPanelDevice:get_argument_value(75),
										   mainPanelDevice:get_argument_value(72),
										   mainPanelDevice:get_argument_value(531),
										   mainPanelDevice:get_argument_value(73),
										   mainPanelDevice:get_argument_value(532)))
		-- backup ADI (AGR-81)
		---------------------------------------------------
		--[[
		[142] = "%.4f", 		-- AGR_81_Roll {1.0, -1.0}
		[143] = "%.4f", 		-- AGR_81_Pitch {-1.0, 1.0}
		[144] = "%.4f", 		-- AGR_81_sideslip	{-1.0, 1.0}
		[145] = "%0.1f", 		-- AGR_81_failure_flag{0.0, 1.0}
		]]
		SendData("2006", string.format("%.4f;%.4f;%.4f;%.1f",
										   mainPanelDevice:get_argument_value(142),
										   mainPanelDevice:get_argument_value(143),
										   mainPanelDevice:get_argument_value(144),
										   mainPanelDevice:get_argument_value(145)))
		-- Engines temperature
		---------------------------------------------------
		--[[
		[133] = "%.4f", 		-- LeftEngineTemperatureHund {0.0,1.0}
		[566] = "%.4f", 		-- LeftEngineTemperatureTenth {0.0,1.0}
		[134] = "%.4f", 		-- RightEngineTemperatureHund {0.0,1.0}
		[567] = "%.4f", 		-- RightEngineTemperatureHund {0.0,1.0}
		]]
		SendData("2007", string.format("%.4f;%.4f;%.4f;%.4f",
										   mainPanelDevice:get_argument_value(133),
										   mainPanelDevice:get_argument_value(566),
										   mainPanelDevice:get_argument_value(134),
										   mainPanelDevice:get_argument_value(567)))
		-- Engine RPM
		---------------------------------------------------
		--[[
		[135] = "%.4f", 		-- LeftEngineRPM {0.0,1.0}
		[136] = "%.4f", 		-- RightEngineRPM {0.0,1.0}
		]]
		SendData("2008", string.format("%.4f;%.4f",
										   mainPanelDevice:get_argument_value(135),
										   mainPanelDevice:get_argument_value(136)))
		-- Fuel tanks 
		---------------------------------------------------
		--[[
		[137] = "%.4f", 		-- ForwardTankAmount {0.0,1.0}
		[138] = "%.4f", 		-- RearTankAmount {0.0,1.0}
		[139] = "%0.1f", 		-- lamp_ForwardTankTest {0.0,1.0}
		[140] = "%0.1f", 		-- lamp_RearTankTest {0.0,1.0}
		]]
		SendData("2009", string.format("%.4f;%.4f;%.1f;%.1f",
										   mainPanelDevice:get_argument_value(137),
										   mainPanelDevice:get_argument_value(138),
										   mainPanelDevice:get_argument_value(139),
										   mainPanelDevice:get_argument_value(140)))
		-- Magnetic Compass (KI-13)
		---------------------------------------------------
		--[[
		[11]  = "%.4f", 		-- KI_13_course {-1,1}
		[12]  = "%.4f", 		-- KI_13_pitch {-1,1}
		[14]  = "%.4f", 		-- KI_13_bank {-1,1}
		]]
		SendData("2010", string.format("%.4f;%.4f;%.4f",
										   mainPanelDevice:get_argument_value(11),
										   mainPanelDevice:get_argument_value(12),
										   mainPanelDevice:get_argument_value(14)))
		-- Oil pressure and temperature indicators group (Right Panel)
		---------------------------------------------------
		--[[
		[252] = "%.4f", 		-- NeedleOilPressureEngineLeft {0.0,1.0}
		[253] = "%.4f", 		-- NeedleOilPressureEngineRight {0.0, 1.0}
		[254] = "%.4f", 		-- NeedleOilPressureGearBox {0.0,1.0}
		[255] = "%.4f", 		-- NeedleOilTemperatureEngineLeft {0.0,1.0}
		[256] = "%.4f", 		-- NeedleOilTemperatureEngineRight {0.0,1.0}
		[257] = "%.4f", 		-- NeedleOilTemperatureGearBox {0.0,1.0}
		]]
		--SendData("2011", string.format("%.4f;%.4f;%.4f;%.4f;%.4f;%.4f",
		--								   mainPanelDevice:get_argument_value(252),
		--								   mainPanelDevice:get_argument_value(253),
		--								   mainPanelDevice:get_argument_value(254),
		--								   mainPanelDevice:get_argument_value(255),
		--								   mainPanelDevice:get_argument_value(256),
		--								   mainPanelDevice:get_argument_value(257)))
		-- Hydraulics Gauges (Back Panel)
		---------------------------------------------------
		--[[
		[471] = "%.4f", 		-- hydro_common_pressure {0.0,1.0}
		[472] = "%.4f", 		-- hydro_main_pressure {0.0,1.0}
		[473] = "%.4f", 		-- hydro_acc_brake_pressure {0.0,1.0}
		[474] = "%.4f", 		-- hydro_gear_brake_pressure {0.0,1.0}
		[475] = "%.4f", 		-- hydro_common_temperature {0.0,1.0}
		[476] = "%.4f", 		-- hydro_main_temperature {0.0,1.0}
		]]
		--SendData("2012", string.format("%.4f;%.4f;%.4f;%.4f;%.4f;%.4f",
		--								   mainPanelDevice:get_argument_value(471),
		--								   mainPanelDevice:get_argument_value(472),
		--								   mainPanelDevice:get_argument_value(473),
		--								   mainPanelDevice:get_argument_value(474),
		--								   mainPanelDevice:get_argument_value(475),
		--								   mainPanelDevice:get_argument_value(476)))
		--WriteToLog('hydro_common_temperature '..dump(mainPanelDevice:get_argument_value(475))..', hydro_main_temperature '..dump(mainPanelDevice:get_argument_value(476)))
		-- APU Temperature
		---------------------------------------------------
		--[6]   = "%.4f", 		-- APUTemperature {0.0, 900.0} = {0.0, 1.0}
		-- ambientTemperature
		---------------------------------------------------
		--[587] = "%0.3f"			-- ambientTemperature {-60, 50} = {-0.946, 0.788}
		-- Engines mode indicator
		---------------------------------------------------
		--[[
		[592] = "%.4f", 		-- EnginesMode	{0.0,1.0}
		[234] = "%0.2f", 		-- LeftEngineMode{0.0,1.0}
		[235] = "%0.2f", 		-- RightEngineMode	{0.0,1.0}
		]]
		SendData("2015", string.format("%.4f;%.4f;%.4f",
										   mainPanelDevice:get_argument_value(592),
										   mainPanelDevice:get_argument_value(234),
										   mainPanelDevice:get_argument_value(235)))
		--WriteToLog('EnginesMode '..dump(mainPanelDevice:get_argument_value(592))..', LeftEngineMode '..dump(mainPanelDevice:get_argument_value(234))..', RightEngineMode '..dump(mainPanelDevice:get_argument_value(235)))
	end	
end

-- Pointed to by ProcessHARDWAREHighImportance, if the player aircraft is a Ka-50
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

	--SendDataHW("2006",UV26Display())

	-- LAMPS
	---------------------------------------------------
	SendDataHW("44", mainPanelDevice:get_argument_value(44) > 0.0 and 1 or 0)			-- lamp_MasterWarning {0.0,0.3}
	SendDataHW("46", mainPanelDevice:get_argument_value(46) > 0.0 and 1 or 0)			-- lamp_RotorRPM {0.0,1.0}
	SendDataHW("47", string.format("%0.1f", mainPanelDevice:get_argument_value(47)))			-- lamp_UNDERFIREwarning {0.0,1.0}
	SendDataHW("48", string.format("%0.1f", mainPanelDevice:get_argument_value(48)))			-- lamp_LowerGear {0.0,1.0}
	SendDataHW("78", string.format("%0.1f", mainPanelDevice:get_argument_value(78)))			-- lamp_RPM_leftEngineMax {0.0,1.0}
	SendDataHW("79", string.format("%0.1f", mainPanelDevice:get_argument_value(79)))			-- lamp_RPM_rightEngineMax {0.0,1.0}
	SendDataHW("80", string.format("%0.1f", mainPanelDevice:get_argument_value(80)))			-- lamp_NyMax {0.0,1.0}
	SendDataHW("81", string.format("%0.1f", mainPanelDevice:get_argument_value(81)))			-- lamp_vibr_leftEngine {0.0,1.0}
	SendDataHW("82", string.format("%0.1f", mainPanelDevice:get_argument_value(82)))			-- lamp_vibr_rightEngine {0.0,1.0}
	SendDataHW("83", string.format("%0.1f", mainPanelDevice:get_argument_value(83)))			-- lamp_IAS_max {0.0,1.0}
	SendDataHW("84", string.format("%0.1f", mainPanelDevice:get_argument_value(84)))			-- lamp_mainTransmission {0.0,1.0}
	SendDataHW("85", string.format("%0.1f", mainPanelDevice:get_argument_value(85)))			-- lamp_Fire {0.0,1.0}
	SendDataHW("86", string.format("%0.1f", mainPanelDevice:get_argument_value(86)))			-- lamp_IFFfailure {0.0,1.0}
	-- Fuel tanks 
	---------------------------------------------------
	SendDataHW("139", string.format("%0.1f", mainPanelDevice:get_argument_value(139))) 		-- lamp_ForwardTankTest {0.0,1.0}
	SendDataHW("140", string.format("%0.1f", mainPanelDevice:get_argument_value(140))) 		-- lamp_RearTankTest {0.0,1.0}
	-- PUI-800 Weapon panel
	---------------------------------------------------
	SendDataHW("392", string.format("%0.1f", mainPanelDevice:get_argument_value(392)))			-- lamp_PUI800_Sta1_WeapIsPresent{0.0, 1.0}
	SendDataHW("393", string.format("%0.1f", mainPanelDevice:get_argument_value(393)))			-- lamp_PUI800_Sta2_WeapIsPresent{0.0, 1.0}
	SendDataHW("394", string.format("%0.1f", mainPanelDevice:get_argument_value(394)))			-- lamp_PUI800_Sta3_WeapIsPresent{0.0, 1.0}
	SendDataHW("395", string.format("%0.1f", mainPanelDevice:get_argument_value(395)))			-- lamp_PUI800_Sta4_WeapIsPresent{0.0, 1.0}
	SendDataHW("388", string.format("%0.1f", mainPanelDevice:get_argument_value(388)))			-- lamp_PUI800_Sta1_WeapIsReady{0.0, 1.0}
	SendDataHW("389", string.format("%0.1f", mainPanelDevice:get_argument_value(389)))			-- lamp_PUI800_Sta2_WeapIsReady{0.0, 1.0}
	SendDataHW("390", string.format("%0.1f", mainPanelDevice:get_argument_value(390)))			-- lamp_PUI800_Sta3_WeapIsReady{0.0, 1.0}
	SendDataHW("391", string.format("%0.1f", mainPanelDevice:get_argument_value(391)))			-- lamp_PUI800_Sta4_WeapIsReady{0.0, 1.0}
	-- LGCP - Landing gear control panel
	---------------------------------------------------
	SendDataHW("63", string.format("%0.1f", mainPanelDevice:get_argument_value(63)))			-- LGCP_Lamp_NoseGearUp {0.0,1.0}
	SendDataHW("64", string.format("%0.1f", mainPanelDevice:get_argument_value(64)))			-- LGCP_Lamp_NoseGearDown {0.0,1.0}
	SendDataHW("61", string.format("%0.1f", mainPanelDevice:get_argument_value(61)))			-- LGCP_Lamp_RightMainGearUp {0.0,1.0}
	SendDataHW("62", string.format("%0.1f", mainPanelDevice:get_argument_value(62)))			-- LGCP_Lamp_RightMainGearDown {0.0,1.0}
	SendDataHW("59", string.format("%0.1f", mainPanelDevice:get_argument_value(59)))			-- LGCP_Lamp_LeftMainGearUp {0.0,1.0}
	SendDataHW("60", string.format("%0.1f", mainPanelDevice:get_argument_value(60)))			-- LGCP_Lamp_LeftMainGearDown{0.0, 1.0}
	-- LAMPS
	---------------------------------------------------
	SendDataHW("170", string.format("%0.1f", mainPanelDevice:get_argument_value(170)))			-- lamp_H_RALT_stab {0.0,1.0}
	SendDataHW("175", string.format("%0.1f", mainPanelDevice:get_argument_value(175)))			-- lamp_Hover {0.0,1.0}
	SendDataHW("172", string.format("%0.1f", mainPanelDevice:get_argument_value(172)))			-- lamp_Descent {0.0,1.0}
	SendDataHW("165", string.format("%0.1f", mainPanelDevice:get_argument_value(165)))			-- lamp_RouteHeadingSteering {0.0,1.0}
	SendDataHW("171", string.format("%0.1f", mainPanelDevice:get_argument_value(171)))			-- lamp_RouteCourseSteering {0.0,1.0}
	SendDataHW("176", string.format("%0.1f", mainPanelDevice:get_argument_value(176)))			-- lamp_Waypoint {0.0,1.0}
	SendDataHW("166", string.format("%0.1f", mainPanelDevice:get_argument_value(166)))			-- lamp_EndOfRoute {0.0,1.0}
	SendDataHW("164", string.format("%0.1f", mainPanelDevice:get_argument_value(164)))			-- lamp_RoughNAVcalc {0.0,1.0}
	SendDataHW("178", string.format("%0.1f", mainPanelDevice:get_argument_value(178)))			-- lamp_Burst {0.0,1.0}
	SendDataHW("173", string.format("%0.1f", mainPanelDevice:get_argument_value(173)))			-- lamp_CannonMovingBarr {0.0,1.0}
	SendDataHW("177", string.format("%0.1f", mainPanelDevice:get_argument_value(177)))			-- lamp_CannonMovingBarr2 {0.0,1.0}
	SendDataHW("211", string.format("%0.1f", mainPanelDevice:get_argument_value(211)))			-- lamp_FuelCrossfeedOn {0.0,1.0}
	SendDataHW("187", string.format("%0.1f", mainPanelDevice:get_argument_value(187)))			-- lamp_CouplerOff {0.0,1.0}
	SendDataHW("204", string.format("%0.1f", mainPanelDevice:get_argument_value(204)))			-- lamp_ActuatorsOilPress {0.0,1.0}
	SendDataHW("213", string.format("%0.1f", mainPanelDevice:get_argument_value(213)))			-- lamp_LockOff {0.0,1.0}
	-- LAMPS
	---------------------------------------------------
	SendDataHW("167", string.format("%0.1f", mainPanelDevice:get_argument_value(167)))			-- lamp_WeapSysBUS_ON {0.0,1.0}
	SendDataHW("180", string.format("%0.1f", mainPanelDevice:get_argument_value(180)))			-- lamp_TrainingMode {0.0,1.0}
	SendDataHW("179", string.format("%0.1f", mainPanelDevice:get_argument_value(179)))			-- lamp_OBZOR_800 {0.0,1.0}
	SendDataHW("188", string.format("%0.1f", mainPanelDevice:get_argument_value(188)))			-- lamp_RANET {0.0,1.0}
	SendDataHW("189", string.format("%0.1f", mainPanelDevice:get_argument_value(189)))			-- lamp_CC_test {0.0,1.0}
	SendDataHW("206", string.format("%0.1f", mainPanelDevice:get_argument_value(206)))			-- lamp_CC_failure {0.0,1.0}
	SendDataHW("212", string.format("%0.1f", mainPanelDevice:get_argument_value(212)))			-- lamp_DC_AC_Inverter {0.0,1.0}
	SendDataHW("205", string.format("%0.1f", mainPanelDevice:get_argument_value(205)))			-- lamp_I_251V {0.0,1.0}
	SendDataHW("181", string.format("%0.1f", mainPanelDevice:get_argument_value(181)))			-- lamp_AntiIceLeftEngine {0.0,1.0}
	SendDataHW("190", string.format("%0.1f", mainPanelDevice:get_argument_value(190)))			-- lamp_DustProtectLeftEngine {0.0,1.0}
	SendDataHW("207", string.format("%0.1f", mainPanelDevice:get_argument_value(207)))			-- lamp_BackupModeLeftEngine {0.0,1.0}
	SendDataHW("183", string.format("%0.1f", mainPanelDevice:get_argument_value(183)))			-- lamp_AntiIceRotors {0.0,1.0}
	SendDataHW("182", string.format("%0.1f", mainPanelDevice:get_argument_value(182)))			-- lamp_AntiIceRightEngine {0.0,1.0}
	SendDataHW("191", string.format("%0.1f", mainPanelDevice:get_argument_value(191)))			-- lamp_DustProtectRightEngine {0.0,1.0}
	SendDataHW("208", string.format("%0.1f", mainPanelDevice:get_argument_value(208)))			-- lamp_BackupModeRightEngine {0.0,1.0}
	SendDataHW("184", string.format("%0.1f", mainPanelDevice:get_argument_value(184)))			-- lamp_VUO_Heat {0.0,1.0}
	SendDataHW("200", string.format("%0.1f", mainPanelDevice:get_argument_value(200)))			-- lamp_ForwardTank {0.0,1.0}
	SendDataHW("209", string.format("%0.1f", mainPanelDevice:get_argument_value(209)))			-- lamp_LeftValveClosed {0.0,1.0}
	SendDataHW("185", string.format("%0.1f", mainPanelDevice:get_argument_value(185)))			-- lamp_LeftOuterTank {0.0,1.0}
	SendDataHW("202", string.format("%0.1f", mainPanelDevice:get_argument_value(202)))			-- lamp_LeftInnerTank {0.0,1.0}
	SendDataHW("201", string.format("%0.1f", mainPanelDevice:get_argument_value(201)))			-- lamp_RearTank {0.0,1.0}
	SendDataHW("210", string.format("%0.1f", mainPanelDevice:get_argument_value(210)))			-- lamp_RightValveClosed {0.0,1.0}
	SendDataHW("186", string.format("%0.1f", mainPanelDevice:get_argument_value(186)))			-- lamp_RightOuterTank {0.0,1.0}
	SendDataHW("203", string.format("%0.1f", mainPanelDevice:get_argument_value(203)))			-- lamp_RightInnerTank {0.0,1.0}
	-- DATALINK
	---------------------------------------------------
	SendDataHW("159", mainPanelDevice:get_argument_value(159) > 0.0 and 1 or 0)			-- PRC_button_SEND {0.0,0.3}
	SendDataHW("150", mainPanelDevice:get_argument_value(150) > 0.0 and 1 or 0)			-- PRC_button_ESCAPE {0.0,0.3}
	SendDataHW("161", mainPanelDevice:get_argument_value(161) > 0.0 and 1 or 0)			-- PRC_button_ERASE {0.0,0.3}
	SendDataHW("15", mainPanelDevice:get_argument_value(15) > 0.0 and 1 or 0)			-- PRC_button_CLEAN {0.0,0.3}
	SendDataHW("16", mainPanelDevice:get_argument_value(16) > 0.0 and 1 or 0)			-- PRC_button_WINGMAN_ALL {0.0,0.3}
	SendDataHW("17", mainPanelDevice:get_argument_value(17) > 0.0 and 1 or 0)			-- PRC_button_WINGMAN_1 {0.0,0.3}
	SendDataHW("18", mainPanelDevice:get_argument_value(18) > 0.0 and 1 or 0)			-- PRC_button_WINGMAN_2 {0.0,0.3}
	SendDataHW("19", mainPanelDevice:get_argument_value(19) > 0.0 and 1 or 0)			-- PRC_button_WINGMAN_3 {0.0,0.3}
	SendDataHW("20", mainPanelDevice:get_argument_value(20) > 0.0 and 1 or 0)			-- PRC_button_WINGMAN_4 {0.0,0.3}
	SendDataHW("21", mainPanelDevice:get_argument_value(21) > 0.0 and 1 or 0)			-- PRC_button_TARGET_1 {0.0,0.3}
	SendDataHW("22", mainPanelDevice:get_argument_value(22) > 0.0 and 1 or 0)			-- PRC_button_TARGET_2 {0.0,0.3}
	SendDataHW("23", mainPanelDevice:get_argument_value(23) > 0.0 and 1 or 0)			-- PRC_button_TARGET_3 {0.0,0.3}
	SendDataHW("50", mainPanelDevice:get_argument_value(50) > 0.0 and 1 or 0)			-- PRC_button_TARGET_POINT {0.0,0.3}
	-- Laser warning system
	---------------------------------------------------
	SendDataHW("25", string.format("%0.1f", mainPanelDevice:get_argument_value(25)))			-- LWS_LampAzimuth_0 {0.0,1.0}
	SendDataHW("28", string.format("%0.1f", mainPanelDevice:get_argument_value(28)))			-- LWS_LampAzimuth_90 {0.0,1.0}
	SendDataHW("26", string.format("%0.1f", mainPanelDevice:get_argument_value(26)))			-- LWS_LampAzimuth_180 {0.0,1.0}
	SendDataHW("27", string.format("%0.1f", mainPanelDevice:get_argument_value(27)))			-- LWS_LampAzimuth_270 {0.0,1.0}
	SendDataHW("31", string.format("%0.1f", mainPanelDevice:get_argument_value(31)))			-- LWS_LampAzimuth_UpperHemisphere {0.0,1.0}
	SendDataHW("32", string.format("%0.1f", mainPanelDevice:get_argument_value(32)))			-- LWS_LampAzimuth_LowerHemisphere {0.0,1.0}
	SendDataHW("33", string.format("%0.1f", mainPanelDevice:get_argument_value(33)))			-- LWS_LampAzimuth_LaserRangefinder {0.0,1.0}
	SendDataHW("34", string.format("%0.1f", mainPanelDevice:get_argument_value(34)))			-- LWS_LampAzimuth_LaserTargetingSystem {0.0,1.0}
	SendDataHW("582", string.format("%0.1f", mainPanelDevice:get_argument_value(582)))			-- LWS_LampReady {0.0,1.0}
	-- UV-26
	---------------------------------------------------
	SendDataHW("541", string.format("%0.1f", mainPanelDevice:get_argument_value(541)))			-- UV26_lampLeftBoard {0.0,1.0}
	SendDataHW("542", string.format("%0.1f", mainPanelDevice:get_argument_value(542)))			-- UV26_lampRightBoard {0.0,1.0}
	-- PVI (Nav Control Panel)
	---------------------------------------------------
	SendDataHW("315", mainPanelDevice:get_argument_value(315) > 0.0 and 1 or 0)			-- PVI_button_WPT{0.0, 0.3}
	SendDataHW("519", mainPanelDevice:get_argument_value(519) > 0.0 and 1 or 0)			-- PVI_button_INSREALN{0.0, 0.3}
	SendDataHW("316", mainPanelDevice:get_argument_value(316) > 0.0 and 1 or 0)			-- PVI_button_FIXPT{0.0, 0.3}
	SendDataHW("520", mainPanelDevice:get_argument_value(520) > 0.0 and 1 or 0)			-- PVI_button_PRECALN{0.0, 0.3}
	SendDataHW("317", mainPanelDevice:get_argument_value(317) > 0.0 and 1 or 0)			-- PVI_button_AERDR{0.0, 0.3}
	SendDataHW("521", mainPanelDevice:get_argument_value(521) > 0.0 and 1 or 0)			-- PVI_button_NORMALN{0.0, 0.3}
	SendDataHW("318", mainPanelDevice:get_argument_value(318) > 0.0 and 1 or 0)			-- PVI_button_TGT{0.0, 0.3}
	SendDataHW("313", mainPanelDevice:get_argument_value(313) > 0.0 and 1 or 0)			-- PVI_button_ENTER{0.0, 0.3}
	SendDataHW("314", mainPanelDevice:get_argument_value(314) > 0.0 and 1 or 0)			-- PVI_button_CANCEL{0.0, 0.3}
	SendDataHW("522", mainPanelDevice:get_argument_value(522) > 0.0 and 1 or 0)			-- PVI_button_INITCOORD{0.0, 0.3}
	SendDataHW("319", mainPanelDevice:get_argument_value(319) > 0.0 and 1 or 0)			-- PVI_button_FILAMBDA{0.0, 0.3}
	SendDataHW("320", mainPanelDevice:get_argument_value(320) > 0.0 and 1 or 0)			-- PVI_button_FIZ{0.0, 0.3}
	SendDataHW("321", mainPanelDevice:get_argument_value(321) > 0.0 and 1 or 0)			-- PVI_button_DU{0.0, 0.3}
	SendDataHW("322", mainPanelDevice:get_argument_value(322) > 0.0 and 1 or 0)			-- PVI_button_FII{0.0, 0.3}
	SendDataHW("323", mainPanelDevice:get_argument_value(323) > 0.0 and 1 or 0)			-- PVI_button_BRGRNG{0.0, 0.3}
	SendDataHW("330", mainPanelDevice:get_argument_value(330) > 0.0 and 1 or 0)			-- PPR_button_K{0.0, 0.3}
	SendDataHW("332", mainPanelDevice:get_argument_value(332) > 0.0 and 1 or 0)			-- PPR_button_H{0.0, 0.3}
	SendDataHW("331", mainPanelDevice:get_argument_value(331) > 0.0 and 1 or 0)			-- PPR_button_T{0.0, 0.3}
	SendDataHW("333", mainPanelDevice:get_argument_value(333) > 0.0 and 1 or 0)			-- PPR_button_B{0.0, 0.3}
	SendDataHW("334", mainPanelDevice:get_argument_value(334) > 0.0 and 1 or 0)			-- PPR_button_DIR{0.0, 0.3}
	-- RadioCommunicator R-828
	---------------------------------------------------
	SendDataHW("375", string.format("%0.1f", mainPanelDevice:get_argument_value(375)))			-- Radio_ASU_lamp{0.0,1.0}
	-- RadioCommunicator R-800
	---------------------------------------------------
	SendDataHW("419", string.format("%0.1f", mainPanelDevice:get_argument_value(419)))			-- Radio_Test_lamp {0.0,1.0}
	-- WEAPON  INTERFACE
	---------------------------------------------------
	SendDataHW("437", mainPanelDevice:get_argument_value(437) > 0.0 and 1 or 0)			-- PRC_button_AUTO_TURN {0.0,0.3}
	SendDataHW("438", mainPanelDevice:get_argument_value(438) > 0.0 and 1 or 0)			-- PRC_button_AIRBORNE_TARGET {0.0,0.3}
	SendDataHW("439", mainPanelDevice:get_argument_value(439) > 0.0 and 1 or 0)			-- PRC_button_FORWARD_HEMISPHERE {0.0,0.3}
	SendDataHW("440", mainPanelDevice:get_argument_value(440) > 0.0 and 1 or 0)			-- PRC_button_GROUND_MOVING_TARGET {0.0,0.3}
	SendDataHW("441", mainPanelDevice:get_argument_value(441) > 0.0 and 1 or 0)			-- PRC_button_CLEAR {0.0,0.3}
	-- Engines start panel
	---------------------------------------------------
	SendDataHW("163", string.format("%0.1f", mainPanelDevice:get_argument_value(163)))			-- lamp_EnginesStartValve{0.0, 1.0}
	-- APU control panel
	---------------------------------------------------
	SendDataHW("162", string.format("%0.1f", mainPanelDevice:get_argument_value(162)))			-- lamp_APUValveOpen{0.0, 1.0}{0.0, 1.0}
	SendDataHW("168", string.format("%0.1f", mainPanelDevice:get_argument_value(168)))			-- lamp_APUOilPres{0.0, 1.0}{0.0, 1.0}
	SendDataHW("169", string.format("%0.1f", mainPanelDevice:get_argument_value(169)))			-- lamp_APUStoppedByRPM{0.0, 1.0}
	SendDataHW("174", string.format("%0.1f", mainPanelDevice:get_argument_value(174)))			-- lamp_APU_IsON{0.0, 1.0}
	-- Right Side Panel
	---------------------------------------------------
	SendDataHW("586", string.format("%0.1f", mainPanelDevice:get_argument_value(586)))			-- lamp_AC_Ground_Power{0.0, 1.0}
	SendDataHW("261", string.format("%0.1f", mainPanelDevice:get_argument_value(261)))			-- lamp_DC_Ground_Power{0.0, 1.0}
	-- Eject system
	---------------------------------------------------
	SendDataHW("461", string.format("%0.1f", mainPanelDevice:get_argument_value(461)))			-- EjectSystemTestLamp{0.0, 1.0}
	-- Fire Extinguishers panel
	---------------------------------------------------
	SendDataHW("237", string.format("%0.1f", mainPanelDevice:get_argument_value(237)))			-- lamp_Exting_LeftEngineFire{0.0, 1.0}
	SendDataHW("239", string.format("%0.1f", mainPanelDevice:get_argument_value(239)))			-- lamp_Exting_APU_Fire{0.0, 1.0}
	SendDataHW("568", string.format("%0.1f", mainPanelDevice:get_argument_value(568)))			-- lamp_Exting_HydraulicsFire{0.0, 1.0}
	SendDataHW("241", string.format("%0.1f", mainPanelDevice:get_argument_value(241)))			-- lamp_Exting_RightEngineFire{0.0, 1.0}
	SendDataHW("243", string.format("%0.1f", mainPanelDevice:get_argument_value(243)))			-- lamp_Exting_VentilatorFire{0.0, 1.0}
	SendDataHW("244", string.format("%0.1f", mainPanelDevice:get_argument_value(244)))			-- lamp_Exting_Lamp1{0.0, 1.0}
	SendDataHW("245", string.format("%0.1f", mainPanelDevice:get_argument_value(245)))			-- lamp_Exting_Lamp2{0.0, 1.0}
	-- Right Back Panel
	---------------------------------------------------
	SendDataHW("469", string.format("%0.1f", mainPanelDevice:get_argument_value(469)))			-- lamp_flap_hydro_1{0.0, 1.0}
	SendDataHW("470", string.format("%0.1f", mainPanelDevice:get_argument_value(470)))			-- lamp_flap_hydro_2{0.0, 1.0}
	-- Latitude Entry Panel (PShK_7)
	---------------------------------------------------
	SendDataHW("342", string.format("%0.1f", mainPanelDevice:get_argument_value(342)))			-- PShK7_LampAuto {0.0,1.0}

	-- generic Radio display and frequency rotarys
	-------------------------------------------------
	genericRadio(nil, nil, gES_genericRadioHardwareID)

--[[	
	-- ENGINE_INTERFACE
	local lENGINE_INTERFACE = GetDevice(4)
	WriteToLog('lENGINE_INTERFACE:get_left_engine_temp '..dump(lENGINE_INTERFACE:get_left_engine_temp()))
	WriteToLog('lENGINE_INTERFACE:get_left_engine_rpm '..dump(lENGINE_INTERFACE:get_left_engine_rpm()))
	WriteToLog('lENGINE_INTERFACE:get_right_engine_temp '..dump(lENGINE_INTERFACE:get_right_engine_temp()))
	WriteToLog('lENGINE_INTERFACE:get_right_engine_rpm '..dump(lENGINE_INTERFACE:get_right_engine_rpm()))
	WriteToLog('lENGINE_INTERFACE:get_apu_temp '..dump(lENGINE_INTERFACE:get_apu_temp()))
	
	-- ABRIS
	local lABRIS = GetDevice(9)
	WriteToLog('lABRIS:get_active_route '..dump(lABRIS:get_active_route()))
	WriteToLog('lABRIS:get_edited_route '..dump(lABRIS:get_edited_route()))
	WriteToLog('lABRIS:get_sns_mode '..dump(lABRIS:get_sns_mode()))
	WriteToLog('lABRIS:get_current_route '..dump(lABRIS:get_current_route()))
	--WriteToLog('lABRIS:get_current_route_segment_info '..dump(lABRIS:get_current_route_segment_info())) -- DCS Error
	WriteToLog('lABRIS:get_mode '..dump(lABRIS:get_mode()))
	WriteToLog('lABRIS:print_to_console '..dump(lABRIS:print_to_console()))
	--WriteToLog('lABRIS:replace_last_console_line '..dump(lABRIS:replace_last_console_line())) -- DCS Error
	
	-- EKRAN
	local lEKRAN = GetDevice(10)
	WriteToLog('lEKRAN:get_actual_text_frame '..dump(lEKRAN:get_actual_text_frame()))
	
	-- WEAP_INTERFACE
	local lWEAP_INTERFACE = GetDevice(12)
	WriteToLog('lWEAP_INTERFACE:get_weapon_type_on_station '..dump(lWEAP_INTERFACE:get_weapon_type_on_station()))
	WriteToLog('lWEAP_INTERFACE:get_selected_weapon_stations '..dump(lWEAP_INTERFACE:get_selected_weapon_stations()))
	WriteToLog('lWEAP_INTERFACE:get_selected_gun_ammo '..dump(lWEAP_INTERFACE:get_selected_gun_ammo()))
	WriteToLog('lWEAP_INTERFACE:get_selected_gun_ammo_count '..dump(lWEAP_INTERFACE:get_selected_gun_ammo_count()))
	WriteToLog('lWEAP_INTERFACE:get_weapon_count_on_station '..dump(lWEAP_INTERFACE:get_weapon_count_on_station()))
	
	-- DISS
	local lDISS = GetDevice(16)
	WriteToLog('lDISS:get_w_vector '..dump(lDISS:get_w_vector()))
	WriteToLog('lDISS:get_drift_angle '..dump(lDISS:get_drift_angle()))
	
	-- NAV_INTERFACE
	local lNAV_INTERFACE = GetDevice(28)
	WriteToLog('lNAV_INTERFACE:get_indicated_air_speed '..dump(lNAV_INTERFACE:get_indicated_air_speed()))
	WriteToLog('lNAV_INTERFACE:get_vertical_velocity '..dump(lNAV_INTERFACE:get_vertical_velocity()))
	
	-- HSI
	local lHSI = GetDevice(30)
	WriteToLog('lHSI:get_course '..dump(lHSI:get_course()))
	WriteToLog('lHSI:get_course_dev_warning_flag '..dump(lHSI:get_course_dev_warning_flag()))
	WriteToLog('lHSI:get_heading '..dump(lHSI:get_heading()))
	WriteToLog('lHSI:get_heading_warning_flag '..dump(lHSI:get_heading_warning_flag()))
	WriteToLog('lHSI:get_glideslope_dev_warning_flag '..dump(lHSI:get_glideslope_dev_warning_flag()))
	WriteToLog('lHSI:get_range '..dump(lHSI:get_range()))
	WriteToLog('lHSI:get_commanded_course '..dump(lHSI:get_commanded_course()))
	WriteToLog('lHSI:get_bearing '..dump(lHSI:get_bearing()))
	WriteToLog('lHSI:get_commanded_heading '..dump(lHSI:get_commanded_heading()))
	
	-- ADI
	local lADI = GetDevice(31)
	WriteToLog('lADI:get_sideslip '..dump(lADI:get_sideslip()))
	WriteToLog('lADI:get_attitude_warn_flag_val '..dump(lADI:get_attitude_warn_flag_val()))
	WriteToLog('lADI:get_pitch_steering '..dump(lADI:get_pitch_steering()))
	WriteToLog('lADI:get_track_deviation '..dump(lADI:get_track_deviation()))
	WriteToLog('lADI:get_airspeed_deviation '..dump(lADI:get_airspeed_deviation()))
	WriteToLog('lADI:get_height_deviation '..dump(lADI:get_height_deviation()))
	WriteToLog('lADI:get_bank_steering '..dump(lADI:get_bank_steering()))
	WriteToLog('lADI:get_pitch '..dump(lADI:get_pitch()))
	WriteToLog('lADI:get_steering_warn_flag_val '..dump(lADI:get_steering_warn_flag_val()))
	WriteToLog('lADI:get_bank '..dump(lADI:get_bank()))
	
	-- AUTOPILOT
	local lAUTOPILOT = GetDevice(33)
	WriteToLog('lAUTOPILOT:get_channel_status_Bank '..dump(lAUTOPILOT:get_channel_status_Bank()))
	WriteToLog('lAUTOPILOT:get_directional_mode '..dump(lAUTOPILOT:get_directional_mode()))
	WriteToLog('lAUTOPILOT:get_channel_status_Yaw '..dump(lAUTOPILOT:get_channel_status_Yaw()))
	WriteToLog('lAUTOPILOT:get_channel_status_Pitch '..dump(lAUTOPILOT:get_channel_status_Pitch()))
	WriteToLog('lAUTOPILOT:get_channel_status_Height '..dump(lAUTOPILOT:get_channel_status_Height()))
	
	-- RADAR_ALTIMETER
	local lRADAR_ALTIMETER = GetDevice(38)
	WriteToLog('lRADAR_ALTIMETER:get_altitude '..dump(lRADAR_ALTIMETER:get_altitude()))
	WriteToLog('lRADAR_ALTIMETER:get_dangerous_height_flag '..dump(lRADAR_ALTIMETER:get_dangerous_height_flag()))
	WriteToLog('lRADAR_ALTIMETER:get_distance_limit '..dump(lRADAR_ALTIMETER:get_distance_limit()))
	WriteToLog('lRADAR_ALTIMETER:get_dangerous_height '..dump(lRADAR_ALTIMETER:get_dangerous_height()))
	WriteToLog('lRADAR_ALTIMETER:get_warning_flag '..dump(lRADAR_ALTIMETER:get_warning_flag()))
	WriteToLog('lRADAR_ALTIMETER:get_mode '..dump(lRADAR_ALTIMETER:get_mode()))
	WriteToLog('lRADAR_ALTIMETER:get_aperture_size '..dump(lRADAR_ALTIMETER:get_aperture_size()))
	WriteToLog('lRADAR_ALTIMETER:get_needle_value '..dump(lRADAR_ALTIMETER:get_needle_value()))
	
	-- MISC_SYSTEMS_INTERFACE
	local lMISC_SYSTEMS_INTERFACE = GetDevice(41)
	WriteToLog('lMISC_SYSTEMS_INTERFACE:get_rotor_blades_pitch '..dump(lMISC_SYSTEMS_INTERFACE:get_rotor_blades_pitch()))
	WriteToLog('lMISC_SYSTEMS_INTERFACE:get_main_rotor_rpm '..dump(lMISC_SYSTEMS_INTERFACE:get_main_rotor_rpm()))
	
	-- ARK_22
	local lARK_22 = GetDevice(46)
	WriteToLog('lARK_22:get_channel '..dump(lARK_22:get_channel()))
	WriteToLog('lARK_22:get_mode '..dump(lARK_22:get_mode()))
	WriteToLog('lARK_22:get_homer_selector_pos '..dump(lARK_22:get_homer_selector_pos()))
	
	-- R_800
	local lR_800 = GetDevice(48)
	WriteToLog('lR_800:is_on '..dump(lR_800:is_on()))
	WriteToLog('lR_800:get_frequency '..dump(lR_800:get_frequency()))
	--WriteToLog('lR_800:set_modulation '..dump(lR_800:set_modulation())) -- test the parameters
	--WriteToLog('lR_800:set_frequency '..dump(lR_800:(set_frequency))) -- test the parameters

	-- R_828
	local R_828 = GetDevice(49)
	WriteToLog('R_828:is_on '..dump(R_828:is_on()))
	WriteToLog('R_828:get_frequency '..dump(R_828:get_frequency()))
	--WriteToLog('R_828:set_modulation '..dump(R_828:set_modulation())) -- test the parameters
	--WriteToLog('R_828:set_frequency '..dump(R_828:(set_frequency))) -- test the parameters
	--WriteToLog('R_828:set_channel '..dump(R_828:(set_channel))) -- test the parameters
	
	-- SPU_9
	local lSPU_9 = GetDevice(50)
	WriteToLog('lSPU_9:get_is_on '..dump(lSPU_9:get_is_on()))
	WriteToLog('lSPU_9:is_communicator_available '..dump(lSPU_9:is_communicator_available()))
	WriteToLog('lSPU_9:get_selector_pos '..dump(lSPU_9:get_selector_pos()))
	WriteToLog('lSPU_9:get_noise_level '..dump(lSPU_9:get_noise_level()))
	WriteToLog('lSPU_9:get_signal_level '..dump(lSPU_9:get_signal_level()))
	--WriteToLog('lSPU_9:set_communicator '..dump(lSPU_9:set_communicator())) -- test the parameters
	--WriteToLog('lSPU_9:set_voip_mode '..dump(lSPU_9:set_voip_mode())) -- test the parameters
	
	-- STBY_ADI
	local lSTBY_ADI = GetDevice(55)
	WriteToLog('lSTBY_ADI:get_sideslip '..dump(lSTBY_ADI:get_sideslip()))
	WriteToLog('lSTBY_ADI:get_bank '..dump(lSTBY_ADI:get_bank()))
	WriteToLog('lSTBY_ADI:get_pitch '..dump(lSTBY_ADI:get_pitch()))
	]]
--[[
	local ltmp1 = 0
	for ltmp2 = 0, 62, 1 do
		ltmp1 = GetDevice(ltmp2)
		WriteToLog(ltmp2..': '..dump(ltmp1))
		WriteToLog(ltmp2..' (metatable): '..dump(getmetatable(ltmp1)))
	end
]]
end

-----------------------------
--     Custom functions    --
-----------------------------

function genericRadio(key, value, hardware)
	local lHardware = hardware or 1
	-- Werte werden per Encoder im Bereich von 0.0 bis 2.0 in 0.1 Schritten uebergeben
	-- im jeweiligen Abschnitt muessen die Eingangsdaten auf den Zulaessigen Bereich eingeschraengt werden
	local lRotaryFrequency_1, lRotaryFrequency_2, lVolume, lPreset, lLoad, lSquelch, lManualPreset, lPower, lDevice, lClickAction, lSetFrequency = nil
	local lMainPanelDevice = GetDevice(0)
	local lMaxRadios = 2
	
	if gES_genericRadio == nil then
		gES_genericRadio = 0
	end
	if gES_genericRadioFrequency1 == nil then
		gES_genericRadioFrequency1 = 0.0
	end
	if gES_genericRadioFrequency2 == nil then
		gES_genericRadioFrequency2 = 0.0
	end
	if gES_genericRadioPresetChannel == nil then
		gES_genericRadioPresetChannel = 0.0
	end
	if gES_genericRadioPower == nil then
		gES_genericRadioPower = {}
	end
	if gES_genericRadioPresetManual == nil then
		gES_genericRadioPresetManual = {}
	end
	if gES_genericRadioSquelch == nil then
		gES_genericRadioSquelch = {}
	end	

	if key == "3001" then
		gES_genericRadio = tonumber(value)
	end
	if key == "3002" then
		lRotaryFrequency_1 = tonumber(value)
	end
	if key == "3003" then
		lRotaryFrequency_2 = tonumber(value)
	end
	if key == "3004" then
		lVolume = tonumber(value)
	end
	if key == "3005" then
		lPreset = tonumber(value)
	end
	if key == "3006" then
		lLoad = tonumber(value)
	end
	if key == "3007" then
		lSquelch = tonumber(value)
	end
	if key == "3008" then
		lManualPreset = tonumber(value)
	end
	if key == "3009" then
		lPower = tonumber(value)
	end

	if gES_genericRadio > lMaxRadios then
		WriteToLog("Radio Nr. "..gES_genericRadio.." not defined.")
		return
	end

	if gES_genericRadio == 1 then
		-- R_800 FM/AM Radio###.###
		local lDeviceID = 48
		local lR_800 = GetDevice(lDeviceID)

		-- check status of the radio
		if gES_genericRadioPower[gES_genericRadio] == nil then
			if lR_800:is_on() then
				gES_genericRadioPower[gES_genericRadio] = 1.0
			else
				gES_genericRadioPower[gES_genericRadio] = 0.0
			end
		end
		if gES_genericRadioPresetManual[gES_genericRadio] == nil then
			gES_genericRadioPresetManual[gES_genericRadio] = ((math.round(lMainPanelDevice:get_argument_value(167), 1) == 0) and 1 or 0)
		end
		if gES_genericRadioSquelch[gES_genericRadio] == nil then
			gES_genericRadioSquelch[gES_genericRadio] = ((math.round(lMainPanelDevice:get_argument_value(170), 1) == 0) and 1 or 0)
		end

		local lR_800_FREQUENCY = math.round(lR_800:get_frequency()/1000000 , 3, "floor")
		
		SendDataHW("3000", string.format("%.3f", lR_800_FREQUENCY), lHardware)
		SendDataHW("3001", string.format("-"), lHardware)
		SendDataHW("3002", string.format("%.3f", lR_800_FREQUENCY), lHardware)
		
		if lRotaryFrequency_1 ~= nil and (lRotaryFrequency_1 >= 0.0 and lRotaryFrequency_1 <= 2.0) then

			local lFrequency = StrSplit(lR_800_FREQUENCY, "%.")

			if type(lFrequency) == "table" and lFrequency[1] ~= nil then
				lFrequency[1] = tonumber(lFrequency[1])
				if lFrequency[2] == nil then
					lFrequency[2] = 0
				else
					lFrequency[2] = tonumber(lFrequency[2])
					local ltmp = string.format("%.0f", lFrequency[2] / 25)
					lFrequency[2] = ltmp * 25
				end
				if lRotaryFrequency_1 < gES_genericRadioFrequency1 or lRotaryFrequency_1 == 0.0 or lRotaryFrequency_1 == 2.0 then
					lFrequency[1] = lFrequency[1] - 1
					if lFrequency[1] == 99 then
						lFrequency[1] = 399
					end
					gES_genericRadioFrequency1 = lRotaryFrequency_1
				else
					lFrequency[1] = lFrequency[1] + 1
					if lFrequency[1] == 400 then
						lFrequency[1] = 100
					end
					gES_genericRadioFrequency1 = lRotaryFrequency_1
				end
				
				lFrequency[2] = string.format("%.3f", lFrequency[2] / 1000)
				local ltempFrequency = string.format("%.3f", lFrequency[1] + lFrequency[2])
				ltempFrequency = tonumber(ltempFrequency)
				lSetFrequency = {DeviceID = lDeviceID,
				                 Frequency = ltempFrequency * 1000000}

			else
				WriteToLog("1. generic Ka-50 R_800 Radio, don't split frequency: "..lFrequency)
			end
		end

		if lRotaryFrequency_2 ~= nil and (lRotaryFrequency_2 >= 0.0 and lRotaryFrequency_2 <= 2.0) then

			local lFrequency = StrSplit(lR_800_FREQUENCY, "%.")

			if type(lFrequency) == "table" and lFrequency[1] ~= nil then
				lFrequency[1] = tonumber(lFrequency[1])
				if lFrequency[2] == nil then
					lFrequency[2] = 0
				else
					lFrequency[2] = tonumber(lFrequency[2])
					local ltmp = string.format("%.0f", lFrequency[2] / 25)
					lFrequency[2] = ltmp * 25
				end
				if lRotaryFrequency_2 < gES_genericRadioFrequency2 or lRotaryFrequency_2 == 0.0 or lRotaryFrequency_2 == 2.0 then
					lFrequency[2] = lFrequency[2] - 25
					if lFrequency[2] == -25 then
						lFrequency[2] = 975
					end
					gES_genericRadioFrequency2 = lRotaryFrequency_2
				else
					lFrequency[2] = lFrequency[2] + 25
					if lFrequency[2] == 1000 then
						lFrequency[2] = 0
					end
					gES_genericRadioFrequency2 = lRotaryFrequency_2
				end
				
				lFrequency[2] = string.format("%.3f", lFrequency[2] / 1000)
				local ltempFrequency = string.format("%.3f", lFrequency[1] + lFrequency[2])
				ltempFrequency = tonumber(ltempFrequency)
				lSetFrequency = {DeviceID = lDeviceID,
				                 Frequency = ltempFrequency * 1000000}

			else
				WriteToLog("2. generic Ka-50 R_800 Radio, don't split frequency: "..lFrequency)
			end
		end
--[[
		if lVolume ~= nil and (lVolume >= 0.0 and lVolume <= 2.0) then
			lVolume = lVolume / 2
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3005,
							Value    = lVolume}
		end
		if lPreset ~= nil and (lPreset >= 0.0 and lPreset <= 2.0) then
			-- Preset 0.0 to 0.20 in 0.01 steps
			if lPreset < gES_genericRadioPresetChannel or lPreset == 0.0 or lPreset == 2.0 then
				lClickAction = {DeviceID = lDeviceID,
								ButtonID = 3001,
								Value    = 0.01}
				gES_genericRadioPresetChannel = lPreset
			else
				lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3002,
							Value    = -0.01}
				gES_genericRadioPresetChannel = lPreset
			end
		end
		if lLoad ~= nil and (lLoad == 0.0 or lLoad <= 1.0) then
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3006,
							Value    = lLoad}
		end
]]
		if lSquelch ~= nil and (lSquelch == 0.0 or lSquelch <= 1.0) then
			if lSquelch == 1.0 and gES_genericRadioSquelch[gES_genericRadio] == 1.0 then
				-- Squelch off
				lSquelch = 0.0
				gES_genericRadioSquelch[gES_genericRadio] = 0
			elseif lSquelch == 1.0 and gES_genericRadioSquelch[gES_genericRadio] == 0 then
				-- Squelch on
				lSquelch = 1.0
				gES_genericRadioSquelch[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3006,
							Value    = lSquelch}
		end
		-- ManualPreset is AM FM modus switch
		if lManualPreset ~= nil and (lManualPreset == 0.0 or lManualPreset <= 1.0) then
			if lManualPreset == 1.0 and gES_genericRadioPresetManual[gES_genericRadio] == 0.0 then
				-- AM
				lManualPreset = 1.0
				gES_genericRadioPresetManual[gES_genericRadio] = 1.0
			elseif lManualPreset == 1.0 and gES_genericRadioPresetManual[gES_genericRadio] == 1.0 then
				-- FM
				lManualPreset = 0.0
				gES_genericRadioPresetManual[gES_genericRadio] = 0.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3002,
							Value    = lManualPreset}
		end
		if lPower ~= nil and (lPower == 0.0 or lPower <= 1.0) then
			if lPower == 1.0 and gES_genericRadioPower[gES_genericRadio] == 1.0 then
				-- Power off
				lPower = 0.0
				gES_genericRadioPower[gES_genericRadio] = 0
			elseif lPower == 1.0 and gES_genericRadioPower[gES_genericRadio] == 0 then
				-- Power on
				lPower = 1.0
				gES_genericRadioPower[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3011,
							Value    = lPower}
		end
	
	elseif gES_genericRadio == 2 then
		-- R_828 VHF ###.###
		---------------------------------------------------
		local lDeviceID = 49
		local lR_828_RADIO = GetDevice(lDeviceID)

		-- check status of the radio
		if gES_genericRadioPower[gES_genericRadio] == nil then
			if lR_828_RADIO:is_on() then
				gES_genericRadioPower[gES_genericRadio] = 1.0
			else
				gES_genericRadioPower[gES_genericRadio] = 0.0
			end
		end
		if gES_genericRadioPresetManual[gES_genericRadio] == nil then
			gES_genericRadioPresetManual[gES_genericRadio] = ((math.round(lMainPanelDevice:get_argument_value(135), 1) == 0.1) and 1 or 0)
		end
		if gES_genericRadioSquelch[gES_genericRadio] == nil then
			gES_genericRadioSquelch[gES_genericRadio] = ((math.round(lMainPanelDevice:get_argument_value(134), 1) == 1.0) and 0 or 1)
		end

		local lR_828_RADIO_PRESET = {[0.0]="1",[0.1]="2",[0.2]="3",[0.3]="4",[0.4]="5",[0.5]="6",[0.6]="7",[0.7]="8",[0.8]="9",[0.9]="10"}
		local lR_828_RADIO_FREQUENCY = math.round(lR_828_RADIO:get_frequency()/1000000 , 3, "floor")

		local lPresetChannel = math.round(lMainPanelDevice:get_argument_value(371), 1)

		SendDataHW("3000", string.format("%s0%.3f", lR_828_RADIO_PRESET[lPresetChannel], lR_828_RADIO_FREQUENCY), lHardware)
		SendDataHW("3001", string.format("%s0", lR_828_RADIO_PRESET[lPresetChannel]), lHardware)
		SendDataHW("3002", string.format("%.3f", lR_828_RADIO_FREQUENCY), lHardware)

--[[		
		if lRotaryFrequency_1 ~= nil and (lRotaryFrequency_1 >= 0.0 and lRotaryFrequency_1 <= 2.0) then

			local lFrequency = StrSplit(lR_828_RADIO_FREQUENCY, "%.")

			if type(lFrequency) == "table" and lFrequency[1] ~= nil then
				lFrequency[1] = tonumber(lFrequency[1])
				if lFrequency[2] == nil then
					lFrequency[2] = 0
				else
					lFrequency[2] = tonumber(lFrequency[2])
					local ltmp = string.format("%.0f", lFrequency[2] / 25)
					lFrequency[2] = ltmp * 25
				end
				if lRotaryFrequency_1 < gES_genericRadioFrequency1 or lRotaryFrequency_1 == 0.0 or lRotaryFrequency_1 == 2.0 then
					lFrequency[1] = lFrequency[1] - 1
					if lFrequency[1] == 29 then
						lFrequency[1] = 159
					end
					gES_genericRadioFrequency1 = lRotaryFrequency_1
				else
					lFrequency[1] = lFrequency[1] + 1
					if lFrequency[1] == 160 then
						lFrequency[1] = 30
					end
					gES_genericRadioFrequency1 = lRotaryFrequency_1
				end
				
				lFrequency[2] = string.format("%.3f", lFrequency[2] / 1000)
				local ltempFrequency = string.format("%.3f", lFrequency[1] + lFrequency[2])
				ltempFrequency = tonumber(ltempFrequency)
				lSetFrequency = {DeviceID = lDeviceID,
				                 Frequency = ltempFrequency * 1000000}

			else
				WriteToLog("1. generic Ka-50 VHF Radio, don't split frequency: "..lFrequency)
			end
		end

		if lRotaryFrequency_2 ~= nil and (lRotaryFrequency_2 >= 0.0 and lRotaryFrequency_2 <= 2.0) then

			local lFrequency = StrSplit(lR_828_RADIO_FREQUENCY, "%.")

			if type(lFrequency) == "table" and lFrequency[1] ~= nil then
				lFrequency[1] = tonumber(lFrequency[1])
				if lFrequency[2] == nil then
					lFrequency[2] = 0
				else
					lFrequency[2] = tonumber(lFrequency[2])
					local ltmp = string.format("%.0f", lFrequency[2] / 25)
					lFrequency[2] = ltmp * 25
				end
				if lRotaryFrequency_2 < gES_genericRadioFrequency2 or lRotaryFrequency_2 == 0.0 or lRotaryFrequency_2 == 2.0 then
					lFrequency[2] = lFrequency[2] - 25
					if lFrequency[2] == -25 then
						lFrequency[2] = 975
					end
					gES_genericRadioFrequency2 = lRotaryFrequency_2
				else
					lFrequency[2] = lFrequency[2] + 25
					if lFrequency[2] == 1000 then
						lFrequency[2] = 0
					end
					gES_genericRadioFrequency2 = lRotaryFrequency_2
				end
				
				lFrequency[2] = string.format("%.3f", lFrequency[2] / 1000)
				local ltempFrequency = string.format("%.3f", lFrequency[1] + lFrequency[2])
				ltempFrequency = tonumber(ltempFrequency)
				lSetFrequency = {DeviceID = lDeviceID,
				                 Frequency = ltempFrequency * 1000000}

			else
				WriteToLog("2. generic Ka-50 VHF Radio, don't split frequency: "..lFrequency)
			end
		end
]]
		if lVolume ~= nil and (lVolume >= 0.0 and lVolume <= 2.0) then
			lVolume = lVolume / 2
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3002,
							Value    = lVolume}
		end
		if lPreset ~= nil and (lPreset >= 0.0 and lPreset <= 2.0) then
--[[
			-- Preset 0.0 to 0.9 in 0.1 steps
			lPreset = (lPreset / 2) - 0.1
			if lPreset < gES_genericRadioPresetChannel or lPreset == 0.0 or lPreset == 2.0 then
				lClickAction = {DeviceID = lDeviceID,
								ButtonID = 3001,
								Value    = 0.1}
				gES_genericRadioPresetChannel = lPreset
			else
				lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3001,
							Value    = -0.1}
				gES_genericRadioPresetChannel = lPreset
			end
]]
			-- Preset 0.0 to 0.9 in 0.1 steps
			lPreset = lPreset / 2
			if lPreset == 1.0 then
				lPreset = 0.9
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3001,
							Value    = lPreset}
		end
		-- Load Button change the Frequence
		if lLoad ~= nil and (lLoad == 0.0 or lLoad <= 1.0) then
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3003,
							Value    = lLoad}
		end
		if lSquelch ~= nil and (lSquelch == 0.0 or lSquelch <= 1.0) then
			if lSquelch == 1.0 and gES_genericRadioSquelch[gES_genericRadio] == 1.0 then
				-- Squelch off
				lSquelch = 0.0
				gES_genericRadioSquelch[gES_genericRadio] = 0
			elseif lSquelch == 1.0 and gES_genericRadioSquelch[gES_genericRadio] == 0 then
				-- Squelch on
				lSquelch = 1.0
				gES_genericRadioSquelch[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3004,
							Value    = lSquelch}
		end
--[[
		if lManualPreset ~= nil and (lManualPreset == 0.0 or lManualPreset <= 1.0) then
			if lManualPreset == 1.0 and gES_genericRadioPresetManual[gES_genericRadio] == 1.0 then
				-- Manual on
				lManualPreset = 0.2
				gES_genericRadioPresetManual[gES_genericRadio] = 0
			elseif lManualPreset == 1.0 and gES_genericRadioPresetManual[gES_genericRadio] == 0 then
				-- Preset on
				lManualPreset = 0.3
				gES_genericRadioPresetManual[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3003,
							Value    = lManualPreset}
		end
]]
		if lPower ~= nil and (lPower == 0.0 or lPower <= 1.0) then
			if lPower == 1.0 and gES_genericRadioPower[gES_genericRadio] == 1.0 then
				-- Power off
				lPower = 0.0
				gES_genericRadioPower[gES_genericRadio] = 0
			elseif lPower == 1.0 and gES_genericRadioPower[gES_genericRadio] == 0 then
				-- Power on
				lPower = 1.0
				gES_genericRadioPower[gES_genericRadio] = 1.0
			end
			lClickAction = {DeviceID = lDeviceID,
							ButtonID = 3005,
							Value    = lPower}
		end
		
		--SendDataHW("3011", lMainPanelDevice:get_argument_value(375), lHardware)
		gES_genericRadioPresetManual[gES_genericRadio] = lMainPanelDevice:get_argument_value(375)

	else
		SendDataHW("3000", "-", lHardware)
		SendDataHW("3001", "-", lHardware)
		SendDataHW("3002", "-", lHardware)
		SendDataHW("3010", 0, lHardware)
		SendDataHW("3011", 0, lHardware)
		SendDataHW("3012", 0, lHardware)
		return
	end

	SendDataHW("3010", gES_genericRadioPower[gES_genericRadio], lHardware)
	SendDataHW("3011", gES_genericRadioPresetManual[gES_genericRadio], lHardware)
	SendDataHW("3012", gES_genericRadioSquelch[gES_genericRadio], lHardware)

	if lClickAction ~= nil then
		lDevice = GetDevice(lClickAction.DeviceID)
		if type(lDevice) == "table" then
			--WriteToLog("GetDevice("..lClickAction.DeviceID.."):performClickableAction("..lClickAction.ButtonID..", "..lClickAction.Value..") ")
			lDevice:performClickableAction(lClickAction.ButtonID, lClickAction.Value)
		end
	elseif lSetFrequency ~= nil then
		lDevice = GetDevice(lSetFrequency.DeviceID)
		if type(lDevice) == "table" and lDevice:is_on() then
			--WriteToLog("GetDevice("..lSetFrequency.DeviceID.."):set_frequency("..lSetFrequency.Frequency..") ")
			lDevice:set_frequency(lSetFrequency.Frequency)
		else
			WriteToLog("GetDevice("..lSetFrequency.DeviceID..") is no table or Radio is not on")
		end
	end
end
