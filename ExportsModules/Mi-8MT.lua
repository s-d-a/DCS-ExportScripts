-- Mi-8MTV2 Export
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
	
	-- CONTROLLERS
	---------------------------------------------------------------
	----[209] = "%.4f",		-- rudder { -1, 1}
	--[266] = "%.4f",		-- rudder_add { 1, -1}
	--[181] = "%.4f",		-- stick_roll {1, -1}
	--[180] = "%.4f",		-- stick_pitch {1, -1}
	--[191] = "%.4f",		-- collective_position {0, 1}
	--[192] = "%1d",		-- correction_position {1, 0}
	--[230] = "%1d",		-- collective_position_operator {0, 1}
	--[231] = "%1d",		-- correction_position_operator {1, 0}
	--[560] = "%1d",		-- coll_ROUTE_DESCENT_sw {0, 1}
	--[558] = "%1d",		-- coll_ReadjustFreeTurbRPM_sw {0, 1}
	----[208] = "%1d",		-- collective_stopper {0, 1}
	--[187] = "%.4f",		-- left_engine_throttle {0.0, 1.0}
	--[189] = "%.4f",		-- right_engine_throttle {0.0, 1.0}
	--[881] = "%.4f",		-- wheelBrakes {0.0, 1.0}
	----[579] = "",		-- throttle_cover {0.0, 1.0}
	----[208] = "",		-- rotor_brake_handle {0.0, 1.0}
	-- Left main panel
	---------------------------------------------------------------
	[16] = "%.2f",		-- Variometer_L {-30, -20, -10, -5, -2, -1, 0, 1, 2, 5, 10, 20, 30} {-1.0, -0.71, -0.43, -0.23, -0.09, -0.05, 0, 0.05, 0.09, 0.23, 0.43, 0.71, 1.0}
	[95] = "%.2f",		-- Variometer_R {-30, -20, -10, -5, -2, -1, 0, 1, 2, 5, 10, 20, 30} {-1.0, -0.71, -0.43, -0.23, -0.09, -0.05, 0, 0.05, 0.09, 0.23, 0.43, 0.71, 1.0}
	[24] = "%.3f",		-- IAS_L {-10.0, 0.0, 13.889, 27.78, 41.67, 55.56, 69.44, 83.33, 111.1, 125.0, 129.2} {0.0, 0.001, 0.028, 0.165, 0.277, 0.393, 1.0}
	[790] = "%.3f",		-- IAS_R {-10.0, 0.0, 13.889, 27.78, 41.67, 55.56, 69.44, 83.33, 111.1, 125.0, 129.2} {0.0, 0.001, 0.028, 0.165, 0.277, 0.393, 1.0}
	-- AGB-3k
	---------------------------------------------------------------
	[13] = "%.4f",		-- AGB_3K_Left_roll {-1.0, 1.0}
	[12] = "%.4f",		-- AGB_3K_Left_pitch {1.0, -1.0}
	[14] = "%.4f",		-- AGB_3K_Left_failure_flag {0.0, 1.0}
	[15] = "%.4f",		-- AGB_3K_Left_sideslip {1.0, -1.0}
	[820] = "%.4f",		-- AGB_3K_Left_index {0.5, -0.5}
	------
	[92] = "%.4f",		-- AGB_3K_Right_roll {-1.0, 1.0}
	[91] = "%.4f",		-- AGB_3K_Right_pitch {1.0, -1.0}
	[93] = "%.4f",		-- AGB_3K_Right_failure_flag {0.0, 1.0}
	[94] = "%.4f",		-- AGB_3K_Right_sideslip {1.0, -1.0}
	[821] = "%.4f",		-- AGB_3K_Right_index {0.5, -0.5}
	-- EUP-53
	---------------------------------------------------------------
	[22] = "%.4f",		-- EUP_speed {-1.0, 1.0}
	[23] = "%.4f",		-- EUP_sideslip {-1.0, 1.0}
	-- UGR-4K
	---------------------------------------------------------------
	[25] = "%.4f",		-- UGR_4K_heading_L {0.0, 1.0}
	[27] = "%.4f",		-- UGR_4K_commanded_course_L {0.0, 1.0}
	[28] = "%.4f",		-- UGR_4K_bearing_needle_L {0.0, 1.0}
	----
	[101] = "%.4f",		-- UGR_4K_heading_R {0.0, 1.0}
	[103] = "%.4f",		-- UGR_4K_commanded_course_R {0.0, 1.0}
	[104] = "%.4f",		-- UGR_4K_bearing_needle_R {0.0, 1.0}
	-- Barometric altimeter VD-10K
	---------------------------------------------------------------
	[19] = "%.4f",		-- VD_10K_L_100 {0.0, 1.0}
	[20] = "%.4f",		-- VD_10K_L_10 {0.0, 1.0}
	[833] = "%.4f",		-- VD_10K_L_100_Ind {0.0, 1.0}
	[832] = "%.4f",		-- VD_10K_L_10_Ind {0.0, 1.0}
	[916] = "%.4f",		-- VD_10K_L_Shutter {0.822, 0.75}
	[21] = "%.4f",		-- VD_10K_L_PRESS {0.0, 1.0}
	-----
	[98] = "%.4f",		-- VD_10K_R_100 {0.0, 1.0}
	[99] = "%.4f",		-- VD_10K_R_10 {0.0, 1.0}
	[835] = "%.4f",		-- VD_10K_R_100_Ind {0.0, 1.0}
	[917] = "%.4f",		-- VD_10K_R_Shutter {0.822, 0.75}
	[834] = "%.4f",		-- VD_10K_R_10_Ind {0.0, 1.0}
	[100] = "%.4f",		-- VD_10K_R_PRESS {0.0, 1.0}
	-- Rotor RPM
	---------------------------------------------------------------
	[42] = "%.4f",		-- RotorRPM {0.0, 1.0}
	[787] = "%.4f",		-- RotorRPM_Oper {0.0, 1.0}
	-- Rotor Pitch
	---------------------------------------------------------------
	[36] = "%.2f",		-- RotorPitch {1.0, 2.0,  3.0,  4.0,  5.0,  6.0,  7.0,  8.0, 9.0,  10.0, 11.0, 12.0, 13.0, 14.0, 15.0} {0.0, 0.07, 0.14, 0.21, 0.29, 0.35, 0.43, 0.5, 0.57, 0.64, 0.71, 0.79, 0.86, 0.93, 1.0}
	-- Radar altimeter A-036
	---------------------------------------------------------------
	[34] = "%.3f",		-- A_036_RALT {0, 100, 300, 800} {0.0, 0.475, 0.625, 1.0}
	[31] = "%.3f",		-- A_036_DangerRALT_index {0, 100, 300, 800} {0.0, 0.475, 0.625, 1.0}
	[30] = "%.1f",		-- A_036_DangerRALT_lamp {0.0, 1.0}
	[33] = "%.1f",		-- A_036_warning_flag {0.0, 1.0}
	-- Engines RPM
	---------------------------------------------------------------
	[40] = "%.4f",		-- LeftEngineRPM {0.0, 110.0} {0.0, 1.0}
	[41] = "%.4f",		-- RightEngineRPM {0.0, 110.0} {0.0, 1.0}
	[788] = "%.4f",		-- LeftEngineRPM_Oper {0.0, 110.0} {0.0, 1.0}
	[789] = "%.4f",		-- RightEngineRPM_Oper {0.0, 110.0} {0.0, 1.0}
	-- Engines temperature
	---------------------------------------------------------------
	[43] = "%.4f",		-- LeftEngineTemperatureHund {0.0, 1200.0} {0.0, 1.0}
	[44] = "%.4f",		-- LeftEngineTemperatureTenth {0.0, 100.0} {0.0, 1.0}
	[45] = "%.4f",		-- RightEngineTemperatureHund {0.0, 1200.0} {0.0, 1.0}
	[46] = "%.4f",		-- RightEngineTemperatureTenth {0.0, 100.0} {0.0, 1.0}
	-- Engines mode indicator
	---------------------------------------------------------------
	[39] = "%.4f",		-- EnginesMode {0.0, 1.0}
	[37] = "%.4f",		-- LeftEngineMode {0.0, 1.0}
	[38] = "%.4f",		-- RightEngineMode {0.0, 1.0}
	-- Engines brakes
	---------------------------------------------------------------
	[204] = "%.1f",		-- left_engine_brake_handle {0.0, 1.0}
	[206] = "%.1f",		-- right_engine_brake_handle {0.0, 1.0}
	[203] = "%.1f",		-- left_engine_brake_handle_holder {0.0, 1.0}
	[205] = "%.1f",		-- right_engine_brake_handle_holder {0.0, 1.0}
	-- DISS 15
	---------------------------------------------------------------
	[830] = "%.4f",		-- diss15_hover_x {-1.0, 0, 1.0}
	[828] = "%.4f",		-- diss15_hover_y {-1.0, 1.0}
	[829] = "%.4f",		-- diss15_hover_z {-1.0, 1.0}
	[831] = "%.4f",		-- diss15_hover_lamp_off {0.0, 0.9}
	----
	[791] = "%.4f",		-- diss15_drift_angle {-1.0, 1.0}
	----
	[795] = "%.4f",		-- diss15_W_shutter {0.0, 1.0}
	[796] = "%.1f",		-- diss15_W_memory_lamp {1.0, 0.0}
	[792] = "%.4f",		-- diss15_W_hundreds {0.0, 1.0}
	[793] = "%.4f",		-- diss15_W_tens {0.0, 1.0}
	[794] = "%.4f",		-- diss15_W_ones {0.0, 1.0}
	----
	[817] = "%.4f",		-- diss15_coord_on_lamp {1.0, 0.0}
	[805] = "%.4f",		-- diss15_coord_forward {1.0, 0.0}
	[806] = "%.4f",		-- diss15_coord_X_hundreds {0.0, 1.0}
	[807] = "%.4f",		-- diss15_coord_X_tens {0.0, 1.0}
	[808] = "%.4f",		-- diss15_coord_X_ones {0.0, 1.0}
	[802] = "%.4f",		-- diss15_coord_right {0.0, 1.0}
	[799] = "%.4f",		-- diss15_coord_Z_hundreds {0.0, 1.0}
	[800] = "%.4f",		-- diss15_coord_Z_tens {0.0, 1.0}
	[801] = "%.4f",		-- diss15_coord_Z_ones {0.0, 1.0}
	[811] = "%.4f",		-- diss15_coord_angle_hundreds {0.0, 1.0}
	[812] = "%.4f",		-- diss15_coord_angle_tens {0.0, 1.0}
	[813] = "%.4f",		-- diss15_coord_angle_ones {0.0, 1.0}
	[814] = "%.4f",		-- diss15_coord_angle_minutes {0.0, 1.0}
	----
	[822] = "%.4f",		-- diss15_check_control_lamp {0.0, 0.9}
	[823] = "%.4f",		-- diss15_check_work_lamp {0.0, 0.9}
	[824] = "%.4f",		-- diss15_check_failM_lamp {0.0, 0.9}
	[825] = "%.4f",		-- diss15_check_failC_lamp {0.0, 0.9}
	-- Oil
	---------------------------------------------------------------
	[111] = "%.4f",		-- oils_p_main_reductor {0.0, 1.0}
	[114] = "%.2f",		-- oils_t_main_reductor {0.0, 1.0} {-0.25, 0.75}
	[113] = "%.2f",		-- oils_temp_tail_reductor {0.0, 1.0} {-0.25, 0.75}
	[112] = "%.2f",		-- oils_temp_intermediate_reductor {0.0, 1.0} {-0.25, 0.75}
	[115] = "%.4f",		-- oils_p_left_engine {0.0, 1.0}
	[116] = "%.2f",		-- oils_t_left_engine {-0.25, 0.75}
	[117] = "%.4f",		-- oils_p_right_engine {0.0, 1.0}
	[118] = "%.2f",		-- oils_t_right_engine {-0.25, 0.75}
	-- Autopilot
	---------------------------------------------------------------
	[122] = "%.4f",		-- autopilot_yaw_indicator {-1.0, 1.0}
	[124] = "%.4f",		-- autopilot_pitch_indicator {-1.0, 1.0}
	[123] = "%.2f",		-- autopilot_roll_indicator {-0.33, 0.33}
	[125] = "%.4f",		-- autopilot_altitude_indicator {-1.0, 1.0}
	[119] = "%.4f",		-- autopilot_yaw_scale {0.0, 1.0}
	[120] = "%.4f",		-- autopilot_roll_scale {0.0, 1.0}
	[121] = "%.4f",		-- autopilot_pitch_scale {0.0, 1.0}
	-- Center upper panel
	---------------------------------------------------------------
	[404] = "%.2f",		-- hydro_pressure_main {0.05, 0.33, 0.52, 0.69, 1.0}
	[405] = "%.2f",		-- hydro_pressure_aux {0.05, 0.33, 0.52, 0.69, 1.0}
	[402] = "%.2f",		-- APU_temperature {0.0, 0.2,   0.42,  0.69,  0.94,  1.0}
	[403] = "%.2f",		-- APU_pressure {0.04, 0.95}
	-- Mechanic clock
	---------------------------------------------------------------
	[49] = "%.4f",		-- CLOCK_currtime_hours {0.0, 1.0}
	[50] = "%.4f",		-- CLOCK_currtime_minutes {0.0, 1.0}
	[51] = "%.4f",		-- CLOCK_currtime_seconds {0.0, 1.0}
	[56] = "%.4f",		-- CLOCK_flight_time_meter_status {0.0, 1.0}
	[52] = "%.4f",		-- CLOCK_flight_hours {0.0, 1.0}
	[53] = "%.4f",		-- CLOCK_flight_minutes {0.0, 1.0}
	[54] = "%.4f",		-- CLOCK_seconds_meter_time_minutes {0.0, 1.0}
	[55] = "%.4f",		-- CLOCK_seconds_meter_time_seconds {0.0, 1.0}
	-- Fuel tanks
	---------------------------------------------------------------
	[62] = "%.3f",		-- FuelScaleUpper {0.0,	200.0,	400.0,	800.0,	1600.0,	2000.0,	2400.0, 2800.0} {0.0, 0.131, 0.244, 0.414, 0.647, 0.705, 0.9, 1.0}
	[62] = "%.3f",		-- FuelScaleLower {0.0,	200.0, 300.0,	400.0,	600.0, 1200.0, 2240.0} {0.0, 0.165, 0.283, 0.393, 0.618, 1.0}
	-- Air system gauges
	---------------------------------------------------------------
	[320] = "%.2f",		-- air_system_pressure {0.0, 25.0, 50.0, 100.0} {0.0, 0.23, 0.48, 1.0}
	[321] = "%.4f",		-- air_system_brake_pressure {0.0, 1.0}
	-- SPUU-52
	---------------------------------------------------------------
	[126] = "%.4f",		-- SPUU_pointer {-1.0, 1.0}
	[786] = "%.1f",		-- SPUU52_lamp {0.0, 1.0}
	-- PU-26 LAMP
	---------------------------------------------------------------
	[827] = "%.1f",		-- PU_26_GA_Lamp {0.0, 1.0} {0.0, 0.5}
	-- ARC-UD
	---------------------------------------------------------------
	[458] = "%.1f",		-- ARC_UD_Narrow_Lamp {0.0, 0.9}
	[459] = "%.1f",		-- ARC_UD_Wide_Lamp {0.0, 0.9}
	[460] = "%.1f",		-- ARC_UD_Pulse_Lamp {0.0, 0.9}
	-- ARC-9
	---------------------------------------------------------------
	[681] = "%.4f",		-- ARC_9_Signal {0.0, 1.0}
	----
	[857] = "%.4f",		-- PKV_Reflector {0.0, 1.0}
	----
	[778] = "%.4f",		-- SAFE_WEAP {0.0, 1.0}
	----
	[577] = "%.4f",		-- AMMO_CNT1_1 {0.0, 1.0}
	[578] = "%.4f",		-- AMMO_CNT1_2 {0.0, 1.0}
	[580] = "%.4f",		-- AMMO_CNT2_1 {0.0, 1.0}
	[581] = "%.4f",		-- AMMO_CNT2_2 {0.0, 1.0}
	[583] = "%.4f",		-- AMMO_CNT3_1 {0.0, 1.0}
	[584] = "%.4f",		-- AMMO_CNT3_2 {0.0, 1.0}
	-- Radio R-828
	---------------------------------------------------------------
	[740] = "%.2f",		-- R828_ASU {0.0, 1.0} {0.0, 0.95}
	[736] = "%.3f",		-- R828_channel {0, 1, 2, 3, 4, 5, 6, 7, 8, 9} {0.0, 0.101, 0.199, 0.302, 0.400, 0.502, 0.601, 0.697, 0.801, 0.898}
	-- Damage
	---------------------------------------------------------------
	--[215] = "%0.1f",		-- Blister_LEFT {0.0, 1.0} {0.0, 0.8}
	--[216] = "%0.1f",		-- Blister_RIGHT {0.0, 1.0} {0.0, 0.8}
	----
	--[878] = "%.1f",		-- WindShiels_Up {0.0, 1.0}
	--[879] = "%.1f",		-- WindShiels_Down {0.0, 1.0}
	-- UV-26
	---------------------------------------------------------------
	--[892] = "%.1f",		-- UV26_Left {0.0, 1.0}
	--[891] = "%.1f",		-- UV26_Right {0.0, 1.0}
	-- Pilots
	---------------------------------------------------------------
	--[245] = "%.1f",		-- Pilot_Body {0.0, 1.0}
	--[242] = "%.1f",		-- Operator_Body {0.0, 1.0}
	--[262] = "%.1f",		-- Crew_Body {0.0, 1.0}
	-- Damage
	---------------------------------------------------------------
	--[876] = "%.1f",		-- Upper_Windshield {0.0, 1.0}
	--[877] = "%.1f",		-- Down_Windshield {0.0, 1.0}
	--[879] = "%.1f",		-- Left_Windshield {0.0, 1.0}
	--[878] = "%.1f",		-- Right_Windshield {0.0, 1.0}
	-- Jadro 1A
	---------------------------------------------------------------
	[849] = "%.1f",		-- Jadro_ASU_Lamp {0.0, 1.0}
	[848] = "%.1f",		-- Jadro_Ctl_Lamp {0.0, 1.0}
	[850] = "%.1f",		-- Jadro_Breakdown_Lamp {0.0, 1.0}
	----
	[904] = "%.4f",		-- RAM_Temp {-50.0, 0.0, 70.0} {-1.0, 0.0, 1.0}
	----
	[907] = "%.4f",		-- G_Meter {-1.0, 1.0, 3.0} {-1.0, 0.343, 1.0}
	[908] = "%.4f",		-- G_Meter_Max {1.0, 3.0} {0.343, 1.0}
	[909] = "%.4f",		-- G_Meter_Min {-1.0, 1.0} {-1.0, 0.343}
	----
	[903] = "%1d",		-- filter_handle {0,1}
	----
	[63] = "%.4f",		-- SalonTemperature {-70.0, -60.0, -30.0, -20.0, -10.0, 0.0, 10.0, 20.0, 30.0, 60.0, 70.0} {-0.7, -0.593, -0.296, -0.227, -0.125, 0.003, 0.132, 0.233, 0.302, 0.603, 0.693}
	-- electric system gauges
	---------------------------------------------------------------
	[526] = "%.4f",		-- DC_voltage {0.0, 30.0} {0.0, 1.0}
	[532] = "%.2f",		-- AC_voltage {0.0, 100.0, 150.0, 200.0, 250.0} {0.0, 0.14, 0.31, 0.56, 1.0}
	[493] = "%.4f",		-- DC_APU_current {0.0, 400.0} {0.0, 1.0}
	[527] = "%.4f",		-- DC_battery_I_current {0.0, 400.0} {0.0, 1.0}
	[528] = "%.4f",		-- DC_battery_II_current {0.0, 400.0} {0.0, 1.0}
	[529] = "%.4f",		-- DC_VU_I_current {0.0, 400.0} {0.0, 1.0}
	[530] = "%.4f",		-- DC_VU_II_current {0.0, 400.0} {0.0, 1.0}
	[531] = "%.4f",		-- DC_VU_III_current {0.0, 400.0} {0.0, 1.0}
	[533] = "%.2f",		-- AC_generator_I_current {0.0,  50,  70,   90,   120,  130,  140,  150} {0.0, 0.1, 0.2, 0.36, 0.63, 0.75, 0.86, 1.0}
	[534] = "%.2f",		-- AC_generator_II_current {0.0,  50,  70,   90,   120,  130,  140,  150} {0.0, 0.1, 0.2, 0.36, 0.63, 0.75, 0.86, 1.0}
	[371] = "%.2f",		-- AntiIce_ampermeter {0.0,  50,  70,   90,   120,  130,  140,  150} {0.0, 0.1, 0.2, 0.36, 0.63, 0.75, 0.86, 1.0}
	-- LAMPS
	---------------------------------------------------------------
	[781] = "%.1f",		-- lamp_AP_heading_on
	[782] = "%.1f",		-- lamp_AP_heading_off
	[783] = "%.1f",		-- lamp_AP_pitch_roll_on
	[784] = "%.1f",		-- lamp_AP_height_on
	[785] = "%.1f",		-- lamp_AP_height_off
	[316] = "%.1f",		-- lamp_ENGINE_RT_LEFT_ON
	[317] = "%.1f",		-- lamp_ENGINE_RT_RIGHT_ON
	[318] = "%.1f",		-- lamp_SARPP_ON
	[325] = "%.1f",		-- lamp_Descent_Siren
	[326] = "%.1f",		-- lamp_LOCK_OPEN
	[327] = "%.1f",		-- lamp_DOORS_OPEN
	[340] = "%.1f",		-- lamp_TURN_ON_RI_65
	[360] = "%.1f",		-- lamp_FROST
	[362] = "%.1f",		-- lamp_LEFT_ENG_HEATING
	[363] = "%.1f",		-- lamp_RIGHT_ENG_HEATING
	[361] = "%.1f",		-- lamp_ANTI_ICE_ON
	[364] = "%.1f",		-- lamp_LEFT_PZU_FRONT
	[365] = "%.1f",		-- lamp_RIGHT_PZU_FRONT
	[366] = "%.1f",		-- lamp_LEFT_PZU_BACK
	[367] = "%.1f",		-- lamp_RIGHT_PZU_BACK
	[373] = "%.1f",		-- lamp_SECTION_1
	[375] = "%.1f",		-- lamp_SECTION_2
	[374] = "%.1f",		-- lamp_SECTION_3
	[376] = "%.1f",		-- lamp_SECTION_4
	[368] = "%.1f",		-- lamp_RIO_heating_ok
	[377] = "%.1f",		-- lamp_LEFT_ENG_FIRE
	[378] = "%.1f",		-- lamp_RIGHT_ENG_FIRE
	[379] = "%.1f",		-- lamp_KO50_FIRE
	[380] = "%.1f",		-- lamp_REDUC_AI9_FIRE
	[381] = "%.1f",		-- lamp_FIRE_LENG_1_QUEUE
	[382] = "%.1f",		-- lamp_FIRE_RENG_1_QUEUE
	[383] = "%.1f",		-- lamp_FIRE_KO50_1_QUEUE
	[384] = "%.1f",		-- lamp_FIRE_REDUCT_1_QUEUE
	[385] = "%.1f",		-- lamp_FIRE_LENG_2_QUEUE
	[386] = "%.1f",		-- lamp_FIRE_RENG_2_QUEUE
	[387] = "%.1f",		-- lamp_FIRE_KO50_2_QUEUE
	[388] = "%.1f",		-- lamp_FIRE_REDUCT_2_QUEUE
	[398] = "%.1f",		-- lamp_CHECK_SENSORS
	[407] = "%.1f",		-- lamp_HYDRO_main_on
	[408] = "%.1f",		-- lamp_HYDRO_aux_on
	[414] = "%.1f",		-- lamp_APD9_on
	[416] = "%.1f",		-- lamp_APD9_oil_pressure
	[417] = "%.1f",		-- lamp_APD9_rpm
	[418] = "%.1f",		-- lamp_APD9_rpm_high
	[420] = "%.1f",		-- lamp_APD_on
	[424] = "%.1f",		-- lamp_APD_starter_on
	[434] = "%.1f",		-- lamp_FUEL_left_closed
	[435] = "%.1f",		-- lamp_FUEL_right_closed
	[436] = "%.1f",		-- lamp_FUEL_ring_closed
	[441] = "%.1f",		-- lamp_FUEL_center_on
	[442] = "%.1f",		-- lamp_FUEL_left_on
	[443] = "%.1f",		-- lamp_FUEL_right_on
	[461] = "%.1f",		-- lamp_HEATER
	[462] = "%.1f",		-- lamp_IGNITION
	[463] = "%.1f",		-- lamp_KO50_ON
	[341] = "%.1f",		-- lamp_LEFT_PITOT_HEATER_OK
	[490] = "%.1f",		-- lamp_RIGHT_PITOT_HEATER_OK
	[509] = "%.1f",		-- lamp_LEFT_PZU_ON
	[510] = "%.1f",		-- lamp_RIGHT_PZU_ON
	[504] = "%.1f",		-- lamp_ELEC_turn_VU1
	[505] = "%.1f",		-- lamp_ELEC_turn_VU2
	[506] = "%.1f",		-- lamp_ELEC_turn_VU3
	[507] = "%.1f",		-- lamp_ELEC_DC_ground
	[508] = "%.1f",		-- lamp_ELEC_test_equipment
	[543] = "%.1f",		-- lamp_ELEC_gen1_fail
	[544] = "%.1f",		-- lamp_ELEC_gen2_fail
	[545] = "%.1f",		-- lamp_ELEC_AC_ground
	[546] = "%.1f",		-- lamp_ELEC_PO_500
	[86] = "%.1f",		-- lamp_CIRCUIT_FROM_BATTERY
	[68] = "%.1f",		-- lamp_CLOG_TF_LEFT
	[69] = "%.1f",		-- lamp_CLOG_TF_RIGHT
	[70] = "%.1f",		-- lamp_CHIP_LEFT_ENG
	[71] = "%.1f",		-- lamp_CHIP_RIGHT_ENG
	[72] = "%.1f",		-- lamp_VIBRATION_LEFT_HIGH
	[73] = "%.1f",		-- lamp_VIBRATION_RIGHT_HIGH
	[74] = "%.1f",		-- lamp_FIRE
	[76] = "%.1f",		-- lamp_LEFT_ENG_TURN_OFF
	[77] = "%.1f",		-- lamp_RIGHT_ENG_TURN_OFF
	[78] = "%.1f",		-- lamp_FT_LEFT_HIGH
	[79] = "%.1f",		-- lamp_FT_RIGHT_HIGH
	[80] = "%.1f",		-- lamp_OIL_PRESSURE_LEFT
	[81] = "%.1f",		-- lamp_OIL_PRESSURE_RIGHT
	[82] = "%.1f",		-- lamp_ER_LEFT
	[83] = "%.1f",		-- lamp_ER_RIGHT
	[84] = "%.1f",		-- lamp_EEC_LEFT_OFF
	[85] = "%.1f",		-- lamp_EEC_RIGHT_OFF
	[873] = "%.1f",		-- lamp_CHIP_MAIN_REDUCTOR
	[874] = "%.1f",		-- lamp_CHIP_INTER_REDUCTOR
	[875] = "%.1f",		-- lamp_CHIP_TAIL_REDUCTOR
	[64] = "%.1f",		-- lamp_300_Left
	[65] = "%.1f",		-- lamp_DISS_OFF
	[555] = "%.1f",		-- lamp_BD1
	[556] = "%.1f",		-- lamp_BD2
	[557] = "%.1f",		-- lamp_BD3
	[558] = "%.1f",		-- lamp_BD4
	[559] = "%.1f",		-- lamp_BD5
	[560] = "%.1f",		-- lamp_BD6
	[711] = "%.1f",		-- lamp_BD1Bomb
	[712] = "%.1f",		-- lamp_BD2Bomb
	[713] = "%.1f",		-- lamp_BD3Bomb
	[714] = "%.1f",		-- lamp_BD4Bomb
	[715] = "%.1f",		-- lamp_BD5Bomb
	[716] = "%.1f",		-- lamp_BD6Bomb
	[562] = "%.1f",		-- lamp_PUS1
	[563] = "%.1f",		-- lamp_PUS3
	[564] = "%.1f",		-- lamp_PUS4
	[565] = "%.1f",		-- lamp_PUS6
	[561] = "%.1f",		-- lamp_EmergExplode
	[705] = "%.1f",		-- lamp_EmergExplodeSec
	[710] = "%.1f",		-- lamp_BV_Net_On
	[566] = "%.1f",		-- lamp_RS_Net_On
	[567] = "%.1f",		-- lamp_GUV_Net_On
	--[] = "%.1f",		-- lamp_MV_Net_On
	[568] = "%.1f",		-- lamp_FKP_On
	[778] = "%.1f",		-- lamp_Caution_Weap
	--[] = "%.1f",		-- lamp_LeftSignal
	--[] = "%.1f",		-- lamp_RightSignal
	[586] = "%.1f",		-- lamp_Caution_Weap1
	[587] = "%.1f",		-- lamp_Caution_Weap2
	[588] = "%.1f",		-- lamp_Caution_Weap3
	[306] = "%.1f",		-- lamp_Record_P503B
	[302] = "%.1f",		-- lamp_IFF_KD
	[303] = "%.1f",		-- lamp_IFF_KP
	[912] = "%.1f",		-- lamp_IFF_TurnOnReserve
	[87] = "%.1f",		-- lamp_IFF_Failure
	-- Lights system
	---------------------------------------------------------------
	[880] = "%.1f",		-- RedLightLhGr1 {1.0, 0.0}
	[896] = "%.1f",		-- RedLightLhGr2 {1.0, 0.0}
	[897] = "%.1f",		-- RedLightRhGr1 {1.0, 0.0}
	[898] = "%.1f",		-- RedLightRhGr2 {1.0, 0.0}
	[899] = "%.1f",		-- RedLightChGr1 {1.0, 0.0}
	[901] = "%.1f",		-- RedLightChGr2 {1.0, 0.0}
	[922] = "%.1f",		-- RedLightChGr12 {1.0, 0.0}
	[902] = "%.1f",		-- RedLight5V5 {1.0, 0.0}
	[900] = "%.1f",		-- PlafondBrightness {1.0, 0.0}
	[547] = "%.1f",		-- LeftPlafond {1.0, 0.0}
	[665] = "%.1f",		-- RightPlafond {1.0, 0.0}
	[920] = "%.1f"		-- RecorderP503B_PanelLightness {1.0, 0.0}
}
gES_GlassCockpitConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	-- ELEC_INTERFACE
	--[536] = "%.1f",		-- PTR-EEP-LVR-ADJV1 (AC Voltage 1 set rotary) {-1, 1}
	--[537] = "%.1f",		-- PTR-EEP-LVR-ADJV2 (AC Voltage 2 set rotary) {-1, 1}
	[538] = "%1d",		--PTR-EEP-TMB-GEN1 (Generator 1)
	[539] = "%1d",		--PTR-EEP-TMB-GEN2 (Generator 2)
	[540] = "%1d",		--PTR-EEP-TMB-AER (AC ground power)
	[541] = "%1d",		--PTR-EEP-TMB-PO (115V Inverter)
	[542] = "%1d",		--PTR-EEP-TMB-PT (36V Inverter)
	[535] = "%.1f",		--PTR-EEP-LVR-MODE (AC Mode), 11 degrees
	[494] = "%.1f",		--PTR-RSPE-LVR-FEEDMODE (DC Bus Selector), 8 degrees

	[495] = "%1d",		--PTR-RSPE-TMB-AKK1 (Battery 1)
	[496] = "%1d",		--PTR-RSPE-TMB-AKK2 (Battery 2)
	[497] = "%1d",		--PTR-RSPE-TMB-RESGEN (Standby Generator)
	--[498] = "%.1f",		-- PTR-RSPE-LVR-V (DC Voltage set rotary) {-1, 1}
	[499] = "%1d",		--PTR-RSPE-TMB-RECT1 (Rectifier 1)
	[500] = "%1d",		--PTR-RSPE-TMB-RECT2 (Rectifier 2)
	[501] = "%1d",		--PTR-RSPE-TMB-RECT3 (Rectifier 3)
	[502] = "%1d",		--PTR-RSPE-TMB-AERF (DC ground power)
	[503] = "%1d",		--PTR-RSPE-TMB-TESTEQU (Equipment Test)

	[147] = "%1d",		--PTR-APP-CVR-CIRC (Standby Rectifier Cover)
	[148] = "%1d",		--PTR-APP-TMB-CIRC (Standby Rectifier)
	[149] = "%1d",		--PTR-APP-TMB-TRNS (36V Transformer)

	[498] = "%.4f",		--PTR-RSPE-LVR-V (Standby Generator Voltage Adjustment Rheostat)
	[536] = "%.4f",		--PTR-EEP-LVR-ADJV1 (Generator 1 Voltage Adjustment Rheostat)
	[537] = "%.4f",		--PTR-EEP-LVR-ADJV2 (Generator 2 Voltage Adjustment Rheostat)
	[522] = "%.4f",		--PTR-RSPE-TMB-WRMAKK (Battery Heating Switch, ON/OFF)

	[590] = "%1d",		--PTR-LAZS-TMB-BV-ZSBR (BW ESBR)
	[591] = "%1d",		--PTR-LAZS-TMB-BV-EXP (Explode)
	[592] = "%1d",		--PTR-LAZS-TMB-BV-DIR (Control)
	[593] = "%1d",		--PTR-LAZS-TMB-BV-EQU (Equipment)
	[594] = "%1d",		--PTR-LAZS-TMB-RSGUV-FIRE (RS/GUV Fire)
	[595] = "%1d",		--PTR-LAZS-TMB-RSGUV-SIGN (RS/GUV Warning)
	[596] = "%1d",		--PTR-LAZS-TMB-RSGUV-WARM (ESBR Heating)

	[597] = "%1d",		--PTR-LAZS-TMB-311 (GUV Out 800 Left)
	[598] = "%1d",		--PTR-LAZS-TMB-GUOUT-800L (GUV Out 800 Left)
	[599] = "%1d",		--PTR-LAZS-TMB-GUOUT-800R (GUV Out 800 Right)
	[600] = "%1d",		--PTR-LAZS-TMB-GUOUTL-622L (GUV In Left 622 Left)
	[601] = "%1d",		--PTR-LAZS-TMB-GUOUTL-622R (GUV In Left 622 Right)
	[602] = "%1d",		--PTR-LAZS-TMB-GUOUTR-622L (GUV In Right 622 Left)
	[603] = "%1d",		--PTR-LAZS-TMB-GUOUTR-622R (GUV In Rignt 622 Right)

	[604] = "%1d",		--PTR-LAZS-TMB-ES-800L (Electric Launch 800 Left)
	[605] = "%1d",		--PTR-LAZS-TMB-ES-622R (Electric Launch 800 Right)
	[606] = "%1d",		--PTR-LAZS-TMB-PKT (PKT)
	[607] = "%1d",		--PTR-LAZS-TMB-JETBOMB (Emergency Jettison)
	[608] = "%1d",		--PTR-LAZS-TMB-JETPWR (Power Jettison)
	[609] = "%1d",		--PTR-LAZS-TMB-JETEXPL (Emergency Jettison)
	[610] = "%1d",		--PTR-LAZS-TMB-JETRCKT (Alarm rockets)

	[611] = "%1d",		--PTR-RAZS-TMB-START-TRBON (CB APU start)
	[612] = "%1d",		--PTR-RAZS-TMB-START-TRBIGN (CB APU ignition)
	[613] = "%1d",		--PTR-RAZS-TMB-START-ENGON (CB Engine start)
	[614] = "%1d",		--PTR-RAZS-TMB-START-ENGIGN (CB Engine ignition)
	[615] = "%1d",		--PTR-RAZS-TMB-RPM (CB RPM CONTROL)
	[616] = "%1d",		--PTR-NONAME (CB NONAME)
	[617] = "%1d",		--PTR-SW-LOCKER-BASE (CB Lock Opening Control Main)
	[618] = "%1d",		--PTR-SW-LOCKER-RES (CB Lock Opening Control Reserve)
	[619] = "%1d",		--PTR-RAZS-TMB-TURN (CB TURN INDICATOR)

	[629] = "%1d",		--PTR-RAZS-TMB-TSCOCK-ON (CB Bypass)
	[630] = "%1d",		--PTR-RAZS-TMB-TSCOCK-L (CB Left valve)
	[631] = "%1d",		--PTR-RAZS-TMB-TSCOCK-R (CB Right valve)
	[632] = "%1d",		--PTR-RAZS-TMB-TSCOUNT (CB Fuelmeter)
	[633] = "%1d",		--PTR-RAZS-TMB-TSPMP-C (CB Center tank)
	[634] = "%1d",		--PTR-RAZS-TMB-TSPMP-L (CB Left pump)
	[635] = "%1d",		--PTR-RAZS-TMB-TSPMP-R (CB Right pump)
	[636] = "%1d",		--PTR-RAZS-TMB-T819 (CB T-819)
	[637] = "%1d",		--PTR-RAZS-TMB-SPPU52 (CB SPUU-52)

	[647] = "%1d",		--PTR-RAZS-TMB-HLGT-DIR-L (SPOT CONTROL LEFT)
	[648] = "%1d",		--PTR-RAZS-TMB-HLGT-ON-L (SPOT ON LEFT)
	[649] = "%1d",		--PTR-RAZS-TMB-HLGT-DIR-R (SPOT CONTROL RIGHT)
	[650] = "%1d",		--PTR-RAZS-TMB-HLGT-ON-R (SPOT ON RIGHT)
	[651] = "%1d",		--PTR-RAZS-TMB-ANO (ANO)
	[652] = "%1d",		--PTR-RAZS-TMB-WNGLGT (WING LIGHTS)
	[653] = "%1d",		--PTR-RAZS-TMB-LAMPTEST (CHECK LAMPS/FLASHER)
	--[654] = "%1d",		-- PTR-RAZS-TMB-DIRMAIN (LOCK MAIN) 
	--[655] = "%1d",		-- PTR-RAZS-TMB-DIRDUB (LOCK SPARE)
	[918] = "%1d",		--PTR-SW-LIGHT-PRF4-LEFT (CB PRF-4 Light Left)
	[919] = "%1d",		--PTR-SW-LIGHT-PRF4-RIGHT (CB PRF-4 Light Right)

	[620] = "%1d",		--PTR-RAZS-TMB-APMAIN (CB Autopilot MAIN)
	[621] = "%1d",		--PTR-RAZS-TMB-APFRICT (CB Autopilot Frict)
	[622] = "%1d",		--PTR-RAZS-TMB-APELCT (CB Autopilot Clutch)
	[623] = "%1d",		--PTR-RAZS-TMB-GSMAIN (CB Hydro Main)
	[624] = "%1d",		--PTR-RAZS-TMB-GSDBL (CB Hydro Aux)
	[625] = "%1d",		--PTR-RAZS-TMB-RADSPU (CB SPU (Intercom))
	[626] = "%1d",		--PTR-RAZS-TMB-RADALT (CB Radio Altimeter)
	[627] = "%1d",		--PTR-RAZS-TMB-RADCOMM (CB Command Radio Station (R-863))
	[628] = "%1d",		--PTR-RAZS-TMB-RADRS (CB 6201)

	[638] = "%1d",		--PTR-RAZS-TMB-PPSSIGN (CB Signalization)
	[639] = "%1d",		--PTR-RAZS-TMB-PPSQUE1-L (CB 1 Queue Left)
	[640] = "%1d",		--PTR-RAZS-TMB-PPSQUE1-R (CB 1 Queue Right)
	[641] = "%1d",		--PTR-RAZS-TMB-PPSQUE2-L (CB 2 Queue Left)
	[642] = "%1d",		--PTR-RAZS-TMB-PPSQUE2-R (CB 2 Queue Right)
	[643] = "%1d",		--PTR-RAZS-TMB-RADCMP-SV (CB Radio Compass MW(ARC-9))
	[644] = "%1d",		--PTR-RAZS-TMB-RADCMP-UKV (CB Radio Compass VHF(ARC-UD))
	[645] = "%1d",		--PTR-RAZS-TMB-RADDISS (CB Doppler Navigator)
	[646] = "%1d",		--PTR-RAZS-TMB-RADRNTG (CB Radio Meter)

	[656] = "%1d",		--PTR-RAZS-TMB-POSDIR (CONTROL)
	[657] = "%1d",		--PTR-RAZS-TMB-POSPZUENG-L (LEFT ENGINE)
	[658] = "%1d",		--PTR-RAZS-TMB-POSPZUENG-R (RIGHT ENGINE)
	[659] = "%1d",		--PTR-RAZS-TMB-POSRIO3 (RIO-3)
	[660] = "%1d",		--PTR-RAZS-TMB-POSGLS (WINDOW)
	[661] = "%1d",		--PTR-RAZS-TMB-WIPER-L (LEFT ENGINE)
	[662] = "%1d",		--PTR-RAZS-TMB-WIPER-R (RIGHT ENGINE)
	[663] = "%1d",		--PTR-RAZS-TMB-L1800 (RIO-3)
	[664] = "%1d",		--PTR-RAZS-TMB-KO50 (WINDOW)

	[882] = "%1d",		--PTR-GRAZS-1 (CB Group 1)
	[883] = "%1d",		--PTR-GRAZS-2 (CB Group 4)
	[884] = "%1d",		--PTR-GRAZS-3 (CB Group 7)
	[885] = "%1d",		--PTR-GRAZS-4 (CB Group 2)
	[886] = "%1d",		--PTR-GRAZS-5 (CB Group 5)
	[887] = "%1d",		--PTR-GRAZS-6 (CB Group 8)
	[888] = "%1d",		--PTR-GRAZS-7 (CB Group 3)
	[889] = "%1d",		--PTR-GRAZS-8 (CB Group 6)
	[890] = "%1d",		--PTR-GRAZS-9 (CB Group 9)
	-------------------------------------------------------------
	-- FUELSYS INTERFACE
	[438] = "%1d",		--PTR-CPE-TMB-PUMP-RATE (Service tank pump)
	[439] = "%1d",		--PTR-CPE-TMB-PUMPTNK-L (Left fuel tank pump)
	[440] = "%1d",		--PTR-CPE-TMB-PUMPTNK-R (Right fuel tank pump)
	[427] = "%1d",		--PTR-CPE-TMB-PUMP-L (Left Engine Shutoff Valve)
	[429] = "%1d",		--PTR-CPE-TMB-PUMP-R (Right Engine Shutoff Valve)
	[426] = "%1d",		--PTR-CPE-CVR-PUMP-L (Left Engine Shutoff Valve Cover)
	[428] = "%1d",		--PTR-CPE-CVR-PUMP-R (Right Engine Shutoff Valve Cover)
	[431] = "%1d",		--PTR-CPE-TMB-PUMP-RING (Crossfeed)
	[430] = "%1d",		--PTR-CPE-CVR-PUMP-RING (Crossfeed Cover)

	[433] = "%1d",		--PTR-CPE-TMB-PUMP-PASS (Bypass)
	[432] = "%1d",		--PTR-CPE-CVR-PUMP-PASS (Bypass Cover)
	[437] = "%.1f",		--PTR-CPE-TMB-PUMP-CONTR (Refueling Control Switch)
	-------------------------------------------------------------
	-- ENGINE INTERFACE
	[412] = "%1d",		--PTR-CPE-TMB-TURBOSTART-ST (APU start mode)
	[413] = "%1d",		--PTR-CPE-BTN-TURBOSTART-ON (APU start)
	[415] = "%1d",		--PTR-CPE-BTN-TURBOSTART-OFF (APU stop)

	[419] = "%1d",		--PTR-CPE-BTN-ENGSTART-ON (Engine start ON)
	[421] = "%1d",		--PTR-CPE-BTN-ENGSTART-OFF (Engine start OFF)
	[422] = "%1d",		--PTR-CPE-TMB-ENGSTART-LFTRGT (Select engine)
	[423] = "%1d",		--PTR-CPE-TMB-ENGSTART-ROLL (Engine start mode)
	[425] = "%1d",		-- PTR-CPE-BTN-ENGSTART-TEST (Engine ignition check)

	[204] = "%1d",		--PTR-ENGSTOP-ARM-L (Left engine stop)
	[206] = "%1d",		--PTR-ENGSTOP-ARM-R (Right engine stop)
	[208] = "%1d",		--PTR-VINTBRAKE-ARM (Rotor brake)

	[310] = "%1d",		--PTR-LSPE-BTN-CONTR-IV500 (Vibration Sensor Test) 
	[311] = "%1d",		--PTR-LSPE-BTN-CONTR-GRND (Temperature Sensor Test Cold)
	[312] = "%1d",		--PTR-LSPE-BTN-CONTR-AIR (Temperature Sensor Test Hot)
	[313] = "%1d",		--PTR-LSPE-BTN-CONTR-RTL (Temperature Regulator Test Left)
	[314] = "%1d",		--PTR-LSPE-BTN-CONTR-RTR (Temperature Regulator Test Right)

	[202] = "%1d",		--PTR-STKSGR-TMB-RPM-LEFT
	[867] = "%1d",		--PTR-STKSGR-TMB-RPM-RIGHT
	--[0] = "%.4f",		--PTR-STKSEC-ARM-L (Left Engine Throttle)
	--[0] = "%.4f",		--PTR-STKSEC-ARM-R (Right Engine Throttle)
	--[0] = "%.4f",		--PKT-TROTTLE_L (Left Collective / Throttle)
	--[0] = "%.4f",		--PKT-TROTTLE_R (Right Collective / Throttle)

	[167] = "%1d",		--PTR-APP-TMB-ERD-L (EEC Left)
	[173] = "%1d",		--PTR-APP-TMB-ERD-R (EEC Right)
	[168] = "%1d",		--PTR-APP-TMB-CHR-L (ER Left)
	[172] = "%1d",		--PTR-APP-TMB-CHR-R (ER Right)
	[169] = "%1d",		--PTR-APP-TMB-ST-L (FT Check Left)
	[171] = "%1d",		--PTR-APP-TMB-ST-R (FT Check Right)
	[170] =	"%1d",		--PTR-APP-TMB-TKLR (CT check)
	-------------------------------------------------------------
	-- HYDRO SYS INTERFACE
	[406] = "%1d",		--PTR-CPE-TMB-HYDRO-MAIN (Main Hydro)
	[410] = "%1d",		--PTR-CPE-TMB-HYDRO-DBL (Aux Hydro)
	[409] = "%1d",		--PTR-CPE-CVR-HYDRO-DBL (Aux Hydro Cover)
	[411] = "%1d",		--PTR-CPE-BTN-DBLOFF (Aux Hydro Off)
	-------------------------------------------------------------
	-- AUTOPILOT
	[134] = "%1d",		--PTR-APP-BTN-DIRON (Autopilot Heading ON/Lamp Intensity. Rotate mouse wheel to set lamp intensity), Button
	[868] = "%.4f",		--PTR-APP-BTN-DIRON (Autopilot Heading ON/Lamp Intensity. Rotate mouse wheel to set lamp intensity), Axis
	[135] = "%1d",		--PTR-APP-BTN-DIROFF (Autopilot Heading OFF/Lamp Intensity. Rotate mouse wheel to set lamp intensity), Button
	[869] = "%.4f",		--PTR-APP-BTN-DIROFF (Autopilot Heading OFF/Lamp Intensity. Rotate mouse wheel to set lamp intensity), Axis

	[138] = "%1d",		--PTR-APP-BTN-KTON (Autopilot Pitch/Roll ON/Lamp Intensity. Rotate mouse wheel to set lamp intensity), Button
	[870] = "%.4f",		--PTR-APP-BTN-KTON (Autopilot Pitch/Roll ON/Lamp Intensity. Rotate mouse wheel to set lamp intensity), Axis
	[144] = "%1d",		--PTR-APP-BTN-ALTON (Autopilot Altitude ON/Lamp Intensity. Rotate mouse wheel to set lamp intensity), Button
	[871] = "%.4f",		--PTR-APP-BTN-ALTON (Autopilot Altitude ON/Lamp Intensity. Rotate mouse wheel to set lamp intensity), Axis
	[145] = "%1d",		--PTR-APP-BTN-ALTOFF (Autopilot Altitude OFF/Lamp Intensity. Rotate mouse wheel to set lamp intensity), Button
	[872] = "%.4f",		--PTR-APP-BTN-ALTOFF (Autopilot Altitude OFF/Lamp Intensity. Rotate mouse wheel to set lamp intensity), Axis

	[146] = "%1d",		--PTR-APP-BTN-CONTR (Autopilot Altitude Channel Control)

	[136] = "%.4f",		--PTR-APP-LVR-DIR (Autopilot Heading Adjustment)
	[140] = "%.4f",		--PTR-APP-LVR-K (Autopilot Roll Adjustment)
	[142] = "%.4f",		--PTR-APP-LVR-T (Autopilot Pitch Adjustment)

	[183] = "%1d",		--PTR-AUTOPILOT-OFF-L (Autopilot Off Left Button)
	[226] = "%1d",		--PTR-AUTOPILOT-OFF-R (Autopilot Off Right Button)
	-------------------------------------------------------------
	-- RADAR ALTIMETER
	[32] = "%1d",		--PTR-ALTR-LVR-TEST (Radio altimeter test)
	[29] = "%.4f",		--PTR-ALTR-LVR-SET (Dangerous RALT set rotary) {0, 1}
	[35] = "%1d", 		--PTR-ALTR-TMB-ONOFF (Radar Altimeter Power)
	-------------------------------------------------------------
	-- BAR ALTIMETER
	[18] = "%.4f",		--PTR-ALTB-LVR-SET (Baro pressure QFE knob)
	[97] = "%.4f",		--PTR-ALTB-LVR-SET-R (Baro pressure QFE knob)
	-------------------------------------------------------------
	-- VARIOMETER
	[17] = "%.4f",		--PTR-VARIO-LVR-SET-L (Variometer adjustment knob)
	[96] = "%.4f",		--PTR-VARIO-LVR-SET-R (Variometer adjustment knob)
	-------------------------------------------------------------
	--HSI
	[26] = "%.4f",		--PTR-PNP-LVR-SET (HSI Course set knob)
	[858] = "%1d",		--PTR-ARKSV-ARKUKV (HSI ARC-9/ARC-UD Select)

	[102] = "%.4f",		--PTR-PNP-LVR-SET-R (HSI Course set knob)
	-------------------------------------------------------------
	-- FUELSYS INTERFACE
	[61] = "%.1f",		--PTR-FUEL-LVR-MODE (Fuel meter switch)
	-------------------------------------------------------------
	-- WEAPON SYS
	[921] = "%1d",		--PTR-SAFE-WEAPON (Weapon Safe-Armed)
	[707] = "%1d",		--PTR-ADDPBV-TMB-EMRGEXP (Emergency Explode)
	[706] = "%1d",		--PTR-ADDPBV-CVR-EMRGEXP (Emergency Explode Cover)

	[709] = "%1d",		--PTR-ADDPBV-TMB-EMRGJET (Emergency Release)
	[708] = "%1d",		--PTR-ADDPBV-CVR-EMRGJET (Emergency Release Cover)

	[717] = "%1d",		--PTR-ADDPBV-TMB-MAINOFF (Main Bombs)
	[718] = "%1d",		--PTR-ADDPBV-BTN-LAMPTEST (Lamps Check)

	[719] = "%.1f",		--PTR-ADDPBV-LVR-MODE (Pod Variants)
	[720] = "%1d",		--PTR-ADDPBV-TMB-WARM (ESBR Heat)

	[730] = "%.4f",		--PTR-ADDESBR-LVR-MODE (ESBR Position)
	[731] = "%1d",		--PTR-ADDESBR-LVR-ONOFF (ESBR On/Off)

	[570] = "%1d",		--PTR-LAZS-TMB-EMRGEXP (Emergency Explode)
	[572] = "%1d",		--PTR-LAZS-TMB-EMRGJET (Emergency Release)
	[569] = "%1d",		--PTR-LAZS-CVR-EMRGEXP (Emergency Explode Cover)
	[571] = "%1d",		--PTR-LAZS-CVR-EMRGJET (Emergency Release Cover)

	--[573] = "%1d",		-- PTR-LAZS-TMB-MAINOFF (Main On/Off)
	[575] = "%1d",		--PTR-LAZS-TMB-RSGUV (RS/GUV Selector)
	[576] = "%1d",		--PTR-LAZS-BTN-LAMPTEST (Lamps Check)
	[574] = "%1d",		--PTR-LAZS-BTN-ENTER (PUS Arming)

	[342] = "%1d",		--PTR-LPE-TMB-SHOOT1 (8/16/4)
	[343] = "%1d",		--PTR-LPE-TMB-SHOOT2 (1256/AUTO/34)
	[344] = "%1d",		--PTR-LPE-TMB-RS (UPK/PKT/RS)
	[345] = "%1d",		--PTR-LPE-TMB-GUV (CUTOFF)
	[349] = "%1d",		--PTR-LAZS-TMB-MAINOFF05 (800_or_624_622_800)
	[348] = "%1d",		--PTR-LAZS-CVR-EMRGEXP01 (800 or 624_622_800 Cover)

	[347] = "%.4f",		--PTR-LPE-TMB-VAR (In800Out/800inOr624/622)

	[346] = "%.4f",		--PTR-LPE-LVR-SHELL (Burst length)

	[350] = "%.4f",		--PTR-LPE-TMB-PYRO-L (PYROCARTRIDGE Left)
	[351] = "%.4f",		--PTR-LPE-TMB-PYRO-R (PYROCARTRIDGE Right)

	[573] = "%1d",		--PTR-LAZS-TMB-MAINOFF (Mine Arms Main Switch)
	[905] = "%1d",		--PTR-RSPE-TMB-PKT (PKT Selector Switch)
	-------------------------------------------------------------
	-- SYS CONTROLLER
	[523] = "%1d",		--PTR-RSPE-TMB-WINK (FLASHER)
	[525] = "%1d",		--PTR-RSPE-TMB-TAB (Transparent Day/Night)
	[150] = "%1d",		--PTR-APP-TMB-TEST (CHECK LAMPS/FLASHER)
	-------------------------------------------------------------
	-- SPUU-52
	[332] = "%1d",		--PTR-LES-TMB-SPPU52 (SPUU-52 Power)
	[127] = "%1d",		--PTR-APP-BTN-OFF (SPUU-52 Control Engage)
	[129] = "%1d",		--PTR-APP-TMB-RT (SPUU-52 Control (Left button - P. Right button - t))
	[128] = "%.4f",		--PTR-APP-LVR-ADJ (SPUU 52 Control Adjustment)
	-------------------------------------------------------------
	-- FIRE EXTING INTERFACE
	[389] = "%1d",		--PTR-CPE-BTN-QUE1-1 (Main Discharge L ENG)
	[390] = "%1d",		--PTR-CPE-BTN-QUE1-2 (Main Discharge R ENG)
	[391] = "%1d",		--PTR-CPE-BTN-QUE1-3 (Main Discharge KO-50)
	[392] = "%1d",		--PTR-CPE-BTN-QUE1-4 (Main Discharge APU GEAR)
	[393] = "%1d",		--PTR-CPE-BTN-QUE2-1 (Alternate Discharge L ENG)
	[394] = "%1d",		--PTR-CPE-BTN-QUE2-2 (Alternate Discharge R ENG)
	[395] = "%1d",		--PTR-CPE-BTN-QUE2-3 (Alternate Discharge KO-50)
	[396] = "%1d",		--PTR-CPE-BTN-QUE2-4 (Alternate Discharge APU GEAR)
	[397] = "%1d",		--PTR-CPE-BTN-FIRE-OFF (Turn Off Fire Signal)

	[399] = "%1d",		--PTR-CPE-TMB-CONTR-FIRE (Fire Detector Test)
	[400] = "%1d",		--PTR-CPE-TMB-CONTR-PYRO (Squib Test)
	[401] = "%.1f",		--PTR-CPE-LVR-CONTR-MODE (Check Fire circuits)
	-------------------------------------------------------------
	-- ENGINE INTERFACE
	[353] = "%1d",		--PTR-LPE-TMB-MANAUT (AUTO-MANUAL)
	[354] = "%1d",		--PTR-LPE-BTN-OVR (GENERAL OFF)
	[355] = "%1d",		--PTR-LPE-TMB-PZU-L (LEFT ENGINE)
	[356] = "%1d",		--PTR-LPE-TMB-PZU-R (RIGHT ENGINE)
	[357] = "%1d",		--PTR-LPE-TMB-GLASS (WINDOW)
	[358] = "%1d",		--PTR-LPE-TMB-RIO (Ice Detector Heater)
	[359] = "%1d",		--PTR-LPE-BTN-RIOCONTR (Ice Detector Heater Test)
	[372] = "%.1f",		--PTR-LPE-LVR-FEEDMODE (Anti Ice Sections Current)

	[519] = "%1d",		--PTR-RSPE-TMB-WRMPVD-L (Left Pitot Heater)
	[520] = "%1d",		--PTR-RSPE-TMB-WRMPVD-R (Right Pitot Heater)
	[339] = "%1d",		--PTR-LES-BTN-CONTRPVD (Left Pitot Heater Control)
	[482] = "%1d",		--PTR-LES-BTN-CONTRPVD01 (Right Pitot Heater Control)
	-------------------------------------------------------------
	-- DISS 15
	[483] = "%1d",		--PTR-RES-TMB-DISS (Doppler Navigator, Power)
	[818] = "%1d",		--PTR-DISS-BTN-OFF (Turn Off Coordinates Calculator)
	[819] = "%1d",		--PTR-DISS-BTN-ON (Turn On Coordinates Calculator)
	[815] = "%1d",		--PTR-DISS-BTN-MINUS (Decrease Map Angle)
	[816] = "%1d",		--PTR-DISS-BTN-PLUS (Increase Map Angle)
	[809] = "%1d",		--PTR-DISS-BTN-N (Decrease Path KM)
	[810] = "%1d",		--PTR-DISS-BTN-V (Increase Path KM)
	[803] = "%1d",		--PTR-DISS-BTN-TOLE (Decrease Deviation KM)
	[804] = "%1d",		--PTR-DISS-BTN-TORI (Increase Deviation KM)
	[826] = "%.1f",		--PTR-IND-DISS-SELECTOR (Mode Switch)
	[797] = "%1d",		--PTR-DISS-SELECTOR-KR (Test/Work)
	[798] = "%1d",		--PTR-DISS-SELECTOR-SM (Land/Sea)
	-------------------------------------------------------------
	-- ADI
	[487] = "%1d",		--PTR-RES-TMB-AG (Right Attitude Indicator Power)
	[335] = "%1d",		--PTR-LES-TMB-AG (Left Attitude Indicator Power)
	[11] = "%1d",		--PTR-AGB-LVR-KNOB (Left Attitude Indicator Cage)
	[10] = "%.4f",		--PTR-AGB-LVR-SET (Left Attitude Indicator Zero pitch trim)
	[90] = "%1d",		--PTR-AGB-LVR-KNOB-R (Right Attitude Indicator Cage)
	[89] = "%.4f",		--PTR-AGB-LVR-SET-R (Right Attitude Indicator Zero pitch trim)
	-------------------------------------------------------------
	-- 
	[336] = "%1d",		--PTR-LES-TMB-VK53 (VK-53, Power)
	-------------------------------------------------------------
	-- GMK1A
	[485] = "%1d",		--PTR-RES-TMB-GMK (GMC Power)
	[470] = "%1d",		--PTR-RPE-LVR-CRDNS (GMC Hemisphere Selection)
	[472] = "%1d",		--PTR-RPE-LVR-CRDMK (GMC Mode (MC, DG, AC(N/F)))
	[476] = "%.1f",		--PTR-RPE-LVR-CRDCONTR (GMC Control (Left - 0, Right - 300)) {-1.0,0.0,1.0}
	[477] = "%.1f",		--PTR-RPE-LVR-CRDZK (GMC Course Setting (Left - CCW, Right - CW)) {-1.0,0.0,1.0}
	[474] = "%.4f",		--PTR-RPE-LVR-CRDLAT (GMC Latitude Selection)
	-------------------------------------------------------------
	-- ENGINE INTERFACE
	[517] = "%1d",		--PTR-RSPE-TMB-PZUENG-L (Dust Protection Left)
	[518] = "%1d",		--PTR-RSPE-TMB-PZUENG-R (Dust Protection Right)
	-------------------------------------------------------------
	-- Nav Lights System
	[513] = "%1d",		--PTR-RSPE-TMB-ANO (ANO)
	[514] = "%1d",		--PTR-RSPE-TMB-LGTWING (Formation Lights)
	[515] = "%1d",		--PTR-RSPE-TMB-LGTCONT (Tip Lights)
	[516] = "%1d",		--PTR-RSPE-TMB-BEAC (Strobe Light)
	[322] = "%1d",		--PTR-LSPE-TMB-AIR-CODE (ANO code)
	[836] = "%1d",		--PTR-LEFT-TAXI-L-SW (Taxi Light)
	[837] = "%1d",		--PTR-LEFT-TAXI-L-POS-SW (Left Landing Light)
	[838] = "%1d",		--PTR-LEFT-TAXI-R-POS-SW (Right Landing Light)
	-------------------------------------------------------------
	-- Lights System
	[333] = "%1d",		--PTR-LES-TMB-PLF (Left Ceiling Light)
	[489] = "%1d",		--PTR-RES-TMB-PLF (Right Ceiling Light)
	[479] = "%1d",		--PTR-RES-TMB-LGT (5.5V Lights)
	[280] = "%.4f",		--PTR-LSPE-LVR-REDGRP1 (Lh RedLights Brightness Rst gr.1) {0.0, 1.0}
	[281] = "%.4f",		--PTR-LSPE-LVR-REDGRP2 (Lh RedLights Brightness Rst gr.2) {0.0, 1.0}
	[491] = "%.4f",		--PTR-RSPE-LVR-REDGRP1 (Rh RedLights Brightness Rst gr.1) {0.0, 1.0}
	[492] = "%.4f",		--PTR-RSPE-LVR-REDGRP2 (Rh RedLights Brightness Rst gr.2) {0.0, 1.0}
	[894] = "%.4f",		--PTR-RSPE-LVR-REDGRP003 (Central RedLights Brightness Rst gr.1) {0.0, 1.0}
	[895] = "%.4f",		--PTR-RSPE-LVR-REDGRP004 (Central RedLights Brightness Rst gr.2) {0.0, 1.0}
	[914] = "%.4f",		--PTR-RSPE-LVR-REDGRP005 (5.5V Lights Brightness Rheostat)
	[511] = "%1d",		--PTR-RSPE-TMB-DUTY (Cargo Cabin Duty Lights Switc)
	[512] = "%1d",		--PTR-RSPE-TMB-ALL (Cargo Cabin Common Lights Switch)
	-------------------------------------------------
	-- RADIO EQUIPMENT
	-- SPU-7
	-- Left
	[549] = "%.4f",		--PTR-LAZS-LVR-ALL (Common Volume)
	[548] = "%.4f",		--PTR-LAZS-LVR-AUDIT (Listening Volume)
	[553] = "%1d",		--PTR-LAZS-TMB-RADSPU (Radio/ICS)
	[551] = "%1d",		--PTR-LAZS-TMB-CIRC (Network 1/2 (N/F))
	[552] = "%1d",		--PTR-LAZS-BTN-CB (Circular Call (N/F))
	[550] = "%.1f",		--PTR-LAZS-LVR-MODES (Radio Source (R-863/JADRO-1A/R-828/NF/ARC-9/ARC-UD))
	-- Right
	[841] = "%.4f",		--PTR-RAZS-LVR-ALL002 (Common Volume)
	[840] = "%.4f",		--PTR-RAZS-LVR-AUDIT002 (Listening Volume)
	[845] = "%1d",		--PTR-RAZS-TMB-RADSPU002 (Radio/ICS)
	[843] = "%1d",		--PTR-RAZS-TMB-CIRC002 (Network 1/2 (N/F))
	[846] = "%1d",		--PTR-RAZS-BTN-CB002 (Circular Call (N/F))
	[842] = "%.1f",		--PTR-RAZS-LVR-MODES002 (Radio Source (R-863/JADRO-1A/R-828/NF/ARC-9/ARC-UD))

	--[194] = "%.4f",		-- RADIO/ICS-1-PTR (Radio/ICS)
	[480] = "%1d",		--PTR-RES-TMB-LARING (Laryngophone)
	-------------------------------------------------------------
	-- R-863
	[369] = "%1d",		--PTR-LPE-TMB-COMAND (R-863, Select FM/AM)
	[132] = "%1d",		--PTR-APP-TMB-NU (R-863, Dial/Memory Unit)
	[370] = "%1d",		--PTR-LPE-LVR-CHANNEL (R-863, Radio channel selector)

	[155] = "%1d",		--PTR-APP-TMB-PS (R-863, Squelch)
	[156] = "%.4f",		--PTR-APP-LVR-LEVEL (R-863, Volume)

	[163] = "%.4f",		--PTR-APP-LVR-SEL1 (R-863, 10MHz rotary) {-0.1, 0.1}
	[164] = "%.4f",		--PTR-APP-LVR-SEL2 (R-863, 1MHz rotary) {-0.1, 0.1}
	[165] = "%.4f",		--PTR-APP-LVR-SEL3 (R-863, 100kHz rotary) {-0.1, 0.1}
	[166] = "%.4f",		--PTR-APP-LVR-SEL4 (R-863, 1kHz rotary) {-0.1, 0.1}

	[153] = "%1d",		--PTR-APP-TMB-AP (R-863, Emergency Receiver On/Off (N/F))
	[154] = "%1d",		--PTR-APP-TMB-RK (R-863, ARC (N/F))
	-------------------------------------------------------------
	-- R-828
	[735] = "%1d",		--PTR-ADDSECPLT-LVR-CHNL (R-828 Radio channel selector)

	[737] = "%.4f",		--PTR-ADDSECPLT-LVR-VOL (R-828 Radio volume)
	[738] = "%1d",		--PTR-ADDSECPLT-BTN-ASU (R-828 Radio Tuner button)
	[739] = "%1d",		--PTR-ADDSECPLT-TMB-PSH (R-828 Radio Squelch)
	[756] = "%1d",		--PTR-ADDSECPLT-TMB-P828 (R-828 Radio, Power)
	[757] = "%1d",		--PTR-ADDSECPLT-TMB-MODSEL (R-828 Radio, COMM/NAV)
	-------------------------------------------------------------
	-- Jadro-1A
	[484] = "%1d",		--PTR-RES-TMB-RS (Jadro 1A, Power)
	[745] = "%.4f",		--PTR-ADDSECPLT-LVR-DIG12 (Jadro 1A, Frequency Selector, 1MHz) {-0.1, 0.1}
	[746] = "%.4f",		--PTR-ADDSECPLT-LVR-DIG3 (Jadro 1A, Frequency Selector, 100kHz) {-0.1, 0.1}
	[747] = "%.4f",		--PTR-ADDSECPLT-LVR-DIG4 (Jadro 1A, Frequency Selector, 10kHz) {-0.1, 0.1}

	[748] = "%.4f",		--PTR-ADDSECPLT-LVR-DIG6 (Jadro 1A, Frequency Selector, Left mouse - 1kHz/ Right mouse - 100Hz) 
	[749] = "%.4f",		--PTR-ADDSECPLT-LVR-DIG6 (Jadro 1A, Frequency Selector, Left mouse - 1kHz/ Right mouse - 100Hz) 

	[744] = "%.1f",		--PTR-ADDSECPLT-LVR-ONOFF (Jadro 1A, Mode OFF/OM/AM)

	[743] = "%.4f",		--PTR-ADDSECPLT-LVR-VOLUM (Jadro 1A, Volume)
	[741] = "%.4f",		--PTR-ADDSECPLT-LVR-PSH (Jadro 1A, Squelch)
	[742] = "%1d",		--PTR-ADDSECPLT-TMB-CONTR (Jadro 1A, Control)
	-------------------------------------------------------------
	-- RI-65
	[338] = "%1d",		--PTR-LES-TMB-RK85 (RI-65)
	[292] = "%1d",		--PTR-LSPE-BTN-RI65-OFF (RI-65 OFF)
	[293] = "%1d",		--PTR-LSPE-BTN-RI65-RETRY (RI-65 Repeat)
	[294] = "%1d",		--PTR-LSPE-BTN-RI65-TEST (RI-65 Check)
	[295] = "%1d",		--PTR-LSPE-TMB-RI65-AMP (RI-65 Amplifier)
	-------------------------------------------------------------
	-- ARC-UD
	[456] = "%.1f",		--PTR-RPE-LVR-ARKMODE (ARC-UD, Mode OFF/NARROW/WIDE/PULSE/RC)
	[457] = "%.1f",		--PTR-RPE-LVR-ARKMODE2 (ARC-UD, Channel)

	[453] = "%1d",		--PTR-RPE-TMB-ARKSENS (ARC-UD, Sensitivity)
	[454] = "%1d",		--PTR-RPE-TMB-ARKUKV (ARC-UD, MW/DW)

	[672] = "%1d",		--PTR-RPE-BTN-CONTR (ARC-UD, Control)
	[673] = "%1d",		--PTR-RPE-BTN-ANTL (ARC-UD, Ant. Left)
	[674] = "%1d",		--PTR-RPE-BTN-ANTR (ARC-UD, Ant. Right)

	[455] = "%.4f",		--PTR-RPE-LVR-ARKVOL (ARC-UD, Volume)
	[481] = "%1d",		--PTR-RES-TMB-BLOCK (ARC-UD, Lock Switch)
	-------------------------------------------------------------
	-- PKV Sight
	[589] =  "%.4f",		--PTR-LAZS-LVR-AIMLGT (Sight Brightness)

	[855] = "%.4f",		--PTR-PKV-ROTARY (Sight Limb)

	[856] = "%.4f",		--PTR-PKV-DOUBLE (Sight Double) {1.0,-1.0}

	[903] = "%.1f",		--PTR-PKV-GLASS-FILTER (PKV Filter)
	--------------------------------------------------------------------------------
	-- CLOCK 
	[57] = "%1d",		--PTR-WATCH-LVR-L (Mech clock left lever)
	[58] = "%1d",		--PTR-WATCH-LVR-L (Mech clock left lever)

	[59] = "%1d",		--PTR-WATCH-LVR-R (Mech clock right lever)
	[60] = "%1d",		--PTR-WATCH-LVR-R (Mech clock right lever)

	[521] = "%1d",		--PTR-RSPE-TMB-WRMWTCH (Clock Heating Switch)
        --------------------------------------------------------------------------------
	[839] = "%.1f",		--PTR-STAT-PRESS (Static Pressure System Mode (LEFT/COMMON/RIGHT))
	--------------------------------------------------------------------------------
	-- UV-26 CMD Control Panel
	[910] = "%1d",		--PTR-UV26-ONOFF (CMD Power)
	[859] = "%1d",		--PTR-UV26-BOARD (CMD Select Left/Both/Right board flares dispensers)
	[913] = "%1d",		--PTR-UV26-PROG (CMD Amount flares counter/Programming)
	[914] = "%1d",		--PTR-L45-BTN (CMD Num of sequences)
	[862] = "%1d",		--PTR-L68-BTN (CMD Dispense interval) 
	[863] = "%1d",		--PTR-L8-BTN (CMD Num in sequence)
	[866] = "%1d",		--PTR-START-BTN (CMD Start dispense)
	[911] = "%1d",		--PTR-LSPE-BTN-UV26-START (Start/Stop dispense)
	[864] = "%1d",		--PTR-RESET-PROG-BTN (CMD Reset to default program)
	[865] = "%1d",		--PTR-STOP-BTN (CMD Stop dispense)
	------------------------------------------------
	-- CPTMECH
	[215] = "%1d",		--PTR-BLISTER-LOCK-L (Left blister open/close)
	[216] = "%1d",		--PTR-BLISTER-LOCK-R (Right blister open/close)

	[881] = "%1d",		--PTR-WHEELBRK-ARM (Wheel Brakes) 

	[910] = "%1d",		--PTR-RSPE-TMB-WINK002 (Acceleration Reset) 

	[334] = "%1d",		--PTR-LES-TMB-VENT (Left Fan Switch)
	[488] = "%1d",		--PTR-RES-TMB-VENT (Right Fan Switch)
	------------------------------------------------
	-- ARC-9
	[469] = "%1d",		--PTR-RPE-TMB-NEARFAR (ARC-9, Main/Backup Dialer) 
	[448] = "%.4f",		--PTR-RPE-LVR-FRQVOLUME (ARC-9, Volume)
	[444] = "%1d",		--PTR-RPE-TMB-FRQTLG (ARC-9, TLF/TLG)
	[446] = "%.1f",		--PTR-RPE-LVR-FRQMODE (ARC-9, Mode OFF/COMP/ANT/LOOP)
	[447] = "$.1f",		--PTR-RPE-TMB-FRQFRAME (ARC-9, Loop Left/Right)

	[449] = "%.4f",		--PTR-RPE-LVR-FRQADJRES (ARC-9, Backup Frequency Tune)
	[675] = "%.2f",		--PTR-RPE-LVR-FRQRES-SEC (ARC-9, Backup 100kHz rotary)
	[450] = "%.2f",		--PTR-RPE-LVR-FRQRES (ARC-9, Backup 10kHz rotary)
	[451] = "%.4f",		--PTR-RPE-LVR-FRQADJMAIN (ARC-9, Main Frequency Tune)
	[678] = "%.2f",		--PTR-RPE-LVR-FRQMAIN-SEC (ARC-9, Main 100kHz rotary)
	[452] = "%.2f",		--PTR-RPE-LVR-FRQMAIN (ARC-9, Main 10kHz rotary)
	------------------------------------------------
	-- External Cargo Equipment
	[199] = "%1d",		--PTR-STKSG-CVR-TACTJET (Tactical Cargo Release Button Cover)
	[200] = "%1d",		--PTR-STKSG-BTN-TACTJET (Tactical Cargo Release Button - Push to release)
	[197] = "%1d",		--PTR-STKSG-CVR-EMRGJET (Emergency Cargo Release Button Cover)
	[198] = "%1d",		--PTR-STKSG-BTN-EMRGJET (Emergency Cargo Release Button - Push to release)
	[324] = "%1d",		--PTR-LSPE-TMB-BRK-OUT (External Cargo Automatic Dropping)
	------------------------------------------------
	-- Signal Flares
	[282] = "%1d",		--PTR-LSPE-TMB-ALRMRKT1 (Signal Flares Cassette 1 Power Switch)
	[283] = "%1d",		--PTR-LSPE-TMB-ALRMRKT2 (Signal Flares Cassette 2 Power Switch)
	[284] = "%1d",		--PTR-LSPE-BTN-RCKT11 (Signal Flares Cassette 1 Launch Red Button)
	[285] = "%1d",		--PTR-LSPE-BTN-RCKT12 (Signal Flares Cassette 1 Launch Green Button)
	[286] = "%1d",		--PTR-LSPE-BTN-RCKT13 (Signal Flares Cassette 1 Launch Yellow Button)
	[287] = "%1d",		--PTR-LSPE-BTN-RCKT14 (Signal Flares Cassette 1 Launch White Button)
	[288] = "%1d",		--PTR-LSPE-BTN-RCKT21 (Signal Flares Cassette 2 Launch Red Button)
	[289] = "%1d",		--PTR-LSPE-BTN-RCKT22 (Signal Flares Cassette 2 Launch Green Button)
	[290] = "%1d",		--PTR-LSPE-BTN-RCKT23 (Signal Flares Cassette 2 Launch Yellow Button)
	[291] = "%1d",		--PTR-LSPE-BTN-RCKT24 (Signal Flares Cassette 2 Launch White Button)
	------------------------------------------------
	-- SARPP
	[315] = "%1d",		--PTR-LSPE-TMB-CONTR-AUTMAN (SARPP-12 Mode Switch,)
	------------------------------------------------
	-- Recorder P-503B
	[305] = "%1d",		--PTR-LSPE-TMB-REC (Recorder P-503B Power Switch)
	[308] = "%.4f",		--PTR-LSPE-LVR-LGTSEL (Recorder P-503B Backlight Brightness Knob)
	------------------------------------------------
	-- IFF
	[304] = "%1d",		--"PTR-LSPE-LVR-MODE (IFF Transponder Mode Selector Switch)
	[301] = "%1d",		--PTR-LSPE-TMB-RADIO-WRK (IFF Transponder Device Selector Switch)
	[300] = "%1d",		--PTR-LSPE-TMB-RADIO-MODE12 (IFF Transponder Device Mode Switch)
	[296] = "%1d",		--PTR-LSPE-CVR-EMRG-ERASE (IFF Transponder Erase Button Cover)
	[297] = "%1d",		--PTR-LSPE-BTN-EMRG-ERASE (IFF Transponder Erase Button)
	[298] = "%1d",		--PTR-LSPE-CVR-EMRG-MAYDAY (IFF Transponder Disaster Switch Cover)
	[299] = "%1d",		--PTR-LSPE-TMB-EMRG-MAYDAY (IFF Transponder Disaster Switch)
	------------------------------------------------
	-- jump descent siren
	[323] = "%1d",		--PTR-LSPE-TMB-AIR-SIREN (Alarm Bell Button)
}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

function ProcessGlassCockpitDCSConfigHighImportance(mainPanelDevice)
	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
	elseif gES_GlassCockpitType == 2 then
	--[[
	every frame export to GlassCockpit
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	SendData("ExportID", "Format")
	SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) <- special function for get frequency data
	]]
		-- Altimeter
		-- VD_10K_L_100_Ind; VD_10K_L_10_Ind; VD_10K_L_PRESS
		SendData(2000, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(98), 
										mainPanelDevice:get_argument_value(99), 
										mainPanelDevice:get_argument_value(21)))
		-- Altimeter Radar
		-- A_036_RALT;A_036_DangerRALT_index;A_036_DangerRALT_lamp;A_036_warning_flag
		SendData(2001, string.format("%0.4f;%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(34), 
										mainPanelDevice:get_argument_value(31), 
										mainPanelDevice:get_argument_value(30), 
										mainPanelDevice:get_argument_value(33)))
		-- AGB_3K
		-- AGB_3K_Left_roll, AGB_3K_Left_pitch, steering_warning_flag, SlipBallPosition
		SendData(2002, string.format("%0.4f;%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(13), 
										mainPanelDevice:get_argument_value(12), 
										mainPanelDevice:get_argument_value(14), 
										mainPanelDevice:get_argument_value(15)))
										
		-- Clock
		-- currtimeHours; currtimeMinutes; currtimeSeconds; flightTimeMeterStatus; 
		-- flightHours;flightMinutes; secondsMeterTimeMinutes; secondsMeterTimeSeconds;
		SendData(2003, string.format("%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f",
										mainPanelDevice:get_argument_value(49),
										mainPanelDevice:get_argument_value(50),
										mainPanelDevice:get_argument_value(51),
										mainPanelDevice:get_argument_value(56),
										mainPanelDevice:get_argument_value(52),
										mainPanelDevice:get_argument_value(53),
										mainPanelDevice:get_argument_value(54),
										mainPanelDevice:get_argument_value(55)))		
		-- DirectionalGyro
		-- UGR_4K_heading_L;UGR_4K_commanded_course_L;UGR_4K_bearing_needle_L
		SendData(2004, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(25), 
										mainPanelDevice:get_argument_value(27), 
										mainPanelDevice:get_argument_value(28)))
		-- DriftIndicator
		-- diss15_drift_angle;diss15_W_shutter;diss15_W_memory_lamp;diss15_W_hundreds; diss15_W_tens;diss15_W_ones
		SendData(2005, string.format("%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(791), 
										mainPanelDevice:get_argument_value(795), 
										mainPanelDevice:get_argument_value(796), 
										mainPanelDevice:get_argument_value(792), 
										mainPanelDevice:get_argument_value(793), 
										mainPanelDevice:get_argument_value(794)))
		-- EGT
		-- LeftEngineTemperatureHund; LeftEngineTemperatureTenth; RightEngineTemperatureHund;RightEngineTemperatureTenth
		SendData(2006, string.format("%0.4f;%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(43), 
										mainPanelDevice:get_argument_value(44), 
										mainPanelDevice:get_argument_value(45), 
										mainPanelDevice:get_argument_value(46)))
		-- Engine Power
		-- EnginesMode;LeftEngineMode;RightEngineMode ????
		SendData(2007, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(39), 
										mainPanelDevice:get_argument_value(37), 
										mainPanelDevice:get_argument_value(38)))
		-- Hover
		-- diss15_hover_x; diss15_hover_y;diss15_hover_z;diss15_hover_lamp_off;
		SendData(2008, string.format("%0.4f;%0.4f;%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(830), 
										mainPanelDevice:get_argument_value(828), 
										mainPanelDevice:get_argument_value(829), 
										mainPanelDevice:get_argument_value(831), 
										mainPanelDevice:get_argument_value(16)))
		-- Oil Engine Left
		-- oils_p_left_engine;oils_t_left_engine
		SendData(2009, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(115), 
										mainPanelDevice:get_argument_value(116)))
		-- Oil Engine Right
		-- oils_p_right_engine;oils_t_right_engine
		SendData(2010, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(117), 
										mainPanelDevice:get_argument_value(118)))
		-- Oil Transition
		-- oils_p_main_reductor;oils_t_main_reductor;oils_temp_tail_reductor;
		SendData(2011, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(111), 
										mainPanelDevice:get_argument_value(114), 
										mainPanelDevice:get_argument_value(113)))
		-- RPM
		-- LeftEngineRPM;RightEngineRPM								
		SendData(2012, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(40), 
										mainPanelDevice:get_argument_value(41)))
		-- Turn Indicator
		-- EUP_speed;EUP_sideslip
		SendData(2013, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(22), 
										mainPanelDevice:get_argument_value(23)))

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
	
	-- Radar altimeter A-036
	---------------------------------------------------------------
	SendDataHW("30", mainPanelDevice:get_argument_value(30) > 0.3 and 1 or 0)		-- A_036_DangerRALT_lamp {0.0, 1.0}
	-- DISS15
	---------------------------------------------------------------
	SendDataHW("822", mainPanelDevice:get_argument_value(822) > 0.3 and 1 or 0)		-- diss15_check_control_lamp {0.0, 0.9}
	SendDataHW("823", mainPanelDevice:get_argument_value(823) > 0.3 and 1 or 0)		-- diss15_check_work_lamp {0.0, 0.9}
	SendDataHW("824", mainPanelDevice:get_argument_value(824) > 0.3 and 1 or 0)		-- diss15_check_failM_lamp {0.0, 0.9}
	SendDataHW("825", mainPanelDevice:get_argument_value(825) > 0.3 and 1 or 0)		-- diss15_check_failC_lamp {0.0, 0.9}
	-- SPUU-52
	---------------------------------------------------------------
	SendDataHW("786", mainPanelDevice:get_argument_value(786) > 0.3 and 1 or 0)		-- SPUU52_lamp {0.0, 1.0}
	-- PU-26 LAMP
	---------------------------------------------------------------
	SendDataHW("827", mainPanelDevice:get_argument_value(827) > 0.3 and 1 or 0)		-- PU_26_GA_Lamp {0.0, 0.5}
	-- ARC-UD
	---------------------------------------------------------------
	SendDataHW("458", mainPanelDevice:get_argument_value(458) > 0.3 and 1 or 0)		-- ARC_UD_Narrow_Lamp {0.0, 0.9}
	SendDataHW("459", mainPanelDevice:get_argument_value(459) > 0.3 and 1 or 0)		-- ARC_UD_Wide_Lamp {0.0, 0.9}
	SendDataHW("460", mainPanelDevice:get_argument_value(460) > 0.3 and 1 or 0)		-- ARC_UD_Pulse_Lamp {0.0, 0.9}
	-- Jadro 1A
	---------------------------------------------------------------
	SendDataHW("849", mainPanelDevice:get_argument_value(849) > 0.3 and 1 or 0)		-- Jadro_ASU_Lamp {0.0, 1.0}
	SendDataHW("848", mainPanelDevice:get_argument_value(848) > 0.3 and 1 or 0)		-- Jadro_Ctl_Lamp {0.0, 1.0}
	SendDataHW("850", mainPanelDevice:get_argument_value(450) > 0.3 and 1 or 0)		-- Jadro_Breakdown_Lamp {0.0, 1.0}
	-- Autopilot LAMPS
	---------------------------------------------------------------
	SendDataHW("781", mainPanelDevice:get_argument_value(781) > 0.3 and 1 or 0)		-- lamp_AP_heading_on
	SendDataHW("782", mainPanelDevice:get_argument_value(782) > 0.3 and 1 or 0)		-- lamp_AP_heading_off
	SendDataHW("783", mainPanelDevice:get_argument_value(783) > 0.3 and 1 or 0)		-- lamp_AP_pitch_roll_on
	SendDataHW("784", mainPanelDevice:get_argument_value(784) > 0.3 and 1 or 0)		-- lamp_AP_height_on
	SendDataHW("785", mainPanelDevice:get_argument_value(785) > 0.3 and 1 or 0)		-- lamp_AP_height_off
	-- LAMPS
	---------------------------------------------------------------
	SendDataHW("316", mainPanelDevice:get_argument_value(316) > 0.3 and 1 or 0)		-- lamp_ENGINE_RT_LEFT_ON
	SendDataHW("317", mainPanelDevice:get_argument_value(317) > 0.3 and 1 or 0)		-- lamp_ENGINE_RT_RIGHT_ON
	SendDataHW("318", mainPanelDevice:get_argument_value(318) > 0.3 and 1 or 0)		-- lamp_SARPP_ON
	SendDataHW("326", mainPanelDevice:get_argument_value(326) > 0.3 and 1 or 0)		-- lamp_LOCK_OPEN
	SendDataHW("327", mainPanelDevice:get_argument_value(327) > 0.3 and 1 or 0)		-- lamp_DOORS_OPEN
	SendDataHW("340", mainPanelDevice:get_argument_value(340) > 0.3 and 1 or 0)		-- lamp_TURN_ON_RI_65
	SendDataHW("360", mainPanelDevice:get_argument_value(360) > 0.3 and 1 or 0)		-- lamp_FROST
	SendDataHW("362", mainPanelDevice:get_argument_value(362) > 0.3 and 1 or 0)		-- lamp_LEFT_ENG_HEATING
	SendDataHW("363", mainPanelDevice:get_argument_value(363) > 0.3 and 1 or 0)		-- lamp_RIGHT_ENG_HEATING
	SendDataHW("361", mainPanelDevice:get_argument_value(361) > 0.3 and 1 or 0)		-- lamp_ANTI_ICE_ON
	SendDataHW("364", mainPanelDevice:get_argument_value(364) > 0.3 and 1 or 0)		-- lamp_LEFT_PZU_FRONT
	SendDataHW("365", mainPanelDevice:get_argument_value(365) > 0.3 and 1 or 0)		-- lamp_RIGHT_PZU_FRONT
	SendDataHW("366", mainPanelDevice:get_argument_value(366) > 0.3 and 1 or 0)		-- lamp_LEFT_PZU_BACK
	SendDataHW("367", mainPanelDevice:get_argument_value(367) > 0.3 and 1 or 0)		-- lamp_RIGHT_PZU_BACK
	SendDataHW("373", mainPanelDevice:get_argument_value(373) > 0.3 and 1 or 0)		-- lamp_SECTION_1
	SendDataHW("375", mainPanelDevice:get_argument_value(375) > 0.3 and 1 or 0)		-- lamp_SECTION_2
	SendDataHW("374", mainPanelDevice:get_argument_value(374) > 0.3 and 1 or 0)		-- lamp_SECTION_3
	SendDataHW("376", mainPanelDevice:get_argument_value(376) > 0.3 and 1 or 0)		-- lamp_SECTION_4
	SendDataHW("368", mainPanelDevice:get_argument_value(368) > 0.3 and 1 or 0)		-- lamp_RIO_heating_ok
	SendDataHW("377", mainPanelDevice:get_argument_value(377) > 0.3 and 1 or 0)		-- lamp_LEFT_ENG_FIRE
	SendDataHW("378", mainPanelDevice:get_argument_value(378) > 0.3 and 1 or 0)		-- lamp_RIGHT_ENG_FIRE
	SendDataHW("379", mainPanelDevice:get_argument_value(379) > 0.3 and 1 or 0)		-- lamp_KO50_FIRE
	SendDataHW("380", mainPanelDevice:get_argument_value(380) > 0.3 and 1 or 0)		-- lamp_REDUC_AI9_FIRE
	SendDataHW("381", mainPanelDevice:get_argument_value(381) > 0.3 and 1 or 0)		-- lamp_FIRE_LENG_1_QUEUE
	SendDataHW("382", mainPanelDevice:get_argument_value(382) > 0.3 and 1 or 0)		-- lamp_FIRE_RENG_1_QUEUE
	SendDataHW("383", mainPanelDevice:get_argument_value(383) > 0.3 and 1 or 0)		-- lamp_FIRE_KO50_1_QUEUE
	SendDataHW("384", mainPanelDevice:get_argument_value(384) > 0.3 and 1 or 0)		-- lamp_FIRE_REDUCT_1_QUEUE
	SendDataHW("385", mainPanelDevice:get_argument_value(385) > 0.3 and 1 or 0)		-- lamp_FIRE_LENG_2_QUEUE
	SendDataHW("386", mainPanelDevice:get_argument_value(386) > 0.3 and 1 or 0)		-- lamp_FIRE_RENG_2_QUEUE
	SendDataHW("387", mainPanelDevice:get_argument_value(387) > 0.3 and 1 or 0)		-- lamp_FIRE_KO50_2_QUEUE
	SendDataHW("388", mainPanelDevice:get_argument_value(388) > 0.3 and 1 or 0)		-- lamp_FIRE_REDUCT_2_QUEUE
	SendDataHW("398", mainPanelDevice:get_argument_value(398) > 0.3 and 1 or 0)		-- lamp_CHECK_SENSORS
	SendDataHW("407", mainPanelDevice:get_argument_value(407) > 0.3 and 1 or 0)		-- lamp_HYDRO_main_on
	SendDataHW("408", mainPanelDevice:get_argument_value(408) > 0.3 and 1 or 0)		-- lamp_HYDRO_aux_on
	SendDataHW("414", mainPanelDevice:get_argument_value(414) > 0.3 and 1 or 0)		-- lamp_APD9_on
	SendDataHW("416", mainPanelDevice:get_argument_value(416) > 0.3 and 1 or 0)		-- lamp_APD9_oil_pressure
	SendDataHW("417", mainPanelDevice:get_argument_value(417) > 0.3 and 1 or 0)		-- lamp_APD9_rpm
	SendDataHW("418", mainPanelDevice:get_argument_value(418) > 0.3 and 1 or 0)		-- lamp_APD9_rpm_high
	SendDataHW("420", mainPanelDevice:get_argument_value(420) > 0.3 and 1 or 0)		-- lamp_APD_on
	SendDataHW("424", mainPanelDevice:get_argument_value(424) > 0.3 and 1 or 0)		-- lamp_APD_starter_on
	SendDataHW("434", mainPanelDevice:get_argument_value(434) > 0.3 and 1 or 0)		-- lamp_FUEL_left_closed
	SendDataHW("435", mainPanelDevice:get_argument_value(435) > 0.3 and 1 or 0)		-- lamp_FUEL_right_closed
	SendDataHW("436", mainPanelDevice:get_argument_value(436) > 0.3 and 1 or 0)		-- lamp_FUEL_ring_closed
	SendDataHW("441", mainPanelDevice:get_argument_value(441) > 0.3 and 1 or 0)		-- lamp_FUEL_center_on
	SendDataHW("442", mainPanelDevice:get_argument_value(442) > 0.3 and 1 or 0)		-- lamp_FUEL_left_on
	SendDataHW("443", mainPanelDevice:get_argument_value(443) > 0.3 and 1 or 0)		-- lamp_FUEL_right_on
	SendDataHW("461", mainPanelDevice:get_argument_value(461) > 0.3 and 1 or 0)		-- lamp_HEATER
	SendDataHW("462", mainPanelDevice:get_argument_value(462) > 0.3 and 1 or 0)		-- lamp_IGNITION
	SendDataHW("463", mainPanelDevice:get_argument_value(463) > 0.3 and 1 or 0)		-- lamp_KO50_ON
	SendDataHW("341", mainPanelDevice:get_argument_value(341) > 0.3 and 1 or 0)		-- lamp_LEFT_PITOT_HEATER_OK
	SendDataHW("490", mainPanelDevice:get_argument_value(490) > 0.3 and 1 or 0)		-- lamp_RIGHT_PITOT_HEATER_OK
	SendDataHW("509", mainPanelDevice:get_argument_value(509) > 0.3 and 1 or 0)		-- lamp_LEFT_PZU_ON
	SendDataHW("510", mainPanelDevice:get_argument_value(510) > 0.3 and 1 or 0)		-- lamp_RIGHT_PZU_ON
	SendDataHW("504", mainPanelDevice:get_argument_value(504) > 0.3 and 1 or 0)		-- lamp_ELEC_turn_VU1
	SendDataHW("505", mainPanelDevice:get_argument_value(505) > 0.3 and 1 or 0)		-- lamp_ELEC_turn_VU2
	SendDataHW("506", mainPanelDevice:get_argument_value(506) > 0.3 and 1 or 0)		-- lamp_ELEC_turn_VU3
	SendDataHW("507", mainPanelDevice:get_argument_value(507) > 0.3 and 1 or 0)		-- lamp_ELEC_DC_ground
	SendDataHW("508", mainPanelDevice:get_argument_value(508) > 0.3 and 1 or 0)		-- lamp_ELEC_test_equipment
	SendDataHW("543", mainPanelDevice:get_argument_value(543) > 0.3 and 1 or 0)		-- lamp_ELEC_gen1_fail
	SendDataHW("544", mainPanelDevice:get_argument_value(544) > 0.3 and 1 or 0)		-- lamp_ELEC_gen2_fail
	SendDataHW("545", mainPanelDevice:get_argument_value(545) > 0.3 and 1 or 0)		-- lamp_ELEC_AC_ground
	SendDataHW("546", mainPanelDevice:get_argument_value(546) > 0.3 and 1 or 0)		-- lamp_ELEC_PO_500
	SendDataHW("86", mainPanelDevice:get_argument_value(86) > 0.3 and 1 or 0)		-- lamp_CIRCUIT_FROM_BATTERY
	SendDataHW("68", mainPanelDevice:get_argument_value(68) > 0.3 and 1 or 0)		-- lamp_CLOG_TF_LEFT
	SendDataHW("69", mainPanelDevice:get_argument_value(69) > 0.3 and 1 or 0)		-- lamp_CLOG_TF_RIGHT
	SendDataHW("70", mainPanelDevice:get_argument_value(70) > 0.3 and 1 or 0)		-- lamp_CHIP_LEFT_ENG
	SendDataHW("71", mainPanelDevice:get_argument_value(71) > 0.3 and 1 or 0)		-- lamp_CHIP_RIGHT_ENG
	SendDataHW("72", mainPanelDevice:get_argument_value(72) > 0.3 and 1 or 0)		-- lamp_VIBRATION_LEFT_HIGH
	SendDataHW("73", mainPanelDevice:get_argument_value(73) > 0.3 and 1 or 0)		-- lamp_VIBRATION_RIGHT_HIGH
	SendDataHW("74", mainPanelDevice:get_argument_value(74) > 0.3 and 1 or 0)		-- lamp_FIRE
	SendDataHW("76", mainPanelDevice:get_argument_value(76) > 0.3 and 1 or 0)		-- lamp_LEFT_ENG_TURN_OFF
	SendDataHW("77", mainPanelDevice:get_argument_value(77) > 0.3 and 1 or 0)		-- lamp_RIGHT_ENG_TURN_OFF
	SendDataHW("78", mainPanelDevice:get_argument_value(78) > 0.3 and 1 or 0)		-- lamp_FT_LEFT_HIGH
	SendDataHW("79", mainPanelDevice:get_argument_value(79) > 0.3 and 1 or 0)		-- lamp_FT_RIGHT_HIGH
	SendDataHW("80", mainPanelDevice:get_argument_value(80) > 0.3 and 1 or 0)		-- lamp_OIL_PRESSURE_LEFT
	SendDataHW("81", mainPanelDevice:get_argument_value(81) > 0.3 and 1 or 0)		-- lamp_OIL_PRESSURE_RIGHT
	SendDataHW("82", mainPanelDevice:get_argument_value(82) > 0.3 and 1 or 0)		-- lamp_ER_LEFT
	SendDataHW("83", mainPanelDevice:get_argument_value(83) > 0.3 and 1 or 0)		-- lamp_ER_RIGHT
	SendDataHW("84", mainPanelDevice:get_argument_value(84) > 0.3 and 1 or 0)		-- lamp_EEC_LEFT_OFF
	SendDataHW("85", mainPanelDevice:get_argument_value(85) > 0.3 and 1 or 0)		-- lamp_EEC_RIGHT_OFF
	SendDataHW("873", mainPanelDevice:get_argument_value(873) > 0.3 and 1 or 0)		-- lamp_CHIP_MAIN_REDUCTOR
	SendDataHW("874", mainPanelDevice:get_argument_value(874) > 0.3 and 1 or 0)		-- lamp_CHIP_INTER_REDUCTOR
	SendDataHW("875", mainPanelDevice:get_argument_value(875) > 0.3 and 1 or 0)		-- lamp_CHIP_TAIL_REDUCTOR
	SendDataHW("64", mainPanelDevice:get_argument_value(64) > 0.3 and 1 or 0)		-- lamp_300_Left
	SendDataHW("65", mainPanelDevice:get_argument_value(65) > 0.3 and 1 or 0)		-- lamp_DISS_OFF
	SendDataHW("555", mainPanelDevice:get_argument_value(555) > 0.3 and 1 or 0)		-- lamp_BD1
	SendDataHW("556", mainPanelDevice:get_argument_value(556) > 0.3 and 1 or 0)		-- lamp_BD2
	SendDataHW("557", mainPanelDevice:get_argument_value(557) > 0.3 and 1 or 0)		-- lamp_BD3
	SendDataHW("558", mainPanelDevice:get_argument_value(558) > 0.3 and 1 or 0)		-- lamp_BD4
	SendDataHW("559", mainPanelDevice:get_argument_value(559) > 0.3 and 1 or 0)		-- lamp_BD5
	SendDataHW("560", mainPanelDevice:get_argument_value(560) > 0.3 and 1 or 0)		-- lamp_BD6
	SendDataHW("711", mainPanelDevice:get_argument_value(711) > 0.3 and 1 or 0)		-- lamp_BD1Bomb
	SendDataHW("712", mainPanelDevice:get_argument_value(712) > 0.3 and 1 or 0)		-- lamp_BD2Bomb
	SendDataHW("713", mainPanelDevice:get_argument_value(713) > 0.3 and 1 or 0)		-- lamp_BD3Bomb
	SendDataHW("714", mainPanelDevice:get_argument_value(714) > 0.3 and 1 or 0)		-- lamp_BD4Bomb
	SendDataHW("715", mainPanelDevice:get_argument_value(715) > 0.3 and 1 or 0)		-- lamp_BD5Bomb
	SendDataHW("716", mainPanelDevice:get_argument_value(716) > 0.3 and 1 or 0)		-- lamp_BD6Bomb
	SendDataHW("562", mainPanelDevice:get_argument_value(562) > 0.3 and 1 or 0)		-- lamp_PUS1
	SendDataHW("563", mainPanelDevice:get_argument_value(563) > 0.3 and 1 or 0)		-- lamp_PUS3
	SendDataHW("564", mainPanelDevice:get_argument_value(564) > 0.3 and 1 or 0)		-- lamp_PUS4
	SendDataHW("565", mainPanelDevice:get_argument_value(565) > 0.3 and 1 or 0)		-- lamp_PUS6
	SendDataHW("561", mainPanelDevice:get_argument_value(561) > 0.3 and 1 or 0)		-- lamp_EmergExplode
	SendDataHW("705", mainPanelDevice:get_argument_value(705) > 0.3 and 1 or 0)		-- lamp_EmergExplodeSec
	SendDataHW("710", mainPanelDevice:get_argument_value(710) > 0.3 and 1 or 0)		-- lamp_BV_Net_On
	SendDataHW("566", mainPanelDevice:get_argument_value(566) > 0.3 and 1 or 0)		-- lamp_RS_Net_On
	SendDataHW("567", mainPanelDevice:get_argument_value(567) > 0.3 and 1 or 0)		-- lamp_GUV_Net_On
	--SendDataHW("", mainPanelDevice:get_argument_value() > 0.3 and 1 or 0)		-- lamp_MV_Net_On
	SendDataHW("568", mainPanelDevice:get_argument_value(568) > 0.3 and 1 or 0)		-- lamp_FKP_On
	SendDataHW("778", mainPanelDevice:get_argument_value(778) > 0.3 and 1 or 0)		-- lamp_Caution_Weap
	
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
	-- AGB_3K_LEFT
	local lAGB_3K_LEFT = GetDevice(6)
	WriteToLog('lAGB_3K_LEFT:get_sideslip '..dump(lAGB_3K_LEFT:get_sideslip()))
	WriteToLog('lAGB_3K_LEFT:get_bank '..dump(lAGB_3K_LEFT:get_bank()))
	WriteToLog('lAGB_3K_LEFT:get_pitch '..dump(lAGB_3K_LEFT:get_pitch()))
	
	-- AGB_3K_RIGHT
	local lAGB_3K_RIGHT = GetDevice(7)
	WriteToLog('lAGB_3K_RIGHT:get_sideslip '..dump(lAGB_3K_RIGHT:get_sideslip()))
	WriteToLog('lAGB_3K_RIGHT:get_bank '..dump(lAGB_3K_RIGHT:get_bank()))
	WriteToLog('lAGB_3K_RIGHT:get_pitch '..dump(lAGB_3K_RIGHT:get_pitch()))
	
	-- DISS_15
	local lDISS_15 = GetDevice(15)
	WriteToLog('lDISS_15:get_w_vector '..dump(lDISS_15:get_w_vector()))
	WriteToLog('lDISS_15:get_drift_angle '..dump(lDISS_15:get_drift_angle()))
	
	-- RADAR_ALTIMETER
	local lRADAR_ALTIMETER = GetDevice(18)
	WriteToLog('lRADAR_ALTIMETER:get_altitude '..dump(lRADAR_ALTIMETER:get_altitude()))
	WriteToLog('lRADAR_ALTIMETER:get_dangerous_height_flag '..dump(lRADAR_ALTIMETER:get_dangerous_height_flag()))
	WriteToLog('lRADAR_ALTIMETER:get_distance_limit '..dump(lRADAR_ALTIMETER:get_distance_limit()))
	WriteToLog('lRADAR_ALTIMETER:get_dangerous_height '..dump(lRADAR_ALTIMETER:get_dangerous_height()))
	WriteToLog('lRADAR_ALTIMETER:get_warning_flag '..dump(lRADAR_ALTIMETER:get_warning_flag()))
	WriteToLog('lRADAR_ALTIMETER:get_mode '..dump(lRADAR_ALTIMETER:get_mode()))
	WriteToLog('lRADAR_ALTIMETER:get_aperture_size '..dump(lRADAR_ALTIMETER:get_aperture_size()))
	WriteToLog('lRADAR_ALTIMETER:get_needle_value '..dump(lRADAR_ALTIMETER:get_needle_value()))
	
	-- MISC_SYSTEMS_INTERFACE
	local lMISC_SYSTEMS_INTERFACE = GetDevice(20)
	WriteToLog('lMISC_SYSTEMS_INTERFACE:get_rotor_blades_pitch '..dump(lMISC_SYSTEMS_INTERFACE:get_rotor_blades_pitch()))
	WriteToLog('lMISC_SYSTEMS_INTERFACE:get_main_rotor_rpm '..dump(lMISC_SYSTEMS_INTERFACE:get_main_rotor_rpm()))
	
	-- SPU_7 (Intercom)
	local lSPU_7 = GetDevice(36)
	WriteToLog('lSPU_7:is_communicator_available '..dump(lSPU_7:is_communicator_available()))
	WriteToLog('lSPU_7:get_noise_level '..dump(lSPU_7:get_noise_level()))
	WriteToLog('lSPU_7:get_signal_level '..dump(lSPU_7:get_signal_level()))
	--WriteToLog('lSPU_7:set_communicator '..dump(lSPU_7:set_communicator())) -- test parameters
	--WriteToLog('lSPU_7:set_voip_mode '..dump(lSPU_7:set_voip_mode())) -- test parameters
	
	-- JADRO_1A
	local lJADRO_1A = GetDevice(37)
	WriteToLog('lJADRO_1A:is_on '..dump(lJADRO_1A:is_on()))
	WriteToLog('lJADRO_1A:get_frequency '..dump(lJADRO_1A:get_frequency()))
	--WriteToLog('lJADRO_1A:set_frequency '..dump(lJADRO_1A:set_frequency())) -- test parameters
	--WriteToLog('lJADRO_1A:set_modulation '..dump(lJADRO_1A:set_modulation())) -- test parameters
	--WriteToLog('lJADRO_1A:set_channel '..dump(lJADRO_1A:set_channel())) -- test parameters

	-- R_863
	local lR_863 = GetDevice(38)
	WriteToLog('lR_863:is_on '..dump(lR_863:is_on()))
	WriteToLog('lR_863:get_frequency '..dump(lR_863:get_frequency()))
	--WriteToLog('lR_863:set_frequency '..dump(lR_863:set_frequency())) -- test parameters
	--WriteToLog('lR_863:set_modulation '..dump(lR_863:set_modulation())) -- test parameters
	--WriteToLog('lR_863:set_channel '..dump(lR_863:set_channel())) -- test parameters

	-- R_828
	local lR_828 = GetDevice(39)
	WriteToLog('lR_828:is_on '..dump(lR_828:is_on()))
	WriteToLog('lR_828:get_frequency '..dump(lR_828:get_frequency()))
	--WriteToLog('lR_828:set_frequency '..dump(lR_828:set_frequency())) -- test parameters
	--WriteToLog('lR_828:set_modulation '..dump(lR_828:set_modulation())) -- test parameters
	--WriteToLog('lR_828:set_channel '..dump(lR_828:set_channel())) -- test parameters
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
	
	Device test, Device 2 to 32
	is value "userdata", is only DLL intern functions
	
	local ltmp1 = 0
	for ltmp2 = 1, 50, 1 do
		ltmp1 = GetDevice(ltmp2)
		WriteToLog(ltmp2..': '..dump(ltmp1))
		WriteToLog(ltmp2..' (metatable): '..dump(getmetatable(ltmp1)))
	end
	]]

	-- Radio comunication
	-- JADRO 1A
	local lJADRO_1A = GetDevice(37)
	if lJADRO_1A:is_on() then
		SendDataHW("2000", string.format("%7.4f", lJADRO_1A:get_frequency()/1000000))
	else
		SendDataHW("2000", "-")
	end
	
	-- R_863 (center)
	local lR_863_c = GetDevice(38)
	SendDataHW("2001", string.format("%7.3f", lR_863_c:get_frequency()/1000000))
	
	-- R_863 (left) Channel
	local lR_863_l = {[0.0]="1",[0.05]="2",[0.10]="3",[0.15]="4",[0.20]="5",[0.25]="6",[0.30]="7",[0.35]="8",[0.40]="9",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20"}
	SendDataHW("2002", lR_863_l[math.round(mainPanelDevice:get_argument_value(370), 2)])
	
	-- R_863 (left) Frequency
	-- is the same frequency as R_863 (center), but not the frequency from R_863 (left)
	local lR_863_F = GetDevice(38)
	SendDataHW("2003", string.format("%7.3f", lR_863_F:get_frequency()/1000000))
	
	-- R_828 Channel
	local lR_828 = {[0.0]="1",[0.101]="2",[0.199]="3",[0.302]="4",[0.400]="5",[0.502]="6",[0.601]="7",[0.697]="8",[0.801]="9",[0.898]="10"}
	SendDataHW("2004", lR_828[math.round(mainPanelDevice:get_argument_value(736), 3)])
	
	-- R_828 Frequency
	local lR_828_F = GetDevice(39)
	if lR_828_F:is_on() then
		SendDataHW("2005", string.format("%7.3f", lR_828_F:get_frequency()/1000000))
	else
		SendDataHW("2005", "-")
	end
	
	-- UV-26
	local lUV26 = list_indication(5)
	lUV26 = lUV26:gsub("-----------------------------------------", "")
	lUV26 = lUV26:gsub("txt_digits", "")
	lUV26 = lUV26:gsub("%c", "")
	
	SendDataHW("2006", string.format("%s", lUV26))
	
	
	--============================================================================================
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
