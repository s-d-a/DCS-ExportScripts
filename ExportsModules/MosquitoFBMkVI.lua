-- Module Name Export

ExportScript.FoundDCSModule = true
ExportScript.Version.MosquitoFBMkVI = "1.2.1"

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
	
	--[5] = "%.4f", --unused
	[6] = "%.4f", --Trim needle, -1,0,1
	[7] = "%.4f", --Beam volume approach switch, 0,1
	[10] = "%.4f", --Left side flat knob, 0,1
	[11] = "%.4f", --Left side turney thing, 0,1
	[12] = "%.4f", --Left side turney thing 2, 0,1
	[13] = "%.4f", --unknown
	[29] = "%.4f", --Nautical Compass Fwd Aft axis, -1,0,1
	[30] = "%.4f", --Nautical Compass Left Right axis, -1,0,1
	[31] = "%.4f", --Nautical Compass Rotate axis, 0,1
	[37] = "%.4f", --Channel A Radio indicator, 0,1
	[38] = "%.4f", --Channel B Radio indicator, 0,1
	[39] = "%.4f", --Channel C Radio indicator, 0,1
	[40] = "%.4f", --Channel D Radio indicator, 0,1
	[41] = "%.4f", --Receive/transmit indicator 0,1
	[45] = "%.4f", --Boost cut-out Fwd Aft, 0,1
	[46] = "%.4f", --Boost cut-out rotate, 0,1
	[47] = "%.4f", --Compass needle 1, 0,1
	[48] = "%.4f", --Compass needle 2, 0,1
	[49] = "%.4f", --unknown
	[50] = "%.4f", --Engine Left RPM 1000s, 0,1
	[51] = "%.4f", --Engine Left RPM 100s, 0,1
	[52] = "%.4f", --Engine Right RPM 1000s, 0,1
	[53] = "%.4f", --Engine Right RPM 100s, 0,1
	[54] = "%.4f", --Engine Left Boost, 0,1
	[55] = "%.4f", --Engine Right Boost, 0,1
	[56] = "%.4f", --Engine Left Oil Temp, 0,1
	[57] = "%.4f", --Engine Right Oil Temp, 0,1
	[58] = "%.4f", --Engine Left Oil Pressure, 0,1
	[59] = "%.4f", --Engine Right Oil Pressure, 0,1
	[60] = "%.4f", --Engine Left Rad Temp, 0,1
	[61] = "%.4f", --Engine Right Rad Temp, 0,1
	[62] = "%.4f", --Landing Light Rho Left, 0,1
	[63] = "%.4f", --Landing Light Rho Right, 0,1
	[64] = "%.4f", --Airspeed Needle, 0,1
	[65] = "%.4f", --ADI Roll, -1,0,1
	[66] = "%.4f", --ADI Pitch, -1,0,1
	[67] = "%.4f", --Vertical Speed Indicator, -1,0,1
	[68] = "%.4f", --Altimeter Needle Medium, 0,1
	[69] = "%.4f", --Altimeter Needle Large, 0,1
	[70] = "%.4f", --Altimeter Needle Small, 0,1
	[71] = "%.4f", --Altimeter Baro Kollsman window, 0, 1
	[73] = "%.4f", --Direction Indicator, 0,1
	[75] = "%.4f", --Slide Slip Indicator, -1,0,1
	[76] = "%.4f", --Turn Indicator, -1,0,1
	[77] = "%.4f", --Gear under carrage up light left, 0,1
	[78] = "%.4f", --Gear under carrage down light left, 0,1
	[79] = "%.4f", --Gear under carrage up light right, 0,1
	[80] = "%.4f", --Gear under carrage down light right, 0,1
	[81] = "%.4f", --Flap position indicator, 0,1 
	[82] = "%.4f", --Cockpit altitude indicator, 0,1
	[83] = "%.4f", --Oxygen supply available indicator, 0,1
	[84] = "%.4f", --The knob between the two above???
	[85] = "%.4f", --Brake supply indicator, 0,1
	[86] = "%.4f", --Left Brake supply indicator, 0,1
	[87] = "%.4f", --Right Brake supply indicator, 0,1
	[88] = "%.4f", --Beacon tracking needle left side, -1,1
	[89] = "%.4f", --Beacon tracking needle right side, -1,1
	[90] = "%.4f", --Cloudy knob, 0,1
	[91] = "%.4f", --Cloudy switch, 0,1
	[92] = "%.4f", --Fuel Inner Tanks Left, 0,1 
	[93] = "%.4f", --Fuel Inner Tanks Right, 0,1
	[94] = "%.4f", --Fuel Center Tanks Left, 0,1
	[95] = "%.4f", --Fuel Center Tanks Right, 0,1
	[96] = "%.4f", --Fuel Jettison Tanks Left, 0,1
	[97] = "%.4f", --Fuel Jettison Tanks Right, 0,1
	[98] = "%.4f", --Clock Hand hours, 0,1
	[99] = "%.4f", --Clock Hand minutes, 0,1
	[100] = "%.4f", --Clock Hand seconds, 0,1
	[101] = "%.4f", --Clock start/stop press, 0,1
	[102] = "%.4f", --Clock start/stop twist, 0,1
	[103] = "%.4f", --Voltimeter, 0,1
	[104] = "%.4f", --unknown
	[105] = "%.4f", --unknown
	[106] = "%.4f", --unknown
	--[109] = "%.4f", --unused
	[110] = "%.4f", --Rudder trim hand knob needle, -1,0,1 
	--[111] = "%.4f", --unused
	[115] = "%.4f", --unknown
	[116] = "%.4f", --unknown
	[118] = "%.4f", --unknown
	[119] = "%.4f", --unknown
	[122] = "%.4f", --unknown
	[123] = "%.4f", --unknown
	[137] = "%.4f", --unknown
	[138] = "%.4f", --unknown
	--[139] = "%.4f", --unused
	--[140] = "%.4f", --unused
	--[141] = "%.4f", --unused
	--[142] = "%.4f", --unused
	[146] = "%.4f", --unknown
	[147] = "%.4f", --unknown
	[154] = "%.4f", --unknown
	[155] = "%.4f", --unknown
	[156] = "%.4f", --unknown
	[177] = "%.4f", --unknown
	--[179] = "%.4f", --unused
	--[180] = "%.4f", --unused
	--[181] = "%.4f", --unused
	--[182] = "%.4f", --unused
	--[183] = "%.4f", --unused
	--[184] = "%.4f", --unused
	--[185] = "%.4f", --unused
	--[186] = "%.4f", --unused
	[187] = "%.4f", --unknown
	--[248] = "%.4f", --unused
	[201] = "%.4f", --unknown
	[205] = "%.4f", --unknown
	[206] = "%.4f", --unknown
	[207] = "%.4f", --unknown
	[208] = "%.4f", --unknown
	[209] = "%.4f", --unknown
	[210] = "%.4f", --unknown
	[211] = "%.4f", --unknown
	[212] = "%.4f", --unknown
	[213] = "%.4f", --unknown
	[214] = "%.4f", --unknown
	[215] = "%.4f", --unknown
	[216] = "%.4f", --unknown
	[217] = "%.4f", --unknown
	[218] = "%.4f", --unknown
	[219] = "%.4f", --unknown
	[220] = "%.4f", --unknown
	[221] = "%.4f", --unknown
	[222] = "%.4f", --unknown
	[223] = "%.4f", --unknown
	[224] = "%.4f", --unknown
	[225] = "%.4f", --unknown
	[226] = "%.4f", --unknown
	[227] = "%.4f", --unknown
	[228] = "%.4f", --unknown
	[229] = "%.4f", --unknown
	[230] = "%.4f", --unknown
	[231] = "%.4f", --unknown
	[232] = "%.4f", --unknown
	[233] = "%.4f", --unknown
	[234] = "%.4f", --unknown
	[235] = "%.4f", --unknown
	[236] = "%.4f", --unknown
	[237] = "%.4f", --unknown
	[238] = "%.4f", --unknown
	[239] = "%.4f", --unknown
	[240] = "%.4f", --unknown
	[241] = "%.4f", --unknown
	[242] = "%.4f", --unknown
	[243] = "%.4f", --unknown
	[247] = "%.4f", --unknown
	[249] = "%.4f", --unknown
	[250] = "%.4f", --unknown
	--[251] = "%.4f", --unused
	[252] = "%.4f", --unknown
	--[253] = "%.4f", --unused
	[255] = "%.4f", --unknown
	[258] = "%.4f", --unknown
	[259] = "%.4f", --unknown
	[260] = "%.4f", --unknown
	[261] = "%.4f", --unknown
	--[262] = "%.4f", --unused
	--[263] = "%.4f", --unused
	--[264] = "%.4f", --unused
	--[265] = "%.4f", --unused
	--[266] = "%.4f", --unused
	--[267] = "%.4f", --unused
	--[268] = "%.4f", --unused
	[269] = "%.4f", --unknown
	[270] = "%.4f", --unknown
	[271] = "%.4f", --unknown
	[272] = "%.4f", --unknown
	[273] = "%.4f", --unknown
	[274] = "%.4f", --unknown
	[275] = "%.4f", --unknown
	[276] = "%.4f", --unknown
	[277] = "%.4f", --unknown
	[278] = "%.4f", --unknown
	--[279] = "%.4f", --unused
	--[280] = "%.4f", --unused
	[281] = "%.4f", --unknown
	[283] = "%.4f", --unknown
	--[285] = "%.4f", --unused
	--[286] = "%.4f", --unused
	[287] = "%.4f", --unknown
	--[289] = "%.4f", --unused
	[290] = "%.4f", --unknown
	--[291] = "%.4f", --unused
	--[292] = "%.4f", --unused
	[295] = "%.4f", --unknown
	[296] = "%.4f", --unknown
	[297] = "%.4f", --unknown
	--[298] = "%.4f", --unused
	[299] = "%.4f", --unknown
	[300] = "%.4f", --unknown
	[301] = "%.4f", --unknown
	[305] = "%.4f", --unknown
	[306] = "%.4f", --unknown
	[308] = "%.4f", --unknown
	[309] = "%.4f", --unknown
	--[310] = "%.4f", --unused
	--[311] = "%.4f", --unused
	[313] = "%.4f", --unknown
	[314] = "%.4f", --unknown
	--[315] = "%.4f", --unused
	--[316] = "%.4f", --unused
	--[317] = "%.4f", --unused
	--[318] = "%.4f", --unused
	--[319] = "%.4f", --unused
	--[320] = "%.4f", --unused
	--[321] = "%.4f", --unused
	--[322] = "%.4f", --unused
	[325] = "%.4f", --unknown
	[326] = "%.4f", --unknown
	--[327] = "%.4f", --unused
	--[328] = "%.4f", --unused
	--[329] = "%.4f", --unused
	--[330] = "%.4f", --unused
	[331] = "%.4f", --unknown
	--[332] = "%.4f", --unused
	[334] = "%.4f", --unknown
	--[335] = "%.4f", --unused
	[336] = "%.4f", --unknown
	[337] = "%.4f", --unknown
	[338] = "%.4f", --unknown
	[339] = "%.4f", --unknown
	[340] = "%.4f", --unknown
	[341] = "%.4f", --unknown
	--[342] = "%.4f", --unused
	[343] = "%.4f", --unknown
	[344] = "%.4f", --unknown
	[345] = "%.4f", --unknown
	[346] = "%.4f", --unknown
	[347] = "%.4f", --unknown
	[348] = "%.4f", --unknown
	[349] = "%.4f", --unknown
	[350] = "%.4f", --unknown
	[351] = "%.4f", --unknown
	--[352] = "%.4f", --unused
	--[353] = "%.4f", --unused
	--[354] = "%.4f", --unused
	--[355] = "%.4f", --unused
	--[356] = "%.4f", --unused
	--[357] = "%.4f", --unused
	--[358] = "%.4f", --unused
	--[359] = "%.4f", --unused
	--[360] = "%.4f", --unused
	--[361] = "%.4f", --unused
	--[362] = "%.4f", --unused
	[365] = "%.4f", --unknown
	--[366] = "%.4f", --unused
	--[367] = "%.4f", --unused
	--[368] = "%.4f", --unused
	--[369] = "%.4f", --unused
	[370] = "%.4f", --unknown
	[371] = "%.4f", --unknown
	--[372] = "%.4f", --unused
	[373] = "%.4f", --unknown
	--[374] = "%.4f", --unused
	[375] = "%.4f", --unknown
	[376] = "%.4f", --unknown
	[377] = "%.4f", --unknown
	[378] = "%.4f", --unknown
	[379] = "%.4f", --unknown
	[380] = "%.4f", --unknown
	[381] = "%.4f", --unknown
	[382] = "%.4f", --unknown
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	
	-- Aerial Winch
	[202] = "%.1f", --AERIAL_BRAKE,TUMB,202,-1,0,1,Cockpit.Generic.aerial_winch_brake_lever
	[356] = "%.1f", --AERIAL_WINCH,BTN,356,1,0,1,Cockpit.Generic.aerial_winch_rotary_handle
	[357] = "%.1f", --AERIAL_REEL,BTN,357,1,0,1,Cockpit.Generic.aerial_winch_reel_lock
	
	--Controls
	[248] = "%.1f", --BRAKE_LEVER,LEV,248,0,0,1,Cockpit.Yak52.wheel_brakes
    [291] = "%.1f", --BRAKE_CATCH,BTN,291,1,0,1,Cockpit.Yak52.wheel_brakes_lock
    [28] = "%.1f", --COMPASS_RING,LEV,28,0,0,1,Cockpit.SpitfireLFMkIX.compass
	[72] = "%.1f", --ALTIMETER,LEV,72,1,0,1,Cockpit.SpitfireLFMkIX.altimeter
	[74] = "%.1f", --DIRECTIONAL_GYRO,LEV,74,1,0,1,Cockpit.SpitfireLFMkIX.di
	[279] = "%.1f", --TRIM_WHEEL,BTN,279,-1,-1,0,Elevator Trim
	[304] = "%.1f", --UC_BLIND,LEV,304,0,0,1,Cockpit.SpitfireLFMkIX.uc_blind
	[256] = "%.1f", --ARMREST_LEFT,TUMB,256,-1,0,1,Cockpit.Generic.arm_rest
	[251] = "%.1f", --WINDOW_LOCK_LEFT,TUMB,251,-1,0,1,Cockpit.Mosquito.canopy_left_window_lock
	[280] = "%.1f", --AILERON_TRIM,BTN,280,-1,-1,0,Aileron Trim
	[111] = "%.1f", --RUDDER_TRIM,BTN,111,-1,-1,0,Rudder Trim
	[293] = "%.1f", --OXY_VALVE,TUMB,293,-1,0,1,Cockpit.Mosquito.oxygen_high_presure_valve
	[203] = "%.1f", --CABIN_HEATER_LV,TUMB,203,-1,0,1,Cockpit.Mosquito.cabin_heater_lever
	[204] = "%.1f", --GUN_HEATER_LV,TUMB,204,-1,0,1,Cockpit.Mosquito.gun_heater_lever
	[257] = "%.1f", --ARMREST_RIGHT,TUMB,257,-1,0,1,Cockpit.Generic.arm_rest
	[253] = "%.1f", --WINDOW_LOCK_RIGHT,TUMB,253,-1,0,1,Cockpit.Mosquito.canopy_right_window_lock
	[282] = "%.1f", --LR_PUMP_LAMP_COVER,TUMB,282,-1,0,1,Cockpit.Mosquito.lr_fuel_pump_light_cover
	[284] = "%.1f", --BOMB_DOOR_LAMP_COVER,TUMB,284,-1,0,1,Cockpit.Mosquito.bomb_doors_light_cover
	[333] = "%.1f", --HYDR_SELECTOR,TUMB,333,-1,0,1,Cockpit.Mosquito.emergency_knob
	[312] = "%.1f", --ARMOR_HEADREST,BTN,312,1,0,1,Cockpit.Mosquito.armor_hadrest_lock
	[254] = "%.1f", --DOOR_LOCK,BTN,254,1,0,1,Cockpit.Mosquito.door_handle
	[324] = "%.1f", --DOOR_JETTISON,BTN,324,1,0,1,Cockpit.Mosquito.door_jettison_handle
	
	--Engine Controls	
	[125] = "%.1f", --PORT_1,TUMB,125,-1,0,1,Cockpit.Generic.magneto_port0
	[125] = "%.1f", --PORT_1,TUMB,125,1,0,1,Cockpit.Generic.magneto_port0
	[126] = "%.1f", --PORT_2,TUMB,126,-1,0,1,Cockpit.Generic.magneto_port1
	[126] = "%.1f", --PORT_2,TUMB,126,1,0,1,Cockpit.Generic.magneto_port1
	[127] = "%.1f", --STBD_1,TUMB,127,-1,0,1,Cockpit.Generic.magneto_stbd0
	[127] = "%.1f", --STBD_1,TUMB,127,1,0,1,Cockpit.Generic.magneto_stbd0
	[128] = "%.1f", --STBD_2,TUMB,128,-1,0,1,Cockpit.Generic.magneto_stbd1
	[128] = "%.1f", --STBD_2,TUMB,128,1,0,1,Cockpit.Generic.magneto_stbd1
	[124] = "%.1f", --MASTER_SWITCH,TUMB,124,-1,0,1,Cockpit.Mosquito.master_switch
	[124] = "%.1f", --MASTER_SWITCH,TUMB,124,1,0,1,Cockpit.Mosquito.master_switch
	[20] = "%.1f", --THROTTLE_CONTROLE_L_TRIGER,LEV,20,1,0,1,Throttle
	[21] = "%.1f", --THROTTLE_CONTROL_R_TRIGER,LEV,21,1,0,1,Throttle
	[18] = "%.1f", --THROTTLE_TRANSIT_L,NULL,18,-0,0,1,Throttle
	[19] = "%.1f", --THROTTLE_TRANSIT_R,NULL,19,-0,0,1,Throttle
	[288] = "%.1f", --THROTTLE_CONTROLE_L,NULL,288,-0,0,1,Throttle
	[289] = "%.1f", --THROTTLE_CONTROLE_R,NULL,289,-0,0,1,Throttle
	[25] = "%.1f", --FRICTION_ADJUSTING_THROTTLE,LEV,25,0,0,1,Cockpit.Generic.friction
	[24] = "%.1f", --FRICTION_ADJUSTING_PROPELLER,LEV,24,0,0,1,Cockpit.Generic.prop_friction
	[22] = "%.1f", --PROPELLER_CONTROL_L,NULL,22,-0,0,1,Cockpit.SpitfireLFMkIX.pitch
	[23] = "%.1f", --PROPELLER_CONTROL_R,NULL,23,-0,0,1,Cockpit.SpitfireLFMkIX.pitch
	[292] = "%.1f", --BOOST_ CUT-OUT,BTN,292,1,0,1,Cockpit.Mosquito.boost_cutoff
	[292] = "%.1f", --BOOST_ CUT-OUT,BTN,292,1,0,1,Cockpit.Mosquito.boost_cutoff
	[197] = "%.1f", --OIL_DILUTION_LEFT,BTN,197,1,0,1,Cockpit.Mosquito.port_oil_dilution_button
	[197] = "%.1f", --OIL_DILUTION_LEFT,BTN,197,1,0,1,Cockpit.Mosquito.port_oil_dilution_button
	[198] = "%.1f", --OIL_DILUTION_RIGHT,BTN,198,1,0,1,Cockpit.Mosquito.stbd_oil_dilution_button
	[198] = "%.1f", --OIL_DILUTION_RIGHT,BTN,198,1,0,1,Cockpit.Mosquito.stbd_oil_dilution_button
	[129] = "%.1f", --STARTER_COVER_LEFT,TUMB,129,-1,0,1,Cockpit.Mosquito.port_starter_switch_cover
	[129] = "%.1f", --STARTER_COVER_LEFT,TUMB,129,1,0,1,Cockpit.Mosquito.port_starter_switch_cover
	[131] = "%.1f", --STARTER_LEFT,BTN,131,1,0,1,Cockpit.Mosquito.port_starter_switch
	[131] = "%.1f", --STARTER_LEFT,BTN,131,1,0,1,Cockpit.Mosquito.port_starter_switch
	[130] = "%.1f", --STARTER_COVER_RIGHT,TUMB,130,-1,0,1,Cockpit.Mosquito.stbd_starter_switch_cover
	[130] = "%.1f", --STARTER_COVER_RIGHT,TUMB,130,1,0,1,Cockpit.Mosquito.stbd_starter_switch_cover
	[132] = "%.1f", --STARTER_RIGHT,BTN,132,1,0,1,Cockpit.Mosquito.stbd_starter_switch
	[132] = "%.1f", --STARTER_RIGHT,BTN,132,1,0,1,Cockpit.Mosquito.stbd_starter_switch
	[133] = "%.1f", --BOOSTER_COVER_LEFT,TUMB,133,-1,0,1,Cockpit.Mosquito.port_booster_switch_cover
	[133] = "%.1f", --BOOSTER_COVER_LEFT,TUMB,133,1,0,1,Cockpit.Mosquito.port_booster_switch_cover
	[135] = "%.1f", --BOOSTER_LEFT,BTN,135,1,0,1,Cockpit.Mosquito.port_booster_switch
	[135] = "%.1f", --BOOSTER_LEFT,BTN,135,1,0,1,Cockpit.Mosquito.port_booster_switch
	[134] = "%.1f", --BOOSTER_COVER_RIGHT,TUMB,134,-1,0,1,Cockpit.Mosquito.stbd_booster_switch_cover
	[134] = "%.1f", --BOOSTER_COVER_RIGHT,TUMB,134,1,0,1,Cockpit.Mosquito.stbd_booster_switch_cover
	[136] = "%.1f", --BOOSTER_RIGHT,BTN,136,1,0,1,Cockpit.Mosquito.stbd_booster_switch
	[136] = "%.1f", --BOOSTER_RIGHT,BTN,136,1,0,1,Cockpit.Mosquito.stbd_booster_switch
	[192] = "%.3f", --CUT-OUT_PORT,TUMB,192,-1,0,1,Cockpit.Mosquito.port_engine_cutout_handle
	[192] = "%.1f", --CUT-OUT_PORT,TUMB,192,1,0,1,Cockpit.Mosquito.port_engine_cutout_handle
	[193] = "%.1f", --FUEL_COCKS_LEFT,TUMB,193,-1,-1,1,Cockpit.Mosquito.port_fuel_cock
	[193] = "%.1f", --FUEL_COCKS_LEFT,TUMB,193,1,-1,1,Cockpit.Mosquito.port_fuel_cock
	[194] = "%.1f", --FUEL_COCKS_RIGHT,TUMB,194,-1,-1,1,Cockpit.Mosquito.stbd_fuel_cock
	[194] = "%.1f", --FUEL_COCKS_RIGHT,TUMB,194,1,-1,1,Cockpit.Mosquito.stbd_fuel_cock
	[195] = "%.1f", --TRANSFER_COCK,TUMB,195,-1,0,1,Cockpit.Mosquito.transfer_cock
	[195] = "%.1f", --TRANSFER_COCK,TUMB,195,1,0,1,Cockpit.Mosquito.transfer_cock
	[354] = "%.1f", --AIRSCREW_LH,BTN,354,1,0,1,Cockpit.Mosquito.port_airscrew_feathering_switch
	[355] = "%.1f", --AIRSCREW_RH,BTN,355,1,0,1,Cockpit.Mosquito.stbd_airscrew_feathering_switch
	[27] = "%.1f", --MIXTURE,TUMB,27,-1,0,1,Cockpit.Generic.mix
	[196] = "%.1f", --TANK_PRS,TUMB,196,1,0,1,Cockpit.SpitfireLFMkIX.tank_pressurizer
	[200] = "%.1f", --OIL_SUPPLY_PORT,TUMB,200,-1,0,1,Cockpit.Mosquito.port_aux_oil_lever
	[199] = "%.1f", --OIL_SUPPLY_STBD,TUMB,199,1,0,1,Cockpit.Mosquito.stbd_aux_oil_lever
	[191] = "%.1f", --CUT-OUT_STBD,TUMB,191,-1,0,1,Cockpit.Mosquito.stbd_engine_cutout_handle
	
	--Switchboard
	[1] = "%.1f", --3001,REPEATER_COMPASS_SW1,TUMB,1,-1,0,1,Cockpit.Mosquito.r_i_compass_switch
	[2] = "%.1f", --3002,REPEATER_COMPASS_SW2,TUMB,2,1,0,1,Cockpit.Mosquito.r_i_compass_switch
	[3] = "%.1f", --3004,BA_SW,TUMB,3,-1,0,1,Cockpit.Mosquito.beam_approach_switch
	[112] = "%.1f", --RAD_FLAP_LH,TUMB,112,-1,0,1,Cockpit.Mosquito.lh_rad_flap_switch
	[113] = "%.1f", --RAD_FLAP_RH,TUMB,113,1,0,1,Cockpit.Mosquito.rh_rad_flap_switch
	[114] = "%.1f", --AIR_FILTER,TUMB,114,-1,0,1,Cockpit.Mosquito.tropical_air_filter_switch
	[157] = "%.1f", --MORSE_KEY,BTN,157,1,0,1,Cockpit.SpitfireLFMkIX.morse_key
	[158] = "%.1f", --DOWNWARD_LEVER,TUMB,158,-0.5,0,1,Cockpit.SpitfireLFMkIX.id_lamp_down_mode
	[159] = "%.1f", --UPWARD_LEVER,TUMB,159,0.5,0,1,Cockpit.SpitfireLFMkIX.id_lamp_up_mode
	[160] = "%.1f", --DOWN_IDENT_LIGHTS_SW,TUMB,160,-0.5,0,1,Cockpit.Mosquito.id_lamp_down_colour_switch
	[161] = "%.1f", --CAMERA_GUN_SW,TUMB,161,1,0,1,Cockpit.Mosquito.camera_gun_switch
	[162] = "%.1f", --NAV_LIGHTS_SW,TUMB,162,1,0,1,Cockpit.Generic.nav_lights_switch
	[163] = "%.1f", --UV_LIGHT_SW,TUMB,163,-1,0,1,Cockpit.Generic.uv_lighting_switch
	[164] = "%.1f", --3084,PITOT_HEAD_SW,TUMB,164,1,0,1,Cockpit.Generic.pitot_heat_switch
	[165] = "%.1f", --3086,LR_FUEL_PUMP_SW,TUMB,165,-1,0,1,Cockpit.Mosquito.lr_fuel_pump_switch
	[168] = "%.1f", --3088,IFF_SW,TUMB,168,1,0,1,Cockpit.Mosquito.iff_radio_switch
	[17] = "%.1f", --3092,REAR_ILLUM,LEV,17,0,0,1,Cockpit.Mosquito.loop_antenna_flood_light_dimmer
	[303] = "%.1f", --3095,CHART_ILLUM,LEV,303,0,0,1,Cockpit.Mosquito.chart_flood_light_dimmer
	[302] = "%.1f", --3101,DOME_ILLUM,LEV,302,0,0,1,Cockpit.Mosquito.roof_dome_light_dimmer
	[188] = "%.1f", --3104,IFF966_CHAN,TUMB,188,-0.2,0,1,Cockpit.Generic.BC966IFF.channel_selector
	[363] = "%.1f", --3107,IFF966_DETONATE_COVER,TUMB,363,1,0,1,Cockpit.Generic.BC966IFF.detonator_switch_cover
	[189] = "%.1f", --3109,IFF966_DETONATE,TUMB,189,-1,0,1,Cockpit.Generic.BC966IFF.detonator_switch
	[190] = "%.1f", --3111,IFF966_OPER,TUMB,190,1,0,1,Cockpit.Generic.BC966IFF.power_switch
	[307] = "%.1f", --3113,T_T_F_SW,TUMB,307,-1,0,1,Cockpit.Mosquito.transmitter_type_f_switch
	[26] = "%.1f", --SUPERCHARJER_SWITCH,TUMB,26,-1,0,1,Cockpit.Mosquito.supercharger_gear_change_switch
	[294] = "%.1f", --UV_EXCITER,BTN,294,1,0,1,Cockpit.Generic.uv_exciter_button
	[176] = "%.1f", --3033,WIPER_RT,LEV,176,0,0,1,Cockpit.Generic.windscreen_wiper_rheostat
	[169] = "%.1f", --3036,ARI_DETONATE_COVER,TUMB,169,-1,0,1,Cockpit.Mosquito.radio_detonator_switch_cover
	[170] = "%.1f", --3038,ARI_DETONATE_1,BTN,170,1,0,1,Cockpit.Mosquito.radio_detonator_switch_l
	[171] = "%.1f", --3039,ARI_DETONATE_2,BTN,171,1,0,1,Cockpit.Mosquito.radio_detonator_switch_r
	[172] = "%.1f", --3040,PORT_EXTG_BTN_COVER,TUMB,172,1,0,1,Cockpit.Mosquito.port_extignuisher_switch_cover
	[173] = "%.1f", --3042,PORT_EXTG_BTN,BTN,173,1,0,1,Cockpit.Mosquito.port_extignuisher_switch
	[174] = "%.1f", --3043,STBD_EXTG_BTN_COVER,TUMB,174,1,0,1,Cockpit.Mosquito.stbd_extignuisher_switch_cover
	[175] = "%.1f", --3045,STBD_EXTG_BTN,BTN,175,1,0,1,Cockpit.Mosquito.stbd_extignuisher_switch
	[178] = "%.1f", --3046,RESIN_LIGHT_SW,TUMB,178,1,0,1,Cockpit.Mosquito.resin_lamps_switch
	[167] = "%.1f", --3048,NAV_HEAD_LAMP_SW,TUMB,167,-0.5,0,1,Cockpit.Mosquito.id_lamp_head_mode_switch
	[166] = "%.1f", --3051,REFLECTOR_SIGHT_SW,TUMB,166,1,0,1,Cockpit.Mosquito.reflector_sight_switch
	[14] = "%.1f", --3053,RIGHT_SIDE_ILLUM,LEV,14,0,0,1,Cockpit.Mosquito.rh_flood_light_dimmer
	[15] = "%.1f", --3056,BOX_B_ILLUM,LEV,15,0,0,1,Cockpit.Mosquito.box_b_flood_light_dimmer
	[16] = "%.1f", --3059,BOMB_PANEL_ILLUM,LEV,16,0,0,1,Cockpit.Mosquito.bomb_aimers_panel_flood_light_dimmer
	[112] = "%.1f", --3062,RAD_FLAP_LH,TUMB,112,-1,0,1,Cockpit.Mosquito.lh_rad_flap_switch
	[113] = "%.1f", --3064,RAD_FLAP_RH,TUMB,113,1,0,1,Cockpit.Mosquito.rh_rad_flap_switch
	[114] = "%.1f", --3066,AIR_FILTER,TUMB,114,-1,0,1,Cockpit.Mosquito.tropical_air_filter_switch
	[157] = "%.1f", --3068,MORSE_KEY,BTN,157,1,0,1,Cockpit.SpitfireLFMkIX.morse_key
	[158] = "%.1f", --3069,DOWNWARD_LEVER,TUMB,158,-0.5,0,1,Cockpit.SpitfireLFMkIX.id_lamp_down_mode
	[159] = "%.1f", --3072,UPWARD_LEVER,TUMB,159,0.5,0,1,Cockpit.SpitfireLFMkIX.id_lamp_up_mode
	[160] = "%.1f", --3075,DOWN_IDENT_LIGHTS_SW,TUMB,160,-0.5,0,1,Cockpit.Mosquito.id_lamp_down_colour_switch
	[161] = "%.1f", --3078,CAMERA_GUN_SW,TUMB,161,1,0,1,Cockpit.Mosquito.camera_gun_switch
	[162] = "%.1f", --3080,NAV_LIGHTS_SW,TUMB,162,-1,0,1,Cockpit.Generic.nav_lights_switch
	[163] = "%.1f", --3082,UV_LIGHT_SW,TUMB,163,1,0,1,Cockpit.Generic.uv_lighting_switch
	[164] = "%.1f", --3084,PITOT_HEAD_SW,TUMB,164,-1,0,1,Cockpit.Generic.pitot_heat_switch
	[165] = "%.1f", --3086,LR_FUEL_PUMP_SW,TUMB,165,1,0,1,Cockpit.Mosquito.lr_fuel_pump_switch
	[168] = "%.1f", --3088,IFF_SW,TUMB,168,-1,0,1,Cockpit.Mosquito.iff_radio_switch
	[17] = "%.1f", --3092,REAR_ILLUM,LEV,17,0,0,1,Cockpit.Mosquito.loop_antenna_flood_light_dimmer
	[303] = "%.1f", --3095,CHART_ILLUM,LEV,303,0,0,1,Cockpit.Mosquito.chart_flood_light_dimmer
	[302] = "%.1f", --3101,DOME_ILLUM,LEV,302,0,0,1,Cockpit.Mosquito.roof_dome_light_dimmer
	[188] = "%.1f", --3104,IFF966_CHAN,TUMB,188,-0.2,0,1,Cockpit.Generic.BC966IFF.channel_selector
	[363] = "%.1f", --3107,IFF966_DETONATE_COVER,TUMB,363,1,0,1,Cockpit.Generic.BC966IFF.detonator_switch_cover
	[189] = "%.1f", --3109,IFF966_DETONATE,TUMB,189,-1,0,1,Cockpit.Generic.BC966IFF.detonator_switch
	[190] = "%.1f", --3111,IFF966_OPER,TUMB,190,1,0,1,Cockpit.Generic.BC966IFF.power_switch
	[307] = "%.1f", --3113,T_T_F_SW,TUMB,307,-1,0,1,Cockpit.Mosquito.transmitter_type_f_switch

	--Three-Way Selector
	[327] = "%.1f", --3001,BOMB_DOORS,BTN,327,-1,-1,0,Cockpit.Mosquito.bomb_doors_lever
	[328] = "%.1f", --3002,CHASSIS,BTN,328,1,0,1,Cockpit.Mosquito.chassis_lever
	[329] = "%.1f", --3003,FLAPS,BTN,329,-1,-1,0,Cockpit.Mosquito.flaps_lever
	[117] = "%.1f", --3004,CHASSIS_GATE,TUMB,117,1,0,1,Cockpit.Mosquito.chassis_gate
	[353] = "%.1f", --3006,FLAPS_GATE,TUMB,353,-1,0,1,Cockpit.Mosquito.flaps_gate


	--VHF Radio
	[32] = "%.1f", --3001,RCTRL_OFF,BTN,32,1,0,1,Cockpit.SpitfireLFMkIX.radio_0
	[33] = "%.1f", --3002,RCTRL_A,BTN,33,1,0,1,Cockpit.SpitfireLFMkIX.radio_a
	[34] = "%.1f", --3003,RCTRL_B,BTN,34,1,0,1,Cockpit.SpitfireLFMkIX.radio_b
	[35] = "%.1f", --3004,RCTRL_C,BTN,35,1,0,1,Cockpit.SpitfireLFMkIX.radio_c
	[36] = "%.1f", --3005,RCTRL_D,BTN,36,1,0,1,Cockpit.SpitfireLFMkIX.radio_d
	[42] = "%.1f", --3006,RCTRL_DIM,TUMB,42,1,0,1,Cockpit.SpitfireLFMkIX.radio_dimmer
	[44] = "%.1f", --3007,RCTRL_T,TUMB,44,1,0,1,Cockpit.SpitfireLFMkIX.radio_mode
	[364] = "%.1f", --3015,RCTRL_VOL,LEV,364,0,0,1,Cockpit.SpitfireLFMkIX.radio_volume
	[43] = "%.1f", --3017,RCTRL_TLOCK,TUMB,43,-1,0,1,Cockpit.SpitfireLFMkIX.radio_lock
	[4] = "%.1f", --3099,PTT_ES,BTN,4,1,0,1,SCR-522 PTT Button

	--Weapons
	[120] = "%.1f", --3001,GUN_MASTER_COVER,TUMB,120,-1,0,1,Cockpit.Mosquito.gun_firing_master_switch_cover
	[121] = "%.1f", --3003,GUN_MASTER,TUMB,121,1,0,1,Cockpit.Mosquito.gun_firing_master_switch
	[245] = "%.1f", --3005,MACHINEGUN_FIRING,BTN,245,1,0,1,Cockpit.Bf109K4.trigger_a
	[246] = "%.1f", --3006,GUN_FIRING,BTN,246,1,0,1,Cockpit.Bf109K4.trigger_b2
	[244] = "%.1f", --3007,CAMERA_GUN,BTN,244,1,0,1,Cockpit.Bf109K4.trigger_b2
	[8] = "%.1f", --3008,WING_TANK_JETTSON_COVER,TUMB,8,1,0,1,Cockpit.Mosquito.wing_tank_jettison_button_cover
	[9] = "%.1f", --3010,WING_TANK_JETTSON,BTN,9,1,0,1,Cockpit.Mosquito.wing_tank_jettison_button
	[323] = "%.1f", --3043,HARNESS_LEVER,TUMB,323,1,0,1,Cockpit.Generic.harness_release_lever
	[107] = "%.1f", --3045,GUNSIGHT_RANGE,LEV,107,0,0,1,Cockpit.SpitfireLFMkIX.gun_sight_range
	[108] = "%.1f", --3048,GUNSIGHT_BASE,LEV,108,0,0,1,Cockpit.SpitfireLFMkIX.gun_sight_span
	[144] = "%.1f", --3056,JETTISON_CONTAINERS_COVER,TUMB,144,-1,0,1,Cockpit.Mosquito.containers_jettison_button_cover
	[145] = "%.1f", --3058,JETTISON_CONTAINERS,BTN,145,1,0,1,Cockpit.Mosquito.containers_jettison_button
	[311] = "%.1f", --3059,BOMB_PANEL_LOCK,TUMB,311,-1,0,1,Cockpit.Mosquito.bomb_aimers_panel_protective_cover
	[143] = "%.1f", --3061,CINE_CAMERA,TUMB,143,1,0,1,Cockpit.Mosquito.bomb_aimers_panel_trigger_changeover_switch
	[148] = "%.1f", --3063,WING_BOMBS_OR_TANKS_1,TUMB,148,-1,0,1,Cockpit.Mosquito.bomb_aimers_panel_station_1_switch
	[149] = "%.1f", --3065,WING_BOMBS_OR_TANKS_2,TUMB,149,1,0,1,Cockpit.Mosquito.bomb_aimers_panel_station_2_switch
	[150] = "%.1f", --3067,FUSELAGE_BOMBS_3,TUMB,150,-1,0,1,Cockpit.Mosquito.bomb_aimers_panel_station_3_switch
	[151] = "%.1f", --3069,FUSELAGE_BOMBS_4,TUMB,151,1,0,1,Cockpit.Mosquito.bomb_aimers_panel_station_4_switch
	[152] = "%.1f", --3071,ALL_BOMBS_NOSE,TUMB,152,-1,0,1,Cockpit.Mosquito.bomb_aimers_panel_nose_fusing_switch
	[153] = "%.1f", --3073,ALL_BOMBS_TAIL,TUMB,153,1,0,1,Cockpit.Mosquito.bomb_aimers_panel_tail_fusing_switch
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