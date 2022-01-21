-- A-4E-C

ExportScript.FoundDCSModule = true
ExportScript.Version.A4EC = "1.2.1"

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
	  [5] = "%.f",   <- floating point number Rounded to a decimal number
]]
	--there may be precisely 1 duplicate arg
	[16] = "%0.4f", --mirrors_draw
	[26] = "%0.4f", --Canopy
	[129] = "%0.4f", --CanopyLever
	
	[2] = "%0.4f", --StickPitch
	[3] = "%0.4f", --StickBank
	[4] = "%0.4f", --RudderPedals
	[5] = "%0.4f", --LeftBrakePedal
	[6] = "%0.4f", --RightBrakePedal
	
	[80] = "%0.4f", --Throttle
	[870] = "%0.4f", --PitchTrim
	[871] = "%0.4f", --RollTrim
	[28] = "%0.4f", --PitchTrimKnob
	[29] = "%0.4f", --RollTrimKnob
	
	[520] = "%0.4f", --Engine_RPM
	[521] = "%0.4f", --Engine_RPMsub
	
	[526] = "%0.4f", --CM_bank1_Xx
	[527] = "%0.4f", --CM_bank1_xX
	[528] = "%0.4f", --CM_bank2_Xx
	[529] = "%0.4f", --CM_bank2_xX
	
	[540] = "%0.4f", --EGT
	[560] = "%0.4f", --Engine_Fuel_Flow
	[152] = "%0.4f", --OilPressure
	[151] = "%0.4f", --PressureRatio
	[105] = "%0.4f", --ManualFuelControl_Warn
	
	[23] = "%0.2f", --FlapsIndicator
	[10] = "%0.4f", --TailhookLever
	[20] = "%0.4f", --GearNose
	[21] = "%0.4f", --GearLeft
	[22] = "%0.4f", --GearRight
	[27] = "%0.4f", --GearLight
	
	[153] = "%0.4f", --HideStick
	
	[580] = "%0.4f", --FuelGauge
	[665] = "%0.4f", --StandbyAttHorizon
	[880] = "%0.4f", --IASGauge
	[881] = "%0.4f", --MachDisc
	[882] = "%0.4f", --IASIndex
	[883] = "%0.4f", --MachIndex
	[600] = "%0.4f", --RadarAltimeter
	[601] = "%0.4f", --LAWS_indexer
	[604] = "%0.4f", --LAWS_OFF
	[605] = "%0.4f", --LAWS_light_gauge
	[150] = "%0.4f", --Oil_light_gauge
	[856] = "%0.4f", --INDICATOR_BRIGHTNESS
	[857] = "%0.4f", --AOA_BRIGHTNESS
	
	[858] = "%0.4f", --Glareshield_BRIGHTNESS
	[154] = "%0.4f", --Glareshield_WHEELS
	[155] = "%0.4f", --Glareshield_LABS
	[156] = "%0.4f", --Glareshield_LAWS
	[157] = "%0.4f", --Glareshield_OBST
	[158] = "%0.4f", --Glareshield_IFF
	[159] = "%0.4f", --Glareshield_FIRE
	
	[780] = "%0.4f", --BDHI_Heading
	[781] = "%0.4f", --BDHI_Needle1
	[782] = "%0.4f", --BDHI_Needle2
	[786] = "%0.4f", --BDHI_DME_Flag
	[785] = "%0.4f", --BDHI_DME_Xxx
	[784] = "%0.4f", --BDHI_DME_xXx
	[783] = "%0.4f", --BDHI_DME_xxX
	[381] = "%0.4f", --BDHI_ILS_GS
	[382] = "%0.4f", --BDHI_ILS_LOC
	
	[820] = "%0.4f", --Altimeter Needle
	[821] = "%0.4f", --Altimeter10K
	[822] = "%0.4f", --Altimeter1K
	[823] = "%0.4f", --Altimeter100s
	[824] = "%0.4f", --AltAdjNNxx
	[825] = "%0.4f", --AltAdjxxNx
	[826] = "%0.4f", --AltAdjxxxN
	
	[710] = "%0.4f", --CabinAlt
	[760] = "%0.4f", --LiquidOxygen
	[761] = "%0.4f", --Oxygen_light_gauge
	[762] = "%0.4f", --Oxygen_flag_gauge
	
	[360] = "%0.4f", --Accel_cur
	[137] = "%0.4f", --Accel_max
	[138] = "%0.4f", --Accel_min
	
	[800] = "%0.4f", --VerticalVelocity
	
	[383] = "%0.4f", --ADIPitch
	[384] = "%0.4f", --ADIRoll
	[385] = "%0.4f", --ADIHeading
	[387] = "%0.4f", --ADIOFF
	[388] = "%0.4f", --ADISlip
	[389] = "%0.4f", --ADITurn
	
	[148] = "%0.4f", --BackupCompass
	[660] = "%0.4f", --AttGyroStbyPitch
	[661] = "%0.4f", --AttGyroStbyRoll
	[664] = "%0.4f", --AttGyroStbyOFF
	[741] = "%0.4f", --AWRSPower
	[894] = "%0.4f", --GunsightReflector
	
	[859] = "%0.4f", --Ladder_Brightness
	[860] = "%0.4f", --Ladder_FuelBoostCaution
	[861] = "%0.4f", --Ladder_ControlHydraulicCaution
	[862] = "%0.4f", --Ladder_UtilityHydraulicCaution
	[863] = "%0.4f", --Ladder_FuelTransCaution
	[864] = "%0.4f", --Ladder_SpdBrkCaution
	[865] = "%0.4f", --Ladder_SpoilerCaution
	
	[866] = "%0.4f", --Advisory_InRange
	[867] = "%0.4f", --Advisory_SetRange
	[868] = "%0.4f", --Advisory_Dive
	[147] = "%0.4f", --APCLight
	
	[840] = "%0.4f", --AngleOfAttack
	[850] = "%0.4f", --AoA_Green
	[851] = "%0.4f", --AoA_Yellow
	[852] = "%0.4f", --AoA_Red
	
	[406] = "%0.4f", --APG53A_LeftRange
	[407] = "%0.4f", --APG53A_BottomRange
	[167] = "%0.1f", --AFCS_HDG_100s
	[168] = "%0.1f", --AFCS_HDG_10s
	[169] = "%0.1f", --AFCS_HDG_1s
	[115] = "%0.4f", --APG53A_Glow
	[171] = "%0.4f", --Doppler_MemoryLight
	[172] = "%0.4f", --Doppler_Drift
	[173] = "%0.1f", --Doppler_Speed_Xnn
	[174] = "%0.1f", --Doppler_Speed_nXn
	[175] = "%0.1f", --Doppler_Speed_nnX
	
	[178] = "%0.1f", --Nav_CurPos_Lat_Xnnnn
	[179] = "%0.1f", --Nav_CurPos_Lat_nXnnn
	[180] = "%0.1f", --Nav_CurPos_Lat_nnXnn
	[181] = "%0.1f", --Nav_CurPos_Lat_nnnXn
	[182] = "%0.1f", --Nav_CurPos_Lat_nnnnX
	[184] = "%0.1f", --Nav_CurPos_Lon_Xnnnnn
	[185] = "%0.1f", --Nav_CurPos_Lon_nXnnnn
	[186] = "%0.1f", --Nav_CurPos_Lon_nnXnnn
	[187] = "%0.1f", --Nav_CurPos_Lon_nnnXnn
	[188] = "%0.1f", --Nav_CurPos_Lon_nnnnXn
	[189] = "%0.1f", --Nav_CurPos_Lon_nnnnnX
	[191] = "%0.1f", --Nav_Dest_Lat_Xnnnn
	[192] = "%0.1f", --Nav_Dest_Lat_nXnnn
	[193] = "%0.1f", --Nav_Dest_Lat_nnXnn
	[194] = "%0.1f", --Nav_Dest_Lat_nnnXn
	[195] = "%0.1f", --Nav_Dest_Lat_nnnnX
	[197] = "%0.1f", --Nav_Dest_Lon_Xnnnnn
	[198] = "%0.1f", --Nav_Dest_Lon_nXnnnn
	[199] = "%0.1f", --Nav_Dest_Lon_nnXnnn
	[200] = "%0.1f", --Nav_Dest_Lon_nnnXnn
	[201] = "%0.1f", --Nav_Dest_Lon_nnnnXn
	[202] = "%0.1f", --Nav_Dest_Lon_nnnnnX
	
	[210] = "%0.4f", --Nav_WindSpeed_Xxx
	[211] = "%0.4f", --Nav_WindSpeed_xXx
	[212] = "%0.4f", --Nav_WindSpeed_xxX
	[214] = "%0.4f", --Nav_WindDir_Xxx
	[215] = "%0.4f", --Nav_WindDir_xXx
	[216] = "%0.4f", --Nav_WindDir_xxX
	[204] = "%0.4f", --Nav_Magvar_Xxxxx
	[205] = "%0.4f", --Nav_Magvar_xXxxx
	[206] = "%0.4f", --Nav_Magvar_xxXxx
	[207] = "%0.4f", --Nav_Magvar_xxxXx
	[208] = "%0.4f", --Nav_Magvar_xxxxX
	
	[362] = "%0.2f", --ARC51_Freq_XXxxx
	[363] = "%0.2f", --ARC51_Freq_xxXxx
	[364] = "%0.2f", --ARC51_Freq_xxxXX
	[371] = "%0.2f", --ARC51_Freq_Preset
	
	[111] = "%0.4f", --FloodWhite
	[114] = "%0.4f", --FloodRed
	[117] = "%0.4f", --InstLightsPrimary
	[119] = "%0.4f", --ConsoleLights
	[440] = "%0.4f", --CurrTime_hours
	[441] = "%0.4f", --CurrTime_mins
	[442] = "%0.4f", --CurrTime_secs
	[144] = "%0.4f", --Stopwatch_mins
	[145] = "%0.4f", --Stopwatch_secs
	
	[514] = "%0.4f", --ECM_TEST
	[515] = "%0.4f", --ECM_GO
	[516] = "%0.4f", --ECM_NO_GO
	[517] = "%0.4f", --ECM_SAM
	[518] = "%0.4f", --ECM_RPT
	[519] = "%0.4f", --ECM_STBY
	[500] = "%0.4f", --ECM_REC
	[531] = "%0.4f", --ECM_Visibilty
	
	[260] = "%0.4f", --AFCS_TEST_ROLL
	[261] = "%0.4f", --AFCS_TEST_YAW
	[262] = "%0.4f", --AFCS_TEST_PITCH
	[113] = "%0.4f", --TEST_PARAM_GAUGE
}

ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
]]
	[8] = "%0.4f",		--Landing Gear Handle	{1,0,1}
	[10] = "%0.4f",		--Arresting Hook Handle	{1,0,1}
	[24] = "%0.4f",		--Shoulder Harness Control Handle	{1,0,1}
	[25] = "%0.4f",		--Alternate Ejection Handle	{1,0,1}
	[82] = "%0.4f",		--Rudder Trim Switch	{0,-1,1}
	[83] = "%0.4f",		--Master Exterior Lights Switch	{1,-1,1}
	[84] = "%0.4f",		--Spoiler Arm Switch	{1,0,1}
	[85] = "%0.4f",		--Speedbrake Switch	{1,0,1}
	[100] = "%0.4f",	--Engine Starter Switch	{1,0,1}
	[101] = "%0.4f",	--Drop Tank Pressurization Switch	{1,-1,1}
	[103] = "%0.4f",	--Fuel Dump Switch	{1,-1,1}
	[104] = "%0.4f",	--Fuel Control Switch	{1,0,1}
	[106] = "%0.4f",	--Instrument Lights Control	{0,0,1}
	[107] = "%0.4f",	--Console Lights Control	{0,0,1}
	[108] = "%0.4f",	--Instrument Lights Brightness	{1,-1,1}
	[110] = "%0.4f",	--White Floodlights Control	{0,0,1}
	[120] = "%0.4f",	--AN/APG-53A Radar Mode Switch	{0.1,0,0.4}
	[121] = "%0.4f",	--Radar AoA Compensation Switch	{1,0,1}
	[122] = "%0.4f",	--Radar Antenna Tilt Switch	{0.4,0,1}
	[123] = "%0.4f",	--Radar Obstacle Tone Volume	{0,-1,1}
	[125] = "%0.4f",	--Oxygen Switch	{1,0,1}
	[128] = "%0.4f",	--Emergency Speedbrake Knob	{1,-1,1}
	[130] = "%0.4f",	--Manual Fuel Shutoff Control Lever	{1,0,1}
	[131] = "%0.4f",	--Manual Fuel Shutoff Control Catch	{1,0,1}
	[132] = "%0.4f",	--Flap Handle	{1,-1,1}
	[133] = "%0.4f",	--JATO Arming Switch	{1,0,1}
	[134] = "%0.4f",	--JATO Jettison Switch	{1,0,1}
	[135] = "%0.4f",	--APC Power Switch	{1,-1,1}
	[136] = "%0.4f",	--APC Temperature Switch	{1,-1,1}
	[139] = "%0.4f",	--Accelerometer Reset	{1,0,1}
	[146] = "%0.4f",	--Elapsed-Time Clock	{1,0,1}
	[160] = "%0.4f",	--AFCS Standby Switch	{1,0,1}
	[161] = "%0.4f",	--AFCS Engage Switch	{1,0,1}
	[162] = "%0.4f",	--AFCS Heading Select Switch	{1,0,1}
	[163] = "%0.4f",	--AFCS Altitude Switch	{1,0,1}
	[164] = "%0.4f",	--AFCS Heading Select Pull-to-Set Knob	{0,0,1}
	[165] = "%0.4f",	--AFCS Stability Augmentation Switch (Yaw Damper)	{1,0,1}
	[166] = "%0.4f",	--AFCS Aileron Trim Switch (unimplemented)	{1,0,1}
	[170] = "%0.1f",	--AN/APN-153 Doppler Navigation Radar Mode Switch	{0.1,0,0.4}
	[176] = "%0.1f",	--AN/ASN-41 Function Selector Switch	{0.1,0,0.4}
	[177] = "%0.4f",	--Present Latitude Push-to-Set Knob	{1,0,1}
	[183] = "%0.4f",	--Present Longitude Push-to-Set Knob	{1,0,1}
	[190] = "%0.4f",	--Destination Latitude Push-to-Set Knob	{1,0,1}
	[196] = "%0.4f",	--Destination Longitude Push-to-Set Knob	{1,0,1}
	[203] = "%0.4f",	--Magnetic Variation Push-to-Set Knob	{1,0,1}
	[209] = "%0.4f",	--Wind Speed Push-to-Set Knob	{1,0,1}
	[213] = "%0.4f",	--Wind Direction Push-to-Set Knob	{1,0,1}
	[217] = "%0.4f",	--Probe Light Switch	{1,-1,1}
	[218] = "%0.4f",	--Taxi Light Switch	{1,0,1}
	[219] = "%0.4f",	--Anti-Collision Light Switch	{1,0,1}
	[220] = "%0.4f",	--Fuselage Light Switch	{1,-1,1}
	[221] = "%0.4f",	--Lighting Flash/Steady Switch	{1,0,1}
	[222] = "%0.4f",	--Navigation Lights Switch	{1,-1,1}
	[223] = "%0.4f",	--Tail Light Switch	{1,-1,1}
	[224] = "%0.4f",	--Cabin Pressure Switch	{1,0,1}
	[225] = "%0.4f",	--Windshield Defrost Switch	{1,-1,1}
	[226] = "%0.4f",	--Cabin Temperature Knob	{0,0,1}
	[236] = "%0.4f",	--Present Latitude Push-to-Set Knob	{1,0,1}
	[237] = "%0.4f",	--Present Longitude Push-to-Set Knob	{1,0,1}
	[238] = "%0.4f",	--Destination Latitude Push-to-Set Knob	{1,0,1}
	[239] = "%0.4f",	--Destination Longitude Push-to-Set Knob	{1,0,1}
	[240] = "%0.4f",	--Magnetic Variation Push-to-Set Knob	{1,0,1}
	[241] = "%0.4f",	--Wind Speed Push-to-Set Knob	{1,0,1}
	[242] = "%0.4f",	--Wind Direction Push-to-Set Knob	{1,0,1}
	[247] = "%0.4f",	--AN/APN-153 Memory Light Test	{1,0,1}
	[248] = "%0.4f",	--Destination Latitude Slew Knob	{1,-1,1}
	[249] = "%0.4f",	--Destination Longitude Slew Knob	{1,-1,1}
	[250] = "%0.4f",	--MCL Channel Selector Switch	{0.05,0,0.95}
	[251] = "%0.4f",	--Seat Adjustment Switch (unimplemented)	{1,-1,1}
	[252] = "%0.4f",	--Emergency Generator Switch	{1,0,1}
	[253] = "%0.4f",	--AN/ARA-63 MCL Power Switch	{1,-1,1}
	[254] = "%0.4f",	--TACAN Antenna Control Switch (unimplemented)	{1,-1,1}
	[255] = "%0.4f",	--Navigation Dead Reckoning/Doppler Switch (unimplemented)	{1,0,1}
	[256] = "%0.4f",	--Fuel Transfer Switch	{1,0,1}
	[257] = "%0.4f",	--Rain Removal Switch (unimplemented)	{1,0,1}
	[258] = "%0.4f",	--AFCS 1-N-2 Guard Switch	{1,0,1}
	[259] = "%0.4f",	--AFCS 1-N-2 Switch	{1,-1,1}
	[361] = "%0.4f",	--Radio Preset Channel Selector	{0.05,0,0.95}
	[365] = "%0.4f",	--Radio Volume	{0.5,0,1}
	[366] = "%0.f",	--Radio Frequency Mode	{1,-1,1}
	[367] = "%0.4f",	--Radio Frequency 10 MHz	{0.05,0,0.85}
	[368] = "%0.4f",	--Radio Frequency 1 MHz	{0.1,0,0.9}
	[369] = "%0.4f",	--Radio Frequency 50 kHz	{0.05,0,0.95}
	[370] = "%0.4f",	--Radio Squelch Disable	{1,0,1}
	[372] = "%0.1f",	--AN/ARC-51A UHF Radio Mode Switch	{0.1,0,0.3}
	[390] = "%0.4f",	--Gunpod Switch	{1,-1,1}
	[391] = "%0.4f",	--Gunpod Station LH Switch	{1,0,1}
	[392] = "%0.4f",	--Gunpod Station CTR Switch	{1,0,1}
	[393] = "%0.4f",	--Gunpod Station RH Switch	{1,0,1}
	[400] = "%0.4f",	--Radar Indicator Storage	{0,0,1}
	[401] = "%0.4f",	--Radar Indicator Brilliance	{0,0,1}
	[402] = "%0.4f",	--Radar Indicator Detail	{0,0,1}
	[403] = "%0.4f",	--Radar Indicator Gain	{0,0,1}
	[404] = "%0.4f",	--Radar Indicator Reticle	{0,0,1}
	[405] = "%0.4f",	--Radar Indicator Filter Plate	{1,0,1}
	[501] = "%0.4f",	--APR-27 Switch	{1,0,1}
	[502] = "%0.4f",	--AN/APR-23 Function Selector Switch	{0.33,0,0.99}
	[503] = "%0.4f",	--Audio ALQ Switch	{1,0,1}
	[504] = "%0.4f",	--APR-25 Switch	{1,0,1}
	[505] = "%0.4f",	--Missile Alert Volume	{0,-0.8,0.8}
	[506] = "%0.4f",	--PRF Volume	{0,-0.8,0.8}
	[507] = "%0.4f",	--APR-27 Test	{1,0,1}
	[509] = "%0.4f",	--Compass Latitude Knob (unimplemented)	{0,-1,1}
	[510] = "%0.4f",	--APR-27 Light	{1,0,1}
	[511] = "%0.4f",	--Compass Heading Set Knob (unimplemented)	{1,-1,1}
	[512] = "%0.4f",	--Compass Mode (unimplemented)	{1,0,1}
	[513] = "%0.4f",	--Compass Push-to-Sync (unimplemented)	{1,0,1}
	[522] = "%0.4f",	--Dispenser Select	{1,-1,1}
	[523] = "%0.4f",	--Chaff AUTO Pushbutton (ALE-29A Salvo)	{1,0,1}
	[524] = "%0.4f",	--Dispenser 1 Counter	{0,0,1}
	[525] = "%0.4f",	--Dispenser 2 Counter	{0,0,1}
	[530] = "%0.4f",	--Chaff Power Switch	{1,0,1}
	[602] = "%0.4f",	--AN/APN-141 Radar Altimeter	{0.5,0,1}
	[603] = "%0.4f",	--AN/APN-141 Radar Altimeter	{1,-1,0}
	[662] = "%0.4f",	--Standby Attitude Horizon	{0.5,0,1}
	[663] = "%0.4f",	--Standby Attitude Horizon	{1,0,1}
	[700] = "%0.4f",	--Emergency Release Selector	{0.1,0,0.6}
	[701] = "%0.4f",	--Guns Charging Switch	{1,0,1}
	[702] = "%0.4f",	--Bomb Arm Switch	{1,-1,1}
	[703] = "%0.4f",	--Station 1 Selector Switch	{1,0,1}
	[704] = "%0.4f",	--Station 2 Selector Switch	{1,0,1}
	[705] = "%0.4f",	--Station 3 Selector Switch	{1,0,1}
	[706] = "%0.4f",	--Station 4 Selector Switch	{1,0,1}
	[707] = "%0.4f",	--Station 5 Selector Switch	{1,0,1}
	[708] = "%0.4f",	--Weapon Function Selector Switch	{0.1,0,0.6}
	[709] = "%0.4f",	--Master Armament Switch	{1,0,1}
	[720] = "%0.4f",	--Internal-External Fuel Switch	{1,0,1}
	[721] = "%0.4f",	--Radar Terrain Clearance Switch	{1,0,1}
	[722] = "%0.4f",	--Radar Range Switch	{1,0,1}
	[723] = "%0.4f",	--Master Test Switch	{1,0,1}
	[724] = "%0.4f",	--BDHI Switch	{1,-1,1}
	[725] = "%0.4f",	--Shrike Selector Knob	{0.1,0,0.4}
	[726] = "%0.4f",	--Shrike/Sidewinder Volume Knob	{0,-1,1}
	[740] = "%0.4f",	--AWRS Quantity Selector Switch	{0.05,0,0.55}
	[742] = "%0.4f",	--AWRS Drop Interval Knob	{0,0,0.9}
	[743] = "%0.4f",	--AWRS Multiplier Switch	{1,0,1}
	[744] = "%0.4f",	--AWRS Mode Selector Switch	{0.1,0,0.5}
	[827] = "%0.4f",	--Altimeter Pressure	{0,0,1}
	[853] = "%0.4f",	--AoA Indexer Dimming Wheel	{1,-1,1}
	[884] = "%0.4f",	--IAS Index	{0.5,0,1}
	[885] = "%0.4f",	--IAS Index	{1,0,1}
	[891] = "%0.4f",	--Gunsight Day-Night Switch	{1,0,1}
	[895] = "%0.4f",	--Gunsight Light Control	{0,0,1}
	[900] = "%0.1f",	--AN/ARN-52 TACAN Mode Switch	{0.1,0,0.3}
	[901] = "%0.4f",	--TACAN Channel 10s	{0.05,0,0.6}
	[902] = "%0.4f",	--TACAN Channel 1s	{0.1,0,0.9}
	[903] = "%0.4f",	--TACAN Volume	{0,-1,1}
	[1240] = "%0.4f",	--Emergency Landing Gear Release Handle	{1,0,1}
	[1241] = "%0.4f",	--Emergency Stores Release Handle	{1,0,1}
	[1242] = "%0.4f",	--Manual Flight Control Handle	{1,0,1}
	[1243] = "%0.4f",	--Emergency Generator Release Handle	{1,0,1}

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
	export in low tick interval to GlassCockpit
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
]]
	
	ExportScript.CockpitParametersFunction(mainPanelDevice)
	ExportScript.UHF_radioPresets(mainPanelDevice)
	ExportScript.TomTom(mainPanelDevice)
	ExportScript.UHF_radio(mainPanelDevice)
	ExportScript.Tacan_radio(mainPanelDevice)
	ExportScript.AFCSpanel(mainPanelDevice)
	ExportScript.FlightControls(mainPanelDevice)
	ExportScript.FlightInstruments(mainPanelDevice)
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
	--[[
	every frame export to hardware
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

----------------------
-- Custom Functions --
----------------------



function ExportScript.CockpitParametersFunction(mainPanelDevice)


--[[ Interesting Parameters
ADI_HDG:169.449555\
AFCS_HDG_100s:0.000000\
AFCS_HDG_10s:0.000000\
AFCS_HDG_1s:0.000000\
ALT_ADJ_NNxx:29.000000\
ALT_ADJ_xxNx:9.000000\
ALT_ADJ_xxxN:2.000000\
AOA_GREEN:0.000000\
AOA_RED:0.000000\
AOA_YELLOW:0.000000\
APC_LIGHT:0.000000\
API_TCN_VALID:0.000000\
API_TCN_X:0.000000\
API_TCN_Y:0.000000\
API_TCN_Z:0.000000\
APN153-DRIFT-GAUGE:0.000000\
APN153-DRIFT:0.000000\
APN153-GS:0.000000\
APN153-MEMORYLIGHT:1.000000\
APN153-SPEED-nnX:0.000000\
APN153-SPEED-nXn:0.000000\
APN153-SPEED-Xnn:0.000000\
APN153-WIND-DIR:0.000000\
APN153-WIND-SPEED:0.000000\
ARC51-FREQ-PRESET:0.000000\
ARC51-FREQ-XXxxx:0.150000\
ARC51-FREQ-xxXxx:0.500000\
ARC51-FREQ-xxxXX:0.500000\
ASN41-BEARING:-96.528709\
ASN41-MAGVAR-Xxxxx:0.000000\
ASN41-MAGVAR-xXxxx:0.000000\
ASN41-MAGVAR-xxxXx:0.700000\
ASN41-MAGVAR-xxXxx:0.700000\
ASN41-MAGVAR-xxxxX:1.000000\
ASN41-RANGE:0.611110\
ASN41-TRACK:263.471291\
ASN41-VALID:1.000000\
ASN41-WINDDIR-Xxx:0.000000\
ASN41-WINDDIR-xXx:0.000000\
ASN41-WINDDIR-xxX:0.000000\
ASN41-WINDSPEED-xxX:0.000000\
ASN41-WINDSPEED-Xxx:0.000000\
ASN41-WINDSPEED-xXx:0.000000\
BASE_SENSOR_BAROALT:32.168477\
BASE_SENSOR_IAS:8.814941\
BASE_SENSOR_RADALT:2.158444\
BASE_SENSOR_TAS:8.828558\
BDHI_DME_FLAG:0.000000\
BDHI_DME_Xxx:0.000000\
BDHI_DME_xxX:0.000000\
BDHI_DME_xXx:0.000000\
BDHI_HDG:259.449462\
BDHI_ILS_GS:-1.000000\
BDHI_ILS_LOC:-1.000000\
BDHI_NEEDLE1:0.000000\
BDHI_NEEDLE2:0.000000\
COMPASS_HDG:190.550445\
CURRTIME_HOURS:6.755694\
CURRTIME_MINS:45.341667\
CURRTIME_SECS:19.921767\
D_ALT_100S:105.539620\
D_ALT_10K:105.539620\
D_ALT_1K:105.539620\
D_FUEL:2716.651885\
D_IAS:0.000000\
FM_AIRSPEED:3.231500\
FM_GFORCE:0.997350\
OIL_PRESSURE:40.086509\
RPM:55.773540\
STOPWATCH_MINS:0.000000\
STOPWATCH_SECS:0.000000\
TACAN_CHANNEL:0.000000\
UHF_FREQ:255.500000\
VHF_AM_FREQ:124.000000\
VVI:0.000013\
WHEEL_CHOCKS_STATE:0.000000\
WS_IR_MISSILE_LOCK:0.000000\
NAV_CURPOS_LAT_nnnnX:0.000000\
NAV_CURPOS_LAT_nnnXn:0.520457\
NAV_CURPOS_LAT_nnXnn:0.000000\
NAV_CURPOS_LAT_nXnnn:0.500000\
NAV_CURPOS_LAT_Xnnnn:0.400000\
NAV_CURPOS_LON_nnnnnX:0.500000\
NAV_CURPOS_LON_nnnnXn:0.726362\
NAV_CURPOS_LON_nnnXnn:0.500000\
NAV_CURPOS_LON_nnXnnn:0.800000\
NAV_CURPOS_LON_nXnnnn:0.300000\
NAV_CURPOS_LON_Xnnnnn:0.000000\
NAV_DEST_LAT_nnnnX:0.000000\
NAV_DEST_LAT_nnnXn:0.521700\
NAV_DEST_LAT_nnXnn:0.000000\
NAV_DEST_LAT_nXnnn:0.500000\
NAV_DEST_LAT_Xnnnn:0.400000\
NAV_DEST_LON_nnnnnX:0.500000\
NAV_DEST_LON_nnnnXn:0.639908\
NAV_DEST_LON_nnnXnn:0.500000\
NAV_DEST_LON_nnXnnn:0.800000\
NAV_DEST_LON_nXnnnn:0.300000\
NAV_DEST_LON_Xnnnnn:0.000000\
]]

end

function ExportScript.TomTom(mainPanelDevice)
--this function will display the values seen on the Navigation computer
	
	local Nav_CurPos_Lat_Xnnnn = Round(math.floor(mainPanelDevice:get_argument_value(178)*10),0)
	local Nav_CurPos_Lat_nXnnn = Round(math.floor(mainPanelDevice:get_argument_value(179)*10),0)
	local Nav_CurPos_Lat_nnXnn = Round(math.floor(mainPanelDevice:get_argument_value(180)*10),0)
	local Nav_CurPos_Lat_nnnXn = Round(math.floor(mainPanelDevice:get_argument_value(181)*10),0)
	local Nav_CurPos_Lat_nnnnX = Round(math.floor(mainPanelDevice:get_argument_value(182)*10),0)
	
	if Nav_CurPos_Lat_nnnnX < 5 then
		Nav_CurPos_Lat_nnnnX = "N"
	else
		Nav_CurPos_Lat_nnnnX = "S"
	end
	
		local Nav_CurPos_Lat = Nav_CurPos_Lat_Xnnnn .. Nav_CurPos_Lat_nXnnn 
							.. Nav_CurPos_Lat_nnXnn .. Nav_CurPos_Lat_nnnXn .. Nav_CurPos_Lat_nnnnX
			
	ExportScript.Tools.SendData(2010, "PRESENT\n" .. Nav_CurPos_Lat) 
	
	
	local Nav_CurPos_Lon_Xnnnnn = Round(math.floor(mainPanelDevice:get_argument_value(184)*10),0)
	local Nav_CurPos_Lon_nXnnnn = Round(math.floor(mainPanelDevice:get_argument_value(185)*10),0)
	local Nav_CurPos_Lon_nnXnnn = Round(math.floor(mainPanelDevice:get_argument_value(186)*10),0)
	local Nav_CurPos_Lon_nnnXnn = Round(math.floor(mainPanelDevice:get_argument_value(187)*10),0)
	local Nav_CurPos_Lon_nnnnXn = Round(math.floor(mainPanelDevice:get_argument_value(188)*10),0)
	local Nav_CurPos_Lon_nnnnnX = Round(math.floor(mainPanelDevice:get_argument_value(189)*10),0)
	
	
	if Nav_CurPos_Lon_nnnnnX < 5 then
		Nav_CurPos_Lon_nnnnnX = "W"
	else
		Nav_CurPos_Lon_nnnnnX = "E"
	end
	
		local Nav_CurPos_Lon = Nav_CurPos_Lon_Xnnnnn .. Nav_CurPos_Lon_nXnnnn .. Nav_CurPos_Lon_nnXnnn
							.. Nav_CurPos_Lon_nnnXnn .. Nav_CurPos_Lon_nnnnXn .. Nav_CurPos_Lon_nnnnnX
			
	ExportScript.Tools.SendData(2011, "POSIT\n" .. Nav_CurPos_Lon)
	
	
	local Nav_Dest_Lat_Xnnnn = Round(math.floor(mainPanelDevice:get_argument_value(191)*10),0)
	local Nav_Dest_Lat_nXnnn = Round(math.floor(mainPanelDevice:get_argument_value(192)*10),0)
	local Nav_Dest_Lat_nnXnn = Round(math.floor(mainPanelDevice:get_argument_value(193)*10),0)
	local Nav_Dest_Lat_nnnXn = Round(math.floor(mainPanelDevice:get_argument_value(194)*10),0)
	local Nav_Dest_Lat_nnnnX = Round(math.floor(mainPanelDevice:get_argument_value(195)*10),0)
	
	if Nav_Dest_Lat_nnnnX < 5 then
		Nav_Dest_Lat_nnnnX = "N"
	else
		Nav_Dest_Lat_nnnnX = "S"
	end
	
		local Nav_Dest_Lat = Nav_Dest_Lat_Xnnnn .. Nav_Dest_Lat_nXnnn 
							.. Nav_Dest_Lat_nnXnn .. Nav_Dest_Lat_nnnXn .. Nav_Dest_Lat_nnnnX
			
	ExportScript.Tools.SendData(2012, "DESTI\n" .. Nav_Dest_Lat) 
	
	local Nav_Dest_Lon_Xnnnnn = Round(math.floor(mainPanelDevice:get_argument_value(197)*10),0)
	local Nav_Dest_Lon_nXnnnn = Round(math.floor(mainPanelDevice:get_argument_value(198)*10),0)
	local Nav_Dest_Lon_nnXnnn = Round(math.floor(mainPanelDevice:get_argument_value(199)*10),0)
	local Nav_Dest_Lon_nnnXnn = Round(math.floor(mainPanelDevice:get_argument_value(200)*10),0)
	local Nav_Dest_Lon_nnnnXn = Round(math.floor(mainPanelDevice:get_argument_value(201)*10),0)
	local Nav_Dest_Lon_nnnnnX = Round(math.floor(mainPanelDevice:get_argument_value(202)*10),0)
	
	if Nav_Dest_Lon_nnnnnX < 5 
	  then Nav_Dest_Lon_nnnnnX = "W"
	else 
	  Nav_Dest_Lon_nnnnnX = "E"
	end
	
		local Nav_Dest_Lon = Nav_Dest_Lon_Xnnnnn .. Nav_Dest_Lon_nXnnnn .. Nav_Dest_Lon_nnXnnn
							.. Nav_Dest_Lon_nnnXnn .. Nav_Dest_Lon_nnnnXn .. Nav_Dest_Lon_nnnnnX
			
	ExportScript.Tools.SendData(2013, "NATION\n" .. Nav_Dest_Lon)
	
	ExportScript.Tools.SendData(2014, "P POSTN\n" .. Nav_CurPos_Lat .. "\n" ..Nav_CurPos_Lon)
	ExportScript.Tools.SendData(2015, "DEST\n" .. Nav_Dest_Lat .. "\n" ..Nav_Dest_Lon)
	
	
	
	
	------------------------------
	-- AN/APN-153 Radar Doppler --
	------------------------------
	
	local Doppler_Speed_Xnn = Round(math.floor(mainPanelDevice:get_argument_value(173)*10),0)
	local Doppler_Speed_nXn = Round(math.floor(mainPanelDevice:get_argument_value(174)*10),0)
	local Doppler_Speed_nnX = Round(math.floor(mainPanelDevice:get_argument_value(175)*10),0)
	
	local Doppler_Speed = Doppler_Speed_Xnn .. Doppler_Speed_nXn .. Doppler_Speed_nnX
	
	ExportScript.Tools.SendData(2016, "DOP Spd\n" .. Doppler_Speed .. "kts")


	local Doppler_Drift = Round(math.floor(mainPanelDevice:get_argument_value(172)*40),0)
	local Doppler_direction = ""
	
	if Doppler_Drift > 1 then --it is positive
		Doppler_Drift = Doppler_Drift
		Doppler_direction = "R"
	elseif Doppler_Drift < -1 then --it is engative
		Doppler_Drift = abs(Doppler_Drift)
		Doppler_direction = "L"
	else --it is close enough to be center aka 0
		Doppler_Drift = "0"
		Doppler_direction = ""
	end
	
	ExportScript.Tools.SendData(2017, "DOP Drift\n" .. Doppler_Drift .. " " .. Doppler_direction)
	
	ExportScript.Tools.SendData(2018, "DOPPLER\n" .. Doppler_Drift .. " " .. Doppler_direction .. "\n" .. Doppler_Speed .. "kts")

end

function ExportScript.UHF_radio(mainPanelDevice)
--This contains most of the actual UHF code

--[[
  [362] = "%0.4f", --ARC51_Freq_XXxxx
  [363] = "%0.4f", --ARC51_Freq_xxXxx
  [364] = "%0.4f", --ARC51_Freq_xxxXX
  [371] = "%0.4f", --ARC51_Freq_Preset
 ]]
 
  local ARC51_Freq_XXxxx = Round(math.floor(mainPanelDevice:get_argument_value(362)*20), 0) + 22
  local ARC51_Freq_xxXxx = Round((mainPanelDevice:get_argument_value(363)*10),0)
  local ARC51_Freq_xxxXX = Round(mainPanelDevice:get_argument_value(364)*100,0)

  -- Some edge cases because we are dealing with numbers instead of strings
  if ARC51_Freq_xxxXX == 5 then
    ARC51_Freq_xxxXX = "05"
  end
  if ARC51_Freq_xxxXX == 0 then
    ARC51_Freq_xxxXX = "00"
  end
  local ARC51_Freq_Preset = Round(math.floor(mainPanelDevice:get_argument_value(365)*10),0)
  
  
  ARC51_Freq = ARC51_Freq_XXxxx .. ARC51_Freq_xxXxx .. "." .. ARC51_Freq_xxxXX
  
  ExportScript.Tools.SendData(2019, "UHF MHz\n" .. ARC51_Freq)
  ExportScript.Tools.SendData(2020, "UHF \n" .. "CH " .. ARC51_Freq_Preset)
  
  if mainPanelDevice:get_argument_value(366) > 0.5 then
    ExportScript.Tools.SendData(2021, "UHF \n" .. "CH " .. ARC51_Freq_Preset)
  elseif mainPanelDevice:get_argument_value(366) < -0.5 then
	ExportScript.Tools.SendData(2021, "UHF\n" .. "GUARD")
  else 
	ExportScript.Tools.SendData(2021, "UHF MHz\n" .. ARC51_Freq)
  end
  
end

function ExportScript.UHF_radioPresets(mainPanelDevice)

local a4_list_indication_4 = ExportScript.Tools.split(list_indication(4), "%c")

--[[ Example return
{
    [1] = "-----------------------------------------",
    [2] = "txt_chn[1]",
    [3] = "255.50",
    [4] = "-----------------------------------------",
    [5] = "txt_chn[2]",
    [6] = "237.30",
    [7] = "-----------------------------------------",
    [8] = "txt_chn[3]",
    [9] = "251.00",
    [10] = "-----------------------------------------",
    [11] = "txt_chn[4]",
    [12] = "254.00",
    [13] = "-----------------------------------------",
    [14] = "txt_chn[5]",
    [15] = "250.00",
    [16] = "-----------------------------------------",
    [17] = "txt_chn[6]",
    [18] = "270.00",
    [19] = "-----------------------------------------",
    [20] = "txt_chn[7]",
    [21] = "257.00",
    [22] = "-----------------------------------------",
    [23] = "txt_chn[8]",
    [24] = "258.00",
    [25] = "-----------------------------------------",
    [26] = "txt_chn[9]",
    [27] = "262.00",
    [28] = "-----------------------------------------",
    [29] = "txt_chn[10]",
    [30] = "259.00",
    [31] = "-----------------------------------------",
    [32] = "txt_chn[11]",
    [33] = "268.00",
    [34] = "-----------------------------------------",
    [35] = "txt_chn[12]",
    [36] = "269.00",
    [37] = "-----------------------------------------",
    [38] = "txt_chn[13]",
    [39] = "260.00",
    [40] = "-----------------------------------------",
    [41] = "txt_chn[14]",
    [42] = "263.00",
    [43] = "-----------------------------------------",
    [44] = "txt_chn[15]",
    [45] = "261.00",
    [46] = "-----------------------------------------",
    [47] = "txt_chn[16]",
    [48] = "267.00",
    [49] = "-----------------------------------------",
    [50] = "txt_chn[17]",
    [51] = "251.00",
    [52] = "-----------------------------------------",
    [53] = "txt_chn[18]",
    [54] = "253.00",
    [55] = "-----------------------------------------",
    [56] = "txt_chn[19]",
    [57] = "266.00",
    [58] = "-----------------------------------------",
    [59] = "txt_chn[20]",
    [60] = "252.00",
}
]]

	local UHF_ch1 = a4_list_indication_4[3]
	local UHF_ch2 = a4_list_indication_4[6]
	local UHF_ch3 = a4_list_indication_4[9]
	local UHF_ch4 = a4_list_indication_4[12]
	local UHF_ch5 = a4_list_indication_4[15]
	local UHF_ch6 = a4_list_indication_4[18]
	local UHF_ch7 = a4_list_indication_4[21]
	local UHF_ch8 = a4_list_indication_4[24]
	local UHF_ch9 = a4_list_indication_4[27]
	local UHF_ch10 = a4_list_indication_4[30]
	local UHF_ch11 = a4_list_indication_4[33]
	local UHF_ch12 = a4_list_indication_4[36]
	local UHF_ch13 = a4_list_indication_4[39]
	local UHF_ch14 = a4_list_indication_4[42]
	local UHF_ch15 = a4_list_indication_4[45]
	local UHF_ch16 = a4_list_indication_4[48]
	local UHF_ch17 = a4_list_indication_4[51]
	local UHF_ch18 = a4_list_indication_4[54]
	local UHF_ch19 = a4_list_indication_4[57]
	local UHF_ch20 = a4_list_indication_4[60]
												
	ExportScript.Tools.SendData(2000, "U1 " .. UHF_ch1 
									.. "\nU2 " .. UHF_ch2 
									.. "\nU3 " .. UHF_ch3 
									.. "\nU4 " .. UHF_ch4)

	ExportScript.Tools.SendData(2001, "U5 " .. UHF_ch5 
									.. "\nU6 " .. UHF_ch6
									.. "\nU7 " .. UHF_ch7
									.. "\nU8 " .. UHF_ch8)

	ExportScript.Tools.SendData(2002, "U9 " .. UHF_ch9
									.. "\nU10 " .. UHF_ch10
									.. "\nU11 " .. UHF_ch11
									.. "\nU12 " .. UHF_ch12)

	ExportScript.Tools.SendData(2003, "U13 " .. UHF_ch13
									.. "\nU14 " .. UHF_ch14
									.. "\nU15 " .. UHF_ch15
									.. "\nU16 " .. UHF_ch16)

	ExportScript.Tools.SendData(2004, "U17 " .. UHF_ch17
									.. "\nU18 " .. UHF_ch18
									.. "\nU19 " .. UHF_ch19
									.. "\nU12 " .. UHF_ch20)									

end
--[[ notes

n = 1
return list_indication(n)


list_indication(1)
-----------------------------------------\
debug_screen\
\
children are {\
-----------------------------------------\
ias_{D093CE1E-4FB5-4690-B08C-20DD67DEAED3}\
  0KIAS\
-----------------------------------------\
tas_{10829118-99FD-47e4-A037-1D4B1BECA9F5}\
  0KTAS\
-----------------------------------------\
{32CC9A49-7C9D-44c0-9584-C132978873BD}\
i 0.0\
-----------------------------------------\
{1657C7D5-D301-4684-8ABF-2E9E86698559}\
M 0.00\
-----------------------------------------\
{8BAAF7F5-011D-4c7c-89EE-AFFDDCB48965}\
G 0.0\
-----------------------------------------\
{39144282-FEA3-4162-9B00-C5711F7469F0}\
TH:0.0\
-----------------------------------------\
{3DA17F46-CF15-4122-9856-9DC62D282A97}\
(null)\
-----------------------------------------\
{7D0B208A-3549-4bf4-AB7C-55E425D5B18A}\
(null)\
-----------------------------------------\
{E3785616-B6C1-45a2-88E5-ED3A97B33633}\
(null)\
-----------------------------------------\
{3E04EAD0-9E85-4324-9B75-29566B80B5BB}\
VV:  0\
-----------------------------------------\
{78E1D8C3-F18B-4e47-A6B0-072FE74F9CE2}\
RPM:0.0%\
}\


list_indication(4)
-----------------------------------------\
txt_chn[1]\
255.50\
-----------------------------------------\
txt_chn[2]\
237.30\
-----------------------------------------\
txt_chn[3]\
251.00\
-----------------------------------------\
txt_chn[4]\
254.00\
-----------------------------------------\
txt_chn[5]\
250.00\
-----------------------------------------\
txt_chn[6]\
270.00\
-----------------------------------------\
txt_chn[7]\
257.00\
-----------------------------------------\
txt_chn[8]\
258.00\
-----------------------------------------\
txt_chn[9]\
262.00\
-----------------------------------------\
txt_chn[10]\
259.00\
-----------------------------------------\
txt_chn[11]\
268.00\
-----------------------------------------\
txt_chn[12]\
269.00\
-----------------------------------------\
txt_chn[13]\
260.00\
-----------------------------------------\
txt_chn[14]\
263.00\
-----------------------------------------\
txt_chn[15]\
261.00\
-----------------------------------------\
txt_chn[16]\
267.00\
-----------------------------------------\
txt_chn[17]\
251.00\
-----------------------------------------\
txt_chn[18]\
253.00\
-----------------------------------------\
txt_chn[19]\
266.00\
-----------------------------------------\
txt_chn[20]\
252.00\

]]

function ExportScript.Tacan_radio(mainPanelDevice)
	local TACAN_Channel_10s = Round(mainPanelDevice:get_argument_value(901)*20,0)
	local TACAN_Channel_1s = Round(mainPanelDevice:get_argument_value(902)*10,0)
	ExportScript.Tools.SendData(2022, "TACAN\n" .. TACAN_Channel_10s .. TACAN_Channel_1s)
end


function ExportScript.AFCSpanel(mainPanelDevice)
	--[[required stuff
[167] = "%0.1f", --AFCS_HDG_100s
[168] = "%0.1f", --AFCS_HDG_10s
[169] = "%0.1f", --AFCS_HDG_1s
]]
	local AFCS_HDG_100s = Round(mainPanelDevice:get_argument_value(167)*10,0)
	local AFCS_HDG_10s = Round(mainPanelDevice:get_argument_value(168)*10,0)
	local AFCS_HDG_1s = Round(mainPanelDevice:get_argument_value(169)*10,0)
	ExportScript.Tools.SendData(2023, "AFCS\n" .. AFCS_HDG_100s .. AFCS_HDG_10s ..AFCS_HDG_1s .. "°")

end

function ExportScript.FlightControls(mainPanelDevice)
	local flap_indicator = mainPanelDevice:get_argument_value(23)

	if flap_indicator < 0.27 then
		flap_indicator = "UP"
	elseif flap_indicator < 0.67 then
		flap_indicator = "HALF"
	else
		flap_indicator = "DOWN"
	end
	ExportScript.Tools.SendData(2024, "FLAPS\n" .. flap_indicator)
end

function ExportScript.FlightInstruments(mainPanelDevice)
	-- AOA
	local AngleOfAttack = Round(mainPanelDevice:get_argument_value(840)*30,0)
	ExportScript.Tools.SendData(2025, "AOA\n" .. AngleOfAttack)

	-- Vertical Velocity
	-- TODO: This is a not a linear function. You will have to find the formula. Using a placeholder
	local verticalVelocity = Round(mainPanelDevice:get_argument_value(800)*30,0)
	local multiplier_verticalVelocity = 6000
	ExportScript.Tools.SendData(2026, "VV\n" .. verticalVelocity*multiplier_verticalVelocity)

	--[[ altimeter stuff. where is the radar altimeter indication on the aircraft?
	[600] = "%0.4f", --RadarAltimeter
	[820] = "%0.4f", --Altimeter Needle
	[821] = "%0.4f", --Altimeter10K
	[822] = "%0.4f", --Altimeter1K
	[823] = "%0.4f", --Altimeter100s
	[602] = "%0.4f",	--AN/APN-141 Radar Altimeter	{0.5,0,1}
	[603] = "%0.4f",	--AN/APN-141 Radar Altimeter	{1,-1,0}
	]]


	local AltimeterNeedle = Round(mainPanelDevice:get_argument_value(820)*1000,0)
	local Altimeter10K = math.floor(mainPanelDevice:get_argument_value(821)*10)
	local Altimeter1K = math.floor(mainPanelDevice:get_argument_value(822)*10)
	local Altimeter100s = Round(mainPanelDevice:get_argument_value(823)*100,0)

	AltimeterNeedle = AddZeros3(AltimeterNeedle)

	ExportScript.Tools.SendData(2027, AltimeterNeedle)
	ExportScript.Tools.SendData(2028, Altimeter10K)
	ExportScript.Tools.SendData(2029, Altimeter1K)
	ExportScript.Tools.SendData(2030, Altimeter100s)

	local totalAltimeter = Altimeter10K .. Altimeter1K .. AltimeterNeedle

	--TODO: format the altitude readout so that it looks normal w/ commas and no leading 0s
	ExportScript.Tools.SendData(2031, totalAltimeter)
	--TODO: Have the radar altimeter active, but the baro kicks in when the radalt kicks out
	--TODO: airspeed
	--TODO: liquid oxygen
	--TODO: fuel flow
	--TODO:  fuel quantity
	--TODO: percent rpm
	--TODO: exh temp
	--TODO: P.R guage and number
	--TODO: oil psi
	--TODO: Clock
	--TODO: G meter
	--TODO: Countermeasure stuff
	--TODO: full weapons panel
	--TODO: warning lights
	--TODO: buttons and switches

end

--TODO: make a LAWS indication that popts up on the kts display]]

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


function Round(num, numDecimalPlaces) --http://lua-users.org/wiki/SimpleRound
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end


function Format_int(number) --https://stackoverflow.com/questions/10989788/format-integer-in-lua

  local i, j, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')

  -- reverse the int-string and append a comma to all blocks of 3 digits
  int = int:reverse():gsub("(%d%d%d)", "%1,")

  -- reverse the int-string back remove an optional comma and put the 
  -- optional minus and fractional part back
  return minus .. int:reverse():gsub("^,", "") .. fraction
end


function Trim(s) --http://lua-users.org/wiki/CommonFunctions
  -- from PiL2 20.4
  return (s:gsub("^%s*(.-)%s*$", "%1"))
end


function AddZeros3(number)
	number = string.format("%.1d" , number)
	if #number == 2 then
		number = "0" .. number
	elseif #number == 1 then
		number = "00" .. number
	end
	return number
end


-- inspired by https://github.com/ciribob/DCS-SimpleRadioStandalone/blob/a3021661a084e8dca285ffad7cf640b3c1dbccb2/Scripts/DCS-SRS/Scripts/DCS-SRS-Export.lua#L4195
function GetCockpitParam()
	local ListIindicator = list_cockpit_params() --list_indication(IndicatorID)
	local TmpReturn = {}
	--if ListIindicator == "" then
    --    return nil
    --end 
    local ListindicatorMatch = ListIindicator:gmatch("([^\n]+):([^\n]+)")
  
    while true do
        local Key, Value = ListindicatorMatch()
        if not Key then
            break
        end
        TmpReturn[Key] = Value
    end
	return TmpReturn
end

-- split reference
function ExportScript.Tools.split(stringvalue, delimiter)
    local result = {};
    for match in (stringvalue..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end