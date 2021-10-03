-- SA342Mistral

ExportScript.FoundDCSModule = true
ExportScript.Version.SA342Mistral = "1.2.1"

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
	-- Gyro Panel
	[200] = "%.4f",	-- Gyro_Needle_State {-1,1} Gyro Panel SYNC
	[201] = "%.f",	-- Gyro_voyant_test Lamp {0,1} 
	[202] = "%.f",	-- Gyro_voyant_trim Lamp {0,1}
	[203] = "%.f",	-- Gyro_voyant_bpp Lamp {0,1}
	-- Autopilot Panel
	[37] = "%.4f",	-- T_Needle_State {-1,1} Pitch correction Indicator
	[38] = "%.4f",	-- R_Needle_State {-1,1} Roll correction Indicator
	[39] = "%.4f",	-- L_Needle_State {-1,1} Yaw correction Indicator
	--[196] = "%.4f",	-- RWR_light {0,1} -- RWR background light
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
	[94] = "%.4f",	-- Radar_Altimeter {0,5,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,200,250,300,350,400,450,500,550,600,650,700,750,800,850}{0,0.019,0.035,0.072,0.109,0.147,0.18,0.214,0.247,0.283,0.316,0.345,0.376,0.407,0.438,0.469,0.501,0.564,0.606,0.648,0.676,0.706,0.732,0.756,0.775,0.794,0.811,0.829,0.843,0.858,0.87}
	[93] = "%.4f",	-- DangerRALT_index {0,5,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,200,250,300,350,400,450,500,550,600,650,700,750,800,850}{0.0,0.0175,0.0338,0.0715,0.109,0.147,0.182,0.215,0.247,0.282,0.315,0.3445,0.377,0.407,0.439,0.47,0.5005,0.5628,0.6052,0.646,0.675,0.7058,0.7315,0.755,0.7747,0.793,0.8097,0.8272,0.8425,0.8575,0.8693}
	--[97] = "%.f",	-- RAltlamp {0,1}
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
	[455] = "%.f",	-- VHF Light
	[456] = "%.f",	-- FM1 Light
	[457] = "%.f",	-- UHF Light
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
	-- PILOTSIGHT
	[171] = "%1d",	-- PILOTSIGHT - Pilot Sight
	-- PILOT STICK
	--[50] = "%1d",	-- PILOT STICK - Magnetic Brake
	--[53] = "%1d",	-- PILOT STICK - Wiper once
	--[209] = "%1d",	-- PILOT STICK - Autopilot Button
	--[293] = "%1d",	-- PILOT STICK - Slave
	--[294] = "%1d",	-- PILOT STICK - Auto-Hover
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
	[180] = "%.2f",	-- PH - Test/On/Off {0.0,0.25,0.50,0.75,1.0}
	[181] = "%.3f",	-- PH - Station Select {0.0,0.125,0.250,0,375,0.500,0.625,0.750,0.875,1.0}
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
	--[126] = "%.4f",	-- TV - Cover (Axis) {0.0, 1.0} in 0.1 Steps
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
	[106] = "%1d",	-- NAVLIGHTS - Landing Light Extend/Retract
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
	[397] = "%1d"	-- UHF RADIO - 0
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
	--[97] = "%.f",	-- RAltlamp {0,1}
	ExportScript.Tools.SendData(97, (mainPanelDevice:get_argument_value(97) > 0.009 and 1 or 0))
	
	--[102] = "%.4f",	-- ADF_Aiguille_large Heading Needle large {-360.0,0.0,360.0}{-1.0,0.0,1.0}
	local ADF_Aiguille_large = mainPanelDevice:get_argument_value(102)
	if ADF_Aiguille_large ~= 0 then
		ADF_Aiguille_large = ADF_Aiguille_large + 0.5
		if ADF_Aiguille_large > 1 then
			ADF_Aiguille_large = ADF_Aiguille_large - 1.0
		end
	end
	ExportScript.Tools.SendData(102, string.format("%.4f", ADF_Aiguille_large))
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

	-- UHF Radio 
	---------------------------------------------------
	local lUHFRadio = GetDevice(31)
	if lUHFRadio:is_on() then
		--ExportScript.Tools.SendData(2000, string.format("%.3f", lUHFRadio:get_frequency()/1000000))
		--ExportScript.Tools.WriteToLog('UHF_Freq: '..ExportScript.Tools.dump(list_indication(5)))

		local lUHFRadioFreq = ExportScript.Tools.getListIndicatorValue(5)

		if lUHFRadioFreq ~= nil and lUHFRadioFreq.UHF_Freq ~= nil then
			ExportScript.Tools.SendData(2000, string.format("%s", lUHFRadioFreq.UHF_Freq))
		end
	else
		ExportScript.Tools.SendData(2000, " ")
	end

	-- AM Radio 
	---------------------------------------------------
	local lAMRadio = GetDevice(5)
	if lAMRadio:is_on() then
		--ExportScript.Tools.SendData(2001, string.format("%.3f", lAMRadio:get_frequency()/1000000))
		ExportScript.Tools.SendData(2001, ExportScript.Tools.RoundFreqeuncy(lAMRadio:get_frequency()/1000000))
	end

	-- FM Radio PR4G
	---------------------------------------------------
	local lFMRadio = GetDevice(28)
	if lFMRadio:is_on() then
		--ExportScript.Tools.SendData(2002, string.format("%.3f", lFMRadio:get_frequency()/1000000))
		--ExportScript.Tools.WriteToLog('FM_Freq: '..ExportScript.Tools.dump(list_indication(4)))

		local lFMRadioFreq = ExportScript.Tools.getListIndicatorValue(4)

		if lFMRadioFreq ~= nil and lFMRadioFreq.FM_Freq ~= nil then
			ExportScript.Tools.SendData(2002, string.format("%s", lFMRadioFreq.FM_Freq))
		end
	else
		ExportScript.Tools.SendData(2002, " ")
	end

	-- [273] = "%.3f",	-- FM RADIO - Chanel Selector {0.0,0.143,0.286,0.429,0.572,0.715,0.858,1.0} -- laut clickabledata.lua
	-- [273] = "%.1f",	-- FM RADIO - Chanel Selector {0.0,0.2,0.3,0.5,0.6,0.8,0.9,1.1} -- gerundet
	local lFM_RADIO_PRESET = {[0.0]="1",[0.2]="2",[0.3]="3",[0.5]="4",[0.6]="5",[0.8]="6",[0.9]="0",[1.1]="R"}
	ExportScript.Tools.SendData(2003, lFM_RADIO_PRESET[ExportScript.Tools.round(mainPanelDevice:get_argument_value(273), 1, "ceil")])
	
	-- Weapon Panel
	---------------------------------------------------
	if mainPanelDevice:get_argument_value(354) >= 0.0 then -- Weapon panel is On
		local lWeaponPanelDisplays = ExportScript.Tools.getListIndicatorValue(8)

		if lWeaponPanelDisplays ~= nil then
			if lWeaponPanelDisplays.LEFT_screen ~= nil then
				ExportScript.Tools.SendData(2004, string.format("%s", lWeaponPanelDisplays.LEFT_screen))
			end
			if lWeaponPanelDisplays.RIGHT_screen ~= nil then
				ExportScript.Tools.SendData(2005, string.format("%s", lWeaponPanelDisplays.RIGHT_screen))
			end
		end
	else
		ExportScript.Tools.SendData(2004, "-")
		ExportScript.Tools.SendData(2005, "-")
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

	-- UHF Radio 
	---------------------------------------------------
	local lUHFRadio = GetDevice(31)
	if lUHFRadio:is_on() then
		--ExportScript.Tools.SendDataDAC("2000", string.format("%.3f", lUHFRadio:get_frequency()/1000000))
		--ExportScript.Tools.WriteToLog('UHF_Freq: '..ExportScript.Tools.dump(list_indication(5)))

		local lUHFRadioFreq = ExportScript.Tools.getListIndicatorValue(5)

		if lUHFRadioFreq ~= nil and lUHFRadioFreq.UHF_Freq ~= nil then
			ExportScript.Tools.SendDataDAC("2000", string.format("%s", lUHFRadioFreq.UHF_Freq))
		end
	else
		ExportScript.Tools.SendDataDAC("2000", "-")
	end

	-- AM Radio 
	---------------------------------------------------
	local lAMRadio = GetDevice(5)
	if lAMRadio:is_on() then
		--ExportScript.Tools.SendDataDAC("2001", string.format("%.3f", lAMRadio:get_frequency()/1000000))
		ExportScript.Tools.SendDataDAC("2001", ExportScript.Tools.RoundFreqeuncy(lAMRadio:get_frequency()/1000000))
	end

	-- FM Radio PR4G
	---------------------------------------------------
	local lFMRadio = GetDevice(28)
	if lFMRadio:is_on() then
		--ExportScript.Tools.SendDataDAC(2002, string.format("%.3f", lFMRadio:get_frequency()/1000000))
		--ExportScript.Tools.WriteToLog('FM_Freq: '..ExportScript.Tools.dump(list_indication(4)))

		local lFMRadioFreq = ExportScript.Tools.getListIndicatorValue(4)

		if lFMRadioFreq ~= nil and lFMRadioFreq.FM_Freq ~= nil then
			ExportScript.Tools.SendDataDAC("2002", string.format("%s", lFMRadioFreq.FM_Freq))
		end
	else
		ExportScript.Tools.SendDataDAC("2002", "-")
	end

	-- [273] = "%.3f",	-- FM RADIO - Chanel Selector {0.0,0.143,0.286,0.429,0.572,0.715,0.858,1.0} -- laut clickabledata.lua
	-- [273] = "%.1f",	-- FM RADIO - Chanel Selector {0.0,0.2,0.3,0.5,0.6,0.8,0.9,1.1} -- gerundet
	local lFM_RADIO_PRESET = {[0.0]="1",[0.2]="2",[0.3]="3",[0.5]="4",[0.6]="5",[0.8]="6",[0.9]="0",[1.1]="R"}
	ExportScript.Tools.SendDataDAC("2003", lFM_RADIO_PRESET[ExportScript.Tools.round(mainPanelDevice:get_argument_value(273), 1, "ceil")])
	
	-- Weapon Panel
	---------------------------------------------------
	if mainPanelDevice:get_argument_value(354) >= 0.0 then -- Weapon panel is On
		local lWeaponPanelDisplays = ExportScript.Tools.getListIndicatorValue(8)

		if lWeaponPanelDisplays ~= nil then
			if lWeaponPanelDisplays.LEFT_screen ~= nil then
				ExportScript.Tools.SendDataDAC("2004", string.format("%s", lWeaponPanelDisplays.LEFT_screen))
			end
			if lWeaponPanelDisplays.RIGHT_screen ~= nil then
				ExportScript.Tools.SendDataDAC("2005", string.format("%s", lWeaponPanelDisplays.RIGHT_screen))
			end
		end
	else
		ExportScript.Tools.SendDataDAC("2004", "-")
		ExportScript.Tools.SendDataDAC("2005", "-")
	end
	
	-- generic Radio display and frequency rotarys
	-------------------------------------------------
	-- genericRadioConf
	ExportScript.genericRadioConf = {}
	ExportScript.genericRadioConf['maxRadios'] = 3                       -- numbers of aviables/supported radios
	ExportScript.genericRadioConf[1] = {}                                -- first radio
	ExportScript.genericRadioConf[1]['Name'] = "UHF Radio"               -- name of radio
	ExportScript.genericRadioConf[1]['DeviceID'] = 31                    -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[1]['setFrequency'] = true              -- change frequency active
	ExportScript.genericRadioConf[1]['FrequencyMultiplicator'] = 1000000 -- Multiplicator from Hz to MHz
	ExportScript.genericRadioConf[1]['FrequencyFormat'] = "%7.3f"        -- frequency view format LUA style
	ExportScript.genericRadioConf[1]['FrequencyStep'] = 25               -- minimal step for frequency change
	ExportScript.genericRadioConf[1]['minFrequency'] = 225.000           -- lowest frequency
	ExportScript.genericRadioConf[1]['maxFrequency'] = 399.975           -- highest frequency
	ExportScript.genericRadioConf[1]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[1]['Power']['ButtonID'] = 3001         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Power']['ValueOn'] = 0.167         -- power on value from cklickable.lua
	ExportScript.genericRadioConf[1]['Power']['ValueOff'] = 0.0          -- power off value from cklickable.lua
	--ExportScript.genericRadioConf[1]['Volume'] = {}                      -- volume knob active
	--ExportScript.genericRadioConf[1]['Volume']['ButtonID'] = 3011        -- volume button id from cklickable.lua
	--ExportScript.genericRadioConf[1]['Preset'] = {}                      -- preset knob active
	--ExportScript.genericRadioConf[1]['Preset']['ArgumentID'] = 161       -- ManualPreset argument id from cklickable.lua
	--ExportScript.genericRadioConf[1]['Preset']['ButtonID'] = 3001        -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
	--ExportScript.genericRadioConf[1]['Preset']['List'] = {[0.0]="01",[0.05]="02",[0.10]="03",[0.15]="04",[0.20]="05",[0.25]="06",[0.30]="07",[0.35]="08",[0.40]="09",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20",[1.00]="01"}
	--ExportScript.genericRadioConf[1]['Preset']['Step'] = 0.05            -- minimal step for preset change
	--ExportScript.genericRadioConf[1]['Squelch'] = {}                     -- squelch switch active
	--ExportScript.genericRadioConf[1]['Squelch']['ArgumentID'] = 170      -- ManualPreset argument id from cklickable.lua
	--ExportScript.genericRadioConf[1]['Squelch']['ButtonID'] = 3010       -- squelch button id from cklickable.lua
	--ExportScript.genericRadioConf[1]['Squelch']['ValueOn'] = 0.0         -- squelch on value from cklickable.lua
	--ExportScript.genericRadioConf[1]['Squelch']['ValueOff'] = 1.0        -- squelch off value from cklickable.lua
	-- Load Button = VLD Button
	ExportScript.genericRadioConf[1]['Load'] = {}                        -- load button preset
	ExportScript.genericRadioConf[1]['Load']['ButtonID'] = 3003          -- load button id from cklickable.lua
	--ExportScript.genericRadioConf[1]['ManualPreset'] = {}                -- switch manual or preset active
	--ExportScript.genericRadioConf[1]['ManualPreset']['ArgumentID'] = 167 -- ManualPreset argument id from cklickable.lua
	--ExportScript.genericRadioConf[1]['ManualPreset']['ButtonID'] = 3007  -- ManualPreset button id from cklickable.lua
	--ExportScript.genericRadioConf[1]['ManualPreset']['ValueManual'] = 0.0-- ManualPreset Manual value from cklickable.lua
	--ExportScript.genericRadioConf[1]['ManualPreset']['ValuePreset'] = 0.1-- ManualPreset Preset value from cklickable.lua

	ExportScript.genericRadioConf[2] = {}                                -- secound radio
	ExportScript.genericRadioConf[2]['Name'] = "AM Radio"                -- name of radio
	ExportScript.genericRadioConf[2]['DeviceID'] = 5                     -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[2]['setFrequency'] = true              -- change frequency active
	ExportScript.genericRadioConf[2]['FrequencyMultiplicator'] = 1000000 -- Multiplicator from Hz to MHz
	ExportScript.genericRadioConf[2]['FrequencyFormat'] = "%7.3f"        -- frequency view format LUA style
	ExportScript.genericRadioConf[2]['FrequencyStep'] = 25               -- minimal step for frequency change
	ExportScript.genericRadioConf[2]['minFrequency'] = 118.000           -- lowest frequency
	ExportScript.genericRadioConf[2]['maxFrequency'] = 143.975           -- highest frequency
	ExportScript.genericRadioConf[2]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[2]['Power']['ButtonID'] = 3001         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[2]['Power']['ValueOn'] = 0.33           -- power on value from cklickable.lua
	ExportScript.genericRadioConf[2]['Power']['ValueOff'] = 0.0          -- power off value from cklickable.lua
	--ExportScript.genericRadioConf[2]['Volume'] = {}                      -- volume knob active
	--ExportScript.genericRadioConf[2]['Volume']['ButtonID'] = 3005        -- volume button id from cklickable.lua
	--ExportScript.genericRadioConf[2]['Preset'] = {}                      -- preset knob active
	--ExportScript.genericRadioConf[2]['Preset']['ArgumentID'] = 137       -- ManualPreset argument id from cklickable.lua
	--ExportScript.genericRadioConf[2]['Preset']['ButtonID'] = 3001        -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
	--ExportScript.genericRadioConf[2]['Preset']['List'] = {[0.0]="01",[0.01]="02",[0.02]="03",[0.03]="04",[0.04]="05",[0.05]="06",[0.06]="07",[0.07]="08",[0.08]="09",[0.09]="10",[0.10]="11",[0.11]="12",[0.12]="13",[0.13]="14",[0.14]="15",[0.15]="16",[0.16]="17",[0.17]="18",[0.18]="19",[0.19]="20",[0.20]="01"}
	--ExportScript.genericRadioConf[2]['Preset']['Step'] = 0.01            -- minimal step for preset change
	--ExportScript.genericRadioConf[2]['Squelch'] = {}                     -- squelch switch active
	--ExportScript.genericRadioConf[2]['Squelch']['ArgumentID'] = 134      -- ManualPreset argument id from cklickable.lua
	--ExportScript.genericRadioConf[2]['Squelch']['ButtonID'] = 3008       -- squelch button id from cklickable.lua
	--ExportScript.genericRadioConf[2]['Squelch']['ValueOn'] = 0.0         -- squelch on value from cklickable.lua
	--ExportScript.genericRadioConf[2]['Squelch']['ValueOff'] = 1.0        -- squelch off value from cklickable.lua
	--ExportScript.genericRadioConf[2]['Load'] = {}                        -- load button preset
	--ExportScript.genericRadioConf[2]['Load']['ButtonID'] = 3006          -- load button id from cklickable.lua
	--ExportScript.genericRadioConf[2]['ManualPreset'] = {}                -- switch manual or preset active
	--ExportScript.genericRadioConf[2]['ManualPreset']['ArgumentID'] = 135 -- ManualPreset argument id from cklickable.lua
	--ExportScript.genericRadioConf[2]['ManualPreset']['ButtonID'] = 3004  -- ManualPreset button id from cklickable.lua
	--ExportScript.genericRadioConf[2]['ManualPreset']['ValueManual'] = 0.2-- ManualPreset Manual value from cklickable.lua
	--ExportScript.genericRadioConf[2]['ManualPreset']['ValuePreset'] = 0.3-- ManualPreset Preset value from cklickable.lua

	ExportScript.genericRadioConf[3] = {}                                -- secound radio
	ExportScript.genericRadioConf[3]['Name'] = "FM Radio"                -- name of radio
	ExportScript.genericRadioConf[3]['DeviceID'] = 28                    -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[3]['setFrequency'] = true              -- change frequency active
	ExportScript.genericRadioConf[3]['FrequencyMultiplicator'] = 1000000 -- Multiplicator from Hz to MHz
	ExportScript.genericRadioConf[3]['FrequencyFormat'] = "%7.3f"        -- frequency view format LUA style
	ExportScript.genericRadioConf[3]['FrequencyStep'] = 25               -- minimal step for frequency change
	ExportScript.genericRadioConf[3]['minFrequency'] = 30.000            -- lowest frequency
	ExportScript.genericRadioConf[3]['maxFrequency'] = 87.975            -- highest frequency
	ExportScript.genericRadioConf[3]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[3]['Power']['ButtonID'] = 3001         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[3]['Power']['ValueOn'] = 0.25           -- power on value from cklickable.lua
	ExportScript.genericRadioConf[3]['Power']['ValueOff'] = 0.0          -- power off value from cklickable.lua
	--ExportScript.genericRadioConf[3]['Volume'] = {}                      -- volume knob active
	--ExportScript.genericRadioConf[3]['Volume']['ButtonID'] = 3005        -- volume button id from cklickable.lua
	ExportScript.genericRadioConf[3]['Preset'] = {}                      -- preset knob active
	ExportScript.genericRadioConf[3]['Preset']['ArgumentID'] = 273       -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[3]['Preset']['ButtonID'] = 3002        -- preset button id from cklickable.lua
	--ExportScript.genericRadioConf[3]['Preset']['ButtonID2'] = 3002       -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
	-- [273] = "%.3f",	-- FM RADIO - Chanel Selector {0.0,0.143,0.286,0.429,0.572,0.715,0.858,1.0} -- laut clickabledata.lua
	ExportScript.genericRadioConf[3]['Preset']['List'] = {[0.0]="1",[0.143]="2",[0.286]="3",[0.429]="4",[0.572]="5",[0.715]="6",[0.858]="0",[1.0]="-"}
	ExportScript.genericRadioConf[3]['Preset']['Step'] = 0.143           -- minimal step for preset change
	--ExportScript.genericRadioConf[3]['Preset']['Step2'] = -0.01          -- minimal step for preset change
	--ExportScript.genericRadioConf[3]['Squelch'] = {}                     -- squelch switch active
	--ExportScript.genericRadioConf[3]['Squelch']['ArgumentID'] = 148      -- ManualPreset argument id from cklickable.lua
	--ExportScript.genericRadioConf[3]['Squelch']['ButtonID'] = 3008       -- squelch button id from cklickable.lua
	--ExportScript.genericRadioConf[3]['Squelch']['ValueOn'] = 0.0         -- squelch on value from cklickable.lua
	--ExportScript.genericRadioConf[3]['Squelch']['ValueOff'] = -1.0        -- squelch off value from cklickable.lua
	--ExportScript.genericRadioConf[3]['Load'] = {}                        -- load button preset
	--ExportScript.genericRadioConf[3]['Load']['ButtonID'] = 3004          -- load button id from cklickable.lua
	--ExportScript.genericRadioConf[3]['ManualPreset'] = {}                -- switch manual or preset active
	--ExportScript.genericRadioConf[3]['ManualPreset']['ArgumentID'] = 149 -- ManualPreset argument id from cklickable.lua
	--ExportScript.genericRadioConf[3]['ManualPreset']['ButtonID'] = 3004  -- ManualPreset button id from cklickable.lua
	--ExportScript.genericRadioConf[3]['ManualPreset']['ValueManual'] = 0.2-- ManualPreset Manual value from cklickable.lua
	--ExportScript.genericRadioConf[3]['ManualPreset']['ValuePreset'] = 0.3-- ManualPreset Preset value from cklickable.lua

	ExportScript.genericRadio(nil, nil)
	
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