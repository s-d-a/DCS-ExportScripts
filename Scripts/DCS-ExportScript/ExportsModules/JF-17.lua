-- JF-17 Export Module Revision CKN200515A
-- Feel free to use, modify and repost in any way you desire.

ExportScript.FoundDCSModule = true
ExportScript.Version.JF17 = "1.2.1"

ExportScript.ConfigEveryFrameArguments = 
{
	[130] = "%1d",   -- Master Warning Light, OFF/ON {0,1}
	[131] = "%1d",   -- Fire Warning Light, OFF/ON {0,1}
	[132] = "%1d",   -- FCS Warning Light, OFF/ON {0,1}
	[242] = "%1d",   -- OXY BLINK Warning Light, OFF/ON {0,1}    
	[250] = "%.2f",  -- Stick Pitch Position, MIN..MAX {0..1}
	[251] = "%.2f",  -- Stick Bank Position, MIN..MAX {0..1}
	[254] = "%.2f",  -- Throttle Position, MIN..MAX {-1..1}
	[256] = "%.2f",  -- Left Toe Brake Position, MIN..MAX {0..1}
	[257] = "%.2f",  -- Right Toe Brake Position, MIN..MAX {0..1}
	[259] = "%.2f",  -- Rudder Pedal Left-Right Position, MIN..MAX {-1..1}	
	[290] = "%.2f",  -- Oxygen Gauge Needle Position, MIN..MAX {0..1}
	[291] = "%.2f",  -- Pneumatic Gauge M Needle Position, MIN..MAX {0..1}
	[292] = "%.2f",  -- Pneumatic Gauge E Needle Position, MIN..MAX {0..1}
	[293] = "%.4f",  -- Magnetic Heading Backup Compass, MIN..MAX {0..1}
	[504] = "%.2f",  -- Landing Gear Indicator Light Knob, MIN..MAX {0..1} (0=0, 0.25=90, 0.5=180, 0.75=270)
	[532] = "%1d",   -- Yaw Trim Switch, LEFT/CENTER/RIGHT {-1,0,1}
	[538] = "%1d",   -- Flare Dispense Button, OUT/IN {0,1}
	--- Radio Panel ---
	[545] = "%.2f",  -- Radio Volume Knob, MIN..MAX {0..1}
	[547] = "%.1f",  -- Radio Mode Selector, OFF/TR/TR+G/ADF/GD/SET {0,0.2,0.4,0.6,0.8,1}
	[549] = "%1d",   -- Radio 1/TONE Button, OUT/IN {0,1}
	[550] = "%1d",   -- Radio 2/- Button, OUT/IN {0,1}
	[551] = "%1d",   -- Radio 3/+ Button, OUT/IN {0,1}
	[552] = "%1d",   -- Radio 4/H Button, OUT/IN {0,1}
	[553] = "%1d",   -- Radio 5/A Button, OUT/IN {0,1}
	[554] = "%1d",   -- Radio 6/M Button, OUT/IN {0,1}
	[555] = "%1d",   -- Radio 7/P Button, OUT/IN {0,1}
	[556] = "%1d",   -- Radio 8/C Button, OUT/IN {0,1}
	[557] = "%1d",   -- Radio 9/T Button, OUT/IN {0,1}
	[558] = "%1d",   -- Radio <-/MAN Button, OUT/IN {0,1}
	[559] = "%1d",   -- Radio 0/PRE Button, OUT/IN {0,1}
	[560] = "%1d",   -- Radio ->/ENT Button, OUT/IN {0,1}
	---
	[570] = "%.2f",  -- Throttle Friction Handle, MIN..MAX {0..1}
	--- UFCP ---
	[700] = "%1d",   -- UFCP PFL/1 Button, OUT/IN {0,1}
	[701] = "%1d",   -- UFCP VRC/2 Button, OUT/IN {0,1}
	[702] = "%1d",   -- UFCP 3 Button, OUT/IN {0,1}
	[703] = "%1d",   -- UFCP L1 Button, OUT/IN {0,1}
	[704] = "%1d",   -- UFCP R1 Button, OUT/IN {0,1}
	[705] = "%1d",   -- UFCP OAP Button, OUT/IN {0,1}
	[706] = "%1d",   -- UFCP MRK Button, OUT/IN {0,1}
	[707] = "%1d",   -- UFCP DST/4 Button, OUT/IN {0,1}
	[708] = "%1d",   -- UFCP TOT/5 Button, OUT/IN {0,1}
	[709] = "%1d",   -- UFCP TOD/6 Button, OUT/IN {0,1}
	[710] = "%1d",   -- UFCP L2 Button, OUT/IN {0,1}
	[711] = "%1d",   -- UFCP R2 Button, OUT/IN {0,1}
	[712] = "%1d",   -- UFCP RU Button, OUT/IN {0,1}
	[713] = "%1d",   -- UFCP HNS Button, OUT/IN {0,1}
	[714] = "%1d",   -- UFCP FUL/7 Button, OUT/IN {0,1}
	[715] = "%1d",   -- UFCP IFF/8 Button, OUT/IN {0,1}
	[716] = "%1d",   -- UFCP 9 Button, OUT/IN {0,1}
	[717] = "%1d",   -- UFCP L3 Button, OUT/IN {0,1}
	[718] = "%1d",   -- UFCP R3 Button, OUT/IN {0,1}
	[719] = "%1d",   -- UFCP A/P Button, OUT/IN {0,1}
	[720] = "%1d",   -- UFCP FPM Button, OUT/IN {0,1}
	[721] = "%1d",   -- UFCP RTN Button, OUT/IN {0,1}
	[722] = "%1d",   -- UFCP 0 Button, OUT/IN {0,1}
	[723] = "%1d",   -- UFCP N/A Button, OUT/IN {0,1}
	[724] = "%1d",   -- UFCP L4 Button, OUT/IN {0,1}
	[725] = "%1d",   -- UFCP R4 Button, OUT/IN {0,1}
	[726] = "%1d",   -- UFCP N/A Button, OUT/IN {0,1}
	[727] = "%1d",   -- UFCP N/A Button, OUT/IN {0,1}
	[728] = "%.2f",  -- HUD Contrast Knob, MIN..MAX {0..1}
	[729] = "%.2f",  -- HUD Brightness Knob, MIN..MAX {0..1}
	[730] = "%1d",   -- UFCP +/- Momentary Switch {1,0,-1}
	[731] = "%.2f",  -- HUD Backup Reticle Knob, MIN..MAX {0..1}
	[732] = "%.2f",  -- UFCP Brightness Knob, MIN..MAX {0..1}
	--- MFCD ---
	[734] = "%1d",   -- Left MFCD SYM + Button, OUT/IN {0,1}
	[735] = "%1d",   -- Left MFCD SYM - Button, OUT/IN {0,1}
	[736] = "%1d",   -- Left MFCD U1 Button, OUT/IN {0,1}
	[737] = "%1d",   -- Left MFCD U2 Button, OUT/IN {0,1}
	[738] = "%1d",   -- Left MFCD U3 Button, OUT/IN {0,1}
	[739] = "%1d",   -- Left MFCD U4 Button, OUT/IN {0,1}
	[740] = "%1d",   -- Left MFCD U5 Button, OUT/IN {0,1}
	[741] = "%1d",   -- Left MFCD Power Switch, OFF/ON {0,1}
	[742] = "%1d",   -- Left MFCD L1 Button, OUT/IN {0,1}
	[743] = "%1d",   -- Left MFCD L2 Button, OUT/IN {0,1}
	[744] = "%1d",   -- Left MFCD L3 Button, OUT/IN {0,1}
	[745] = "%1d",   -- Left MFCD L4 Button, OUT/IN {0,1}
	[746] = "%1d",   -- Left MFCD L5 Button, OUT/IN {0,1}
	[747] = "%1d",   -- Left MFCD L6 Button, OUT/IN {0,1}
	[748] = "%1d",   -- Left MFCD L7 Button, OUT/IN {0,1}
	[749] = "%1d",   -- Left MFCD L8 Button, OUT/IN {0,1}
	[750] = "%1d",   -- Left MFCD R1 Button, OUT/IN {0,1}
	[751] = "%1d",   -- Left MFCD R2 Button, OUT/IN {0,1}
	[752] = "%1d",   -- Left MFCD R3 Button, OUT/IN {0,1}
	[753] = "%1d",   -- Left MFCD R4 Button, OUT/IN {0,1}
	[754] = "%1d",   -- Left MFCD R5 Button, OUT/IN {0,1}
	[755] = "%1d",   -- Left MFCD R6 Button, OUT/IN {0,1}}
	[756] = "%1d",   -- Left MFCD R7 Button, OUT/IN {0,1}
	[757] = "%1d",   -- Left MFCD R8 Button, OUT/IN {0,1}
	[758] = "%1d",   -- Left MFCD CONT + Button, OUT/IN {0,1}
	[759] = "%1d",   -- Left MFCD CONT - Button, OUT/IN {0,1}
	[760] = "%1d",   -- Left MFCD D1 Button, OUT/IN {0,1}
	[761] = "%1d",   -- Left MFCD D2 Button, OUT/IN {0,1}
	[762] = "%1d",   -- Left MFCD D3 Button, OUT/IN {0,1}
	[763] = "%1d",   -- Left MFCD D4 Button, OUT/IN {0,1}
	[764] = "%1d",   -- Left MFCD D5 Button, OUT/IN {0,1}
	[765] = "%1d",   -- Left MFCD BRT + Button, OUT/IN {0,1}
	[766] = "%1d",   -- Left MFCD BRT - Button, OUT/IN {0,1}
	[767] = "%1d",   -- Center MFCD SYM + Button, OUT/IN {0,1}
	[768] = "%1d",   -- Center MFCD SYM - Button, OUT/IN {0,1}
	[769] = "%1d",   -- Center MFCD U1 Button, OUT/IN {0,1}
	[770] = "%1d",   -- Center MFCD U2 Button, OUT/IN {0,1}
	[771] = "%1d",   -- Center MFCD U3 Button, OUT/IN {0,1}
	[772] = "%1d",   -- Center MFCD U4 Button, OUT/IN {0,1}
	[773] = "%1d",   -- Center MFCD U5 Button, OUT/IN {0,1}
	[774] = "%1d",   -- Center MFCD Power Switch, OFF/ON {0,1}
	[775] = "%1d",   -- Center MFCD L1 Button, OUT/IN {0,1}
	[776] = "%1d",   -- Center MFCD L2 Button, OUT/IN {0,1}
	[777] = "%1d",   -- Center MFCD L3 Button, OUT/IN {0,1}
	[778] = "%1d",   -- Center MFCD L4 Button, OUT/IN {0,1}
	[779] = "%1d",   -- Center MFCD L5 Button, OUT/IN {0,1}
	[780] = "%1d",   -- Center MFCD L6 Button, OUT/IN {0,1}
	[781] = "%1d",   -- Center MFCD L7 Button, OUT/IN {0,1}
	[782] = "%1d",   -- Center MFCD L8 Button, OUT/IN {0,1}
	[783] = "%1d",   -- Center MFCD R1 Button, OUT/IN {0,1}
	[784] = "%1d",   -- Center MFCD R2 Button, OUT/IN {0,1}
	[785] = "%1d",   -- Center MFCD R3 Button, OUT/IN {0,1}
	[786] = "%1d",   -- Center MFCD R4 Button, OUT/IN {0,1}
	[787] = "%1d",   -- Center MFCD R5 Button, OUT/IN {0,1}
	[788] = "%1d",   -- Center MFCD R6 Button, OUT/IN {0,1}
	[789] = "%1d",   -- Center MFCD R7 Button, OUT/IN {0,1}
	[790] = "%1d",   -- Center MFCD R8 Button, OUT/IN {0,1}
	[791] = "%1d",   -- Center MFCD D1 Button, OUT/IN {0,1}
	[792] = "%1d",   -- Center MFCD D2 Button, OUT/IN {0,1}
	[793] = "%1d",   -- Center MFCD D3 Button, OUT/IN {0,1}
	[794] = "%1d",   -- Center MFCD D4 Button, OUT/IN {0,1}
	[795] = "%1d",   -- Center MFCD D5 Button, OUT/IN {0,1}
	[796] = "%1d",   -- Center MFCD CONT + Button, OUT/IN {0,1}
	[797] = "%1d",   -- Center MFCD CONT - Button, OUT/IN {0,1}
	[798] = "%1d",   -- Center MFCD BRT + Button, OUT/IN {0,1}
	[799] = "%1d",   -- Center MFCD BRT - Button, OUT/IN {0,1}
	[800] = "%1d",   -- Right MFCD SYM + Button, OUT/IN {0,1}
	[801] = "%1d",   -- Right MFCD SYM - Button, OUT/IN {0,1}
	[802] = "%1d",   -- Right MFCD U1 Button, OUT/IN {0,1}
	[803] = "%1d",   -- Right MFCD U2 Button, OUT/IN {0,1}
	[804] = "%1d",   -- Right MFCD U3 Button, OUT/IN {0,1}
	[805] = "%1d",   -- Right MFCD U4 Button, OUT/IN {0,1}
	[806] = "%1d",   -- Right MFCD U5 Button, OUT/IN {0,1}
	[807] = "%1d",   -- Right MFCD Power Switch, OFF/ON {0,1}
	[808] = "%1d",   -- Right MFCD L1 Button, OUT/IN {0,1}
	[809] = "%1d",   -- Right MFCD L2 Button, OUT/IN {0,1}
	[810] = "%1d",   -- Right MFCD L3 Button, OUT/IN {0,1}
	[811] = "%1d",   -- Right MFCD L4 Button, OUT/IN {0,1}
	[812] = "%1d",   -- Right MFCD L5 Button, OUT/IN {0,1}
	[813] = "%1d",   -- Right MFCD L6 Button, OUT/IN {0,1}
	[814] = "%1d",   -- Right MFCD L7 Button, OUT/IN {0,1}
	[815] = "%1d",   -- Right MFCD L8 Button, OUT/IN {0,1}
	[816] = "%1d",   -- Right MFCD R1 Button, OUT/IN {0,1}
	[817] = "%1d",   -- Right MFCD R2 Button, OUT/IN {0,1}
	[818] = "%1d",   -- Right MFCD R3 Button, OUT/IN {0,1}
	[819] = "%1d",   -- Right MFCD R4 Button, OUT/IN {0,1}
	[820] = "%1d",   -- Right MFCD R5 Button, OUT/IN {0,1}
	[821] = "%1d",   -- Right MFCD R6 Button, OUT/IN {0,1}
	[822] = "%1d",   -- Right MFCD R7 Button, OUT/IN {0,1}
	[823] = "%1d",   -- Right MFCD R8 Button, OUT/IN {0,1}
	[824] = "%1d",   -- Right MFCD D1 Button, OUT/IN {0,1}
	[825] = "%1d",   -- Right MFCD D2 Button, OUT/IN {0,1}
	[826] = "%1d",   -- Right MFCD D3 Button, OUT/IN {0,1}
	[827] = "%1d",   -- Right MFCD D4 Button, OUT/IN {0,1}
	[828] = "%1d",   -- Right MFCD D5 Button, OUT/IN {0,1}
	[829] = "%1d",   -- Right MFCD CONT + Button, OUT/IN {0,1}
	[830] = "%1d",   -- Right MFCD CONT - Button, OUT/IN {0,1}
	[831] = "%1d",   -- Right MFCD BRT + Button, OUT/IN {0,1}
	[832] = "%1d",   -- Right MFCD BRT - Button, OUT/IN {0,1}
	---
	[840] = "%.5f",  -- BARO Altitude Setting, MIN..MAX {0..~0.31}  ***WARNING - As of 15th May 2020, this crashes DCS if value is outside 0 to ~0.31 range***
	[841] = "%.2f",  -- Emergency Brake Handle, MIN..MAX {0..1}
	[846] = "%1d",   -- Digital Clock Brightness + Button, OUT/IN {0,1}
	[847] = "%1d",   -- Digital Clock Brightness - Button, OUT/IN {0,1}
	[901] = "%.2f",  -- Warning Panel Brightness Knob, MIN..MAX {0..1}
	[903] = "%.2f",  -- Oxygen Indicator Brightness Knob, MIN..MAX {0..1}
	[909] = "%.2f",  -- AAP Brightness Knob, MIN..MAX {0..1}
	[934] = "%.2f",  -- COM1 Volume Knob, MIN..MAX {0..1}
	[938] = "%.2f",  -- COM2 Volume Knob, MIN..MAX {0..1}
	[939] = "%.2f",  -- TCN/ILS Volume Knob, MIN..MAX {0..1}
	[940] = "%.2f",  -- MSL Volume Knob, MIN..MAX {0..1}
	[941] = "%.2f",  -- Air Temp Knob Selector, MIN..MAX {0..0.91666666666667}
	[944] = "%.2f",  -- Inst. Light Knob, MIN..MAX {0..1}
	[945] = "%.2f",  -- Console Light Knob, MIN..MAX {0..1}	
	[946] = "%.2f",  -- Flood Light Knob, MIN..MAX {0..1}
	[959] = "%.2f",  -- Canopy Manual Open/Close Crank, MIN..MAX {0..1}
	[964] = "%.2f",  -- AAR Light Brightness Knob, MIN..MAX {0..1}
	[965] = "%.2f",  -- Right Forward Flood Light Direction, MIN..MAX {0..1}
	[966] = "%.2f",  -- Right Aft Light Direction, MIN..MAX {0..1}
	[967] = "%.2f",  -- Left Forward Flood Light Direction, MIN..MAX {0..1}
	[968] = "%.2f",  -- Left Aft Flood Light Direction, MIN..MAX {0..1}
	[976] = "%.2f",  -- Oxygen Supply Valve, MIN..MAX {0..1}
}
ExportScript.ConfigArguments = 
{
	--- Landing Gear Panel Lights
	[100] = "%1d",   -- Landing Gear In Transition Light, OFF/ON {0,1}
	[101] = "%1d",   -- Landing Gear Deployed Left Light, OFF/ON {0,1}
	[102] = "%1d",   -- Landing Gear Deployed Nose Light, OFF/ON {0,1}
	[103] = "%1d",   -- Landing Gear Deployed Right Light, OFF/ON {0,1}
	[104] = "%1d",   -- S/B Deployed Light, OFF/ON {0,1}
	[105] = "%1d",   -- D/CH Deployed Light, OFF/ON {0,1}
	[106] = "%1d",   -- TEF Deployed Light, OFF/ON {0,1}
	[107] = "%1d",   -- Landing Gear Handle Light, OFF/ON {0,1}
	[108] = "%.2f",  -- Landing Gear Indicator Lights Brightness, MIN..MAX {0..1}
	---
	[110] = "%1d",   -- FCS RESET Light, OFF/ON {0,1}
	[120] = "%.2f",  -- Console Backlight Brightness, MIN..MAX {0..1}
	[121] = "%.2f",  -- Instrument Backlight Brightness, MIN..MAX {0..1}
	[122] = "%.2f",  -- Clock Backlight Brightness, MIN..MAX {0..1}
	[125] = "%.2f",  -- Flood Light Brightness, MIN..MAX {0..1}
	[140] = "%1d",   -- Left MFCD Backlight, OFF/ON {0,1}
	[141] = "%.2f",  -- Left MFCD Backlight Brightness, MIN..MAX {0..1}
	[142] = "%1d",   -- Center MFCD Backlight, OFF/ON {0,1}
	[143] = "%.2f",  -- Center MFCD Backlight Brightness, MIN..MAX {0..1}
	[144] = "%1d",   -- Right MFCD Backlight, OFF/ON {0,1}
	[145] = "%.2f",  -- Right MFCD Backlight Brightness, MIN..MAX {0..1}
	--- UFCP Lights ---
	[150] = "%1d",   -- UFCP OAP Light, OFF/ON {0,1}
	[151] = "%1d",   -- UFCP MRK Light, OFF/ON {0,1}
	[152] = "%1d",   -- UFCP P.U Light, OFF/ON {0,1}
	[153] = "%1d",   -- UFCP HNS Light, OFF/ON {0,1}
	[154] = "%1d",   -- UFCP AP Light, OFF/ON {0,1}
	[155] = "%1d",   -- UFCP FPM Light, OFF/ON {0,1}
	[156] = "%1d",   -- UFCP NULL1 Light, OFF/ON {0,1}
	[157] = "%1d",   -- UFCP NULL2 Light, OFF/ON {0,1}
	[158] = "%.2f",  -- UFCP Brightness, MIN..MAX {0..1}
	--- Status Lights Panel ---
	[160] = "%1d",   -- PITCH TRIM Status Light, OFF/ON {0,1}
	[161] = "%1d",   -- ROLL TRIM Status Light, OFF/ON {0,1}
	[162] = "%1d",   -- YAW TRIM Status Light, OFF/ON {0,1}
	[163] = "%1d",   -- A/A Status Light, OFF/ON {0,1}
	[164] = "%1d",   -- A/G1 Status Light, OFF/ON {0,1}
	[165] = "%1d",   -- A/G2 Status Light, OFF/ON {0,1}
	[166] = "%1d",   -- EFCS Status Light, OFF/ON {0,1}
  	[167] = "%1d",   -- No.3 TANK Status Light, OFF/ON {0,1}
	[168] = "%1d",   -- No.1 TANK Status Light, OFF/ON {0,1}
	[169] = "%1d",   -- WING D/T Status Light, OFF/ON {0,1}
	[170] = "%1d",   -- CTR D/T Status Light, OFF/ON {0,1}
	[171] = "%1d",   -- NULL Status Light, OFF/ON {0,1}
	[172] = "%1d",   -- START Status Light, OFF/ON {0,1}
	[173] = "%1d",   -- AB Status Light, OFF/ON {0,1}
	[174] = "%1d",   -- COMBAT Status Light, OFF/ON {0,1}
	[175] = "%1d",   -- EMG HYD Status Light, OFF/ON {0,1}
	[176] = "%1d",   -- NWS Status Light, OFF/ON {0,1}
	[177] = "%1d",   -- ADVISORY Status Light, OFF/ON {0,1}
	[178] = "%.2f",  -- Status Lights Brightness, MIN..MAX {0..1}
 	--- Warning Lights Panel ---
	[200] = "%1d",   -- NULL Warning Light, OFF/ON {0,1}
	[201] = "%1d",   -- OXY LOW Warning Light, OFF/ON {0,1}
	[202] = "%1d",   -- CANOPY Warning Light, OFF/ON {0,1}
	[203] = "%1d",   -- HYD LOW Warning Light, OFF/ON {0,1}
	[204] = "%1d",   -- AIR DATA Warning Light, OFF/ON {0,1}
	[205] = "%1d",   -- LOW FUEL Warning Light, OFF/ON {0,1}
	[206] = "%1d",   -- CABIN PRESS Warning Light, OFF/ON {0,1}
	[207] = "%1d",   -- REDUCE RPM Warning Light, OFF/ON {0,1}
  	[208] = "%1d",   -- CONFIG Warning Light, OFF/ON {0,1}
	[209] = "%1d",   -- FUEL PUMP Warning Light, OFF/ON {0,1}
	[210] = "%1d",   -- AC SYS Warning Light, OFF/ON {0,1}
	[211] = "%1d",   -- OIL Warning Light, OFF/ON {0,1}    
	[212] = "%1d",   -- DL Warning Light, OFF/ON {0,1}
	[213] = "%1d",   -- START PUMP Warning Light, OFF/ON {0,1}
	[214] = "%1d",   -- DC GEN Warning Light, OFF/ON {0,1}
	[215] = "%1d",   -- STARTER Warning Light, OFF/ON {0,1}
	[216] = "%1d",   -- FCS 3 Warning Light, OFF/ON {0,1}
	[217] = "%1d",   -- BRAKE Warning Light, OFF/ON {0,1}
	[218] = "%1d",   -- BATT Warning Light, OFF/ON {0,1}
	[219] = "%1d",   -- ENG TEMP Warning Light, OFF/ON {0,1}	
	[220] = "%1d",   -- FCS 2 Warning Light, OFF/ON {0,1}
	[221] = "%1d",   -- ANTI-SKID Warning Light, OFF/ON {0,1}
	[222] = "%1d",   -- TRU Warning Light, OFF/ON {0,1}
	[223] = "%1d",   -- ANTI-SURGE Warning Light, OFF/ON {0,1}    
	[224] = "%1d",   -- FCS 1 Warning Light, OFF/ON {0,1}
	[225] = "%1d",   -- NWS Warning Light, OFF/ON {0,1}
	[226] = "%1d",   -- STATIC INV Warning Light, OFF/ON {0,1}
	[227] = "%1d",   -- ANTI-ICING Warning Light, OFF/ON {0,1}    
	[228] = "%1d",   -- ROLL CAS Warning Light, OFF/ON {0,1}
	[229] = "%1d",   -- ECS Warning Light, OFF/ON {0,1}
	[230] = "%1d",   -- EMMC Warning Light, OFF/ON {0,1}
	[231] = "%1d",   -- SEC Warning Light, OFF/ON {0,1}    
	[232] = "%1d",   -- YAW CAS Warning Light, OFF/ON {0,1}
	[233] = "%1d",   -- EQUIP HOT Warning Light, OFF/ON {0,1}
	[234] = "%1d",   -- LWC Warning Light, OFF/ON {0,1}
	[235] = "%1d",   -- EDU Warning Light, OFF/ON {0,1}    
	[236] = "%1d",   -- AUTOPILOT Warning Light, OFF/ON {0,1}
	[237] = "%1d",   -- PITOT HEAT Warning Light, OFF/ON {0,1}
	[238] = "%1d",   -- AVIONS Warning Light, OFF/ON {0,1}
	[239] = "%1d",   -- DEEC Warning Light, OFF/ON {0,1}    
	[240] = "%1d",   -- EFCS Warning Light, OFF/ON {0,1}
	[241] = "%1d",   -- SEAT Warning Light, OFF/ON {0,1}
	[243] = "%.2f",  -- Warning Lights Brightness, MIN..MAX {0..1}
	-- AAP Panel Lights
	[260] = "%1d",   -- AAP ACMI Light, OFF/ON {0,1}
	[261] = "%1d",   -- AAP NULL1 Light, OFF/ON {0,1}
	[262] = "%1d",   -- AAP NULL2 Light, OFF/ON {0,1}
	[263] = "%1d",   -- AAP NULL3 Light, OFF/ON {0,1}
	[264] = "%1d",   -- AAP HMD Light, OFF/ON {0,1}
	[265] = "%1d",   -- AAP SPJ Light, OFF/ON {0,1}
	[266] = "%1d",   -- AAP CLDP Light, OFF/ON {0,1}
	[267] = "%1d",   -- AAP IRST Light, OFF/ON {0,1}
	[268] = "%1d",   -- AAP RDR Light, OFF/ON {0,1}
	[269] = "%1d",   -- AAP SLNK Light, OFF/ON {0,1}
	[270] = "%1d",   -- AAP OESP Light, OFF/ON {0,1}
	[271] = "%1d",   -- AAP RWR Light, OFF/ON {0,1}
	[272] = "%1d",   -- AAP COM1 Light, OFF/ON {0,1}
	[273] = "%1d",   -- AAP COM2 Light, OFF/ON {0,1}
	[274] = "%1d",   -- AAP NAV Light, OFF/ON {0,1}
	[275] = "%1d",   -- AAP IFF Light, OFF/ON {0,1}
	[276] = "%1d",   -- AAP INS Light, OFF/ON {0,1}
	[277] = "%1d",   -- AAP VMMC1 Light, OFF/ON {0,1}
	[278] = "%1d",   -- AAP VMMC2 Light, OFF/ON {0,1}
	[279] = "%1d",   -- AAP SAIU Light, OFF/ON {0,1}
	[280] = "%1d",   -- AAP CMBT Light, OFF/ON {0,1}
	[281] = "%1d",   -- AAP TRAIN Light, OFF/ON {0,1}
	[282] = "%.2f",  -- AAP Buttons Brightness, MIN..MAX {0..1}
	---
	[295] = "%1d",   -- Radio Panel Error Light, OFF/ON {0,1}
	[500] = "%.3f",  -- Backup SAIU Knob Selector Knob, OFF/BOMB/IR/GUN {0,0.333,0.666,0.999}
	[501] = "%1d",   -- Landing Gear Indicator Light Test Button, OUT/IN {0,1}}
	[502] = "%1d",   -- Landing Gear Override Button Cover, COVERED/UNCOVERED {0,1}
	[503] = "%1d",   -- Landing Gear Override Switch, OFF/ON {0,1}}
	[505] = "%1d",   -- Landing Gear Lever, DOWN/UP {0,1}
	[506] = "%1d",   -- Ground Jettison Switch, OFF/ENABLE {0,1}}
	[507] = "%1d",   -- Emergency Jettison Button Cover, COVERED/UNCOVERED {0,1}
	[508] = "%1d",   -- Emergency Jettison Button, OUT/IN {0,1}
	[509] = "%1d",   -- Master Arm Switch, SIM/OFF/ARM {-1,0,1}
	[510] = "%1d",   -- Brake Test Switch, OFF/ON/TEST {-1,0,1}
	[511] = "%1d",   -- Parking Brake, NORM/PARK {-1,1}
	[512] = "%1d",   -- Light Switch, LAND/OFF/TAXI {-1,0,1}
	[513] = "%1d",   -- Flap Switch, DOWN/UP {-1,1}
	[514] = "%1d",   -- Feed Cut-off Valve Cover, COVERED/UNCOVERED {0,1}
	[515] = "%1d",   -- Feed Cut-off Valve Switch, OFF/ON {0,1}	
	[516] = "%1d",   -- Active Fuel Cut-off Valve Cover, COVERED/UNCOVERED {0,1}	
	[517] = "%1d",   -- Active Fuel Cut-off Valve Switch, OFF/ON {0,1}
	[518] = "%1d",   -- Fuel Pump Switch, OFF/ON {0,1}
	[519] = "%1d",   -- Engine Control Switch, OFF/ON {0,1}
	[520] = "%1d",   -- Air Start Switch, OFF/ON {0,1}
	[521] = "%1d",   -- Ground Start Button, OUT/IN {0,1}}
	[522] = "%1d",   -- Engine Mode Switch, TRG/C+T/CMBT {-1,0,1}
	[523] = "%1d",   -- SEC EEC Switch, OFF/ON {0,1}
	[524] = "%1d",   -- Afterburner Switch, OFF/ON {0,1}
	[525] = "%1d",   -- Anti-Surge Switch, OFF/ON {0,1}
	[526] = "%1d",   -- Start Mode Selector, ENG COLD/START/STARTER COLD {-1,0,1}
	[527] = "%1d",   -- Record Switch, OUT/IN {0,1}
	[528] = "%1d",   -- EFCS Switch, OFF/AUTO {0,1}
	[529] = "%1d",   -- Yaw/Roll CAS Switch, OFF/ON {0,1}
	[530] = "%1d",   -- Direct Mode Switch, OFF/ON {0,1}
	[531] = "%1d",   -- BIT Switch, OUT/IN {0,1}
	[533] = "%1d",   -- Flight Test I Switch, OFF/ON {0,1}
	[534] = "%1d",   -- Flight Test II Switch, OFF/ON {0,1}
	[535] = "%1d",   -- AG1/AG2 Switch, A-AG2/A-AG1 {0,1}
	[536] = "%1d",   -- AA/AG Switch, A-G/A-A {0,1}
	[537] = "%1d",   -- Flare Dispense Button Cover, COVERED/UNCOVERED {0,1}
	[539] = "%1d",   -- Emergency Hydralic Pump Switch, OFF/ON {0,1}
	[540] = "%1d",   -- SHARS Switch, OFF/ON {0,1}
	[541] = "%1d",   -- Ejection Seat Activate Destruct Switch, DISABLE/ENABLE {0,1}
	[542] = "%1d",   -- Self Destruct Button Cover, COVERED/UNCOVERED {0,1}
	[543] = "%1d",   -- Self Destruct Button, OUT/IN {0,1}}
	[544] = "%1d",   -- FCS Reset Button,???OUT/IN??? {0,1}
	[546] = "%1d",   -- Squelch, SQL-ACKN/OFF {0,1}
	[548] = "%1d",   -- Radio Control Handover Button, OUT/IN {0,1}
	[561] = "%1d",   -- Air Start Button Cover, COVERED/UNCOVERED {0,1}
	[562] = "%1d",   -- CSS Handle, STOVED/PULLED {0,1}
	[563] = "%1d",   -- P.H. Test Switch, AUTO/ON {0,1}
	[564] = "%1d",   -- AAR Switch, INT/OFF/ALL {-1,0,1}
	[571] = "%1d",   -- Throttle Uncage: Stop to Idle, CAGE/IDLE {0,1}
	[572] = "%1d",   -- Throttle Cage: Idle To Stop, IDLE/CAGE {0,1}
	[573] = "%1d",   -- Throttle Emergency Button, OUT/IN {0,1}
	[733] = "%1d",   -- Deploy/Jettison Parachute Switch, JETT/OFF/DEPLOY {-1,0,1}
	[842] = "%1d",   -- Master Warning Button, OUT/IN {0,1}
	[843] = "%1d",   -- Fire Warning Button, OUT/IN {0,1}
	[844] = "%1d",   -- FCS Warning Button, OUT/IN {0,1}
	[845] = "%1d",   -- Digital Clock Switch, OFF/ON {0,1}
	[848] = "%1d",   -- Digital Clock UTC Button, OUT/IN {0,1}
	[849] = "%1d",   -- Digital Clock CHR Button, OUT/IN {0,1}
	[900] = "%1d",   -- Warning Panel Day/Night Switch, NIGHT/DAY {0,1}
	[902] = "%1d",   -- Warning Panel Test Button, OUT/IN {0,1}
	[904] = "%1d",   -- Battery Switch, OFF/ON {0,1}
	[905] = "%1d",   -- Main AC Gen Switch, OFF/ON {0,1}
	[906] = "%1d",   -- Main DC Gen Switch, OFF/ON {0,1}
	[907] = "%1d",   -- HUD/MFCD Day/Night Switch, NIGHT/DAY {0,1}
	[908] = "%.3f",  -- INS Mode Selector Knob, STBY/FAST/NAV/GC {0,0.333,0.666,0.999}
	[910] = "%1d",   -- HUD Symbology Reject, NORM/DCLT {0,1}
	-- AAP Panel Buttons
	[911] = "%1d",   -- AAP ACMI, OFF/ON {0,1}
	[912] = "%1d",   -- AAP N/A, OFF/ON {0,1}
	[913] = "%1d",   -- AAP N/A, OFF/ON {0,1}
	[914] = "%1d",   -- AAP N/A, OFF/ON {0,1}
	[915] = "%1d",   -- AAP HMD, OFF/ON {0,1}
	[916] = "%1d",   -- AAP SPJ, OFF/ON {0,1}
	[917] = "%1d",   -- AAP CLDP, OFF/ON {0,1}
	[918] = "%1d",   -- AAP IRST, OFF/ON {0,1}
	[919] = "%1d",   -- AAP RDR, OFF/ON {0,1}
	[920] = "%1d",   -- AAP SLNK, OFF/ON {0,1}
	[921] = "%1d",   -- AAP OESP, OFF/ON {0,1}
	[922] = "%1d",   -- AAP RWR, OFF/ON {0,1}
	[923] = "%1d",   -- AAP COM1, OFF/ON {0,1}
	[924] = "%1d",   -- AAP COM2, OFF/ON {0,1}
	[925] = "%1d",   -- AAP NAV, OFF/ON {0,1}
	[926] = "%1d",   -- AAP IFF, OFF/ON {0,1}
	[927] = "%1d",   -- AAP INS, OFF/ON {0,1}
	[928] = "%1d",   -- AAP WMMC1, OFF/ON {0,1}
	[929] = "%1d",   -- AAP WMMC2, OFF/ON {0,1}
	[930] = "%1d",   -- AAP SAIU, OFF/ON {0,1}
	[931] = "%1d",   -- AAP CMBT, OFF/ON {0,1}
	[932] = "%1d",   -- AAP TRAIN, OFF/ON {0,1}
	[933] = "%1d",   -- AAP OFF, OFF/ON {0,1}
	---
	[935] = "%1d",   -- Intercom Switch, OFF/ON {0,1}
	[936] = "%1d",   -- Radio Top/Bottom Antenna Switch, LOWER/UPPER {0,1}
	[937] = "%1d",   -- Speaker Control Box Channel Antenna Switch, STBY/MAIN {0,1}
	[942] = "%.3f",  -- ECS Mode Knob Selector, DE-SMK/NORM/OFF/RAM {0,0.333,0.666,0.999}
	[943] = "%1d",   -- Defog Button, OUT/IN {0,1}
	[947] = "%1d",   -- Exterior Light Master Switch, NVG/OFF/NORMAL {-1,0,1}
	[948] = "%.1f",  -- Formation Light Knob Selector, OFF/1/2/3/4/BRT {0,0.2,0.4,0.6,0.8,1}
	[949] = "%.1f",  -- Anti-Collision Light Knob Selector, OFF/1/2/3/4/CODE {0,0.2,0.4,0.6,0.8,1}
	[950] = "%1d",   -- Navigation Light Switch, DIM/OFF/BRIGHT {-1,0,1}
	[951] = "%1d",   -- Navigation Light Switch, STEADY/FLASH {-1,1}
	[952] = "%1d",   -- Light Switch, TOW/OFF/ANTI-COLLISION {-1,0,1}
	[953] = "%1d",   -- DTC Card Insertion {0,1}
	[954] = "%1d",   -- Emergency Landing Gear Cover, COVERED/UNCOVERED {0,1}
	[955] = "%.2f",  -- Emergency Landing Gear Handle, STOVED/RELEASED/PARTIAL PULL/TWIST/FULL PULL AND TWIST {0,0.25,0.5,0.75,1}
	[957] = "%1d",   -- Canopy Seal Handle, OFF/SEAL {0,1}
	[958] = "%.3f",  -- Canopy Open/Close Handle, OPEN/HOLD/CLOSE/LOCK {0,0.333,0.666,0.999}
	[960] = "%.2f",  -- Right Mirror Position, MIN..MAX {0..1}
	[961] = "%.2f",  -- Center Mirror Position, MIN..MAX {0..1}
	[962] = "%.2f",  -- Left Mirror Position, MIN..MAX {0..1}
	[963] = "%1d",   -- AAR Light Switch, OFF/ON {-1,1}
	[969] = "%1d",   -- Flash Light, OFF/ON {0,1}
	[970] = "%1d",   -- Stick Show/Hide, HIDDEN/VISIBLE {0,1}
	[971] = "%1d",   -- S7: A/P Disengage Paddle Switch, OUT/IN {0,1}
	[972] = "%1d",   -- Eject Seat Handle, SAFE/ARM {0,1}
	[973] = "%1d",   -- Eject Seat Firing Handle Safety Pin, OUT/IN {0,1}
	[974] = "%1d",   -- DTC Card Ejection Button, OUT/IN {0,1}
	[975] = "%1d",   -- Oxygen Tube Connector, OFF/ON {0,1}
	[977] = "%1d",   -- Oxygen 100% O2 Switch, OFF/ON {0,1}
	[978] = "%1d",   -- Eject Seat Emergency O2 Switch, OFF/ON {0,1}
}
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)

ExportScript.arrowExample(mainPanelDevice)
ExportScript.RadioTile(mainPanelDevice)

end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
end

----------------------
-- Custom Functions --
----------------------

function ExportScript.arrowExample(mainPanelDevice)
	
	local stickShowHide = mainPanelDevice:get_argument_value(970)-- Stick Hidden argument
	local stickStatus
	
	if stickShowHide >= 0.5 then
		stickStatus = "↑Up" -- stick is visible
	else
		stickStatus = "↓Down"
	end
	
	ExportScript.Tools.SendData(2000, stickStatus)
end


function ExportScript.RadioTile(mainPanelDevice)

	local radio1 = (GetDevice(25):get_frequency())/1000000 --left radio freq unrounded
	local radio2 = (GetDevice(26):get_frequency())/1000000 --right radio freq unrounded
			
	ExportScript.Tools.SendData(2001, radio1) --results in "108.000568" for channel 1
	ExportScript.Tools.SendData(2002, radio2) --results in "108.500744" for channel 2
end
-----------------------
-- General Functions --
-----------------------