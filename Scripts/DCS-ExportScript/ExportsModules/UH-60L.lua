-- UH-60L Export Module
-- Feel free to use, modify and repost in any way you desire.
--[[ To see the cockpit in model viewer
Load model "uh-60l_cockpit.edm" from dcs/mods/aircraft/UH-60L/Shapes"
Click Tools > Mount textures > Mount Zip and select "dcs/mods/aircraft/UH-60L/Textures/h60Textures.zip
Click open
Load model "uh-60l_cockpit.edm" from dcs/mods/aircraft/UH-60L/Shapes"
Done
]]

ExportScript.FoundDCSModule = true
ExportScript.Version.UH60L = "1.2.1"

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
	
	[1] = "%.4f",    -- OAT Guages
	
	[17] = "%.4f",   -- Battery Switch ON/OFF
	[18] = "%.4f",   -- External Power Switch ON/OFF/RESET
	[19] = "%.4f",   -- APU GEN ON/OFF/TEST
	[20] = "%.4f",   -- GEN 1 Switch ON/OFF/TEST
	[21] = "%.4f",   -- GEN 2 Switch ON/OFF/TEST
	[22] = "%.4f",   -- Fuel Pump Switch FUEL PRIME/OFF/APU BOOST
	[23] = "%.4f",   -- Air Source Switch AIR/OFF/ENG
	[24] = "%.4f",   -- APU Control ON/OFF
	
	[26] = "%.4f",   -- Engine 1 Control
	[27] = "%.4f",   -- Engine 2 Control
	[28] = "%.4f",   -- Engine 1 FSS
	[29] = "%.4f",   -- Engine 2 FSS
	[30] = "%.4f",   -- Engine 1 Starter
	[31] = "%.4f",   -- Engine 2 Starter
	[32] = "%.4f",   -- Stabilator Manual Slew UP/Down
	[33] = "%.4f",   -- 
	[34] = "%.4f",   -- 
	[35] = "%.4f",   -- 
	[36] = "%.4f",   -- 
	[37] = "%.4f",   -- 
	[38] = "%.4f",   -- 
	
	
	[40] = "%.4f",   -- No. 1 Fuel Boost Pump ON/OFF
	[41] = "%.4f",   -- No. 2 Fuel Boost Pump ON/OFF
	[42] = "%.4f",   -- Engine 1 Power Control Linkage
	[43] = "%.4f",   -- Engine 2 Power Control Linkage
	
	-- AN/ARC-164 UHF Radio
	[50] = "%.4f",   -- AN/ARC-164 Mode
	[52] = "%.4f",   -- AN/ARC-164 Manual/Preset/Guard
	[53] = "%.4f",   -- AN/ARC-164 100s
	[54] = "%.4f",   -- AN/ARC-164 10s
	[55] = "%.4f",   -- AN/ARC-164 1s
	[56] = "%.4f",   -- AN/ARC-164 .1s
	[57] = "%.4f",   -- AN/ARC-164 .010s
	[58] = "%.4f",   -- AN/ARC-164 Preset
	
	[60] = "%.4f",   -- Altimeter 100s PLT
	[61] = "%.4f",   -- Altimeter 1000s PLT
	[62] = "%.4f",   -- Altimeter 10000s PLT
	[63] = "%.4f",   -- 
	[64] = "%.4f",   -- Kollsman Window Digit 1 PLT
	[65] = "%.4f",   -- Kollsman Window Digit 2 PLT
	[66] = "%.4f",   -- Kollsman Window Digit 3 PLT
	[67] = "%.4f",   -- Kollsman Window Digit 4 PLT
	[68] = "%.4f",   -- Altimeter Flag PLT
	
	[70] = "%.4f",   -- Altimeter 100s CPLT
	[71] = "%.4f",   -- Altimeter 1000s CPLT
	[72] = "%.4f",   -- Altimeter 10000s CPLT
	[73] = "%.4f",   -- 
	[74] = "%.4f",   -- Kollsman Window Digit 1 CPLT
	[75] = "%.4f",   -- Kollsman Window Digit 2 CPLT
	[76] = "%.4f",   -- Kollsman Window Digit 3 CPLT
	[77] = "%.4f",   -- Kollsman Window Digit 4 CPLT
	[78] = "%.4f",   -- Altimeter Flag CPLT
	
	[81] = "%.4f",   -- Parking Brake ON/OFF
	[82] = "%.4f",   -- 
	
	-- AHRU
	[95] = "%.4f",   -- AHRU Light 2
	[96] = "%.4f",   -- AHRU Light 3
	[97] = "%.4f",   -- AHRU Light 5
	[98] = "%.4f",   -- AHRU Light 7
	[99] = "%.4f",   -- AHRU Light 8
	[100] = "%.4f",   -- Airspeed Indicator
	
	
	[103] = "%.4f",   -- Vertical Speed Indicator (VSI)
	
	[105] = "%.4f",   -- Angle of Bank Indicator
	
	[120] = "%.4f",   -- Wet Compass Degrees
	[121] = "%.4f",   -- Wet Compass Bank
	[122] = "%.4f",   -- Wet Compass Pitch
	
	-- Horizontal Situational Indicator (HSI) PLT
	[130] = "%.4f",   -- HSI Heading Knob PLT
	[131] = "%.4f",   -- HSI Course Knob PLT
	[132] = "%.4f",   -- HSI Compass Rotation PLT
	[133] = "%.4f",   -- HSI Heading Bug PLT
	[134] = "%.4f",   -- HSI Bearing Needle 1 PLT
	[135] = "%.4f",   -- HSI Bearing Needle 2 PLT
	[136] = "%.4f",   -- HSI Course Line PLT
	[137] = "%.4f",   -- HSI Course Deviation Bar PLT
	[138] = "%.4f",   -- HSI TO FROM Flag PLT
	[139] = "%.4f",   -- HSI Distance 100s PLT
	[140] = "%.4f",   -- HSI Distance 10s PLT
	[141] = "%.4f",   -- HSI Distance 1s PLT
	[142] = "%.4f",   -- HSI Distance .1s PLT
	[143] = "%.4f",   -- HSI Course 100s PLT
	[144] = "%.4f",   -- HSI Course 10s PLT
	[145] = "%.4f",   -- HSI Course 1s PLT
	[146] = "%.4f",   -- HSI Heading Flag PLT
	[147] = "%.4f",   -- HSI Nav Flag PLT
	[148] = "%.4f",   -- HSI DME Flag PLT
	
	-- Horizontal Situational Indicator (HSI) CPLT
	[150] = "%.4f",   -- HSI Heading Knob CPLT 
	[151] = "%.4f",   -- HSI Course Knob CPLT
	[152] = "%.4f",   -- HSI Compass Rotation CPLT
	[153] = "%.4f",   -- HSI Heading Bug CPLT
	[154] = "%.4f",   -- HSI Bearing Needle 1 CPLT
	[155] = "%.4f",   -- HSI Bearing Needle 2 CPLT
	[156] = "%.4f",   -- HSI Course Line CPLT
	[157] = "%.4f",   -- HSI Course Deviation Bar CPLT
	[158] = "%.4f",   -- HSI TO FROM Flag CPLT
	[159] = "%.4f",   -- HSI Distance 100s CPLT
	[160] = "%.4f",   -- HSI Distance 10s CPLT
	[161] = "%.4f",   -- HSI Distance 1s CPLT
	[162] = "%.4f",   -- HSI Distance .1s CPLT
	[163] = "%.4f",   -- HSI Course 100s CPLT
	[164] = "%.4f",   -- HSI Course 10s CPLT
	[165] = "%.4f",   -- HSI Course 1s CPLT
	[166] = "%.4f",   -- HSI Heading Flag CPLT
	[167] = "%.4f",   -- HSI Nav Flag CPLT
	[168] = "%.4f",   -- HSI DME Flag CPLT
	
	
	-- Radar Altimeter PLT
	[170] = "%.4f",   -- Radar Altimeter Low Set Knob PLT
	[171] = "%.4f",   -- Radar Altimeter High Set Knob PLT
	[173] = "%.4f",   -- Radar Altimeter Indicator Needle PLT
	[174] = "%.4f",   -- Radar Altimeter 1000s Indicator PLT
	[175] = "%.4f",   -- Radar Altimeter 100s Indicator PLT
	[176] = "%.4f",   -- Radar Altimeter 10s Indicator PLT
	[177] = "%.4f",   -- Radar Altimeter 1s Indicator PLT
	[178] = "%.4f",   -- Radar Altimeter Low Bug PLT
	[179] = "%.4f",   -- Radar Altimeter High Bug PLT
	[180] = "%.4f",   -- Radar Altimeter Low Flag PLT
	[181] = "%.4f",   -- Radar Altimeter High Flag PLT
	[182] = "%.4f",   -- Radar Altimeter Off Flag PLT
	
	-- Radar Altimeter CPLT
	[183] = "%.4f",   -- Radar Altimeter Low Set Knob CPLT
	[184] = "%.4f",   -- Radar Altimeter High Set Knob CPLT
	[186] = "%.4f",   -- Radar Altimeter Indicator Needle CPLT
	[187] = "%.4f",   -- Radar Altimeter 1000s Indicator CPLT
	[188] = "%.4f",   -- Radar Altimeter 100s Indicator CPLT
	[189] = "%.4f",   -- Radar Altimeter 10s Indicator CPLT
	[190] = "%.4f",   -- Radar Altimeter 1s Indicator CPLT
	[191] = "%.4f",   -- Radar Altimeter Low Bug CPLT
	[192] = "%.4f",   -- Radar Altimeter High Bug CPLT
	[193] = "%.4f",   -- Radar Altimeter Low Flag CPLT
	[194] = "%.4f",   -- Radar Altimeter High Flag CPLT
	[195] = "%.4f",   -- Radar Altimeter Off Flag CPLT
	
	
	[201] = "%.4f",   -- Instrument Panel Brightness Light PLT
	[202] = "%.4f",   -- Instrument Panel Brightness Light CPLT
	[203] = "%.4f",   -- Instrument Panel Brightness Light Center
	[204] = "%.4f",   -- Instrument Panel Brightness Overhead
	[205] = "%.4f",   -- Instrument Panel Brightness Pedestal
	[206] = "%.4f",   -- Instrument Autopilot AP Modes Brightness
	[207] = "%.4f",   -- HSI and Radar Altimeter Instrument Lights PLT
	[208] = "%.4f",   -- HSI and Radar Altimeter Instrument Lights CPLT
	
	
	[210] = "%.4f",   -- Dashboard Brightness
	[211] = "%.4f",   -- 
	
	-- Autopilot Panel PLT
	[212] = "%.4f",   -- AP HDG Light PLT
	[213] = "%.4f",   -- AP NAV Light PLT
	[214] = "%.4f",   -- AP ALT Light PLT
	[215] = "%.4f",   -- MODE SEL DPLR GLS Light PLT
	[216] = "%.4f",   -- MODE SEL VOR Light PLT
	[217] = "%.4f",   -- MODE SEL ILS Light PLT
	[218] = "%.4f",   -- MODE SEL BACK CRS Light PLT
	[219] = "%.4f",   -- MODE SEL FM HOME Light PLT
	[220] = "%.4f",   -- MODE SEL TURN RATE NORM Light PLT
	[221] = "%.4f",   -- MODE SEL TURN RATE ALTR Light PLT
	[222] = "%.4f",   -- MODE SEL CRS HDG PLT Light PLT
	[223] = "%.4f",   -- MODE SEL CRS HDG CPLT Light PLT
	[224] = "%.4f",   -- MODE SEL VERT GYRO NORM Light PLT
	[225] = "%.4f",   -- MODE SEL VERT GYRO ALTR Light PLT
	[226] = "%.4f",   -- MODE SEL BRG 2 ADF Light PLT
	[227] = "%.4f",   -- MODE SEL BRG 2 VOR Light PLT
	
	-- Autopilot Panel CPLT
	[228] = "%.4f",   -- MODE SEL DLPR GLS Light CPLT
	[229] = "%.4f",   -- MODE SEL VOR Light CPLT
	[230] = "%.4f",   -- MODE SEL ILS Light CPLT
	[231] = "%.4f",   -- MODE SEL BACK CRS Light CPLT
	[232] = "%.4f",   -- MODE SEL FM HOME Light CPLT
	[233] = "%.4f",   -- MODE SEL TURN RATE NORM Light CPLT
	[234] = "%.4f",   -- MODE SEL TURN RATE ALTR Light CPLT
	[235] = "%.4f",   -- MODE SEL CRS HDG PLT Light CPLT
	[236] = "%.4f",   -- MODE SEL CRS HDG CPLT Light CPLT
	[237] = "%.4f",   -- MODE SEL VERT GYRO NORM Light CPLT
	[238] = "%.4f",   -- MODE SEL VERT GYRO ALTR Light CPLT 
	[239] = "%.4f",   -- MODE SEL BRG 2 ADF Light CPLT
	[240] = "%.4f",   -- MODE SEL BRG 2 VOR Light CPLT 
	
	-- AUTO FLIGHT CONTROL
	[241] = "%.4f",   -- BOOST Light
	[242] = "%.4f",   -- 
	[243] = "%.4f",   -- SAS 2 Light
	[244] = "%.4f",   -- TRIM Light
	[245] = "%.4f",   -- FPS Light
	[246] = "%.4f",   -- AUTO CONTROL Light
	
	[251] = "%.4f",   -- Glareshield Lights Knob
	[252] = "%.4f",   -- Position Lights DIM/OFF/BRIGHT
	[253] = "%.4f",   -- POsition Lights STEADY/FLASH
	[254] = "%.4f",   -- Anticollision Lights UPPER/BOTH/LOWER
	[255] = "%.4f",   -- Anticollision Lights DAY/OFF/NIGHT
	[256] = "%.4f",   -- NAV Lishts NORM/IR
	[257] = "%.4f",   -- Cabin Lights BLUE/OFF/WHITE
	[259] = "%.4f",   -- CPTL Flight Instrument Lights Knob
	[260] = "%.4f",   -- Lighted Switches Knob
	[261] = "%.4f",   -- Formation Lights Knob
	[262] = "%.4f",   -- Console Lights UPPER Knob
	[263] = "%.4f",   -- Console Lights LOWER Knob
	[264] = "%.4f",   -- Console Lights NON FLT Knob
	[265] = "%.4f",   -- Console Lights PILOT FLT Knob
	[266] = "%.4f",   -- 
	[267] = "%.4f",   -- 
	[268] = "%.4f",   -- 
	[269] = "%.4f",   -- Cockpit Lights BLUE/OFF/WHITE
	
	-- AN/APR-39
	[270] = "%.4f",   -- AN/APR-39 Power Swotch ON/OFF
	[271] = "%.4f",   -- AN/APR-39 Self Test Button (Inop.)
	[272] = "%.4f",   -- AN/APR-39 Altitude HI/LOW (Inop.)
	[273] = "%.4f",   -- 
	[274] = "%.4f",   -- 
	[275] = "%.4f",   -- Cockpit Blue Lights
	[276] = "%.4f",   -- Cockpit White Lights
	
	
	[280] = "%.4f",   -- 
	[281] = "%.4f",   -- 
	[282] = "%.4f",   -- 
	[283] = "%.4f",   -- 
	[284] = "%.4f",   -- 
	[285] = "%.4f",   -- 
	
	[294] = "%.4f",   -- Tail Wheel ON Light
	[296] = "%.4f",   -- Tail Servo Select NORMAL/BACKUP (Inop.)
	
	
	-- Caution and Warning Lights
	[304] = "%.4f",   -- CAP Lamp Test Switch
	[305] = "%.4f",   -- 
	[306] = "%.4f",   -- 
	[309] = "%.4f",   -- Annunciator Brightness
	[310] = "%.4f",   -- #1 ENG OUT Light
	[311] = "%.4f",   -- #2 ENG OUT Light
	[312] = "%.4f",   -- Fire
	[313] = "%.4f",   -- MASTER CAUTION PRESS TO RESET
	[314] = "%.4f",   -- Low ROTOR RPM
	[315] = "%.4f",   -- #1 FUEL LOW
	[316] = "%.4f",   -- #1 GEN
	[317] = "%.4f",   -- #2 GEN
	[318] = "%.4f",   -- #2 FUEL LOW
	[319] = "%.4f",   -- #1 FUEL PRESS
	[320] = "%.4f",   -- #1 GEN BRG
	[321] = "%.4f",   -- #2 GEN BRG
	[322] = "%.4f",   -- #2 FUEL PRESS
	
	[323] = "%.4f",   -- #1 ENGINE OIL PRESS
	[324] = "%.4f",   -- #1 CONV
	[325] = "%.4f",   -- #2 CONV
	[326] = "%.4f",   -- #2 ENGINE OIL PRESS
	[327] = "%.4f",   -- #1 ENGINE OIL TEMP
	[328] = "%.4f",   -- AC ESS BUS OFF
	[329] = "%.4f",   -- DC ESS BUS OFF
	[330] = "%.4f",   -- #2 ENGINE OIL TEMP
	
	[331] = "%.4f",   -- CHIP #1 ENGINE
	[332] = "%.4f",   -- BATT LOW CHARGE
	[333] = "%.4f",   -- BATTERY FAULT
	[334] = "%.4f",   -- CHIP #2 ENGINE
	[335] = "%.4f",   -- #1 FUEL FLTR BYPASS
	[336] = "%.4f",   -- GUST LOCK
	[337] = "%.4f",   -- PITCH BIAS FAIL
	[338] = "%.4f",   -- #2 FUEL FLTR BYPASS
	
	[339] = "%.4f",   -- 
	[340] = "%.4f",   -- 
	[341] = "%.4f",   -- 
	[342] = "%.4f",   -- 
	[343] = "%.4f",   -- 
	[344] = "%.4f",   -- 
	[345] = "%.4f",   -- 
	[346] = "%.4f",   -- 
	
	[347] = "%.4f",   -- 
	[348] = "%.4f",   -- 
	[349] = "%.4f",   -- 
	[350] = "%.4f",   -- 
	[351] = "%.4f",   -- 
	[352] = "%.4f",   -- 
	[353] = "%.4f",   -- 
	[354] = "%.4f",   -- 
	
	[355] = "%.4f",   -- 
	[356] = "%.4f",   -- 
	[357] = "%.4f",   -- 
	[358] = "%.4f",   -- 
	[359] = "%.4f",   -- 
	[360] = "%.4f",   -- 
	[361] = "%.4f",   -- 
	[362] = "%.4f",   -- 
	
	[363] = "%.4f",   -- 
	[364] = "%.4f",   -- 
	[365] = "%.4f",   -- 
	[366] = "%.4f",   -- 
	[367] = "%.4f",   -- 
	[368] = "%.4f",   -- 
	[369] = "%.4f",   -- 
	[370] = "%.4f",   -- 
	
	[371] = "%.4f",   -- 
	[372] = "%.4f",   -- 
	[373] = "%.4f",   -- 
	[374] = "%.4f",   -- 
	[375] = "%.4f",   -- 
	[376] = "%.4f",   -- 
	[377] = "%.4f",   -- 
	[378] = "%.4f",   -- 
	
	[379] = "%.4f",   -- #1 ENG ANTI-ICE ON
	[380] = "%.4f",   -- #1 ENG INLET ANTI-ICE ON
	[381] = "%.4f",   -- #2 ENG INLET ANTI-ICE ON
	[382] = "%.4f",   -- #2 ENG ANTI-ICE ON
	[383] = "%.4f",   -- APU ON
	[384] = "%.4f",   -- APU GEN ON
	[385] = "%.4f",   -- PRIME BOOST PUMP ON
	[386] = "%.4f",   -- BACK-UP PUMP ON
	
	[387] = "%.4f",   -- APU ACCUM LOW
	[388] = "%.4f",   -- SEATCH LT ON
	[389] = "%.4f",   -- LDG LT ON
	[390] = "%.4f",   -- #2 TAIL RTR SERVER ON
	
	[391] = "%.4f",   -- CARGO HOOK OPEN
	[392] = "%.4f",   -- HOOK ARMED
	[393] = "%.4f",   -- GPS POS ALERT
	[394] = "%.4f",   -- PARKING BRAKE ON
	[395] = "%.4f",   -- EXT POWER CONNECTED
	[396] = "%.4f",   -- GREEN BAR 
	
	-- COMM Panel
	[400] = "%.4f",   -- Pilot/CPilot ICP XMIT Transmit Radio Selector
	[401] = "%.4f",   -- Pilot ICP Receive Volume
	[402] = "%.4f",   -- Pilot ICP Hot Mike Switch (Inop.)
	[403] = "%.4f",   -- Comm 1 ON/OFF Switch
	[404] = "%.4f",   -- Comm 2 ON/OFF Switch 
	[405] = "%.4f",   -- Comm 3 ON/OFF Switch
	[406] = "%.4f",   -- Comm 4 ON/OFF Switch
	[407] = "%.4f",   -- Comm 5 ON/OFF Switch
	[408] = "%.4f",   -- Comm AUX ON/OFF Switch
	[409] = "%.4f",   -- Comm NAV ON/OFF Switch
	
	-- AN/ARC-186 VHF Radio
	[410] = "%.4f",   -- AN/ARC-186 Volume
	[411] = "%.4f",   -- AN/ARC-186 Tone
	[412] = "%.4f",   -- AN/ARC-186 10MHz Selector
	[413] = "%.4f",   -- AN/ARC-186 1MHz Selector
	[414] = "%.4f",   -- AN/ARC-186 100KHz Selector
	[415] = "%.4f",   -- AN/ARC-186 25KHz Selector
	[416] = "%.4f",   -- AN/ARC-186 Frequency Control Selector
	[418] = "%.4f",   -- AN/ARC-186 Preset Channel Selector
	[419] = "%.4f",   -- AN/ARC-186 Mode Selector
	
	
	-- Vertical Situation Indicator PLT
	[420] = "%.4f",   -- VSI Pitch PLT
	[421] = "%.4f",   -- VSI Roll PLT
	[422] = "%.4f",   -- Inclinometer Indicator PLT
	[423] = "%.4f",   -- Roll Command Bar PLT
	[424] = "%.4f",   -- Pitch Command Bar PLT
	[425] = "%.4f",   -- Collective Command Bar PLT
	[426] = "%.4f",   -- Turn Rate Indicator PLT
	[427] = "%.4f",   -- Course Deviation Pointer PLT
	[428] = "%.4f",   -- Glide Slope Indicator PLT
	[429] = "%.4f",   -- CMD Flag PLT
	[430] = "%.4f",   -- ATT Flag PLT
	[431] = "%.4f",   -- NAV Flag PLT
	[432] = "%.4f",   -- GS Flag PLT
	
	-- Vertical Situation Indicator CPLT
	[433] = "%.4f",   -- VSI Pitch CPLT
	[434] = "%.4f",   -- VSI Roll CPLT
	[435] = "%.4f",   -- Inclinometer Indicator CPLT
	[436] = "%.4f",   -- Roll Command Bar CPLT
	[437] = "%.4f",   -- Pitch Command Bar CPLT
	[438] = "%.4f",   -- Collective Command Bar CPLT
	[439] = "%.4f",   -- Turn Rate Indicator CPLT
	[440] = "%.4f",   -- Course Deviation Pointer CPLT
	[441] = "%.4f",   -- Glide Slope Indicator CPLT
	[442] = "%.4f",   -- CMD Flag CPLT
	[443] = "%.4f",   -- ATT Flag CPLT
	[444] = "%.4f",   -- NAV Flag CPLT
	[445] = "%.4f",   -- GS Flag CPLT
	
	
	[450] = "%.4f",   -- %RPM RTR OVERSPEED Dot Left PLT
	[451] = "%.4f",   -- %RPM RTR OVERSPEED Dot Center PLT
	[452] = "%.4f",   -- %RPM RTR OVERSPEED Dot Right PLT
	
	
	[453] = "%.4f",   -- %RPM RTR OVERSPEED Dot Left CPLT
	[454] = "%.4f",   -- %RPM RTR OVERSPEED Dot Center CPLT
	[455] = "%.4f",   -- %RPM RTR OVERSPEED Dot Right CPLT
	
	-- AUX FUEL PANEL
	[460] = "%.4f",   -- Aux Fuel Transfer Mode MAN/OFF/AUTO
	[461] = "%.4f",   -- Aux Fuel Manual Transfer RIGHT/BOTH/LEFT
	[462] = "%.4f",   -- Aux Fuel Transfer From OUTBD/INBD
	[463] = "%.4f",   -- Aux Fuel Pressurization Selector
	
	[470] = "%.4f",   -- 
	[471] = "%.4f",   -- 
	[472] = "%.4f",   -- 
	[473] = "%.4f",   -- 
	[474] = "%.4f",   -- 
	[475] = "%.4f",   -- 
	
	-- AN/ASN-128B
	[500] = "%.4f",   -- AN/ASN-128B Display Selector
	[501] = "%.4f",   -- AN/ASN-128B Mode Selector
	[502] = "%.4f",   -- AN/ASN-128B Btn KYBD
	[503] = "%.4f",   -- AN/ASN-128B Btn LTR LEFT
	[504] = "%.4f",   -- AN/ASN-128B Btn LTR MID
	[505] = "%.4f",   -- AN/ASN-128B Btn LTR RIGHT
	[506] = "%.4f",   -- AN/ASN-128B Btn F1
	[507] = "%.4f",   -- AN/ASN-128B Btn 1
	[508] = "%.4f",   -- AN/ASN-128B Btn 2
	[509] = "%.4f",   -- AN/ASN-128B Btn 3
	[510] = "%.4f",   -- AN/ASN-128B Btn TGT STR
	[511] = "%.4f",   -- AN/ASN-128B Btn 4
	[512] = "%.4f",   -- AN/ASN-128B Btn 5
	[513] = "%.4f",   -- AN/ASN-128B Btn 6
	[514] = "%.4f",   -- AN/ASN-128B Btn INC
	[515] = "%.4f",   -- AN/ASN-128B Btn 7
	[516] = "%.4f",   -- AN/ASN-128B Btn 8
	[517] = "%.4f",   -- AN/ASN-128B Btn 9
	[518] = "%.4f",   -- AN/ASN-128B Btn DEC
	[519] = "%.4f",   -- AN/ASN-128B Btn CLR
	[520] = "%.4f",   -- AN/ASN-128B Btn 0
	[521] = "%.4f",   -- AN/ASN-128B Btn ENT
	
	-- Countermeasures Panel
	[552] = "%.4f",   -- Flare Counter Knob
	[553] = "%.4f",   -- Chaff COunter Knob
	[554] = "%.4f",   -- Flare 1st Digit
	[555] = "%.4f",   -- Flare 2nd Digit
	[556] = "%.4f",   -- Chaff 1st Digit
	[557] = "%.4f",   -- Chaff 2nd Digit
	[558] = "%.4f",   -- Countermeasures Arm Light
	[559] = "%.4f",   -- Countermeasures Arming Switch
	[560] = "%.4f",   -- Chaff Dispenser Mode Selector
	[561] = "%.4f",   -- 
	
	-- AN/ARC-201 (FM1) PLT
	[600] = "%.4f",   -- AN/ARC-201 (FM1) Preset Selector
	[601] = "%.4f",   -- AN/ARC-201 (FM1) Function Selector
	[602] = "%.4f",   -- AN/ARC-201 (FM1) Power Selector
	[603] = "%.4f",   -- AN/ARC-201 (FM1) Mode Selector
	[604] = "%.4f",   -- 
	[605] = "%.4f",   -- AN/ARC-201 (FM1) Btn 1
	[606] = "%.4f",   -- AN/ARC-201 (FM1) Btn 2
	[607] = "%.4f",   -- AN/ARC-201 (FM1) Btn 3
	[608] = "%.4f",   -- AN/ARC-201 (FM1) Btn 4
	[609] = "%.4f",   -- AN/ARC-201 (FM1) Btn 5
	[610] = "%.4f",   -- AN/ARC-201 (FM1) Btn 6
	[611] = "%.4f",   -- AN/ARC-201 (FM1) Btn 7
	[612] = "%.4f",   -- AN/ARC-201 (FM1) Btn 8
	[613] = "%.4f",   -- AN/ARC-201 (FM1) Btn 9
	[614] = "%.4f",   -- AN/ARC-201 (FM1) Btn 0
	[615] = "%.4f",   -- AN/ARC-201 (FM1) Btn CLR
	[616] = "%.4f",   -- AN/ARC-201 (FM1) Btn ENT
	[617] = "%.4f",   -- AN/ARC-201 (FM1) Btn FREQ
	[618] = "%.4f",   -- AN/ARC-201 (FM1) Btn ERF/OFST
	[619] = "%.4f",   -- AN/ARC-201 (FM1) Btn TIME
	
	-- AN/ARN-149 ADF
	[620] = "%.4f",   -- AN/ARN-149 PRESET Selector
	[621] = "%.4f",   -- AN/ARN-149 TONE/OFF/TEST
	[622] = "%.4f",   -- AN/ARN-149 Volume
	[623] = "%.4f",   -- AN/ARN-149 TAKE CMD (Inop.)
	[624] = "%.4f",   -- AN/ARN-149 POWER Selector
	[625] = "%.4f",   -- AN/ARN-149 1000s KHz Selector
	[626] = "%.4f",   -- AN/ARN-149 100s KHz Selector
	[627] = "%.4f",   -- AN/ARN-149 10s KHz Selector
	[628] = "%.4f",   -- AN/ARN-149 10s KHz Selector
	[629] = "%.4f",   -- AN/ARN-149 .1s KHz Selector
	
	
	[631] = "%.4f",   -- 
	
	-- AN/ARN-147
	[650] = "%.4f",   -- AN/ARN-147 MHz Selector
	[651] = "%.4f",   -- AN/ARN-147 KHz Selector
	[652] = "%.4f",   -- AN/ARN-147 Marker Beacon HI/LO Switch (Inop.)
	[653] = "%.4f",   -- AN/ARN-147 Power Selector OFF/ON/TEST
	[654] = "%.4f",   -- AN/ARN-147 Display 100s
	[655] = "%.4f",   -- AN/ARN-147 Display 10s
	[656] = "%.4f",   -- AN/ARN-147 Display 1s
	[657] = "%.4f",   -- AN/ARN-147 Display .1s
	[658] = "%.4f",   -- AN/ARN-147 Display .01s
	[659] = "%.4f",   -- AN/ARN-147 Display .001s
	
	-- AN/ARC-201 (FM1) CPLT
	[700] = "%.4f",   -- AN/ARC-201 (FM1) Preset Selector
	[701] = "%.4f",   -- AN/ARC-201 (FM1) Function Selector
	[702] = "%.4f",   -- AN/ARC-201 (FM1) Power Selector
	[703] = "%.4f",   -- AN/ARC-201 (FM1) Mode Selector
	[704] = "%.4f",   -- 
	[705] = "%.4f",   -- AN/ARC-201 (FM1) Btn 1
	[706] = "%.4f",   -- AN/ARC-201 (FM1) Btn 2
	[707] = "%.4f",   -- AN/ARC-201 (FM1) Btn 3
	[708] = "%.4f",   -- AN/ARC-201 (FM1) Btn 4
	[709] = "%.4f",   -- AN/ARC-201 (FM1) Btn 5
	[710] = "%.4f",   -- AN/ARC-201 (FM1) Btn 6
	[711] = "%.4f",   -- AN/ARC-201 (FM1) Btn 7
	[712] = "%.4f",   -- AN/ARC-201 (FM1) Btn 8
	[713] = "%.4f",   -- AN/ARC-201 (FM1) Btn 9
	[714] = "%.4f",   -- AN/ARC-201 (FM1) Btn 0
	[715] = "%.4f",   -- AN/ARC-201 (FM1) Btn CLR
	[716] = "%.4f",   -- AN/ARC-201 (FM1) Btn ENT
	[717] = "%.4f",   -- AN/ARC-201 (FM1) Btn FREQ
	[718] = "%.4f",   -- AN/ARC-201 (FM1) Btn ERF/OFST
	[719] = "%.4f",   -- AN/ARC-201 (FM1) Btn TIME
	
	
	[930] = "%.4f",   -- SAS 1 ON/OFF Light
	[931] = "%.4f",   -- 
	[932] = "%.4f",   -- 
	
	-- Vertical Situation Indicator (VSI)
	[980] = "%.4f",   -- Vertical Situation Indicator (VSI) GA Indication Light Pilot
	[981] = "%.4f",   -- Vertical Situation Indicator (VSI) Decision Height (DH) Light Pilot
	[982] = "%.4f",   -- Vertical Situation Indicator (VSI) MB Indication Light Pilot 3
	[983] = "%.4f",   -- Vertical Situation Indicator (VSI) GA Indication Light CPilot 1
	[984] = "%.4f",   -- Vertical Situation Indicator (VSI) Decision Height (DH) Light CPilot
	[985] = "%.4f",   -- Vertical Situation Indicator (VSI) MB Indication Light CPilot 3
	
	[1100] = "%.4f",   -- 
	[1106] = "%.4f",   -- 
	[1201] = "%.4f",   -- 
	[1202] = "%.4f",   -- 
	[1203] = "%.4f",   -- 
	[1204] = "%.4f",   -- 
	[1205] = "%.4f",   -- 
	[1206] = "%.4f",   -- 
	[3406] = "%.4f",   -- Stab Position Needle
	[3407] = "%.4f",   -- Stab Position Flag

}
ExportScript.ConfigArguments = 
{
	
}
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)

	ExportScript.Radios(mainPanelDevice)
	ExportScript.FlightInstruments(mainPanelDevice)
	ExportScript.NavInstruments(mainPanelDevice)
	ExportScript.NavModes(mainPanelDevice)
	ExportScript.VrsCalculator(mainPanelDevice)
	--ExportScript.HiLowCalculator(mainPanelDevice)
	--ExportScript.RadioTile(mainPanelDevice)
	
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
end

-- -- -- -- -- -- -- -- -- -- -- 
--  Custom Functions -- 
-- -- -- -- -- -- -- -- -- -- -- 

function ExportScript.Radios(mainPanelDevice)
-- TODO: Clean up radio presentation
	-- ADF Radio
	local ADF_digit1 = round(mainPanelDevice:get_argument_value(625)*2,0)
	local ADF_digit2 = round(mainPanelDevice:get_argument_value(626)*10,0)
	local ADF_digit3 = round(mainPanelDevice:get_argument_value(627)*10,0)
	local ADF_digit4 = round(mainPanelDevice:get_argument_value(628)*10,0)
	local ADF_digit5 = round(mainPanelDevice:get_argument_value(629)*10,0)
	
	local ADF_freq = string.format("%4.1f", ADF_digit1 .. ADF_digit2 .. ADF_digit3 
								.. ADF_digit4 .. "." .. ADF_digit5)
							
	ADF_freq = trim(ADF_freq)	
	
	if #ADF_freq == 3 then --1.0 to 0001.0
		ADF_freq = "000" .. ADF_freq
	elseif #ADF_freq == 4 then --10.0 to 0010.0
		ADF_freq = "00" .. ADF_freq
	elseif #ADF_freq == 5 then --100.0 to 0100.0
		ADF_freq = "0" .. ADF_freq
	end							
	
	ExportScript.Tools.SendData(4000, "ADF\n" .. ADF_freq .. "\nKHz")
	
	-- UHF Radio
	local UHF_digit1 = round(mainPanelDevice:get_argument_value(53) * 10,0) + 2
	local UHF_digit2 = round(mainPanelDevice:get_argument_value(54) * 10,0)
	local UHF_digit3 = round(mainPanelDevice:get_argument_value(55) * 10,0)
	local UHF_digit4 = round(mainPanelDevice:get_argument_value(56) * 10,0)
	local UHF_digit5 = round(mainPanelDevice:get_argument_value(57) * 250,0)
	
	local UHF_freq = string.format("%3.3f", UHF_digit1 .. UHF_digit2 .. UHF_digit3 
									.. "." .. UHF_digit4 .. UHF_digit5)
									
	ExportScript.Tools.SendData(4001, "UHF\n" .. UHF_freq .. "\nMHz")
	
	-- FM Radio PLT
	-- Not possible via arguements
	
	-- FM Radio CPLT
	-- Not possible via arguements
	
	-- VOR/ILS Nav Radio
	
	local NAV_digit1 = round(mainPanelDevice:get_argument_value(654) * 10,0)
	local NAV_digit2 = round(mainPanelDevice:get_argument_value(655) * 10,0)
	local NAV_digit3 = round(mainPanelDevice:get_argument_value(656) * 10,0)
	local NAV_digit4 = round(mainPanelDevice:get_argument_value(657) * 10,0)
	local NAV_digit5 = round(mainPanelDevice:get_argument_value(658) * 10,0)
	local NAV_digit6 = round(mainPanelDevice:get_argument_value(659) * 10,0)
	
	local NAV_freq = string.format("%3.3f", NAV_digit1 .. NAV_digit2 .. NAV_digit3 
									.. "." .. NAV_digit4 .. NAV_digit5 ..NAV_digit6)
	
	ExportScript.Tools.SendData(4002, "NAV\n" .. NAV_freq .. "\nMHz")
	
--https://emojipedia.org/black-circle/
	--🟢 green circle. trust me
	--⚪ white circle
	--⚫ black circle
	--🔵 blue circle
	--🔘 radio button circle
	--🔴 red circle
	--🟡 yellow circle
	--❌ red X
	
	--ExportScript.Tools.SendData(5000, "🟢⚪⚫")
	--ExportScript.Tools.SendData(5001, "🔵🔘🔴")
	
	--if a radio is off then red
	--if radio on then yellow
	--if radio on and selected then green
	--if radio off and selected then red X
	
	local radio1_FmPlt_status
	local radio2_uhf_status
	local radio3_vhf_status
	local radio4_FmCPlt_status
	local radio5_hf_status --not implemented
	local radio0_ics_Status

	--=========================new logi====================================
	--logic for ics
	radio0_ics_Status = "🔘"--radio circle
	
	if round(mainPanelDevice:get_argument_value(400)*10,0) == 0 then
		radio0_ics_Status = "🟢"--green circle
	end
	
	--logic for radio 1 FM
	radio1_FmPlt_status = "🔴"--red

	if round(mainPanelDevice:get_argument_value(400)*10,0) == 2 and round(mainPanelDevice:get_argument_value(601)*100,0) == 2 then --if selected and on
		radio1_FmPlt_status = "🟢"--green circle
	elseif round(mainPanelDevice:get_argument_value(400)*10,0) == 2 and round(mainPanelDevice:get_argument_value(601)*100,0) ~= 2 then --selected and off
		radio1_FmPlt_status = "❌"--green circle
	elseif round(mainPanelDevice:get_argument_value(400)*10,0) ~= 2 and round(mainPanelDevice:get_argument_value(601)*100,0) == 2 then --not selected and on
		radio1_FmPlt_status = "🟡"--yellow
	end

	--logic for radio 2 uhf
	radio2_uhf_status = "🔴"--red
	
	if round(mainPanelDevice:get_argument_value(400)*10,0) == 4 and round(mainPanelDevice:get_argument_value(50)*100,0) == 1 then --if selected and on
		radio2_uhf_status = "🟢"--green circle
	elseif round(mainPanelDevice:get_argument_value(400)*10,0) == 4 and round(mainPanelDevice:get_argument_value(50)*100,0) ~= 1 then --selected and off
		radio2_uhf_status = "❌"--red X
	elseif round(mainPanelDevice:get_argument_value(400)*10,0) ~= 4 and round(mainPanelDevice:get_argument_value(50)*100,0) == 1 then --not selected and on
		radio2_uhf_status = "🟡"--yellow
--[[ 
	elseif round(mainPanelDevice:get_argument_value(400)*10,0) ~= 4 and round(mainPanelDevice:get_argument_value(50)*100,0) ~= 1 --not selected and off
		radio2_uhf_status = "🔴"--red
]]	--this last one causes an error, but because i set the condition to red at the start, it actually handles the condition. yay!
	end
	
	--logic for radio 3 vhf
	radio3_vhf_status = "🔴"--red
	
	if round(mainPanelDevice:get_argument_value(400)*10,0) == 6 and mainPanelDevice:get_argument_value(419) == 0.5 then --if selected and on
		radio3_vhf_status = "🟢"--green circle
	elseif round(mainPanelDevice:get_argument_value(400)*10,0) == 6 and mainPanelDevice:get_argument_value(419) ~= 0.5 then --selected and off
		radio3_vhf_status = "❌"--red X
	elseif round(mainPanelDevice:get_argument_value(400)*10,0) ~= 6 and mainPanelDevice:get_argument_value(419) == 0.5 then --not selected and on
		radio3_vhf_status = "🟡"--yellow
	end
	
	--logic for radio 4 FmCPlt
	radio4_FmCPlt_status = "🔴"--red
	
	if round(mainPanelDevice:get_argument_value(400)*10,0) == 8 and round(mainPanelDevice:get_argument_value(701)*100,0) == 2 then --if selected and on
		radio4_FmCPlt_status = "🟢"--green circle
	elseif round(mainPanelDevice:get_argument_value(400)*10,0) == 8 and round(mainPanelDevice:get_argument_value(701)*100,0) ~= 2 then --selected and off
		radio4_FmCPlt_status = "❌"--red X
	elseif round(mainPanelDevice:get_argument_value(400)*10,0) ~= 8 and round(mainPanelDevice:get_argument_value(701)*100,0) == 2 then --not selected and on
		radio4_FmCPlt_status = "🟡"--yellow
	end
	
	--logic for radio 5 radio5_hf_status
	radio5_hf_status = "🔴"--red
	
	--whenever this is implemented, change the "get_argument_value(xxx) == 5" part to whatever the number is
--[[	
	if round(mainPanelDevice:get_argument_value(400)*10,0) == 10 and mainPanelDevice:get_argument_value(419) == 0.5 then --if selected and on
		radio5_hf_status = "🟢"--green circle

	elseif round(mainPanelDevice:get_argument_value(400)*10,0) == 10 and mainPanelDevice:get_argument_value(419) ~= 0.5 then --selected and off
		radio5_hf_status = "❌"--red X

	elseif round(mainPanelDevice:get_argument_value(400)*10,0) ~= 10 and mainPanelDevice:get_argument_value(419) == 0.5 then --not selected and on
		radio5_hf_status = "🟡"--yellow
	end
]]	
	if round(mainPanelDevice:get_argument_value(400)*10,0) == 10 then --selected and off
		radio5_hf_status = "❌"--red X
	end
	
	ExportScript.Tools.SendData(4003, radio0_ics_Status .. 			"ICS    \n" 
										.. radio1_FmPlt_status .. 	"FM P  \n"
										.. radio2_uhf_status .. 	"UHF    ")
									
	ExportScript.Tools.SendData(4004, radio3_vhf_status .. 			"VHF    \n"
										.. radio4_FmCPlt_status .. 	"FM CP\n"
										.. radio5_hf_status .. 		"HF      ")
	
end


function ExportScript.RadioTile(mainPanelDevice)--this isnt for this module

	local radio1 = (GetDevice(25):get_frequency())/1000000 -- left radio freq unrounded
	local radio2 = (GetDevice(26):get_frequency())/1000000 -- right radio freq unrounded
			
	ExportScript.Tools.SendData(2001, radio1) -- results in "108.000568" for channel 1
	ExportScript.Tools.SendData(2002, radio2) -- results in "108.500744" for channel 2
end


function ExportScript.FlightInstruments(mainPanelDevice)

-- This will contain airspeed, altitude, and vertical speed
--[[

	[100] = "%.4f",   -- Airspeed Indicator
	[103] = "%.4f",   -- Vertical Speed Indicator (VSI)
	[132] = "%.4f",   -- HSI Compass Rotation PLT
]]
	-- TODO: this will need to be adjusted later because the arg is not linear
	local airspeedIndicator = round(mainPanelDevice:get_argument_value(100)*250,0)
	
	-- TODO: this will need to be adjusted later because the arg is not linear
	local verticalSpeedIndicator = round(mainPanelDevice:get_argument_value(103)*4000,0)
	verticalSpeedIndicator = format_int(verticalSpeedIndicator) --puts a comma in it
	

	
	local compassDegrees_PLT = round(mainPanelDevice:get_argument_value(132)*360,0)
	local compassDegrees_CPLT = round(mainPanelDevice:get_argument_value(152)*360,0)
	
	-- logic for keeping the compass readouts as three digits
	local compassDegrees_PLT_string = addZeros3(compassDegrees_PLT)
	
	local compassDegrees_CPLT_string = addZeros3(compassDegrees_CPLT)
	
-- TODO: Make sure that copilot altimeter is done independantly. (and VSI?) (and airspeed?)
	
	--[[
	
		[60] = "%.4f",   -- Altimeter 100s PLT
	[61] = "%.4f",   -- Altimeter 1000s PLT
	[62] = "%.4f",   -- Altimeter 10000s PLT
	[63] = "%.4f",   -- 
	[64] = "%.4f",   -- Kollsman Window Digit 1 PLT
	[65] = "%.4f",   -- Kollsman Window Digit 2 PLT
	[66] = "%.4f",   -- Kollsman Window Digit 3 PLT
	[67] = "%.4f",   -- Kollsman Window Digit 4 PLT
	[68] = "%.4f",   -- Altimeter Flag PLT
	
	[70] = "%.4f",   -- Altimeter 100s CPLT
	[71] = "%.4f",   -- Altimeter 1000s CPLT
	[72] = "%.4f",   -- Altimeter 10000s CPLT
	
		-- Radar Altimeter PLT
	[170] = "%.4f",   -- Radar Altimeter Low Set Knob PLT
	[171] = "%.4f",   -- Radar Altimeter High Set Knob PLT
	[173] = "%.4f",   -- Radar Altimeter Indicator Needle PLT
	[174] = "%.4f",   -- Radar Altimeter 1000s Indicator PLT
	[175] = "%.4f",   -- Radar Altimeter 100s Indicator PLT
	[176] = "%.4f",   -- Radar Altimeter 10s Indicator PLT
	[177] = "%.4f",   -- Radar Altimeter 1s Indicator PLT
	[178] = "%.4f",   -- Radar Altimeter Low Bug PLT
	[179] = "%.4f",   -- Radar Altimeter High Bug PLT
	[180] = "%.4f",   -- Radar Altimeter Low Flag PLT
	[181] = "%.4f",   -- Radar Altimeter High Flag PLT
	[182] = "%.4f",   -- Radar Altimeter Off Flag PLT
	
	-- Radar Altimeter CPLT
	[183] = "%.4f",   -- Radar Altimeter Low Set Knob CPLT
	[184] = "%.4f",   -- Radar Altimeter High Set Knob CPLT
	[186] = "%.4f",   -- Radar Altimeter Indicator Needle CPLT
	[187] = "%.4f",   -- Radar Altimeter 1000s Indicator CPLT
	[188] = "%.4f",   -- Radar Altimeter 100s Indicator CPLT
	[189] = "%.4f",   -- Radar Altimeter 10s Indicator CPLT
	[190] = "%.4f",   -- Radar Altimeter 1s Indicator CPLT
	[191] = "%.4f",   -- Radar Altimeter Low Bug CPLT
	[192] = "%.4f",   -- Radar Altimeter High Bug CPLT
	[193] = "%.4f",   -- Radar Altimeter Low Flag CPLT
	[194] = "%.4f",   -- Radar Altimeter High Flag CPLT
	[195] = "%.4f",   -- Radar Altimeter Off Flag CPLT
	]]
	
	local radarAltimeterDisplay
	local radarAltimeterDisplay_1000s = round(mainPanelDevice:get_argument_value(174)*10,0)
	local radarAltimeterDisplay_100s = round(mainPanelDevice:get_argument_value(175)*10,0)
	local radarAltimeterDisplay_10s = round(mainPanelDevice:get_argument_value(176)*10,0)
	local radarAltimeterDisplay_1s = round(mainPanelDevice:get_argument_value(177)*10,0)
	
	-- logic for the top end of the arg
	if radarAltimeterDisplay_1000s == 10 then
		radarAltimeterDisplay_1000s = 0
	end
	if radarAltimeterDisplay_100s == 10 then
		radarAltimeterDisplay_100s = 0
	end
	if radarAltimeterDisplay_10s == 10 then
		radarAltimeterDisplay_10s = 0
	end
	if radarAltimeterDisplay_1s == 10 then
		radarAltimeterDisplay_1s = 0
	end

	--there is a slight bug with the animation with the math.floor code
	-- the 9 does not actually reach 0.9, so the code things it is still 8k ft for 1000s
	-- TODO: create a solution for altitudes between 9,000ft and about 9,800 ft
	local baroAltimeterDisplay
	local baroAltimeterDisplay_100s = round(mainPanelDevice:get_argument_value(60)*1000,0)
	local baroAltimeterDisplay_1000s = math.floor(mainPanelDevice:get_argument_value(61)*10) * 1000
	local baroAltimeterDisplay_10000s = math.floor(mainPanelDevice:get_argument_value(62)*10) * 10000
	
	baroAltimeterDisplay = baroAltimeterDisplay_100s 
							+ baroAltimeterDisplay_1000s 
							+ baroAltimeterDisplay_10000s
	-- put it all together

	radarAltimeterDisplay = string.format("%.1d" , radarAltimeterDisplay_1000s .. radarAltimeterDisplay_100s
														.. radarAltimeterDisplay_10s .. radarAltimeterDisplay_1s)
				
	local radarAltimeterDisplay_withComma = format_int(radarAltimeterDisplay) --put a comma
	
	local altitudeToDisplay = radarAltimeterDisplay_withComma
	if radarAltimeterDisplay ==	"1500" then -- this is the max limit of the radalt, so use baro
		altitudeToDisplay = format_int(baroAltimeterDisplay)
	end
	 
	-- Pilot Tile
	ExportScript.Tools.SendData(4005, "HDG " .. compassDegrees_PLT_string
										.. "\nKTS " .. airspeedIndicator
										.. "\nALT " .. altitudeToDisplay
										.. "\nVSI " .. verticalSpeedIndicator)
										
	-- Copilot Tile									
	ExportScript.Tools.SendData(4006, "HDG " .. compassDegrees_CPLT_string
										.. "\nKTS " .. airspeedIndicator
										.. "\nALT " .. altitudeToDisplay
										.. "\nVSI " .. verticalSpeedIndicator)

end

function ExportScript.NavInstruments(mainPanelDevice)

-- Pilot Side
	local compassDegrees_PLT = round(mainPanelDevice:get_argument_value(132)*360,0)
	local compassDegrees_PLT_string = addZeros3(compassDegrees_PLT)
	
	--bug readings
	--all bugs are to the compass itself
	local hsiHeadingBug_PLT = round(mainPanelDevice:get_argument_value(133)*360,0)
	hsiHeadingBug_PLT = addZeros3(hsiHeadingBug_PLT)
	--ExportScript.Tools.SendData(5002, hsiHeadingBug_PLT)

	local hsiBearingNeedle_1_PLT = round(mainPanelDevice:get_argument_value(134)*360,0)
	hsiBearingNeedle_1_PLT = addZeros3(hsiBearingNeedle_1_PLT)
	--ExportScript.Tools.SendData(5003, hsiBearingNeedle_1_PLT)
	
	local hsiBearingNeedle_2_PLT = round(mainPanelDevice:get_argument_value(135)*360,0)
	hsiBearingNeedle_2_PLT = addZeros3(hsiBearingNeedle_2_PLT)
	--ExportScript.Tools.SendData(5004, hsiBearingNeedle_2_PLT)
	
	local courseWindow_PLT_100s = round((mainPanelDevice:get_argument_value(143)*10),0)
	local courseWindow_PLT_10s = round((mainPanelDevice:get_argument_value(144)*10),0)
	local courseWindow_PLT_1s = round((mainPanelDevice:get_argument_value(145)*10),0)
	local courseWindow_PLT = string.format("%.1d" , courseWindow_PLT_100s .. courseWindow_PLT_10s .. courseWindow_PLT_1s)
	courseWindow_PLT = addZeros3(courseWindow_PLT)
	
	
	local distanceWindow_100s = round((mainPanelDevice:get_argument_value(139)*10),0)
	local distanceWindow_10s = round((mainPanelDevice:get_argument_value(140)*10),0)
	local distanceWindow_1s = round((mainPanelDevice:get_argument_value(141)*10),0)
	local distanceWindow_01s = round((mainPanelDevice:get_argument_value(142)*10),0)
	
	local distanceWindow
	if mainPanelDevice:get_argument_value(148) > 0.5 then --this is the dme flag, distanceWindow = "XXXX.X"
		distanceWindow = string.format("%s" , distanceWindow_100s .. "̶" .. distanceWindow_10s .. "̶"
													.. distanceWindow_1s .. "̶.̶" .. distanceWindow_01s .. "̶")
	else
		distanceWindow = string.format("%s" , distanceWindow_100s .. distanceWindow_10s
													.. distanceWindow_1s .. "." .. distanceWindow_01s)												
	end
	
	ExportScript.Tools.SendData(4007, distanceWindow)
	
	
-- Copilot Side
	local compassDegrees_CPLT = round(mainPanelDevice:get_argument_value(152)*360,0)
	local compassDegrees_CPLT_string = addZeros3(compassDegrees_CPLT)

	local hsiHeadingBug_CPLT = round(mainPanelDevice:get_argument_value(153)*360,0)
	hsiHeadingBug_CPLT = addZeros3(hsiHeadingBug_CPLT)
	--ExportScript.Tools.SendData(5002, hsiHeadingBug_CPLT)

	local hsiBearingNeedle_1_CPLT = round(mainPanelDevice:get_argument_value(154)*360,0)
	hsiBearingNeedle_1_CPLT = addZeros3(hsiBearingNeedle_1_CPLT)
	--ExportScript.Tools.SendData(5003, hsiBearingNeedle_1_CPLT)
	
	local hsiBearingNeedle_2_CPLT = round(mainPanelDevice:get_argument_value(155)*360,0)
	hsiBearingNeedle_2_CPLT = addZeros3(hsiBearingNeedle_2_CPLT)
	--ExportScript.Tools.SendData(5004, hsiBearingNeedle_2_CPLT)
	
	local courseWindow_CPLT_100s = round((mainPanelDevice:get_argument_value(163)*10),0)
	local courseWindow_CPLT_10s = round((mainPanelDevice:get_argument_value(164)*10),0)
	local courseWindow_CPLT_1s = round((mainPanelDevice:get_argument_value(165)*10),0)
	local courseWindow_CPLT = string.format("%.1d" , courseWindow_CPLT_100s .. courseWindow_CPLT_10s .. courseWindow_CPLT_1s)
	courseWindow_CPLT = addZeros3(courseWindow_CPLT)
	
	-- Pilot Tile Nav
	ExportScript.Tools.SendData(4010, "HDG " .. compassDegrees_PLT_string
										.. "\nBUG " .. hsiHeadingBug_PLT
										.. "\nN1 " .. hsiBearingNeedle_1_PLT
										.. "\nN2 " .. hsiBearingNeedle_2_PLT)
										
	-- Copilot Tile Nav
	ExportScript.Tools.SendData(4011, "HDG " .. compassDegrees_CPLT_string
										.. "\nBUG " .. hsiHeadingBug_CPLT
										.. "\nN1 " .. hsiBearingNeedle_1_CPLT
										.. "\nN2 " .. hsiBearingNeedle_2_CPLT)	

	-- Pilot Tile GPS Nav
	ExportScript.Tools.SendData(4010, "HDG " .. compassDegrees_PLT_string
										.. "\nBUG " .. hsiHeadingBug_PLT
										.. "\nCRS " .. courseWindow_PLT
										.. "\nN1 " .. hsiBearingNeedle_1_PLT)
										
	-- Copilot Tile GPS Nav
	ExportScript.Tools.SendData(4011, "HDG " .. compassDegrees_CPLT_string
										.. "\nBUG " .. hsiHeadingBug_CPLT
										.. "\nCRS " .. courseWindow_CPLT
										.. "\nN1 " .. hsiBearingNeedle_1_CPLT)	
										
										
	-- Pilot Tile VOR/NDB NAV
	ExportScript.Tools.SendData(4010, "HDG " .. compassDegrees_PLT_string
										.. "\nBUG " .. hsiHeadingBug_PLT
										.. "\nCRS " .. courseWindow_PLT
										.. "\nN2 " .. hsiBearingNeedle_2_PLT)
										
	-- Copilot Tile VOR/NDB NAV
	ExportScript.Tools.SendData(4011, "HDG " .. compassDegrees_CPLT_string
										.. "\nBUG " .. hsiHeadingBug_CPLT
										.. "\nCRS " .. courseWindow_CPLT
										.. "\nN2 " .. hsiBearingNeedle_2_CPLT)	

										
	
end

function ExportScript.NavModes(mainPanelDevice)
	--this function will serve to blank out any modes that are not "on"

	
	local blockingText_hdg = ""
	local blockingText_nav = ""
	local blockingText_alt = ""
	
	local blockingText_dplrGps = ""
	local blockingText_vorIls = ""
	local blockingText_backCrs = ""
	local blockingText_FmHome = ""
	
	local blockingText = "██████████" .. "\n██████████" .."\n██████████" .."\n██████████"
	
	
	local isHdgOn
	if mainPanelDevice:get_argument_value(206) < 0.5 then
		isHdgOn = 0
		blockingText_hdg = blockingText
	else 
		isHdgOn = 1
	end
	
	local isNavOn
	if mainPanelDevice:get_argument_value(206) < 0.5 then
		isNavOn = 0
		blockingText_nav = blockingText
	else 
		isNavOn = 1
	end
	
	local isAltOn
	if mainPanelDevice:get_argument_value(206) < 0.5 then
		isAltOn = 0
		blockingText_alt = blockingText
	else 
		isAltOn = 1
	end
	
	
	local isDplrGpsOn
	if mainPanelDevice:get_argument_value(215) < 0.5 or mainPanelDevice:get_argument_value(206) < 0.5 then
		isDplrGpsOn = 0
		blockingText_dplrGps = blockingText
	else 
		isDplrGpsOn = 1
	end
	
	local isVorIlsOn
	if mainPanelDevice:get_argument_value(216) > 0.5 or mainPanelDevice:get_argument_value(206) > 0.5 
														and mainPanelDevice:get_argument_value(217) > 0.5 then
		isVorIlsOn = 1
	else
		isVorIlsOn = 0
		blockingText_vorIls = blockingText
	end
	
	local isBackCrsOn
	if mainPanelDevice:get_argument_value(218) < 0.5 or mainPanelDevice:get_argument_value(206) < 0.5 then
		isBackCrsOn = 0
		blockingText_backCrs = blockingText
	else 
		isBackCrsOn = 1
	end
	
	local isFmHomeOn -- Devs said this isnt implemented in the sim yet
	if mainPanelDevice:get_argument_value(219) < 0.5 or mainPanelDevice:get_argument_value(206) < 0.5 then
		isFmHomeOn = 0
		blockingText_FmHome = blockingText
	else 
		isFmHomeOn = 1
	end
	
	local blockingText_turnRate = ""
	local blockingText_crsHdg = ""
	local blockingText_vertGyro = ""
	local blockingText_brg2 = ""
	
	local isTurnRateOn
	if mainPanelDevice:get_argument_value(206) < 0.5 then
		isTurnRateOn = 0
		blockingText_turnRate = blockingText
	else 
		isTurnRateOn = 1
	end
	
	local isCrsHdgOn
	if mainPanelDevice:get_argument_value(206) < 0.5 then
		isCrsHdgOn = 0
		blockingText_crsHdg = blockingText
	else 
		isCrsHdgOn = 1
	end
	
	local isVertGyroOn
	if mainPanelDevice:get_argument_value(206) < 0.5 then
		isVertGyroOn = 0
		blockingText_vertGyro = blockingText
	else 
		isVertGyroOn = 1
	end
	
	local isBrg2On
	if mainPanelDevice:get_argument_value(206) < 0.5 then
		isBrg2On = 0
		blockingText_brg2 = blockingText
	else 
		isBrg2On = 1
	end
	
	
	ExportScript.Tools.SendData(4026, isTurnRateOn)
	ExportScript.Tools.SendData(4027, blockingText_turnRate)
	
	ExportScript.Tools.SendData(4028, isCrsHdgOn)
	ExportScript.Tools.SendData(4029, blockingText_crsHdg)
	
	ExportScript.Tools.SendData(4030, isVertGyroOn)
	ExportScript.Tools.SendData(4031, blockingText_vertGyro)
	
	ExportScript.Tools.SendData(4032, isBrg2On)
	ExportScript.Tools.SendData(4033, blockingText_brg2)
	
	
	
	ExportScript.Tools.SendData(4020, isHdgOn)
	ExportScript.Tools.SendData(4021, blockingText_hdg)
	
	ExportScript.Tools.SendData(4022, isNavOn)
	ExportScript.Tools.SendData(4023, blockingText_nav)
	
	ExportScript.Tools.SendData(4024, isAltOn)
	ExportScript.Tools.SendData(4025, blockingText_alt)
	
	
	
	ExportScript.Tools.SendData(4012, isDplrGpsOn)
	ExportScript.Tools.SendData(4013, blockingText_dplrGps)
	
	ExportScript.Tools.SendData(4014, isVorIlsOn)
	ExportScript.Tools.SendData(4015, blockingText_vorIls)
	
	ExportScript.Tools.SendData(4016, isBackCrsOn)
	ExportScript.Tools.SendData(4017, blockingText_backCrs)
	
	ExportScript.Tools.SendData(4018, isFmHomeOn)
	ExportScript.Tools.SendData(4019, blockingText_FmHome)
	
end

function ExportScript.VrsCalculator(mainPanelDevice)
--this is a VRS calculator
--Conditions for vrs are Out of ground effect (30meters high), less than 30 kts, and more than 500fpm decent
--this translates to 90 radalt, 30kts, 500 fpm
--we can add a buffer so that its 50ft, 50kts, 300fpm

	local limit_altitude = 100
	local limit_airspeed = 0.155 -- arg [100]
		-- 0.155 is about 50
		-- 0.390 is about 100
		-- 0.081 is about 30
	local limit_fpm = -0.130 --[103] = "%.4f",   -- Vertical Speed Indicator (VSI)
		-- 2000 is about -0.500
		-- 1000 is about -0.242
		-- 500 is about -0.130
		-- 300 is about -0.082
		
	local isAltitudeTriggered = 0
	local isAirspeedTriggered = 0
	local isVsiTriggered = 0
	local isInVrs = 0

	local radarAltimeterDisplay
	local radarAltimeterDisplay_1000s = round(mainPanelDevice:get_argument_value(174)*10,0)
	local radarAltimeterDisplay_100s = round(mainPanelDevice:get_argument_value(175)*10,0)
	local radarAltimeterDisplay_10s = round(mainPanelDevice:get_argument_value(176)*10,0)
	local radarAltimeterDisplay_1s = round(mainPanelDevice:get_argument_value(177)*10,0)
	
	-- logic for the top end of the arg
	if radarAltimeterDisplay_1000s == 10 then
		radarAltimeterDisplay_1000s = 0
	end
	if radarAltimeterDisplay_100s == 10 then
		radarAltimeterDisplay_100s = 0
	end
	if radarAltimeterDisplay_10s == 10 then
		radarAltimeterDisplay_10s = 0
	end
	if radarAltimeterDisplay_1s == 10 then
		radarAltimeterDisplay_1s = 0
	end

	
	
	radarAltimeterDisplay = string.format("%.1d" , radarAltimeterDisplay_1000s .. radarAltimeterDisplay_100s
														.. radarAltimeterDisplay_10s .. radarAltimeterDisplay_1s)

	ExportScript.Tools.SendData(4038,radarAltimeterDisplay)
	
	
	if tonumber(radarAltimeterDisplay) < limit_altitude then 
		isAltitudeTriggered = 1
	end
	
	
	if mainPanelDevice:get_argument_value(100) < limit_airspeed then
		isAirspeedTriggered = 1
	end
	
	-- TODO: this will need to be adjusted later because the arg is not linear
	if mainPanelDevice:get_argument_value(103) < limit_fpm then -- sign is flipped becase its a neg number
		isVsiTriggered = 1
	end
	
	
	if isAltitudeTriggered == 1 and isAirspeedTriggered == 1 and isVsiTriggered == 1 then
		isInVrs = 1
	end
	
	ExportScript.Tools.SendData(4037, isInVrs)
	
end

function ExportScript.HiLowCalculator(mainPanelDevice)
--TODO: maybe

--[[
	-- Radar Altimeter PLT █
	[173] = "%.4f",   -- Radar Altimeter Indicator Needle PLT
	[178] = "%.4f",   -- Radar Altimeter Low Bug PLT
	[179] = "%.4f",   -- Radar Altimeter High Bug PLT
	[180] = "%.4f",   -- Radar Altimeter Low Flag PLT
	[181] = "%.4f",   -- Radar Altimeter High Flag PLT
	[182] = "%.4f",   -- Radar Altimeter Off Flag PLT
]]

	local isFlagHi = 0
	if mainPanelDevice:get_argument_value(181) > 0.5 then
		isFlagHi = 1
	end
	
	local isFlagLo = 0
	if mainPanelDevice:get_argument_value(180) > 0.5 then
		isFlagLo = 1
	end
end


--[[
Ideas for more functions:
- rad alt readout with danger colors
- stab deg vs kias limit readout/meter
- set qfe readout
- uhf preset channel select readout 1-20
- engine limits and indications. idk how to do this
]]

------------------------------
-- General Helper Functions --
------------------------------

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

function trim(s) --http://lua-users.org/wiki/CommonFunctions
  -- from PiL2 20.4
  return (s:gsub("^%s*(.-)%s*$", "%1"))
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