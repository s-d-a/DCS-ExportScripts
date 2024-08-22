-- SA342 Gazelle 
-- based on Bailey ExportScripts
ExportScript.FoundDCSModule = true
ExportScript.Version.SA342Minigun = "2.0"

ExportScript.ConfigEveryFrameArguments = 
{
	-- Gyro Panel
	[200] = "%.4f",	-- Gyro_Needle_State {-1,1} Gyro Panel SYNC
	[201] = "%.f",	-- Gyro_voyant_test Lamp {0,1} 
	[202] = "%.f",	-- Gyro_voyant_trim Lamp {0,1}
	[203] = "%.f",	-- Gyro_voyant_bpp Lamp {0,1}
	[208] = "%.f",  --GYRO_Flags {0,1}
	-- Autopilot Panel
	[37] = "%.4f",	-- T_Needle_State {-1,1} Pitch correction Indicator
	[38] = "%.4f",	-- R_Needle_State {-1,1} Roll correction Indicator
	[39] = "%.4f",	-- L_Needle_State {-1,1} Yaw correction Indicator
	[196] = "%.4f",	-- RWR_light {0,1} -- RWR background light
	--[] = "%.4f",	-- PE_fondbright {0,1} ???
	--[353] = "%.4f",	-- NADIR_fondbright {0,1} ???
	-- Flare Dispenser Lamps
	[233] = "%.f",	-- Voyant_FD_On {0,1} Power On
	[231] = "%.f",	-- Voyant_FD_G {0,1} select Left
	[232] = "%.f",	-- Voyant_FD_D {0,1} select Right
	[227] = "%.f",	-- Voyant_FD_LEU {0,1} Status LEU
	[223] = "%.f",	-- Voyant_FD_G_vide1 {0,1} Status Left G
	[224] = "%.f",	-- Voyant_FD_G_vide2 {0,1} Status Left VIDE
	[225] = "%.f",	-- Voyant_FD_D_vide1 {0,1} Status Right G
	[226] = "%.f",	-- Voyant_FD_D_vide2 {0,1} Status Right VIDE
	-- ADF Radio
	[158] = "%0.1f",	-- ADF_nav1_centaine {0,1} X00.0 khz {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[159] = "%0.1f",	-- ADF_nav1_dizaine {0,1} 0X0.0 khz {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[160] = "%0.1f",	-- ADF_nav1_unite {0,1} 00X.0 khz {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[161] = "%0.1f",	-- ADF_nav1_dec {0,1} 000.X khz {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[162] = "%0.1f",	-- ADF_nav2_centaine {0,1} X00.0 khz {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[163] = "%0.1f",	-- ADF_nav2_dizaine {0,1} 0X0.0 khz {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[164] = "%0.1f",	-- ADF_nav2_unite {0,1} 00X.0 khz {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[165] = "%0.1f",	-- ADF_nav2_dec {0,1} 000.X khz {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	-- ADF Gauge
	[113] = "%.4f",	-- ADF_Fond Compass rose {0,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,210,220,230,240,250,260,270,280,290,300,310,320,330,340,350,360}{0.0,0.028,0.055,0.084,0.111,0.138,0.166,0.194,0.222,0.249,0.2775,0.305,0.332,0.36,0.388,0.415,0.4434,0.47,0.498,0.526,0.555,0.583,0.611,0.638,0.6665,0.694,0.722,0.75,0.776,0.805,0.833,0.861,0.8885,0.917,0.944,0.972,1.0}
	--[102] = "%.4f",	-- ADF_Aiguille_large Heading Needle large {-360.0,0.0,360.0}{-1.0,0.0,1.0}
	[103] = "%.4f",	-- ADF_Aiguille_fine Heading Needle fine {-360.0,0.0,360.0}{-1.0,0.0,1.0}
	[107] = "%.1f",	-- ADF_FlagCAP {0,1}
	[109] = "%.1f",	-- ADF_FlagBut {0,1}
	[108] = "%.1f",	-- ADF_FlagCompteur PX Flag {0,1}
	[110] = "%0.1f",	-- ADF_compteur_Cent {0,1} X00 {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[111] = "%0.1f",	-- ADF_compteur_Dix {0,1} 0X0 {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[112] = "%0.1f",	-- ADF_compteur_Unit {0,1} 00X {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	-- CLOCK
	[41] = "%.3f",	-- CLOCK_HOUR {0,1,2,3,4,5,6,7,8,9,10,11,12}{0,0.081,0.162,0.245,0.33,0.415,0.501,0.587,0.672,0.756,0.838,0.919,1}
	[42] = "%.3f",	-- CLOCK_SECOND {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60}{0,0.017,0.033,0.049,0.065,0.08,0.098,0.115,0.131,0.147,0.163,0.18,0.195,0.213,0.23,0.246,0.262,0.279,0.296,0.313,0.33,0.346,0.363,0.38,0.397,0.415,0.431,0.449,0.466,0.483,0.501,0.518,0.535,0.552,0.569,0.586,0.604,0.621,0.638,0.655,0.672,0.688,0.705,0.722,0.739,0.755,0.771,0.788,0.804,0.821,0.838,0.853,0.87,0.885,0.902,0.919,0.934,0.95,0.967,0.984,1}
	[43] = "%.3f",	-- CLOCK_MINUTE {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60}{0,0.017,0.033,0.049,0.065,0.08,0.098,0.115,0.131,0.147,0.163,0.18,0.195,0.213,0.23,0.246,0.262,0.279,0.296,0.313,0.33,0.346,0.363,0.38,0.397,0.415,0.431,0.449,0.466,0.483,0.501,0.518,0.535,0.552,0.569,0.586,0.604,0.621,0.638,0.655,0.672,0.688,0.705,0.722,0.739,0.755,0.771,0.788,0.804,0.821,0.838,0.853,0.87,0.885,0.902,0.919,0.934,0.95,0.967,0.984,1}
	[44] = "%.3f",	-- CLOCK_MINI {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}{0,0.032,0.065,0.098,0.131,0.164,0.198,0.231,0.264,0.297,0.331,0.364,0.397,0.43,0.464,0.497,0.523,0.551,0.576,0.605,0.63,0.659,0.684,0.714,0.758,0.796,0.838,0.879,0.92,0.958,1}
	[210] = "%.4f", -- Clock_ExtCouronne
	-- Wipers
	--[547] = "%.4f",	-- EGPilote {-1,1}
	--[546] = "%.4f",	-- EGCopilote {-1,1}
	-- LIGHTS
	--[40] = "%.4f",	-- Lum_Plafond {0,1} Main Panel Lights
	--[142] = "%.4f",	-- PBOIntensity {0,1} Main Panel Background lights
	--[144] = "%.4f",	-- PUPIntensity {0,1} Lower Panel Background lights
	-- Baro altimetre
	[87] = "%.4f",	-- Baro_Altimeter_thousands Needle {0.0,1.0}
	[573] = "%.4f",	-- Baro_Altimeter_hundred Needle {0.0,1.0}
	[88] = "%0.1f",	-- Baro_Altimeter_press_unite 000X {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[90] = "%0.1f",	-- Baro_Altimeter_press_dix 00X0 {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[92] = "%0.1f",	-- Baro_Altimeter_press_cent 0X00 {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[95] = "%0.1f",	-- Baro_Altimeter_press_mille X000 {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	-- radar altimetre
	[94] = "%.4f",	-- Radar_Altimeter feet {0,5,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,200,250,300,350,400,450,500,550,600,650,700,750,800,850}{0,0.019,0.035,0.072,0.109,0.147,0.18,0.214,0.247,0.283,0.316,0.345,0.376,0.407,0.438,0.469,0.501,0.564,0.606,0.648,0.676,0.706,0.732,0.756,0.775,0.794,0.811,0.829,0.843,0.858,0.87}
	[93] = "%.4f",	-- DangerRALT_index {0,5,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,200,250,300,350,400,450,500,550,600,650,700,750,800,850}{0.0,0.0175,0.0338,0.0715,0.109,0.147,0.182,0.215,0.247,0.282,0.315,0.3445,0.377,0.407,0.439,0.47,0.5005,0.5628,0.6052,0.646,0.675,0.7058,0.7315,0.755,0.7747,0.793,0.8097,0.8272,0.8425,0.8575,0.8693}
	
[97] = "%.f",	-- RAltlamp {0,1}
	[98] = "%.f",	-- RAlt_flag_Panne OFF Flag{0,1}
	[99] = "%.1f",	-- RAlt_flag_MA A (Test) Flag{0,1}
	[91] = "%.1f",	-- RAlt_knob_MA Power/Test Knop{0,1}
	-- TORQUE
	[16] = "%.3f",	-- Torque {0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100,105,110}{0.085,0.13,0.172,0.214,0.253,0.289,0.326,0.362,0.395,0.43,0.466,0.501,0.537,0.573,0.607,0.639,0.676,0.71,0.746,0.785,0.826,0.865,0.908}
	[55] = "%.3f",	-- Torque_Bug {0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100,105,110}{0.084,0.128,0.171,0.2134,0.252,0.2889,0.325,0.361,0.396,0.431,0.467,0.501,0.535,0.571,0.605,0.639,0.674,0.71,0.745,0.785,0.825,0.865,0.91}
	[17] = "%.f",	-- VOYANT_TORQUE Lamp {0,1}
	-- Gyro_Compas
	[26] = "%.3f",	-- Gyro_Compas {0,30,60,90,120,150,180,210,240,270,300,330,360}{0,0.083,0.167,0.251,0.334,0.418,0.5,0.583,0.667,0.751,0.832,0.917,1}
	-- Stby HA ADI
	[214] = "%.4f",	-- StbyHA_Roll {-180,-90,-60,-30,-20,-10,0,10,20,30,60,90,180}{-1,-0.502,-0.335,-0.166,-0.11,-0.052,0,0.055,0.113,0.171,0.334,0.502,1}
	[213] = "%.4f",	-- StbyHA_Pitch {-180,-150,-120,-90,-60,-50,-40,-30,-20,-15,-10,-5,0,5,10,15,20,30,40,50,60,90,120,150,180}{-1,-0.833,-0.667,-0.5,-0.333,-0.278,-0.223,-0.167,-0.111,-0.084,-0.057,-0.003,0,0.028,0.056,0.083,0.111,0.167,0.223,0.278,0.333,0.5,0.667,0.833,1}
	[211] = "%.1f",	-- StdbyHA_Flag Fault Flag {0,1}
	[212] = "%.4f",	-- Stdby_HA_W W Sympol {0,1}
	[217] = "%.4f",	-- Stdby_HA_Curseur Knob Needle {0,1}
	-- QComb Fuel Indicator
	[137] = "%.3f",	-- QComb {0,50,100,150,200,250,300,350,400,500}{0.093,0.243,0.354,0.428,0.521,0.621,0.692,0.771,0.834,0.932}
	-- Horizon Artificiel Principal
	[27] = "%.4f",	-- Pitch_HA {-180,-170,-160,-150,-140,-130,-120,-110,-100,-90,-80,-70,-60,-50,-40,-30,-20,-10,0,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180}{-1,-0.946,-0.898,-0.838,-0.78,-0.723,-0.667,-0.61,-0.556,-0.501,-0.446,-0.393,-0.334,-0.277,-0.223,-0.166,-0.104,-0.054,0,0.054,0.102,0.161,0.22,0.277,0.333,0.389,0.443,0.498,0.553,0.607,0.666,0.722,0.776,0.834,0.896,0.946,1}
	[28] = "%.4f",	-- Roll_HA {-180,-90,-60,-30,-20,-10,0,10,20,30,60,90,180}{-1,-0.498,-0.331,-0.162,-0.111,-0.053,0,0.058,0.112,0.168,0.331,0.498,1}
	[20] = "%.4f",	-- Bille_HA Slip Ball {-1,1}
	[18] = "%.1f",	-- flag_GS_HA GS Flag {0,1}
	[19] = "%.1f",	-- flag_HS_HA Fault Flag {0,1}
	[29] = "%.1f",	-- flag_Lock_HA Lock Flag {0,1}
	[117] = "%.4f",	-- Curseur_HA Knob Needle {0,1}
	[120] = "%.4f",	-- W_HA W Sympol {-1,1}
	[118] = "%.4f",	-- VerBar_HA Vertical Bar {-1,1}
	[119] = "%.4f",	-- HorBar_HA Horizon Bar {-1,1}
	-- variometre
	[24] = "%.4f",	-- Variometre {-800,-700,-600,-500,-400,-300,-200,-100,-50,0,50,100,200,300,400,500,600,700,800}{-0.481,-0.436,-0.391,-0.338,-0.28,-0.218,-0.153,-0.075,-0.035,0.0,0.035,0.071,0.139,0.202,0.264,0.32,0.372,0.418,0.463}
	-- IAS
	[51] = "%.4f",	-- IAS {0,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,210,220,230,240,250,260,270,280,290,300,310,320,330,340,350,360,370}{0,0.1,0.133,0.172,0.207,0.243,0.277,0.316,0.35,0.38,0.41,0.439,0.465,0.491,0.517,0.541,0.565,0.587,0.611,0.63,0.651,0.671,0.692,0.712,0.731,0.75,0.77,0.791,0.809,0.829,0.849,0.867,0.886}
	-- RPM
	[135] = "%.4f",	-- Turbine_RPM large Needle {0,5000,10000,15000,20000,25000,29000,35000,40000,43500,45000,50000}{0.095,0.181,0.263,0.346,0.424,0.505,0.572,0.665,0.748,0.802,0.828,0.909}
	[52] = "%.4f",	-- Rotor_RPM small Needle {0,50,100,150,200,250,262,316.29,361.05,387,400,450}{0.096,0.191,0.283,0.374,0.461,0.549,0.57,0.665,0.748,0.802,0.811,0.904}
	-- Voltmetre
	[14] = "%.3f",	-- Voltmetre {0,5,10,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35}{0.045,0.074,0.103,0.133,0.163,0.192,0.221,0.25,0.281,0.31,0.339,0.368,0.399,0.429,0.458,0.488,0.518,0.547,0.576,0.605,0.635,0.664,0.695,0.724}
	-- TQuatre Engine temperature Indicator
	[15] = "%.3f",	-- TQuatre Engine Temp {0,100,200,300,400,500,600,700,800}{0.1575,0.228,0.3,0.3845,0.473,0.577,0.676,0.772,0.8625}
	-- TempExt outside temperature
	[25] = "%.3f",	-- TempExt {-40,-35,-30,-25,-20,-15,-10,-5,0,5,10,15,20,25,30,35,40,45,50,55,60,65,70}{-0.758,-0.691,-0.625,-0.558,-0.492,-0.425,-0.359,-0.292,-0.224,-0.158,-0.09,-0.024,0.043,0.11,0.177,0.244,0.31,0.379,0.445,0.512,0.579,0.644,0.712}
	-- TempThm Oil Temperature Indicator
	[151] = "%.3f",	-- TempThm Oil Temp {-20,-10,0,10,20,30,40,50,60,70,80,85,90,100}{0.046,0.102,0.157,0.213,0.268,0.323,0.38,0.435,0.492,0.547,0.603,0.63,0.659,0.715}
	-- Fuel Tank Indicator 
	[152] = "%.3f",	-- Gauge_RSupp {-1,0,0.25,0.5,0.75,1}{0,0.202,0.426,0.63,0.801,1}
	-- VHF AM Radio
	[133] = "%.1f",	-- AM_Radio_freq_cent {0,1} X00.000 {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[134] = "%.1f",	-- AM_Radio_freq_dix {0,1} 0X0.000 {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[136] = "%.1f",	-- AM_Radio_freq_unite {0,1} 00X.000 {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[138] = "%.1f",	-- AM_Radio_freq_dixieme {0,1} 000.X00 {0,1,2,3,4,5,6,7,8,9,0}{0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
	[139] = "%.2f",	-- AM_Radio_freq_centieme {0,1} 000.0XX {00,25,50,75,00}{0.0,0.25,0.50,0.75,1.0}
	-- Lamps
	-- Voyant_DEM
	[300] = "%.f",	-- Voyant_DEM Start lamp{0,1}
	-- Voyant_RLT
	[301] = "%.f",	-- Voyant_RLT Idle lamp {0,1}
	-- Voyant_BLOC
	[302] = "%.f",	-- Voyant_BLOC Blocked Engine lamp {0,1}
	-- RSUPP Fueltank
	[320] = "%.f",	-- Voyant_RSupp Fueltank lamp {0,1}
	-- RCONV Convoy Fueltank
	[321] = "%.f",	-- Voyant_RConv Convoy Fueltank lamüp {0,1}
	-- Voyant_FILTAS Sandfilter lamp
	[322] = "%.f",	-- Voyant_FILTAS sandfilter lamp {0,1}
	-- Voyant_Alarme Master Alarme lamp
	[303] = "%.f",	-- Voyant_Alarme Master Alarme lamp {0,1}
	-- AM_RADIO
	[141] = "%.f",	-- AM_Radio_lamp {0,1}
	-- Tableau Alarme Lamps
	[1] = "%.f",	-- TA_Pitot {0,1}
	[2] = "%.f",	-- TA_Hmot {0,1}
	[3] = "%.f",	-- TA_Hbtp {0,1}
	[4] = "%.f",	-- TA_Hral {0,1}
	[5] = "%.f",	-- TA_Gene {0,1}
	[6] = "%.f",	-- TA_Alter {0,1}
	[7] = "%.f",	-- TA_Bat {0,1}
	[8] = "%.f",	-- TA_PA {0,1}
	[9] = "%.f",	-- TA_Nav {0,1}
	[10] = "%.f",	-- TA_Comb {0,1}
	[11] = "%.f",	-- TA_Bphy {0,1}
	[12] = "%.f",	-- TA_Lim {0,1}
	[13] = "%.f",	-- TA_Filt {0,1}
	-- Intercomp Lamps
	[455] = "%.f",	-- Intercomp VHF Light
	[456] = "%.f",	-- Intercomp FM1 Light
	[457] = "%.f",	-- Intercomp UHF Light
	-- SA342M HOT3 Weapon Panel Lamps
	[183] = "%.f",	-- HOT3 WP Lamps BON
	[184] = "%.f",	-- HOT3 WP Lamps MAUVAIS
	[185] = "%.f",	-- HOT3 WP Lamps ALIMENTATION
	[186] = "%.f",	-- HOT3 WP Lamps MISSILE PRET
	[187] = "%.f",	-- HOT3 WP Lamps TIR AUTOR.
	[188] = "%.f",	-- HOT3 WP Lamps DEFAUT
	[189] = "%.f",	-- HOT3 WP Lamps TEST I
	[190] = "%.f",	-- HOT3 WP Lamps JOUR
	[191] = "%.f",	-- HOT3 WP Lamps LUMINOSITE
	[192] = "%.f",	-- HOT3 WP Lamps TEST II
	[193] = "%.f"	-- HOT3 WP Lamps NUIT
}




ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	-- WEAPONS PANEL 1
	[354] = "%1d",	-- WP1 - Off/On/Stsnfby {-1.0,0.0,1.0}
	[357] = "%.4f",	-- WP1 - Brightness (Axis) {0.0, 1.0} in 0.1 Steps 
	-- WEAPONS PANEL 2
	[372] = "%1d",	-- WP2 - Ma Left
	[373] = "%1d",	-- WP2 - Ma Left Cover
	[374] = "%1d",	-- WP2 - Ma Right
	[375] = "%1d",	-- WP2 - Ma Right Cover
	[376] = "%1d",	-- WP2 - Seq Ripple selection
	[377] = "%1d",
	[378] = "%1d",
	-- PILOTSIGHT
	[171] = "%1d",	-- PILOTSIGHT - Pilot Sight
	-- PILOT STICK
	--[50] = "%1d",	-- PILOT STICK - Magnetic Brake
	--[53] = "%1d",	-- PILOT STICK - Wiper once
	--[209] = "%1d",	-- PILOT STICK - Autopilot Button
	[293] = "%1d",	-- PILOT STICK - Slave
	[294] = "%1d",	-- PILOT STICK - Auto-Hover
	-- WSO LEFT SIDE STICK
	[255] = "%1d",	-- PE WSO STICK - Lasing Button Cover
	[256] = "%1d",	-- PE WSO STICK - Lasing Button
	[257] = "%1d",	-- PE WSO STICK - Missile Launch Cover
	[258] = "%1d",	-- PE WSO STICK - Missile Launch Button
	[259] = "%1d",	-- PE WSO STICK - Inversed Symbology Toggle
	[260] = "%1d",	-- PE WSO STICK - Inversed Image Toggle
	[264] = "%.1f",	-- PE WSO STICK - Image Focus {-1.0,1.0}
	[262] = "%.1f",	-- PE WSO STICK - Gain {-1.0,1.0}
	[263] = "%.1f",	-- PE WSO STICK - Image Brightness {-1.0,1.0}
	[219] = "%.1f",	-- PE WSO STICK - Symbology Brightness {-1.0,1.0}
	-- GYRO
	[197] = "%1d",	-- GYRO - Test Cover
	[198] = "%1d",	-- GYRO - Test Switch On/Off
	[199] = "%1d",	-- GYRO - Left/Center/Right
	[153] = "%.2f",	-- GYRO - CM/A/GM/D/GD {0.0,0.25,0.50,0.75,1.0}
	-- CLOCK
	[45] = "%.4f",	-- CLOCK - Winder (Axis) {0.0, 1.0} in 0.1 Steps
	[46] = "%1d",	-- CLOCK - Start/Stop
	[47] = "%1d",	-- CLOCK - Reset
	-- SA342M HOT3 only
	-- PH SA342M HOT3
	[180] = "%.2f",	-- PH - Test II/Test I/Off/Day/Night {0.0,0.25,0.50,0.75,1.0}
	[181] = "%.3f",	-- PH - Station Select 0/1/0/2/0/3/0/4/0 {0.0,0.125,0.250,0,375,0.500,0.625,0.750,0.875,1.0}
	[182] = "%.4f",	-- PH - Brightness (Axis) {0.0, 1.0} in 0.1 Steps 
	-- PE SA342L/M/Mistral BCV (BOITIER DE COMMANDE VIDEO – video command box)
	[362] = "%1d",	-- PE BCV - Centering
	[364] = "%1d",	-- PE BCV - VDO/VTH
	[365] = "%.1f",	-- PE BCV - Zoom {-1.0,1.0}
	[366] = "%.1f",	-- PE BCV - CTH A/V/M {0.0,0.5,1.0}
	[367] = "%1d",	-- PE BCV - Power
	[370] = "%.2f",	-- PE BCV - Mode A/C/V/PIL/ASS {0.0,0.25,0.50,0.75,1.0}
	-- NADIR
	[330] = "%.4f",	-- NADIR - Off/Brightness (Axis) {0.0, 1.0} in 0.1 Steps
	[331] = "%.2f",	-- NADIR - Mode Off/Stby/Ground/Sea/Air Speed Sensor/Ground Test {0.0,0.2,0.4,0.6,0.8,1.0}
	[332] = "%.2f",	-- NADIR - Parameter Wind/Magnetic Heading/Ground Speed/Calculated Time/Current Position/Waypoint {0.0,0.2,0.4,0.6,0.8,1.0}
	[333] = "%1d",	-- NADIR - ENT
	[334] = "%1d",	-- NADIR - DES
	[335] = "%1d",	-- NADIR - AUX
	[336] = "%1d",	-- NADIR - IC
	[337] = "%1d",	-- NADIR - DOWN
	[351] = "%1d",	-- NADIR - 0
	[338] = "%1d",	-- NADIR - 1
	[339] = "%1d",	-- NADIR - 2
	[340] = "%1d",	-- NADIR - 3
	[342] = "%1d",	-- NADIR - 4
	[343] = "%1d",	-- NADIR - 5
	[344] = "%1d",	-- NADIR - 6
	[346] = "%1d",	-- NADIR - 7
	[347] = "%1d",	-- NADIR - 8
	[348] = "%1d",	-- NADIR - 9
	[341] = "%1d",	-- NADIR - POL
	[345] = "%1d",	-- NADIR - GEO
	[349] = "%1d",	-- NADIR - POS
	[350] = "%1d",	-- NADIR - GEL
	[352] = "%1d",	-- NADIR - EFF
	-- AM_RADIO
	[128] = "%.2f",	-- AM RADIO - Selector {0.0,0.33,0.66,0.99}
	[129] = "%.4f",	-- AM RADIO - Freq decimals (Axis) {0.0, 1.0} in 0.1 Steps
	[130] = "%1d",	-- AM RADIO - 25/50kHz Selector
	[131] = "%.4f",	-- AM RADIO - Freq dial (Axis) {0.0, 1.0} in 0.1 Steps
	-- FM_RADIO
	[272] = "%.2f",	-- FM RADIO - Main Selector {0.0,0.25,0.50,0.75,1.0}
	[273] = "%.3f",	-- FM RADIO - Chanel Selector {0.0,0.143,0.286,0.429,0.572,0.715,0.858,1.0}
	[274] = "%1d",	-- FM RADIO - 7
	[275] = "%1d",	-- FM RADIO - 8
	[276] = "%1d",	-- FM RADIO - 9
	[277] = "%1d",	-- FM RADIO - 0
	[278] = "%1d",	-- FM RADIO - X
	[279] = "%1d",	-- FM RADIO - 4
	[280] = "%1d",	-- FM RADIO - 5
	[281] = "%1d",	-- FM RADIO - 6
	[282] = "%1d",	-- FM RADIO - RC
	[283] = "%1d",	-- FM RADIO - UP
	[284] = "%1d",	-- FM RADIO - 1
	[285] = "%1d",	-- FM RADIO - 2
	[286] = "%1d",	-- FM RADIO - 3
	[287] = "%1d",	-- FM RADIO - VAL
	[288] = "%1d",	-- FM RADIO - DOWN
	-- TV
	[124] = "%1d",	-- TV - On/Off
	[125] = "%.4f",	-- TV - Contrast (Axis) {0.0, 1.0} in 0.1 Steps
	[123] = "%.4f",	-- TV - Brightness (Axis) {0.0, 1.0} in 0.1 Steps
	[126] = "%.4f",	-- TV - Cover (Axis) {0.0, 1.0} in 0.1 Steps
	-- RWR
	[148] = "%1d",	-- RWR - Off/On/Croc {-1.0,0.0,1.0}
	[149] = "%1d",	-- RWR - Marker
	[150] = "%1d",	-- RWR - Page
	[121] = "%.4f",	-- RWR - Audio (Axis) {0.0, 1.0} in 0.1 Steps
	[122] = "%.4f",	-- RWR - Brightness (Axis) {0.0, 1.0} in 0.1 Steps
	-- ADI
	[115] = "%.4f",	-- ADI - Unlock (Axis) {0.0, 1.0} in 0.1 Steps
	[116] = "%1d",	-- ADI - Unlock 
	-- Stby ADI
	[215] = "%.4f",	-- STDBY ADI - Unlock (Axis) {0.0, 1.0} in 0.1 Steps
	[216] = "%1d",	-- STDBY ADI - Unlock
	-- ArtVisVhfDop (Source selector for main artificial horizon vertical bar)
	[218] = "%.2f",	-- ADI - Source Off/Camera target point/ADF ermitter/NADIR Waypoint {0.0,0.33,0.66,0.99}
	-- INTERCOM
	[452] = "%1d",	-- INTERCOM - VHF AM Radio
	[68] = "%.4f",	-- INTERCOM - VHF AM Radio Volume (Axis) {0.0, 1.0} in 0.1 Steps
	[453] = "%1d",	-- INTERCOM - FM Radio
	[69] = "%.4f",	-- INTERCOM - FM Radio Volume (Axis) {0.0, 1.0} in 0.1 Steps
	[454] = "%1d",	-- INTERCOM - UHF Radio
	[70] = "%.4f",	-- INTERCOM - UHF Radio Volume (Axis) {0.0, 1.0} in 0.1 Steps
	-- TORQUE
	[58] = "%1d",	-- TORQUE Bug/Test
	[54] = "%.4f",	-- TORQUE Bug/Test (Axis) {0.0, 1.0} in 0.1 Steps
	-- LIGHTS
	[22] = "%.4f",	-- LIGHTS - Main Dashboard Lighting (Axis) {0.0, 1.0} in 0.1 Steps
	[21] = "%.4f",	-- LIGHTS - Console Lighting (Axis) {0.0, 1.0} in 0.1 Steps
	[145] = "%.4f",	-- LIGHTS - UV Lighting (Axis) {0.0, 1.0} in 0.1 Steps
	[23] = "%1d",	-- LIGHTS - NORM/BNL
	[147] = "%.4f",	-- LIGHTS - Roof Lamp Knob (Axis) {0.0, 1.0} in 0.1 Steps
	[154] = "%1d",	-- LIGHTS - Red Lens On/Off
	-- ELECTRIC
	[264] = "%1d",	-- ELECTRIC - Battery
	[265] = "%1d",	-- ELECTRIC - Alternator
	[268] = "%1d",	-- ELECTRIC - Generator
	[62] = "%1d",	-- ELECTRIC - Voltmeter Test
	[170] = "%1d",	-- ELECTRIC - Pitot
	[271] = "%1d",	-- ELECTRIC - Fuel Pump
	[267] = "%1d",	-- ELECTRIC - Additionnal Fuel Tank
	[56] = "%1d",	-- ELECTRIC - Starter Start/Stop/Air {-1.0,0.0,1.0}
	[57] = "%1d",	-- ELECTRIC - Test
	[48] = "%1d",	-- ELECTRIC - Copilot Wiper {-1.0,0.0,1.0}
	[49] = "%1d",	-- ELECTRIC - Pilot Wiper {-1.0,0.0,1.0}
	[61] = "%1d",	-- ELECTRIC - Left from Pitot
	[59] = "%1d",	-- ELECTRIC - HYD Test
	[66] = "%1d",	-- ELECTRIC - Alter Rearm
	[67] = "%1d",	-- ELECTRIC - Gene Rearm
	[63] = "%1d",	-- ELECTRIC - Convoy Tank On/Off
	[64] = "%1d",	-- ELECTRIC - Sand Filter On/Off
	-- NAVLIGHTS 
	[146] = "%1d",	-- NAVLIGHTS - Navigation Lights CLI/OFF/FIX {-1.0,0.0,1.0}
	[228] = "%1d",	-- NAVLIGHTS - Anticollision Light NOR/OFF/ATT {-1.0,0.0,1.0}
	[105] = "%1d",	-- NAVLIGHTS - Landing Light Off/Vario/On {-1.0,0.0,1.0}
--	[106] = "%1d",	-- NAVLIGHTS - Landing Light Extend/Retract
	[382] = "%1d",	-- NAVLIGHTS - Panels Lighting On/Off
	[30] = "%.4f",	-- NAVLIGHTS - AntiCollision Light Intensity (Axis) {0.0, 1.0} in 0.1 Steps
	[229] = "%1d",	-- NAVLIGHTS - Formation Lights On/Off
	[230] = "%.4f",	-- NAVLIGHTS - Formation Lights Intensity (Axis) {0.0, 1.0} in 0.1 Steps
	-- FLARE DISPENSER 
	[220] = "%1d",	-- FLARE DISPENSER - G/G+D/D {-1.0,0.0,1.0}
	[221] = "%1d",	-- FLARE DISPENSER - Mode
	[222] = "%1d",	-- FLARE DISPENSER - Off/Speed {-1.0,0.0,1.0}
	[194] = "%1d",	-- FLARE DISPENSER - Fire Button Cover
	[195] = "%1d",	-- FLARE DISPENSER - Fire Button
	-- AUTOPILOT 
	[31] = "%1d",	-- AUTOPILOT - Autopilot On/Off
	[32] = "%1d",	-- AUTOPILOT - Pitch On/Off
	[33] = "%1d",	-- AUTOPILOT - Roll On/Off
	[34] = "%1d",	-- AUTOPILOT - Yaw On/Off
	[35] = "%1d",	-- AUTOPILOT - Mode Speed/OFF/Altitude {-1.0,0.0,1.0}
	[60] = "%1d",	-- AUTOPILOT - Trim On/Off
	[65] = "%1d",	-- AUTOPILOT - Magnetic Brake On/Off
	-- WEAPONS
	[269] = "%1d",	-- WEAPONS - Master arm On/Off
	-- ROTORS
	[556] = "%.4f",	-- ROTORS - Rotor Brake (Axis) {0.0, 1.0} in 0.055 Steps
	-- RADIOALTIMETER
	[96] = "%.4f",	-- RADIOALTIMETER - Radar Alt Bug (Axis) {0.0, 1.0} in 0.1 Steps
	[100] = "%1d",	-- RADIOALTIMETER - Radar Alt On/Off - Test
	[91] = "%.4f",	-- RADIOALTIMETER - Radar Alt On/Off - Test (Axis) {0.0, 1.0} in 0.1 Steps
	-- BAROALTIMETER
	[89] = "%.4f",	-- BAROALTIMETER - Baro pressure QFE knob (Axis) {0.0, 1.0} in 0.1 Steps
	-- FUEL SYSTEM
	[557] = "%.4f",	-- FUEL SYSTEM - Fuel Flow Lever (Axis) {0.0, 1.0} in 0.2 Steps
	-- ADF RADIO 
	[166] = "%1d",	-- ADF RADIO - Select
	[167] = "%1d",	-- ADF RADIO - Tone
	[178] = "%.2f",	-- ADF RADIO - Mode {0.0,0.33,0.66,0.99}
	[179] = "%.4f",	-- ADF RADIO - Gain (Axis) {0.0, 1.0} in 0.2 Steps
	[168] = "%.4f",	-- ADF RADIO - Nav1 Hundred (Axis) {0.0, 1.0} in 0.2 Steps
	[169] = "%.4f",	-- ADF RADIO - Nav1 Ten (Axis) {0.0, 1.0} in 0.2 Steps
	[173] = "%.4f",	-- ADF RADIO - Nav1 Unit (Axis) {0.0, 1.0} in 0.2 Steps
	[174] = "%.4f",	-- ADF RADIO - Nav2 Hundred (Axis) {0.0, 1.0} in 0.2 Steps
	[175] = "%.4f",	-- ADF RADIO - Nav2 Ten (Axis) {0.0, 1.0} in 0.2 Steps
	[176] = "%.4f",	-- ADF RADIO - Nav2 Unit (Axis) {0.0, 1.0} in 0.2 Steps
	-- UHF RADIO
	[383] = "%.3f",	-- UHF RADIO - MODE 0/FF/NA/SV/DL/G/EN {0.0,0.167,0.334,0.501,0.668,0.835,1.0}
	[384] = "%1d",	-- UHF RADIO - DRW
	[385] = "%1d",	-- UHF RADIO - VLD
	[386] = "%.4f",	-- UHF RADIO - PAGE (Axis) {0.0, 1.0} in 0.2 Steps
	[387] = "%1d",	-- UHF RADIO - CONF
	[388] = "%1d",	-- UHF RADIO - 1
	[389] = "%1d",	-- UHF RADIO - 2
	[390] = "%1d",	-- UHF RADIO - 3
	[391] = "%1d",	-- UHF RADIO - 4
	[392] = "%1d",	-- UHF RADIO - 5
	[393] = "%1d",	-- UHF RADIO - 6
	[394] = "%1d",	-- UHF RADIO - 7
	[395] = "%1d",	-- UHF RADIO - 8
	[396] = "%1d",	-- UHF RADIO - 9
	[397] = "%1d",	-- UHF RADIO - 0


[1330] = "%1d", --ALV Y
[1331] = "%1d", --ALV G
[1332] = "%1d", --CVS Y
[1333] = "%1d", --CVS G

[590] = "%1d", --pcb zoom
[591] = "%.2f", --pcb dist
[592] = "%1d", --pcb stab

[605] = "%1d", --mini cover
[606] = "%1d", --mini arm
[596] = "%1d", --izlid

[1333] = "%1d", --CVS G
[1333] = "%1d", --CVS G
[172] = "%1d" --periscope
	--MEUS--
	
}
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)

	ExportScript.Radios(mainPanelDevice)

end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)



end

function ExportScript.Radios(mainPanelDevice)


if mainPanelDevice:get_argument_value(556) == 0 then


elseif mainPanelDevice:get_argument_value(556) > 0 then

local rotor = ((mainPanelDevice:get_argument_value(52) - 0.096) * (1/0.175))
	turbine = ((mainPanelDevice:get_argument_value(135) - 0.095) * 61.80469715698393)
rotor = string.format("%.1f", rotor)
turbine = string.format("%.1f", turbine)

	-- [300] = "%.f",	-- Voyant_DEM Start lamp{0,1}
	-- [301] = "%.f",	-- Voyant_RLT Idle lamp {0,1}
	-- [302] = "%.f",	-- Voyant_BLOC Blocked Engine lamp {0,1}

--idleio = mainPanelDevice:get_argument_value(301)
--startio = mainPanelDevice:get_argument_value(300)
--blocio =mainPanelDevice:get_argument_value(302)

local idleio = mainPanelDevice:get_argument_value(301)
	if idleio == 0 then
		idlelamp="⚫"
	elseif idleio > 0 then
		idlelamp="🟡"
	end

local startio = mainPanelDevice:get_argument_value(300)
	if startio == 0 then
		startlamp="⚫"
	elseif startio > 0 then
		startlamp="🟢"
	end

local blocio = mainPanelDevice:get_argument_value(302)
	if blocio == 0 then
		bloclamp="⚫"
	elseif blocio > 0 then
		bloclamp="🔴"
	end

ExportScript.Tools.SendData(1006, string.format("R   " .. rotor .. "\n" ..
												"T  " .. turbine .. "\n" ..
												startlamp .. idlelamp .. bloclamp))
end
--value =  (output - output_min) * ((value_max) / (output_max-output_min))	
t4p = mainPanelDevice:get_argument_value(15)
t4temp = (-9679.7 * t4p^5) + (25333 * t4p^4) - (24033 * t4p^3) + (9712.1 * t4p^2) - (346.74 * t4p) - 105.2

	
	if 
		t4temp <= 550 then
		t4lamp = "🟢"
	elseif
		t4temp > 550 and t4temp < 600 then
		t4lamp = "🟡" 
	elseif
		t4temp >= 600 then
		t4lamp = "🔴"
	end

	t4temp = string.format("%.f", t4temp) --??

local oiltemp = (mainPanelDevice:get_argument_value(151) * 100)

    if 
    	oiltemp <= 24 then
		oillamp = "🟡"
	elseif
		oiltemp > 24 and oiltemp < 85 then
		oillamp = "🟢" 
	elseif
		oiltemp >= 85 then
		oillamp = "🔴"
	end

	oiltemp = string.format("%.f", oiltemp) --??

	ExportScript.Tools.SendData(1005, string.format("🌡️Oil\n" ..
													oillamp .. oiltemp .. " ºC" .. "\n" ..
													"🌡️T4\n" ..
													t4lamp .. t4temp .. " ºC"))
-----------
--output_min = 0
--output_max = 0.886
--value_min = 0
--value_max = 370
--output = 1

--value =  (output - output_min) * ((value_max) / (output_max-output_min))

--fuel
fuel = ((mainPanelDevice:get_argument_value(137) - 0.093) * ((450)/(0.932-0.093)))
fuel = string.format("%.f", fuel)
ExportScript.Tools.SendData(1016, string.format(fuel .. "L"))

torque = ((mainPanelDevice:get_argument_value(16) - 0.085) * ((110)/(0.908-0.085)))
torque = string.format("%.f", torque)
ExportScript.Tools.SendData(1008, string.format("⚙️" .. torque .. "%%\n\n" ..  "⛽" .. fuel .. "L"))

--IAS
local x = (mainPanelDevice:get_argument_value(51))
local IASkmh = ((294.33 * x^3) - (245.86 * x^2) + (396.8 * x) + 12.511)	
IASkmh = string.format("%.f", IASkmh)
IASkts = IASkmh * 0.539957
IASkts = string.format("%.f", IASkts)
ExportScript.Tools.SendData(1009, string.format(IASkmh .. " Kmh\n" ..
												"(" .. IASkts .. " Kts)"))
--Rad alt
local x = (mainPanelDevice:get_argument_value(94))
local ralt = (2329.2*x^4) - (1163.2*x^3) - (1.5301*x^2) + (325.05*x)
ralt = string.format("%.f", ralt)

ExportScript.Tools.SendData(1015, string.format(ralt))

--baro alt
baro = ((mainPanelDevice:get_argument_value(87)) * 10000)
baroft = (baro * 3.2808399)
baroft = string.format("%.f", baroft)

QNH1000 = ((mainPanelDevice:get_argument_value(95)) * 10)
QNH0100 = ((mainPanelDevice:get_argument_value(92)) * 10)
QNH0010 = ((mainPanelDevice:get_argument_value(90)) * 10)
QNH0001 = ((mainPanelDevice:get_argument_value(88)) * 10)

QNH1000 = string.format("%.f", QNH1000)
QNH0100 = string.format("%.f", QNH0100)
QNH0010 = string.format("%.f", QNH0010)
QNH0001 = string.format("%.f", QNH0001)

ExportScript.Tools.SendData(1010, string.format(ralt .. "m (R)\n" .. baroft .. "ft (B)\n" .. QNH1000 .. QNH0100 .. QNH0010 .. QNH0001))

---ADI to waypoint
phdg  = ((mainPanelDevice:get_argument_value(113)) * 360)
phdg = string.format("%.f", phdg)
ExportScript.Tools.SendData(1018, string.format(phdg .. "º"))

toWPdiv = ((mainPanelDevice:get_argument_value(102)) * 360)
toWPdiv = string.format("%.f", toWPdiv)
toWPhdg = phdg + toWPdiv

WPdistcent = (mainPanelDevice:get_argument_value(110) * 10)
WPdistcent = string.format("%.f", WPdistcent)
WPdistdix = (mainPanelDevice:get_argument_value(111) * 10)
WPdistdix = string.format("%.f", WPdistdix)
WPdistunit = (mainPanelDevice:get_argument_value(112) * 10)
WPdistunit = string.format("%.f", WPdistunit)
ExportScript.Tools.SendData(1019, string.format(WPdistcent .. WPdistdix .. "." .. WPdistunit .. "Km"))



ExportScript.Tools.SendData(1017, string.format("Hdg " .. phdg .. "º\n"
											 .. "Wpt " .. toWPdiv .. "º\n"
											  .. WPdistcent .. WPdistdix .. "." .. WPdistunit))

--CWP any

w1 = mainPanelDevice:get_argument_value(1)
w2 = mainPanelDevice:get_argument_value(2)
w3 = mainPanelDevice:get_argument_value(3)
w4 = mainPanelDevice:get_argument_value(4)
w5 = mainPanelDevice:get_argument_value(5)
w6 = mainPanelDevice:get_argument_value(6)
w7 = mainPanelDevice:get_argument_value(7)
w8 = mainPanelDevice:get_argument_value(8)
w9 = mainPanelDevice:get_argument_value(9)
w10 = mainPanelDevice:get_argument_value(10)
w11 = mainPanelDevice:get_argument_value(11)
w12 = mainPanelDevice:get_argument_value(12)
w13 = mainPanelDevice:get_argument_value(13)

if (w1 + w2 + w3 + w4 + w5 + w6 + w7 
	+ w8 + w9 + w10 + w11 + w12 + w13) > 0 then
		w14 = 1
	else
		w14 = 0
	end
ExportScript.Tools.SendData(1018, w14)

--Hot3
--	[181] = "%.3f",	-- PH - Station Select 0/1/0/2/0/3/0/4/0 {0.0,0.125,0.250,0,375,0.500,0.625,0.750,0.875,1.0}


-----------
--Clock
gameTimeLocal = LoGetMissionStartTime() + LoGetModelTime()

function formatTime(time)
     seconds = math.floor(time) % 60
     minutes = math.floor(time / 60) % 60
     hours = math.floor(time / (60 * 60)) % 24
    return string.format("%02d", hours) .. string.format("%02d", minutes) .. "L"
end 

ExportScript.Tools.SendData(9999, formatTime(gameTimeLocal))
--digital cronometro
 chmin = (mainPanelDevice:get_argument_value(44) * ((1 / (1/30))*60))
chmin = string.format("%.f", chmin)

	hour2= math.floor(chmin / 3600)
	min1= math.floor(chmin / 60)
	if
		min1 >= 60 then min3 = min1 - (60 * hour2)
	elseif
		min1 < 60 then min3 = min1
	end
	sec1= math.floor(chmin % 60)

--hour2 = string.format("%02i", hour)
--hour = string.format(hour .. "H")
min3 = string.format("%02i", min3)
min3 = string.format(min3 .. "'")
sec1 = string.format("%02i", sec1)

ExportScript.Tools.SendData(1012, string.format(formatTime(gameTimeLocal))) --.. sec)) --just Local Hour
ExportScript.Tools.SendData(1013, string.format(min3 .. sec1)) --just the timer
ExportScript.Tools.SendData(1014, string.format(formatTime(gameTimeLocal) .. "\n" .. "🕗" .."\n" .. 
												min3 .. sec1)) --Local Hour and Timer

if mainPanelDevice:get_argument_value(354) >= 0.0 then -- Weapon panel is On
	local lWeaponPanelDisplays = ExportScript.Tools.getListIndicatorValue(7)

	if lWeaponPanelDisplays ~= nil then
		if lWeaponPanelDisplays.LEFT_screen ~= nil then
			ExportScript.Tools.SendData(2000, string.format("%s", lWeaponPanelDisplays.LEFT_screen))
		end
		if lWeaponPanelDisplays.RIGHT_screen ~= nil then
			ExportScript.Tools.SendData(2001, string.format("%s", lWeaponPanelDisplays.RIGHT_screen))
		end
	end
else
	ExportScript.Tools.SendData(2000, "-")
	ExportScript.Tools.SendData(2001, "-")
end
------------
if mainPanelDevice:get_argument_value(272) > 0.0 then
FM = ExportScript.Tools.split(list_indication(3), "%c")[9]
ExportScript.Tools.SendData(1020, FM)
else
ExportScript.Tools.SendData(1020, "--.---")
end

if mainPanelDevice:get_argument_value(383) > 0.0 then
UHF = ExportScript.Tools.split(list_indication(4), "%c")[9]
ExportScript.Tools.SendData(1021, UHF)
else
ExportScript.Tools.SendData(1021, "---.---")
end

-----------
	
	---------
	-- ADF --
	---------
	local ADF_nav1_centaine = mainPanelDevice:get_argument_value(158) * 10
	local ADF_nav1_dizaine = mainPanelDevice:get_argument_value(159) * 10
	local ADF_nav1_unite = mainPanelDevice:get_argument_value(160) * 10
	local ADF_nav1_dec = mainPanelDevice:get_argument_value(161) * 10
	
	ADF_nav1_centaine = string.format("%.0f", ADF_nav1_centaine)
	ADF_nav1_dizaine = string.format("%.0f", ADF_nav1_dizaine)
	ADF_nav1_unite = string.format("%.0f", ADF_nav1_unite)
	ADF_nav1_dec = string.format("%.1d", ADF_nav1_dec)

	local ADF_nav2_centaine = mainPanelDevice:get_argument_value(162) * 10
	local ADF_nav2_dizaine = mainPanelDevice:get_argument_value(163) * 10
	local ADF_nav2_unite = mainPanelDevice:get_argument_value(164) * 10
	local ADF_nav2_dec = mainPanelDevice:get_argument_value(165) * 10

	ADF_nav2_centaine = string.format("%.0f", ADF_nav2_centaine)
	ADF_nav2_dizaine = string.format("%.0f", ADF_nav2_dizaine)
	ADF_nav2_unite = string.format("%.0f", ADF_nav2_unite)
	ADF_nav2_dec = string.format("%.1d", ADF_nav2_dec)

	
	local ADF_RADIO_Select = mainPanelDevice:get_argument_value(166)
	local isADF1Selected = 1
	if ADF_RADIO_Select > 0.01 then
		isADF1Selected = 0
	end
	ExportScript.Tools.SendData(2007, isADF1Selected)
	
	local ADF_display
	if isADF1Selected == 1 then
		ADF_freqDisplay = (ADF_nav1_centaine .. ADF_nav1_dizaine .. ADF_nav1_unite .. "." .. ADF_nav1_dec)
	else
		ADF_freqDisplay = (ADF_nav2_centaine .. ADF_nav2_dizaine .. ADF_nav2_unite .. "." .. ADF_nav2_dec)
	end
	
	local ADF_shortandSelect
	if isADF1Selected == 1 then
		ADF_shortandSelect = "A1"
	else
		ADF_shortandSelect = "A2"
	end

	local ADF1_freqDisplay = (ADF_nav1_centaine .. ADF_nav1_dizaine .. ADF_nav1_unite .. "." .. ADF_nav1_dec)
	local ADF2_freqDisplay = (ADF_nav2_centaine .. ADF_nav2_dizaine .. ADF_nav2_unite .. "." .. ADF_nav2_dec)
	ExportScript.Tools.SendData(2014, "ADF1\n" .. ADF1_freqDisplay)
	ExportScript.Tools.SendData(2015, "ADF2\n" .. ADF2_freqDisplay)
	--NADIR--

if isADF1Selected == 1 then
ExportScript.Tools.SendData(1022, "ADF1\n" .. ADF1_freqDisplay) 
else
ExportScript.Tools.SendData(1022, "ADF2\n" .. ADF2_freqDisplay) 
end
	
AM_dizaine = mainPanelDevice:get_argument_value(134) * 10
AM_unite = mainPanelDevice:get_argument_value(136) * 10
AM_dec = mainPanelDevice:get_argument_value(138) * 10
AM_cent = mainPanelDevice:get_argument_value(139) * 100

AM_dizaine = string.format("%.0f", AM_dizaine)
AM_unite = string.format("%.0f", AM_unite)
AM_dec = string.format("%.0f", AM_dec)
AM_cent = string.format("%.2d", AM_cent)

if  mainPanelDevice:get_argument_value(141) == 1 then
ExportScript.Tools.SendData(1023, "1" .. AM_dizaine .. AM_unite .. "." .. AM_dec .. AM_cent)
else
ExportScript.Tools.SendData(1023, "---.---")	
end

local nadirwp = ExportScript.Tools.split(list_indication(2), "%c")[135]
ExportScript.Tools.SendData(2016, nadirwp)
end
