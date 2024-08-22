-- OH-58D Kiowa by Polychop Sims Export
-- https://github.com/asherao/DCS-ExportScripts

ExportScript.FoundDCSModule = true
ExportScript.Version.OH58D = "1.2.1"

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
	[0] = "%.2f", -- Open/Close Left Door {0,1,1}
	[0] = "%.2f", -- Open/Close Right Door {0,1,1}
	[0] = "%.2f", -- Open/Close Left Armor Panel {0,1,1}
	[0] = "%.2f", -- Open/Close Right Armor Panel {0,1,1}
	[0] = "%.2f", -- M4 Stow/Deploy {0,1,1}
	[0] = "%.2f", -- Drop Smoke Grenade {0,1,1}
	[7] = "%.2f", -- Start Switch {0,1,1}
	[9] = "%.2f", -- Throttle Idle Release Switch {0,1,1}
	[10] = "%.2f", -- EBF Filter Bypass Button {0,1,1}
	[12] = "%.2f", -- Channel Select Switch Up/Down {-1,1,1}
	[13] = "%.2f", -- Channel Select Switch Left/Right {-1,1,1}
	[14] = "%.2f", -- Radio Select Switch 1/3 {-1,1,1}
	[15] = "%.2f", -- Engine Rpm Trim {-1,1,1}
	[16] = "%.2f", -- Radio Select Switch 2/4 {-1,1,1}
	[17] = "%.2f", -- Radio Select Switch 5 {-1,1,1}
	[27] = "%.2f", -- Force Trim - Interrupt {0,1,1}
	[29] = "%.2f", -- SCAS Release {0,1,1}
	[30] = "%.2f", -- Missile Activate (ATAS Only) {0,1,1}
	[32] = "%.2f", -- Area Track {0,1,1}
	[34] = "%.2f", -- ODA Button {0,1,1}
	[35] = "%.2f", -- Fire Laser {0,1,1}
	[36] = "%.2f", -- Brightness Dial {0,0,0.8}
	[37] = "%.2f", -- Day/Night Switch {0,1,1}
	[38] = "%.2f", -- On/Off/Test Knob {-1,1,1}
	[39] = "%.2f", -- Audio Dial {0,0,0.75}
	[40] = "%.2f", -- Lamp Dial {0,0,0.75}
	[41] = "%.2f", -- Flare Dispenser Button {0,1,1}
	[42] = "%.2f", -- Missile Step Button {0,1,1}
	[43] = "%.2f", -- Nav/Target Designate Switch {-1,1,1}
	[44] = "%.2f", -- Arm/Safe Switch {0,1,1}
	[45] = "%.2f", -- Auto/Bypass Switch {0,1,1}
	[46] = "%.2f", -- Emergency Jettison Cover {0,1,1}
	[47] = "%.2f", -- Emergency Jettison [Launch All] {0,1,1}
	[48] = "%.2f", -- Point Track {0,1,1}
	[49] = "%.2f", -- IZLID [Gun Laser] {-1,1,1}
	[50] = "%.2f", -- Ignition Keylock Switch {0,1,1}
	[51] = "%.2f", -- Hover Bob-Up/Wpt Drop Button {0,1,1}
	[52] = "%.2f", -- Weapon Fire Cover {0,1,1}
	[58] = "%.2f", -- Adjustment Knob {0,1,1}
	[59] = "%.2f", -- Adjustment Knob {0,0.5,1}
	[62] = "%.2f", -- Barometric Knob {0,0,1}
	[69] = "%.2f", -- Display Mode Manual/NVG {0,1,1}
	[70] = "%.2f", -- Weapon Fire Button {0,1,1}
	[71] = "%.2f", -- ICS Radio Button {0,1,1}
	[72] = "%.2f", -- Display Mode Primary/Backup {0,1,1}
	[73] = "%.2f", -- Line Address Key L1 {0,1,1}
	[74] = "%.2f", -- Line Address Key L2 {0,1,1}
	[75] = "%.2f", -- Line Address Key L3 {0,1,1}
	[76] = "%.2f", -- Line Address Key L4 {0,1,1}
	[77] = "%.2f", -- Line Address Key L5 {0,1,1}
	[78] = "%.2f", -- Line Address Key R1 {0,1,1}
	[79] = "%.2f", -- Line Address Key R2 {0,1,1}
	[80] = "%.2f", -- Line Address Key R3 {0,1,1}
	[81] = "%.2f", -- Line Address Key R4 {0,1,1}
	[82] = "%.2f", -- Line Address Key R5 {0,1,1}
	[83] = "%.2f", -- Line Address Key B1 {0,1,1}
	[84] = "%.2f", -- Line Address Key B2 {0,1,1}
	[85] = "%.2f", -- Line Address Key B3 {0,1,1}
	[86] = "%.2f", -- Line Address Key B4 {0,1,1}
	[87] = "%.2f", -- INIT {0,1,1}
	[88] = "%.2f", -- Brightness {-1,1,1}
	[89] = "%.2f", -- Contrast {-1,1,1}
	[90] = "%.2f", -- Weapon Select Switch Up/Down {-1,1,1}
	[91] = "%.2f", -- Weapon Select Switch Left/Right {-1,1,1}
	[92] = "%.2f", -- Display Select Switch Up/Down {-1,1,1}
	[93] = "%.2f", -- Display Select Switch Left/Right {-1,1,1}
	[94] = "%.2f", -- Searchlight Control Switch Extend/Retract {-1,1,1}
	[95] = "%.2f", -- Searchlight Control Switch Left/Right {-1,1,1}
	[96] = "%.2f", -- SCAS Heading Hold Switch Engage/Disengage {-1,1,1}
	[97] = "%.2f", -- SCAS Heading Hold Switch Trim Left/Trim Right {-1,1,1}
	[98] = "%.2f", -- Searchlight Switch {0,1,1}
	[109] = "%.2f", -- INIT [Initial Page] {0,1,1}
	[111] = "%.2f", -- ALFGL Switch {0,1,1}
	[112] = "%.2f", -- WPN/ASE Switch {-1,1,1}
	[113] = "%.2f", -- IDM/INIT Switch {-1,1,1}
	[114] = "%.2f", -- L2MUM Switch {0,1,1}
	[115] = "%.2f", -- TIS Switch {-1,1,1}
	[116] = "%.2f", -- LMC Switch {0,1,1}
	[117] = "%.2f", -- ALE Switch {0,1,1}
	[118] = "%.2f", -- BIT/Reset Switch {-1,1,1}
	[119] = "%.2f", -- Test/Digit Switch {-1,1,1}
	[120] = "%.2f", -- Select Switch {-1,1,1}
	[121] = "%.2f", -- Multifunction Display Backup Button {0,1,1}
	[122] = "%.2f", -- Brightness Dial {0,0,1}
	[123] = "%.2f", -- Left Cipher Button {0,1,1}
	[124] = "%.2f", -- Right Cipher Button {0,1,1}
	[125] = "%.2f", -- Test Button {0,1,1}
	[126] = "%.2f", -- Brightness Dial {0,0,0.8}
	[130] = "%.2f", -- Reset/Set Button {0,1,1}
	[131] = "%.2f", -- Mode Button {0,1,1}
	[132] = "%.2f", -- Start/Stop/Advance Button {0,1,1}
	[135] = "%.2f", -- MMS Code List Button {0,1,1}
	[136] = "%.2f", -- MMS First/Last Switch {0,1,1}
	[137] = "%.2f", -- MMS Laser Power Switch {-1,1,1}
	[138] = "%.2f", -- MFD Symbology Intensity Switch {-1,1,1}
	[139] = "%.2f", -- MMS Symbology Intensity Switch {-1,1,1}
	[140] = "%.2f", -- Video Gain Switch {-1,1,1}
	[141] = "%.2f", -- Video Level Switch {-1,1,1}
	[142] = "%.2f", -- Video Focus Switch {-1,1,1}
	[143] = "%.2f", -- MMS Symbology Intensity Switch Manual/Auto {0,1,1}
	[144] = "%.2f", -- Video Gain Switch Manual/Auto {0,1,1}
	[145] = "%.2f", -- Video Level Switch Manual/Auto {0,1,1}
	[146] = "%.2f", -- Video Focus Switch Manual/Auto {0,1,1}
	[147] = "%.2f", -- MMS Mode Selector {0,0.2,1}
	[161] = "%.2f", -- Force Trim Switch {0,1,1}
	[162] = "%.2f", -- Hydraulic System Switch {0,1,1}
	[163] = "%.2f", -- Pitch/Roll Engage Switch {0,1,1}
	[164] = "%.2f", -- Yaw Engage Switch {0,1,1}
	[165] = "%.2f", -- Power Switch {0,1,1}
	[166] = "%.2f", -- Test Button {0,1,1}
	[167] = "%.2f", -- Left Pylon Jettison Switch Guard {0,1,1}
	[168] = "%.2f", -- Right Pylon Jettison Switch Guard {0,1,1}
	[169] = "%.2f", -- Left Pylon Jettison Switch {0,1,1}
	[170] = "%.2f", -- Right Pylon Jettison Switch {0,1,1}
	[171] = "%.2f", -- Master Switch {-1,1,1}
	[172] = "%.2f", -- Gun Switch {-1,1,1}
	[173] = "%.2f", -- Volume Control Knob {0,0,0.8}
	[174] = "%.2f", -- Radio Monitor 1 [FM1] {0,1,1}
	[175] = "%.2f", -- Radio Monitor 1 [FM1] {0,0.5,0.8}
	[176] = "%.2f", -- Radio Monitor 2 [UHF] {0,1,1}
	[177] = "%.2f", -- Radio Monitor 2 [UHF] {0,0.5,0.8}
	[178] = "%.2f", -- Radio Monitor 3 [VHF] {0,1,1}
	[179] = "%.2f", -- Radio Monitor 3 [VHF] {0,0.5,0.8}
	[180] = "%.2f", -- Radio Monitor 4 [N/A] {0,1,1}
	[181] = "%.2f", -- Radio Monitor 4 [N/A] {0,0.5,0.8}
	[182] = "%.2f", -- Radio Monitor 5 [FM2] {0,1,1}
	[183] = "%.2f", -- Radio Monitor 5 [FM2] {0,0.5,0.8}
	[184] = "%.2f", -- Radio Monitor NAV A Audio Ouput {0,0,0.8}
	[185] = "%.2f", -- Radio Monitor NAV B Audio Ouput {0,0,0.8}
	[186] = "%.2f", -- ICS Rotary Switch {0,0.1,0.3}
	[187] = "%.2f", -- Vox Control {0,0,0.8}
	[188] = "%.2f", -- Transmit Selector Switch {0,0.1,0.7}
	[189] = "%.2f", -- MIC Switch {0,1,1}
	[190] = "%.2f", -- Remote ICS Switch {-1,1,1}
	[192] = "%.2f", -- Acknowledge/Recall Switch {0,1,1}
	[193] = "%.2f", -- Zeroize Switch Guard {0,1,1}
	[194] = "%.2f", -- Emergency Switch Guard {0,1,1}
	[195] = "%.2f", --  Zeroize Switch {0,1,1}
	[196] = "%.2f", -- Emergency Switch {0,1,1}
	[197] = "%.2f", -- Num 1 {0,1,1}
	[198] = "%.2f", -- Num 2 {0,1,1}
	[199] = "%.2f", -- Num 3 {0,1,1}
	[200] = "%.2f", -- Num 4 {0,1,1}
	[201] = "%.2f", -- Num 5 {0,1,1}
	[202] = "%.2f", -- Num 6 {0,1,1}
	[203] = "%.2f", -- Num 7 {0,1,1}
	[204] = "%.2f", -- Num 8 {0,1,1}
	[205] = "%.2f", -- Num 9 {0,1,1}
	[206] = "%.2f", -- Num 0 {0,1,1}
	[207] = "%.2f", -- Num Decimal {0,1,1}
	[208] = "%.2f", -- Line Clear {0,1,1}
	[209] = "%.2f", -- IFF {0,1,1}
	[210] = "%.2f", -- Tune {0,1,1}
	[211] = "%.2f", -- Scan {0,1,1}
	[212] = "%.2f", -- Space {0,1,1}
	[213] = "%.2f", -- Ident {0,1,1}
	[214] = "%.2f", -- Enter {0,1,1}
	[215] = "%.2f", -- Minus/Hyphen {0,1,1}
	[216] = "%.2f", -- Alpha A {0,1,1}
	[217] = "%.2f", -- Alpha B {0,1,1}
	[218] = "%.2f", -- Alpha C {0,1,1}
	[219] = "%.2f", -- Alpha D {0,1,1}
	[220] = "%.2f", -- Alpha E {0,1,1}
	[221] = "%.2f", -- Alpha F {0,1,1}
	[222] = "%.2f", -- Alpha G {0,1,1}
	[223] = "%.2f", -- Alpha H {0,1,1}
	[224] = "%.2f", -- Alpha I {0,1,1}
	[225] = "%.2f", -- Alpha J {0,1,1}
	[226] = "%.2f", -- Alpha K {0,1,1}
	[227] = "%.2f", -- Alpha L {0,1,1}
	[228] = "%.2f", -- Alpha M {0,1,1}
	[229] = "%.2f", -- Alpha N {0,1,1}
	[230] = "%.2f", -- Alpha O {0,1,1}
	[231] = "%.2f", -- Alpha P {0,1,1}
	[232] = "%.2f", -- Alpha Q {0,1,1}
	[233] = "%.2f", -- Alpha R {0,1,1}
	[234] = "%.2f", -- Alpha S {0,1,1}
	[235] = "%.2f", -- Alpha T {0,1,1}
	[236] = "%.2f", -- Alpha U {0,1,1}
	[237] = "%.2f", -- Alpha V {0,1,1}
	[238] = "%.2f", -- Alpha W {0,1,1}
	[239] = "%.2f", -- Alpha X {0,1,1}
	[240] = "%.2f", -- Alpha Y {0,1,1}
	[241] = "%.2f", -- Alpha Z {0,1,1}
	[242] = "%.2f", -- Arrow Left (Backspace) {0,1,1}
	[243] = "%.2f", -- Arrow Right (Space) {0,1,1}
	[247] = "%.2f", -- FADEC Circuit Breaker Switch {0,1,1}
	[248] = "%.2f", -- Battery 1 Switch {-1,1,1}
	[249] = "%.2f", -- Battery 2 Switch {-1,1,1}
	[250] = "%.2f", -- Ignition Circuit Breaker Switch {0,1,1}
	[251] = "%.2f", -- Console Lighting Brightness Dial {0,0,0.8}
	[252] = "%.2f", --  Instrument Lighting Brightness Dial {0,0,0.8}
	[253] = "%.2f", -- Flood Light Brightness Dial {0,0,1}
	[254] = "%.2f", -- Pitot Heater Switch {0,1,1}
	[255] = "%.2f", -- Heater Switch {0,1,1}
	[256] = "%.2f", -- Left Defog Blower Switch {0,1,1}
	[257] = "%.2f", -- Right Defog Blower Switch {0,1,1}
	[258] = "%.2f", -- Compartment Blower Switch {-1,1,1}
	[259] = "%.2f", -- Fuel Boost Switch {0,1,1}
	[260] = "%.2f", -- Engine Anti Ice Switch {0,1,1}
	[261] = "%.2f", -- Engine Oil Bypass Switch {0,1,1}
	[262] = "%.2f", -- Essential Bus Run/Start Switch {0,1,1}
	[263] = "%.2f", -- AC Generator Switch {0,1,1}
	[264] = "%.2f", -- DC Generator Switch {-1,1,1}
	[268] = "%.2f", -- HF Circuit Breaker Switch {0,1,1}
	[269] = "%.2f", -- IFF Circuit Breaker Switch {0,1,1}
	[270] = "%.2f", -- Radar Detector Circuit Breaker Switch {0,1,1}
	[271] = "%.2f", -- Radar Warning Circuit Breaker Switch {0,1,1}
	[272] = "%.2f", -- L2MUM Power Circuit Breaker Switch {0,1,1}
	[273] = "%.2f", -- Particle Separator Circuit Breaker {0,1,1}
	[274] = "%.2f", -- IR Beacon Switch {0,1,1}
	[275] = "%.2f", -- Formation Lights Brightness Dial {0,0,1}
	[276] = "%.2f", -- CMWS Circuit Breaker Switch {0,1,1}
	[277] = "%.2f", -- Battery Charger Circuit Breaker {0,1,1}
	[278] = "%.2f", -- Fuzz Burner Circuit Breaker {0,1,1}
	[279] = "%.2f", -- Flood Light Switch {-1,1,1}
	[280] = "%.2f", -- Position Lights Switch {-1,1,1}
	[281] = "%.2f", -- Anti-Collision Lights Switch {0,1,1}
	[282] = "%.2f", -- FADEC Auto/Manual Switch {0,1,1}
	[284] = "%.2f", -- Display Mode Manual/NVG {0,1,1}
	[285] = "%.2f", -- Display Mode Primary/Backup {0,1,1}
	[286] = "%.2f", -- Line Address Key L1 {0,1,1}
	[287] = "%.2f", -- Line Address Key L2 {0,1,1}
	[288] = "%.2f", -- Line Address Key L3 {0,1,1}
	[289] = "%.2f", -- Line Address Key L4 {0,1,1}
	[290] = "%.2f", -- Line Address Key L5 {0,1,1}
	[291] = "%.2f", -- Line Address Key R1 {0,1,1}
	[292] = "%.2f", -- Line Address Key R2 {0,1,1}
	[293] = "%.2f", -- Line Address Key R3 {0,1,1}
	[294] = "%.2f", -- Line Address Key R4 {0,1,1}
	[295] = "%.2f", -- Line Address Key R5 {0,1,1}
	[296] = "%.2f", -- Line Address Key B1 {0,1,1}
	[297] = "%.2f", -- Line Address Key B2 {0,1,1}
	[298] = "%.2f", -- Line Address Key B3 {0,1,1}
	[299] = "%.2f", -- Line Address Key B4 {0,1,1}
	[300] = "%.2f", -- INIT [L2MUM/CDS Cycle] {0,1,1}
	[301] = "%.2f", -- Brightness {-1,1,1}
	[302] = "%.2f", -- Contrast {-1,1,1}
	[310] = "%.2f", -- BIT Switch {0,1,1}
	[311] = "%.2f", -- Brightness Dial {0,0,0.8}
	[610] = "%.2f", -- MMS 26 VAC Circuit Breaker {0,1,1}
	[611] = "%.2f", -- MMS DC PWR Circuit Breaker {0,1,1}
	[612] = "%.2f", -- MMS DC CONTR Circuit Breaker {0,1,1}
	[613] = "%.2f", -- MMS AC Circuit Breaker {0,1,1}
	[614] = "%.2f", -- SCAS 28 VAC Circuit Breaker {0,1,1}
	[615] = "%.2f", -- STBY ATT Circuit Breaker {0,1,1}
	[616] = "%.2f", -- MCPU BLWR Circuit Breaker {0,1,1}
	[617] = "%.2f", -- HUMS 28 VDC Circuit Breaker {0,1,1}
	[618] = "%.2f", -- HDG HOLD Circuit Breaker {0,1,1}
	[619] = "%.2f", -- EL LT Circuit Breaker {0,1,1}
	[620] = "%.2f", -- 26 VAC Circuit Breaker {0,1,1}
	[621] = "%.2f", -- HF ARM Circuit Breaker {0,1,1}
	[622] = "%.2f", -- HF CONTR Circuit Breaker {0,1,1}
	[623] = "%.2f", -- HF PWR Circuit Breaker {0,1,1}
	[624] = "%.2f", -- HF AC Circuit Breaker {0,1,1}
	[625] = "%.2f", -- TAMS Circuit Breaker {0,1,1}
	[626] = "%.2f", -- SATCOM AMP Circuit Breaker {0,1,1}
	[627] = "%.2f", -- IDM Circuit Breaker {0,1,1}
	[628] = "%.2f", -- ARMT CONTR Circuit Breaker {0,1,1}
	[629] = "%.2f", -- PWR SIGHT Circuit Breaker {0,1,1}
	[630] = "%.2f", -- PWR LGUN Circuit Breaker {0,1,1}
	[631] = "%.2f", -- PWR RKT Circuit Breaker {0,1,1}
	[632] = "%.2f", -- RADAR ALT Circuit Breaker {0,1,1}
	[633] = "%.2f", -- BLWR COMPT Circuit Breaker {0,1,1}
	[634] = "%.2f", -- CABIN HTR Circuit Breaker {0,1,1}
	[635] = "%.2f", -- ENG ANTI ICE Circuit Breaker {0,1,1}
	[636] = "%.2f", -- SCTY HF Circuit Breaker {0,1,1}
	[637] = "%.2f", -- SCTY UHF Circuit Breaker {0,1,1}
	[638] = "%.2f", -- SCTY VHF Circuit Breaker {0,1,1}
	[639] = "%.2f", -- IFF CMPTR Circuit Breaker {0,1,1}
	[640] = "%.2f", -- FM AMP Circuit Breaker {0,1,1}
	[641] = "%.2f", -- FM2 Circuit Breaker {0,1,1}
	[642] = "%.2f", -- VHF Circuit Breaker {0,1,1}
	[643] = "%.2f", -- UHF Circuit Breaker {0,1,1}
	[644] = "%.2f", -- SATCOM RT Circuit Breaker {0,1,1}
	[645] = "%.2f", -- SCAS DC Circuit Breaker {0,1,1}
	[646] = "%.2f", -- AIR DATA Circuit Breaker {0,1,1}
	[647] = "%.2f", -- MAST TRQ Circuit Breaker {0,1,1}
	[648] = "%.2f", -- AIR BAG Circuit Breaker {0,1,1}
	[649] = "%.2f", -- EGI Circuit Breaker {0,1,1}
	[650] = "%.2f", -- MFD CPO Circuit Breaker {0,1,1}
	[651] = "%.2f", -- HYD SYS Circuit Breaker {0,1,1}
	[652] = "%.2f", -- DATA XFER Circuit Breaker {0,1,1}
	[653] = "%.2f", -- JETT Circuit Breaker {0,1,1}
	[654] = "%.2f", -- FORCE TRIM Circuit Breaker {0,1,1}
	[655] = "%.2f", -- ANTI COLL LT Circuit Breaker {0,1,1}
	[656] = "%.2f", -- BUS INTCON Circuit Breaker {0,1,1}
	[657] = "%.2f", -- STBY ATT Circuit Breaker {0,1,1}
	[658] = "%.2f", -- NVG PWR Circuit Breaker {0,1,1}
	[659] = "%.2f", -- CKPT LT Circuit Breaker {0,1,1}
	[660] = "%.2f", -- POS LT Circuit Breaker {0,1,1}
	[661] = "%.2f", -- SRCH LT CONTR Circuit Breaker {0,1,1}
	[662] = "%.2f", -- SRCH LT PWR Circuit Breaker {0,1,1}
	[663] = "%.2f", -- INV Circuit Breaker {0,1,1}
	[664] = "%.2f", -- RECT Circuit Breaker {0,1,1}
	[665] = "%.2f", -- DC GEN FIELD Circuit Breaker {0,1,1}
	[666] = "%.2f", -- DC GEN RESET Circuit Breaker {0,1,1}
	[667] = "%.2f", -- ENG OIL Circuit Breaker {0,1,1}
	[668] = "%.2f", -- PITOT HTR Circuit Breaker {0,1,1}
	[669] = "%.2f", -- ICS PLT Circuit Breaker {0,1,1}
	[670] = "%.2f", -- ICS CPO Circuit Breaker {0,1,1}
	[671] = "%.2f", -- FM1 Circuit Breaker {0,1,1}
	[672] = "%.2f", -- ADU Circuit Breaker {0,1,1}
	[673] = "%.2f", -- RFD Circuit Breaker {0,1,1}
	[674] = "%.2f", -- MFD PLT Circuit Breaker {0,1,1}
	[675] = "%.2f", -- INST VS Circuit Breaker {0,1,1}
	[676] = "%.2f", -- ENG XDCR Circuit Breaker {0,1,1}
	[677] = "%.2f", -- XMSN XDCR Circuit Breaker {0,1,1}
	[678] = "%.2f", -- ROTOR XDCR Circuit Breaker {0,1,1}
	[679] = "%.2f", -- FUEL QTY Circuit Breaker {0,1,1}
	[680] = "%.2f", -- MCPU R Circuit Breaker {0,1,1}
	[681] = "%.2f", -- MCPU L Circuit Breaker {0,1,1}
	[682] = "%.2f", -- FUEL BOOST Circuit Breaker {0,1,1}
	[683] = "%.2f", -- START Circuit Breaker {0,1,1}
	[812] = "%.2f", -- Volume Control Knob {0,0,0.8}
	[813] = "%.2f", -- Radio Monitor 1 [FM1] {0,1,1}
	[814] = "%.2f", -- Radio Monitor 1 [FM1] {0,0.5,0.8}
	[816] = "%.2f", -- Radio Monitor 2 [UHF] {0,1,1}
	[817] = "%.2f", -- Radio Monitor 2 [UHF] {0,0.5,0.8}
	[818] = "%.2f", -- Radio Monitor 3 [VHF] {0,1,1}
	[819] = "%.2f", -- Radio Monitor 3 [VHF] {0,0.5,0.8}
	[820] = "%.2f", -- Radio Monitor 4 [N/A] {0,1,1}
	[821] = "%.2f", -- Radio Monitor 4 [N/A] {0,0.5,0.8}
	[822] = "%.2f", -- Radio Monitor 5 [FM2] {0,1,1}
	[823] = "%.2f", -- Radio Monitor 5 [FM2] {0,0.5,0.8}
	[825] = "%.2f", -- Radio Monitor NAV A Audio Ouput {0,0,0.8}
	[827] = "%.2f", -- Radio Monitor NAV B Audio Ouput {0,0,0.8}
	[828] = "%.2f", -- ICS Rotary Switch {0,0.1,0.3}
	[830] = "%.2f", -- Vox Control {0,0,0.8}
	[831] = "%.2f", -- Transmit Selector Switch {0,0.1,0.7}
	[832] = "%.2f", -- MIC Switch {0,1,1}
	[834] = "%.2f", -- Grease-pencil aimpoint. {-0.7,1,0.7}
	[835] = "%.2f", -- Grease-pencil aimpoint. {-0.7,1,0.7}
	[837] = "%.2f", -- Channel Select Switch Up/Down {-1,1,1}
	[838] = "%.2f", -- Channel Select Switch Left/Right {-1,1,1}
	[841] = "%.2f", -- IR Jammer Base Switch {0,1,1}
	[842] = "%.2f", -- IR Jammer Xmit Switch {0,1,1}
	[860] = "%.2f", -- Pilot Air Vent Pull {0,0,1}
	[861] = "%.2f", -- Copilot Air Vent Pull {0,0,1}
}

export_ids = {
	RADIO1              = 10001,
	RADIO2              = 10002,
	RADIO3              = 10003,
	RADIO5              = 10004,
	PARAM_DISPLAY_LEFT  = 10005, -- WIP, awaiting feature
	PARAM_DISPLAY_RIGHT = 10006, -- WIP, awaiting feature
	CHAFF_FLARE         = 10007, -- WIP, only showing flares
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
function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
end

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

	ExportScript.Radios(mainPanelDevice)
	ExportScript.ParamDisplay(mainPanelDevice)
	ExportScript.CMWS(mainPanelDevice)

	---------------
	-- Log Dumps --
	---------------
	--ExportScript.CockpitParamsLogDump(mainPanelDevice)
	--ExportScript.MetaTableLogDump(mainPanelDevice)
	--ExportScript.ListIndicationLogDump(mainPanelDevice)
end

-----------------------------
--     Custom functions    --
-----------------------------

-- Ideas --
-- Clock listIndication 7
-- PPH text

function ExportScript.CMWS(mainPanelDevice)
	--statusDisplay
	--F 15
	--C 15
	local cmReadout = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(10).statusDisplay)
	ExportScript.Tools.SendData(export_ids.CHAFF_FLARE, cmReadout)
end

function ExportScript.ParamDisplay(mainPanelDevice)
	local paramVal_left = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(1)
		.LeftParamDisplay)
	local paramVal_right = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(1)
		.RightParamDisplay)
	--NG_NP_SEL_Light
	--FUELQTY_ENGTRQ_SEL_Light
	--ACV_RECTV_SEL_Light
	--RECTLD_SGENLD_SEL_Light
	--BATTV_STARTV_SEL_Light
	-- All of these are currently empty in the ListIndicatorValue
	-- The following assume a "1" will be in the location of the selected position
	local NG_NP_SEL_Light = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(1)
		.NG_NP_SEL_Light)
	local FUELQTY_ENGTRQ_SEL_Light = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(1)
		.FUELQTY_ENGTRQ_SEL_Light)
	local ACV_RECTV_SEL_Light = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(1)
		.ACV_RECTV_SEL_Light)
	local RECTLD_SGENLD_SEL_Light = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(1)
		.RECTLD_SGENLD_SEL_Light)
	local BATTV_STARTV_SEL_Light = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(1)
		.BATTV_STARTV_SEL_Light)

	local textLeft
	local textRight
	if NG_NP_SEL_Light == "1" then
		textLeft = "NR"
		textRight = "NP"
	elseif FUELQTY_ENGTRQ_SEL_Light == "1" then
		textLeft = "FUEL QTY"
		textRight = "ENG TRQ %"
	elseif ACV_RECTV_SEL_Light == "1" then
		textLeft = "ACV"
		textRight = "RECT V"
	elseif RECTLD_SGENLD_SEL_Light == "1" then
		textLeft = "RECT LD %"
		textRight = "S GEN LD %"
	elseif BATTV_STARTV_SEL_Light == "1" then
		textLeft = "BATT V"
		textRight = "START V"
	else
		textLeft = "---"
		textRight = "---"
	end
	ExportScript.Tools.SendData(export_ids.PARAM_DISPLAY_LEFT, paramVal_left .. "\n" .. textLeft)
	ExportScript.Tools.SendData(export_ids.PARAM_DISPLAY_RIGHT, paramVal_right .. "\n" .. textRight)
end

function ExportScript.Radios(mainPanelDevice)
	-- https://invisible-characters.com/3164-HANGUL-FILLER.html filler character -->ㅤ<--
	-- https://fsymbols.com/signs/arrow/ 🢂🢀➡️⬅️
	-- you can change this to use either emoji blue arrows or text colored arrows
	local useBlueArrows = 1
	local leftArrow
	local rightArrow

	if useBlueArrows == 1 then
		leftArrow = "⬅️"
		rightArrow = "➡️"
	else
		leftArrow = "🢀"
		rightArrow = "🢂"
	end

	-- Radio 1
	local Radio1_ch = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8).CHNL1)
	local Radio1_freq = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8).Freq1)

	local Radio1_selectTextP = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8)
		.PilotSelectText1)
	if Radio1_selectTextP == "1" then Radio1_selectTextP = rightArrow else Radio1_selectTextP = "ㅤ" end

	local Radio1_selectTextCP = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8)
		.CopilotSelectTxt1)
	if Radio1_selectTextCP == "1" then Radio1_selectTextCP = leftArrow else Radio1_selectTextCP = "ㅤ" end
	ExportScript.Tools.SendData(export_ids.RADIO1,
		Radio1_selectTextCP .. Radio1_ch .. Radio1_selectTextP .. "\n" .. Radio1_freq)


	-- Radio 2
	local Radio2_ch = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8).CHNL2)
	local Radio2_freq = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8).Freq2)

	local Radio2_selectTextP = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8)
		.PilotSelectText2)
	if Radio2_selectTextP == "1" then Radio2_selectTextP = rightArrow else Radio2_selectTextP = "ㅤ" end

	local Radio2_selectTextCP = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8)
		.CopilotSelectTxt2)
	if Radio2_selectTextCP == "1" then Radio2_selectTextCP = leftArrow else Radio2_selectTextCP = "ㅤ" end
	ExportScript.Tools.SendData(export_ids.RADIO2,
		Radio2_selectTextCP .. Radio2_ch .. Radio2_selectTextP .. "\n" .. Radio2_freq)

	-- Radio 3
	local Radio3_ch = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8).CHNL3)
	local Radio3_freq = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8).Freq3)

	local Radio3_selectTextP = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8)
		.PilotSelectText3)
	if Radio3_selectTextP == "1" then Radio3_selectTextP = rightArrow else Radio3_selectTextP = "ㅤ" end

	local Radio3_selectTextCP = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8)
		.CopilotSelectTxt3)
	if Radio3_selectTextCP == "1" then Radio3_selectTextCP = leftArrow else Radio3_selectTextCP = "ㅤ" end
	ExportScript.Tools.SendData(export_ids.RADIO3,
		Radio3_selectTextCP .. Radio3_ch .. Radio3_selectTextP .. "\n" .. Radio3_freq)

	-- Radio 5
	local Radio5_ch = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8).CHNL5)
	local Radio5_freq = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8).Freq5)

	local Radio5_selectTextP = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8)
		.PilotSelectText5)
	if Radio5_selectTextP == "1" then Radio5_selectTextP = rightArrow else Radio5_selectTextP = "ㅤ" end

	local Radio5_selectTextCP = ExportScript.Tools.coerce_nil_to_string(ExportScript.Tools.getListIndicatorValue(8)
		.CopilotSelectTxt5)
	if Radio5_selectTextCP == "1" then Radio5_selectTextCP = leftArrow else Radio5_selectTextCP = "ㅤ" end
	ExportScript.Tools.SendData(export_ids.RADIO5,
		Radio5_selectTextCP .. Radio5_ch .. Radio5_selectTextP .. "\n" .. Radio5_freq)
end

---------------------
-- Debug Functions --
---------------------

function ExportScript.CockpitParamsLogDump(mainPanelDevice) -- Get list of cockpit params
	ExportScript.Tools.WriteToLog('list_cockpit_params(): ' .. ExportScript.Tools.dump(list_cockpit_params()))
end

function ExportScript.MetaTableLogDump(mainPanelDevice) -- getmetatable get function name from devices
	local ltmp1 = 0
	for ltmp2 = 1, 70, 1 do
		ltmp1 = GetDevice(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2 .. ': ' .. ExportScript.Tools.dump(ltmp1))
		ExportScript.Tools.WriteToLog(ltmp2 .. ' (metatable): ' .. ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
end

function ExportScript.ListIndicationLogDump(mainPanelDevice) -- list_indication get the value of cockpit displays
	local ltmp1 = 0
	for ltmp2 = 0, 20, 1 do
		ltmp1 = list_indication(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2 .. ': ' .. ExportScript.Tools.dump(ltmp1))
	end
end
