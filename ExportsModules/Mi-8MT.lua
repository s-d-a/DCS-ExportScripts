-- Mi-8MTV2 Export

ExportScript.FoundDCSModule = true
ExportScript.Version.Mi8MT = "1.2.1"

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
	-- Variometer
	---------------------------------------------------------------
	[16] = "%.4f",		-- Variometer_L {-30, -20, -10, -5, -2, -1, 0, 1, 2, 5, 10, 20, 30} {-1.0, -0.71, -0.43, -0.23, -0.09, -0.05, 0, 0.05, 0.09, 0.23, 0.43, 0.71, 1.0}
	[95] = "%.4f",		-- Variometer_R {-30, -20, -10, -5, -2, -1, 0, 1, 2, 5, 10, 20, 30} {-1.0, -0.71, -0.43, -0.23, -0.09, -0.05, 0, 0.05, 0.09, 0.23, 0.43, 0.71, 1.0}
	-- Airspeed
	---------------------------------------------------------------
	[24] = "%.4f",		-- IAS_L {-10.0, 0.0, 13.889, 27.78, 41.67, 55.56, 69.44, 83.33, 111.1, 125.0, 129.2} {0.0, 0.001, 0.028, 0.165, 0.277, 0.393, 1.0}
	[790] = "%.4f",		-- IAS_R {-10.0, 0.0, 13.889, 27.78, 41.67, 55.56, 69.44, 83.33, 111.1, 125.0, 129.2} {0.0, 0.001, 0.028, 0.165, 0.277, 0.393, 1.0}
	-- AGB-3k
	---------------------------------------------------------------
	[13] = "%.4f",		-- AGB_3K_Left_roll {-1.0, 1.0}
	--[12] = "%.4f",		-- AGB_3K_Left_pitch {1.0, -1.0}
	[14] = "%.4f",		-- AGB_3K_Left_failure_flag {0.0, 1.0}
	[15] = "%.4f",		-- AGB_3K_Left_sideslip {1.0, -1.0}
	[820] = "%.4f",		-- AGB_3K_Left_index {0.5, -0.5}
	------
	[92] = "%.4f",		-- AGB_3K_Right_roll {-1.0, 1.0}
	--[91] = "%.4f",		-- AGB_3K_Right_pitch {1.0, -1.0}
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
	--[21] = "%.4f",		-- VD_10K_L_PRESS {0.0, 1.0}
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
	[30] = "%.f",		-- A_036_DangerRALT_lamp {0.0, 1.0}
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
	[822] = "%.f",		-- diss15_check_control_lamp {0.0, 0.9}
	[823] = "%.f",		-- diss15_check_work_lamp {0.0, 0.9}
	[824] = "%.f",		-- diss15_check_failM_lamp {0.0, 0.9}
	[825] = "%.f",		-- diss15_check_failC_lamp {0.0, 0.9}
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
	[786] = "%.f",		-- SPUU52_lamp {0.0, 1.0}
	-- PU-26 LAMP
	---------------------------------------------------------------
	[827] = "%.f",		-- PU_26_GA_Lamp {0.0, 1.0} {0.0, 0.5}
	-- ARC-UD
	---------------------------------------------------------------
	[458] = "%.f",		-- ARC_UD_Narrow_Lamp {0.0, 0.9}
	[459] = "%.f",		-- ARC_UD_Wide_Lamp {0.0, 0.9}
	[460] = "%.f",		-- ARC_UD_Pulse_Lamp {0.0, 0.9}
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
	[849] = "%.f",		-- Jadro_ASU_Lamp {0.0, 1.0}
	[848] = "%.f",		-- Jadro_Ctl_Lamp {0.0, 1.0}
	[850] = "%.f",		-- Jadro_Breakdown_Lamp {0.0, 1.0}
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
	[781] = "%.f",		-- lamp_AP_heading_on
	[782] = "%.f",		-- lamp_AP_heading_off
	[783] = "%.f",		-- lamp_AP_pitch_roll_on
	[784] = "%.f",		-- lamp_AP_height_on
	[785] = "%.f",		-- lamp_AP_height_off
	[316] = "%.f",		-- lamp_ENGINE_RT_LEFT_ON
	[317] = "%.f",		-- lamp_ENGINE_RT_RIGHT_ON
	[318] = "%.f",		-- lamp_SARPP_ON
	[325] = "%.f",		-- lamp_Descent_Siren
	[326] = "%.f",		-- lamp_LOCK_OPEN
	[327] = "%.f",		-- lamp_DOORS_OPEN
	[340] = "%.f",		-- lamp_TURN_ON_RI_65
	[360] = "%.f",		-- lamp_FROST
	[362] = "%.f",		-- lamp_LEFT_ENG_HEATING
	[363] = "%.f",		-- lamp_RIGHT_ENG_HEATING
	[361] = "%.f",		-- lamp_ANTI_ICE_ON
	[364] = "%.f",		-- lamp_LEFT_PZU_FRONT
	[365] = "%.f",		-- lamp_RIGHT_PZU_FRONT
	[366] = "%.f",		-- lamp_LEFT_PZU_BACK
	[367] = "%.f",		-- lamp_RIGHT_PZU_BACK
	[373] = "%.f",		-- lamp_SECTION_1
	[375] = "%.f",		-- lamp_SECTION_2
	[374] = "%.f",		-- lamp_SECTION_3
	[376] = "%.f",		-- lamp_SECTION_4
	[368] = "%.f",		-- lamp_RIO_heating_ok
	[377] = "%.f",		-- lamp_LEFT_ENG_FIRE
	[378] = "%.f",		-- lamp_RIGHT_ENG_FIRE
	[379] = "%.f",		-- lamp_KO50_FIRE
	[380] = "%.f",		-- lamp_REDUC_AI9_FIRE
	[381] = "%.f",		-- lamp_FIRE_LENG_1_QUEUE
	[382] = "%.f",		-- lamp_FIRE_RENG_1_QUEUE
	[383] = "%.f",		-- lamp_FIRE_KO50_1_QUEUE
	[384] = "%.f",		-- lamp_FIRE_REDUCT_1_QUEUE
	[385] = "%.f",		-- lamp_FIRE_LENG_2_QUEUE
	[386] = "%.f",		-- lamp_FIRE_RENG_2_QUEUE
	[387] = "%.f",		-- lamp_FIRE_KO50_2_QUEUE
	[388] = "%.f",		-- lamp_FIRE_REDUCT_2_QUEUE
	[398] = "%.f",		-- lamp_CHECK_SENSORS
	[407] = "%.f",		-- lamp_HYDRO_main_on
	[408] = "%.f",		-- lamp_HYDRO_aux_on
	[414] = "%.f",		-- lamp_APD9_on
	[416] = "%.f",		-- lamp_APD9_oil_pressure
	[417] = "%.f",		-- lamp_APD9_rpm
	[418] = "%.f",		-- lamp_APD9_rpm_high
	[420] = "%.f",		-- lamp_APD_on
	[424] = "%.f",		-- lamp_APD_starter_on
	[434] = "%.f",		-- lamp_FUEL_left_closed
	[435] = "%.f",		-- lamp_FUEL_right_closed
	[436] = "%.f",		-- lamp_FUEL_ring_closed
	[441] = "%.f",		-- lamp_FUEL_center_on
	[442] = "%.f",		-- lamp_FUEL_left_on
	[443] = "%.f",		-- lamp_FUEL_right_on
	[461] = "%.f",		-- lamp_HEATER
	[462] = "%.f",		-- lamp_IGNITION
	[463] = "%.f",		-- lamp_KO50_ON
	[341] = "%.f",		-- lamp_LEFT_PITOT_HEATER_OK
	[490] = "%.f",		-- lamp_RIGHT_PITOT_HEATER_OK
	[509] = "%.f",		-- lamp_LEFT_PZU_ON
	[510] = "%.f",		-- lamp_RIGHT_PZU_ON
	[504] = "%.f",		-- lamp_ELEC_turn_VU1
	[505] = "%.f",		-- lamp_ELEC_turn_VU2
	[506] = "%.f",		-- lamp_ELEC_turn_VU3
	[507] = "%.f",		-- lamp_ELEC_DC_ground
	[508] = "%.f",		-- lamp_ELEC_test_equipment
	[543] = "%.f",		-- lamp_ELEC_gen1_fail
	[544] = "%.f",		-- lamp_ELEC_gen2_fail
	[545] = "%.f",		-- lamp_ELEC_AC_ground
	[546] = "%.f",		-- lamp_ELEC_PO_500
	[86] = "%.f",		-- lamp_CIRCUIT_FROM_BATTERY
	[68] = "%.f",		-- lamp_CLOG_TF_LEFT
	[69] = "%.f",		-- lamp_CLOG_TF_RIGHT
	[70] = "%.f",		-- lamp_CHIP_LEFT_ENG
	[71] = "%.f",		-- lamp_CHIP_RIGHT_ENG
	[72] = "%.f",		-- lamp_VIBRATION_LEFT_HIGH
	[73] = "%.f",		-- lamp_VIBRATION_RIGHT_HIGH
	[74] = "%.f",		-- lamp_FIRE
	[76] = "%.f",		-- lamp_LEFT_ENG_TURN_OFF
	[77] = "%.f",		-- lamp_RIGHT_ENG_TURN_OFF
	[78] = "%.f",		-- lamp_FT_LEFT_HIGH
	[79] = "%.f",		-- lamp_FT_RIGHT_HIGH
	[80] = "%.f",		-- lamp_OIL_PRESSURE_LEFT
	[81] = "%.f",		-- lamp_OIL_PRESSURE_RIGHT
	[82] = "%.f",		-- lamp_ER_LEFT
	[83] = "%.f",		-- lamp_ER_RIGHT
	[84] = "%.f",		-- lamp_EEC_LEFT_OFF
	[85] = "%.f",		-- lamp_EEC_RIGHT_OFF
	[873] = "%.f",		-- lamp_CHIP_MAIN_REDUCTOR
	[874] = "%.f",		-- lamp_CHIP_INTER_REDUCTOR
	[875] = "%.f",		-- lamp_CHIP_TAIL_REDUCTOR
	[64] = "%.f",		-- lamp_300_Left
	[65] = "%.f",		-- lamp_DISS_OFF
	[555] = "%.f",		-- lamp_BD1
	[556] = "%.f",		-- lamp_BD2
	[557] = "%.f",		-- lamp_BD3
	[558] = "%.f",		-- lamp_BD4
	[559] = "%.f",		-- lamp_BD5
	[560] = "%.f",		-- lamp_BD6
	[711] = "%.f",		-- lamp_BD1Bomb
	[712] = "%.f",		-- lamp_BD2Bomb
	[713] = "%.f",		-- lamp_BD3Bomb
	[714] = "%.f",		-- lamp_BD4Bomb
	[715] = "%.f",		-- lamp_BD5Bomb
	[716] = "%.f",		-- lamp_BD6Bomb
	[562] = "%.f",		-- lamp_PUS1
	[563] = "%.f",		-- lamp_PUS3
	[564] = "%.f",		-- lamp_PUS4
	[565] = "%.f",		-- lamp_PUS6
	[561] = "%.f",		-- lamp_EmergExplode
	[705] = "%.f",		-- lamp_EmergExplodeSec
	[710] = "%.f",		-- lamp_BV_Net_On
	[566] = "%.f",		-- lamp_RS_Net_On
	[567] = "%.f",		-- lamp_GUV_Net_On
	--[] = "%.f",		-- lamp_MV_Net_On
	[568] = "%.f",		-- lamp_FKP_On
	[778] = "%.f",		-- lamp_Caution_Weap
	--[] = "%.f",		-- lamp_LeftSignal
	--[] = "%.f",		-- lamp_RightSignal
	[586] = "%.f",		-- lamp_Caution_Weap1
	[587] = "%.f",		-- lamp_Caution_Weap2
	[588] = "%.f",		-- lamp_Caution_Weap3
	[306] = "%.f",		-- lamp_Record_P503B
	[302] = "%.f",		-- lamp_IFF_KD
	[303] = "%.f",		-- lamp_IFF_KP
	[912] = "%.f",		-- lamp_IFF_TurnOnReserve
	[87] = "%.f",		-- lamp_IFF_Failure
	-- Lights system
	---------------------------------------------------------------
	[880] = "%.f",		-- RedLightLhGr1 {1.0, 0.0}
	[896] = "%.f",		-- RedLightLhGr2 {1.0, 0.0}
	[897] = "%.f",		-- RedLightRhGr1 {1.0, 0.0}
	[898] = "%.f",		-- RedLightRhGr2 {1.0, 0.0}
	[899] = "%.f",		-- RedLightChGr1 {1.0, 0.0}
	[901] = "%.f",		-- RedLightChGr2 {1.0, 0.0}
	[922] = "%.f",		-- RedLightChGr12 {1.0, 0.0}
	[902] = "%.f",		-- RedLight5V5 {1.0, 0.0}
	[900] = "%.f",		-- PlafondBrightness {1.0, 0.0}
	[547] = "%.f",		-- LeftPlafond {1.0, 0.0}
	[665] = "%.f",		-- RightPlafond {1.0, 0.0}
	[920] = "%.f"		-- RecorderP503B_PanelLightness {1.0, 0.0}
	-- Windshield Wiper
	--[254] = "%.4f"		-- WindscreenWiperL {0.0, 1.0}
	--[255] = "%.4f"		-- WindscreenWiperR {0.0, 1.0}
}
ExportScript.ConfigArguments = 
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
	[589] = "%.4f",		--PTR-LAZS-LVR-AIMLGT (Sight Brightness)

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
	------------------------------------------------
	[352] = "%1d",		--PTR-LPE-TMB-FKP (Gun Camera Switch, ON/OFF)
	------------------------------------------------
	-- Windshield Wiper
	[331] = "%.1f",		--PTR-LES-TMB-GLSCLN (Left Windscreen Wiper Control Switch, OFF, START, RESET, SPEED 1, SPEED 2) {0.0,0.1,0.2,0.3,0.4}
	[478] = "%.1f",		--PTR-RES-TMB-GLSCLN (Right Windscreen Wiper Control Switch, OFF, START, RESET, SPEED 1, SPEED 2) {0.0,0.1,0.2,0.3,0.4}
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
	
	--[12] = "%.4f",		-- AGB_3K_Left_pitch {1.0, -1.0}
	--[91] = "%.4f",		-- AGB_3K_Right_pitch {1.0, -1.0}
	ExportScript.Tools.SendData(12, string.format("%.4f", ExportScript.Tools.negate(mainPanelDevice:get_argument_value(12)))) -- negate
	
	ExportScript.Tools.SendData(91, string.format("%.4f", ExportScript.Tools.negate(mainPanelDevice:get_argument_value(91)))) -- negate
	
	--[21] = "%.4f",		-- VD_10K_L_PRESS {0.0, 1.0}
	ExportScript.Tools.SendData(21, string.format("%.4f", ExportScript.Tools.negate(mainPanelDevice:get_argument_value(21)))) -- negate
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

	-- Cockpit Light
	ExportScript.Tools.IkarusCockpitLights(mainPanelDevice, {280, 281, 491, 492, 894, 895, 914})
	-- Lh RedLights Brightness Rst gr.1, Lh RedLights Brightness Rst gr.2, Rh RedLights Brightness Rst gr.1, Rh RedLights Brightness Rst gr.2, Central RedLights Brightness Rst gr.1, Central RedLights Brightness Rst gr.2, 5.5V Lights Brightness Rheostat

	-- deactivated WPADI right warning Flag 
	ExportScript.Tools.SendData(2020, 0)
	
	-- UV-26
	local lUV26 = ExportScript.Tools.getListIndicatorValue(4)

	if lUV26 ~= nil and lUV26.txt_digits ~= nil then
		ExportScript.Tools.SendData(2006, string.format("%s", lUV26.txt_digits))
	else
		ExportScript.Tools.SendData(2006, " ")
	end
	
	--[[
	-- AGB_3K_LEFT
	local lAGB_3K_LEFT = GetDevice(6)
	ExportScript.Tools.WriteToLog('lAGB_3K_LEFT:get_sideslip '..ExportScript.Tools.dump(lAGB_3K_LEFT:get_sideslip()))
	ExportScript.Tools.WriteToLog('lAGB_3K_LEFT:get_bank '..ExportScript.Tools.dump(lAGB_3K_LEFT:get_bank()))
	ExportScript.Tools.WriteToLog('lAGB_3K_LEFT:get_pitch '..ExportScript.Tools.dump(lAGB_3K_LEFT:get_pitch()))

	-- AGB_3K_RIGHT
	local lAGB_3K_RIGHT = GetDevice(7)
	ExportScript.Tools.WriteToLog('lAGB_3K_RIGHT:get_sideslip '..ExportScript.Tools.dump(lAGB_3K_RIGHT:get_sideslip()))
	ExportScript.Tools.WriteToLog('lAGB_3K_RIGHT:get_bank '..ExportScript.Tools.dump(lAGB_3K_RIGHT:get_bank()))
	ExportScript.Tools.WriteToLog('lAGB_3K_RIGHT:get_pitch '..ExportScript.Tools.dump(lAGB_3K_RIGHT:get_pitch()))

	-- DISS_15
	local lDISS_15 = GetDevice(15)
	ExportScript.Tools.WriteToLog('lDISS_15:get_w_vector '..ExportScript.Tools.dump(lDISS_15:get_w_vector()))
	ExportScript.Tools.WriteToLog('lDISS_15:get_drift_angle '..ExportScript.Tools.dump(lDISS_15:get_drift_angle()))

	-- RADAR_ALTIMETER
	local lRADAR_ALTIMETER = GetDevice(18)
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_altitude '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_altitude()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_dangerous_height_flag '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_dangerous_height_flag()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_distance_limit '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_distance_limit()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_dangerous_height '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_dangerous_height()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_warning_flag '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_warning_flag()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_mode '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_mode()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_aperture_size '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_aperture_size()))
	ExportScript.Tools.WriteToLog('lRADAR_ALTIMETER:get_needle_value '..ExportScript.Tools.dump(lRADAR_ALTIMETER:get_needle_value()))

	-- MISC_SYSTEMS_INTERFACE
	local lMISC_SYSTEMS_INTERFACE = GetDevice(20)
	ExportScript.Tools.WriteToLog('lMISC_SYSTEMS_INTERFACE:get_rotor_blades_pitch '..ExportScript.Tools.dump(lMISC_SYSTEMS_INTERFACE:get_rotor_blades_pitch()))
	ExportScript.Tools.WriteToLog('lMISC_SYSTEMS_INTERFACE:get_main_rotor_rpm '..ExportScript.Tools.dump(lMISC_SYSTEMS_INTERFACE:get_main_rotor_rpm()))

	-- SPU_7 (Intercom)
	local lSPU_7 = GetDevice(36)
	ExportScript.Tools.WriteToLog('lSPU_7:is_communicator_available '..ExportScript.Tools.dump(lSPU_7:is_communicator_available()))
	ExportScript.Tools.WriteToLog('lSPU_7:get_noise_level '..ExportScript.Tools.dump(lSPU_7:get_noise_level()))
	ExportScript.Tools.WriteToLog('lSPU_7:get_signal_level '..ExportScript.Tools.dump(lSPU_7:get_signal_level()))
	--ExportScript.Tools.WriteToLog('lSPU_7:set_communicator '..ExportScript.Tools.dump(lSPU_7:set_communicator())) -- test parameters
	--ExportScript.Tools.WriteToLog('lSPU_7:set_voip_mode '..ExportScript.Tools.dump(lSPU_7:set_voip_mode())) -- test parameters

	-- JADRO_1A
	local lJADRO_1A = GetDevice(37)
	ExportScript.Tools.WriteToLog('lJADRO_1A:is_on '..ExportScript.Tools.dump(lJADRO_1A:is_on()))
	ExportScript.Tools.WriteToLog('lJADRO_1A:get_frequency '..ExportScript.Tools.dump(lJADRO_1A:get_frequency()))
	--ExportScript.Tools.WriteToLog('lJADRO_1A:set_frequency '..ExportScript.Tools.dump(lJADRO_1A:set_frequency())) -- test parameters
	--ExportScript.Tools.WriteToLog('lJADRO_1A:set_modulation '..ExportScript.Tools.dump(lJADRO_1A:set_modulation())) -- test parameters
	--ExportScript.Tools.WriteToLog('lJADRO_1A:set_channel '..ExportScript.Tools.dump(lJADRO_1A:set_channel())) -- test parameters

	-- R_863
	local lR_863 = GetDevice(38)
	ExportScript.Tools.WriteToLog('lR_863:is_on '..ExportScript.Tools.dump(lR_863:is_on()))
	ExportScript.Tools.WriteToLog('lR_863:get_frequency '..ExportScript.Tools.dump(lR_863:get_frequency()))
	--ExportScript.Tools.WriteToLog('lR_863:set_frequency '..ExportScript.Tools.dump(lR_863:set_frequency())) -- test parameters
	--ExportScript.Tools.WriteToLog('lR_863:set_modulation '..ExportScript.Tools.dump(lR_863:set_modulation())) -- test parameters
	--ExportScript.Tools.WriteToLog('lR_863:set_channel '..ExportScript.Tools.dump(lR_863:set_channel())) -- test parameters

	-- R_828
	local lR_828 = GetDevice(39)
	ExportScript.Tools.WriteToLog('lR_828:is_on '..ExportScript.Tools.dump(lR_828:is_on()))
	ExportScript.Tools.WriteToLog('lR_828:get_frequency '..ExportScript.Tools.dump(lR_828:get_frequency()))
	--ExportScript.Tools.WriteToLog('lR_828:set_frequency '..ExportScript.Tools.dump(lR_828:set_frequency())) -- test parameters
	--ExportScript.Tools.WriteToLog('lR_828:set_modulation '..ExportScript.Tools.dump(lR_828:set_modulation())) -- test parameters
	--ExportScript.Tools.WriteToLog('lR_828:set_channel '..ExportScript.Tools.dump(lR_828:set_channel())) -- test parameters
	]]
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

	-- Radio comunication
	-- JADRO 1A
	local lJADRO_1A = GetDevice(37)
	if lJADRO_1A:is_on() then
		--ExportScript.Tools.SendDataDAC("2000", string.format("%7.4f", lJADRO_1A:get_frequency()/1000000))
		ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy(lJADRO_1A:get_frequency()/1000000, "7.4"))
	else
		ExportScript.Tools.SendDataDAC("2000", "-")
	end

	-- R_863 (center)
	local lR_863_c = GetDevice(38)
	--ExportScript.Tools.SendDataDAC("2001", string.format("%7.3f", lR_863_c:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2001", ExportScript.Tools.RoundFreqeuncy(lR_863_c:get_frequency()/1000000))

	-- R_863 (left) Channel
	local lR_863_l = {[0.0]="1",[0.05]="2",[0.10]="3",[0.15]="4",[0.20]="5",[0.25]="6",[0.30]="7",[0.35]="8",[0.40]="9",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20"}
	ExportScript.Tools.SendDataDAC("2002", lR_863_l[ExportScript.Tools.round(mainPanelDevice:get_argument_value(370), 2)])

	-- R_863 (left) Frequency
	-- is the same frequency as R_863 (center), but not the frequency from R_863 (left)
	local lR_863_F = GetDevice(38)
	--ExportScript.Tools.SendDataDAC("2003", string.format("%7.3f", lR_863_F:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2003", ExportScript.Tools.RoundFreqeuncy(lR_863_F:get_frequency()/1000000))

	-- R_828 Channel
	local lR_828 = {[0.0]="1",[0.101]="2",[0.199]="3",[0.302]="4",[0.400]="5",[0.502]="6",[0.601]="7",[0.697]="8",[0.801]="9",[0.898]="10"}
	ExportScript.Tools.SendDataDAC("2004", lR_828[ExportScript.Tools.round(mainPanelDevice:get_argument_value(736), 3)])

	-- R_828 Frequency
	local lR_828_F = GetDevice(39)
	if lR_828_F:is_on() then
		--ExportScript.Tools.SendDataDAC("2005", string.format("%7.3f", lR_828_F:get_frequency()/1000000))
		ExportScript.Tools.SendDataDAC("2005", ExportScript.Tools.RoundFreqeuncy(lR_828_F:get_frequency()/1000000))
	else
		ExportScript.Tools.SendDataDAC("2005", "-")
	end

	-- UV-26
	local lUV26 = ExportScript.Tools.getListIndicatorValue(4)

	if lUV26 ~= nil and lUV26.txt_digits ~= nil then
		ExportScript.Tools.SendDataDAC("2006", string.format("%s", lUV26.txt_digits))
	else
		ExportScript.Tools.SendDataDAC("2006", "-")
	end

	-- generic Radio display and frequency rotarys
	-------------------------------------------------
	-- genericRadioConf
	ExportScript.genericRadioConf = {}
	ExportScript.genericRadioConf['maxRadios'] = 3                       -- numbers of aviables/supported radios
	ExportScript.genericRadioConf[1] = {}                                -- first radio
	ExportScript.genericRadioConf[1]['Name'] = "R-863 VHF/UHF"          -- name of radio
	ExportScript.genericRadioConf[1]['DeviceID'] = 38                    -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[1]['setFrequency'] = true              -- change frequency active
	ExportScript.genericRadioConf[1]['FrequencyMultiplicator'] = 1000000 -- Multiplicator from Hz to MHz
	ExportScript.genericRadioConf[1]['FrequencyFormat'] = "%7.3f"        -- frequency view format LUA style
	ExportScript.genericRadioConf[1]['FrequencyStep'] = 25               -- minimal step for frequency change
	ExportScript.genericRadioConf[1]['minFrequency'] = 100.000           -- lowest frequency
	ExportScript.genericRadioConf[1]['maxFrequency'] = 399.975           -- highest frequency
	ExportScript.genericRadioConf[1]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[1]['Power']['ButtonID'] = 3068         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Power']['ValueOn'] = 1.0           -- power on value from cklickable.lua
	ExportScript.genericRadioConf[1]['Power']['ValueOff'] = -1.0         -- power off value from cklickable.lua
	ExportScript.genericRadioConf[1]['Volume'] = {}                      -- volume knob active
	ExportScript.genericRadioConf[1]['Volume']['ButtonID'] = 3005        -- volume button id from cklickable.lua
--	ExportScript.genericRadioConf[1]['Preset'] = {}                      -- preset knob active
--	ExportScript.genericRadioConf[1]['Preset']['ArgumentID'] = 161       -- ManualPreset argument id from cklickable.lua
--	ExportScript.genericRadioConf[1]['Preset']['ButtonID'] = 3001        -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
--	ExportScript.genericRadioConf[1]['Preset']['List'] = {[0.0]="01",[0.05]="02",[0.10]="03",[0.15]="04",[0.20]="05",[0.25]="06",[0.30]="07",[0.35]="08",[0.40]="09",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20",[1.00]="01"}
--	ExportScript.genericRadioConf[1]['Preset']['Step'] = 0.05            -- minimal step for preset change
	ExportScript.genericRadioConf[1]['Squelch'] = {}                     -- squelch switch active
	ExportScript.genericRadioConf[1]['Squelch']['ArgumentID'] = 155      -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ButtonID'] = 3004       -- squelch button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ValueOn'] = 1.0         -- squelch on value from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ValueOff'] = 0.0        -- squelch off value from cklickable.lua
--	ExportScript.genericRadioConf[1]['Load'] = {}                        -- load button preset
--	ExportScript.genericRadioConf[1]['Load']['ButtonID'] = 3015          -- load button id from cklickable.lua
	-- ManualPreset is AM FM modus switch Manual=AM, Preset=FM
--	ExportScript.genericRadioConf[1]['ManualPreset'] = {}                -- switch manual or preset active
--	ExportScript.genericRadioConf[1]['ManualPreset']['ArgumentID'] = 369 -- ManualPreset argument id from cklickable.lua
--	ExportScript.genericRadioConf[1]['ManualPreset']['ButtonID'] = 3001  -- ManualPreset button id from cklickable.lua
--	ExportScript.genericRadioConf[1]['ManualPreset']['ValueManual'] = 0.0-- ManualPreset Manual value from cklickable.lua
--	ExportScript.genericRadioConf[1]['ManualPreset']['ValuePreset'] = 0.1-- ManualPreset Preset value from cklickable.lua

	ExportScript.genericRadioConf[2] = {}                                -- secound radio
	ExportScript.genericRadioConf[2]['Name'] = "YaDRO-1A HF"             -- name of radio
	ExportScript.genericRadioConf[2]['DeviceID'] = 37                    -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[2]['setFrequency'] = true              -- change frequency active
	ExportScript.genericRadioConf[2]['FrequencyMultiplicator'] = 1000000 -- Multiplicator from Hz to MHz
	ExportScript.genericRadioConf[2]['FrequencyFormat'] = "%7.4f"        -- frequency view format LUA style
	ExportScript.genericRadioConf[2]['FrequencyStep'] = 1                -- minimal step for frequency change
	ExportScript.genericRadioConf[2]['minFrequency'] = 2.000             -- lowest frequency
	ExportScript.genericRadioConf[2]['maxFrequency'] = 17.999            -- highest frequency
	ExportScript.genericRadioConf[2]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[2]['Power']['ButtonID'] = 3013         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[2]['Power']['ValueOn'] = 0.1           -- power on value from cklickable.lua
	ExportScript.genericRadioConf[2]['Power']['ValueOff'] = 0.0          -- power off value from cklickable.lua
	ExportScript.genericRadioConf[2]['Volume'] = {}                      -- volume knob active
	ExportScript.genericRadioConf[2]['Volume']['ButtonID'] = 3007        -- volume button id from cklickable.lua
--	ExportScript.genericRadioConf[2]['Preset'] = {}                      -- preset knob active
--	ExportScript.genericRadioConf[2]['Preset']['ArgumentID'] = 137       -- ManualPreset argument id from cklickable.lua
--	ExportScript.genericRadioConf[2]['Preset']['ButtonID'] = 3001        -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
--	ExportScript.genericRadioConf[2]['Preset']['List'] = {[0.0]="01",[0.01]="02",[0.02]="03",[0.03]="04",[0.04]="05",[0.05]="06",[0.06]="07",[0.07]="08",[0.08]="09",[0.09]="10",[0.10]="11",[0.11]="12",[0.12]="13",[0.13]="14",[0.14]="15",[0.15]="16",[0.16]="17",[0.17]="18",[0.18]="19",[0.19]="20",[0.20]="01"}
--	ExportScript.genericRadioConf[2]['Preset']['Step'] = 0.01            -- minimal step for preset change
	ExportScript.genericRadioConf[2]['Squelch'] = {}                     -- squelch switch active
	ExportScript.genericRadioConf[2]['Squelch']['ArgumentID'] = 743      -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[2]['Squelch']['ButtonID'] = 3008       -- squelch button id from cklickable.lua
	ExportScript.genericRadioConf[2]['Squelch']['ValueOn'] = 0.7         -- squelch on value from cklickable.lua
	ExportScript.genericRadioConf[2]['Squelch']['ValueOff'] = 0.0        -- squelch off value from cklickable.lua
	-- Load is autotune lamp on Mi-8
	ExportScript.genericRadioConf[2]['Load'] = {}                        -- load button preset
	ExportScript.genericRadioConf[2]['Load']['ButtonID'] = nil           -- load button id from cklickable.lua, Load button deactiviert
	ExportScript.genericRadioConf[2]['Load']['ArgumentID'] = 849         -- load argument id for autotune lamp on Mi-8
	-- ManualPreset button change between SSB (Single SideBand) and AM, Manual=SSB, AM=Preset
	ExportScript.genericRadioConf[2]['ManualPreset'] = {}                -- switch manual or preset active
	ExportScript.genericRadioConf[2]['ManualPreset']['ArgumentID'] = 744 -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[2]['ManualPreset']['ButtonID'] = 3001  -- ManualPreset button id from cklickable.lua
	ExportScript.genericRadioConf[2]['ManualPreset']['ValueManual'] = 0.5-- ManualPreset Manual value from cklickable.lua
	ExportScript.genericRadioConf[2]['ManualPreset']['ValuePreset'] = 1.0-- ManualPreset Preset value from cklickable.lua

	ExportScript.genericRadioConf[3] = {}                                -- secound radio
	ExportScript.genericRadioConf[3]['Name'] = " R-828 LVHF FM"          -- name of radio
	ExportScript.genericRadioConf[3]['DeviceID'] = 39                    -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[3]['setFrequency'] = false             -- change frequency active
	ExportScript.genericRadioConf[3]['FrequencyMultiplicator'] = 1000000 -- Multiplicator from Hz to MHz
	ExportScript.genericRadioConf[3]['FrequencyFormat'] = "%7.3f"        -- frequency view format LUA style
	ExportScript.genericRadioConf[3]['FrequencyStep'] = 25               -- minimal step for frequency change
	ExportScript.genericRadioConf[3]['minFrequency'] = 20.000            -- lowest frequency
	ExportScript.genericRadioConf[3]['maxFrequency'] = 59.975            -- highest frequency
	ExportScript.genericRadioConf[3]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[3]['Power']['ButtonID'] = 3005         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[3]['Power']['ValueOn'] = 1.0           -- power on value from cklickable.lua
	ExportScript.genericRadioConf[3]['Power']['ValueOff'] = 0.0          -- power off value from cklickable.lua
	ExportScript.genericRadioConf[3]['Volume'] = {}                      -- volume knob active
	ExportScript.genericRadioConf[3]['Volume']['ButtonID'] = 3002        -- volume button id from cklickable.lua
	ExportScript.genericRadioConf[3]['Preset'] = {}                      -- preset knob active
	ExportScript.genericRadioConf[3]['Preset']['ArgumentID'] = 735       -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[3]['Preset']['ButtonID'] = 3001        -- preset button id from cklickable.lua
--	ExportScript.genericRadioConf[3]['Preset']['ButtonID2'] = 3002       -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
	ExportScript.genericRadioConf[3]['Preset']['List'] = {[0.0]="1",[0.1]="2",[0.2]="3",[0.3]="4",[0.4]="5",[0.5]="6",[0.6]="7",[0.7]="8",[0.8]="9",[0.9]="10"}
	ExportScript.genericRadioConf[3]['Preset']['Step'] = 0.1            -- minimal step for preset change
--	ExportScript.genericRadioConf[3]['Preset']['Step2'] = -0.1           -- minimal step for preset change
	ExportScript.genericRadioConf[3]['Squelch'] = {}                     -- squelch switch active
	ExportScript.genericRadioConf[3]['Squelch']['ArgumentID'] = 739      -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[3]['Squelch']['ButtonID'] = 3004       -- squelch button id from cklickable.lua
	ExportScript.genericRadioConf[3]['Squelch']['ValueOn'] = 0.0         -- squelch on value from cklickable.lua
	ExportScript.genericRadioConf[3]['Squelch']['ValueOff'] = -1.0        -- squelch off value from cklickable.lua
	ExportScript.genericRadioConf[3]['Load'] = {}                        -- load button preset
	ExportScript.genericRadioConf[3]['Load']['ButtonID'] = 3003          -- load button id from cklickable.lua
	ExportScript.genericRadioConf[3]['Load']['ArgumentID'] = 740         -- load argument id for autotune lamp on Mi-8
	-- ManualPreset change betwen VOICE and HOMING Mode, Manual=Voice, Preset=Homing
	ExportScript.genericRadioConf[3]['ManualPreset'] = {}                -- switch manual or preset active
	ExportScript.genericRadioConf[3]['ManualPreset']['ArgumentID'] = 757 -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[3]['ManualPreset']['ButtonID'] = 3006  -- ManualPreset button id from cklickable.lua
	ExportScript.genericRadioConf[3]['ManualPreset']['ValueManual'] = 1.0-- ManualPreset Manual value from cklickable.lua
	ExportScript.genericRadioConf[3]['ManualPreset']['ValuePreset'] = 0.0-- ManualPreset Preset value from cklickable.lua

	ExportScript.genericRadio(nil, nil)

	--============================================================================================
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
