-- Module Name Export
--[[
*****DISCLAIMER*****
I do not have the ability to test this lua file.
There is a significant chance this file may not work due to typos.
Please report any bugs, conflicts, or fixes on the github.
https://github.com/asherao/DCS-ExportScripts
See the bottom of the file for notes.
Tiles and unique exports will be enabled after testing.
*****DISCLAIMER*****
--]]

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
	
	[6] = "%.4f", -- Tail Trim Needle, {-1.0,1.0}
	[7] = "%.4f", -- Beam volume approach switch, {0.0, 1.0}
	[10] = "%.4f", -- Left side flat knob, {0.0, 1.0} ???
	[11] = "%.4f", -- Left side turney thing {0.0, 1.0} ???
	[12] = "%.4f", -- Left side turney thing 2 {0.0, 1.0} ???
	[13] = "%.4f", -- unknown ???
	[29] = "%.4f", -- Magnetic Compass Fwd/Aft axis {-1.0, 1.0}
	[30] = "%.4f", -- Magnetic Compass Left/Right axis {-1.0, 1.0}
	[31] = "%.4f", -- Magnetic Compass Rotate axis {0.0, 1.0}
	
	-- Radio Control Unit
	[37] = "%.4f", -- Channel A Selected channel indicator {0.0, 1.0}
	[38] = "%.4f", -- Channel B Selected channel indicator {0.0, 1.0}
	[39] = "%.4f", -- Channel C Selected channel indicator {0.0, 1.0}
	[40] = "%.4f", -- Channel D Selected channel indicator {0.0, 1.0}
	[41] = "%.4f", -- Receive/transmit indicator 0,1
	
	[45] = "%.4f", -- Boost cut-out Fwd/Aft {0.0, 1.0}
	[46] = "%.4f", -- Boost cut-out Rotate {0.0, 1.0}
	[47] = "%.4f", -- R.I. Compass Repeater Needle 1 {0.0, 1.0}
	[48] = "%.4f", -- R.I. Compass Repeater Needle 2 {0.0, 1.0}
	
	[49] = "%.4f", -- unknown ???
	
	-- Engine Instruments
	[50] = "%.4f", -- Engine Tachometer Left RPM 1000s {0.0, 1.0}
	[51] = "%.4f", -- Engine Tachometer Left RPM 100s {0.0, 1.0}
	[52] = "%.4f", -- Engine Tachometer Right RPM 1000s {0.0, 1.0}
	[53] = "%.4f", -- Engine Tachometer Right RPM 100s {0.0, 1.0}
	[54] = "%.4f", -- Engine Left Boost Guage {0.0, 1.0}
	[55] = "%.4f", -- Engine Right Boost Guage {0.0, 1.0}
	[56] = "%.4f", -- Engine Left Oil Temperature Indicator {0.0, 1.0}
	[57] = "%.4f", -- Engine Right Oil Temperature Indicator {0.0, 1.0}
	[58] = "%.4f", -- Engine Left Oil Pressure Indicator {0.0, 1.0}
	[59] = "%.4f", -- Engine Right Oil Pressure Indicator {0.0, 1.0}
	[60] = "%.4f", -- Engine Left Radiator Coolant Temperature Indicator {0.0, 1.0}
	[61] = "%.4f", -- Engine Right Radiator Coolant Temperature Indicator {0.0, 1.0}
	[62] = "%.4f", -- Landing Light Switch Left {0.0, 1.0}
	[63] = "%.4f", -- Landing Light Switch Right {0.0, 1.0}
	[64] = "%.4f", -- Airspeed Indicator (ASI) Needle {0.0, 1.0}
	
	[65] = "%.4f", -- Artificial Horizon Roll {-1.0, 1.0}
	[66] = "%.4f", -- Artificial Horizon Pitch {-1.0, 1.0}
	[67] = "%.4f", -- Vertical Speed Indicator {-1.0, 1.0}
	[68] = "%.4f", -- Altimeter Needle Medium {0.0, 1.0}
	[69] = "%.4f", -- Altimeter Needle Large {0.0, 1.0}
	[70] = "%.4f", -- Altimeter Needle Small {0.0, 1.0}
	[71] = "%.4f", -- Altimeter Barometer Kollsman window, 0, 1
	[73] = "%.4f", -- Direction Indicator {0.0, 1.0}
	[75] = "%.4f", -- Side Slip Indicator {-1.0, 1.0}
	[76] = "%.4f", -- Turn Indicator {-1.0, 1.0}
	
	[77] = "%.4f", -- Landing Gear Under Carrage Up light left {0.0, 1.0}
	[78] = "%.4f", -- Landing Gear Under Carrage Down light left {0.0, 1.0}
	[79] = "%.4f", -- Landing Gear Under Carrage Up light right {0.0, 1.0}
	[80] = "%.4f", -- Landing Gear Under Carrage Down light right {0.0, 1.0}
	[81] = "%.4f", -- Flap position indicator {0.0, 1.0} 
	[82] = "%.4f", -- Oxygen flow rate indicator pilot {0.0, 1.0}
	[83] = "%.4f", -- Oxygen supply available indicator pilot {0.0, 1.0}
	[84] = "%.4f", -- The knob between the two above ???
	[85] = "%.4f", -- Pneumatic indicator {0.0, 1.0}
	[86] = "%.4f", -- Left Pneumatic Brake indicator {0.0, 1.0}
	[87] = "%.4f", -- Right Pneumatic Brake indicator {0.0, 1.0}
	[88] = "%.4f", -- Beacon tracking needle left side {-1.0, 1.0}
	[89] = "%.4f", -- Beacon tracking needle right side {-1.0, 1.0}
	[90] = "%.4f", -- Cloudy knob {0.0, 1.0}
	[91] = "%.4f", -- Cloudy switch {0.0, 1.0}
	[92] = "%.4f", -- Fuel Inner Tanks Left {0.0, 1.0} 
	[93] = "%.4f", -- Fuel Inner Tanks Right {0.0, 1.0}
	[94] = "%.4f", -- Fuel Center Tanks No10 {0.0, 1.0}
	[95] = "%.4f", -- Fuel Center Tanks No12 {0.0, 1.0}
	[96] = "%.4f", -- Fuel Outer Tanks Left {0.0, 1.0}
	[97] = "%.4f", -- Fuel Outer Tanks Right {0.0, 1.0}
	[98] = "%.4f", -- Clock Needle hours {0.0, 1.0}
	[99] = "%.4f", -- Clock Needle minutes {0.0, 1.0}
	[100] = "%.4f", -- Clock Needle seconds {0.0, 1.0}
	[101] = "%.4f", -- Clock start/stop press {0.0, 1.0}
	[102] = "%.4f", -- Clock start/stop twist {0.0, 1.0}
	[103] = "%.4f", -- Voltimeter {0.0, 1.0}
	
	[104] = "%.4f", -- unknown ???
	[105] = "%.4f", -- unknown ???
	[106] = "%.4f", -- unknown ???
	
	[110] = "%.4f", -- Rudder trim hand knob needle {-1.0, 1.0} 
	[115] = "%.4f", -- Bomb Doors Lever {-1.0, 1.0}
	[116] = "%.4f", -- Landing Gear Under carriage lever {-1.0, 1.0}
	[118] = "%.4f", -- Flap lever {-1.0, 1.0}
	[119] = "%.4f", -- Flap lever guard {0.0, 1.0}
	[122] = "%.4f", -- Aileron Trim Needle {-1.0, 1.0} 
	[123] = "%.4f", -- Aileron Trim Handle {0.0, 1.0} 
	[137] = "%.4f", -- Airscrew Feathering Button Left {0.0, 1.0} 
	[138] = "%.4f", -- Airscrew Feathering Button Right {0.0, 1.0} 
	[146] = "%.4f", -- Weapon Bomb panel protective cover Tab {0.0, 1.0} 
	[147] = "%.4f", -- Weapon Bomb panel protective cover {0.0, 1.0} 
	[154] = "%.4f", -- Weapon Bomb Fuse Release Knob {0.0, 1.0} 
	[155] = "%.4f", -- Oxygen flow rate indicator copilot {0.0, 1.0}
	[156] = "%.4f", -- Oxygen supply available indicator copilot {0.0, 1.0}
	[177] = "%.4f", -- Voltimeter Light {0.0, 1.0}
	[187] = "%.4f", -- The knob between the two oxygen above???
	
	[201] = "%.4f", -- unknown ???
	
	-- T.1154 radio on the left, R.1155 radio on the right
	[205] = "%.4f", -- Master oscillating tuning condenser (Range 3 - M/F frequency) {0.0, 1.0}
	[206] = "%.4f", -- Master oscillating tuning condenser (Range 2 - H/F frequency) {0.0, 1.0}
	[207] = "%.4f", -- Master oscillating tuning condenser (Range 1 - H/F frequency) {0.0, 1.0}
	[208] = "%.4f", -- Output tuning condenser blue {0.0, 1.0}
	[209] = "%.4f", -- Output tuning condenser red {0.0, 1.0}
	[210] = "%.4f", -- Master oscillator dial left yellow {0.0, 1.0}
	[211] = "%.4f", -- Master oscillator dial left red {0.0, 1.0}
	[212] = "%.4f", -- Master oscillator dial left blue {0.0, 1.0}
	[213] = "%.4f", -- Master oscillator dial right blue {0.0, 1.0}
	[214] = "%.4f", -- Master oscillator dial right red {0.0, 1.0}
	[215] = "%.4f", -- Frequency range switch {0.0, 1.0}
	[216] = "%.4f", -- Tap switch blue {0.0, 1.0}
	[217] = "%.4f", -- Tap switch red {0.0, 1.0}
	[218] = "%.4f", -- Transmitter T.1154 Master switch {0.0, 1.0}
	[219] = "%.4f", -- Anode tap switch {0.0, 1.0}
	[220] = "%.4f", -- Tap switch yellow {0.0, 1.0}
	[221] = "%.4f", -- Output tuning control yellow {0.0, 1.0}
	[222] = "%.4f", -- Vernier adjustment switch top {-1.0, 1.0}
	[223] = "%.4f", -- Vernier adjustment switch bottom {-1.0, 1.0}
	[224] = "%.4f", -- Antenna mode switch {-1.0, 1.0}
	[225] = "%.4f", -- Meter balance {-1.0, 1.0}
	[226] = "%.4f", -- Filter switch {0.0, 1.0}
	[227] = "%.4f", -- Meter amplitude {0.0, 1.0}
	[228] = "%.4f", -- Setting tuning indicator lamp {0.0, 1.0}
	[229] = "%.4f", -- Receiver R.1155 Volume control {0.0, 1.0}
	[230] = "%.4f", -- Heterodyne switch {0.0, 1.0}
	[231] = "%.4f", -- Frequency range switch {0.0, 1.0}
	[232] = "%.4f", -- Frequency Needle {0.0, 1.0}
	[233] = "%.4f", -- Frequency fine tuning knob {0.0, 1.0}
	[234] = "%.4f", -- Frequency tuning knob {0.0, 1.0}
	[235] = "%.4f", -- Meter deflection sensitivity switch {0.0, 1.0}
	[236] = "%.4f", -- Aural sense switch {-1.0, 1.0}
	[237] = "%.4f", -- Meter frequency switch {0.0, 1.0}
	[238] = "%.4f", -- Master selector switch {0.0, 1.0}
	[239] = "%.4f", -- Tuning Indicator Brightness {0.0, 1.0}
	[240] = "%.4f", -- Swivel antenna {0.0, 1.0}
	[241] = "%.4f", -- Swivel antenna lock clamp {0.0, 1.0}
	
	-- Flight Controls
	[242] = "%.4f", -- Stick Pitch {-1.0, 1.0}
	[243] = "%.4f", -- Stick Roll {-1.0, 1.0}
	[247] = "%.4f", -- Stick Brake Lever {0.0, 1.0}
	[249] = "%.4f", -- Rudder Pedals {-1.0, 1.0}
	
	[250] = "%.4f", -- Window Left {0.0, 1.0}
	[252] = "%.4f", -- Window Right {0.0, 1.0}
	[255] = "%.4f", -- Exit Door {0.0, 1.0}
	
	[258] = "%.4f", -- unknown ???
	[259] = "%.4f", -- Note Card Knob {0.0, 1.0} ???
	[260] = "%.4f", -- unknown ???
	[261] = "%.4f", -- unknown ???
	[269] = "%.4f", -- Compass Light {0.0, 1.0}
	[270] = "%.4f", -- Dashboard Light Left {0.0, 1.0}
	[271] = "%.4f", -- Dashboard Light Center {0.0, 1.0}
	[272] = "%.4f", -- unknown ???
	[273] = "%.4f", -- unknown ???
	[274] = "%.4f", -- unknown ???
	[275] = "%.4f", -- unknown ???
	[276] = "%.4f", -- unknown ???
	[277] = "%.4f", -- Fuel Pressure Warning Light Left Engine {0.0, 1.0}
	[278] = "%.4f", -- Fuel Pressure Warning Light Right Engine {0.0, 1.0}
	[281] = "%.4f", -- Long Range Pump Pressure Low Light {0.0, 1.0}
	[283] = "%.4f", -- Bomb Doors Open Light {0.0, 1.0}
	[287] = "%.4f", -- unknown ???

	[290] = "%.4f", -- Stick Brake Spring {0.0, 1.0} 
	[295] = "%.4f", -- unknown ???
	[296] = "%.4f", -- Dashboard Light Twist Center {0.0, 1.0}
	[297] = "%.4f", -- Some light. Maybe instrument lights ???
	[299] = "%.4f", -- Dashboard Light Strong Left {0.0, 1.0}
	[300] = "%.4f", -- Dashboard Light Right {0.0, 1.0}
	[301] = "%.4f", -- unknown ???
	[305] = "%.4f", -- unknown ???
	[306] = "%.4f", -- unknown ???
	[308] = "%.4f", -- unknown ???
	[309] = "%.4f", -- Rudder Trim Knob {0.0, 1.0}
	[313] = "%.4f", -- unknown ???
	
	[314] = "%.4f", -- Air temperature gauge Needle {-1.0, 1.0}

	[325] = "%.4f", -- Dashboard Light Red Left {0.0, 1.0}
	[326] = "%.4f", -- Dashboard Light Red Center {0.0, 1.0}

	[331] = "%.4f", -- Some Stick pipe that goes from the door to the pilot chair {0.0, 1.0} ???
	[334] = "%.4f", -- unknown ???
	[336] = "%.4f", -- Some other Stick pipe that goes from the door to the pilot chair {0.0, 1.0} ???
	
	[337] = "%.4f", -- unknown ???
	[338] = "%.4f", -- unknown ???
	[339] = "%.4f", -- unknown ???
	[340] = "%.4f", -- unknown ???
	[341] = "%.4f", -- unknown ???

	[343] = "%.4f", -- Maybe a red light {0.0, 1.0} ???
	[344] = "%.4f", -- Maybe a green light {0.0, 1.0} ???
	[345] = "%.4f", -- Maybe a red light {0.0, 1.0} ???
	[346] = "%.4f", -- Maybe a green light {0.0, 1.0} ???
	
	[347] = "%.4f", -- unknown ???
	[348] = "%.4f", -- unknown ???
	[349] = "%.4f", -- unknown ???
	[350] = "%.4f", -- unknown ???
	[351] = "%.4f", -- unknown ???
	[365] = "%.4f", -- unknown ???
	[370] = "%.4f", -- unknown ???
	[371] = "%.4f", -- unknown ???
	[373] = "%.4f", -- unknown ???

	[375] = "%.4f", -- Clock Timer hours {0.0, 1.0}
	[376] = "%.4f", -- Clock Timer minutes {0.0, 1.0}
	
	[377] = "%.4f", -- unknown ???
	[378] = "%.4f", -- unknown ???
	[379] = "%.4f", -- unknown ???
	[380] = "%.4f", -- unknown ???
	
	[381] = "%.4f", -- Voltimeter warning light cover {0.0, 1.0}
	[382] = "%.4f", -- Voltimeter warning glare {0.0, 1.0}
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
	[127] = "%.1f", --STBD_1,TUMB,127,-1,0,1,Cockpit.Generic.magneto_stbd0
	[128] = "%.1f", --STBD_2,TUMB,128,-1,0,1,Cockpit.Generic.magneto_stbd1
	[124] = "%.1f", --MASTER_SWITCH,TUMB,124,-1,0,1,Cockpit.Mosquito.master_switch
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
	[197] = "%.1f", --OIL_DILUTION_LEFT,BTN,197,1,0,1,Cockpit.Mosquito.port_oil_dilution_button
	[197] = "%.1f", --OIL_DILUTION_LEFT,BTN,197,1,0,1,Cockpit.Mosquito.port_oil_dilution_button
	[198] = "%.1f", --OIL_DILUTION_RIGHT,BTN,198,1,0,1,Cockpit.Mosquito.stbd_oil_dilution_button
	[129] = "%.1f", --STARTER_COVER_LEFT,TUMB,129,-1,0,1,Cockpit.Mosquito.port_starter_switch_cover
	[129] = "%.1f", --STARTER_COVER_LEFT,TUMB,129,1,0,1,Cockpit.Mosquito.port_starter_switch_cover
	[131] = "%.1f", --STARTER_LEFT,BTN,131,1,0,1,Cockpit.Mosquito.port_starter_switch
	[130] = "%.1f", --STARTER_COVER_RIGHT,TUMB,130,-1,0,1,Cockpit.Mosquito.stbd_starter_switch_cover
	[132] = "%.1f", --STARTER_RIGHT,BTN,132,1,0,1,Cockpit.Mosquito.stbd_starter_switch
	[133] = "%.1f", --BOOSTER_COVER_LEFT,TUMB,133,-1,0,1,Cockpit.Mosquito.port_booster_switch_cover
	[135] = "%.1f", --BOOSTER_LEFT,BTN,135,1,0,1,Cockpit.Mosquito.port_booster_switch
	[134] = "%.1f", --BOOSTER_COVER_RIGHT,TUMB,134,-1,0,1,Cockpit.Mosquito.stbd_booster_switch_cover
	[136] = "%.1f", --BOOSTER_RIGHT,BTN,136,1,0,1,Cockpit.Mosquito.stbd_booster_switch
	[192] = "%.3f", --CUT-OUT_PORT,TUMB,192,-1,0,1,Cockpit.Mosquito.port_engine_cutout_handle
	[193] = "%.1f", --FUEL_COCKS_LEFT,TUMB,193,1,-1,1,Cockpit.Mosquito.port_fuel_cock
	[194] = "%.1f", --FUEL_COCKS_RIGHT,TUMB,194,-1,-1,1,Cockpit.Mosquito.stbd_fuel_cock
	[195] = "%.1f", --TRANSFER_COCK,TUMB,195,-1,0,1,Cockpit.Mosquito.transfer_cock
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
	
	--[[ Tiles
	ExportScript.engLeftRpmTile(mainPanelDevice)
	ExportScript.engLeftOilTile(mainPanelDevice)
	ExportScript.engRightRpmTile(mainPanelDevice)
	ExportScript.engRightOilTile(mainPanelDevice)
	ExportScript.oxygenTile(mainPanelDevice)
	ExportScript.BrakesTile(mainPanelDevice)
	ExportScript.trimTile(mainPanelDevice)
	ExportScript.fuelInnerTile(mainPanelDevice)
	ExportScript.fuelCenterTile(mainPanelDevice)
	ExportScript.fuelOuterTile(mainPanelDevice)
	ExportScript.airTempTile(mainPanelDevice)
	ExportScript.gearUpTile(mainPanelDevice)
	ExportScript.gearDownTile(mainPanelDevice)
	ExportScript.altBaroVsiTile(mainPanelDevice)
	ExportScript.navigation1Tile(mainPanelDevice)
	ExportScript.navigation2Tile(mainPanelDevice)
	ExportScript.radio1Tile(mainPanelDevice)
	ExportScript.radio2Tile(mainPanelDevice)
	ExportScript.gunnerSightTile(mainPanelDevice)
	--]]
	
	
	--[[
	----------------------------------------------
	---------Display: Airspeed--------------------
	----------------------------------------------
	local dial_airspeed = math.floor(mainPanelDevice:get_argument_value(64) * 1000) --thanks ED
	ExportScript.Tools.SendData(3000, dial_airspeed)
	
	----------------------------------------------
	---------Display: Altitude--------------------
	----------------------------------------------
	
	
	
	----------------------------------------------
	---------Display: Heading Repeater--------------------
	----------------------------------------------
	
	local dial_directionIndicator = math.floor(mainPanelDevice:get_argument_value(73) * 360)
	ExportScript.Tools.SendData(3001, dial_directionIndicator)
	
	----------------------------------------------
	---------Display: Side Slip--------------------
	----------------------------------------------
	
	--values less than 0 are L, more than 0 are R. max is 100
	local dial_slideSlip = math.floor(mainPanelDevice:get_argument_value(75) * 100)
	ExportScript.Tools.SendData(3002, dial_slideSlip)
	
	----------------------------------------------
	---------Display: Turn Indicator--------------------
	----------------------------------------------
	
	--values less than 0 are L, more than 0 are R. max is 100
	local dial_turnIndicator = math.floor(mainPanelDevice:get_argument_value(76) * 100)
	ExportScript.Tools.SendData(3003, dial_turnIndicator)
	
	----------------------------------------------
	---------Display: Vertical Speed Indicator--------------------
	----------------------------------------------
	
	local dial_verticalSpeedIndicator = math.floor(mainPanelDevice:get_argument_value(67) * 4000)
	ExportScript.Tools.SendData(3019, dial_verticalSpeedIndicator)
	
	
	----------------------------------------------
	---------Display: Sight Range Indication--------------------
	----------------------------------------------
	
	local dial_sightRangeRaw = math.floor(mainPanelDevice:get_argument_value(107))
	
	local dial_sightRange = math.floor((dial_sightRangeRaw * dial_sightRangeRaw * dial_sightRangeRaw * -86.173)
										+ (dial_sightRangeRaw * dial_sightRangeRaw * 189.45)
										+ (dial_sightRangeRaw * 296.8)
										+ 100.14)
	ExportScript.Tools.SendData(3020, dial_sightRange)
	
	----------------------------------------------
	---------Display: Sight Wingspan--------------------
	----------------------------------------------
	
	local dial_sightWingspan = math.floor(mainPanelDevice:get_argument_value(108)
	
	if dial_sightWingspan < 0.438302 then
		dial_sightWingspan = math.floor((dial_sightWingspan * -91.992) + 100.57)
	else
		dial_sightWingspan = math.floor((dial_sightWingspan * -44.083) + 79.331)
	end
	
	ExportScript.Tools.SendData(3021, dial_sightWingspan)
	
	----------------------------------------------
	---------Display: RPM--------------------
	----------------------------------------------
	
	--there are two needles per dial
	--maybe just have to track first needle (nope)
	
	----------------------------------------------
	---------Display: Boost--------------------
	----------------------------------------------
	
	
	local dial_boostLeftRaw = math.floor(mainPanelDevice:get_argument_value(54))
	
	local dial_boostLeft = math.floor((dial_boostLeftRaw * dial_boostLeftRaw * 8.9154)
										+ (dial_boostLeftRaw * 23.095)
										- 7.357)
	ExportScript.Tools.SendData(3022, dial_boostLeft)
	
	local dial_boostRightRaw = math.floor(mainPanelDevice:get_argument_value(55))
	
	local dial_boostRight = math.floor((dial_boostRightRaw * dial_boostRightRaw * 8.9154)
										+ (dial_boostRightRaw * 23.095)
										- 7.357)
	ExportScript.Tools.SendData(3023, dial_boostRight)
	
	
	----------------------------------------------
	---------Display: Oil Temp--------------------
	----------------------------------------------
	
	local dial_oilTempRight = math.floor(mainPanelDevice:get_argument_value(57) * 100)
	ExportScript.Tools.SendData(3004, dial_oilTempRight)
	
	local dial_oilTempLeft = math.floor((mainPanelDevice:get_argument_value(56) * 100)
	ExportScript.Tools.SendData(3005, dial_oilTempLeft)
	
	
	----------------------------------------------
	---------Display: Oil Pressure--------------------
	----------------------------------------------
	
	local dial_oilPressRight = math.floor(mainPanelDevice:get_argument_value(58) * 150)
	ExportScript.Tools.SendData(3006, dial_oilPressRight)
	
	local dial_oilPressLeft = math.floor((mainPanelDevice:get_argument_value(59) * 150)
	ExportScript.Tools.SendData(3007, dial_oilPressLeft)
	
	----------------------------------------------
	---------Display: Compass Heading--------------------
	----------------------------------------------
	
	local dial_compass = math.floor(mainPanelDevice:get_argument_value(31) * 360)
	if dial_compass == 0 then
		dial_compass = 360
		dial_compass = string.format("0" .. dial_compass)
	end
	
	if #dial_compass == 1 then
		dial_compass = string.format("00" .. dial_compass)
	elseif #dial_compass == 2 then
		dial_compass = string.format("0" .. dial_compass)
	end
	
	ExportScript.Tools.SendData(3008, dial_compass)
	
	
	local dial_compassNeedle1 = math.floor(mainPanelDevice:get_argument_value(47) * 360)
	
	if dial_compassNeedle1 == 0 then
		dial_compassNeedle1 = 360
		dial_compassNeedle1 = string.format("0" .. dial_compassNeedle1)
	end
	
	if #dial_compassNeedle1 == 1 then
		dial_compassNeedle1 = string.format("00" .. dial_compassNeedle1)
	elseif #dial_compassNeedle1 == 2 then
		dial_compassNeedle1 = string.format("0" .. dial_compassNeedle1)
	end
	
	ExportScript.Tools.SendData(3012, dial_compassNeedle1)
	
	
	local dial_compassNeedle2 = math.floor(mainPanelDevice:get_argument_value(48) * 360)
	
	if dial_compassNeedle2 == 0 then
		dial_compassNeedle2 = 360
		dial_compassNeedle2 = string.format("0" .. dial_compassNeedle2)
	end
	
	if #dial_compassNeedle2 == 1 then
		dial_compassNeedle2 = string.format("00" .. dial_compassNeedle2)
	elseif #dial_compassNeedle2 == 2 then
		dial_compassNeedle2 = string.format("0" .. dial_compassNeedle2)
	end
	
	ExportScript.Tools.SendData(3013, dial_compassNeedle2)
	
	----------------------------------------------
	---------Display: Clock--------------------
	----------------------------------------------
	
	--maybe later... or never
	
	----------------------------------------------
	---------Display: Gear Up and Down------------
	----------------------------------------------
	
	local light_gearRedUpLeft = math.floor(mainPanelDevice:get_argument_value(77)) --red up left
	local light_gearGreenDownLeft = math.floor(mainPanelDevice:get_argument_value(78)) --green down left
	local light_gearRedUpRight = math.floor(mainPanelDevice:get_argument_value(79)) --red up right
	local light_gearGreenDownRight = math.floor(mainPanelDevice:get_argument_value(80)) --green down right
	
	local gearIsUp
	local gearIsDown
	
	if light_gearRedUpLeft == 1 && light_gearRedUpRight == 1 then
		gearIsUp = 1
	else
		gearIsUp = 0
	end
		
	if light_gearGreenDownLeft == 1 && light_gearGreenDownRight == 1 then
		gearIsDown = 1
	else
		gearIsDown = 0
	end
	
	ExportScript.Tools.SendData(3009, gearIsUp)
	ExportScript.Tools.SendData(3010, gearIsDown)
	
	
	
	----------------------------------------------
	---------Display: Flaps--------------------
	----------------------------------------------
	
	local dial_flapIndicator = math.floor(mainPanelDevice:get_argument_value(81) * 100)
	
	if dial_flapIndicator > 70 then
	dial_flapIndicator = 70
	ExportScript.Tools.SendData(3011, dial_flapIndicator)
	
	----------------------------------------------
	---------Display: Nav Direction Indicator--------------------
	----------------------------------------------
	
	--this is the loop thing behind the navigators head
	
	----------------------------------------------
	---------Display: Oxygen supply available--------------------
	----------------------------------------------
	
	
	local dial_oxygenFlowRatePilot = math.floor(mainPanelDevice:get_argument_value(82) * 100)
	ExportScript.Tools.SendData(3014, dial_oxygenFlowRatePilot)
	
	--numbers above 40 are "EMERGENCY"
	local isDial_oxygenFlowRatePilotEmergency
	if dial_oxygenFlowRatePilot > 40 then
		isDial_oxygenFlowRatePilotEmergency = 1
	else
		isDial_oxygenFlowRatePilotEmergency = 0
	end
	ExportScript.Tools.SendData(3015, isDial_oxygenFlowRatePilotEmergency)
	
	
	local dial_oxygenSupplyPilotRaw = math.floor(mainPanelDevice:get_argument_value(83))
	
	local dial_oxygenSupplyPilot = math.floor((dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * 87.118)
										- (dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * 228.16)
										+ (dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * 189.84)
										+ (dial_oxygenSupplyPilotRaw * 51.237)
										- 0.0026)
	ExportScript.Tools.SendData(3024, dial_oxygenSupplyPilot)
	
	--numbers below 12.5 (1/8 on the dial) are red zone
	local isDial_oxygenSupplyPilotRedZone
	if dial_oxygenSupplyPilot < 12.5 then
		isDial_oxygenSupplyPilotRedZone = 1
	else
		isDial_oxygenSupplyPilotRedZone = 0
	end
	
	
	
	
	local dial_oxygenFlowRateCopilot = math.floor(mainPanelDevice:get_argument_value(155) * 100)
	ExportScript.Tools.SendData(3016, dial_oxygenFlowRateCopilot)
	
	--numbers above 40 are "EMERGENCY"
	local isDial_oxygenFlowRateCopilotEmergency
	if dial_oxygenFlowRateCopilot > 40 then
		isDial_oxygenFlowRateCopilotEmergency = 1
	else
		isDial_oxygenFlowRateCopilotEmergency = 0
	end
	ExportScript.Tools.SendData(3017, isDial_oxygenFlowRateCopilotEmergency)
	
	
	local dial_oxygenSupplyCopilotRaw = math.floor(mainPanelDevice:get_argument_value(156))
	
	local dial_oxygenSupplyCopilot = math.floor((dial_oxygenSupplyCopilotRaw * dial_oxygenSupplyCopilotRaw * dial_oxygenSupplyCopilotRaw * dial_oxygenSupplyCopilotRaw * 87.118)
										- (dial_oxygenSupplyCopilotRaw * dial_oxygenSupplyCopilotRaw * dial_oxygenSupplyCopilotRaw * 228.16)
										+ (dial_oxygenSupplyCopilotRaw * dial_oxygenSupplyCopilotRaw * 189.84)
										+ (dial_oxygenSupplyCopilotRaw * 51.237)
										- 0.0026)
	ExportScript.Tools.SendData(3024, dial_oxygenSupplyCopilot)
	
	--numbers below 12.5 (1/8 on the dial) are red zone
	local isDial_oxygenSupplyCopilotRedZone
	if dial_oxygenSupplyCopilot < 12.5 then
		isDial_oxygenSupplyCopilotRedZone = 1
	else
		isDial_oxygenSupplyCopilotRedZone = 0
	end
	
	----------------------------------------------
	---------Display: Fuel Inner Tank--------------------
	----------------------------------------------
	
	--local dial_fuelInnerLeft = math.floor(mainPanelDevice:get_argument_value(92) * X)
	--ExportScript.Tools.SendData(3017, dial_fuelInnerLeft)
	--noted in calculator
	
	local dial_fuelInnerTankLeftRaw = math.floor(mainPanelDevice:get_argument_value(92))
	
	local dial_fuelInnerTankLeft = math.floor(
										+ (1084.9 * dial_fuelInnerTankLeftRaw * dial_fuelInnerTankLeftRaw * dial_fuelInnerTankLeftRaw * dial_fuelInnerTankLeftRaw * dial_fuelInnerTankLeftRaw)
										- (2252.4 * dial_fuelInnerTankLeftRaw * dial_fuelInnerTankLeftRaw * dial_fuelInnerTankLeftRaw * dial_fuelInnerTankLeftRaw)
										+ (1590.9 * dial_fuelInnerTankLeftRaw * dial_fuelInnerTankLeftRaw * dial_fuelInnerTankLeftRaw)
										- (377.05 * dial_fuelInnerTankLeftRaw * dial_fuelInnerTankLeftRaw)
										+ (128.21 * dial_fuelInnerTankLeftRaw)
										- 0.1146)
										
	--consider making flags for these that can be set by the user
	if dial_fuelInnerTankLeft < 0 then
		dial_fuelInnerTankLeft = 0
	end
	
	if dial_fuelInnerTankLeft < 146 then
		dial_fuelInnerTankLeft = 146
	end
	
	ExportScript.Tools.SendData(3025, dial_fuelInnerTankLeft)
	
	
	
	local dial_fuelInnerTankRightRaw = math.floor(mainPanelDevice:get_argument_value(93))
	
	local dial_fuelInnerTankRight = math.floor(
										(1084.9 * dial_fuelInnerTankRightRaw * dial_fuelInnerTankRightRaw * dial_fuelInnerTankRightRaw * dial_fuelInnerTankRightRaw * dial_fuelInnerTankRightRaw)
										- (2252.4 * dial_fuelInnerTankRightRaw * dial_fuelInnerTankRightRaw * dial_fuelInnerTankRightRaw * dial_fuelInnerTankRightRaw)
										+ (1590.9 * dial_fuelInnerTankRightRaw * dial_fuelInnerTankRightRaw * dial_fuelInnerTankRightRaw)
										- (377.05 * dial_fuelInnerTankRightRaw * dial_fuelInnerTankRightRaw)
										+ (128.21 * dial_fuelInnerTankRightRaw)
										- 0.1146)
										
	--consider making flags for these that can be set by the user
	if dial_fuelInnerTankRight < 0 then
		dial_fuelInnerTankRight = 0
	end
	
	if dial_fuelInnerTankRight < 146 then
		dial_fuelInnerTankRight = 146
	end
	
	ExportScript.Tools.SendData(3026, dial_fuelInnerTankRight)
	
	
	
	----------------------------------------------
	---------Display: Fuel Center tanks--------------------
	----------------------------------------------
	
	--note that the formulas are different for both of these

	
	local dial_centerTankNo10Raw = math.floor(mainPanelDevice:get_argument_value(94))
	
	local dial_centerTankNo10 = math.floor(
										(-88.166 * dial_centerTankNo10Raw * dial_centerTankNo10Raw * dial_centerTankNo10Raw * dial_centerTankNo10Raw)
										+ (203.91 * dial_centerTankNo10Raw * dial_centerTankNo10Raw * dial_centerTankNo10Raw)
										- (150.81 * dial_centerTankNo10Raw * dial_centerTankNo10Raw)
										+ (94.58 * dial_centerTankNo10Raw)
										+ 0.0185)
										
	--consider making flags for these that can be set by the user
	if dial_centerTankNo10 < 0 then
		dial_centerTankNo10 = 0
	end
	
	if dial_centerTankNo10 < 53 then
		dial_centerTankNo10 = 53
	end
	
	ExportScript.Tools.SendData(3027, dial_centerTankNo10)
	


	local dial_centerTankNo12Raw = math.floor(mainPanelDevice:get_argument_value(95))
	
	local dial_centerTankNo12 = math.floor(
										  (533.91 * dial_centerTankNo12Raw * dial_centerTankNo12Raw * dial_centerTankNo12Raw * dial_centerTankNo12Raw * dial_centerTankNo12Raw)
										- (1189.9 * dial_centerTankNo12Raw * dial_centerTankNo12Raw * dial_centerTankNo12Raw * dial_centerTankNo12Raw)
										+ (941.77 * dial_centerTankNo12Raw * dial_centerTankNo12Raw * dial_centerTankNo12Raw)
										- (290.11 * dial_centerTankNo12Raw * dial_centerTankNo12Raw)
										+ (81.317 * dial_centerTankNo12Raw)
										- 0.0347)
										
	--consider making flags for these that can be set by the user
	if dial_centerTankNo12 < 0 then
		dial_centerTankNo12 = 0
	end
	
	if dial_centerTankNo12 < 63 then
		dial_centerTankNo12 = 63
	end
	
	ExportScript.Tools.SendData(3028, dial_centerTankNo12)
	
	
	
	
	----------------------------------------------
	---------Display: Fuel outer tanks--------------------
	----------------------------------------------
	

	--[96] and [97]
	
	local dial_outerTankLeftRaw = math.floor(mainPanelDevice:get_argument_value(96))
	local dial_outerTankLeft
	if dial_outerTankLeftRaw < 0.7699 then
	dial_outerTankLeft = math.floor(
										  (64.393 * dial_o uterTankLeftRaw * dial_outerTankLeftRaw * dial_outerTankLeftRaw)
										- (90.401 * dial_outerTankLeftRaw * dial_outerTankLeftRaw)
										+ (83.39 * dial_outerTankLeftRaw)
										+ 0.0365)
	else
	dial_outerTankLeft = math.floor(
										  (135.71 * dial_outerTankLeftRaw)
										- 64.485)
	end
	
	--consider making flags for these that can be set by the user
	if dial_outerTankLeft < 0 then
		dial_outerTankLeft = 0
	end
	
	if dial_outerTankLeft < 59 then
		dial_outerTankLeft = 59
	end
	
	ExportScript.Tools.SendData(3029, dial_outerTankLeft)
	
	
	local dial_outerTankRightRaw = math.floor(mainPanelDevice:get_argument_value(97))
	local dial_outerTankRight
	if dial_outerTankRightRaw < 0.7699 then
	dial_outerTankRight = math.floor(
										  (64.393 * dial_o uterTankRightRaw * dial_outerTankRightRaw * dial_outerTankRightRaw)
										- (90.401 * dial_outerTankRightRaw * dial_outerTankRightRaw)
										+ (83.39 * dial_outerTankRightRaw)
										+ 0.0365)
	else
	dial_outerTankRight = math.floor(
										  (135.71 * dial_outerTankRightRaw)
										- 64.485)
	end
	
	--consider making flags for these that can be set by the user
	if dial_outerTankRight < 0 then
		dial_outerTankRight = 0
	end
	
	if dial_outerTankRight < 59 then
		dial_outerTankRight = 59
	end
	
	ExportScript.Tools.SendData(3030, dial_outerTankRight)
	
	
	
	
	
	----------------------------------------------
	---------Display: air temperature--------------------
	----------------------------------------------
	
	local dial_airTemp = math.floor((mainPanelDevice:get_argument_value(314) * 100)
	ExportScript.Tools.SendData(3018, dial_airTemp)
	
	----------------------------------------------
	---------Display: Radio Selection--------------------
	----------------------------------------------
	
	
	
	----------------------------------------------
	---------Display: Copilot needle freq reading--------------------
	----------------------------------------------
	
	
	
	----------------------------------------------
	---------Airspeed Alert--------------------
	----------------------------------------------
	
	--the chart for the limits is in the manual
	
	----------------------------------------------
	---------Optimal Engine settings Helper--------------------
	----------------------------------------------
	
	--the chart for the limits is in the manual
	
	
	----------------------------------------------
	---------Boost Limits--------------------
	----------------------------------------------
	
	--the chart for the limits is in the manual
	--]]
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

--[[ Tiles

--this is the basic format. you will still need fine tune everything
function ExportScript.engLeftRpmTile(mainPanelDevice) --boost is [54], rpm is []
	
	local guage_rpm = math.floor(mainPanelDevice:get_argument_value(37) * 10000)
	
	local dial_boostLeftRaw = math.floor(mainPanelDevice:get_argument_value(39) * 1)
	
	local dial_boostLeft = math.floor(dial_boostLeftRaw * 24)
	
	ExportScript.Tools.SendData(3000, string.format("Eng L" .. "\n" 
													.. "RPM  ".. guage_rpm .. "\n"
													.. "Boost  ".. dial_boostLeft .. "\n"))
end

function ExportScript.engLeftOilTile(mainPanelDevice)
end

function ExportScript.engRightRpmTile(mainPanelDevice)
end

function ExportScript.engRightOilTile(mainPanelDevice)
end


function ExportScript.oxygenTile(mainPanelDevice)
	local dial_oxygenFlowRatePilot = math.floor(mainPanelDevice:get_argument_value(82) * 100)
	ExportScript.Tools.SendData(3014, dial_oxygenFlowRatePilot)
	
	--numbers above 40 are "EMERGENCY"
	
	local isDial_oxygenFlowRatePilotEmergency
	if dial_oxygenFlowRatePilot > 40 then
		isDial_oxygenFlowRatePilotEmergency = 1
	else
		isDial_oxygenFlowRatePilotEmergency = 0
	end
	ExportScript.Tools.SendData(3015, isDial_oxygenFlowRatePilotEmergency)
	
	
	local dial_oxygenSupplyPilotRaw = mainPanelDevice:get_argument_value(83)
	
	local dial_oxygenSupplyPilot = (
										
                          (87.118 * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw)
                        - (228.16 * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw)
                        + (189.84 * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw)
                        + (51.237 * dial_oxygenSupplyPilotRaw)
                        - 0.0026)	
						
	dial_oxygenSupplyPilot = round(dial_oxygenSupplyPilot, 0)		
						
	ExportScript.Tools.SendData(3024, dial_oxygenSupplyPilot)
	
	--numbers below 12.5 (1/8 on the dial) are red zone
	local isDial_oxygenSupplyPilotRedZone
	if dial_oxygenSupplyPilot < 12.5 then
		isDial_oxygenSupplyPilotRedZone = 1
	else
		isDial_oxygenSupplyPilotRedZone = 0
	end
	ExportScript.Tools.SendData(3031, isDial_oxygenSupplyPilotRedZone)
	
	local oxygenTile_output = string.format("Oxygen" .. "\n" 
											.. "PLT Flow  ".. dial_oxygenFlowRatePilot .. "\n"
											.. "PLT Supply  ".. dial_oxygenSupplyPilot .. "\n")
	
	ExportScript.Tools.SendData(3032, oxygenTile_output)
	
	local isPilotOxygenEmergency
	if isDial_oxygenSupplyPilotRedZone == 1 or isDial_oxygenFlowRatePilotEmergency == 1 then
		isPilotOxygenEmergency = 1
	else
		isPilotOxygenEmergency = 0
	end
	
	ExportScript.Tools.SendData(3033, isPilotOxygenEmergency)
	
end

function ExportScript.BrakesTile(mainPanelDevice)
end

function ExportScript.trimTile(mainPanelDevice)
end

function ExportScript.fuelInnerTile(mainPanelDevice)
end

function ExportScript.fuelCenterTile(mainPanelDevice)
end

function ExportScript.fuelOuterTile(mainPanelDevice)
end

function ExportScript.airTempTile(mainPanelDevice)
end

function ExportScript.gearUpTile(mainPanelDevice)
end

function ExportScript.gearDownTile(mainPanelDevice)
end

function ExportScript.altBaroVsiTile(mainPanelDevice)
end

function ExportScript.navigation1Tile(mainPanelDevice)
end

function ExportScript.navigation2Tile(mainPanelDevice)
end

function ExportScript.radio1Tile(mainPanelDevice)
--look at the spitfire for clues
end

function ExportScript.radio2Tile(mainPanelDevice)

end

function ExportScript.gunnerSightTile(mainPanelDevice)
--wingspan is in ft in the aircraft
end

	--]]

function ExportScript.displayAccel(mainPanelDevice)
end


--[[Scratch pad for linear interpolation

if incomingNumber < 0 then
	incomingNumber = 0
elseif incomingNumber < 0.1366 then --incoming number is 
	x1 = 0 = argument number 1
	y1 = 0 = guage number 1
	x2 = incomingNumber
	x3 = 0.13366 = argument number 2
	y3 = 10 = guage number 2
	solution = (((incomingNumber - x1) * (y3 - y1) ) /  (x3 - x1))   + y1

--]]

function round(num, numDecimalPlaces) --http://lua-users.org/wiki/SimpleRound
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

--[[
------------------------------
-- Ideas for implementation --
------------------------------

[
-Aircraft Startup Page
-Basic readout and instrument readouts such as airspeed
-Readout for the currently selected copilot frequency
-Airspeed tile with color changes for limits 
-Tile for optimal settings based on aircraft weight and altitude
-A way for the copilot to use the streamdeck to dial freqs
-set gunner sight via different aircraft (focus on the ones in DCS)
	-maybe have the tile react to what the user is doing ingame,
	-as the user scrolls the wheel, the names of the different aircraft
	-appear on the dial
-gear up and down indicators
-overheat for engine instruments indicator
	-maybe have one tile that can display multiple things
-remember that you can get interesting things using
	-"local hindKneeboardInfo = ExportScript.Tools.split(list_indication(8), "%c")
		-this contains the formated table of the kneeboard of the hind"
]

---------------------
-- List of exports --
---------------------

[
3000	-	value	-	dial_airspeed
3001	-	value	-	dial_directionIndicator
3002	-	value	-	dial_slideSlip
3003	-	value	-	dial_turnIndicator
3004	-	value	-	dial_oilTempRight
3005	-	value	-	dial_oilTempLeft
3006	-	value	-	dial_oilPressRight
3007	-	value	-	dial_oilPressLeft
3008	-	value	-	dial_compass
3009	-	value	-	gearIsUp
3010	-	value	-	gearIsDown
3011	-	value	-	dial_flapIndicator
3012	-	value	-	dial_compassNeedle1
3013	-	value	-	dial_compassNeedle2
3014	-	value	-	dial_oxygenFlowRatePilot
3015	-	value	-	isDial_oxygenFlowRatePilotEmergency
3016	-	value	-	dial_oxygenFlowRateCopilot
3017	-	value	-	isDial_oxygenFlowRateCopilotEmergency
3018	-	value	-	dial_airTemp
3019	-	value	-	dial_verticalSpeedIndicator
3020	-	value	-	dial_sightRange
3021	-	value	-	dial_sightWingspan
3022	-	value	-	dial_boostLeft
3023	-	value	-	dial_boostRight
3024	-	value	-	dial_oxygenSupplyPilot
3025	-	value	-	dial_fuelInnerTankLeft
3026	-	value	-	dial_fuelInnerTankRight
3027	-	value	-	dial_centerTankNo10
3028	-	value	-	dial_centerTankNo12
3029	-	value	-	dial_outerTankLeft
3030	-	value	-	dial_outerTankRight
3031	-	value	-	
3032	-	value	-	
3033	-	value	-	
3034	-	value	-	
3035	-	value	-	
3036	-	value	-	
3037	-	value	-	
3038	-	value	-	
3039	-	value	-	
3040	-	value	-	
3041	-	value	-	
3042	-	value	-	
3043	-	value	-	
3044	-	value	-	
3045	-	value	-	
3046	-	value	-	
3047	-	value	-	
3048	-	value	-	
3049	-	value	-	
3050	-	value	-	
3051	-	value	-	
3052	-	value	-	
3053	-	value	-	
3054	-	value	-	
3055	-	value	-	
3056	-	value	-	

4000	-	tile	-	
4001	-	tile	-	
4002	-	tile	-	
4003	-	tile	-	
4004	-	tile	-	
4005	-	tile	-	
4006	-	tile	-	
4007	-	tile	-	
4008	-	tile	-	
4009	-	tile	-	
4010	-	tile	-	
4011	-	tile	-	
4012	-	tile	-	
4013	-	tile	-	
4014	-	tile	-	
4015	-	tile	-	
4016	-	tile	-	
4017	-	tile	-	
4018	-	tile	-	
4019	-	tile	-	
]

-----------------------
-- Ideas for "Tiles" --
-----------------------

[
-------------   ------------- 
| Engine L	|	| Engine R	|
| RPM: XXX	|	| RPM: XXX	|
| Boost: XX	|	| Boost: XX	|
-------------	------------- 

--------------   -------------- 
|  Engine L	 |	|  Engine R	 |
| Oil T: XXX |	| Oil T: XXX |
| Oil P: XXX |	| Oil P: XXX |
| Rad T: XXX |	| Rad T: XXX |
--------------	-------------- 

------------------- 
|     Oxygen      |
| PLT Flow: XXX   |
| PLT Supply: XX  |
| CPLT Flow: XXX  |
| CPLT Supply: XX |
------------------- 

------------------ 
|     Brakes     |
| Supply: XXX    |
| Port: XX       |
| Starboard: XXX |
------------------ 

--------------------
|       Trim       |
| Aileron: L XX%   |
| Elevator: R XX%  |
| Rudder: Centered |
--------------------

-------------------
|    Fuel Inner   |
| Port: XX.X      |
| Starboard: XX.X |
| Total: XX.X     |
-------------------

---------------
| Fuel Center |
| No10: XX.X  |
| No12: XX.X  |
| Total: XX.X |
---------------

-------------------
|    Fuel Outer   |
| Port: XX.X      |
| Starboard: XX.X |
| Total: XX.X     |
-------------------

------------
| Air Temp |
|   XXoC   |
------------

--------------
| Alt: XXXX  |
| Baro: XXXX |
| VSI: XXXX  |
--------------

-----------------
|  NAVIGATION1  |
| Repeater: XXX |
| Needle 1: XXX |
| Needle 2: XXX |
-----------------

-----------------
|  NAVIGATION2  |
| Compass: XXX  |
| Repeater: XXX |
| Director: XXX |
-----------------

-------------
|  Radio 1  |
| Channel A |
-------------

----------------
|   Radio 2    |
| Band: Yellow |
| Freq: XXXXX  |
----------------

-----------------
|    Gear UP    |
| PIC       PIC |
| Under Carrage |
----------------

-----------------
| Under Carrage |
| PIC       PIC |
|  Gear DOWN    |
-----------------

-------------------
|   Gunner Sight  |
| Range: XXX      |
| Wingspan: XXX   |
| Ideal: NameAcft |
-------------------
]

]]--