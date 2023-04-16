-- Mirage-F1CE
-- Symbols
-- https://www.i2symbol.com/symbols/
-- https://emojipedia.org/check-mark/
-- https://unicode-table.com/en/sets/arrow-symbols/

ExportScript.FoundDCSModule = true
ExportScript.Version.Mirage_F1CE = "1.2.1"

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
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	
	[0] = "%.4f", -- mirrors_draw
	[1] = "%.4f", -- Canopy open/close
	[2] = "%.4f", -- Mirrors
	[3] = "%.4f", -- Canopy hinged handle

	-- Unused <4-9>

	[10] = "%.4f", -- Seat height position
	[11] = "%.1f", -- Seat height adjustment control
	[12] = "%.4f", -- Seat separation handle
	[13] = "%.4f", -- Face blind firing handle
	[14] = "%.4f", -- Alternative firing handle
	[15] = "%.4f", -- Seat belt visibility

	-- Unused <16-21>

	[22] = "%.4f", -- Stick pitch
	[23] = "%.4f", -- Stick roll
	[24] = "%.4f", -- Trim roll
	[25] = "%.4f", -- Trim pitch
	
	[27] = "%0.1f", -- Stick Safety
	[28] = "%0.1f", -- Stick weapon release
	[29] = "%0.1f", -- Stick thumb button
	[30] = "%0.1f", -- Stick side button
	[31] = "%0.1f", -- Stick autopilot disconnect trigger
	
	[34] = "%.4f", -- Stick visibility
	
	-- Unused <35-51>
	
	[52] = "%.4f", -- Rudder
	[53] = "%.4f", -- Rudder brakes
	[54] = "%.1f", -- Brake chute control
	[55] = "%0.1f", -- Canopy lock control
	[56] = "%0.1f", -- Canopy embrittle control
	
	-- Unused <57-61>

	[62] = "%.4f", -- Chronometer seconds hand
	[63] = "%.4f", -- Chronometer minutes hand
	[64] = "%.4f", -- Chronometer hours hand
	[65] = "%.4f", -- Chronometer minutes timer
	[66] = "%.4f", -- Map light rheostat
	[67] = "%.4f", -- Chronometer starting control and clock winding/setting knob
	[68] = "%.4f", -- Miscellaneous instrument integral lighting rheostat
	
	-- Unused <69-75>

	[76] = "%.4f",
	[77] = "%.4f",
	[78] = "%.4f",
	[79] = "%.4f",
	
	-- Unused <80-83>
	
	[84] = "%0.1f", -- Emergency/Parking brake handle
	[85] = "%1d", -- U/C safety lever
	[86] = "%1d", -- U/C control lever
	[87] = "%0.1f", -- Anti-retraction override button
	[88] = "%0.1f", -- Hydraulic pressure selector switch
	[89] = "%0.1f", -- Servo reset button
	[90] = "%0.1f", -- Yaw/Anti-slip switch
	[91] = "%0.1f", -- Pitch switch
	[92] = "%0.1f", -- Standby receptacle light
	[94] = "%0.1f", -- ARTHUR selector switch guard
	[95] = "%0.1f", -- Stick uncouple switch guard
	[96] = "%0.1f", -- ARTHUR selector switch
	[97] = "%0.1f", -- Stick uncouple switch
	[98] = "%0.1f", -- Incidence test switch
	
	-- Unused <100-106>
	
	[107] = "%0.1f", -- Emergency U/C handle
	[108] = "%0.1f", -- Cannons too hot light
	[111] = "%0.1f", -- Navigation light control
	[112] = "%0.1f", -- Formation light control
	[113] = "%0.1f", -- Battery switch
	[114] = "%0.1f", -- Alternator 1 switch
	[115] = "%0.1f", -- Alternator 2 switch
	[116] = "%0.1f", -- TR reset button
	[117] = "%0.1f", -- Inverter selector switch
	[118] = "%0.1f", -- Failure warning panel T test button
	[119] = "%0.1f", -- Failure warning panel O2 test button
	
    [121] = "%0.1f", -- Warning Panel Light
    [122] = "%0.1f", -- Warning Panel Light
    [123] = "%0.1f", -- Warning Panel Light
    [124] = "%0.1f", -- Warning Panel Light
    [125] = "%0.1f", -- Warning Panel Light
    [126] = "%0.1f", -- Warning Panel Light
    [127] = "%0.1f", -- Warning Panel Light
    [128] = "%0.1f", -- Warning Panel Light
    [129] = "%0.1f", -- Warning Panel Light
    [130] = "%0.1f", -- Warning Panel Light
    [131] = "%0.1f", -- Warning Panel Light
    [132] = "%0.1f", -- Warning Panel Light
    [133] = "%0.1f", -- Warning Panel Light
    [134] = "%0.1f", -- Warning Panel Light
    [135] = "%0.1f", -- Warning Panel Light
    [136] = "%0.1f", -- Warning Panel Light
    [137] = "%0.1f", -- Warning Panel Light
    [138] = "%0.1f", -- Warning Panel Light
    [139] = "%0.1f", -- Warning Panel Light
    [140] = "%0.1f", -- Warning Panel Light
    [141] = "%0.1f", -- Warning Panel Light
    [142] = "%0.1f", -- Warning Panel Light
    [143] = "%0.1f", -- Warning Panel Light
    [144] = "%0.1f", -- Warning Panel Light
    [145] = "%0.1f", -- Warning Panel Light
    [146] = "%0.1f", -- Warning Panel Light
    [147] = "%0.1f", -- Warning Panel Light
    [148] = "%0.1f", -- Warning Panel Light
    [149] = "%0.1f", -- Warning Panel Light
    [150] = "%0.1f", -- Warning Panel Light
    [151] = "%0.1f", -- Warning Panel Light
    [152] = "%0.1f", -- Warning Panel Light
	
	
	-- Unused <153-193>
	
	[194] = "%0.1f", -- Jammer detection light
	[196] = "%0.1f", -- Jammer detection light brightness animation
	[197] = "%0.1f", -- (C + M or SW) R light
	[199] = "%0.1f", -- (C + M or SW) R light brightness animation
	[200] = "%0.1f", -- Incidence indicator flag
	[201] = "%0.1f", -- Incidence indicator lighting rheostat
	[203] = "%0.2f", -- Incidence indicator aoa
	
	-- Unused <204-207>

	[208] = "%0.1f", -- Chaff/flares selector switch
	[209] = "%0.2f", -- Program selector switch
	[210] = "%0.1f", -- Chaff 10s rotary
	[211] = "%0.1f", -- Chaff 1s rotary
	[212] = "%0.1f", -- Chaff counter reset button
	[213] = "%0.1f", -- Flares 10s rotary
	[214] = "%0.1f", -- Flares 1s rotary
	[215] = "%0.1f", -- Flares counter reset button
	[216] = "%0.1f", -- Emergency jettisoning switch
	[217] = "%.4f", -- Accelerometer max
	[218] = "%.4f", -- Accelerometer current
	[219] = "%.4f", -- Accelerometer min
	
	-- Unused <220-227>

	[228] = "%.4f",
	
	-- Unused <229-230>
	
	[231] = "%.4f", -- Clock winding/setting lever
	[233] = "%.4f", -- Canopy seal valve control lever
	[234] = "%.4f", -- Throttle
	[235] = "%.4f", -- Throttle Thumb rocker
	[239] = "%0.1f", -- Throttle cut/idle switch
	[240] = "%.4f", -- In-flight relight control
	
	-- Unused <241-247>
	
	[248] = "%0.1f", -- Slat/Flap lever
	
	-- Unused <249>
	
	[257] = "%0.1f", -- Radar control stick scan selection
	[258] = "%0.2f", -- Radar control stick scale selection
	[259] = "%0.1f", -- Radar control stick elevation/altitude difference button
	
	-- Unused <260-269>

	[271] = "%0.1f", -- UHF test light
	
	[272] = "%0.1f", -- Test selector switch
	[273] = "%0.1f", -- SIL switch
	[274] = "%0.1f", -- V/UHF Frequency select thumbwheel - Hundreds
	[275] = "%0.1f", -- V/UHF Frequency select thumbwheel - Tens
	[276] = "%0.1f", -- V/UHF Frequency select thumbwheel - Units
	[277] = "%0.1f", -- V/UHF Frequency select thumbwheel - Tenths
	[278] = "%.2f", -- V/UHF Frequency select thumbwheel - Thousandths

	-- Unused <279>
	
	[280] = "%.2f", -- Function selector
	[281] = "%0.1f", -- 25W - 5W switch
	[282] = "%0.1f", -- Frequency selector switch
	[283] = "%0.2f", -- V/UHF Channel Selector
	
	-- Unused <284-285>
	
	-- Unused <288-305>
	
	[306] = "%.4f", -- MISS potentiometer
	[307] = "%.4f", -- TAC potentiometer
	[308] = "%.4f", -- VOR potentiometer
	[309] = "%0.1f", -- AMPLI 2-1 selector switch
	[310] = "%.4f", -- U + V pushbutton
	[311] = "%.4f", -- U + V pushbutton rotation
	[312] = "%0.1f", -- U + V pushbutton light
	[313] = "%.4f", -- U pushbutton
	[314] = "%.4f", -- U pushbutton rotation
	[315] = "%0.1f", -- U pushbutton light
	[316] = "%.4f", -- RAP + CME pushbutton
	[317] = "%.4f", -- RAP + CME pushbutton rotation
	[318] = "%0.1f", -- RAP + CME pushbutton light
	[319] = "%.4f", -- MKR + TP pushbutton
	[320] = "%.4f", -- MKR + TP pushbutton rotation
	[321] = "%0.1f", -- MKR + TP pushbutton light
	
	-- Unused <322-339>
	
	[340] = "%0.1f", -- 5W/25W selector switch
	[341] = "%0.1f", -- Squelch switch
	[342] = "%0.1f", -- Test selector switch
	[343] = "%.4f", -- CDE button (not used)
	[344] = "%.2f", -- UHF Function selector
	[345] = "%.1f", -- UHF Test light
	[348] = "%.2f", -- UHF Channel selector
	[349] = "%.4f", -- IFF numbers
	
	-- Unused <350>

	[351] = "%.4f",
	[352] = "%.4f",
	[353] = "%.4f", -- Landing light control
	[354] = "%.4f", -- Emergency regulation light
	[356] = "%0.1f",-- Emergency regulation light brightness animation
	[357] = "%0.1f", -- Emergency regulation switch guard
	[358] = "%0.1f", -- Emergency regulation switch
	[359] = "%.4f", -- Emergency regulation control lever
	[360] = "%.4f", -- Telemeter/zone scanning switch
	[361] = "%.4f", -- (C + M or SW) R deselection switch
	
	-- Unused <362-367>
	
	[368] = "%0.1f", -- Flight control test restart button
	[369] = "%0.1f", -- Flight control test switch guard
	[370] = "%0.1f", -- Flight control test switch
	[374] = "%0.1f", -- Start button cover
	[375] = "%0.1f", -- Start button
	[376] = "%0.1f", -- Ignition/Ventilation selector switch
	[377] = "%0.1f", -- Starting pump switch
	[378] = "%0.1f", -- R/H LP pump switch
	[379] = "%0.1f", -- L/H LP pump switch
	[380] = "%0.1f", -- LP main cock switch guard
	[381] = "%0.1f", -- LP main cock switch
	[382] = "%0.1f", -- Day/Night selector switch
	[383] = "%.4f", -- Light and panel lighting rheostat
	[384] = "%.4f", -- Ultraviolet lighting rheostat
	[385] = "%.4f", -- Dual instrument panel lighting rheostat (Floodlights)
	[386] = "%.4f", -- Dual instrument panel lighting rheostat (Integral)
	[387] = "%.4f", -- Dual console and pedestal lighting rheostat (Floodlights)
	[388] = "%.4f", -- Dual console and pedestal lighting rheostat (Integral)

	-- Unused <389-395>

	[396] = "%0.1f", -- JPT emergency regulation switch
	[397] = "%0.1f", -- A/B main cock switch guard
	[398] = "%0.1f", -- A/B main cock switch
	[399] = "%0.1f", -- High-lift device selector switch

	-- Unused <400-401>
	
	[402] = "%0.1f", -- Anti-skid (SPAD) switch guard
	[403] = "%0.1f", -- Anti-skid (SPAD) switch

	-- Unused <404>
	
	[405] = "%.4f", -- Alternative PTT
	[406] = "%0.1f", -- Rudder trim control switch
	
	-- Unused <407>
	
	[408] = "%0.1f", -- ANTENNA-GYRO switch
	[410] = "%0.1f", -- Ram air switch guard
	
	-- Unused <409>
	
	[411] = "%0.1f", -- Ram air switch
	[412] = "%0.1f", -- Demist switch
	
	-- Unused <413-431>
	
	[432] = "%0.1f", -- Armament master switch guard
	[433] = "%0.1f", -- Armament master switch
	
	-- Unused <434-469>
	
	[470] = "%0.1f", -- Miscellaneous instrument lighting switch
	
	-- Unused <471>
	
	[474] = "%0.1f", -- Standby horizon switch
	[475] = "%0.1f", -- Electro-pump switch
	[476] = "%0.1f", -- Warning horn switch
	[477] = "%0.1f", -- Probe heater switch
	[478] = "%0.1f", -- Radar detector switch
	[479] = "%.4f", -- Search light control
	[480] = "%0.1f", -- TACAN test button
	[481] = "%0.1f", -- TACAN X/Y mode display
	[482] = "%0.1f", -- TACAN 100s display
	[483] = "%0.1f", -- TACAN 10s mode display
	[484] = "%0.1f", -- TACAN 1s mode display
	[485] = "%.f", -- TACAN X/Y mode selector
	[486] = "%0.4f", -- TACAN X/Y rotation animation
	[487] = "%0.2f", -- TACAN mode selector
	[488] = "%0.4f", -- TACAN 10s rotation animation
	
	-- Unused <489-497>
	
	[498] = "%0.1f", -- VOR-ILS control unit Xxx.xx
	[499] = "%0.1f", -- VOR-ILS control unit xXx.xx
	[500] = "%0.1f", -- VOR-ILS control unit xxX.xx
	[501] = "%0.1f", -- VOR-ILS control unit xxx.Xx
	[502] = "%0.1f", -- VOR-ILS control unit xxx.xX
	[503] = "%0.1f", -- VOR-ILS control unit ON/OFF selector
	[504] = "%0.4f", -- VOR-ILS control unit ON/OFF selector rotation animation
	[505] = "%0.1f", -- VOR-ILS control unit test selector
	[506] = "%0.4f", -- VOR-ILS control unit test selector rotation animation
	
	-- Unused <507-515>
	
	[516] = "%.4f", -- Oxygen needle
	[517] = "%0.1f", -- Oxygen test button (T button)
	[518] = "%.4f", -- Pilot oxygen indicator
	[519] = "%0.1f", -- Pilot oxygen test button
	
	-- Unused <220-523>
	
	[524] = "%0.1f", -- Emergency cold switch
	[525] = "%0.1f", -- Master valve control switch
	[527] = "%.4f", -- Temperature control needle
	[527] = "%.4f", -- Temperature control rheostat
	[528] = "%.4f", -- Hot/Cold selector needle
	[529] = "%0.1f", -- Auto/Manual selector switch
	[530] = "%0.1f", -- Hot/Cold selector switch
	[537] = "%0.1f", -- Heading and vertical reference system control switch
	[538] = "%0.1f", -- Emergency gyromagnetic compass switch
	[539] = "%.4f",
	[540] = "%0.1f", -- Heading control unit erection button
	[541] = "%0.1f", -- Omnibearing selector Heading control unit Xxx
	[542] = "%0.1f", -- Omnibearing selector Heading control unit xXx
	[543] = "%0.1f", -- Omnibearing selector Heading control unit xxX
	[544] = "%.4f", -- VOR-ILS/OFF/TACAN selector
	[545] = "%.4f", -- Omnibearing selector
	[547] = "%.4f", -- Heading selection knob
	[548] = "%0.1f", -- CB Gyro control unit power supply
	[550] = "%0.1f", -- CB High-lift device servo unit power supply
	[552] = "%0.1f", -- CB Indicator and failure detector power supply
	[554] = "%0.1f", -- CB Inverter transfer unit power supply and control
	[556] = "%0.1f", -- CB Dual hydraulic pressure gauge power supply
	[558] = "%0.1f", -- CB Gun firing trigger power supply
	[560] = "%0.1f", -- CB LP cock power supply
	[562] = "%0.1f", -- CB Electro-pump relay power supply
	[564] = "%0.1f", -- CB Flight refuelling system power supply
	[566] = "%0.1f", -- CB Cabin pressurization system power supply
	[568] = "%0.1f", -- CB Inverter 28 V power supply
	[570] = "%0.1f", -- CB U/C normal operation power supply
	[572] = "%0.1f", -- CB V/UHF power supply
	[574] = "%0.1f", -- CB Starter and sequencing system power supply
	[576] = "%0.1f", -- CB Refuelling probe control power supply
	[578] = "%0.1f", -- CB Manual trim control power supply
	[580] = "%0.1f", -- CB Valve position repeater, control valve and ground mode power supply
	[582] = "%0.1f", -- CB Failure warning panel and master failure warning light power supply
	[584] = "%0.1f", -- CB Configuration indicator (U/C section) and U/C warning light power supply
	[586] = "%0.1f", -- CB IFF power supply
	[588] = "%0.1f", -- CB Emergency regulation system and control lever power supply

	-- Unused <589>

	[590] = "%0.1f", -- Sight selector
	[591] = "%0.1f", -- Firing fuel dipper switch
	[592] = "%0.1f", -- Bomb/Rocket selector
	[593] = "%0.1f", -- MATRA 550 or Sidewinder missile switch
	[594] = "%0.1f", -- Fore/Aft selector switch
	[595] = "%0.1f", -- Auto/Manual firing selector switch
	[596] = "%0.1f", -- Single/Salvo selector
	[597] = "%0.1f", -- Instantaneous/Delay/Safe selector switch
	[598] = "%0.1f", -- Radar selector
	[599] = "%0.1f", -- Radar emergency transmission button
	[600] = "%0.1f", -- Radar 4 lines/1 line scan switch
	[601] = "%0.1f", -- R 530 Missile Normal/Altitude difference selector switch
	[602] = "%0.1f", -- Armament panel lights test
	[603] = "%0.1f", -- Normal/Jammer pursuit switch (No function)
	[604] = "%0.1f", -- EXT G Left MATRA R550 or sidewinder missile pushbutton
	[605] = "%0.1f", -- EXT G Left MATRA R550 or sidewinder missile pushbutton light
	[606] = "%0.1f", -- EXT D Left or fuselage MATRA R530 missile pushbutton
	[607] = "%0.1f", -- EXT D Left or fuselage MATRA R530 missile pushbutton light
	[608] = "%0.1f", -- CAN A Air to air pushbutton
	[609] = "%0.1f", -- CAN A Air to air pushbutton light
	[610] = "%0.1f", -- BOMB VOIL Wing bombs pushbutton
	[611] = "%0.1f", -- BOMB VOIL Wing bombs pushbutton light
	[612] = "%0.1f", -- EXT D Right MATRA R550 or sidewinder missile pushbutton
	[613] = "%0.1f", -- EXT D Right MATRA R550 or sidewinder missile pushbutton light
	[614] = "%0.1f", -- EXT D Right MATRA R530 missile pushbutton
	[615] = "%0.1f", -- EXT D Right MATRA R530 missile pushbutton light
	[616] = "%0.1f", -- CAN S ROQ Air to ground guns or rockets pushbutton
	[617] = "%0.1f", -- CAN S ROQ Air to ground guns or rockets pushbutton light
	[618] = "%0.1f", -- Fuselage bombs pushbutton
	[619] = "%0.1f", -- Fuselage bombs pushbutton light

	-- Unused <620-631>

	[632] = "%0.2f", -- Indicator light brightness
	[633] = "%0.2f", -- Strobe brightness 
	[634] = "%0.2f", -- Distance markers brightness
	[635] = "%0.2f", -- Horizon and radial velocity marker brightness
	[636] = "%0.2f", -- Horizon symbol vertical position

	[708] = "%0.1f", -- Chaff/flares release button
	[709] = "%0.1f", -- N-100%-EMG mode selector switch
	[710] = "%0.1f", -- Oxygen overpressure button
	[712] = "%0.1f", -- Anti-g connection cover
	[713] = "%0.1f", -- Anti-g test button
	[714] = "%0.1f", -- Anti-g valve cock

	[719] = "%.4f", -- Pilot Oxygen Breath Pressure Indicator
	[721] = "%.4f", -- Hydraulic 1 needle
	[722] = "%.4f", -- Hydraulic 2 needle
	[723] = "%.4f", -- Rudder trim indicator
	[724] = "%.4f", -- Roll trim indicator
	[725] = "%.4f", -- Pitch trim indicator
	[726] = "%.4f", -- Cockpit pressurisation indicator needle

	-- Unused <727-731>

	[732] = "%0.3f", -- Mode 1 coding tens selector
	[733] = "%0.3f", -- Mode 1 coding units selector
	[734] = "%0.3f", -- Mode 3A coding thousands selector
	[735] = "%0.3f", -- Mode 3A coding hundreds selector
	[736] = "%0.3f", -- Mode 3A coding tens selector
	[737] = "%0.3f", -- Mode 3A coding units selector
	[738] = "%0.1f", -- IFF test button
	[739] = "%0.2f", -- Function selector switch
	[740] = "%0.1f", -- IFF Monitoring light press
	[741] = "%.4f", -- IFF Monitoring light rotate
	[742] = "%0.1f", -- IFF Monitoring light brightness
	[743] = "%0.2f", -- Mode 4 selector switch
	[744] = "%0.2f", -- Position identification selector
	[745] = "%0.1f", -- IFF mode 4 switch
	[746] = "%0.1f", -- IFF fault light
	[747] = "%.4f", -- IFF Fault light rotate
	[748] = "%0.1f", -- IFF Fault light brightness
	[749] = "%0.1f", -- AUDIO-LIGHT switch
	[750] = "%0.1f", -- M-1 mode switch
	[751] = "%0.1f", -- M-2 mode switch
	[752] = "%0.1f", -- M-3 mode switch
	[753] = "%0.1f", -- M-4 mode switch
	[754] = "%0.1f", -- Shock-cone manual control switch
	[755] = "%0.1f", -- Shock-cone pushbutton
	[756] = "%1d", -- Nose wheel steering high sensitivity button
	[757] = "%0.1f", -- Nose wheel steering switch guard
	[758] = "%0.1f", -- Nose wheel steering switch

	-- Unused <759>

	[760] = "%0.1f", -- AUTO/MAN intensity selector switch
	[761] = "%0.1f", -- Lighting selector switch
	[762] = "%.4f", --
	[763] = "%.4f", --
	[764] = "%.4f", --
	[765] = "%.4f", --
	[766] = "%.4f", -- Manual gravity drop selection Mrad Xxx
	[767] = "%.4f", -- Manual gravity drop selection Mrad xXx
	[768] = "%.4f", -- Manual gravity drop selection Mrad xxX
	[769] = "%0.1f", -- Manual gravity drop selection thumbwheel
	[770] = "%0.1f", -- Fixed Reticle intensity rheostat
	[771] = "%0.1f", -- Moving and Target Reticles intensity rheostat
	[772] = "%0.1f", -- Attitude Reticle intensity rheostat
	[773] = "%0.1f", -- Sight system test button
	[774] = "%0.4f", -- Exposure time repeater
	[775] = "%0.1f", -- Overrun select thumbwheel
	[776] = "%0.1f", -- Sight camera test switch
	[777] = "%0.1f", -- 5/16 PPS framing rate selector switch
 
	[836] = "%0.1f", -- Radar test button
	[837] = "%.4f", -- Scope intensity adjustment
	[838] = "%.1f", -- Radar function selection
	[839] = "%.4f", -- Storage adjustment
	[840] = "%.4f", -- Scope erasing
	[841] = "%.4f", -- Scope turney thingie, Polaroid screen adjustment
	[842] = "%0.1f", -- Scope HA Light
	[843] = "%0.1f", -- Scope IC Light
	[844] = "%0.1f", -- Scope TL Light
	[845] = "%0.1f", -- Scope BZ Light
	[846] = "%0.1f", -- Scope TS Light
	[847] = "%0.1f", -- Scope V1 Light
	[848] = "%0.1f", -- Scope V2 Light
	[849] = "%0.1f", -- Scope DC Light
	[850] = "%0.1f", -- Scope PR Light
	[851] = "%0.1f", -- Scope AC Light
	[852] = "%0.1f", -- Scope DB Light
	[853] = "%0.1f", -- Scope yellow Light
	[854] = "%0.1f", -- Scope green Light
	[855] = "%0.1f", -- Scope red Light
	[856] = "%0.1f", -- Scope 7 Light
	[857] = "%0.1f", -- Scope 15 Light
	[858] = "%0.1f", -- Scope 35 Light
	[859] = "%0.1f", -- Scope 60 Light
	[860] = "%0.1f", -- Scope AP Light
	[861] = "%0.1f", -- Scope TCH Light
	[862] = "%0.1f", -- Scope EMI Light
	[863] = "%0.1f", -- Scope PNE Light
	[864] = "%0.1f", -- Radar cover remove toggle
	[865] = "%.4f", -- Scope left/right animation
	[866] = "%.4f", -- Scope up/down animation

	-- Unused <867-919>

	[920] = "%.4f", -- Master failure warning light
	[921] = "%0.1f", -- Master failure warning light warning brightness

	[923] = "%0.1f", -- Master failure warning light caution brightness

	[928] = "%.4f", -- U/C light
	[929] = "%0.1f", -- U/C light brightness

	[932] = "%.4f", -- Limit warning light + Horn
	[933] = "%0.1f", -- Limit warning light + Horn brightness

	[937] = "%0.1f", -- Fire warning light (ENG/AB) + Horn top brightness
	[940] = "%.4f", -- Fire warning light (ENG/AB) + Horn
	[941] = "%0.1f", -- Fire warning light (ENG/AB) + Horn bottom brightness

	[944] = "%0.1f", -- Airbrake light press
	[945] = "%.4f", -- Airbrake light twist
	[946] = "%0.1f", -- Airbrake light light
	
	[950] = "%0.1f", -- Nose wheel steering light press
	[951] = "%.4f", -- Nose wheel steering light twist
	[952] = "%0.1f", -- Nose wheel steering light light

	[956] = "%0.1f", -- Combat flaps light press
	[957] = "%.4f", -- Combat flaps light twist
	[958] = "%0.1f", -- Combat flaps light light
	
	[962] = "%0.1f", -- MATRA 550 or Sidewinder jettison button guard
	[963] = "%0.1f", -- MATRA 550 or Sidewinder jettison button

	[966] = "%0.1f", -- Emergency jettison button guard
	[967] = "%0.1f", -- Emergency jettison button
	[968] = "%0.1f", -- Selective jettison button guard
	[969] = "%0.1f", -- Selective jettison button
	[970] = "%0.1f", -- Jettisoning selector switch
	[973] = "%0.1f", -- Autopilot control and indicator unit test button
	[974] = "%0.1f", -- Autopilot PA button
	[975] = "%0.1f", -- Autopilot PA button P light
	[976] = "%0.1f", -- Autopilot PA button A light
	[977] = "%0.1f", -- Autopilot ALT button
	[978] = "%0.1f", -- Autopilot ALT button green light
	[979] = "%0.1f", -- Autopilot ALT button red light
	[980] = "%0.1f", -- Autopilot CAP button
	[981] = "%0.1f", -- Autopilot CAP button light
	[982] = "%0.1f", -- Autopilot R button
	[983] = "%0.1f", -- Autopilot R button left red light
	[984] = "%0.1f", -- Autopilot R button top red light
	[985] = "%0.1f", -- Autopilot R button bottom green light
	[986] = "%0.1f", -- Autopilot R button right red light
	[987] = "%0.1f", -- Autopilot G button
	[988] = "%0.1f", -- Autopilot G button left red light
	[989] = "%0.1f", -- Autopilot G button top red light
	[990] = "%0.1f", -- Autopilot G button bottom red green light
	[991] = "%0.1f", -- Autopilot G button right green light
	[992] = "%0.1f", -- Autopilot intensity control

	[1021] = "%.4f", -- Mach airspeed cone needle

	[1023] = "%.4f", -- Mach/Airspeed window and needle

	[1025] = "%.4f", -- Vertical speed needle

	[1027] = "%.4f", -- RPM thousands needle

	[1028] = "%.4f", -- Engine temp needle
	[1029] = "%0.1f", -- A/B INJ light
	[1030] = "%0.1f", -- A/B INJ light brightness
	[1031] = "%0.1f", -- A/B ON light
	[1032] = "%0.1f", -- A/B ON light brightness
	[1033] = "%0.1f", -- A/B SRL light
	[1034] = "%0.1f", -- A/B SRL light brightness

	[1043] = "%.4f", -- Altitude Needle
	[1044] = "%0.1f", -- Altitude window flag
	[1045] = "%0.1f", -- Altitude window Xx.xxx
	[1046] = "%0.1f", -- Altitude window xX.xxx
	[1047] = "%0.1f", -- Altitude window xx.Xxx
	[1048] = "%0.1f", -- Altitude window xx.xXX
	[1049] = "%0.1f", -- Slaved altimeter barometric pressure Xxxx
	[1050] = "%0.1f", -- Slaved altimeter barometric pressure xXxx
	[1051] = "%0.1f", -- Slaved altimeter barometric pressure xxXx
	[1052] = "%0.1f", -- Slaved altimeter barometric pressure xxxX
	[1053] = "%0.1f", -- Slaved altimeter barometric pressure setting knob

	[1065] = "%.4f", -- Standby altimeter hundreds needle
	[1066] = "%.4f", -- Standby altimeter thousands needle
	[1067] = "%.4f", -- Standby altimeter tenthousands altitude needle
	[1068] = "%0.1f", -- Standby altimeter barometric pressure Xxxx
	[1069] = "%0.1f", -- Standby altimeter barometric pressure xXxx
	[1070] = "%0.1f", -- Standby altimeter barometric pressure xxXx
	[1071] = "%0.1f", -- Standby altimeter barometric pressure xxxX
	[1072] = "%0.1f", -- Standby altimeter barometric pressure setting knob

	[1081] = "%0.1f", -- BIP button
	[1082] = "%0.1f", -- Configuration indicator test button
	[1083] = "%0.1f", -- Slat green light
	[1084] = "%0.1f", -- Slat yellow light
	[1085] = "%0.1f", -- Slat red light
	[1086] = "%0.1f", -- Flap red light
	[1087] = "%0.1f", -- Flap yellow light
	[1088] = "%0.1f", -- Flap green light
	[1089] = "%0.1f", -- Fren light
	[1090] = "%0.1f", -- U/C left green light
	[1091] = "%0.1f", -- U/C transit red light
	[1092] = "%0.1f", -- U/C center green light
	[1093] = "%0.1f", -- U/C right green light

	[1106] = "%.4f", -- Engine RPM hundreds needle

	[1108] = "%.4f", -- Spherical indicator pitch bar
	[1109] = "%.4f", -- Spherical indicator roll bar
	[1110] = "%.4f", -- Spherical indicator pitch
	[1111] = "%.4f", -- Spherical indicator roll
	[1112] = "%.4f", -- Spherical indicator heading
	[1113] = "%.4f", -- Spherical indicator coordination ball

	[1115] = "%0.1f", -- Spherical indicator flag
	[1116] = "%0.1f", -- Spherical indicator day/night selector switch
	[1117] = "%0.1f", -- Spherical indicator pole setting and marker beacon light test

	[1128] = "%.4f", -- Standby horizon roll
	[1129] = "%.4f", -- Standby horizon angle of bank
	[1130] = "%.4f", -- Standby horizon aircraft indicator
	[1131] = "%.4f", -- Standby horizon flag
	[1132] = "%.4f", -- Standby horizon uncage and aircraft model control
	[1133] = "%.4f", -- Standby horizon control knob
	[1134] = "%.4f", -- Standby horizon pitch

	[1142] = "%0.1f", -- Fuel gauge G left
	[1143] = "%0.1f", -- Fuel gauge D right
	[1144] = "%0.1f", -- Feeder tank/Fuselage selector switch
	[1145] = "%0.1f", -- Fuel gauge test button

	[1146] = "%0.1f", -- Fuel quantity Xxxx
	[1147] = "%0.1f", -- Fuel quantity xXxx
	[1148] = "%0.1f", -- Fuel quantity xxXx
	[1149] = "%0.1f", -- Fuel quantity xxxX
	[1150] = "%.4f", -- Fuel quantity reset thumbwheel
	[1151] = "%0.1f", -- Crossfeed switch
	[1152] = "%0.1f", -- Emergency transfer switch
	[1153] = "%0.1f", -- Fuel transfer sequence selector switch
	[1154] = "%0.1f", -- Fuel transfer sequence 4 left
	[1155] = "%0.1f", -- Fuel transfer sequence 2
	[1156] = "%0.1f", -- Fuel transfer sequence 4 right
	[1157] = "%0.1f", -- Fuel transfer sequence tank left
	[1158] = "%0.1f", -- Fuel transfer sequence tank right
	[1159] = "%0.1f", -- Fuel transfer sequence 1 left
	[1160] = "%0.1f", -- Fuel transfer sequence tank center
	[1161] = "%0.1f", -- Fuel transfer sequence 1 right
	[1162] = "%0.1f", -- Fuel transfer sequence 3 left
	[1163] = "%0.1f", -- Fuel transfer sequence 3 right
	[1164] = "%0.1f", -- Fuel transfer sequence 5 left
	[1165] = "%0.1f", -- Fuel transfer sequence 5 right
	[1166] = "%0.1f", -- Fuel transfer indicator test

	[1189] = "%.4f", -- HSI heading
	[1190] = "%.4f", -- HSI heading bug
	[1191] = "%.4f", -- HSI needle 2
	[1192] = "%.4f", -- HSI needle 1
	[1193] = "%.4f", -- HSI distance Xxx
	[1194] = "%.4f", -- HSI distance xXx
	[1195] = "%.4f", -- HSI distance xxX
	[1196] = "%.4f", -- HSI distance flag
	[1197] = "%.4f", -- HSI bearing Xxx
	[1198] = "%.4f", -- HSI bearing xXx
	[1199] = "%.4f", -- HSI bearing xxX
	[1200] = "%.4f", -- HSI distance Xxx
	[1201] = "%.4f", -- HSI distance xXx
	[1202] = "%.4f", -- HSI distance xxX
	[1203] = "%0.1f", -- HSI flag left
	[1204] = "%0.2f", -- HSI Mode selector switch
	[1205] = "%0.1f", -- HSI Normal/Additional vector selector switch
	[1206] = "%0.1f", -- HSI Additional target selector switch
	[1207] = "%0.1f", -- HSI bearing/distance selector knob
	[1208] = "%.4f", -- HSI Test button

	[1228] = "%.4f", --
	[1229] = "%.4f", -- RWR red button 1 twist
	[1230] = "%0.1f", -- RWR red button 1 light
	[1231] = "%.4f", --
	[1232] = "%.4f", -- RWR red button 2 twist
	[1233] = "%0.1f", -- RWR red button 2 light
	[1234] = "%.4f", --
	[1235] = "%.4f", -- RWR red button 3 twist
	[1236] = "%0.1f", -- RWR red button 3 light
	[1237] = "%0.1f", -- Indicator light intensity adjusting switch and lights 'T' test button
	[1238] = "%0.1f", -- Radar detector indicator test switch
	[1239] = "%0.1f", -- RWR arrow top
	[1240] = "%0.1f", -- RWR arrow left
	[1241] = "%0.1f", -- RWR arrow right
	[1242] = "%0.1f", -- RWR arrow down

	[1270] = "%.4f", -- Mach/Airspeed indicator reference airspeed knob
	
	[1288] = "%0.1f", -- Accelerometer reset button and rheostat
	
	[1294] = "%.4f", -- Instrument backlighting

	[1300] = "%0.1f", -- AoA lighting red
	[1301] = "%0.1f", -- AoA lighting yellow
	[1302] = "%0.1f", -- AoA lighting green

	[1309] = "%.4f", -- Canopy Light Move

	[1315] = "%.4f", -- TO/FROM Indicator
	[1316] = "%.4f", -- Ejection handle safety pin
	[1318] = "%.4f", -- Airspeed something window
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
	--ExportScript.DeviceMetaTableLogDump(mainPanelDevice) -- comment this to prevent log flooding
	--ExportScript.ListIndicationLogDump(mainPanelDevice) -- comment this to prevent log flooding
	ExportScript.VorIlsTacanOmnibearing(mainPanelDevice)
	ExportScript.CockpitInstruments(mainPanelDevice)
	ExportScript.qfeCalculator(mainPanelDevice)
	ExportScript.clockTimer(mainPanelDevice)
	ExportScript.Radios(mainPanelDevice)
	ExportScript.AutopilotLightLogic(mainPanelDevice)
	ExportScript.WeaponPushbuttonLogic(mainPanelDevice)
	ExportScript.GearSlatLogic(mainPanelDevice)
	ExportScript.EngineRestartLogic(mainPanelDevice)
	ExportScript.CountermeasureReadouts(mainPanelDevice)
	ExportScript.AoaIndicator(mainPanelDevice)
	ExportScript.AccelerometerReadout(mainPanelDevice)
	ExportScript.HsiReadouts(mainPanelDevice)
	ExportScript.DepressionAngleTables(mainPanelDevice)
	ExportScript.FlowBlinker(mainPanelDevice)
	ExportScript.OxygenIndicator(mainPanelDevice)
	ExportScript.ChuteLimitLogic(mainPanelDevice)
	ExportScript.MaxCeiling(mainPanelDevice)
	ExportScript.AlternatorEnvelope(mainPanelDevice)
	ExportScript.DecentReadout(mainPanelDevice)
	ExportScript.MaxAirspeed(mainPanelDevice)
	ExportScript.TrimReadout(mainPanelDevice)
	ExportScript.RadarCalculators(mainPanelDevice)
	ExportScript.ClimbSchedulesReadout(mainPanelDevice)
	ExportScript.FuelCalculator(mainPanelDevice)
	ExportScript.IffPanel(mainPanelDevice)
	ExportScript.BaroPressureConverter(mainPanelDevice)
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
end

-----------------------------
--     Custom functions    --
-----------------------------

function ExportScript.BaroPressureConverter(mainPanelDevice)
	-- Altimeter Pressure window
	local altBaroPress_Xxxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1049) * 10, 0)
	local altBaroPress_xXxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1050) * 10, 0)
	local altBaroPress_xxXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1051) * 10, 0)
	local altBaroPress_xxxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1052) * 10, 0)

	if altBaroPress_Xxxx > 9 then altBaroPress_Xxxx = 0 end
	if altBaroPress_xXxx > 9 then altBaroPress_xXxx = 0 end
	if altBaroPress_xxXx > 9 then altBaroPress_xxXx = 0 end
	if altBaroPress_xxxX > 9 then altBaroPress_xxxX = 0 end

	--result is millibar
	local altBaroPressMb = altBaroPress_Xxxx .. altBaroPress_xXxx .. altBaroPress_xxXx .. altBaroPress_xxxX

	-- convert to mmhg
	local altBaroPressMmhg = string.format("%.2f", altBaroPressMb / 1.333)

	-- Convert to inhg
	local altBaroPressInhg = string.format("%.2f", altBaroPressMb / 33.864)

	ExportScript.Tools.SendData(8079, 'Pressure'
			.. '\n' .. altBaroPressMb .. " mbar"
			.. '\n' .. round(altBaroPressMmhg,0) .. ' mmhg'
			.. '\n' .. altBaroPressInhg .. ' inhg')
end

function ExportScript.IffPanel(mainPanelDevice)

	local mode1_10s = {[0.000]="0",[0.125]="1",[0.250]="2",[0.375]="3",[0.500]="4",[0.625]="5",[0.750]="6",[0.875]="7",[1.000]="0"}
	mode1_10s = mode1_10s[ExportScript.Tools.round(mainPanelDevice:get_argument_value(732), 3)]

	local mode1_1s = {[0.000]="0",[0.125]="1",[0.250]="2",[0.375]="3",[0.500]="4",[0.625]="5",[0.750]="6",[0.875]="7",[1.000]="0"}
	mode1_1s = mode1_1s[ExportScript.Tools.round(mainPanelDevice:get_argument_value(733), 3)]

	local mode1 = mode1_10s .. mode1_1s
	ExportScript.Tools.SendData(8076, 'IFF M1\n' .. mode1_10s .. mode1_1s)

	local mode3A1000s = {[0.000]="0",[0.125]="1",[0.250]="2",[0.375]="3",[0.500]="4",[0.625]="5",[0.750]="6",[0.875]="7",[1.000]="0"}
	mode3A1000s = mode3A1000s[ExportScript.Tools.round(mainPanelDevice:get_argument_value(734), 3)]

	local mode3A100s = {[0.000]="0",[0.125]="1",[0.250]="2",[0.375]="3",[0.500]="4",[0.625]="5",[0.750]="6",[0.875]="7",[1.000]="0"}
	mode3A100s = mode3A100s[ExportScript.Tools.round(mainPanelDevice:get_argument_value(735), 3)]

	local mode3A10s = {[0.000]="0",[0.125]="1",[0.250]="2",[0.375]="3",[0.500]="4",[0.625]="5",[0.750]="6",[0.875]="7",[1.000]="0"}
	mode3A10s = mode3A10s[ExportScript.Tools.round(mainPanelDevice:get_argument_value(736), 3)]

	local mode3A1s = {[0.000]="0",[0.125]="1",[0.250]="2",[0.375]="3",[0.500]="4",[0.625]="5",[0.750]="6",[0.875]="7",[1.000]="0"}
	mode3A1s = mode3A1s[ExportScript.Tools.round(mainPanelDevice:get_argument_value(737), 3)]

	local mode3A = mode3A1000s .. mode3A100s .. mode3A10s .. mode3A1s
	ExportScript.Tools.SendData(8077,  'IFF M3A\n' .. mode3A)

	ExportScript.Tools.SendData(8078, 'IFF\nM1 ' .. mode1 .. '\nM3A ' .. mode3A)
end

function ExportScript.FuelCalculator(mainPanelDevice)
	-- a rough estimate of instantaneous remaining fuel time
	-- 10 second sample period
	-- get how many L were used
	-- from then do more math to get amount of fuel remaining in hrs
	local measurementTime = 10 -- seconds

	local clockHour = ExportScript.Tools.round(mainPanelDevice:get_argument_value(64), 4) -- 0.25
	clockHour = clockHour * 12 -- 3
	clockHour = clockHour * 60 -- 180
	clockHour = clockHour * 60 -- 10,800
	clockHour = formatTime(clockHour)

	local clockTimer = ExportScript.Tools.round(mainPanelDevice:get_argument_value(65), 4)
	-- up to 15 minutes
	-- .333 is about 5 minutes
	clockTimer = clockTimer * 15 -- 4.995
	clockTimer = clockTimer * 60 -- 299.7
	clockTimer = formatTime2(clockTimer)

	-- Manual gravity drop selection Mrad to input the amount of fuel used
	local mrad_Xxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(766) * 10, 0)
	local mrad_xXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(767) * 10, 0)
	local mrad_xxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(768) * 10, 0)

	if mrad_Xxx > 9 then mrad_Xxx = 0 end
	if mrad_xXx > 9 then mrad_xXx = 0 end
	if mrad_xxX > 9 then mrad_xxX = 0 end

	local fuelUsed = tonumber(mrad_Xxx .. mrad_xXx .. mrad_xxX)
	if fuelUsed == 0 then
		fuelUsed = 0.1 -- place holder to not divide by 0
	end

	local fuelPerHour = 60 * 60 / measurementTime * fuelUsed

	-- we can use the roller for the fuel amount TODO: make the fuel function to get more accurate results
	-- Fuel quantity indicator
	local fuelQty_Xxxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1146) * 10, 0)
	local fuelQty_xXxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1147) * 10, 0)
	local fuelQty_xxXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1148) * 10, 0)
	local fuelQty_xxxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1149) * 10, 0)

	if fuelQty_Xxxx > 9 then fuelQty_Xxxx = 0 end
	if fuelQty_xXxx > 9 then fuelQty_xXxx = 0 end
	if fuelQty_xxXx > 9 then fuelQty_xxXx = 0 end
	if fuelQty_xxxX > 9 then fuelQty_xxxX = 0 end

	local fuelQtyTotal = fuelQty_Xxxx .. fuelQty_xXxx .. fuelQty_xxXx .. fuelQty_xxxX

	local fuelHrs = fuelQtyTotal/fuelPerHour
	local fuelMin = fuelHrs * 60
	local fuelSec = fuelMin * 60
	local fuelTimeReadout = formatTime3(fuelSec)

	local fuelString = ''

	if fuelUsed == 0.1 then -- place holder to not divide by 0
		--[[
		fuelString = 'Fuel Calc'
				.. '\nSet Mrad'
				.. '\nwith fuel'
				.. '\nuse over'
				.. '\n10 sec'
		]]
		fuelString = 'Fuel Calc'
				.. '\nSet Mrad w/'
				.. '\n10s fuel'
				.. '\nT - ' .. clockTimer
				.. '\nFuel ' .. fuelQtyTotal
	else
		fuelString = 'Fuel Calc'
				.. '\nT - ' .. clockTimer
				.. '\nRate - ' .. fuelUsed
				.. '\nFuel ' .. fuelQtyTotal
				.. '\n'.. fuelTimeReadout
	end

	ExportScript.Tools.SendData(8075, fuelString)
end

function ExportScript.ClimbSchedulesReadout(mainPanelDevice)
	local climbText1 = 'SUB CLMB\nCLEAN MIL\n470/0.92'
	local climbText2 = 'SUB CLMB\nCLEAN MAX\n500/0.95'
	local climbText3 = 'SUB CLMB\nTANK MIL\n422/0.84'
	local climbText4 = 'SUB CLMB\nTANK MAX\n475/0.92'
	local climbText5 = 'SUPER\nSUB to 30K\n610 to 36K\nM1.8 to ALT'
	ExportScript.Tools.SendData(8070, climbText1)
	ExportScript.Tools.SendData(8071, climbText2)
	ExportScript.Tools.SendData(8072, climbText3)
	ExportScript.Tools.SendData(8073, climbText4)
	ExportScript.Tools.SendData(8074, climbText5)
end

function ExportScript.RadarCalculators(mainPanelDevice)
	local scanDistance = ExportScript.Tools.round(mainPanelDevice:get_argument_value(258) * 100, 0)

	if scanDistance > 70 then
		scanDistance = 60
	elseif scanDistance > 40 then
		scanDistance = 35
	elseif scanDistance > 20 then
		scanDistance = 15
	else -- default distance
		scanDistance = 7
	end

	local lineScanAngle = ExportScript.Tools.round(mainPanelDevice:get_argument_value(600) * 100, 0)

	if lineScanAngle > 50 then
		lineScanAngle = 8
	else
		lineScanAngle = 4
	end

	local altBaroStandby = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1067) * 100000, 0)

	-- ((scanDistance/SIN((180-90-lineScanAngle)*PI()/180)) * (SIN(lineScanAngle*PI()/180))) * 6076 + altBaroStandby
	-- the above will be the top of the radar detection limit at range. for the bottom add a negative at the beginning

	local radarHiFull = ((scanDistance/math.sin((180-90-lineScanAngle)*math.pi/180))
			* (math.sin(lineScanAngle*math.pi/180)))
			* 6076 + altBaroStandby
	radarHiFull = round(radarHiFull,-2)

	local radarLoFull = -((scanDistance/math.sin((180-90-lineScanAngle)*math.pi/180))
			* (math.sin(lineScanAngle*math.pi/180)))
			* 6076 + altBaroStandby
	radarLoFull = round(radarLoFull,-2)

	-- Calculate the half of the distance. This is the center of the radar screen
	local radarHiHalf = (((scanDistance/2)/math.sin((180-90-lineScanAngle)*math.pi/180))
			* (math.sin(lineScanAngle*math.pi/180)))
			* 6076 + altBaroStandby
	radarHiHalf = round(radarHiHalf,-2)

	local radarLoHalf = -(((scanDistance/2)/math.sin((180-90-lineScanAngle)*math.pi/180))
			* (math.sin(lineScanAngle*math.pi/180)))
			* 6076 + altBaroStandby
	radarLoHalf = round(radarLoHalf,-2)

	radarHiFull = string.format("%.0f",round(format_int(radarHiFull / 1000,2)),0)
	radarLoFull = string.format("%.0f",round(format_int(radarLoFull / 1000,2)),0)
	radarHiHalf = string.format("%.0f",round(format_int(radarHiHalf / 1000,2)),0)
	radarLoHalf = string.format("%.0f",round(format_int(radarLoHalf / 1000,2)),0)

	-- format the numbers so that they display only 2 digits

	ExportScript.Tools.SendData(8068, 'RDR VOL'
			.. '\nNM ' .. 'HI' .. '/' .. 'LO'
			.. '\n' .. scanDistance .. ' ' .. radarHiFull .. '/' .. radarLoFull
			.. '\n' .. round(scanDistance/2,0) .. ' ' .. radarHiHalf .. '/' .. radarLoHalf)

	-- Radar Angle Calculator
	-- requires Altitude Delta
	-- requires Distance in NM

	-- Mach/Airspeed indicator reference airspeed knob for Distance in NM
	local awacsDist = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1270) * 66, 0) -- 66 by trial and error

	-- Exposure time repeater for Altitude Delta
	local altitudeDelta = round(mainPanelDevice:get_argument_value(774) * 66666, -3)

	local radarAngle = math.deg(math.asin(math.sin(90 * math.pi / 180)
	* (altitudeDelta / math.sqrt(math.pow(altitudeDelta,2) + math.pow((awacsDist * 6076),2)-2
	* altitudeDelta * (awacsDist * 6076) * math.cos(90 * math.pi / 180)))))

	if awacsDist == 0 and altitudeDelta == 0 then -- numbers not set
		awacsDist = 'NM-IAS Bug'
		altitudeDelta = 'ALTΔ-ExpRpt'
		ExportScript.Tools.SendData(8069, 'RDR ANGLE\n'
				.. awacsDist .. '\n'
				.. altitudeDelta.. '\n'
				.. 'RDR DEG°')
	elseif awacsDist == 0 then -- if dist is 0 then formula errors
		awacsDist = 'NM-IAS Bug'
		altitudeDelta = 'ALTΔ-ExpRpt'
		ExportScript.Tools.SendData(8069, 'RDR ANGLE\n'
				.. awacsDist .. '\n'
				.. altitudeDelta.. '\n'
				.. 'RDR DEG°')
	else
		ExportScript.Tools.SendData(8069, 'RDR ANGLE\n'
				.. awacsDist .. ' NM\n'
				.. altitudeDelta.. ' altΔ\n'
				.. 'RDR ' .. round(radarAngle,0) .. '°')
	end
end

function ExportScript.TrimReadout(mainPanelDevice)
	local trimRudder = ExportScript.Tools.round(mainPanelDevice:get_argument_value(723) * 100, 0)
	local trimRoll = ExportScript.Tools.round(mainPanelDevice:get_argument_value(724) * 100, 0)
	local trimPitch = ExportScript.Tools.round(mainPanelDevice:get_argument_value(725) * 100, 0)

	if trimRudder < 0 then
		trimRudder = math.abs(trimRudder) .. '% L'
	else
		trimRudder = math.abs(trimRudder) .. '% R'
	end

	if trimRoll < 0 then
		trimRoll = math.abs(trimRoll) .. '% R'
	else
		trimRoll = math.abs(trimRoll) .. '% L'
	end

	if trimPitch < 0 then
		trimPitch = math.abs(trimPitch) .. '% D'
	else
		trimPitch = math.abs(trimPitch) .. '% U'
	end

	ExportScript.Tools.SendData(8066, 'Trim\nRud ' .. trimRudder .. '\nRoll ' .. trimRoll .. '\nPitch ' .. trimPitch)
end

function ExportScript.MaxAirspeed(mainPanelDevice)
	-- TODO Make max mach here too (2.1)
	-- TODO And mach readout Tile
	-- TODO airspeed readout
	local altBaroStandby = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1067) * 100000, 0)
	local currentAirspeed = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1023) * 1000, 0)
	local isAirspeedLimit = 0
	if altBaroStandby < 20000 and currentAirspeed > 700 then
		isAirspeedLimit = 1
	end
	if altBaroStandby >= 20000 and currentAirspeed > 750 then
		isAirspeedLimit = 1
	end
	ExportScript.Tools.SendData(8062, isAirspeedLimit)
	ExportScript.Tools.SendData(8063, 'IAS\n' .. currentAirspeed .. ' kts')
	--ExportScript.Tools.SendData(8064, isAirspeedLimitMach)
	--ExportScript.Tools.SendData(8065, machReadout)

	-- this function will need to detect the Indicated mach level. if it is over 1.4 the
	-- aircraft is in overspeed mode, as indicated by RPM/
	-- the pilot should not use the throttle to slow down. They should use maneuvers and
	-- the speedbrake.
	-- have the button press be the speedbrakes

	--	[1023] = "%.4f", -- Mach/Airspeed window and needle
end

function ExportScript.DecentReadout(mainPanelDevice)
	-- Simple readouts
	local descentText1 = 'ECON DES\nRPM 6500\nBrake IN\nIAS 300kts'
	local descentText2 = 'OP DES\nRPM ~6500\nBrake IN\n0.92/450kts\nPath -10°'
	local descentText3 = 'FAST DES\nRPM 6500\nBrake OUT\nDive -20°'
	local descentText4 = 'LETDOWN\nRPM 6500\nBrake OUT\nIAS 300kts\nPath -10°'
	ExportScript.Tools.SendData(8058, descentText1)
	ExportScript.Tools.SendData(8059, descentText2)
	ExportScript.Tools.SendData(8060, descentText3)
	ExportScript.Tools.SendData(8061, descentText4)
end

function ExportScript.AlternatorEnvelope(mainPanelDevice)

	local altBaroStandby = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1067) * 100000, 0)
	local currentAirspeed = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1023) * 1000, 0)
	local isAlternatorZone = 0

	-- Zone 1: low air density and therefore ventilation is not so efficient
	if altBaroStandby > 35000 and currentAirspeed < 350 then
		isAlternatorZone = 1
	end
	-- TODO Figure out Zone 2: transition zone where ventilation is low

	ExportScript.Tools.SendData(8057, isAlternatorZone)
	-- With alternator failure light on, get out of the forbidden zone (see figure below) and switch off
	-- the corresponding failed alternator.
end

function ExportScript.MaxCeiling(mainPanelDevice)
	-- Ceiling (55k)
	-- Service ceiling (50k)

	-- Altimeter Pressure window
	local altBaroStandby = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1067) * 100000, 0)
	local isAltitudeMax = 0 -- will be 0, 1, and 2

	local maxAltText = 'Ceiling\nMAX ✅\nSVC ✅' -- below both limits
	-- account for below sea level
	if altBaroStandby > 90000 then
		altBaroStandby = altBaroStandby - 100000
	end

	if altBaroStandby >= 55000 then -- above both
		-- this does not work bc the standby attimeter stops at 50,000 TODO: fix that, somehow
		maxAltText = 'Ceiling\nMAX ❌\nSVC ❌'
		isAltitudeMax = 2
	elseif altBaroStandby >= 50000 then -- above service, but not max
		maxAltText = 'Ceiling\nMAX ✅\nSVC ❌'
		isAltitudeMax = 1
	end

	ExportScript.Tools.SendData(8055, maxAltText)
	ExportScript.Tools.SendData(8056, isAltitudeMax)
end

function ExportScript.OxygenIndicator(mainPanelDevice) -- TODO: Test
	-- Oxygen needle, 0.38 is blank zone, 0.13 is red zone
	local oxyNeedle = ExportScript.Tools.round(mainPanelDevice:get_argument_value(516) * 100, 0)
	local oxygenExportText = 'Oxygen\n' .. oxyNeedle .. '%\n🟢' -- green
	local isOxyDanger = 0 -- will be 0, 1, and 2

	if oxyNeedle < 38 then -- blank zone
		oxygenExportText = 'Oxygen\n' .. oxyNeedle .. '%\n🟡' -- yellow
		isOxyDanger = 1
	elseif oxyNeedle < 13 then -- red zone
		oxygenExportText = 'Oxygen\n' .. oxyNeedle .. '%\n🔴' -- red
		isOxyDanger = 2
	end

	ExportScript.Tools.SendData(8053, oxygenExportText)
	ExportScript.Tools.SendData(8054, isOxyDanger)

	local cockpitPressure = ExportScript.Tools.round(mainPanelDevice:get_argument_value(726) * 100000, 0)
	cockpitPressure = round(cockpitPressure, -2) -- in hundreds
	cockpitPressure = format_int(cockpitPressure)
	ExportScript.Tools.SendData(8067, '\n' .. cockpitPressure .. ' ft')
end

function ExportScript.ChuteLimitLogic(mainPanelDevice)
	-- if indicated airspeed is less than 210 kts, then chute can be deployed
	local currentAirspeed = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1023) * 1000, 0)

	local chuteLimitKts = 200
	local chuteWarnKts = 210
	local chuteExportText = 'Chute\n🟢' -- green
	local isChuteOverspeed = 0 -- will be 0, 1, and 2

	if currentAirspeed > chuteWarnKts then
		chuteExportText = 'Chute\n🔴' -- red
		isChuteOverspeed = 2
	elseif currentAirspeed > chuteLimitKts then
		chuteExportText = 'Chute\n🟡' -- yellow
		isChuteOverspeed = 1
	end

	ExportScript.Tools.SendData(8051, chuteExportText)
	ExportScript.Tools.SendData(8052, isChuteOverspeed)
end

function ExportScript.FlowBlinker(mainPanelDevice)
	local blink = mainPanelDevice:get_argument_value(719) -- FlowBlinker
	if blink > 0.0010 then
		blink = 1
	else
		blink = 0
	end
	ExportScript.Tools.SendData(8049, blink)
end

function ExportScript.DepressionAngleTables(mainPanelDevice)
	-- There are 9 tables. You can use the RETARD OVER.RUN to get all
	-- Display Demo (4 lines total)
	-- 250 LD BOMBS/MATRA F4 Rockets
	-- xxxkts/-xx°
	-- x,xxx ft
	-- Depression°

	-- Set altitude via airspeed indicator


	-- Mach/Airspeed indicator reference airspeed knob
	local heightIndicator = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1270), 2) -- round to two digits
	-- unfortunately this control is not arg adjusted. weird values must be used
	-- Overrun select thumbwheel
	local overRun = ExportScript.Tools.round(mainPanelDevice:get_argument_value(775) * 10, 0)

	if overRun > 9 then overRun = 0 end

	local depCalcExportString = ''
	local displayWeapon = ''
	local displayKts = ''
	local displayDive = ''
	local displayAlt = ''
	local displayDepAngle = ''

	if overRun == 1 then -- MATRA F4 Rockets, 320kts, dive -10°
		displayWeapon = 'MATRA F4'
		displayKts = '320kts'
		displayDive = '-10°'
		if heightIndicator > 0.80 then -- detects 6,000ft
			displayAlt = '6,000ft'
			displayDepAngle = '100'
		elseif heightIndicator > 0.70 then -- detects 5,000ft
			displayAlt = '5,000ft'
			displayDepAngle = '80'
		elseif heightIndicator > 0.58 then -- detects 4,000ft
			displayAlt = '4,000ft'
			displayDepAngle = '65'
		elseif heightIndicator > 0.44 then -- detects 3,000ft
			displayAlt = '3,000ft'
			displayDepAngle = '50'
		elseif heightIndicator > 0.30 then -- detects 2,000ft
			displayAlt = '2,000ft'
			displayDepAngle = '30'
		elseif heightIndicator > 0.18 then -- detects 1,500ft
			displayAlt = '1,500ft'
			displayDepAngle = '15'
		elseif heightIndicator > 0.07 then -- detects 1,000ft
			displayAlt = '1,000ft'
			displayDepAngle = '0'
		else
			displayAlt = 'Set Alt w/\nknots bug'
		end
	elseif overRun == 2 then -- MATRA F4 Rockets, 420kts, dive -10°
		displayWeapon = 'MATRA F4'
		displayKts = '420kts'
		displayDive = '-10°'
		if heightIndicator > 0.80 then -- detects 6,000ft
			displayAlt = '6,000ft'
			displayDepAngle = '80'
		elseif heightIndicator > 0.70 then -- detects 5,000ft
			displayAlt = '5,000ft'
			displayDepAngle = '60'
		elseif heightIndicator > 0.58 then -- detects 4,000ft
			displayAlt = '4,000ft'
			displayDepAngle = '45'
		elseif heightIndicator > 0.44 then -- detects 3,000ft
			displayAlt = '3,000ft'
			displayDepAngle = '25'
		elseif heightIndicator > 0.30 then -- detects 2,000ft
			displayAlt = '2,000ft'
			displayDepAngle = '10'
		elseif heightIndicator > 0.18 then -- detects 1,500ft
			displayAlt = '1,500ft'
			displayDepAngle = '5'
		elseif heightIndicator > 0.07 then -- detects 1,000ft
			displayAlt = '1,000ft'
			displayDepAngle = '0'
		else
			displayAlt = 'Set Alt w/\nknots bug'
		end
	elseif overRun == 3 then -- MATRA F4 Rockets, 450kts, dive -10°
		displayWeapon = 'MATRA F4'
		displayKts = '450kts'
		displayDive = '-10°'
		if heightIndicator > 0.80 then -- detects 6,000ft
			displayAlt = '6,000ft'
			displayDepAngle = '70'
		elseif heightIndicator > 0.70 then -- detects 5,000ft
			displayAlt = '5,000ft'
			displayDepAngle = '55'
		elseif heightIndicator > 0.58 then -- detects 4,000ft
			displayAlt = '4,000ft'
			displayDepAngle = '40'
		elseif heightIndicator > 0.44 then -- detects 3,000ft
			displayAlt = '3,000ft'
			displayDepAngle = '20'
		elseif heightIndicator > 0.30 then -- detects 2,000ft
			displayAlt = '2,000ft'
			displayDepAngle = '10'
		elseif heightIndicator > 0.18 then -- detects 1,500ft
			displayAlt = '1,500ft'
			displayDepAngle = '5'
		elseif heightIndicator > 0.07 then -- detects 1,000ft
			displayAlt = '1,000ft'
			displayDepAngle = '0'
		else
			displayAlt = 'Set Alt w/\nknots bug'
		end
	elseif overRun == 4 then -- MATRA F4 Rockets, 400kts, dive -15°
		displayWeapon = 'MATRA F4'
		displayKts = '400kts'
		displayDive = '-15°'
		if heightIndicator > 0.80 then -- detects 6,000ft
			displayAlt = '6,000ft'
			displayDepAngle = '55'
		elseif heightIndicator > 0.70 then -- detects 5,000ft
			displayAlt = '5,000ft'
			displayDepAngle = '45'
		elseif heightIndicator > 0.58 then -- detects 4,000ft
			displayAlt = '4,000ft'
			displayDepAngle = '30'
		elseif heightIndicator > 0.44 then -- detects 3,000ft
			displayAlt = '3,000ft'
			displayDepAngle = '20'
		elseif heightIndicator > 0.30 then -- detects 2,000ft
			displayAlt = '2,000ft'
			displayDepAngle = '10'
		elseif heightIndicator > 0.18 then -- detects 1,500ft
			displayAlt = '1,500ft'
			displayDepAngle = '10'
		elseif heightIndicator > 0.07 then -- detects 1,000ft
			displayAlt = '1,000ft'
			displayDepAngle = '5'
		else
			displayAlt = 'Set Alt w/\nknots bug'
		end
	elseif overRun == 5 then -- MATRA F4 Rockets, 450kts, dive -15°
		displayWeapon = 'MATRA F4'
		displayKts = '450kts'
		displayDive = '-15°'
		if heightIndicator > 0.80 then -- detects 6,000ft
			displayAlt = '6,000ft'
			displayDepAngle = '50'
		elseif heightIndicator > 0.70 then -- detects 5,000ft
			displayAlt = '5,000ft'
			displayDepAngle = '40'
		elseif heightIndicator > 0.58 then -- detects 4,000ft
			displayAlt = '4,000ft'
			displayDepAngle = '25'
		elseif heightIndicator > 0.44 then -- detects 3,000ft
			displayAlt = '3,000ft'
			displayDepAngle = '10'
		elseif heightIndicator > 0.30 then -- detects 2,000ft
			displayAlt = '2,000ft'
			displayDepAngle = '0'
		elseif heightIndicator > 0.18 then -- detects 1,500ft
			displayAlt = '1,500ft'
			displayDepAngle = '0'
		elseif heightIndicator > 0.07 then -- detects 1,000ft
			displayAlt = '1,000ft'
			displayDepAngle = '0'
		else
			displayAlt = 'Set Alt w/\nknots bug'
		end
	elseif overRun == 6 then -- SAMP 250 LD Bombs, 400kts, dive -10°
		displayWeapon = 'SAMP 250LD'
		displayKts = '400kts'
		displayDive = '-10°'
		if heightIndicator > 0.30 then -- detects 2,000ft
			displayAlt = '2,000ft'
			displayDepAngle = '170'
		elseif heightIndicator > 0.18 then -- detects 1,500ft
			displayAlt = '1,500ft'
			displayDepAngle = '140'
		elseif heightIndicator > 0.07 then -- detects 1,000ft
			displayAlt = '1,000ft'
			displayDepAngle = '100'
		else
			displayAlt = 'Set Alt w/\nknots bug'
		end
	elseif overRun == 7 then -- SAMP 250 LD Bombs, 500kts, dive -10°
		displayWeapon = 'SAMP 250LD'
		displayKts = '500kts'
		displayDive = '-10°'
		if heightIndicator > 0.58 then -- detects 4,000ft
			displayAlt = '4,000ft'
			displayDepAngle = '175'
		elseif heightIndicator > 0.44 then -- detects 3,000ft
			displayAlt = '3,000ft'
			displayDepAngle = '140'
		elseif heightIndicator > 0.30 then -- detects 2,000ft
			displayAlt = '2,000ft'
			displayDepAngle = '105'
		elseif heightIndicator > 0.18 then -- detects 1,500ft
			displayAlt = '1,500ft'
			displayDepAngle = '80'
		elseif heightIndicator > 0.07 then -- detects 1,000ft
			displayAlt = '1,000ft'
			displayDepAngle = '55'
		else
			displayAlt = 'Set Alt w/\nknots bug'
		end
	elseif overRun == 8 then -- SAMP 250 LD Bombs, 420kts, dive -20°
		displayWeapon = 'SAMP 250LD'
		displayKts = '420kts'
		displayDive = '-20°'
		if heightIndicator > 0.58 then -- detects 4,000ft
			displayAlt = '4,000ft'
			displayDepAngle = '170'
		elseif heightIndicator > 0.44 then -- detects 3,000ft
			displayAlt = '3,000ft'
			displayDepAngle = '140'
		elseif heightIndicator > 0.30 then -- detects 2,000ft
			displayAlt = '2,000ft'
			displayDepAngle = '110'
		elseif heightIndicator > 0.18 then -- detects 1,500ft
			displayAlt = '1,500ft'
			displayDepAngle = '85'
		elseif heightIndicator > 0.07 then -- detects 1,000ft
			displayAlt = '1,000ft'
			displayDepAngle = '65'
		else
			displayAlt = 'Set Alt w/\nknots bug'
		end
	elseif overRun == 9 then -- SAMP 250 LD Bombs, 500kts, dive -20°
		displayWeapon = 'SAMP 250LD'
		displayKts = '500kts'
		displayDive = '-20°'
		if heightIndicator > 0.58 then -- detects 4,000ft
			displayAlt = '4,000ft'
			displayDepAngle = '125'
		elseif heightIndicator > 0.44 then -- detects 3,000ft
			displayAlt = '3,000ft'
			displayDepAngle = '110'
		elseif heightIndicator > 0.30 then -- detects 2,000ft
			displayAlt = '2,000ft'
			displayDepAngle = '70'
		elseif heightIndicator > 0.18 then -- detects 1,500ft
			displayAlt = '1,500ft'
			displayDepAngle = '55'
		elseif heightIndicator > 0.07 then -- detects 1,000ft
			displayAlt = '1,000ft'
			displayDepAngle = '35'
		else
			displayAlt = 'Set Alt w/\nknots bug'
		end
	end

	depCalcExportString = displayWeapon
			.. '\n' .. displayKts .. '/' .. displayDive
			.. '\n' .. displayAlt
			.. '\n' .. displayDepAngle .. ' Mrad'

	if overRun == 0 then -- display a default value. might have to move this to the end
		depCalcExportString = 'Dep Tables\n - Turn\nOverrun\nfor Tables'
	end

	ExportScript.Tools.SendData(8043, depCalcExportString)

	if displayDepAngle == '' then displayDepAngle = 'XXX' end
	ExportScript.Tools.SendData(8044, 'Mrad\n' .. displayDepAngle)

	if displayDive == '' then displayDive = '-XX°' end
	ExportScript.Tools.SendData(8045, 'Dive\n'.. displayDive)

	if displayAlt == '' then displayAlt = 'XXXX' end
	ExportScript.Tools.SendData(8046, 'Alt\n'.. displayAlt)

	if displayKts == '' then displayKts = 'XXX' end
	ExportScript.Tools.SendData(8047, 'Kts\n' .. displayKts)

	if displayWeapon == '' then displayWeapon = 'Weapon' end
	if displayWeapon == 'SAMP 250LD' then displayWeapon = 'SAMP\n250LD' end
	if displayWeapon == 'MATRA F4' then displayWeapon = 'MATRA\nF4' end
	ExportScript.Tools.SendData(8048, displayWeapon)
end

function ExportScript.HsiReadouts(mainPanelDevice)
	-- aircraft heading
	-- use the 360 because the hsi turns backwards...
	local hsiHeading = 360 - ExportScript.Tools.round(mainPanelDevice:get_argument_value(1189) * 360, 0)

	-- heading bug
	local hsiHeadingBug = hsiHeading +
			ExportScript.Tools.round(mainPanelDevice:get_argument_value(1190) * 360, 0)
	if hsiHeadingBug > 360 then
		hsiHeadingBug = hsiHeadingBug - 360
	end
	-- hsi needle 2
	local hsiNeedle2 = hsiHeading +
			ExportScript.Tools.round(mainPanelDevice:get_argument_value(1191) * 360, 0)
	if hsiNeedle2 > 360 then
		hsiNeedle2 = hsiNeedle2 - 360
	end

	-- hsi needle 1
	local hsiNeedle1 = hsiHeading +
			ExportScript.Tools.round(mainPanelDevice:get_argument_value(1192) * 360, 0)
	if hsiNeedle1 > 360 then
		hsiNeedle1 = hsiNeedle1 - 360
	end

	-- HSI distance readout
	local hsiDistReadout_Xxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1193) * 10, 0)
	local hsiDistReadout_xXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1194) * 10, 0)
	local hsiDistReadout_xxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1195) * 10, 0)

	if hsiDistReadout_Xxx > 9 then hsiDistReadout_Xxx = 0 end
	if hsiDistReadout_xXx > 9 then hsiDistReadout_xXx = 0 end
	if hsiDistReadout_xxX > 9 then hsiDistReadout_xxX = 0 end

	local hsiDistReadout = hsiDistReadout_Xxx .. hsiDistReadout_xXx .. hsiDistReadout_xxX

	-- HSI bearing
	local hsiBearingReadout_Xxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1197) * 10, 0)
	local hsiBearingReadout_xXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1198) * 10, 0)
	local hsiBearingReadout_xxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1199) * 10, 0)

	if hsiBearingReadout_Xxx > 9 then hsiBearingReadout_Xxx = 0 end
	if hsiBearingReadout_xXx > 9 then hsiBearingReadout_xXx = 0 end
	if hsiBearingReadout_xxX > 9 then hsiBearingReadout_xxX = 0 end

	local hsiBearingReadout = hsiBearingReadout_Xxx .. hsiBearingReadout_xXx .. hsiBearingReadout_xxX

	-- HSI vector distance
	local hsiDistVectReadout_Xxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1200) * 10, 0)
	local hsiDistVectReadout_xXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1201) * 10, 0)
	local hsiDistVectReadout_xxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1202) * 10, 0)

	if hsiDistVectReadout_Xxx > 9 then hsiDistVectReadout_Xxx = 0 end
	if hsiDistVectReadout_xXx > 9 then hsiDistVectReadout_xXx = 0 end
	if hsiDistVectReadout_xxX > 9 then hsiDistVectReadout_xxX = 0 end

	local hsiDistVectReadout = hsiDistVectReadout_Xxx .. hsiDistVectReadout_xXx .. hsiDistVectReadout_xxX

	local brngSelect = '  '
	local distSelect = '  '
	local vectSelect = ' '
	-- ➤
	if mainPanelDevice:get_argument_value(1206) == 1 then
		distSelect = '➤'
	end
	if mainPanelDevice:get_argument_value(1206) == 0 then
		brngSelect = '➤'
	end
	if mainPanelDevice:get_argument_value(1205) == 1 then
		vectSelect = '➤'
	end

	ExportScript.Tools.SendData(8022,'HDG ' .. prefixZerosFixedLength(hsiHeading,3)
			.. '\nBUG ' .. prefixZerosFixedLength(hsiHeadingBug,3)
			.. '\nDST ' .. hsiDistReadout
	)
	ExportScript.Tools.SendData(8023,'HDG ' .. prefixZerosFixedLength(hsiHeading,3)
			.. '\nN1  ' .. prefixZerosFixedLength(hsiNeedle1,3)
			.. '\nN2  ' .. prefixZerosFixedLength(hsiNeedle2,3)
	)

	ExportScript.Tools.SendData(8024, vectSelect .. 'VECT.'
			.. '\n' .. brngSelect .. 'BRG ' .. hsiBearingReadout
			.. '\n' .. distSelect .. 'DST ' .. hsiDistVectReadout
	)
end

function ExportScript.AccelerometerReadout(mainPanelDevice)
	local accelMax = ExportScript.Tools.round(mainPanelDevice:get_argument_value(217) * 11.5, 1)
	local accelCurrent = ExportScript.Tools.round(mainPanelDevice:get_argument_value(218) * 11.5, 1)
	local accelMin = ExportScript.Tools.round(mainPanelDevice:get_argument_value(219) * -11.5, 1)
	if accelMin == 0 then accelMin = 0 end

	ExportScript.Tools.SendData(8019,'G ' .. accelCurrent
	.. '\nG MAX ' .. accelMax
	.. '\nG MIN ' ..accelMin)
end

function ExportScript.EngineRestartLogic(mainPanelDevice)
	-- Throttle at idle
	-- Min 1100 RPM
	-- Correct Airspeed
	-- Correct Altitude
	-- Move forward the in-flight relight button, located in the left console, under the throttle lever

	-- Let's do this based on the altitude of the aircraft. It will determine the speed

	-- Get the altitude using the standby altimeter
	-- ✔
	-- ✅ boxed
	-- ❌
	local isThrottleOk = 0
	local isRpmOk = 0
	local isAirspeedOk = 0
	local isRestartOk = 0
	local throttleIcon = '❌'
	local rpmIcon = '❌'
	local airspeedIcon = '❌'
	local restartIcon = '❌'

	-- Altimeter Pressure window
	local altBaroStandby = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1067) * 100000, 0)
	local restartAirspeed = 0
	-- Make an equation that fits the regions

	if altBaroStandby > 90000 then
		altBaroStandby = altBaroStandby - 100000
	end

	if altBaroStandby <= 20000 then
		restartAirspeed = (-0.01 * altBaroStandby) + 600
	else
		restartAirspeed = (-0.0125 * altBaroStandby) + 550
	end

	local currentAirspeed = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1023) * 1000, 0)
	local ktsIndication = ' FST'

	if currentAirspeed < restartAirspeed then
		isAirspeedOk = 1
		airspeedIcon = '✅'
		ktsIndication = '    '
	else
		ktsIndication = ' FST' -- aircraft is too fast (above the envelope curve)
	end

	-- Engine RPM Check
	local engineRPM = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1027) * 10000, 0)
	local rpmIndication
	if engineRPM > 1100 then
		isRpmOk = 1
		rpmIcon = '✅'
		rpmIndication = '    '
	else
		rpmIndication = ' LOW'
	end

	if mainPanelDevice:get_argument_value(234) < 0.01 then --	[234] = "%.4f", -- Throttle
		isThrottleOk = 1
		throttleIcon = '✅'
	end

	if isAirspeedOk == 1 and isRpmOk == 1 and isThrottleOk == 1 then
		isRestartOk = 1
		restartIcon = '✅'
	end

	-- Uniform spacing
	-- ✔ Cutoff
	-- ✔ RPM LO
	-- ✔ Kts FST
	-- ✔ RESTART
	ExportScript.Tools.SendData(8020, throttleIcon .. ' Cutoff \n'
			.. rpmIcon .. ' RPM' .. rpmIndication .. '\n'
			.. airspeedIcon .. ' Kts' .. ktsIndication .. '\n'
			.. restartIcon .. ' RESTART\n')

	local isCutoff = 0
	if mainPanelDevice:get_argument_value(234) < 0.01 -- if the throttle is at idle
			or mainPanelDevice:get_argument_value(239) > 0.5 -- or if the cutoff switch is engaged
	then -- use the second icon
		isCutoff = 1
	end
	ExportScript.Tools.SendData(8021, isCutoff) -- this is for the icon
end

function ExportScript.CountermeasureReadouts(mainPanelDevice)

	local cmChaff_Xx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(210) * 10, 0)
	local cmChaff_xX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(211) * 10, 0)

	local cmFlare_Xx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(213) * 10, 0)
	local cmFlare_xX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(214) * 10, 0)

	if cmChaff_Xx > 9 then
		cmChaff_Xx = 0
	end
	if cmChaff_xX > 9 then
		cmChaff_xX = 0
	end
	if cmFlare_Xx > 9 then
		cmFlare_Xx = 0
	end
	if cmFlare_xX > 9 then
		cmFlare_xX = 0
	end
	ExportScript.Tools.SendData(8014, cmChaff_Xx .. cmChaff_xX .. '\nCHAFF')
	ExportScript.Tools.SendData(8015, cmFlare_Xx .. cmFlare_xX .. '\nFLARE')
	ExportScript.Tools.SendData(8016, 'C ' .. cmChaff_Xx .. cmChaff_xX
									.. '\nF ' .. cmFlare_Xx .. cmFlare_xX)

	--[[ Spacing Demo
    0.0=C      F
    H  ⫷  L
    A  ⫷  A
    F  ⫷  R
    F      E,0.5=C     F
    H  ⦾  L
    A  ⦾  A
    F  ⦾  R
    F      E,1.0=C      F
    H  ⫸  L
    A  ⫸  A
    F  ⫸  R
    F      E
    ]]

	local cmSelect = mainPanelDevice:get_argument_value(208)
	local cmSelectString = 'C      F\nH  ⦾  L\nA  ⦾  A\nF  ⦾  R\nF      E'
	if cmSelect == 0 then
		cmSelectString = 'C      F\nH  ⫷  L\nA  ⫷  A\nF  ⫷  R\nF      E'
	end
	if cmSelect == 1 then
		cmSelectString = 'C      F\nH  ⫸  L\nA  ⫸  A\nF  ⫸  R\nF      E'
	end
	ExportScript.Tools.SendData(8017, cmSelectString)
end

function ExportScript.AoaIndicator(mainPanelDevice)
	-- this scale is accurate above 10 AoA
	-- below 10 AoA margin of error may be about 2 AoA

	local multiplier = 24
	local aoaLevel = ExportScript.Tools.round(mainPanelDevice:get_argument_value(203) * multiplier,1)
	local aoaCircleColor = '⚪' -- init with white

	if aoaLevel < 30 then
		aoaCircleColor = '🔴'
	end
	if aoaLevel < 15.5 then
		aoaCircleColor = '🟡'
	end
	if aoaLevel < 12.5 then
		aoaCircleColor = '🟢'
	end
	if aoaLevel < 9.5 then
		aoaCircleColor = '🔵'
	end
	if aoaLevel < 6 then
		aoaCircleColor = '⚪'
	end

	if aoaLevel > 22 then  -- actual indicator limit is 22
		aoaLevel = 22
	end

	ExportScript.Tools.SendData(8037,  'AoA' .. aoaCircleColor .. '\n' .. round(aoaLevel,0))
end

function ExportScript.GearSlatLogic(mainPanelDevice)
	-- Show different colors based on gear state
	
	-- ⚪ white
	-- ⚫ black
	-- 🟡 yellow
	-- 🔴 red
	-- 🟢 green
	-- 🔵 blue
	
	-- Gear circle layout
	-- 123  ⚪⚪⚪
	-- 456  ⚪⚪⚪
	-- 1 and 4 are either both green or both white
	-- 3 and 6 are either both green or both white
	-- 2 can be white or red
	-- 5 can be white or red

	local circle1 = '⚪' -- init with white
	local circle2 = '⚪' -- init with white
	local circle3 = '⚪' -- init with white
	local circle4 = '⚪' -- init with white
	local circle5 = '⚪' -- init with white
	local circle6 = '⚪' -- init with white
	
	
	-- transit light
	if mainPanelDevice:get_argument_value(1091) > 0 then
		circle2 = '🔴'
	end
	
	-- left gear
	if mainPanelDevice:get_argument_value(1090) > 0 then
		circle1 = '🟢'
		circle4 = '🟢'
	end
	
	-- right gear
	if mainPanelDevice:get_argument_value(1093) > 0 then
		circle3 = '🟢'
		circle6 = '🟢'
	end
	
	-- main tire light
	if mainPanelDevice:get_argument_value(1092) > 0 then
		circle5 = '🟢'
	end

	local gearArrow = '⇑'
	
	if mainPanelDevice:get_argument_value(86) == 1 then
		gearArrow = '⇓'
	end
	
	ExportScript.Tools.SendData(8035,  'GEAR' .. gearArrow
									.. '\n' .. circle1 .. circle2 .. circle3
									.. '\n' .. circle4 .. circle5 .. circle6
	)
	
	local slatLight = '⚪' -- init with white
	local flapLight = '⚪' -- init with white
	local slatTransitLight = '⚪' -- init with white
	local flapTransitLight = '⚪' -- init with white
	
	-- ⚪ white
	-- ⚫ black
	-- 🟡 yellow
	-- 🔴 red
	-- 🟢 green
	
	
	-- Slats
	if mainPanelDevice:get_argument_value(1083) > 0 then
		slatLight = '🟢'
	end
	if mainPanelDevice:get_argument_value(1084) > 0 then
		slatLight = '🟡'
	end
	
	if mainPanelDevice:get_argument_value(1085) > 0 then
		slatTransitLight = '🔴'
	end
	
	-- Flaps
	if mainPanelDevice:get_argument_value(1086) > 0 then
		flapTransitLight = '🔴'
	end
	if mainPanelDevice:get_argument_value(1087) > 0 then
		flapLight = '🟡'
	end
	if mainPanelDevice:get_argument_value(1088) > 0 then
		flapLight = '🟢'
	end
	
	local flapArrow = ''
	
	if mainPanelDevice:get_argument_value(248) == 1 then
		flapArrow = '⇓'
	end
	
	if mainPanelDevice:get_argument_value(248) == 0.5 then
		flapArrow = '⇔'
	end
	
	if mainPanelDevice:get_argument_value(248) == 0 then
		flapArrow = '⇑'
	end 
	
	ExportScript.Tools.SendData(8036,  'FLAP' .. flapArrow
									.. '\n' .. slatTransitLight .. flapTransitLight
									.. '\n' .. slatLight .. flapLight
									)
end

function ExportScript.WeaponPushbuttonLogic(mainPanelDevice)
	-- light up the button when the button is lit or when depressed
	local isExtGon = 0
	local isMgFuson = 0
	local isCanAon = 0
	local isBombVolon = 0
	local isExtDon = 0
	local isMDon = 0
	local isCanSRoQon = 0
	local isBombFuson = 0

	if mainPanelDevice:get_argument_value(604) > 0 or mainPanelDevice:get_argument_value(605) > 0 then
		isExtGon = 1
	end
	
	if mainPanelDevice:get_argument_value(606) > 0 or mainPanelDevice:get_argument_value(607) > 0 then
		isMgFuson = 1
	end
	
	if mainPanelDevice:get_argument_value(608) > 0 or mainPanelDevice:get_argument_value(609) > 0 then
		isCanAon = 1
	end
	
	if mainPanelDevice:get_argument_value(610) > 0 or mainPanelDevice:get_argument_value(611) > 0 then
		isBombVolon = 1
	end
	
	if mainPanelDevice:get_argument_value(612) > 0 or mainPanelDevice:get_argument_value(613) > 0 then
		isExtDon = 1
	end
	
	if mainPanelDevice:get_argument_value(614) > 0 or mainPanelDevice:get_argument_value(615) > 0 then
		isMDon = 1
	end
	
	if mainPanelDevice:get_argument_value(616) > 0 or mainPanelDevice:get_argument_value(617) > 0 then
		isCanSRoQon = 1
	end
	
	if mainPanelDevice:get_argument_value(618) > 0 or mainPanelDevice:get_argument_value(619) > 0 then
		isBombFuson = 1
	end
	
	ExportScript.Tools.SendData(8027, isExtGon)
	ExportScript.Tools.SendData(8028, isMgFuson)
	ExportScript.Tools.SendData(8029, isCanAon)
	ExportScript.Tools.SendData(8030, isBombVolon)
	ExportScript.Tools.SendData(8031, isExtDon)
	ExportScript.Tools.SendData(8032, isMDon)
	ExportScript.Tools.SendData(8033, isCanSRoQon)
	ExportScript.Tools.SendData(8034, isBombFuson)

end

function ExportScript.AutopilotLightLogic(mainPanelDevice)

	local isPAon = 0
	local isALTon = 0
	local isCAPon = 0
	local isRon = 0
	local isGon = 0
	
	if mainPanelDevice:get_argument_value(975) > 0 or mainPanelDevice:get_argument_value(976) > 0 then
		isPAon = 1
	end
	
	if mainPanelDevice:get_argument_value(978) > 0 or mainPanelDevice:get_argument_value(979) > 0 then
		isALTon = 1
	end
	
	if mainPanelDevice:get_argument_value(981) > 0 then
		isCAPon = 1
	end
	
	if mainPanelDevice:get_argument_value(983) > 0 or mainPanelDevice:get_argument_value(984) > 0
		or mainPanelDevice:get_argument_value(985) > 0 or mainPanelDevice:get_argument_value(986) > 0 then
		isRon = 1
	end
	
	if mainPanelDevice:get_argument_value(988) > 0 or mainPanelDevice:get_argument_value(989) > 0
		or mainPanelDevice:get_argument_value(990) > 0 or mainPanelDevice:get_argument_value(991) > 0 then
		isGon = 1
	end
	
	ExportScript.Tools.SendData(8038, isPAon)
	ExportScript.Tools.SendData(8039, isALTon)
	ExportScript.Tools.SendData(8040, isCAPon)
	ExportScript.Tools.SendData(8041, isRon)
	ExportScript.Tools.SendData(8042, isGon)
end

function ExportScript.VorIlsTacanOmnibearing(mainPanelDevice)
	-- VOR_ILS
	local vor_ils_Xxxxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(498) * 10, 0)
	local vor_ils_xXxxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(499) * 10, 0)
	local vor_ils_xxXxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(500) * 10, 0)
	local vor_ils_dot = '.'
	local vor_ils_xxxXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(501) * 10, 0)
	local vor_ils_xxxxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(502) * 10, 0)

	if vor_ils_xxXxx > 9 then vor_ils_xxXxx = 0 end -- corrects rounding errors in the module
	if vor_ils_xxxXx > 9 then vor_ils_xxxXx = 0 end

	local ilsReadout = vor_ils_Xxxxx .. vor_ils_xXxxx .. vor_ils_xxXxx
			.. vor_ils_dot .. vor_ils_xxxXx .. vor_ils_xxxxX
	ExportScript.Tools.SendData(8000, 'VOR_ILS\n' .. ilsReadout)

	-- TACAN
	local tacan_XY = ExportScript.Tools.round(mainPanelDevice:get_argument_value(481) * 10, 0)
	local tacan_Xxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(482) * 10, 0)
	local tacan_xXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(483) * 10, 0)
	local tacan_xxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(484) * 10, 0)

	if tacan_XY > 1 then
		tacan_XY = 'Y'
	else
		tacan_XY = 'X'
	end

	if tacan_Xxx < 1 then tacan_Xxx = ' ' end
	if tacan_xXx > 9 then tacan_xXx = 0 end
	if tacan_xxX > 9 then tacan_xxX = 0 end

	local tacanReadout = tacan_XY .. tacan_Xxx .. tacan_xXx .. tacan_xxX
	ExportScript.Tools.SendData(8001, 'TACAN\n' .. tacanReadout)
	
	ExportScript.Tools.SendData(8025, 'TACAN\n' .. tacan_Xxx .. tacan_xXx .. '-')
	ExportScript.Tools.SendData(8026, 'TACAN\n' .. '-' .. tacan_xxX)
	
	-- Omnibearing Indicator (Course)
	local omni_Xxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(541) * 10, 0)
	local omni_xXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(542) * 10, 0)
	local omni_xxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(543) * 10, 0)

	if omni_Xxx > 9 then omni_Xxx = 0 end
	if omni_xXx > 9 then omni_xXx = 0 end
	if omni_xxX > 9 then omni_xxX = 0 end

	local omniReadout = omni_Xxx .. omni_xXx .. omni_xxX

	ExportScript.Tools.SendData(8002, 'OMNI\n' .. omniReadout)

	ExportScript.Tools.SendData(8003, 'TCN ' .. tacanReadout
									.. '\nNAV ' .. ilsReadout
									.. '\nOMNI ' .. omniReadout)
end

function ExportScript.CockpitInstruments(mainPanelDevice)
	-- Engine RPM
	local engineRPM = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1027) * 10000, 0)
	engineRPM = format_int(engineRPM)

	-- Engine temp needle
	local engineTemp = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1028) * 1000, 0)
	engineTemp = format_int(engineTemp)
	ExportScript.Tools.SendData(8004, 'Engine\n' .. engineRPM .. ' RPM' .. '\n' .. engineTemp .. ' °C')

	local fuelG_needle = mainPanelDevice:get_argument_value(1142)
	if fuelG_needle < 0.8 then
		fuelG_needle = ExportScript.Tools.round(fuelG_needle * 1000, 0)
	elseif fuelG_needle < 0.9 then
		fuelG_needle = ExportScript.Tools.round(fuelG_needle * 2000 - 800, 0)
	elseif fuelG_needle < 0.968 then
		fuelG_needle = ExportScript.Tools.round(fuelG_needle * 13158 - 10737, 0)
	else
		fuelG_needle = ExportScript.Tools.round(fuelG_needle * 6250 - 4050, 0)
	end

	local fuelD_needle = mainPanelDevice:get_argument_value(1143)
	if fuelD_needle < 0.8 then
		fuelD_needle = ExportScript.Tools.round(fuelD_needle * 1000, 0)
	elseif fuelD_needle < 0.9 then
		fuelD_needle = ExportScript.Tools.round(fuelD_needle * 2000 - 800, 0)
	elseif fuelD_needle < 0.968 then
		fuelD_needle = ExportScript.Tools.round(fuelD_needle * 13158 - 10737, 0)
	else
		fuelD_needle = ExportScript.Tools.round(fuelD_needle * 6250 - 4050, 0)
	end

	local fuelTot_needle = fuelG_needle + fuelD_needle

	local fuelTot_needle_format
	if fuelTot_needle > 3812 then --3812
		fuelTot_needle_format = format_int(fuelTot_needle) .. '+'
	else
		fuelTot_needle_format = format_int(fuelTot_needle)
	end

	local fuelG_needle_format = format_int(fuelG_needle)
	local fuelD_needle_format = format_int(fuelD_needle)

	ExportScript.Tools.SendData(8005, 'Fuel (L)\nTot ' .. fuelTot_needle_format
			.. '\nG ' .. fuelG_needle_format
			.. '\nD ' .. fuelD_needle_format
	)

	-- Fuel quantity indicator
	local fuelQty_Xxxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1146) * 10, 0)
	local fuelQty_xXxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1147) * 10, 0)
	local fuelQty_xxXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1148) * 10, 0)
	local fuelQty_xxxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1149) * 10, 0)

	if fuelQty_Xxxx > 9 then fuelQty_Xxxx = 0 end
	if fuelQty_xXxx > 9 then fuelQty_xXxx = 0 end
	if fuelQty_xxXx > 9 then fuelQty_xxXx = 0 end
	if fuelQty_xxxX > 9 then fuelQty_xxxX = 0 end

	local fuelQtyTotal = fuelQty_Xxxx .. fuelQty_xXxx .. fuelQty_xxXx .. fuelQty_xxxX
	ExportScript.Tools.SendData(8006, 'Fuel (L)\nTot ' .. format_int(fuelQtyTotal)
	.. '\nG ' .. format_int(fuelG_needle)
	.. '\nD ' .. format_int(fuelD_needle)
	)

	-- Altimeter Pressure window
	local altBaroPress_Xxxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1049) * 10, 0)
	local altBaroPress_xXxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1050) * 10, 0)
	local altBaroPress_xxXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1051) * 10, 0)
	local altBaroPress_xxxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1052) * 10, 0)

	if altBaroPress_Xxxx > 9 then altBaroPress_Xxxx = 0 end
	if altBaroPress_xXxx > 9 then altBaroPress_xXxx = 0 end
	if altBaroPress_xxXx > 9 then altBaroPress_xxXx = 0 end
	if altBaroPress_xxxX > 9 then altBaroPress_xxxX = 0 end

	local altBaroPressReadout = altBaroPress_Xxxx .. altBaroPress_xXxx .. altBaroPress_xxXx .. altBaroPress_xxxX

	-- Altimeter
	local altBaro_Xxxxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1045) * 10, 0)
	local altBaro_xXxxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1046) * 10, 0)
	local altBaro_xxXxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1047) * 10, 0)
	local altBaro_xxxXX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1048) * 100, 0) -- goes in 10s

	if altBaro_Xxxxx > 9 or altBaro_Xxxxx < 0 then altBaro_Xxxxx = 0 end
	if altBaro_xXxxx > 9 or altBaro_xXxxx < 0 then altBaro_xXxxx = 0 end
	if altBaro_xxXxx > 9 or altBaro_xxXxx < 0 then altBaro_xxXxx = 0 end
	if altBaro_xxxXX > 90 or altBaro_xxxXX < 0 then altBaro_xxxXX = 0 end

	altBaro_xxxXX = round(altBaro_xxxXX, -1)
	altBaro_xxxXX = prefixZerosFixedLength(altBaro_xxxXX,2)

	local altBaroReadout = altBaro_Xxxxx .. altBaro_xXxxx .. altBaro_xxXxx .. altBaro_xxxXX
	altBaroReadout = round(altBaroReadout,-2)


	-- Vertical speed needle
	local vsiReadout = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1025) * 10000, 0)
	if vsiReadout < 5999 and vsiReadout > -5999 then
	vsiReadout = format_int(round(vsiReadout,-2)) .. ' fpm'
	else
	vsiReadout = format_int(round(vsiReadout,-2))  .. '+ fpm'
	end

	ExportScript.Tools.SendData(8007, 'FLT INST\n'
	.. format_int(altBaroReadout) .. ' ft\n'
	.. altBaroPressReadout .. ' mb\n'
	.. vsiReadout
	)
end


function ExportScript.qfeCalculator(mainPanelDevice)
	-- Altimeter Pressure window
	local altBaroPress_Xxxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1049) * 10, 0)
	local altBaroPress_xXxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1050) * 10, 0)
	local altBaroPress_xxXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1051) * 10, 0)
	local altBaroPress_xxxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1052) * 10, 0)

	if altBaroPress_Xxxx > 9 then altBaroPress_Xxxx = 0 end
	if altBaroPress_xXxx > 9 then altBaroPress_xXxx = 0 end
	if altBaroPress_xxXx > 9 then altBaroPress_xxXx = 0 end
	if altBaroPress_xxxX > 9 then altBaroPress_xxxX = 0 end

	local altBaroPressReadout = altBaroPress_Xxxx .. altBaroPress_xXxx .. altBaroPress_xxXx .. altBaroPress_xxxX

	-- Altimeter Pressure window
	local altBaroStandbyPress_Xxxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1068) * 10, 0)
	local altBaroStandbyPress_xXxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1069) * 10, 0)
	local altBaroStandbyPress_xxXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1070) * 10, 0)
	local altBaroStandbyPress_xxxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(1071) * 10, 0)

	if altBaroStandbyPress_Xxxx > 9 then altBaroStandbyPress_Xxxx = 0 end
	if altBaroStandbyPress_xXxx > 9 then altBaroStandbyPress_xXxx = 0 end
	if altBaroStandbyPress_xxXx > 9 then altBaroStandbyPress_xxXx = 0 end
	if altBaroStandbyPress_xxxX > 9 then altBaroStandbyPress_xxxX = 0 end

	local altBaroStandbyPressReadout = altBaroStandbyPress_Xxxx .. altBaroStandbyPress_xXxx .. altBaroStandbyPress_xxXx .. altBaroStandbyPress_xxxX

	-- Manual gravity drop selection Mrad
	local mrad_Xxx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(766) * 10, 0)
	local mrad_xXx = ExportScript.Tools.round(mainPanelDevice:get_argument_value(767) * 10, 0)
	local mrad_xxX = ExportScript.Tools.round(mainPanelDevice:get_argument_value(768) * 10, 0)

	if mrad_Xxx > 9 then mrad_Xxx = 0 end
	if mrad_xXx > 9 then mrad_xXx = 0 end
	if mrad_xxX > 9 then mrad_xxX = 0 end

	local mradReadout = mrad_Xxx .. mrad_xXx .. mrad_xxX
	ExportScript.Tools.SendData(8018, mradReadout .. '\nMrad')

	-- Calculation for altimeter based

	local pressureDiff = altBaroStandbyPressReadout - altBaroPressReadout
	local altitudeDiff = pressureDiff * 27.3 -- 30 ft per milibar (mb) (ISA is 27.3. generally accepted is 30)

	ExportScript.Tools.SendData(8008, 'QFE Calc\n'
			.. 'Tgt ' .. altBaroPressReadout .. '\n'
			.. 'Alt ' .. altBaroStandbyPressReadout .. '\n'
			.. 'Tgt ' .. round(altitudeDiff,0) .. 'ft'
	)

	-- Calculation for mrad based
	-- Mrad as hundreds of feet, eg, if 008 is shown it will be 800 ft
	-- The Known value is the altitude of the target
	-- The result is the altimeter setting for the target

	local pressureDiffMrad = (mradReadout * 100) / 27.3 -- * 100 for hundreds of feet, up to 21,800
	--local diffHigher = altBaroStandbyPressReadout + pressureDiffMrad
	local diffHigher = altBaroStandbyPressReadout - pressureDiffMrad
	--local diffLower = altBaroStandbyPressReadout - pressureDiffMrad

	ExportScript.Tools.SendData(8009, 'QFE Calc\n'
			.. 'mRad ' .. mradReadout .. '\n' -- known difference in takeoff vs tgt altitude(?) or is it absolute tgt altitude? we want absolute altitude
			.. 'Baro ' .. altBaroStandbyPressReadout .. '\n'
			.. 'Tgt ' .. round(diffHigher,0) .. '\n' -- double check hi or lo
			--.. 'ELo ' .. round(diffLower,0)
	) -- TODO: double check hi or lo
end

function ExportScript.clockTimer(mainPanelDevice)
	local clockHour = ExportScript.Tools.round(mainPanelDevice:get_argument_value(64), 4) -- 0.25
	clockHour = clockHour * 12 -- 3
	clockHour = clockHour * 60 -- 180
	clockHour = clockHour * 60 -- 10,800
	clockHour = formatTime(clockHour)

	local clockTimer = ExportScript.Tools.round(mainPanelDevice:get_argument_value(65), 4)
	-- up to 15 minutes
	-- .333 is about 5 minutes
	clockTimer = clockTimer * 15 -- 4.995
	clockTimer = clockTimer * 60 -- 299.7
	clockTimer = formatTime2(clockTimer)

	ExportScript.Tools.SendData(8010, 'Time\nC ' .. clockHour .. '\nT ' .. clockTimer)
end

function ExportScript.Radios(mainPanelDevice)

	-- UHF radio logic (rear radio)
	local UHF_RADIO = GetDevice(7)
	local uhfFreq = ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))

	local uhfChannel = ExportScript.Tools.round(mainPanelDevice:get_argument_value(348) * 20, 0)
	-- because the knob is offset, we have to do some maths
	uhfChannel = uhfChannel + 1
	if uhfChannel > 20 then -- 20 is the max channel number
		uhfChannel = uhfChannel - 20
	end

	ExportScript.Tools.SendData(8011, 'UHF\n' .. 'CH ' .. uhfChannel .. '\n' .. uhfFreq)

	-- VUHF radio logic (front radio)
	local VUHF_RADIO = GetDevice(6)
	local vuhfFreq = ExportScript.Tools.RoundFreqeuncy((VUHF_RADIO:get_frequency()/1000000))

	local vuhfChannel = ExportScript.Tools.round(mainPanelDevice:get_argument_value(283) * 20, 0)
	-- because the knob is offset, we have to do some maths
	vuhfChannel = vuhfChannel + 1
	if vuhfChannel > 20 then -- 20 is the max channel number
		vuhfChannel = vuhfChannel - 20
	end

	-- M will replace the channel number if the radio is in manual mode
	if ExportScript.Tools.round(mainPanelDevice:get_argument_value(282), 1) == 0.0 then -- Manual mode
		vuhfChannel = 'M'
	end
	if ExportScript.Tools.round(mainPanelDevice:get_argument_value(282), 1) == 1.0 then -- Manual mode
		vuhfChannel = 'G'
	end

	ExportScript.Tools.SendData(8012, 'V/UHF\n' .. 'CH ' .. vuhfChannel .. '\n' .. vuhfFreq)

	-- Combined readouts
	ExportScript.Tools.SendData(8013, 'V/UHF (' .. vuhfChannel ..  ')\n' .. vuhfFreq
			.. '\nUHF (' .. uhfChannel ..  ')\n' .. uhfFreq)


end

function ExportScript.DeviceMetaTableLogDump(mainPanelDevice)
	local ltmp1 = 0
	for ltmp2 = 1, 30, 1 do
		ltmp1 = GetDevice(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2 .. ': ' .. ExportScript.Tools.dump(ltmp1))
		ExportScript.Tools.WriteToLog(ltmp2 ..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
end

function ExportScript.ListIndicationLogDump(mainPanelDevice)
	local ltmp1 = 0
	for ltmp2 = 0, 30, 1 do
		ltmp1 = list_indication(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2 ..': '..ExportScript.Tools.dump(ltmp1))
	end
end

----------------------
-- Helper Functions --
----------------------

function format_int(number) --https://stackoverflow.com/questions/10989788/format-integer-in-lua
	local i, j, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')
	-- reverse the int-string and append a comma to all blocks of 3 digits
	int = int:reverse():gsub("(%d%d%d)", "%1,")
	-- reverse the int-string back remove an optional comma and put the
	-- optional minus and fractional part back
	return minus .. int:reverse():gsub("^,", "") .. fraction
end

function round(num, numDecimalPlaces) --http://lua-users.org/wiki/SimpleRound
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
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

function formatTime(time) -- time in seconds
	local seconds = math.floor(time) % 60
	local minutes = math.floor(time / 60) % 60
	local hours = math.floor(time / (60 * 60)) % 24

	return string.format("%02d", hours)
			.. "h" .. string.format("%02d", minutes)
			--.. "-" .. string.format("%02d", seconds) -- no seconds because there isn't a seconds hand
end

function formatTime2(time) -- time in seconds
	local seconds = math.floor(time) % 60
	local minutes = math.floor(time / 60) % 60
	local hours = math.floor(time / (60 * 60)) % 24

	return --string.format("%02d", hours) -- no hrs because there isn't a hrs hand
			string.format("%02d", minutes)
			.. "m" .. string.format("%02d", seconds)
end

function formatTime3(time) -- time in seconds
	local seconds = math.floor(time) % 60
	local minutes = math.floor(time / 60) % 60
	local hours = math.floor(time / (60 * 60)) % 24

	return string.format("%02d", hours) -- '¦' could be used
			.. "h" .. string.format("%02d", minutes)
			.. "m" .. string.format("%02d", seconds) -- no seconds because there isn't a seconds hand
end

--[[Note about Feet per millibar (hectopascal):
For calculation purposes it can be helpful to know how many feet are in a millibar. In general 30 ft is the value used
in most books and exam questions. However, this is only just about right in the lower layers of our atmosphere (up to about 5000 ft).
Since pressure change with height is variable with height, so is the number of feet fitting in a millibar.
Formula:
* 96 x (absolute temperature (273K + actual temperature) / altitude pressure (millibars))
In the case of the ISA at sea level this will give you 27,3 ft.
* 96 x ((273+15) / 1013)
]]