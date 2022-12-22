-- Mirage M-2000C
-- for DCS Export Scripts
-- initial version by s-d-a with additions and update by Blue Storm + Bearcat

ExportScript.FoundDCSModule = true
ExportScript.Version.M2000C = "2.1.5"


-----------------------------
--     Helper functions    --
-----------------------------
function ExportScript.PCN_place_decimal(PCN_string, point_mask)
  local retval = ""
  if (PCN_string ~=nil) and (point_mask ~= nil) then
    if (point_mask:find("%.") ~= nil) then
      local i = 0
      for i = 1, #point_mask, 1 do
        if point_mask:sub(i, i) == "." then
          retval = retval .. "." .. PCN_string:sub(i, i)
        else
          retval = retval .. PCN_string:sub(i, i)
        end
      end
    else
      retval = PCN_string
    end
  end
  return retval
end

-----------------------------
--     Core M-2000C    --
-----------------------------
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

-- LAMPS / DISPLAYS --------------------------------------
	[185] = "%.1f",	--LIM, MIP,
	[186] = "%.1f",	--IFF, MIP, Acc
	[187] = "%.1f",	--LED green, ADI
	[188] = "%.1f",	--LED green, ADI

-- RWR Lamps
	[229] = "%.1f",	--V
	[230] = "%.1f",	--BR
	[231] = "%.1f",	--DA
	[232] = "%.1f",	--D2M
	[233] = "%.1f",	--LL

-- Autopilot Controls/Indicator Lights
	[267] = "%.1f",	--button P light
	[268] = "%.1f",	--button MIS light
	[270] = "%.1f",	--button AUT light
	[271] = "%.1f",	--button MAN light
	[273] = "%.1f",	--button MAG-P light
	[274] = "%.1f",	--button MAG-MAG light

	[280] = "%.1f",	--button TOT light
	[281] = "%.1f",	--button PAP light

-- Weapon panel
	[236] = "%.1f",	--button1 S 001 light
	[238] = "%.1f",	--button2 S 001 light
	[240] = "%.1f",	--button3 S 001 light
	[242] = "%.1f",	--button4 S 001 light
	[244] = "%.1f",	--button5 S 001 light

	[251] = "%.1f",	--button1 S 002 light
	[252] = "%.1f",	--button1 P 002 light
	[254] = "%.1f",	--button2 S 002 light
	[255] = "%.1f",	--button2 P 002 light
	[257] = "%.1f",	--button3 S 002 light
	[258] = "%.1f",	--button3 P 002 light
	[260] = "%.1f",	--button4 S 002 light
	[261] = "%.1f",	--button4 P 002 light
	[263] = "%.1f",	--button5 S 002 light
	[264] = "%.1f",	--button5 P 002 light

	[246] = "%.1f",	--button KL1 light
	[247] = "%.1f",	--button KL2 light

	[321] = "%.1f",	--ADI ILS light
	[374] = "%.1f", --Fire light 1
	[375] = "%.1f",	--Fire light 2

-- AUTOPILOT lights
	[283] = "%.1f",	--P
	[284] = "%.1f",	--A
	[286] = "%.1f",	--Alt 1
	[287] = "%.1f",	--blank Alt
	[289] = "%.1f",	--Alt 2
	[290] = "%.1f",	--AFF
	[292] = "%.1f",	--blank1
	[293] = "%.1f",	--blank2
	[295] = "%.1f", --left
	[296] = "%.1f",	--blank L
	[297] = "%.1f",	--G
	[298] = "%.1f",	--blank G

-- div. lights
 	[373] = "%.1f",	--Afterburner light
	[376] = "%.1f",	--starter light
	[198] = "%.1f",	--tranfer
	[199] = "%.1f",	--master-warning
	[200] = "%.1f",	--master-caution
-- INSTRUMENTS -------------------------------------------

-- Display Settings
	--[224] = "%.1f",	--Drum X000
	--[225] = "%.1f",	--Drum 0X00
	--[226] = "%.1f",	--Drum 00X0
	--[227] = "%.1f",	--Drum 000X

-- AUTOPILOT ALTITUDE SELECTOR: Adjust autopilot altitude hold value.
	--[299] = "%.4f",	--Alt Drum X00
	--[300] = "%.4f",	--Alt Drum 0X0
	--[301] = "%.4f",	--Alt Drum 00X

-- BINGO FUEL SELECTOR: Adjust the value for the Bingo Fuel warning
	[360] = "%.4f",	--Drum X0
	[361] = "%.4f",	--Drum 0X

-- ASI
	[303] = "%.4f",	--asi needle
	[304] = "%.4f",	--mach wheel

-- ALTITUDE INDICATOR: indicates barometric altitude (MSL) in feet
	[305] = "%.4f",	--Needle
	[306] = "%.4f",	--Alt Drum X00
	[307] = "%.4f",	--Alt Drum 0X0
	[308] = "%.4f",	--Alt Drum 00X
	[310] = "%.4f",	--Pressure Drum X000
	[311] = "%.4f",	--Pressure Drum 0X00
	[312] = "%.4f",	--Pressure Drum 00X0
	[313] = "%.4f",	--Pressure Drum 000X

-- ADI
	[316] = "%.4f",	--pitch
	[317] = "%.4f",	--bank
	[318] = "%.4f",	--heading
	[319] = "%.1f",	--off flag
	[320] = "%.4f",	--slip ball
	[322] = "%.4f",	--ILS bar course
	[323] = "%.4f",	--ILS bar alt

-- VVI
	[324] = "%.4f",	--VVI needle

-- ADI Standby
	[327] = "%.4f",	--pitch
	[326] = "%.4f",	--bank
	[328] = "%.4f",	--adjust / White Silhouette
	[329] = "%.1f",	--off flag

-- AOA
	[331] = "%.4f",	--needle

-- Flag black/red
	[332] = "%.1f",	--flag

-- HSI
	[333] = "%.4f",	--HDG Indicator
	[334] = "%.4f",	--Needle
	[335] = "%.4f",	--Needle small
	[336] = "%.4f",	--Drum X000
	[337] = "%.4f",	--Drum 0X00
	[338] = "%.4f",	--Drum 00X0
	[339] = "%.4f",	--Drum 000X
    [340] = "%.4f",	--HSI Heading Selector
    [341] = "%.1f",	--HSI Mode Selector Switch
    [342] = "%.4f",	--Compass rose
	[344] = "%.1f",	--HSI Flag 1
	[345] = "%.1f",	--HSI Flag 2
	[346] = "%.1f",	--HSI Flag CAP
	--[341] = "%.1f",	--HSI Mode
	[343] = "%.1f",	--DME Off Flag

-- ACC indicator
	[347] = "%.4f",	--needle

-- JAUG fuel
	[349] = "%.4f",	--Drum X00
	[350] = "%.4f",	--Drum 0X0
	[351] = "%.4f",	--Drum 00X

-- DETOT fuel
	[352] = "%.4f",	--Drum X00
	[353] = "%.4f",	--Drum 0X0
	[354] = "%.4f",	--Drum 00X
	[357] = "%.1f",	--Intercom

-- Fuel indicator
	[358] = "%.4f",	--v-needle left
	[359] = "%.4f",	--v-needle right
	[362] = "%.1f",	--light L RL
	[363] = "%.1f",	--light C RL
	[364] = "%.1f",	--light R RL
	[365] = "%.1f",	--light L AV
	[366] = "%.1f",	--light R AV
	[367] = "%.1f",	--light L V
	[368] = "%.1f",	--light R V

-- ENGINE INSTRUMENTS: Indicates engine RPM and Temperature.
	[369] = "%.4f",	--N needle
	[370] = "%.4f",	--Tt7 needle
	[371] = "%.4f",	--Drum XX0
	[372] = "%.4f",	--Drum 00X

-- Center console IFF
	[377] = "%.4f",	-- X0 MODE
	[378] = "%.4f",	-- 0X

	[379] = "%.4f",	--	X000 MODE 3A
	[380] = "%.4f",	--	0X00
	[381] = "%.4f",	--	00X0
	[382] = "%.4f",	--	000X

	[388] = "%.1f",	--	Voyant de contrôle rouge Panneau MODE-4
	[394] = "%.1f",	--	voyant jaune "PANNE"

-- Pressure
	[397] = "%.4f",	--Needle left
	[398] = "%.4f",	--Needle right

-- Cabin climb (x 1000 ft)
	[399] = "%.4f",	--Needle

-- Clock
	[401] = "%.4f",	--hours
	[402] = "%.4f",	--minutes
	[403] = "%.4f",	--seconds

-- GEARPANEL
	[405] = "%.1f",	-- 	Eclairage Manette de commande train rouge
	[410] = "%.1f",	-- 	„A“ Warnlamp
	[411] = "%.1f",	-- 	„F“ Warnlamp
	[412] = "%.1f",	--  „DIRAV“ Warnlamp, bleu
	[413] = "%.1f",	-- 	„FREIN“
	[414] = "%.1f",	-- 	„Cross“
	[415] = "%.1f",	-- 	„SPAD“
	[416] = "%.1f",	-- 	voyant rouge „BIP“
	[417] = "%.1f",	-- 	Left Gear, lampe verte
	[418] = "%.1f",	-- 	Nose Gear
	[419] = "%.1f",	-- 	Right Gear

-- CS indicator
	[424] = "%.4f",	-- 		1. waagerechte Balkenanzeige
	[425] = "%.4f",	-- 		2.
	[426] = "%.4f",	-- 		1. senkrechte Balkenanzeige
	[427] = "%.4f",	-- 		3. waagerechte BA
	[428] = "%.4f",	-- 		4.

-- Com
	--[436] = "%.4f",	-- 	Preset display (1-20)
	--[440] = "%.4f",	--	Drum X000 (0-9-0)  COM Panel
	--[441] = "%.4f",	--	Drum 0X00.00
	--[442] = "%.4f",	--	Drum 00X0.00
	--[443] = "%.4f",	--	Drum 000X.00
	--[444] = "%.4f",	--	Drum 0000.XX  (00-25-50-75-00)
	--[190] = "%.4f",	--	Drum X0 Preset  (0-1-2)
	--[189] = "%.4f",	--	Drum 0X Preset (0-9-0)
	[675] = "%.1f",	--	TEST Button COM Panel, red
	[676] = "%.1f",	--	Test Button Panel over COM Panel, red
	[677] = "%.1f",	--	Left green lamp

-- Compass
	[906] = "%.4f",	--Rose

-- Oxygen
	[518] = "%.4f",	--Needle
	[519] = "%.1f",	--Oxy flow lamp (blue)


-- Left consule Lamps
	[490] = "%.1f",	-- „VAL”
	[492] = "%.1f",	-- „A“ voyant Panneau
	[494] = "%.1f",	-- „DEC“ Voyant
	[496] = "%.1f",	-- „VISU“
	[505] = "%.1f",	-- „PSIC“
	[510] = "%.1f",	-- „ELEC“
	[511] = "%.1f",	-- „HYD“
	[512] = "%.1f",	-- Red
	[513] = "%.1f",	-- GREEN


-- TRIM
	[508] = "%.1f",	--	Trim mode
	[509] = "%.1f",	--	Trim direction

-- LOX
	--[518] = "%.4f",	--	needle
	--[519] = "%.4f",	--	LOX flow blinker

-- WARNING PANEL
	[525] = "%.1f",	--  BATT
	[526] = "%.1f",	--  TR
	[527] = "%.1f",	--  ALT 1
	[528] = "%.1f",	--  ALT2
	[529] = "%.1f",	--  HUILLE
	[530] = "%.1f",	--  T7
	[531] = "%.1f",	--  CALC C
	[532] = "%.1f",	--  SOURIS
	[533] = "%.1f",	--  PELLE
	[534] = "%.1f",	--  B.P
	[535] = "%.1f",	--  BP.G
	[536] = "%.1f",	--  BP.D
	[537] = "%.1f",	--  TRANSF
	[538] = "%.1f",	--  NIVEAU
	[539] = "%.1f",	--  HYD 1
	[540] = "%.1f",	--  HYD 2
	[541] = "%.1f",	--  HYD 3
	[542] = "%.1f",	--  EP
	[543] = "%.1f",	--  BINGO
	[544] = "%.1f",	--  P.CAB
	[545] = "%.1f",	--  TEMP
	[546] = "%.1f",	--  REG O2
	[547] = "%.1f",	--  5nm O2
	[548] = "%.1f",	--  O2 HA
	[549] = "%.1f",	--  ANEMO
	[550] = "%.1f",	--  CC
	[551] = "%.1f",	--  DSV
	[552] = "%.1f",	--  CONDIT
	[553] = "%.1f",	--  CONF
	[554] = "%.1f",	--  PA
	[555] = "%.1f",	--  MAN
	[556] = "%.1f",	--  DOM
	[557] = "%.1f",	--  BECS
	[558] = "%.1f",	--  U.S.EL
	[559] = "%.1f",	--  ZEICHEN
	[560] = "%.1f",	--  GAIN
	[561] = "%.1f",	--  RPM
	[562] = "%.1f",	--  DECOL
	[563] = "%.1f",	--  PARK.

-- Lamps Right Console
	[564] = "%.1f",	--	“PRET”  Indicateur Vert
	[565] = "%.1f",	--	„ALN“
	[566] = "%.1f",	--	„MIP“
	[567] = "%.1f",	--	„N.DEG“
	[568] = "%.1f",	--	„SEC“
	[569] = "%.1f",	--	„UNI“
	[669] = "%.1f",	--  „M01”
	[670] = "%.1f",	--	„M02“
	[671] = "%.1f",	--	„M03“

	[571] = "%.1f",	--	“PREP” WL, jaune
	[573] = "%.1f",	--	“DEST” WL, jaune
	[577] = "%.1f",	--	“BAD” WL jaune/vert
	[579] = "%.1f",	--	“REC”
	[581] = "%.1f",	--	“VAL”
	[583] = "%.1f",	--	“MRC”
	[595] = "%.1f",	--	“EFF” bouton lampe rond jaune
	[597] = "%.1f",	--	“INS” bouton lampe rond jaune
	[668] = "%.1f",	--  “ENC” WL jaune/vert

-- VIERER ANZEIGE
	[601] = "%.4f",	--	1. Drum
	[602] = "%.4f",	--	2.
	[603] = "%.4f",	--	3.
	[604] = "%.4f",	--	4.

-- VOR ILS
	[611] = "%.4f",	--	1. Drum
	[612] = "%.4f",	--	2.
	[613] = "%.4f",	--	3.
	[614] = "%.4f",	--	4.
	[615] = "%.4f",	--	5.

-- TACAN
	[620] = "%.1f",	--	X/Y
	[621] = "%.4f",	--	Drum XX0 left (--;1-12;--)
	[622] = "%.4f",	--	Drum 00X right	(0;1-9;0)


	[632] = "%.1f",	--	Bouton avec voyant "C"
	[634] = "%.1f",	--	Bouton avec voyant "F"

-- Miscelaneous Right Panel
	[657] = "%.1f",    -- Hydraulic Emergency Pump Switch
	[658] = "%.1f",    -- Audio Warning Switch
	[659] = "%.1f",    -- Pitot Heat Cover
	[660] = "%.1f",    -- Pitot Heat Switch

-- Panel lights
	[720] = "%.4f",	--	Flash MIP, rouge
	[721] = "%.4f",	--	Rétroéclairage MIP, rouge
	[722] = "%.4f",	-- 	Flash MIP, blanc
	[723] = "%.4f",	--	Rétroéclairage des panneaux latéraux gauche et droit, rouge
	[724] = "%.4f",	--	Eclairage des panneaux latéraux, rouge (gauche, droite)
	[726] = "%.4f",	--	variateur de lampe d'avertissement
	[727] = "%.4f",	--	variateur de lampe d'avertissement (panneaux latéraux)

}

ExportScript.ConfigArguments =
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]

-- Fuel
	[193] = "%.1f",	--Refuel Transfer Switch

-- Landing Gear
	[404] = "%.1f",	--Landing Gear Lever

-- HUD/VTB
	[201] = "%.1f",	--HUD Power Switch
	[203] = "%.1f",	--HUD Decluter Switch
	[204] = "%.1f",	--HUD Altimeter Selector Switch
	[205] = "%.1f",	--Radar Altimeter Power Switch
	[206] = "%.1f",	--Auxiliary Gunsight
	[207] = "%.1f",	--Auxiliary Gunsight Deflection
	[208] = "%.1f",	--Gun AG Reticle Selector
	[209] = "%.1f",	--Gun Target Wingspan Selector
	[210] = "%.1f",	--HUD Clear Switch
	[192] = "%.4f",	--Radar Altimeter Minimum Altitude Selector
	[213] = "%.1f",	--Radar Interception Switch
	[214] = "%.1f",	--Radar N Parameter Switch
	[215] = "%.1f",	--Radar P Parameter Switch
	[216] = "%.1f",	--Radar B Parameter Switch
	[217] = "%.1f",	--Radar C Parameter Switch
	[218] = "%.1f",	--Radar Z Parameter Switch
	[219] = "%.1f",	--Radar M Parameter Switch
	[220] = "%.1f",	--Radar T Parameter Switch
	[221] = "%.1f",	--VTB Power Switch
	[222] = "%.1f",	--VTB Switch
	[223] = "%.1f",	--VTB Switch

-- PCA/PPA +++++++++++ HJP HBook Side 129
	[463] = "%.1f",	--Gun Arm/Safe Switch
	[234] = "%.1f",	--Master Arm Switch
	[248] = "%.1f",	--Jett Switch Cover
	[249] = "%.1f",	--Selective Jettison Switch
	[235] = "%.1f",	--PCA Button 1
	[237] = "%.1f",	--PCA Button 2
	[239] = "%.1f",	--PCA Button 3
	[241] = "%.1f",	--PCA Button 4
	[243] = "%.1f",	--PCA Button 5
	[245] = "%.1f",	--Gun Mode Selector
	[250] = "%.1f",	--Weapons Selector Button 1
	[253] = "%.1f",	--Weapons Selector Button 2
	[256] = "%.1f",	--Weapons Selector Button 3
	[259] = "%.1f",	--Weapons Selector Button 4
	[262] = "%.1f",	--Weapons Selector Button 5
	[266] = "%.1f",	--S530 Standby
	[269] = "%.1f",	--AUTO/MAN Button
	[272] = "%.1f",	--MAGIC Standby
	[279] = "%.1f",	--Cannon Fire rate/Rockets Simul Launch
	[265] = "%.1f",	--Missile Selector Switch
	[275] = "%.1f",	--PPA Test Switch
	[276] = "%.1f",	--Bomb Fuze Selector Switch
	[277] = "%.1f",	--Bomb Release Quantity Selector Switch
	[278] = "%.1f",	--Bomb Release Interval Selector Switch
	[409] = "%.1f",	--Emergency Jettison

--AFCS
	[282] = "%.1f",	--Autopilot Master
	[285] = "%.1f",	--Autopilot - Altitude Hold
	[288] = "%.1f",	--Autopilot - Selected Altitude Hold
	[294] = "%.1f",	--Autopilot - Approach Hold
	[302] = "%.1f",	--Autopilot - Lights Test
	[299] = "%.1f",	--Autopilot - Altitude Selector 10K
	[300] = "%.1f",	--Autopilot - Altitude Selector 1K
	[301] = "%.1f",	--Autopilot - Altitude Selector 1C
	[514] = "%.1f",	--Autopilot Test Cover
	[515] = "%.1f",	--Autopilot Test Switch
	[516] = "%.1f",	--FBW Test Cover
	[517] = "%.1f",	--FBW Test Switch

--FBW
	[330] = "%.1f",	--FBW Spin Switch
	[420] = "%.1f",	--FBW Disconnect Cover
	[421] = "%.1f",	--FBW Disconnect Switch
	[422] = "%.1f",	--FBW G Limiter Switch
	[460] = "%.1f",	--Intake slats Operation Switch
	[461] = "%.1f",	--Intake cones Operation Switch

-- PELLES, SOURIS AND BECS
	[462] = "%.1f",	--Slats Operation Switch
	[395] = "%.1f",	--Hydraulic System Selector
	[396] = "%.1f",	--Pedal Adjust Lever

-- RADAR
	[481] = "%.1f",	--Radar Illumination Switch
	[482] = "%.1f",	--Radar Test Switch
	[483] = "%.1f",	--Radar Rearm Switch
	[484] = "%.1f",	--Radar Doppler Reject Selector
	[486] = "%.1f",	--Radar Power Switch
	[488] = "%.4f",	--Radar Gain Dial
	[491] = "%.1f",	--A/G Radar A Mode
	[493] = "%.1f",	--A/G Radar DEC Mode
	[495] = "%.1f",	--A/G Radar VISU Mode
	[499] = "%.1f",	--Radar Grid Selector
	[500] = "%.1f",	--Target Memory Time Selector
	[502] = "%.1f",	--Radar Scan Lines Selector
	[503] = "%.1f",	--Radar Range Selector
	[504] = "%.1f",	--AA Radar STT Selector
	[506] = "%.1f",	--Radar Azimuth Aperture Selector
	[598] = "%.1f",	--Radar IFF Mode Switch
	[599] = "%.1f",	--Radar IFF L/R Selector
	[600] = "%.1f",	--Radar IFF Power Switch
	[601] = "%.1f",	--Radar IFF Code-4 Selector
	[602] = "%.1f",	--Radar IFF Code-3 Selector
	[603] = "%.1f",	--Radar IFF Code-2 Selector
	[604] = "%.1f",	--Radar IFF Code-1 Selector
	[109] = "%.1f",	--Radar PRF Selector
	[710] = "%.1f",	--TDC Mode

-- ELECTRICAL PANEL
	[520] = "%.1f",	--Main Battery Switch
	[521] = "%.1f",	--Electric Power Transfer Switch
	[522] = "%.1f",	--Alternator 1 Switch
	[523] = "%.1f",	--Alternator 2 Switch
	[524] = "%.1f",	--Lights Test Switch
	[654] = "%.1f",	--Alert Network (QRA) Switch

-- PCN
	[570] = "%.1f",	--INS PREP Switch
	[572] = "%.1f",	--INS DEST Switch
	[574] = "%.1f",	--INS Parameter Selector
	[575] = "%.4f",	--Light Brightnes Control/Test
	[576] = "%.1f",	--Offset Waypoint/Target
	[578] = "%.1f",	--INS Update
	[580] = "%.1f",	--Validate Data Entry
	[582] = "%.1f",	--Mark Position
	[584] = "%.1f",	--INS Button 1
	[585] = "%.1f",	--INS Button 2
	[586] = "%.1f",	--INS Button 3
	[587] = "%.1f",	--INS Button 4
	[588] = "%.1f",	--INS Button 5
	[589] = "%.1f",	--INS Button 6
	[590] = "%.1f",	--INS Button 7
	[591] = "%.1f",	--INS Button 8
	[592] = "%.1f",	--INS Button 9
	[593] = "%.1f",	--INS Button 0
	[594] = "%.1f",	--INS Clear Button
	[596] = "%.1f",	--INS ENTER Button
	[667] = "%.1f",	--AUTO Navigation

-- PSM
	[627] = "%.1f",	--INS Mode Selector
	[628] = "%.1f",	--MIP Data Slot
	[629] = "%.1f",	--INS Operational Mode
	[665] = "%.1f",	--INS Auxiliary Heading/Horizon
	[673] = "%.1f", --DTC Cartridge Position
	[674] = "%.1f", --DTC Cartridge Presence


-- EW PANEL
	[228] = "%.4f",	--RWR Light Brightnes Control
	[605] = "%.1f",	--EW Mode Selector Switch
	[606] = "%.1f",	--BR Switch
	[607] = "%.1f",	--RWR Switch
	[608] = "%.1f",	--D2M Switch
	[609] = "%.1f",	--LL (Jammer) Switch
	[610] = "%.1f",	--Jammer Strength

-- ECM BOX
	[194] = "%.1f",	--ECM Box Mode Switch
	[195] = "%.1f",	--ECM Box Switch
	[196] = "%.1f",	--ECM Box Lighs Switch
	[197] = "%.1f",	--ECM Box LCD Display Brightness

-- Panel Lights
	[449] = "%.1f",	--Police Lights
	[450] = "%.1f",	--Landing Lights
	[452] = "%.1f",	--Refuel Lights
	[453] = "%.1f",	--Anti-Collision Lights
	[454] = "%.1f",	--Navigation Lights
	[455] = "%.1f",	--Formation Lights
	[639] = "%.4f",	--Dashboard Flood Lights
	[640] = "%.4f",	--Dashboard Panel Lights
	[641] = "%.4f",	--Console Flood Lights
	[642] = "%.4f",	--Console Panel Lights
	[643] = "%.4f",	--Casution/Advisory Lights Rheostat
	[644] = "%.4f",	--White Flood Lights Knob
	[920] = "%.4f",	--Refuel Lights Brightness Knob

-- Engine Start Panel
	[468] = "%.1f",	--Engine In-Flight Start Switch
	[467] = "%.1f",	--Engine Shutdown Button
	[645] = "%.1f",	--Engine Start Switch Cover
	[646] = "%.1f",	--Starter Fuel Pump Switch
	[647] = "%.1f",	--Engine Fuel Left Boost Pump Switch
	[648] = "%.1f",	--Engine Fuel Right Boost Pump Switch
	[649] = "%.1f",	--Engine Start Switch
	[650] = "%.1f",	--Ventilation Selector Switch
	[651] = "%.1f",	--Fuel Cutoff Switch Cover
	[652] = "%.1f",	--Fuel Cutoff Switch
	[477] = "%.1f",	--Fuel Dump Switch Cover
	[478] = "%.1f",	--Fuel Dump Switch
	[471] = "%.1f",	--A/B Emergency Cutoff Switch Cover
	[472] = "%.1f",	--A/B Emergency Cutoff Switch
	[464] = "%.1f",	--Emergency Throttle Cover
	[465] = "%.1f",	--Emergency Throttle Handle
	[473] = "%.1f",	--Secondary Oil Control Cover
	[474] = "%.1f",	--Secondary Oil Control Switch
	[475] = "%.1f",	--Engine Emergency Control Cover
	[476] = "%.1f",	--Engine Emergency Control Switch
	[470] = "%.1f",	--Radar WOW Emitter Authorize Switch
	-- Radio Panel
	[429] = "%.1f",	--UHF Power 5W/25W Switch
	[430] = "%.1f",	--UHF SIL Switch
	[431] = "%.1f",	--UHF E-A2 Switch
	[432] = "%.1f",	--UHF CDE Switch
	[433] = "%.3f",	--UHF Mode Switch
	[434] = "%.1f",	--UHF TEST Switch
	[435] = "%.1f",	--UHF Knob
	[437] = "%.1f",	--U/VHF TEST Switch
	[438] = "%.1f",	--U/VHF E+A2 Switch
	[439] = "%.1f",	--U/VHF SIL Switch
	[440] = "%.1f",	--U/VHF Select 100 MHz
	[441] = "%.1f",	--U/VHF Select 10 MHz
	[442] = "%.1f",	--U/VHF Select 1 MHz
	[443] = "%.1f",	--U/VHF Select 100 KHz
	[444] = "%.1f",	--U/VHF Select 25 KHz
	[445] = "%.1f",	--U/VHF Knob
	[446] = "%.1f",	--U/VHF Mode Switch 1
	[447] = "%.1f",	--U/VHF Power 5W/25W Switch
	[448] = "%.1f",	--U/VHF Manual/Preset
	[950] = "%.1f",	--U/VHF Mode


-- Navigational Antennas
	[616] = "%.1f",	--VOR/ILS Frequency Change Whole
	[617] = "%.1f",	--VOR/ILS Power Dial
	[618] = "%.2f",	--VOR/ILS Frequency Change Decimal
	[619] = "%.1f",	--VOR/ILS Test Dial

-- TACAN
	[623] = "%.1f",	--TACAN Channel Change Tens
	[624] = "%.1f",	--TACAN X/Y Select
	[625] = "%.1f",	--TACAN Channel Change Ones
	[626] = "%.1f",	--TACAN Mode Select

-- Miscelaneous Right Panel
	[657] = "%.1f",	-- Hydraulic Emergency Pump Switch

-- Miscelaneous Left Panel
	[191] = "%.1f",	--Audio Warning Reset

-- Miscelaneous Seat
	[458] = "%.1f",	--Anti-Skid Cover
	[459] = "%.1f",	--Anti-Skid Switch
	[666] = "%.1f",	--Parking Brake Lever
	[807] = "%.1f",	--Nose Wheel Steering / IFF

-- Télé Affichage TAF - GCI
	[968] = "%.2f",	--EVF Channel selector
	[970] = "%.2f",	--EVF Panel Test

-- Jumelles de Vision Nocturnes (JNV - NVG)
	[672] = "%.1f",	--NVG lights Filter Switch


-- Sound Panel
	[700] = "%.1f",	--AMPLIS Selector
	[701] = "%.1f",	--VOR/ILS Volume {0.0,1.0} in 0.1 steps
	[702] = "%.1f",	--TACAN Volume {0.0,1.0} in 0.1 steps
	[703] = "%.1f",	--MAGIC Tone Volume {0.0,1.0} in 0.1 steps
	[704] = "%.1f",	--TB APP Volume {0.0,1.0} in 0.1 steps
	[705] = "%.1f",	--Marker Signal Volume {0.0,1.0} in 0.1 steps
	[706] = "%.1f",	--V/UHF Radio Volume {0.0,1.0} in 0.1 steps
	[707] = "%.1f",	--VHF Radio Volume {0.0,1.0} in 0.1 steps

-- ALT
	[309] = "%.1f",	--Barometric Pressure Calibration
	[314] = "%.1f",	--ADI Cage Lever
	[315] = "%.1f",	--ADI Backlight Switch
	[325] = "%.1f",	--Backup ADI Cage
	[328] = "%.4f",	--Backup ADI Pitch Adjust Knob {-1.0,1.0} in 0.1 steps
-- Center console IFF
	[383] = "%.1f",	--Ident Power Switch {-1.0,0.0,1.0}
	[384] = "%.1f",	--Mode-1 Switch
	[385] = "%.1f",	--Mode-2 Switch
	[386] = "%.1f",	--Mode-3A Switch
	[387] = "%.1f",	--Mode-C Switch
-- Miscelaneous Seat
	[900] = "%.1f",	--Seat Adjustment Switch
	[910] = "%.1f",	--LOX Dilution Lever
	[912] = "%.1f",	--LOX Emergency Supply
	[911] = "%.1f",	--LOX Test Switch
-- ECS Panel
	[630] = "%.1f",	--ECS Main Mode Switch
	[631] = "%.1f",	--ECS C Button
	[633] = "%.1f",	--ECS F Button
	[635] = "%.1f",	--ECS Cond Switch
	[636] = "%.1f",	--ECS Air Exchange Switch
	[637] = "%.1f",	--ECS Temperature Select Knob {-1.0,1.0} in 0.1 steps
	[638] = "%.1f",	--ECS Defog Switch

}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
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

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
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

	-- ECM Mode Switch
	-- [194] = "%.1f",	--ECM Box Mode Switch
	local lECM_On = (mainPanelDevice:get_argument_value(194) > 0.0 and true or false)

	-- FUEL
	local lFUEL = ExportScript.Tools.getListIndicatorValue(3)
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('lFUEL : '..ExportScript.Tools.dump(lFUEL))
	end

	if lFUEL ~= nil and lFUEL.txt_fuel_g ~= nil then
		-- string with max 3 charachters
		ExportScript.Tools.SendData(2003, string.format("%s", lFUEL.txt_fuel_g))

		if ExportScript.Config.Debug then
			ExportScript.Tools.WriteToLog('2003: '..ExportScript.Tools.dump(lFUEL.txt_fuel_g))
		end
	else
		ExportScript.Tools.SendData(2003, " ")
	end

	-- PCA_UR (Weappon Panel top line)
	local lPCAUR = list_indication(4)
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('lPCAUR : '..ExportScript.Tools.dump(lPCAUR))
	end

	local to1, to2, from1, from2 = nil, nil, nil, nil
	local lPCA_UR = {"", "", "", "", ""}
	to1, to2 = lPCAUR:find("PCA_UR")
	local lIndex, lIndex2
	if (to1 ~= nil) then
		for lIndex = 1, 5, 1 do
      		lIndex2 = lIndex - 1
      		from1, from2 = lPCAUR:find("PCA_LCD_1_"..lIndex2.."%c")
				if (from2 ~= nil) then
					to1, to2 = lPCAUR:find("%c", from2+2)
					if (to1 ~= nil) then
						lPCA_UR[lIndex] = lPCAUR:sub(from2+1, to1-1)
          				if (lPCA_UR[lIndex]:len() > 3) then
            				-- ExportScript.Tools.WriteToLog("cleanup UR "..string.format("%s", lPCA_UR[lIndex]))
            				lPCA_UR[lIndex] = ""
        			end
				end
			end
		end -- for
	end

	-- string with max 3 charachters
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog("2010: "..string.format("%s", lPCA_UR[1]))
		ExportScript.Tools.WriteToLog("2011: "..string.format("%s", lPCA_UR[2]))
		ExportScript.Tools.WriteToLog("2012: "..string.format("%s", lPCA_UR[3]))
		ExportScript.Tools.WriteToLog("2013: "..string.format("%s", lPCA_UR[4]))
		ExportScript.Tools.WriteToLog("2014: "..string.format("%s", lPCA_UR[5]))
	end
	ExportScript.Tools.SendData(2010, string.format("%s", lPCA_UR[1]))
	ExportScript.Tools.SendData(2011, string.format("%s", lPCA_UR[2]))
	ExportScript.Tools.SendData(2012, string.format("%s", lPCA_UR[3]))
	ExportScript.Tools.SendData(2013, string.format("%s", lPCA_UR[4]))
	ExportScript.Tools.SendData(2014, string.format("%s", lPCA_UR[5]))

	-- PCA_BR (Weappon Panel bottom line)
	local lPCABR = list_indication(5)
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('lPCABR : '..ExportScript.Tools.dump(lPCABR))
	end

	local to1, to2, from1, from2 = nil, nil, nil, nil
	local lPCA_BR = {"", "", "", "", ""}
	to1, to2 = lPCABR:find("PCA_BR")
	if (to1 ~= nil) then
		for lIndex = 1, 5, 1 do
      lIndex2 = lIndex - 1
			from1, from2 = lPCABR:find("PCA_LCD_2_"..lIndex2.."%c")
			if (from2 ~= nil) then
				to1, to2 = lPCABR:find("%c", from2+2)
				if (to1 ~= nil) then
					lPCA_BR[lIndex] = lPCABR:sub(from2+1, to1-1)
          if (lPCA_BR[lIndex]:len() > 3) then
            -- ExportScript.Tools.WriteToLog("cleanup BR "..string.format("%s", lPCA_BR[lIndex]))
            lPCA_BR[lIndex] = ""
          end
				end
			end
		end-- for
	end

	-- string with max 3 charachters
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog("2015: "..string.format("%s", lPCA_BR[1]))
		ExportScript.Tools.WriteToLog("2016: "..string.format("%s", lPCA_BR[2]))
		ExportScript.Tools.WriteToLog("2017: "..string.format("%s", lPCA_BR[3]))
		ExportScript.Tools.WriteToLog("2018: "..string.format("%s", lPCA_BR[4]))
		ExportScript.Tools.WriteToLog("2019: "..string.format("%s", lPCA_BR[5]))
	end
	ExportScript.Tools.SendData(2015, string.format("%s", lPCA_BR[1]))
	ExportScript.Tools.SendData(2016, string.format("%s", lPCA_BR[2]))
	ExportScript.Tools.SendData(2017, string.format("%s", lPCA_BR[3]))
	ExportScript.Tools.SendData(2018, string.format("%s", lPCA_BR[4]))
	ExportScript.Tools.SendData(2019, string.format("%s", lPCA_BR[5]))

	-- COM
	local lCOM = list_indication(7)
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('lCOM : '..ExportScript.Tools.dump(lCOM))
	end

	local to1, to2, from1, from2, lCOM1, lCOM2 = nil, nil, nil, nil, "", ""
	to1, to2 = lCOM:find("COM")
	if (to1 ~= nil) then
		from1, from2 = lCOM:find("text_COM_UHF1%c")
		if (from2 ~= nil) then
			to1, to2 = lCOM:find("%c", from2+2)
			if (to1 ~= nil) then
				lCOM1 = lCOM:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lCOM:find("text_COM_UHF2%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lCOM:find("%c", from2+2)
			if (to1 ~= nil) then
				lCOM2 = lCOM:sub(from2+1, to1-1)
			end
		end
	end

	-- string with max 7 charachters
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog("2020: "..string.format("%s", lCOM1))
		ExportScript.Tools.WriteToLog("2021: "..string.format("%s", lCOM2))
	end
	ExportScript.Tools.SendData(2020, string.format("%s", lCOM1))
	ExportScript.Tools.SendData(2021, string.format("%s", lCOM2))

 -- extraction of the text showed on the VHF radio panel
 local lVHF =ExportScript.Tools.getListIndicatorValue(8)
  if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('lVHF : '..ExportScript.Tools.dump(lVHF))
	end

  if lVHF ~= nil and lVHF.text_COM_VHF ~= nil then
    -- string with max 3 charachters
    ExportScript.Tools.SendData(2043, string.format("%s", lVHF.text_COM_VHF))

    if ExportScript.Config.Debug then
      ExportScript.Tools.WriteToLog('2043: '..ExportScript.Tools.dump(lVHF.text_COM_VHF))
    end
  else
    ExportScript.Tools.SendData(2043, " ")
  end

	-- PPA Bomb Display
	local lPPA = list_indication(6)
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('lPPA : '..ExportScript.Tools.dump(lPPA))
	end

	local to1, to2, from1, from2, lPPA1, lPPA2 = nil, nil, nil, nil, "", ""
	to1, to2 = lPPA:find("PPA")
	if (to1 ~= nil) then
		from1, from2 = lPPA:find("text_PPA_QTY%c")
		if (from2 ~= nil) then
			to1, to2 = lPPA:find("%c", from2+2)
			if (to1 ~= nil) then
				lPPA1 = lPPA:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lPPA:find("text_PPA_INT%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lPPA:find("%c", from2+2)
			if (to1 ~= nil) then
				lPPA2 = lPPA:sub(from2+1, to1-1)
			end
		end
	end

	-- string with max 2 charachters
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog("2022: "..string.format("%s", lPPA1))
		ExportScript.Tools.WriteToLog("2023: "..string.format("%s", lPPA2))
	end
	ExportScript.Tools.SendData(2022, string.format("%s", lPPA1))
	ExportScript.Tools.SendData(2023, string.format("%s", lPPA2))

	-- PCN_UR Navigation Displays
	if ExportScript.Config.Debug then
		local lPCNUR = list_indication(9)
		ExportScript.Tools.WriteToLog('lPCNUR : '..ExportScript.Tools.dump(lPCNUR))
	end

	local lPCNUR = ExportScript.Tools.getListIndicatorValue(9)

  local lPCN_sub_L_T, lPCN_sub_R_T, lPCN_sub_L_B, lPCN_sub_R_B, lPCN_main_L, lPCN_main_R, lPCN_mask_L, lPCN_mask_R = "", "", "", "", "", "", "", ""
  -- map N and S
  if lPCNUR.PCN_UL_N ~= nil then
    lPCN_sub_L_T = lPCNUR.PCN_UL_N
  end
  if lPCNUR.PCN_UL_S ~= nil then
    lPCN_sub_L_B = lPCNUR.PCN_UL_S
  end
  -- map E and W
  if lPCNUR.PCN_UR_E ~= nil then
    lPCN_sub_R_T  = lPCNUR.PCN_UR_E
  end
  if lPCNUR.PCN_UR_W ~= nil then
    lPCN_sub_R_B = lPCNUR.PCN_UR_W
  end
  -- retrieve + and -
  if lPCNUR.PCN_UL_P ~= nil then
    lPCN_sub_L_T = lPCNUR.PCN_UL_P
  end
  if lPCNUR.PCN_UL_M ~= nil then
    lPCN_sub_L_B = lPCNUR.PCN_UL_M
  end
  if lPCNUR.PCN_UR_P ~= nil then
    lPCN_sub_R_T = lPCNUR.PCN_UR_P
  end
  if lPCNUR.PCN_UR_M ~= nil then
    lPCN_sub_R_B = lPCNUR.PCN_UR_M
  end

  -- retrieve main text
  if lPCNUR.PCN_UL_DIGITS ~= nil then
    lPCN_main_L = lPCNUR.PCN_UL_DIGITS
  end
  if lPCNUR.PCN_UR_DIGITS ~= nil then
    lPCN_main_R = lPCNUR.PCN_UR_DIGITS
  end
  -- retrieve mask
  if lPCNUR.PCN_UL_POINTS ~= nil then
     lPCN_mask_L = lPCNUR.PCN_UL_POINTS
  end
  if lPCNUR.PCN_UR_POINTS ~= nil then
     lPCN_mask_R = lPCNUR.PCN_UR_POINTS
  end

  local lPCN_main_L_D, lPCN_main_R_D = "", "" -- initialize variables that will hold the cleaned up text
  -- retrieve main digits and place the points according to the mask
  if (#lPCN_main_L ~= 0) then
    lPCN_main_L_D = ExportScript.PCN_place_decimal(lPCN_main_L, lPCN_mask_L)
  end
  if (#lPCN_main_R ~= 0) then
    lPCN_main_R_D = ExportScript.PCN_place_decimal(lPCN_main_R, lPCN_mask_R)
  end

	if ExportScript.Config.Debug then
		 -- string with max 1 charachters
		ExportScript.Tools.WriteToLog("2024: "..string.format("%s", lPCN_sub_L_T))
		ExportScript.Tools.WriteToLog("2025: "..string.format("%s", lPCN_sub_R_T))
		ExportScript.Tools.WriteToLog("2026: "..string.format("%s", lPCN_sub_L_B))
		ExportScript.Tools.WriteToLog("2027: "..string.format("%s", lPCN_sub_R_B))
		 -- string with max 9 charachters
		ExportScript.Tools.WriteToLog("2028: "..string.format("%s", lPCN_main_L))
		ExportScript.Tools.WriteToLog("2029: "..string.format("%s", lPCN_main_R))
    -- export string on txo Lines
    ExportScript.Tools.WriteToLog("2054: "..string.format("%s", lPCN_sub_L_T .. "\n" .. lPCN_sub_L_B))
		ExportScript.Tools.WriteToLog("2055: "..string.format("%s", lPCN_sub_R_T .. "\n" .. lPCN_sub_R_B))
    -- export clean strings with poinjts
    ExportScript.Tools.WriteToLog("2056: "..string.format("%s", lPCN_main_L_D))
		ExportScript.Tools.WriteToLog("2057: "..string.format("%s", lPCN_main_R_D))
  end

	lPCN_main_L = lPCN_main_L:gsub(":", "¦")
	lPCN_main_R = lPCN_main_R:gsub(":", "¦")
	lPCN_main_L = lPCN_main_L:sub(0, 10)
	lPCN_main_R = lPCN_main_R:sub(0, 10)
	lPCN_sub_L_T = lPCN_sub_L_T:sub(0, 2)
	lPCN_sub_R_T = lPCN_sub_R_T:sub(0, 2)
	lPCN_sub_L_B = lPCN_sub_L_B:sub(0, 2)
	lPCN_sub_R_B = lPCN_sub_R_B:sub(0, 2)

	ExportScript.Tools.SendData(2024, string.format("%s", lPCN_sub_L_T))
	ExportScript.Tools.SendData(2025, string.format("%s", lPCN_sub_R_T))
	ExportScript.Tools.SendData(2026, string.format("%s", lPCN_sub_L_B))
	ExportScript.Tools.SendData(2027, string.format("%s", lPCN_sub_R_B))
	ExportScript.Tools.SendData(2028, string.format("%s", lPCN_main_L))
	ExportScript.Tools.SendData(2029, string.format("%s", lPCN_main_R))
  -- code below enables the recovery of the two elements on top of each other
  ExportScript.Tools.SendData(2054, string.format("%s", lPCN_sub_L_T .. "\n" .. lPCN_sub_L_B))
  ExportScript.Tools.SendData(2055, string.format("%s", lPCN_sub_R_T .. "\n" .. lPCN_sub_R_B))
  ExportScript.Tools.SendData(2056, string.format("%s", lPCN_main_L_D))
  ExportScript.Tools.SendData(2057, string.format("%s", lPCN_main_R_D))

	-- PCN_BR (Poste de Commande Navigation)
  -- NEW CODE below for 2.7
  local lPCNBR = list_indication(10)
  if ExportScript.Config.Debug then
  	ExportScript.Tools.WriteToLog('lPCNBR : '..ExportScript.Tools.dump(lPCNBR))
  end

  local lPCNBR = ExportScript.Tools.getListIndicatorValue(10)
  local lPCN_BR1, lPCN_BR2
  if lPCNBR ~= nil and lPCNBR.PCN_BL_DIGITS ~= nil then
    lPCN_BR1 = lPCNBR.PCN_BL_DIGITS
  else
    lPCN_BR1 = "  "
  end
  if lPCNBR ~= nil and lPCNBR.PCN_BR_DIGITS ~= nil then
    lPCN_BR2 = lPCNBR.PCN_BR_DIGITS
  else
    lPCN_BR2 = "  "
  end

	-- string with max 2 charachters
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog("2030: "..string.format("%s", lPCN_BR1))
		ExportScript.Tools.WriteToLog("2031: "..string.format("%s", lPCN_BR2))
	end
	ExportScript.Tools.SendData(2030, string.format("%s", lPCN_BR1))
	ExportScript.Tools.SendData(2031, string.format("%s", lPCN_BR2))

-- Radar IFF Mode
--[[
	[601] = "%.1f",	--	1. Drum
	[602] = "%.1f",	--	2.
	[603] = "%.1f",	--	3.
	[604] = "%.1f",	--	4.
]]
	local digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(601) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(602) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(603) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(604) * 10)

	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog("2032: "..string.format("%s", digits[1]))
		ExportScript.Tools.WriteToLog("2033: "..string.format("%s", digits[2]))
		ExportScript.Tools.WriteToLog("2034: "..string.format("%s", digits[3]))
		ExportScript.Tools.WriteToLog("2035: "..string.format("%s", digits[4]))
	end

	ExportScript.Tools.SendData(2032, digits[1])
	ExportScript.Tools.SendData(2033, digits[2])
	ExportScript.Tools.SendData(2034, digits[3])
	ExportScript.Tools.SendData(2035, digits[4])

-- EVF Channel post processing to get a displayable number
--local EVF_Channels = {[0.00]=" 1", [0.05]=" 2", [0.10]=" 3", [0.15]=" 4", [0.20]=" 5", [0.25]=" 6", [0.30]=" 7", [0.35]=" 8", [0.40]=" 9", [0.45]="10", [0.50]="11", [0.55]="12", [0.60]="13", [0.65]="14", [0.70]="15", [0.75]="16", [0.80]="17", [0.85]="18", [0.90]="19", [0.95]="20"}
--[[  EVF_Channel = string.format("%02d", (mainPanelDevice:get_argument_value(968) * 20) + 1)
  ExportScript.Tools.SendData(2068, EVF_Channel)
	if ExportScript.Config.Debug then
    ExportScript.Tools.WriteToLog("2068: "..string.format("%s", EVF_Channel))
  end ]]

-- VOR ILS
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(611) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(612) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(613) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(614) * 10)
	digits[5] = string.format("%1.0f",mainPanelDevice:get_argument_value(615) * 10)

	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog("2036-1: "..string.format("%s", digits[1]))
		ExportScript.Tools.WriteToLog("2036-2: "..string.format("%s", digits[2]))
		ExportScript.Tools.WriteToLog("2036-3: "..string.format("%s", digits[3]))
		ExportScript.Tools.WriteToLog("2036-4: "..string.format("%s", digits[4]))
		ExportScript.Tools.WriteToLog("2036-5: "..string.format("%s", digits[5]))
	end

	ExportScript.Tools.SendData(2036, digits[1]..digits[2]..digits[3].."."..digits[4]..digits[5])

-- TACAN
--[[
	[620] = "%.1f",	--	X/Y
	[621] = "%.4f",	--	Drum XX0 left (--;1-12;--)
	[622] = "%.4f",	--	Drum 00X right	(0;1-9;0)
]]
	local lTACAN_FREQUENCE1 = {[-0.3]=" ",[-0.2]="1",[-0.1]="2",[0.0]="3",[0.1]="4",[0.2]="5",[0.3]="6",[0.4]="7",[0.5]="8",[0.6]="9",[0.7]="10",[0.8]="11",[0.9]="12",[1.0]=" "}
	digits = {}
	--digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(620) * 10)
	--digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(621) * 10)
	digits[1] = (mainPanelDevice:get_argument_value(620) == 0 and "X" or "Y")
	digits[2] = lTACAN_FREQUENCE1[tonumber(string.format("%0.1f",mainPanelDevice:get_argument_value(621)))]
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(622) * 10)
	digits[3] = (digits[3] == "10" and "0" or digits[3])

	ExportScript.Tools.SendData(2037, digits[1]..digits[2]..digits[3])

-- U/VHF Com
	ExportScript.Tools.SendData(2038, ExportScript.Tools.DisplayFormat(string.format("%1.0f",mainPanelDevice:get_argument_value(440) * 10), 1))
	ExportScript.Tools.SendData(2039, ExportScript.Tools.DisplayFormat(string.format("%1.0f",mainPanelDevice:get_argument_value(441) * 10), 1))
	ExportScript.Tools.SendData(2040, ExportScript.Tools.DisplayFormat(string.format("%1.0f",mainPanelDevice:get_argument_value(442) * 10), 1))
	ExportScript.Tools.SendData(2041, ExportScript.Tools.DisplayFormat(string.format("%1.0f",mainPanelDevice:get_argument_value(443) * 10), 1))
	local lTmpNumber = tonumber(string.format("%1.0f",mainPanelDevice:get_argument_value(444) * 100))
	local lRetVal = ""
	if lTmpNumber == 0 then
		lRetVal = "00"
	else 
		lRetVal = ExportScript.Tools.DisplayFormat(tostring(lTmpNumber), 2)
	end
	ExportScript.Tools.SendData(2042, lRetVal)

	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('2038: '..ExportScript.Tools.dump(string.format("%1.0f",mainPanelDevice:get_argument_value(440) * 10)))
		ExportScript.Tools.WriteToLog('2039: '..ExportScript.Tools.dump(string.format("%1.0f",mainPanelDevice:get_argument_value(441) * 10)))
		ExportScript.Tools.WriteToLog('2040: '..ExportScript.Tools.dump(string.format("%1.0f",mainPanelDevice:get_argument_value(442) * 10)))
		ExportScript.Tools.WriteToLog('2041: '..ExportScript.Tools.dump(string.format("%1.0f",mainPanelDevice:get_argument_value(443) * 10)))
		ExportScript.Tools.WriteToLog('2042: '..ExportScript.Tools.dump(string.format("%1.0f",mainPanelDevice:get_argument_value(444) * 100)))
		ExportScript.Tools.WriteToLog('2042-2: '..ExportScript.Tools.dump(lTmpNumber))
	end

-- U/VHF Com Preset
	--[436] = "%.4f",	-- 	Preset display (1-20)
	local lUVHF_RADIO_PRESET = {[0.00]="1",[0.10]="2",[0.15]="3",[0.20]="4",[0.25]="5",[0.30]="6",[0.35]="7",[0.40]="8",[0.45]="9",[0.50]="10",[0.55]="11",[0.60]="12",[0.65]="13",[0.70]="14",[0.75]="15",[0.80]="16",[0.85]="17",[0.90]="18",[0.95]="19",[1.00]="20"}
	ExportScript.Tools.SendData(436, ExportScript.Tools.DisplayFormat(lUVHF_RADIO_PRESET[tonumber(string.format("%1.2f",mainPanelDevice:get_argument_value(436)))], 2))

	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('436-1: '..ExportScript.Tools.dump(string.format("%1.2f",mainPanelDevice:get_argument_value(436))))
		ExportScript.Tools.WriteToLog('436-2: '..ExportScript.Tools.dump(lUVHF_RADIO_PRESET[tonumber(string.format("%1.2f",mainPanelDevice:get_argument_value(436)))]))
	end

-- VHF Com Preset
	--[190] = "%.4f",	--	Drum X0 Preset  (0-1-2)
	--[189] = "%.4f",	--	Drum 0X Preset (0-9-0)
	local lVHF_RADIO_PRESET = {[0.0]="0",[0.1]="1",[0.2]="2",[0.3]="3",[0.4]="4",[0.5]="5",[0.6]="6",[0.7]="7",[0.8]="8",[0.9]="9",[1.0]="0"}
	local lTmpNumber = mainPanelDevice:get_argument_value(190)
	if lTmpNumber > 0.2 then
		lTmpNumber = 0.2
	end
	ExportScript.Tools.SendData(189, ExportScript.Tools.DisplayFormat(lVHF_RADIO_PRESET[tonumber(string.format("%1.1f",lTmpNumber))]..lVHF_RADIO_PRESET[tonumber(string.format("%1.1f",mainPanelDevice:get_argument_value(189)))], 2))

	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('189: '..ExportScript.Tools.dump(lVHF_RADIO_PRESET[tonumber(string.format("%1.1f",lTmpNumber))]..lVHF_RADIO_PRESET[tonumber(string.format("%1.1f",mainPanelDevice:get_argument_value(189)))]))
	end

-- Display Settings
	--[224] = "%.4f",	--Drum X000
	--[225] = "%.4f",	--Drum 0X00
	--[226] = "%.4f",	--Drum 00X0
	--[227] = "%.4f",	--Drum 000X
	digits = {}
	digits[1] = mainPanelDevice:get_argument_value(224) * 10
	digits[2] = mainPanelDevice:get_argument_value(225) * 10
	digits[3] = mainPanelDevice:get_argument_value(226) * 10
	digits[4] = mainPanelDevice:get_argument_value(227) * 10
	digits[1] = (digits[1] > 7 and 7 or digits[1])
	digits[2] = (digits[2] > 7 and 7 or digits[2])
	digits[3] = (digits[3] > 7 and 7 or digits[3])
	digits[4] = (digits[4] > 7 and 7 or digits[4])
	ExportScript.Tools.SendData(224, string.format("%1.0f",digits[1]))
	ExportScript.Tools.SendData(225, string.format("%1.0f",digits[2]))
	ExportScript.Tools.SendData(226, string.format("%1.0f",digits[3]))
	ExportScript.Tools.SendData(227, string.format("%1.0f",digits[4]))

	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('224: '..ExportScript.Tools.dump(string.format("%1.0f",mainPanelDevice:get_argument_value(224) * 10)))
		ExportScript.Tools.WriteToLog('225: '..ExportScript.Tools.dump(string.format("%1.0f",mainPanelDevice:get_argument_value(225) * 10)))
		ExportScript.Tools.WriteToLog('226: '..ExportScript.Tools.dump(string.format("%1.0f",mainPanelDevice:get_argument_value(226) * 10)))
		ExportScript.Tools.WriteToLog('227: '..ExportScript.Tools.dump(string.format("%1.0f",mainPanelDevice:get_argument_value(227) * 10)))
	end

  -- engine % (cleaned up from float stored in DCS ID 369)
  local lEngine_percent = ""
  if ExportScript.Config.Debug then
    ExportScript.Tools.WriteToLog('2058: '..ExportScript.Tools.dump(string.format("%1.0f",mainPanelDevice:get_argument_value(369) * 100)))
  end
  lEngine_percent = string.format("%1.0f", mainPanelDevice:get_argument_value(369) * 100) .. "%"
  ExportScript.Tools.SendData(2058, lEngine_percent)

  -- HSI indicator cleaned up parameters
  digits = {}
  digits[1] = mainPanelDevice:get_argument_value(336) * 10
  digits[2] = mainPanelDevice:get_argument_value(337) * 10
  digits[3] = mainPanelDevice:get_argument_value(338) * 10
  digits[4] = mainPanelDevice:get_argument_value(339) * 10
  for i = 1, 4, 1
  do
     if math.floor(digits[i] + 0.5) >= 10 then
       digits[i] = 0
     else
       digits[i] = math.floor(digits[i] + 0.5)
     end
  end
  local lHSI_X000 = ""
  local lHSI_0X00 = ""
  local lHSI_00X0 = ""
  local lHSI_000X = ""
  lHSI_X000 = string.format("%1d", digits[1])
  if string.len(lHSI_X000) > 1 then
    lHSI_X000 = string.sub(lHSI_X000, -1)
  end
  lHSI_0X00 = string.format("%1d", digits[2])
  if string.len(lHSI_0X00) > 1 then
    lHSI_0X00 = string.sub(lHSI_0X00, -1)
  end
  lHSI_00X0 = string.format("%1d", digits[3])
  if string.len(lHSI_00X0) > 1 then
    lHSI_00X0 = string.sub(lHSI_00X0, -1)
  end
  if string.len(string.format("%1d", digits[4])) > 2 then
    lHSI_000X = '.' .. string.sub(string.format("%1d", digits[4]), -1)
  else
    lHSI_000X = '.' .. string.format("%1d", digits[4])
  end
  ExportScript.Tools.SendData(2336, lHSI_X000)
  ExportScript.Tools.SendData(2337, lHSI_0X00)
  ExportScript.Tools.SendData(2338, lHSI_00X0)
  ExportScript.Tools.SendData(2339, lHSI_000X)
  ExportScript.Tools.SendData(3339, lHSI_X000..lHSI_0X00..lHSI_00X0..lHSI_000X)
  if ExportScript.Config.Debug then
    ExportScript.Tools.WriteToLog('2336: '..ExportScript.Tools.dump(string.format("%1.0f", mainPanelDevice:get_argument_value(336) * 10)))
    ExportScript.Tools.WriteToLog('2337: '..ExportScript.Tools.dump(string.format("%1.0f", mainPanelDevice:get_argument_value(337) * 10)))
    ExportScript.Tools.WriteToLog('2338: '..ExportScript.Tools.dump(string.format("%1.0f", mainPanelDevice:get_argument_value(338) * 10)))
    ExportScript.Tools.WriteToLog('2339: '..ExportScript.Tools.dump(string.format("%1.0f", mainPanelDevice:get_argument_value(339) * 10)))
  end

  local lHSI_Heading = 0
  local lHSI_Needle = 0
  lHSI_Heading = mainPanelDevice:get_argument_value(318) * 360
  lHSI_Needle = (mainPanelDevice:get_argument_value(334) * 360) + lHSI_Heading
  if lHSI_Needle > 360 then
    lHSI_Needle = lHSI_Needle - 360
  end
  ExportScript.Tools.SendData(2318, string.format("%03d", lHSI_Heading))
  ExportScript.Tools.SendData(2334,  string.format("%03d", lHSI_Needle))
  if ExportScript.Config.Debug then
    ExportScript.Tools.WriteToLog('2318: '..ExportScript.Tools.dump(string.format("%03d", lHSI_Heading)))
    ExportScript.Tools.WriteToLog('2334: '..ExportScript.Tools.dump(string.format("%03d", lHSI_Heading)))
  end

  -- Altitude indicator cleaned up parameters
  digits = {}
  digits[1] = math.floor(mainPanelDevice:get_argument_value(306) * 10 + 0.5)
  digits[2] = math.floor(mainPanelDevice:get_argument_value(307) * 10 + 0.5)
  local lAngel = ""
  local lFeet = ""
  local lAltitude = ""
  lAngel = string.format("%01d", digits[1]) .. string.format("%01d", digits[2])
  lFeet = string.sub("000" .. string.format("%03d", mainPanelDevice:get_argument_value(305) * 1000), -3)
  lAltitude = lAngel .. lFeet
  ExportScript.Tools.SendData(2306, lAngel)
  ExportScript.Tools.SendData(2305, lFeet)
  ExportScript.Tools.SendData(2307, lAltitude)
  if ExportScript.Config.Debug then
    ExportScript.Tools.WriteToLog('2306: '..ExportScript.Tools.dump(lAngel))
    ExportScript.Tools.WriteToLog('2305: '..ExportScript.Tools.dump(lFeet))
    ExportScript.Tools.WriteToLog('2307: '..ExportScript.Tools.dump(lAltitude))
  end

  -- mach meter and tachymeter
  local lTachy = ""
  local lMach = ""
  lTachy = string.format("%04d", mainPanelDevice:get_argument_value(303) * 1000)
  lMach = string.format("%1.2f", mainPanelDevice:get_argument_value(304) * 10)
  ExportScript.Tools.SendData(2303, lTachy)
  ExportScript.Tools.SendData(2304, lMach)
  if ExportScript.Config.Debug then
    ExportScript.Tools.WriteToLog('2303 '..ExportScript.Tools.dump(lTachy))
    ExportScript.Tools.WriteToLog('2304: '..ExportScript.Tools.dump(lMach))
  end

 -- Pitch angle
  local PAngle = ""
  PAngle = string.format("%04d", mainPanelDevice:get_argument_value(316) * 100)
  ExportScript.Tools.SendData(2316, PAngle)
  if ExportScript.Config.Debug then
    ExportScript.Tools.WriteToLog('2316 '..ExportScript.Tools.dump(PAngle))
  end

  -- Jauge and DETOT
  local lJAUGE = "0000"
  digits = {}
  digits[1] = math.floor(mainPanelDevice:get_argument_value(349) * 10 + 0.5)
  digits[2] = math.floor(mainPanelDevice:get_argument_value(350) * 10 + 0.5)
  digits[3] = math.floor(mainPanelDevice:get_argument_value(351) * 100 + 0.5)
  lJAUGE = string.format("%01d", digits[1]) .. string.format("%01d", digits[2]) .. string.format("%02d", digits[3])
  ExportScript.Tools.SendData(2349, lJAUGE)
  if ExportScript.Config.Debug then
    ExportScript.Tools.WriteToLog('2349 '..ExportScript.Tools.dump(lJAUGE))
  end
  local lDETOT = "0000"
  digits = {}
  digits[1] = math.floor(mainPanelDevice:get_argument_value(352) * 10 + 0.5)
  digits[2] = math.floor(mainPanelDevice:get_argument_value(353) * 10 + 0.5)
  digits[3] = math.floor(mainPanelDevice:get_argument_value(354) * 100 + 0.5)
  lDETOT = string.format("%01d", digits[1]) .. string.format("%01d", digits[2]) .. string.format("%02d", digits[3])
  ExportScript.Tools.SendData(2352, lDETOT)
  if ExportScript.Config.Debug then
    ExportScript.Tools.WriteToLog('2352 '..ExportScript.Tools.dump(lDETOT))
  end

  -- IFF Digits
  local IFF_1 = "0"
  local IFF_2 = "0"
  local IFF_3 = "0"
  local IFF_4 = "0"
  IFF_1 = string.format("%d", mainPanelDevice:get_argument_value(601) * 10)
  IFF_2 = string.format("%d", mainPanelDevice:get_argument_value(602) * 10)
  IFF_3 = string.format("%d", mainPanelDevice:get_argument_value(603) * 10)
  IFF_4 = string.format("%d", mainPanelDevice:get_argument_value(604) * 10)
  ExportScript.Tools.SendData(2601, IFF_1)
  ExportScript.Tools.SendData(2602, IFF_2)
  ExportScript.Tools.SendData(2603, IFF_3)
  ExportScript.Tools.SendData(2604, IFF_4)
  if ExportScript.Config.Debug then
    ExportScript.Tools.WriteToLog('2601 '..ExportScript.Tools.dump(IFF_1))
    ExportScript.Tools.WriteToLog('2602 '..ExportScript.Tools.dump(IFF_2))
    ExportScript.Tools.WriteToLog('2603 '..ExportScript.Tools.dump(IFF_3))
    ExportScript.Tools.WriteToLog('2604 '..ExportScript.Tools.dump(IFF_4))
  end

  -- end cycle
  ExportScript.Tools.FlushData()
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

  -- FUEL
	local lFUEL = ExportScript.Tools.getListIndicatorValue(3)

	if lFUEL ~= nil and lFUEL.txt_fuel_g ~= nil then
		-- string with max 3 charachters
		ExportScript.Tools.SendDataDAC(2003, string.format("%s", lFUEL.txt_fuel_g))
	else
		ExportScript.Tools.SendDataDAC(2003, "-")
	end

	-- COM
	local lCOM = list_indication(7)
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('COM : '..ExportScript.Tools.dump(lCOM))
	end

	local to1, to2, from1, from2, lCOM1, lCOM2 = nil, nil, nil, nil, "-", "-"
	to1, to2 = lCOM:find("COM")
	if (to1 ~= nil) then
		from1, from2 = lCOM:find("text_COM_UHF1%c")
		if (from2 ~= nil) then
			to1, to2 = lCOM:find("%c", from2+2)
			if (to1 ~= nil) then
				lCOM1 = lCOM:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lCOM:find("text_COM_UHF2%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lCOM:find("%c", from2+2)
			if (to1 ~= nil) then
				lCOM2 = lCOM:sub(from2+1, to1-1)
			end
		end
	end

	-- string with max 7 charachters
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog("lCOM1: "..string.format("%s", lCOM1))
		ExportScript.Tools.WriteToLog("lCOM2: "..string.format("%s", lCOM2))
	end
	ExportScript.Tools.SendDataDAC(2020, string.format("%s", lCOM1))
	ExportScript.Tools.SendDataDAC(2021, string.format("%s", lCOM2))

	-- PPA
	local lPPA = list_indication(6)
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('PPA : '..ExportScript.Tools.dump(lPPA))
	end

	local to1, to2, from1, from2, lPPA1, lPPA2 = nil, nil, nil, nil, "-", "-"
	to1, to2 = lPPA:find("PPA")
	if (to1 ~= nil) then
		from1, from2 = lPPA:find("text_PPA_QTY%c")
		if (from2 ~= nil) then
			to1, to2 = lPPA:find("%c", from2+2)
			if (to1 ~= nil) then
				lPPA1 = lPPA:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lPPA:find("text_PPA_INT%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lPPA:find("%c", from2+2)
			if (to1 ~= nil) then
				lPPA2 = lPPA:sub(from2+1, to1-1)
			end
		end
	end

	-- string with max 2 charachters
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog("lPPA1: "..string.format("%s", lPPA1))
		ExportScript.Tools.WriteToLog("lPPA2: "..string.format("%s", lPPA2))
	end
	ExportScript.Tools.SendDataDAC(2022, string.format("%s", lPPA1))
	ExportScript.Tools.SendDataDAC(2023, string.format("%s", lPPA2))

	-- send data
	ExportScript.Tools.FlushDataDAC(#ExportScript.Config.DAC)

-- uncomment the code below to access DCS exported parameters
--[[
	ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
	ExportScript.Tools.WriteToLog('CMSP: '..ExportScript.Tools.dump(list_indication(7)))

	-- list_indication get the value of cockpit displays
	local ltmp1 = 0
	for ltmp2 = 0, 20, 1 do
    ExportScript.Tools.WriteToLog('loop')
		ltmp1 = list_indication(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
	end
  ExportScript.Tools.WriteToLog('end 1')

  -- getmetatable get function name from devices
	local ltmp1 = 0
	for ltmp2 = 1, 70, 1 do
		ltmp1 = GetDevice(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
		ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
]]
end

-- end script
