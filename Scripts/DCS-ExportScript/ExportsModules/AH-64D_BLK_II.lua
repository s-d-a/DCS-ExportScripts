-- AH64D_BLK_II
-- https://github.com/asherao/DCS-ExportScripts

local base    = _G -- game information
local os      = base.os -- time
local Terrain = require('terrain') -- map info  

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
end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
	
	ExportScript.CountermeasureReadouts(mainPanelDevice)
  --ExportScript.MfdReadouts(mainPanelDevice) --Testing in progress
	--ExportScript.TSD(mainPanelDevice) -- Disabled: see note in Function
	
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

	--=====================================================================================
	ExportScript.Tools.WriteToLog('CMSP ')
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

-------------------------------------
--- Apache Flare and Chaff Counts ---
-------------------------------------
  
function ExportScript.CountermeasureReadouts(mainPanelDevice)
	
	local CmwsInfo_24 = ExportScript.Tools.split(list_indication(24), "%c")--this contains the formated table of the kneeboard
	
	-- New way of detecting the counts, borrowed from Wizard and the F16
	local txt_FLARES_Count
	 
	for k,v in pairs(CmwsInfo_24) do
		if v == "#85#" then
			txt_FLARES_Count = CmwsInfo_24[k+1]
		end
	end
	
	local txt_CHAFFS_Count
	 
	for k,v in pairs(CmwsInfo_24) do
		if v == "#86#" then
			txt_CHAFFS_Count = CmwsInfo_24[k+1]
		end
	end
	
	ExportScript.Tools.SendData(3000, string.format(txt_FLARES_Count))
	ExportScript.Tools.SendData(3001, string.format(txt_CHAFFS_Count))
	ExportScript.Tools.SendData(3002, string.format("F " .. txt_FLARES_Count))
	ExportScript.Tools.SendData(3003, string.format("C " .. txt_CHAFFS_Count))
	ExportScript.Tools.SendData(3004, string.format("F " .. txt_FLARES_Count .. "\nC " .. txt_CHAFFS_Count))
	ExportScript.Tools.SendData(3005, string.format("FLARE\n" .. txt_FLARES_Count))
	ExportScript.Tools.SendData(3006, string.format("CHAFF\n" .. txt_CHAFFS_Count))
	ExportScript.Tools.SendData(3999, string.format(ExportScript.Tools.dump(CmwsInfo_24)))
end

-------------------------
-- Apache MFD Readouts --
-------------------------
  
function ExportScript.MfdReadouts(mainPanelDevice)
  --[[ This can be tested by creating three "Momentary Button/Displays"
  -- Change the Title Text Change on DCS Update Settings DCS ID to 5000, 5001, and 5002.
  -- When in cockpit the values will populate.
  -- Press the FCR, WPN, and TSD buttons to see them change.
  -- You can remove this comment from your code.]]

	--this contains the formated table of the Pilot Left MFD
	local MfdPltLeftInfo_6 = ExportScript.Tools.split(list_indication(6), "%c")
	
  -- init the names of the containers for the variables
	local button_T1 
  local button_T2
	 
	for k,v in pairs(MfdPltLeftInfo_6) do -- start searching through the list_indication
    
		if v == "PB1_1" then -- reference the list_indication to get the correct entry
      button_T1 = MfdPltLeftInfo_6[k+1]
		end
    
    if v == "PB2_3" or v == "PB2_1" then -- this one seems to change depending on the screen...
			button_T2 = MfdPltLeftInfo_6[k+1]
		end

	end
	
  -- if a value was not present, it wasn't populated
  -- fill it with something else to indicate that to the user
  -- otherwise, keep its value
  -- Don't forget to add the NilOrEmpty() function in the General Helper Functions section
  button_T1 = NilOrEmpty(button_T1)
  button_T2 = NilOrEmpty(button_T2)
  
	ExportScript.Tools.SendData(5000, string.format(button_T1))
	ExportScript.Tools.SendData(5001, string.format(button_T2))

end

---------------------
-- Apache TSD Info --
---------------------

function ExportScript.TSD(mainPanelDevice)
	-- Note: Unfortunately, this info does not update unless the TSD is visible. 
	-- Therefore, implementation of this fucntion is on hold.
	
	local list_indication_8 = ExportScript.Tools.split(list_indication(8), "%c")--this contains the formated table of the kneeboard
	
	for k,v in pairs(list_indication_8) do
		if v == "NextWaypointStatusWindow_text_1" then
			NextWptReadout1 = list_indication_8[k+1]
		end
	end
	
	for k,v in pairs(list_indication_8) do
		if v == "NextWaypointStatusWindow_text_2" then
			NextWptReadout2 = list_indication_8[k+1]
		end
	end
	
	for k,v in pairs(list_indication_8) do
		if v == "NextWaypointStatusWindow_text_3" then
			NextWptReadout3 = list_indication_8[k+1]
		end
	end
	
	for k,v in pairs(list_indication_8) do
		if v == "NextWaypointStatusWindow_text_4" then
			NextWptReadout4 = list_indication_8[k+1]
		end
	end
	
	-- TODO: Debug endurance readout
	-- possible issue may be due to the colon in string
	for k,v in pairs(list_indication_8) do
		if v == "EnduranceStatusWindow_text_1" then
			Endurance = list_indication_8[k+1]
		end
	end
	
	for k,v in pairs(list_indication_8) do
		if v == "WindStatusWindow_CALM_text" then
			WindStatus = list_indication_8[k+1]
		end
	end
	
	NextWptReadout1 = trim(NextWptReadout1)
	NextWptReadout2 = trim(NextWptReadout2)
	NextWptReadout3 = trim(NextWptReadout3)
	NextWptReadout4 = trim(NextWptReadout4)
	Endurance = trim(Endurance)
	WindStatus = trim(WindStatus)
	
	
	ExportScript.Tools.SendData(3007, string.format(NextWptReadout1))
	ExportScript.Tools.SendData(3008, string.format(NextWptReadout2))
	ExportScript.Tools.SendData(3009, string.format(NextWptReadout3))
	ExportScript.Tools.SendData(3010, string.format(NextWptReadout4))
	ExportScript.Tools.SendData(3011, string.format(Endurance))
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