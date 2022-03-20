-- AH64D_BLK_II

ExportScript.FoundDCSModule = true
ExportScript.Version.AH64D_BLK_II = "1.2.1"

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

	-- PILOT FLIGHT CONTROLS
	[398] = "%0.4f", -- Left Throttle PLT Power Lever,	(-1, 1)
	[399] = "%0.4f", -- Right Throttle PLT Power Lever,	(-1, 1)
	[470] = "%0.4f", -- Stick Pitch PLT,	(-1, 1)
	[471] = "%0.4f", -- StickRoll PLT,	(-1, 1)
	[474] = "%0.4f", -- Collective PLT,	(-1, 1)
	[476] = "%0.4f", -- Rudder PLT,	(-1, 1)
	[480] = "%0.4f", -- Left Wheel Brake PLT,	(0, 1)
	[481] = "%0.4f", -- Right Wheel Brake PLT,	(0, 1)

	-- CPG FLIGHT CONTROLS
	[472] = "%0.4f", -- StickPitchCPG,	(-1, 1)
	[473] = "%0.4f", -- StickRollCPG,	(-1, 1)
	[475] = "%0.4f", -- CollectiveCPG,	(-1, 1)
	[478] = "%0.4f", -- RudderCPG,	(-1, 1)
	[482] = "%0.4f", -- LeftWheelBrakeCPG,	(0, 1)
	[483] = "%0.4f", -- RightWheelBrakeCPG,	(0, 1)
	[628] = "%0.4f", -- LeftThrottleCPG,	(0, 1)
	[629] = "%0.4f", -- RightThrottleCPG,	(0, 1)
	
	-- Doors
	[795] = "%0.4f", -- Pilot door, (0, 1)
	[798] = "%0.4f", -- Copilot door, (0, 1)

	-- Standby Attitude Indicator Pilot
	[622] = "%0.4f", -- saiPitch		, (-0.95, 0.95)
	[623] = "%0.4f", -- saiBank			, (1.0, -1.0)
	[624] = "%0.4f", -- saiOffFlag		, (0, 1)
	[625] = "%0.4f", -- saiArrowPointer	, (-1.0, 1.0)
	[626] = "%0.4f", -- saiSlipBall		, (-1, 1)
	[627] = "%0.4f", -- saiTurn			, (-1.0, 1.0)

	-- Standby Airspeed Indicator
	[469] = "%0.4f", -- ias, (-1, 1)
	-- IASinput		= (0.0,	20.0,	30.0,	40.0,	50.0,	60.0,	70.0,	80.0,	90.0,	100.0,	110.0,	120.0,	130.0,	140.0,	150.0,	200.0,	230.0,	240.0,	250.0)
	-- IASoutput	= (0.0,	0.018,	0.05,	0.09,	0.142,	0.2,	0.27,	0.345,	0.394,	0.432,	0.465,	0.505,	0.543,	0.581,	0.623,	0.789,	0.896,	0.934,	0.967)

	--Standby Altimeter
	[479] = "%0.4f", -- BaroAltimeterAltitude, 		(0.0, 1000.0),	(0.0, 1.0)
	[605] = "%0.4f", -- BaroAltimeterAltitude01000, (0.0, 10.0),	(0.0, 1.0)
	[606] = "%0.4f", -- BaroAltimeterAltitude10000, (0.0, 10.0),	(0.0, 1.0)
	[607] = "%0.4f", -- BaroAltimeterPressure1100, 	(26.0, 31.0),	(0.0, 1.0)
	[608] = "%0.4f", -- BaroAltimeterPressure0010, 	(0.0, 10.0),	(0.0, 1.0)
	[609] = "%0.4f", -- BaroAltimeterPressure0001, 	(0.0, 10.0),	(0.0, 1.0)
	
	-- Free Air Temperature Gage
	[636] = "%0.4f", -- FatGage
	-- FATinput		= (-70.0,	 -60.0,	 -50.0,	-40.0,	-30.0,	50.0)
	-- FAToutput	= (  0.0,	0.0674,	0.1405,	 0.22,	0.305,	 1.0)
	
	-- Vibrations
	[820] = "%0.4f", -- Vibration1
	[821] = "%0.4f", -- Vibration2
	[822] = "%0.4f", -- Vibration3
	[823] = "%0.4f", -- Vibration4
	[824] = "%0.4f", -- Vibration5

	-- Misc
	[635] = "%0.4f", -- Copilot mirror, (0, 1), 1 is on
	
}

ExportScript.ConfigArguments =
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	
	-- PILOT MFD LEFT
	[10] = "%.4f", 	-- Left MPD Pushbutton  WPN, (1, 0, 1)
	[11] = "%.4f", 	-- Left MPD Pushbutton  FCR, (1, 0, 1)
	[12] = "%.4f", 	-- Left MPD Pushbutton  L6, (1, 0, 1)
	[13] = "%.4f", 	-- Left MPD Pushbutton  L5, (1, 0, 1)
	[14] = "%.4f", 	-- Left MPD Pushbutton  L4, (1, 0, 1)
	[15] = "%.4f", 	-- Left MPD Pushbutton  L3, (1, 0, 1)
	[16] = "%.4f", 	-- Left MPD Pushbutton  L2, (1, 0, 1)
	[17] = "%.4f", 	-- Left MPD Pushbutton  L1, (1, 0, 1)
	[18] = "%.4f", 	-- Left MPD Brightness Control Knob , (0, 0, 1)
	[19] = "%.4f", 	-- Left MPD Video Control Knob , (0, 0, 1)
	[20] = "%.4f", 	-- Left MPD Pushbutton  T1, (1, 0, 1)
	[21] = "%.4f", 	-- Left MPD Pushbutton  T2, (1, 0, 1)
	[22] = "%.4f", 	-- Left MPD Pushbutton  T3, (1, 0, 1)
	[23] = "%.4f", 	-- Left MPD Pushbutton  T4, (1, 0, 1)
	[24] = "%.4f", 	-- Left MPD Pushbutton  T5, (1, 0, 1)
	[25] = "%.4f", 	-- Left MPD Pushbutton  T6, (1, 0, 1)
	[26] = "%.4f", 	-- Left MPD Mode Knob  DAY/NIGHT/MONO, (-0.5, 0, 1)
	[27] = "%.4f", 	-- Left MPD Pushbutton  Asterisk, (1, 0, 1)
	[28] = "%.4f", 	-- Left MPD Pushbutton  R1, (1, 0, 1)
	[29] = "%.4f", 	-- Left MPD Pushbutton  R2, (1, 0, 1)
	[30] = "%.4f", 	-- Left MPD Pushbutton  R3, (1, 0, 1)
	[31] = "%.4f", 	-- Left MPD Pushbutton  R4, (1, 0, 1)
	[32] = "%.4f", 	-- Left MPD Pushbutton  R5, (1, 0, 1)
	[33] = "%.4f", 	-- Left MPD Pushbutton  R6, (1, 0, 1)
	[34] = "%.4f", 	-- Left MPD Pushbutton  VID, (1, 0, 1)
	[35] = "%.4f", 	-- Left MPD Pushbutton  COM, (1, 0, 1)
	[36] = "%.4f", 	-- Left MPD Pushbutton  A/C, (1, 0, 1)
	[37] = "%.4f", 	-- Left MPD Pushbutton  B6, (1, 0, 1)
	[38] = "%.4f", 	-- Left MPD Pushbutton  B5, (1, 0, 1)
	[39] = "%.4f", 	-- Left MPD Pushbutton  B4, (1, 0, 1)
	[40] = "%.4f", 	-- Left MPD Pushbutton  B3, (1, 0, 1)
	[41] = "%.4f", 	-- Left MPD Pushbutton  B2, (1, 0, 1)
	[42] = "%.4f", 	-- Left MPD Pushbutton  B1/M(Menu), (1, 0, 1)
	[43] = "%.4f", 	-- Left MPD Pushbutton  TSD, (1, 0, 1)


	--PILOT MFD RIGHT
	[44] = "%.4f", 	-- Right MPD Pushbutton  WPN, (1, 0, 1)
	[45] = "%.4f", 	-- Right MPD Pushbutton  FCR, (1, 0, 1)
	[46] = "%.4f", 	-- Right MPD Pushbutton  L6, (1, 0, 1)
	[47] = "%.4f", 	-- Right MPD Pushbutton  L5, (1, 0, 1)
	[48] = "%.4f", 	-- Right MPD Pushbutton  L4, (1, 0, 1)
	[49] = "%.4f", 	-- Right MPD Pushbutton  L3, (1, 0, 1)
	[50] = "%.4f", 	-- Right MPD Pushbutton  L2, (1, 0, 1)
	[51] = "%.4f", 	-- Right MPD Pushbutton  L1, (1, 0, 1)
	[52] = "%.4f", 	-- Right MPD Brightness Control Knob , (0, 0, 1)
	[53] = "%.4f", 	-- Right MPD Video Control Knob , (0, 0, 1)
	[54] = "%.4f", 	-- Right MPD Pushbutton  T1, (1, 0, 1)
	[55] = "%.4f", 	-- Right MPD Pushbutton  T2, (1, 0, 1)
	[56] = "%.4f", 	-- Right MPD Pushbutton  T3, (1, 0, 1)
	[57] = "%.4f", 	-- Right MPD Pushbutton  T4, (1, 0, 1)
	[58] = "%.4f", 	-- Right MPD Pushbutton  T5, (1, 0, 1)
	[59] = "%.4f", 	-- Right MPD Pushbutton  T6, (1, 0, 1)
	[60] = "%.4f", 	-- Right MPD Mode Knob  DAY/NIGHT/MONO, (-0.5, 0, 1)
	[61] = "%.4f", 	-- Right MPD Pushbutton  Asterisk, (1, 0, 1)
	[62] = "%.4f", 	-- Right MPD Pushbutton  R1, (1, 0, 1)
	[63] = "%.4f", 	-- Right MPD Pushbutton  R2, (1, 0, 1)
	[64] = "%.4f", 	-- Right MPD Pushbutton  R3, (1, 0, 1)
	[65] = "%.4f", 	-- Right MPD Pushbutton  R4, (1, 0, 1)
	[66] = "%.4f", 	-- Right MPD Pushbutton  R5, (1, 0, 1)
	[67] = "%.4f", 	-- Right MPD Pushbutton  R6, (1, 0, 1)
	[68] = "%.4f", 	-- Right MPD Pushbutton  VID, (1, 0, 1)
	[69] = "%.4f", 	-- Right MPD Pushbutton  COM, (1, 0, 1)
	[70] = "%.4f", 	-- Right MPD Pushbutton  A/C, (1, 0, 1)
	[71] = "%.4f", 	-- Right MPD Pushbutton  B6, (1, 0, 1)
	[72] = "%.4f", 	-- Right MPD Pushbutton  B5, (1, 0, 1)
	[73] = "%.4f", 	-- Right MPD Pushbutton  B4, (1, 0, 1)
	[74] = "%.4f", 	-- Right MPD Pushbutton  B3, (1, 0, 1)
	[75] = "%.4f", 	-- Right MPD Pushbutton  B2, (1, 0, 1)
	[76] = "%.4f", 	-- Right MPD Pushbutton  B1/M(Menu), (1, 0, 1)
	[77] = "%.4f", 	-- Right MPD Pushbutton  TSD, (1, 0, 1)

	-- CPG MFD LEFT
	[78] = "%.4f", 	-- Left MPD Pushbutton  WPN, (1, 0, 1)
	[79] = "%.4f", 	-- Left MPD Pushbutton  FCR, (1, 0, 1)
	[80] = "%.4f", 	-- Left MPD Pushbutton  L6, (1, 0, 1)
	[81] = "%.4f", 	-- Left MPD Pushbutton  L5, (1, 0, 1)
	[82] = "%.4f", 	-- Left MPD Pushbutton  L4, (1, 0, 1)
	[83] = "%.4f", 	-- Left MPD Pushbutton  L3, (1, 0, 1)
	[84] = "%.4f", 	-- Left MPD Pushbutton  L2, (1, 0, 1)
	[85] = "%.4f", 	-- Left MPD Pushbutton  L1, (1, 0, 1)
	[86] = "%.4f", 	-- Left MPD Brightness Control Knob , (0, 0, 1)
	[87] = "%.4f", 	-- Left MPD Video Control Knob , (0, 0, 1)
	[88] = "%.4f", 	-- Left MPD Pushbutton  T1, (1, 0, 1)
	[89] = "%.4f", 	-- Left MPD Pushbutton  T2, (1, 0, 1)
	[90] = "%.4f", 	-- Left MPD Pushbutton  T3, (1, 0, 1)
	[91] = "%.4f", 	-- Left MPD Pushbutton  T4, (1, 0, 1)
	[92] = "%.4f", 	-- Left MPD Pushbutton  T5, (1, 0, 1)
	[93] = "%.4f", 	-- Left MPD Pushbutton  T6, (1, 0, 1)
	[94] = "%.4f", 	-- Left MPD Mode Knob  DAY/NIGHT/MONO, (-0.5, 0, 1)
	[95] = "%.4f", 	-- Left MPD Pushbutton  Asterisk, (1, 0, 1)
	[96] = "%.4f", 	-- Left MPD Pushbutton  R1, (1, 0, 1)
	[97] = "%.4f", 	-- Left MPD Pushbutton  R2, (1, 0, 1)
	[98] = "%.4f", 	-- Left MPD Pushbutton  R3, (1, 0, 1)
	[99] = "%.4f", 	-- Left MPD Pushbutton  R4, (1, 0, 1)
	[100] = "%.4f", -- Left MPD Pushbutton  R5, (1, 0, 1)
	[101] = "%.4f", -- Left MPD Pushbutton  R6, (1, 0, 1)
	[102] = "%.4f", -- Left MPD Pushbutton  VID, (1, 0, 1)
	[103] = "%.4f", -- Left MPD Pushbutton  COM, (1, 0, 1)
	[104] = "%.4f", -- Left MPD Pushbutton  A/C, (1, 0, 1)
	[105] = "%.4f", -- Left MPD Pushbutton  B6, (1, 0, 1)
	[106] = "%.4f", -- Left MPD Pushbutton  B5, (1, 0, 1)
	[107] = "%.4f", -- Left MPD Pushbutton  B4, (1, 0, 1)
	[108] = "%.4f", -- Left MPD Pushbutton  B3, (1, 0, 1)
	[109] = "%.4f", -- Left MPD Pushbutton  B2, (1, 0, 1)
	[110] = "%.4f", -- Left MPD Pushbutton  B1/M(Menu), (1, 0, 1)
	[111] = "%.4f", -- Left MPD Pushbutton  TSD, (1, 0, 1)

	--CPG MFD RIGHT
	[112] = "%.4f", 	-- Right MPD Pushbutton  WPN, (1, 0, 1)
	[113] = "%.4f", 	-- Right MPD Pushbutton  FCR, (1, 0, 1)
	[114] = "%.4f", 	-- Right MPD Pushbutton  L6, (1, 0, 1)
	[115] = "%.4f", 	-- Right MPD Pushbutton  L5, (1, 0, 1)
	[116] = "%.4f", 	-- Right MPD Pushbutton  L4, (1, 0, 1)
	[117] = "%.4f", 	-- Right MPD Pushbutton  L3, (1, 0, 1)
	[118] = "%.4f", 	-- Right MPD Pushbutton  L2, (1, 0, 1)
	[119] = "%.4f", 	-- Right MPD Pushbutton  L1, (1, 0, 1)
	[120] = "%.4f", 	-- Right MPD Brightness Control Knob , (0, 0, 1)
	[121] = "%.4f", 	-- Right MPD Video Control Knob , (0, 0, 1)
	[122] = "%.4f", 	-- Right MPD Pushbutton  T1, (1, 0, 1)
	[123] = "%.4f", 	-- Right MPD Pushbutton  T2, (1, 0, 1)
	[124] = "%.4f", 	-- Right MPD Pushbutton  T3, (1, 0, 1)
	[125] = "%.4f", 	-- Right MPD Pushbutton  T4, (1, 0, 1)
	[126] = "%.4f", 	-- Right MPD Pushbutton  T5, (1, 0, 1)
	[127] = "%.4f", 	-- Right MPD Pushbutton  T6, (1, 0, 1)
	[128] = "%.4f", 	-- Right MPD Mode Knob  DAY/NIGHT/MONO, (-0.5, 0, 1)
	[129] = "%.4f", 	-- Right MPD Pushbutton  Asterisk, (1, 0, 1)
	[130] = "%.4f", 	-- Right MPD Pushbutton  R1, (1, 0, 1)
	[131] = "%.4f", 	-- Right MPD Pushbutton  R2, (1, 0, 1)
	[132] = "%.4f", 	-- Right MPD Pushbutton  R3, (1, 0, 1)
	[133] = "%.4f", 	-- Right MPD Pushbutton  R4, (1, 0, 1)
	[134] = "%.4f", 	-- Right MPD Pushbutton  R5, (1, 0, 1)
	[135] = "%.4f", 	-- Right MPD Pushbutton  R6, (1, 0, 1)
	[136] = "%.4f", 	-- Right MPD Pushbutton  VID, (1, 0, 1)
	[137] = "%.4f", 	-- Right MPD Pushbutton  COM, (1, 0, 1)
	[138] = "%.4f", 	-- Right MPD Pushbutton  A/C, (1, 0, 1)
	[139] = "%.4f", 	-- Right MPD Pushbutton  B6, (1, 0, 1)
	[140] = "%.4f", 	-- Right MPD Pushbutton  B5, (1, 0, 1)
	[141] = "%.4f", 	-- Right MPD Pushbutton  B4, (1, 0, 1)
	[142] = "%.4f", 	-- Right MPD Pushbutton  B3, (1, 0, 1)
	[143] = "%.4f", 	-- Right MPD Pushbutton  B2, (1, 0, 1)
	[144] = "%.4f", 	-- Right MPD Pushbutton  B1/M(Menu), (1, 0, 1)
	[145] = "%.4f", 	-- Right MPD Pushbutton  TSD, (1, 0, 1)

	-- TEDAC
	[146] = "%.4f", 	-- EL Adjust Rocker Switch  Up/Increase, (1, 0, 1)
	[147] = "%.4f", 	-- R/F Rocker Switch  Up/Increase, (1, 0, 1)
	[148] = "%.4f", 	-- FLIR GAIN Control Knob , (0, 0, 1)
	[149] = "%.4f", 	-- FLIR LEV Control Knob , (0, 0, 1)
	[150] = "%.4f", 	-- TAD Video Select Button - Press to select TADS as the video source , (1, 0, 1)
	[151] = "%.4f", 	-- FCR Video Select Button - Press to select FCR targeting format , (1, 0, 1)
	[152] = "%.4f", 	-- PNV Video Select Button - Press to select PNVS as the video source , (1, 0, 1)
	[153] = "%.4f", 	-- G/S Video Select Button - Press to activate grayscale for the video display , (1, 0, 1)
	[154] = "%.4f", 	-- Display Mode Knob  DAY/NT/OFF, (-0.5, 0, 1)
	[155] = "%.4f", 	-- SYM Rocker Switch  Up/Increase, (1, 0, 1)
	[156] = "%.4f", 	-- BRT Rocker Switch  Up/Increase, (1, 0, 1)
	[157] = "%.4f", 	-- CON Rocker Switch  Up/Increase, (1, 0, 1)
	[158] = "%.4f", 	-- Asterisk (*) Button - Press to adjust the brightness and contrast to nominal settings , (1, 0, 1)
	[159] = "%.4f", 	-- FILTER Button - Press to select filter in the TADS FLIR sensor , (1, 0, 1)
	[160] = "%.4f", 	-- FREEZE Button - Press to freeze the video imaging on the TDU , (1, 0, 1)
	[161] = "%.4f", 	-- ACM Button - Press to activate ACM , (1, 0, 1)
	[162] = "%.4f", 	-- AZ/EL Boresight Enable Button - Press to enable boresight controls , (1, 0, 1)
	[163] = "%.4f", 	-- AZ Adjust Rocker Switch  Left, (-1, -1, 0)

	-- CPG KEYBOARD UNIT
	[164] = "%.4f", 	-- KU Key  A, (1, 0, 1)
	[165] = "%.4f", 	-- KU Key  B, (1, 0, 1)
	[166] = "%.4f", 	-- KU Key  C, (1, 0, 1)
	[167] = "%.4f", 	-- KU Key  D, (1, 0, 1)
	[168] = "%.4f", 	-- KU Key  E, (1, 0, 1)
	[169] = "%.4f", 	-- KU Key  F, (1, 0, 1)
	[170] = "%.4f", 	-- KU Key 1, (1, 0, 1)
	[171] = "%.4f", 	-- KU Key 2, (1, 0, 1)
	[172] = "%.4f", 	-- KU Key 3, (1, 0, 1)
	[173] = "%.4f", 	-- KU Key  G, (1, 0, 1)
	[174] = "%.4f", 	-- KU Key  H, (1, 0, 1)
	[175] = "%.4f", 	-- KU Key  I, (1, 0, 1)
	[176] = "%.4f", 	-- KU Key  J, (1, 0, 1)
	[177] = "%.4f", 	-- KU Key  K, (1, 0, 1)
	[178] = "%.4f", 	-- KU Key  L, (1, 0, 1)
	[179] = "%.4f", 	-- KU Key 4, (1, 0, 1)
	[180] = "%.4f", 	-- KU Key 5, (1, 0, 1)
	[181] = "%.4f", 	-- KU Key 6, (1, 0, 1)
	[182] = "%.4f", 	-- KU Key  M, (1, 0, 1)
	[183] = "%.4f", 	-- KU Key  N, (1, 0, 1)
	[184] = "%.4f", 	-- KU Key  O, (1, 0, 1)
	[185] = "%.4f", 	-- KU Key  P, (1, 0, 1)
	[186] = "%.4f", 	-- KU Key  Q, (1, 0, 1)
	[187] = "%.4f", 	-- KU Key  R, (1, 0, 1)
	[188] = "%.4f", 	-- KU Key 7, (1, 0, 1)
	[189] = "%.4f", 	-- KU Key 8, (1, 0, 1)
	[190] = "%.4f", 	-- KU Key 9, (1, 0, 1)
	[191] = "%.4f", 	-- KU Key  S, (1, 0, 1)
	[192] = "%.4f", 	-- KU Key  T, (1, 0, 1)
	[193] = "%.4f", 	-- KU Key  U, (1, 0, 1)
	[194] = "%.4f", 	-- KU Key  V, (1, 0, 1)
	[195] = "%.4f", 	-- KU Key  W, (1, 0, 1)
	[196] = "%.4f", 	-- KU Key  X, (1, 0, 1)
	[197] = "%.4f", 	-- KU Key  ., (1, 0, 1)
	[198] = "%.4f", 	-- KU Key 0, (1, 0, 1)
	[199] = "%.4f", 	-- KU Key  +/-, (1, 0, 1)
	[200] = "%.4f", 	-- KU Key  Y, (1, 0, 1)
	[201] = "%.4f", 	-- KU Key  Z, (1, 0, 1)
	[202] = "%.4f", 	-- KU Key  /, (1, 0, 1)
	[203] = "%.4f", 	-- KU Key  BKS, (1, 0, 1)
	[204] = "%.4f", 	-- KU Key  SPC, (1, 0, 1)
	[205] = "%.4f", 	-- KU Key  *, (1, 0, 1)
	[206] = "%.4f", 	-- KU Key  / ('divide'), (1, 0, 1)
	[207] = "%.4f", 	-- KU Key  +, (1, 0, 1)
	[208] = "%.4f", 	-- KU Key  -, (1, 0, 1)
	[209] = "%.4f", 	-- KU Key  CLR, (1, 0, 1)
	[210] = "%.4f", 	-- KU Key  Left, (1, 0, 1)
	[211] = "%.4f", 	-- KU Key  Right, (1, 0, 1)
	[212] = "%.4f", 	-- KU Key  ENTER, (1, 0, 1)

	-- PILOT KEYBOARD UNIT
	[213] = "%.4f", 	-- KU Key  A, (1, 0, 1)
	[214] = "%.4f", 	-- KU Key  B, (1, 0, 1)
	[215] = "%.4f", 	-- KU Key  C, (1, 0, 1)
	[216] = "%.4f", 	-- KU Key  D, (1, 0, 1)
	[217] = "%.4f", 	-- KU Key  E, (1, 0, 1)
	[218] = "%.4f", 	-- KU Key  F, (1, 0, 1)
	[219] = "%.4f", 	-- KU Key 1, (1, 0, 1)
	[220] = "%.4f", 	-- KU Key 2, (1, 0, 1)
	[221] = "%.4f", 	-- KU Key 3, (1, 0, 1)
	[222] = "%.4f", 	-- KU Key  G, (1, 0, 1)
	[223] = "%.4f", 	-- KU Key  H, (1, 0, 1)
	[224] = "%.4f", 	-- KU Key  I, (1, 0, 1)
	[225] = "%.4f", 	-- KU Key  J, (1, 0, 1)
	[226] = "%.4f", 	-- KU Key  K, (1, 0, 1)
	[227] = "%.4f", 	-- KU Key  L, (1, 0, 1)
	[228] = "%.4f", 	-- KU Key 4, (1, 0, 1)
	[229] = "%.4f", 	-- KU Key 5, (1, 0, 1)
	[230] = "%.4f", 	-- KU Key 6, (1, 0, 1)
	[231] = "%.4f", 	-- KU Key  M, (1, 0, 1)
	[232] = "%.4f", 	-- KU Key  N, (1, 0, 1)
	[233] = "%.4f", 	-- KU Key  O, (1, 0, 1)
	[234] = "%.4f", 	-- KU Key  P, (1, 0, 1)
	[235] = "%.4f", 	-- KU Key  Q, (1, 0, 1)
	[236] = "%.4f", 	-- KU Key  R, (1, 0, 1)
	[237] = "%.4f", 	-- KU Key 7, (1, 0, 1)
	[238] = "%.4f", 	-- KU Key 8, (1, 0, 1)
	[239] = "%.4f", 	-- KU Key 9, (1, 0, 1)
	[240] = "%.4f", 	-- KU Key  S, (1, 0, 1)
	[241] = "%.4f", 	-- KU Key  T, (1, 0, 1)
	[242] = "%.4f", 	-- KU Key  U, (1, 0, 1)
	[243] = "%.4f", 	-- KU Key  V, (1, 0, 1)
	[244] = "%.4f", 	-- KU Key  W, (1, 0, 1)
	[245] = "%.4f", 	-- KU Key  X, (1, 0, 1)
	[246] = "%.4f", 	-- KU Key  ., (1, 0, 1)
	[247] = "%.4f", 	-- KU Key 0, (1, 0, 1)
	[248] = "%.4f", 	-- KU Key  +/-, (1, 0, 1)
	[249] = "%.4f", 	-- KU Key  Y, (1, 0, 1)
	[250] = "%.4f", 	-- KU Key  Z, (1, 0, 1)
	[251] = "%.4f", 	-- KU Key  /, (1, 0, 1)
	[252] = "%.4f", 	-- KU Key  BKS, (1, 0, 1)
	[253] = "%.4f", 	-- KU Key  SPC, (1, 0, 1)
	[254] = "%.4f", 	-- KU Key  *, (1, 0, 1)
	[255] = "%.4f", 	-- KU Key  / (divide), (1, 0, 1)
	[256] = "%.4f", 	-- KU Key  +, (1, 0, 1)
	[257] = "%.4f", 	-- KU Key  -, (1, 0, 1)
	[258] = "%.4f", 	-- KU Key  CLR, (1, 0, 1)
	[259] = "%.4f", 	-- KU Key  Left, (1, 0, 1)
	[260] = "%.4f", 	-- KU Key  Right, (1, 0, 1)
	[261] = "%.4f", 	-- KU Key  ENTER, (1, 0, 1)

	-- CPG EUFD
	[262] = "%.4f", 	-- IDM Rocker Switch  Up, (1, 0, 1)
	[263] = "%.4f", 	-- WCA Rocker Switch  Up, (1, 0, 1)
	[264] = "%.4f", 	-- RTS Rocker Switch  Up, (1, 0, 1)
	[265] = "%.4f", 	-- Brightness Control Knob , (0, 0, 1)
	[266] = "%.4f", 	-- Preset Button - Press to toggle preset window , (1, 0, 1)
	[267] = "%.4f", 	-- Enter Button , (1, 0, 1)
	[268] = "%.4f", 	-- Stopwatch Button - Press to start/stop  Hold to reset, (1, 0, 1)
	[269] = "%.4f", 	-- Swap Button , (1, 0, 1)

	-- PILOT EUFD
	[270] = "%.4f", 	-- IDM Rocker Switch  Up, (1, 0, 1)
	[271] = "%.4f", 	-- WCA Rocker Switch  Up, (1, 0, 1)
	[272] = "%.4f", 	-- RTS Rocker Switch  Up, (1, 0, 1)
	[273] = "%.4f", 	-- Brightness Control Knob , (0, 0, 1)
	[274] = "%.4f", 	-- Preset Button - Press to toggle preset window , (1, 0, 1)
	[275] = "%.4f", 	-- Enter Button , (1, 0, 1)
	[276] = "%.4f", 	-- Stopwatch Button - Press to start/stop  Hold to reset, (1, 0, 1)
	[277] = "%.4f", 	-- Swap Button , (1, 0, 1)

	-- ELEC INTERFACE
	[278] = "%.4f", 	-- IHADSS BRT Control Knob , (0, 0, 1)
	[279] = "%.4f", 	-- IHADSS CON Control Knob , (0, 0, 1)
	[280] = "%.4f", 	-- SYM BRT Control Knob , (0, 0, 1)
	[281] = "%.4f", 	-- Automatic Contrast Mode Switch  ACM/OFF, (-1, 0, 1)
	[282] = "%.4f", 	-- FLIR LVL Control Knob , (0, 0, 1)
	[283] = "%.4f", 	-- FLIR GAIN Control Knob , (0, 0, 1)

	-- ENGINE INTERFACE
	[284] = "%.4f", 	-- ENG 1 Fire Pushbutton - Press to arm/safe ENG 1 area's fire extinguishing system , (1, 0, 1)
	[285] = "%.4f", 	-- ENG 1 Fire Pushbutton Cover  OPEN/CLOSE, (-1, 0, 1)
	[286] = "%.4f", 	-- APU Fire Pushbutton - Press to arm/safe APU area's fire extinguishing system , (1, 0, 1)
	[287] = "%.4f", 	-- APU Fire Pushbutton Cover  OPEN/CLOSE, (-1, 0, 1)
	[288] = "%.4f", 	-- ENG 2 Fire Pushbutton - Press to arm/safe ENG 2 area's fire extinguishing system , (1, 0, 1)
	[289] = "%.4f", 	-- ENG 2 Fire Pushbutton Cover  OPEN/CLOSE, (-1, 0, 1)
	[290] = "%.4f", 	-- Primary Fire Extinguisher Discharge Pushbutton - Press to discharge primary fire bottle , (1, 0, 1)
	[291] = "%.4f", 	-- Fire Detection Circuit Test Switch  1(LMB)/2(RMB), (-1, -1, 0)
	[292] = "%.4f", 	-- Reserve Fire Extinguisher Discharge Pushbutton - Press to discharge reserve fire bottle , (1, 0, 1)

	-- ELEC INTERFACE
	[293] = "%.4f", 	-- A/S Pushbutton  ARM/SAFE, (1, 0, 1)
	[294] = "%.4f", 	-- GND ORIDE Pushbutton  ON/OFF, (1, 0, 1)

	-- ENGINE INTERFACE
	[295] = "%.4f", 	-- ENG 1 Fire Pushbutton - Press to arm/safe ENG 1 area's fire extinguishing system , (1, 0, 1)
	[296] = "%.4f", 	-- ENG 1 Fire Pushbutton Cover  OPEN/CLOSE, (-1, 0, 1)
	[297] = "%.4f", 	-- APU Fire Pushbutton - Press to arm/safe APU area's fire extinguishing system , (1, 0, 1)
	[298] = "%.4f", 	-- APU Fire Pushbutton Cover  OPEN/CLOSE, (-1, 0, 1)
	[299] = "%.4f", 	-- ENG 2 Fire Pushbutton - Press to arm/safe ENG 2 area's fire extinguishing system , (1, 0, 1)
	[300] = "%.4f", 	-- ENG 2 Fire Pushbutton Cover  OPEN/CLOSE, (-1, 0, 1)
	[301] = "%.4f", 	-- Primary Fire Extinguisher Discharge Pushbutton - Press to discharge primary fire bottle , (1, 0, 1)
	[302] = "%.4f", 	-- Fire Detection Circuit Test Switch  1(LMB)/2(RMB), (-1, -1, 0)
	[303] = "%.4f", 	-- Reserve Fire Extinguisher Discharge Pushbutton - Press to discharge reserve fire bottle , (1, 0, 1)
	
	-- PILOT LIGHTS SYSTEM
	[304] = "%.4f", 	-- Master Warning Button , (1, 0, 1)
	[305] = "%.4f", 	-- Master Caution Button , (1, 0, 1)

	-- ELEC INTERFACE
	[306] = "%.4f", 	-- A/S Pushbutton  ARM/SAFE, (1, 0, 1)
	[307] = "%.4f", 	-- GND ORIDE Pushbutton  ON/OFF, (1, 0, 1)

	-- HYDRO_INTERFACE
	[308] = "%.4f", 	-- TAIL WHEEL Pushbutton  LOCK/UNLOCK, (1, 0, 1)

	-- ELEC INTERFACE
	[309] = "%1d", 	-- NVS MODE Switch  FIXED/NORM/OFF, (-1, -1, 1)

	-- EMERGENCY_PANEL
	[310] = "%.4f", 	-- Guard Button  ON/OFF, (1, 0, 1)
	[311] = "%.4f", 	-- XPNDR Button  ON/OFF, (1, 0, 1)
	[312] = "%.4f", 	-- Zeroize Switch  ON/OFF, (-1, 0, 1)

	-- HYDRO_INTERFACE
	[313] = "%.4f", 	-- EMERG HYD Pushbutton  ON/OFF, (1, 0, 1)
	[314] = "%0.1f", 	-- Rotor Brake Switch  OFF/BRK/LOCK, (-1, -1, 1)
	
	-- ELEC INTERFACE
	[315] = "%0.1f", 	-- Master Ignition Switch  OFF/BATT/EXT PWR, (-0.5, 0, 1)

	-- PILOT KEYBOARD UNIT
	[316] = "%.4f", 	-- KU Scratchpad Brightness Knob , (0, 0, 1)

	-- ENGINE INTERFACE
	[317] = "%.4f", 	-- No.1 Engine Start Switch  IGN ORIDE(LMB)/START(RMB), (1, 0, 1)
	[318] = "%.4f", 	-- No.2 Engine Start Switch  IGN ORIDE(LMB)/START(RMB), (1, 0, 1)

	-- PILOT JETTISON PANEL
	[319] = "%.4f", 	-- L OUTBD Station Select Pushbutton  ARM/SAFE, (1, 0, 1)
	[320] = "%.4f", 	-- L INBD Station Select Pushbutton  ARM/SAFE, (1, 0, 1)
	[321] = "%.4f", 	-- R INBD Station Select Pushbutton  ARM/SAFE, (1, 0, 1)
	[322] = "%.4f", 	-- R OUTBD Station Select Pushbutton  ARM/SAFE, (1, 0, 1)
	[323] = "%.4f", 	-- L TIP Station Select Pushbutton  ARM/SAFE, (1, 0, 1)
	[324] = "%.4f", 	-- JETT Pushbutton - Press to jettison stores from all armed stations , (1, 0, 1)
	[325] = "%.4f", 	-- R TIP Station Select Pushbutton  ARM/SAFE, (1, 0, 1)

	-- EXTERNAL LIGHT SYSTEM
	[326] = "%.4f", 	-- Navigation Lights Switch  BRT/OFF/DIM, (-1, -1, 1)

	-- CPTLIGHTS_SYSTEM
	[327] = "%.4f", 	-- Signal Lights Control Knob , (0, 0, 1)
	[328] = "%.4f", 	-- Primary Lights Control Knob , (0, 0, 1)

	-- EXTERNAL LIGHT SYSTEM
	[329] = "%.4f", 	-- Formation Lights Control Knob , (0, 0, 1)

	-- CPTLIGHTS_SYSTEM
	[330] = "%.4f", 	-- Flood Lights Control Knob , (0, 0, 1)
	[331] = "%.4f", 	-- Standby Instrument Lights Control Knob , (0, 0, 1)

	-- EXTERNAL LIGHT SYSTEM
	[332] = "%.4f", 	-- Anti-Collision Lights Switch  WHT/OFF/RED, (-1, -1, 1)

	-- CPTLIGHTS_SYSTEM
	[333] = "%.4f", 	-- Press To Test Button , (1, 0, 1)

	-- PILOT COMM PANEL
	[334] = "%.4f", 	-- VHF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	[335] = "%.4f", 	-- UHF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	[336] = "%.4f", 	-- FM1 Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	[337] = "%.4f", 	-- FM2 Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	[338] = "%.4f", 	-- HF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	[339] = "%.4f", 	-- VHF Squelch Switch  ON/OFF, (-1, 0, 1)
	[340] = "%.4f", 	-- UHF Squelch Switch  ON/OFF, (-1, 0, 1)
	[341] = "%.4f", 	-- FM1 Squelch Switch  ON/OFF, (-1, 0, 1)
	[342] = "%.4f", 	-- FM2 Squelch Switch  ON/OFF, (-1, 0, 1)
	[343] = "%.4f", 	-- HF Squelch Switch  ON/OFF, (-1, 0, 1)
	[344] = "%.4f", 	-- MASTER Volume Control Knob , (0, 0, 1)
	[345] = "%.4f", 	-- SENS Control Knob , (0, 0, 1)
	[346] = "%.4f", 	-- ICS Mode Switch  HOT MIC/VOX/PTT, (-1, -1, 1)
	[347] = "%.4f", 	-- IDENT Button , (1, 0, 1)
	[348] = "%.4f", 	-- IFF Volume Control Knob   Rotate to adjust volume, (0, 0, 1)
	[349] = "%.4f", 	-- RLWR Volume Control Knob  Rotate to adjust volume, (0, 0, 1)
	[350] = "%.4f", 	-- ATA Volume Control Knob   Rotate to adjust volume, (0, 0, 1)
	[351] = "%.4f", 	-- VCR Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	[352] = "%.4f", 	-- ADF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	
	-- ENGINE INTERFACE
	[353] = "%.4f", 	-- CKT A Check Overspeed Test Switch  ENG 2(LMB)/ENG 1(RMB), (1, 0, 1)
	[354] = "%.4f", 	-- CKT B Check Overspeed Test Switch  ENG 2(LMB)/ENG 1(RMB), (1, 0, 1)

	-- ELEC INTERFACE
	[355] = "%.4f", 	-- Generator Reset Switch  GEN 1(LMB)/GEN 2(RMB), (-1, -1, 0)

	-- CPT MECH
	[356] = "%.4f", 	-- Defog Button - Press to defog the canopy side panels , (1, 0, 1)
	[357] = "%.4f", 	-- Wiper Control Switch  PARK/OFF/LO/HI, (-0.1, 0, 0.3)

	-- EMERGENCY PANEL
	[358] = "%.4f", 	-- Guard Button  ON/OFF, (1, 0, 1)
	[359] = "%.4f", 	-- XPNDR Button  ON/OFF, (1, 0, 1)
	[360] = "%.4f", 	-- Zeroize Switch  ON/OFF, (-1, 0, 1)

	-- HYDRO_INTERFACE
	[361] = "%.4f", 	-- EMERG HYD Pushbutton  ON/OFF, (1, 0, 1)
	[362] = "%.4f", 	-- TAIL WHEEL Pushbutton  LOCK/UNLOCK, (1, 0, 1)

	-- ELEC INTERFACE
	[363] = "%.4f", 	-- NVS MODE Switch  FIXED/NORM/OFF, (-1, -1, 1)

	-- CPTLIGHTS_SYSTEM
	[364] = "%.4f", 	-- Signal Lights Control Knob , (0, 0, 1)
	[365] = "%.4f", 	-- Primary Lights Control Knob , (0, 0, 1)
	[366] = "%.4f", 	-- Flood Lights Control Knob , (0, 0, 1)
	[367] = "%.4f", 	-- Press To Test Button , (1, 0, 1)

	-- CPG JETTISON PANEL
	[368] = "%.4f", 	-- L OUTBD Station Select Pushbutton  ARM/SAFE, (1, 0, 1)
	[369] = "%.4f", 	-- L INBD Station Select Pushbutton  ARM/SAFE, (1, 0, 1)
	[370] = "%.4f", 	-- R INBD Station Select Pushbutton  ARM/SAFE, (1, 0, 1)
	[371] = "%.4f", 	-- R OUTBD Station Select Pushbutton  ARM/SAFE, (1, 0, 1)
	[372] = "%.4f", 	-- L TIP Station Select Pushbutton  ARM/SAFE, (1, 0, 1)
	[373] = "%.4f", 	-- JETT Pushbutton - Press to jettison stores from all armed stations , (1, 0, 1)
	[374] = "%.4f", 	-- R TIP Station Select Pushbutton  ARM/SAFE, (1, 0, 1)
	
	-- CPG COMM PANEL
	[375] = "%.4f", 	-- VHF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	[376] = "%.4f", 	-- UHF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	[377] = "%.4f", 	-- FM1 Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	[378] = "%.4f", 	-- FM2 Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	[379] = "%.4f", 	-- HF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	[380] = "%.4f", 	-- VHF SQL Switch  ON/OFF, (-1, 0, 1)
	[381] = "%.4f", 	-- UHF SQL Switch  ON/OFF, (-1, 0, 1)
	[382] = "%.4f", 	-- FM1 SQL Switch  ON/OFF, (-1, 0, 1)
	[383] = "%.4f", 	-- FM2 SQL Switch  ON/OFF, (-1, 0, 1)
	[384] = "%.4f", 	-- HF SQL Switch  ON/OFF, (-1, 0, 1)
	[385] = "%.4f", 	-- MASTER Volume Control Knob , (0, 0, 1)
	[386] = "%.4f", 	-- SENS Control Knob , (0, 0, 1)
	[387] = "%.4f", 	-- ICS Mode Switch  HOT MIC/VOX/PTT, (-1, -1, 1)
	[388] = "%.4f", 	-- IDENT Button , (1, 0, 1)
	[389] = "%.4f", 	-- IFF Volume Control Knob  Rotate to adjust volume, (0, 0, 1)
	[390] = "%.4f", 	-- RLWR Volume Control Knob  Rotate to adjust volume, (0, 0, 1)
	[391] = "%.4f", 	-- ATA Volume Control Knob  Rotate to adjust volume, (0, 0, 1)
	[392] = "%.4f", 	-- VCR Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	[393] = "%.4f", 	-- ADF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (1, 0, 1)
	
	-- CPT MECH
	[394] = "%.4f", 	-- Defog Button - Press to defog the canopy side panels , (1, 0, 1)
	[395] = "%.4f", 	-- Wiper Control Switch  PARK/OFF/LO/HI, (-0.1, 0, 0.3)

	-- ELEC INTERFACE
	[397] = "%.4f", 	-- Processor Select Switch  SP 1/AUTO/SP 2, (-1, -1, 1)

	-- ENGINE INTERFACE
	[400] = "%.4f", 	-- APU Pushbutton - Press to start/stop APU , (1, 0, 1)
	[401] = "%.4f", 	-- APU Pushbutton Cover  OPEN/CLOSE, (-1, 0, 1)

	-- BARO ALTIMETER
	[447] = "%.4f", 	-- Altimeter Pressure Setting Knob , (0, 0, 1)

	-- PILOT COMM PANEL
	[449] = "%.4f", 	-- VHF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	[450] = "%.4f", 	-- UHF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	[451] = "%.4f", 	-- FM1 Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	[452] = "%.4f", 	-- FM2 Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	[453] = "%.4f", 	-- HF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	[457] = "%.4f", 	-- VCR Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	[458] = "%.4f", 	-- ADF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	
	-- CPG COMM PANEL
	[459] = "%.4f", 	-- VHF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	[460] = "%.4f", 	-- UHF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	[461] = "%.4f", 	-- FM1 Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	[462] = "%.4f", 	-- FM2 Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	[463] = "%.4f", 	-- HF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	[467] = "%.4f", 	-- VCR Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	[468] = "%.4f", 	-- ADF Volume Control Knob  (LMB) Pull to disable / (MW) Rotate to adjust volume, (-1, 0, 1)
	
	-- TEDAC
	[487] = "%.4f", 	-- Cursor Controller  Up, (1, 0, 1)
	[488] = "%.4f", 	-- Cursor Controller  Left, (-1, -1, 0)
	[489] = "%.4f", 	-- Cursor Controller  Enter, (1, 0, 1)
	[490] = "%.4f", 	-- Cursor Display Select (L/R) Button - Press to move the cursor to the center of the opposite MPD , (1, 0, 1)
	[491] = "%.4f", 	-- Image AutoTrack/Offset Switch  OFS(LMB)/IAT(RMB), (1, 0, 1)
	[492] = "%.4f", 	-- TADS FOV Select Switch  Z (Zoom), (1, 0, 1)
	[493] = "%.4f", 	-- TADS FOV Select Switch  N (Narrow), (-1, -1, 0)
	[494] = "%.4f", 	-- TADS Sensor Select Switch  FLIR/TV/DVO, (-1, -1, 1)
	[495] = "%.4f", 	-- STORE/Update Switch  UPDT(LMB)/STORE(RMB), (1, 0, 1)
	[496] = "%.4f", 	-- Linear Motion Compensation (LMC) Button - Press to toggle LMC mode , (1, 0, 1)
	[498] = "%.4f", 	-- FCR Mode Switch  GTM (Ground Targeting Mode), (1, 0, 1)
	[499] = "%.4f", 	-- FCR Mode Switch  TPM (Terrain Profile Mode), (-1, -1, 0)
	[500] = "%.4f", 	-- FCR Scan Switch  C (Continuous)(LMB)/S (Single)(RMB), (1, 0, 1)
	[501] = "%.4f", 	-- CUED Search Button - Press to orient the FCR centerline , (1, 0, 1)
	[502] = "%.4f", 	-- Weapons Action (WAS) Switch  GUN, (1, 0, 1)
	[503] = "%.4f", 	-- Weapons Action (WAS) Switch  RKT, (-1, -1, 0)
	[504] = "%.4f", 	-- FLIR Polarity Button - Press to change polarity , (1, 0, 1)
	[505] = "%.4f", 	-- HDD/HOD Select Button - currently not used , (1, 0, 1)
	[507] = "%.4f", 	-- Image Auto Tracker (IAT) Polarity Switch  W (White)/A (Auto)/B (Black), (-1, -1, 1)
	[508] = "%.4f", 	-- Sight Select Switch  HMD, (1, 0, 1)
	[509] = "%.4f", 	-- Sight Select Switch  FCR, (-1, -1, 0)
	[510] = "%.4f", 	-- Laser Tracker Mode (LT) Switch  A (Automatic)/O (Off)/M (Manual), (-1, -1, 1)
	[511] = "%.4f", 	-- FCR Scan Size Switch  Z (Zoom), (1, 0, 1)
	[512] = "%.4f", 	-- FCR Scan Size Switch  N (Narrow), (-1, -1, 0)
	[513] = "%.4f", 	-- C-Scope Button , (1, 0, 1)
	[514] = "%.4f", 	-- Sight Slave Button - Press to slave TADS or FCR to the selected acquisition source , (1, 0, 1)
	[515] = "%.4f", 	-- Sight Manual Tracker (MAN TRK) Controller  Up, (1, 0, 1)
	[516] = "%.4f", 	-- Sight Manual Tracker (MAN TRK) Controller  Left, (-1, -1, 0)
	[517] = "%.4f", 	-- Display Zoom Button - Press to view FCR targeting information on the NTS target , (1, 0, 1)
	[518] = "%.4f", 	-- Cursor Enter Button - Press to enter , (1, 0, 1)
	[519] = "%.4f", 	-- Spare Switch  PREVIOUS(LMB)/NEXT(RMB), (1, 0, 1)
	
	-- CMWS
	[610] = "%.4f", 	-- CMWS PWR Switch  OFF/ON/TEST(momentarily), (-1, -1, 0)
	[611] = "%.4f", 	-- CMWS Audio Volume Knob , (0, 0, 1)
	[612] = "%.4f", 	-- CMWS Lamp Knob , (0, 0, 1)
	[614] = "%.4f", 	-- CMWS Flare Squibs Switch  ARM/SAFE, (-1, 0, 1)
	[615] = "%.4f", 	-- CMWS Mode Switch  CMWS/NAV, (-1, 0, 1)
	[616] = "%.4f", 	-- CMWS Operation Switch  BYPASS/AUTO, (-1, 0, 1)
	[617] = "%.4f", 	-- CMWS Flare Jettison Switch Cover  OPEN/CLOSE, (-1, 0, 1)
	[618] = "%.4f", 	-- CMWS Flare Jettison Switch , (-1, 0, 1)
	
	-- SAI
	[619] = "%.4f", 	-- SAI Cage Knob  (LMB) Pull to cage /(MW) Adjust aircraft reference symbol, (1, 0, 1)
	[620] = "%.4f", 	-- SAI Cage Knob  (LMB) Pull to cage /(MW) Adjust aircraft reference symbol, (1, 0, 1)

	-- CPG KEYBOARD UNIT
	[621] = "%.4f", 	-- KU Scratchpad Brightness Knob , (0, 0, 1)

	-- GEAR INTERFACE
	[634] = "%.4f", 	-- Parking Brake Handle  Pull/Stow, (-1, 0, 1)

	-- CPT MECH
	[796] = "%.4f", 	-- PLT canopy  OPEN/CLOSE, (0, 0, 1)
	[799] = "%.4f", 	-- CPG canopy  OPEN/CLOSE, (0, 0, 1)

	-- EMERGENCY PANEL
	[801] = "%.4f", 	-- Master Zeroize Switch Cover  OPEN/CLOSE, (-1, 0, 1)
	[802] = "%.4f", 	-- Master Zeroize Switch  ON/OFF, (-1, 0, 1)
	[803] = "%.4f", 	-- Master Zeroize Switch Cover  OPEN/CLOSE, (-1, 0, 1)
	[804] = "%.4f", 	-- Master Zeroize Switch  ON/OFF, (-1, 0, 1)
	
	-- CPTLIGHTS_SYSTEM
	[805] = "%.4f", 	-- Master Warning Button , (1, 0, 1)
	[807] = "%.4f", 	-- Master Caution Button , (1, 0, 1)

	-- Preston AI ??????????????????
	[809] = "%.4f", 	-- Stick Folding  UP/DOWN, (-1, 0, 1)

	-- CPT MECH
	[825] = "%.4f", 	-- CPG M4 Trigger , (1, 0, 1)
	[826] = "%.4f", 	-- CPG M4 Safety , (-1, -1, 1)
	[827] = "%.4f", 	-- PLT M4 Trigger , (1, 0, 1)
	[828] = "%.4f", 	-- PLT M4 Safety , (-1, -1, 1)
	
	-- Warning Lights and Button Lights
	[424] = "%0.1f", -- MasterWarningPLT   		
	[425] = "%0.1f", -- MasterCautionPLT   
	[416] = "%0.1f", -- FireEng1PLT   
	[418] = "%0.1f", -- FireApuPLT		
	[420] = "%0.1f", -- FireEng2PLT		   
	[417] = "%0.1f", -- RdyEng1PLT           
	[419] = "%0.1f", -- RdyApuPLT            
	[421] = "%0.1f", -- RdyEng2PLT           
	[422] = "%0.1f", -- DischPriPLT          
	[423] = "%0.1f", -- DischResPLT          
	[403] = "%0.1f", -- EmergencyGuardPLT    
	[404] = "%0.1f", -- EmergencyXpndrPLT    
	[405] = "%0.1f", -- EmergencyEmergHydPLT  
	[402] = "%0.1f", -- TailWheelUnlockPLT  
	[411] = "%0.1f", -- ArmLTipPLT           
	[407] = "%0.1f", -- ArmLOutbdPLT         
	[408] = "%0.1f", -- ArmLInbdPLT          
	[409] = "%0.1f", -- ArmRInbdPLT          
	[410] = "%0.1f", -- ArmROutbdPLT         
	[412] = "%0.1f", -- ArmRTipPLT           
	[413] = "%0.1f", -- ArmamentASArmPLT     
	[414] = "%0.1f", -- ArmamentASSafePLT    
	[415] = "%0.1f", -- ArmamentGndOrideOnPLT
	[406] = "%0.1f", -- APUPLT               
	[806] = "%0.1f", -- MasterWarningCPG   
	[808] = "%0.1f", -- MasterCautionCPG   
	[441] = "%0.1f", -- FireEng1CPG    
	[443] = "%0.1f", -- FireApuCPG    
	[445] = "%0.1f", -- FireEng2CPG    
	[442] = "%0.1f", -- RdyEng1CPG           
	[444] = "%0.1f", -- RdyApuCPG            
	[446] = "%0.1f", -- RdyEng2CPG           
	[447] = "%0.1f", -- DischPriCPG          
	[448] = "%0.1f", -- DischResCPG          
	[427] = "%0.1f", -- EmergencyGuardCPG    
	[428] = "%0.1f", -- EmergencyXpndrCPG    
	[429] = "%0.1f", -- EmergencyEmergHydCPG  
	[426] = "%0.1f", -- TailWheelUnlockCPG  
	[434] = "%0.1f", -- ArmLTipCPG           
	[430] = "%0.1f", -- ArmLOutbdCPG         
	[431] = "%0.1f", -- ArmLInbdCPG          
	[432] = "%0.1f", -- ArmRInbdCPG          
	[433] = "%0.1f", -- ArmROutbdCPG         
	[435] = "%0.1f", -- ArmRTipCPG           
	[438] = "%0.1f", -- ArmamentASArmCPG     
	[439] = "%0.1f", -- ArmamentASSafeCPG    
	[440] = "%0.1f", -- ArmamentGndOrideOnCPG
	[436] = "%0.1f", -- ProcessorSelectSp1CPG
	[437] = "%0.1f", -- ProcessorSelectSp2CPG
	
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