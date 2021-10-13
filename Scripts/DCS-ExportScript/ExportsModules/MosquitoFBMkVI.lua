-- MosquitoFBMkVI
--[[
*****DISCLAIMER*****
I do not have the ability to test this lua file.
There is a significant chance this file may not work due to work in progress.
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
	[68] = "%.4f", -- Altimeter gauge Hundreds Needle {0.0, 1.0}
	[69] = "%.4f", -- Altimeter gauge Thousands Needle {0.0, 1.0}
	[70] = "%.4f", -- Altimeter gauge Tens Thousands Needle {0.0, 1.0}
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
	[84] = "%.4f", -- Oxygen valve pilot
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
	[187] = "%.4f", -- Oxygen valve copilot
	
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
	[215] = "%0.1f", -- Frequency range selector switch {0.0, 1.0} (0.0, 0.1,0.2)
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
	[231] = "%0.1f", -- Frequency range selector switch {0.0, 1.0} (0.0, 0.1,0.2,0.3,0.4)
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
	[382] = "%.4f" -- Voltimeter warning glare {0.0, 1.0}
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
	[1] = "%.1f", --REPEATER_COMPASS_SW1,TUMB,1,-1,0,1,Cockpit.Mosquito.r_i_compass_switch
	[2] = "%.1f", --REPEATER_COMPASS_SW2,TUMB,2,1,0,1,Cockpit.Mosquito.r_i_compass_switch
	[3] = "%.1f", --BA_SW,TUMB,3,-1,0,1,Cockpit.Mosquito.beam_approach_switch
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
	[164] = "%.1f", --PITOT_HEAD_SW,TUMB,164,1,0,1,Cockpit.Generic.pitot_heat_switch
	[165] = "%.1f", --LR_FUEL_PUMP_SW,TUMB,165,-1,0,1,Cockpit.Mosquito.lr_fuel_pump_switch
	[168] = "%.1f", --IFF_SW,TUMB,168,1,0,1,Cockpit.Mosquito.iff_radio_switch
	[17] = "%.1f", --REAR_ILLUM,LEV,17,0,0,1,Cockpit.Mosquito.loop_antenna_flood_light_dimmer
	[303] = "%.1f", --CHART_ILLUM,LEV,303,0,0,1,Cockpit.Mosquito.chart_flood_light_dimmer
	[302] = "%.1f", --DOME_ILLUM,LEV,302,0,0,1,Cockpit.Mosquito.roof_dome_light_dimmer
	[188] = "%.1f", --IFF966_CHAN,TUMB,188,-0.2,0,1,Cockpit.Generic.BC966IFF.channel_selector
	[363] = "%.1f", --IFF966_DETONATE_COVER,TUMB,363,1,0,1,Cockpit.Generic.BC966IFF.detonator_switch_cover
	[189] = "%.1f", --IFF966_DETONATE,TUMB,189,-1,0,1,Cockpit.Generic.BC966IFF.detonator_switch
	[190] = "%.1f", --IFF966_OPER,TUMB,190,1,0,1,Cockpit.Generic.BC966IFF.power_switch
	[307] = "%.1f", --T_T_F_SW,TUMB,307,-1,0,1,Cockpit.Mosquito.transmitter_type_f_switch
	[26] = "%.1f", --SUPERCHARJER_SWITCH,TUMB,26,-1,0,1,Cockpit.Mosquito.supercharger_gear_change_switch
	[294] = "%.1f", --UV_EXCITER,BTN,294,1,0,1,Cockpit.Generic.uv_exciter_button
	[176] = "%.1f", --WIPER_RT,LEV,176,0,0,1,Cockpit.Generic.windscreen_wiper_rheostat
	[169] = "%.1f", --ARI_DETONATE_COVER,TUMB,169,-1,0,1,Cockpit.Mosquito.radio_detonator_switch_cover
	[170] = "%.1f", --ARI_DETONATE_1,BTN,170,1,0,1,Cockpit.Mosquito.radio_detonator_switch_l
	[171] = "%.1f", --ARI_DETONATE_2,BTN,171,1,0,1,Cockpit.Mosquito.radio_detonator_switch_r
	[172] = "%.1f", --PORT_EXTG_BTN_COVER,TUMB,172,1,0,1,Cockpit.Mosquito.port_extignuisher_switch_cover
	[173] = "%.1f", --PORT_EXTG_BTN,BTN,173,1,0,1,Cockpit.Mosquito.port_extignuisher_switch
	[174] = "%.1f", --STBD_EXTG_BTN_COVER,TUMB,174,1,0,1,Cockpit.Mosquito.stbd_extignuisher_switch_cover
	[175] = "%.1f", --STBD_EXTG_BTN,BTN,175,1,0,1,Cockpit.Mosquito.stbd_extignuisher_switch
	[178] = "%.1f", --RESIN_LIGHT_SW,TUMB,178,1,0,1,Cockpit.Mosquito.resin_lamps_switch
	[167] = "%.1f", --NAV_HEAD_LAMP_SW,TUMB,167,-0.5,0,1,Cockpit.Mosquito.id_lamp_head_mode_switch
	[166] = "%.1f", --REFLECTOR_SIGHT_SW,TUMB,166,1,0,1,Cockpit.Mosquito.reflector_sight_switch
	[14] = "%.1f", --RIGHT_SIDE_ILLUM,LEV,14,0,0,1,Cockpit.Mosquito.rh_flood_light_dimmer
	[15] = "%.1f", --BOX_B_ILLUM,LEV,15,0,0,1,Cockpit.Mosquito.box_b_flood_light_dimmer
	[16] = "%.1f", --BOMB_PANEL_ILLUM,LEV,16,0,0,1,Cockpit.Mosquito.bomb_aimers_panel_flood_light_dimmer
	[112] = "%.1f", --RAD_FLAP_LH,TUMB,112,-1,0,1,Cockpit.Mosquito.lh_rad_flap_switch
	[113] = "%.1f", --RAD_FLAP_RH,TUMB,113,1,0,1,Cockpit.Mosquito.rh_rad_flap_switch
	[114] = "%.1f", --AIR_FILTER,TUMB,114,-1,0,1,Cockpit.Mosquito.tropical_air_filter_switch
	[157] = "%.1f", --MORSE_KEY,BTN,157,1,0,1,Cockpit.SpitfireLFMkIX.morse_key
	[158] = "%.1f", --DOWNWARD_LEVER,TUMB,158,-0.5,0,1,Cockpit.SpitfireLFMkIX.id_lamp_down_mode
	[159] = "%.1f", --UPWARD_LEVER,TUMB,159,0.5,0,1,Cockpit.SpitfireLFMkIX.id_lamp_up_mode
	[160] = "%.1f", --DOWN_IDENT_LIGHTS_SW,TUMB,160,-0.5,0,1,Cockpit.Mosquito.id_lamp_down_colour_switch
	[161] = "%.1f", --CAMERA_GUN_SW,TUMB,161,1,0,1,Cockpit.Mosquito.camera_gun_switch
	[162] = "%.1f", --NAV_LIGHTS_SW,TUMB,162,-1,0,1,Cockpit.Generic.nav_lights_switch
	[163] = "%.1f", --UV_LIGHT_SW,TUMB,163,1,0,1,Cockpit.Generic.uv_lighting_switch
	[164] = "%.1f", --PITOT_HEAD_SW,TUMB,164,-1,0,1,Cockpit.Generic.pitot_heat_switch
	[165] = "%.1f", --LR_FUEL_PUMP_SW,TUMB,165,1,0,1,Cockpit.Mosquito.lr_fuel_pump_switch
	[168] = "%.1f", --IFF_SW,TUMB,168,-1,0,1,Cockpit.Mosquito.iff_radio_switch
	[17] = "%.1f", --REAR_ILLUM,LEV,17,0,0,1,Cockpit.Mosquito.loop_antenna_flood_light_dimmer
	[303] = "%.1f", --CHART_ILLUM,LEV,303,0,0,1,Cockpit.Mosquito.chart_flood_light_dimmer
	[302] = "%.1f", --DOME_ILLUM,LEV,302,0,0,1,Cockpit.Mosquito.roof_dome_light_dimmer
	[188] = "%.1f", --IFF966_CHAN,TUMB,188,-0.2,0,1,Cockpit.Generic.BC966IFF.channel_selector
	[363] = "%.1f", --IFF966_DETONATE_COVER,TUMB,363,1,0,1,Cockpit.Generic.BC966IFF.detonator_switch_cover
	[189] = "%.1f", --IFF966_DETONATE,TUMB,189,-1,0,1,Cockpit.Generic.BC966IFF.detonator_switch
	[190] = "%.1f", --IFF966_OPER,TUMB,190,1,0,1,Cockpit.Generic.BC966IFF.power_switch
	[307] = "%.1f", --T_T_F_SW,TUMB,307,-1,0,1,Cockpit.Mosquito.transmitter_type_f_switch

	--Three-Way Selector
	[327] = "%.1f", --BOMB_DOORS,BTN,327,-1,-1,0,Cockpit.Mosquito.bomb_doors_lever
	[328] = "%.1f", --CHASSIS,BTN,328,1,0,1,Cockpit.Mosquito.chassis_lever
	[329] = "%.1f", --FLAPS,BTN,329,-1,-1,0,Cockpit.Mosquito.flaps_lever
	[117] = "%.1f", --CHASSIS_GATE,TUMB,117,1,0,1,Cockpit.Mosquito.chassis_gate
	[353] = "%.1f", --FLAPS_GATE,TUMB,353,-1,0,1,Cockpit.Mosquito.flaps_gate


	--VHF Radio
	[32] = "%.1f", --RCTRL_OFF,BTN,32,1,0,1,Cockpit.SpitfireLFMkIX.radio_0
	[33] = "%.1f", --RCTRL_A,BTN,33,1,0,1,Cockpit.SpitfireLFMkIX.radio_a
	[34] = "%.1f", --RCTRL_B,BTN,34,1,0,1,Cockpit.SpitfireLFMkIX.radio_b
	[35] = "%.1f", --RCTRL_C,BTN,35,1,0,1,Cockpit.SpitfireLFMkIX.radio_c
	[36] = "%.1f", --RCTRL_D,BTN,36,1,0,1,Cockpit.SpitfireLFMkIX.radio_d
	[42] = "%.1f", --RCTRL_DIM,TUMB,42,1,0,1,Cockpit.SpitfireLFMkIX.radio_dimmer
	[44] = "%.1f", --RCTRL_T,TUMB,44,1,0,1,Cockpit.SpitfireLFMkIX.radio_mode
	[364] = "%.1f", --RCTRL_VOL,LEV,364,0,0,1,Cockpit.SpitfireLFMkIX.radio_volume
	[43] = "%.1f", --RCTRL_TLOCK,TUMB,43,-1,0,1,Cockpit.SpitfireLFMkIX.radio_lock
	[4] = "%.1f", --PTT_ES,BTN,4,1,0,1,SCR-522 PTT Button

	--Weapons
	[120] = "%.1f", --GUN_MASTER_COVER,TUMB,120,-1,0,1,Cockpit.Mosquito.gun_firing_master_switch_cover
	[121] = "%.1f", --GUN_MASTER,TUMB,121,1,0,1,Cockpit.Mosquito.gun_firing_master_switch
	[245] = "%.1f", --MACHINEGUN_FIRING,BTN,245,1,0,1,Cockpit.Bf109K4.trigger_a
	[246] = "%.1f", --GUN_FIRING,BTN,246,1,0,1,Cockpit.Bf109K4.trigger_b2
	[244] = "%.1f", --CAMERA_GUN,BTN,244,1,0,1,Cockpit.Bf109K4.trigger_b2
	[8] = "%.1f", --WING_TANK_JETTSON_COVER,TUMB,8,1,0,1,Cockpit.Mosquito.wing_tank_jettison_button_cover
	[9] = "%.1f", --WING_TANK_JETTSON,BTN,9,1,0,1,Cockpit.Mosquito.wing_tank_jettison_button
	[323] = "%.1f", --HARNESS_LEVER,TUMB,323,1,0,1,Cockpit.Generic.harness_release_lever
	[107] = "%.1f", --GUNSIGHT_RANGE,LEV,107,0,0,1,Cockpit.SpitfireLFMkIX.gun_sight_range
	[108] = "%.1f", --GUNSIGHT_BASE,LEV,108,0,0,1,Cockpit.SpitfireLFMkIX.gun_sight_span
	[144] = "%.1f", --JETTISON_CONTAINERS_COVER,TUMB,144,-1,0,1,Cockpit.Mosquito.containers_jettison_button_cover
	[145] = "%.1f", --JETTISON_CONTAINERS,BTN,145,1,0,1,Cockpit.Mosquito.containers_jettison_button
	[311] = "%.1f", --BOMB_PANEL_LOCK,TUMB,311,-1,0,1,Cockpit.Mosquito.bomb_aimers_panel_protective_cover
	[143] = "%.1f", --CINE_CAMERA,TUMB,143,1,0,1,Cockpit.Mosquito.bomb_aimers_panel_trigger_changeover_switch
	[148] = "%.1f", --WING_BOMBS_OR_TANKS_1,TUMB,148,-1,0,1,Cockpit.Mosquito.bomb_aimers_panel_station_1_switch
	[149] = "%.1f", --WING_BOMBS_OR_TANKS_2,TUMB,149,1,0,1,Cockpit.Mosquito.bomb_aimers_panel_station_2_switch
	[150] = "%.1f", --FUSELAGE_BOMBS_3,TUMB,150,-1,0,1,Cockpit.Mosquito.bomb_aimers_panel_station_3_switch
	[151] = "%.1f", --FUSELAGE_BOMBS_4,TUMB,151,1,0,1,Cockpit.Mosquito.bomb_aimers_panel_station_4_switch
	[152] = "%.1f", --ALL_BOMBS_NOSE,TUMB,152,-1,0,1,Cockpit.Mosquito.bomb_aimers_panel_nose_fusing_switch
	[153] = "%.1f" --ALL_BOMBS_TAIL,TUMB,153,1,0,1,Cockpit.Mosquito.bomb_aimers_panel_tail_fusing_switch
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
	
	
	ExportScript.engineInstruments(mainPanelDevice)
	ExportScript.navigation1Tile(mainPanelDevice)
	ExportScript.gunnerTile(mainPanelDevice)
	ExportScript.trimReadouts(mainPanelDevice)
	--ExportScript.gearFlapsBombBayTile(mainPanelDevice) --TODO In Progress
	ExportScript.airspeedAltitudeVerticalSpeedTile(mainPanelDevice)
	ExportScript.StallSpeeds(mainPanelDevice)
	
	--[[
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
]]--
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
	
	ExportScript.fuelTanksTiles(mainPanelDevice)
	ExportScript.VhfRadioTile(mainPanelDevice)
	ExportScript.CrazyRadioTile(mainPanelDevice)
	ExportScript.PilotRadioTile(mainPanelDevice)
	ExportScript.airTemp(mainPanelDevice)
	ExportScript.oxygenTile(mainPanelDevice)	
	ExportScript.BestPowerTiles(mainPanelDevice)
	ExportScript.MaxSpeedTiles(mainPanelDevice)
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

function ExportScript.engineInstruments(mainPanelDevice)

-----------------------------
-- Left Engine Instruments --
-----------------------------

	local guage_rpmLeft = math.floor(mainPanelDevice:get_argument_value(50) * 5000)
	guage_rpmLeft = format_int(round(guage_rpmLeft,-1))
	ExportScript.Tools.SendData(3000, guage_rpmLeft) --raw rpm value
	
	local guage_boostLeft_x = {0.0,0.052,0.142,0.289,0.425,0.547,0.662,0.776,0.887,0.983,1.0}--remove osme decimal places plz
	local guage_boostLeft_y = {-7.0,-6.0,-4.0,0.0,4.0,8.0,12.0,16.0,20.0,24.0,25.0}
	local guage_boostLeft =  ExportScript.Linearize(mainPanelDevice:get_argument_value(54), guage_boostLeft_x, guage_boostLeft_y)
	guage_boostLeft = round(guage_boostLeft,1)
	ExportScript.Tools.SendData(3001, guage_boostLeft)--TODO. always show the 0 at the end of a solid number
	
	local guage_oilTempLeft = math.floor(mainPanelDevice:get_argument_value(56) * 100)
	ExportScript.Tools.SendData(3002, guage_oilTempLeft) --raw oil temp value
	
	local guage_oilPresLeft = math.floor(mainPanelDevice:get_argument_value(58) * 150)
	ExportScript.Tools.SendData(3003, guage_oilPresLeft) --raw oil pressure value
	
	local guage_radTempLeft_x = {0.0,0.078,0.203,0.287,0.391,0.496,0.652,0.80,1.0}--remove osme decimal places plz
	local guage_radTempLeft_y = {40,60,80,90,100,110,120,130,140}
	local guage_radTempLeft =  ExportScript.Linearize(mainPanelDevice:get_argument_value(60), guage_radTempLeft_x, guage_radTempLeft_y)
	guage_radTempLeft = round(guage_radTempLeft,0)
	ExportScript.Tools.SendData(3004, guage_radTempLeft)
	
	ExportScript.Tools.SendData(4000, "ENG L\n" .. 
										"RPM " .. guage_rpmLeft .. "\n" ..
										"Boost " .. guage_boostLeft)
										
	ExportScript.Tools.SendData(4001, "Oil T " .. guage_oilTempLeft .. "°C\n" .. 
										"Oil P " .. guage_oilPresLeft .. "\n" ..
										"Rad T " .. guage_radTempLeft .. "°C")
										
------------------------------
-- Right Engine Instruments --
------------------------------

	local guage_rpmRight = math.floor(mainPanelDevice:get_argument_value(52) * 5000)
	guage_rpmRight = format_int(round(guage_rpmRight, -1))
	ExportScript.Tools.SendData(3005, guage_rpmRight) --raw rpm value
	
	local guage_boostRight_x = {0.0,0.052,0.142,0.289,0.425,0.547,0.662,0.776,0.887,0.983,1.0}
	local guage_boostRight_y = {-7.0,-6.0,-4.0,0.0,4.0,8.0,12.0,16.0,20.0,24.0,25.0}
	local guage_boostRight =  ExportScript.Linearize(mainPanelDevice:get_argument_value(55), guage_boostRight_x, guage_boostRight_y)
	guage_boostRight = round(guage_boostRight,1)
	ExportScript.Tools.SendData(3006, guage_boostRight)--TODO. always show the 0 at the end of a solid number
	
	local guage_oilTempRight = math.floor(mainPanelDevice:get_argument_value(57) * 100)
	ExportScript.Tools.SendData(3007, guage_oilTempRight) --raw oil temp value
	
	local guage_oilPresRight = math.floor(mainPanelDevice:get_argument_value(59) * 150)
	ExportScript.Tools.SendData(3008, guage_oilPresRight) --raw oil pressure value
	
	local guage_radTempRight_x = {0.0,0.078,0.203,0.287,0.391,0.496,0.652,0.80,1.0}--remove osme decimal places plz
	local guage_radTempRight_y = {40,60,80,90,100,110,120,130,140}
	local guage_radTempRight =  ExportScript.Linearize(mainPanelDevice:get_argument_value(61), guage_radTempRight_x, guage_radTempRight_y)
	guage_radTempRight = round(guage_radTempRight,0)
	ExportScript.Tools.SendData(3009, guage_radTempRight)
	
	ExportScript.Tools.SendData(4002, "ENG R\n" .. 
										"RPM " .. guage_rpmRight .. "\n" ..
										"Boost " .. guage_boostRight)
										
	ExportScript.Tools.SendData(4003, "Oil T " .. guage_oilTempRight .. "°C\n" .. 
										"Oil P " .. guage_oilPresRight .. "\n" ..
										"Rad T " .. guage_radTempRight .. "°C")

end


function ExportScript.gunnerTile(mainPanelDevice)
	--[107] = "%.1f", --3045,GUNSIGHT_RANGE,LEV,107,0,0,1,Cockpit.SpitfireLFMkIX.gun_sight_range
	--[108] = "%.1f", --3048,GUNSIGHT_BASE,LEV,108,0,0,1,Cockpit.SpitfireLFMkIX.gun_sight_span	
	
	local gunSightRange_x = {0.0,0.288,0.537,0.764,1.0}--remove osme decimal places plz
	local gunSightRange_y = {100.0,200.0,300.0,400.0,500.0}
	local gunSightRange =  ExportScript.Linearize(mainPanelDevice:get_argument_value(107), gunSightRange_x, gunSightRange_y)
	gunSightRange = round(gunSightRange,0)
	ExportScript.Tools.SendData(3010, gunSightRange)
	
	local gunSightSpan_x = {0.0,0.113,0.224,0.336,0.438,0.663,0.9,1.0}--remove some decimal places plz
	local gunSightSpan_y = {100.0,90.0,80.0,70.0,60.0,50.0,40.0,35.0}
	local gunSightSpan =  ExportScript.Linearize(mainPanelDevice:get_argument_value(108), gunSightSpan_x, gunSightSpan_y)
	gunSightSpan = round(gunSightSpan,0)
	ExportScript.Tools.SendData(3011, gunSightSpan)
	
	
	--Wingspan in feet
	local v1_wingspanFt = 19
	local I16_wingspanFt = 30
	local BF109_wingspanFt = 32
	local Fw190_wingspanFt = 34
	local spitfire_wingspanFt = 32
	local P40P51_wingspanFt = 51
	local P47_wingspanFt =  41
	local mosquito_wingspanFt =  54
	local B17G_wingspanFt =  104
	
	local optimalTargetWidthName
	
	if gunSightSpan >= (v1_wingspanFt - 1) and gunSightSpan <= (v1_wingspanFt + 1) then
		optimalTargetWidthName = "V1"
	elseif gunSightSpan >= (I16_wingspanFt - 1) and gunSightSpan <= (I16_wingspanFt + 1) then
		optimalTargetWidthName = "I-16"
	elseif gunSightSpan >= (BF109_wingspanFt - 1) and gunSightSpan <= (BF109_wingspanFt + 1) then
		optimalTargetWidthName = "BF109"
	elseif gunSightSpan >= (Fw190_wingspanFt - 1) and gunSightSpan <= (Fw190_wingspanFt + 1) then
		optimalTargetWidthName = "Fw109"
	elseif gunSightSpan >= (spitfire_wingspanFt - 1) and gunSightSpan <= (spitfire_wingspanFt + 1) then
		optimalTargetWidthName = "Spitfire"
	elseif gunSightSpan >= (P40P51_wingspanFt - 1) and gunSightSpan <= (P40P51_wingspanFt + 1) then
		optimalTargetWidthName = "P-40/51"
	elseif gunSightSpan >= (P47_wingspanFt - 1) and gunSightSpan <= (P47_wingspanFt + 1) then
		optimalTargetWidthName = "P-47"
	elseif gunSightSpan >= (mosquito_wingspanFt - 1) and gunSightSpan <= (mosquito_wingspanFt + 1) then
		optimalTargetWidthName = "Mossie"
	elseif gunSightSpan >= (B17G_wingspanFt - 1) and gunSightSpan <= (B17G_wingspanFt + 1) then
		optimalTargetWidthName = "B-17G"
	else
		optimalTargetWidthName = "Tgt - N/A"
	end

	ExportScript.Tools.SendData(3012, "Optimal\nTarget\n" .. optimalTargetWidthName)
	
	ExportScript.Tools.SendData(4004, "Gun Sight\nRng " .. gunSightRange .. " YA\n" .. "Base " .. gunSightSpan .. " ft\n" .. optimalTargetWidthName)

end


function ExportScript.fuelTanksTiles(mainPanelDevice)

----------------
-- Inner Fuel --
----------------
	local fuelInnerTankLeft_x = {0.0,0.1,0.2,0.355098,0.492801,0.623399,0.740702,0.859403,0.938302}
	local fuelInnerTankLeft_y = {0.0,10.0,20.0,40.0,60.0,80.0,100.0,120.0,146.0}
	local fuelInnerTankLeft =  ExportScript.Linearize(mainPanelDevice:get_argument_value(92), fuelInnerTankLeft_x, fuelInnerTankLeft_y)
	fuelInnerTankLeft = round(fuelInnerTankLeft,0)
	ExportScript.Tools.SendData(3013, fuelInnerTankLeft)

	local fuelInnerTankRight_x = {0.0,0.1,0.2,0.355098,0.492801,0.623399,0.740702,0.859403,0.938302}
	local fuelInnerTankRight_y = {0.0,10.0,20.0,40.0,60.0,80.0,100.0,120.0,146.0}
	local fuelInnerTankRight =  ExportScript.Linearize(mainPanelDevice:get_argument_value(93), fuelInnerTankRight_x, fuelInnerTankRight_y)
	fuelInnerTankRight = round(fuelInnerTankRight,0)
	ExportScript.Tools.SendData(3014, fuelInnerTankRight)
	
	local fuelInnerTankTotal = fuelInnerTankRight + fuelInnerTankLeft
	ExportScript.Tools.SendData(3015, fuelInnerTankTotal)
	
	ExportScript.Tools.SendData(4005, "Fuel Inner\n" .. "PORT " .. fuelInnerTankLeft .. "\n" ..
										"STBD " .. fuelInnerTankRight .. "\n" ..
										"Total " .. fuelInnerTankTotal)
										
-----------------
-- Center Fuel --
----------------- 
--You can induce false reading with negative Gs for testing

	local fuelCenterTankNo10_x = {0,0.1262,0.309701,0.506199,0.682902,0.8871}
	local fuelCenterTankNo10_y = {0.0,10.0,20.0,30.0,40.0,53.0}
	local fuelCenterTankNo10 =  ExportScript.Linearize(mainPanelDevice:get_argument_value(94), fuelCenterTankNo10_x, fuelCenterTankNo10_y)
	fuelCenterTankNo10 = round(fuelCenterTankNo10,0)
	ExportScript.Tools.SendData(3016, fuelCenterTankNo10)
	
	local fuelCenterTankNo12_x = {0,0.0808,0.189,0.377599,0.5304,0.669502,0.8124,0.9264}
	local fuelCenterTankNo12_y = {0.0,5.0,10.0,20.0,30.0,40.0,50.0,63.0}

	local fuelCenterTankNo12 =  ExportScript.Linearize(mainPanelDevice:get_argument_value(95), fuelCenterTankNo12_x, fuelCenterTankNo12_y)
	fuelCenterTankNo12 = round(fuelCenterTankNo12,0)
	ExportScript.Tools.SendData(3017, fuelCenterTankNo12)
	
	local fuelCenterTankTotal = fuelCenterTankNo10 + fuelCenterTankNo12
	ExportScript.Tools.SendData(3018, fuelCenterTankTotal)
	
	ExportScript.Tools.SendData(4006, "Fuel Center\n" .. "№10 " .. fuelCenterTankNo10 .. "\n" ..
										"№12 " .. fuelCenterTankNo12 .. "\n" ..
										"Total " .. fuelCenterTankTotal)
										
-----------------------
-- Outer Tanks Fuel --
-----------------------			

	local fuelOuterTankLeft_x = {0.0,0.1366,0.332098,0.566099,0.7699,0.909902}
	local fuelOuterTankLeft_y = {0.0,10.0,20.0,30.0,40.0,59.0}
	local fuelOuterTankLeft =  ExportScript.Linearize(mainPanelDevice:get_argument_value(96), fuelOuterTankLeft_x, fuelOuterTankLeft_y)
	fuelOuterTankLeft = round(fuelOuterTankLeft, 0)
	ExportScript.Tools.SendData(3019, fuelOuterTankLeft)
	
	local fuelOuterTankRight_x = {0.0,0.1366,0.332098,0.566099,0.7699,0.909902}
	local fuelOuterTankRight_y = {0.0,10.0,20.0,30.0,40.0,59.0}
	local fuelOuterTankRight =  ExportScript.Linearize(mainPanelDevice:get_argument_value(97), fuelOuterTankRight_x, fuelOuterTankRight_y)
	fuelOuterTankRight = round(fuelOuterTankRight, 0)
	ExportScript.Tools.SendData(3020, fuelOuterTankRight)
	
	local fuelOuterTankTotal = fuelOuterTankRight + fuelOuterTankLeft
	ExportScript.Tools.SendData(3021, fuelOuterTankTotal)
	
	ExportScript.Tools.SendData(4007, "Fuel Outer\n" .. "PORT " .. fuelOuterTankLeft .. "\n" ..
										"STBD " .. fuelOuterTankRight .. "\n" ..
										"Total " .. fuelOuterTankTotal)
										
----------------
-- Total Fuel --
----------------											
	
	local fuelAircraftTotal = fuelInnerTankTotal + fuelCenterTankTotal + fuelOuterTankTotal
	ExportScript.Tools.SendData(3022, fuelAircraftTotal)
	ExportScript.Tools.SendData(4008, "Inner " .. fuelInnerTankTotal .. "\n" ..
										"Center " .. fuelCenterTankTotal .. "\n" ..
										"Outer " .. fuelOuterTankTotal ..  "\n"  ..
										"Fuel Tot "  .. fuelAircraftTotal)									

end


function ExportScript.VhfRadioTile(mainPanelDevice) --https://streamable.com/nnjgpt
--TODO find a way to always show three digits

		--ExportScript.Tools.SendData(3051, GetDevice(27):get_frequency()) -- receiver raw
		local switchPosition_R1155 = mainPanelDevice:get_argument_value(231)
		local R1155_freq
		
		if switchPosition_R1155 < 0.05 then -- black/blue band
			R1155_freq = (GetDevice(27):get_frequency())/1000000
		elseif switchPosition_R1155 < 0.15 then -- blue/red band
			R1155_freq = (GetDevice(27):get_frequency())/1000000
		elseif switchPosition_R1155 < 0.25 then -- black1 band
			R1155_freq = (GetDevice(27):get_frequency())/10000
		elseif switchPosition_R1155 < 0.35 then -- yellow band
			R1155_freq = (GetDevice(27):get_frequency())/1000
		else --switchPosition_R1155 < 0.45 then -- black2 band
			R1155_freq = (GetDevice(27):get_frequency())/1000
		end
		
		--R1155_freq = round(R1155_freq,3)
		R1155_freq = ExportScript.Tools.RoundFreqeuncy(R1155_freq, Format, PrefixZeros, 0.001)
		ExportScript.Tools.SendData(3023, R1155_freq) -- receiver
		
		
		--ExportScript.Tools.SendData(3050, GetDevice(26):get_frequency()) -- transmitter raw
		local switchPosition_T1154 = mainPanelDevice:get_argument_value(215)
		local T1154_freq
		
		if switchPosition_T1154 <= 0.05 then
			T1154_freq = (GetDevice(26):get_frequency())/1000000
		elseif switchPosition_T1154 <= 0.15 then
			T1154_freq = (GetDevice(26):get_frequency())/1000000
		else
			T1154_freq = (GetDevice(26):get_frequency())/1000
		end
		
		--T1154_freq = round(T1154_freq,3)
		T1154_freq = ExportScript.Tools.RoundFreqeuncy(T1154_freq, Format, PrefixZeros, 0.001)
		ExportScript.Tools.SendData(3024, T1154_freq) -- transmitter
		
		ExportScript.Tools.SendData(4016, "R1155 \n" ..  R1155_freq .. "\n"
											.. "T1154 \n" .. T1154_freq )
end


function ExportScript.PilotRadioTile(mainPanelDevice)
-- VHF_Radio
	local lVHF_Radio = GetDevice(24)
	local VhfRadioFreq
	if lVHF_Radio:is_on() then
		ExportScript.Tools.SendData(3025, string.format("%7.3f", lVHF_Radio:get_frequency()/1000000))
		VhfRadioFreq = ExportScript.Tools.RoundFreqeuncy(lVHF_Radio:get_frequency()/1000000)
		ExportScript.Tools.SendData(3025, VhfRadioFreq)
	else
		ExportScript.Tools.SendData(3025, "       ")
	end

	
	--[32] = "%.1f", --3001,RCTRL_OFF,BTN,32,1,0,1,Cockpit.SpitfireLFMkIX.radio_0
	--[33] = "%.1f", --3002,RCTRL_A,BTN,33,1,0,1,Cockpit.SpitfireLFMkIX.radio_a
	--[34] = "%.1f", --3003,RCTRL_B,BTN,34,1,0,1,Cockpit.SpitfireLFMkIX.radio_b
	--[35] = "%.1f", --3004,RCTRL_C,BTN,35,1,0,1,Cockpit.SpitfireLFMkIX.radio_c
	--[36] = "%.1f", --3005,RCTRL_D,BTN,36,1,0,1,Cockpit.SpitfireLFMkIX.radio_d
	
	local lVHF_Radio_PRESET = ""
	if mainPanelDevice:get_argument_value(33) > 0.8 then   
		lVHF_Radio_PRESET = "A"
	elseif mainPanelDevice:get_argument_value(34) > 0.8 then   
		lVHF_Radio_PRESET = "B"
	elseif mainPanelDevice:get_argument_value(35) > 0.8 then   
		lVHF_Radio_PRESET = "C"
	elseif mainPanelDevice:get_argument_value(36) > 0.8 then   
		lVHF_Radio_PRESET = "D"
	else
		lVHF_Radio_PRESET = ""
	end
	ExportScript.Tools.SendData(3026, lVHF_Radio_PRESET)
	
	ExportScript.Tools.SendData(4009, string.format("Radio " .. lVHF_Radio_PRESET .. "\n"  .. VhfRadioFreq))
	
end


function ExportScript.CrazyRadioTile(mainPanelDevice)

	--this contains the formated table of the rear radio presets
	local mossie_list_indication_1 = ExportScript.Tools.split(list_indication(1), "%c")
	
	local preset_A
	local preset_B
	local preset_C
	local preset_D
	local preset_E
	local preset_F
	local preset_G
	--local preset_H
	--local preset_I
	local preset_J
	local preset_K
	local preset_L
	local preset_M
	local preset_N
	--local preset_O
	local preset_P
	local preset_Q
	--local preset_R
	local preset_S
	local preset_T
	local preset_U
	local preset_V
	local preset_W
	local preset_X
	local preset_Y
	--local preset_Z
							
	array_listOfPresetCallers = {"FRQ_0_0", "FRQ_0_1" ,"FRQ_0_2" ,"FRQ_0_3","FRQ_0_4","FRQ_0_5","FRQ_0_6" ,
							"FRQ_1_0","FRQ_1_1","FRQ_1_2","FRQ_1_3","FRQ_1_4","FRQ_1_5","FRQ_1_6" ,
							"FRQ_2_0","FRQ_2_1","FRQ_2_2","FRQ_2_3","FRQ_2_4","FRQ_2_5","FRQ_2_6"}	

	array_listOfPresets = {preset_A, preset_B ,preset_C ,preset_D ,preset_E ,preset_F ,preset_G ,
							preset_J ,preset_K ,preset_L ,preset_M ,preset_N ,preset_P ,preset_Q ,
							preset_S ,preset_T ,preset_U ,preset_V ,preset_W ,preset_X ,preset_Y}

	
	for i = 1,#array_listOfPresetCallers,1 do
		for k,v in pairs(mossie_list_indication_1) do
			if v == array_listOfPresetCallers[i] then
				array_listOfPresets[i] = mossie_list_indication_1[k+1]
			end
		end
	end 
	
	ExportScript.Tools.SendData(4010, "Blue Radio\n" ..
										"A " .. array_listOfPresets[1] .. "\n" ..
										"B " .. array_listOfPresets[2] .. "\n" ..
										"C " .. array_listOfPresets[3] .. "\n")
										
										
	ExportScript.Tools.SendData(4011, "D " .. array_listOfPresets[4] .. "\n" ..
										"E " .. array_listOfPresets[5] .. "\n" ..
										"F " .. array_listOfPresets[6] .. "\n" ..
										"G " .. array_listOfPresets[7] .. "\n")	
										
	ExportScript.Tools.SendData(4012, "Red Radio\n" ..
										"J " .. array_listOfPresets[8] .. "\n" ..
										"K " .. array_listOfPresets[9] .. "\n" ..
										"L " .. array_listOfPresets[10] .. "\n")
										
										
	ExportScript.Tools.SendData(4013, "M " .. array_listOfPresets[11] .. "\n" ..
										"N " .. array_listOfPresets[12] .. "\n" ..
										"P " .. array_listOfPresets[13] .. "\n" ..
										"Q " .. array_listOfPresets[14] .. "\n")	

	ExportScript.Tools.SendData(4014, "Yellow Radio\n" ..
										"S " .. array_listOfPresets[15] .. "\n" ..
										"T " .. array_listOfPresets[16] .. "\n" ..
										"U " .. array_listOfPresets[17] .. "\n")
										
										
	ExportScript.Tools.SendData(4015, "V " .. array_listOfPresets[18] .. "\n" ..
										"W " .. array_listOfPresets[19] .. "\n" ..
										"X " .. array_listOfPresets[20] .. "\n" ..
										"Y " .. array_listOfPresets[21] .. "\n")										
end


function ExportScript.airTemp(mainPanelDevice)

	local airTemp_x = {0.0,0.103,0.889,1.0}
	local airTemp_y = {30.0,20.0,-60.0,-70.0}
	local airTemp =  ExportScript.Linearize(mainPanelDevice:get_argument_value(314), airTemp_x, airTemp_y)
	airTemp = round(airTemp, 0)
	ExportScript.Tools.SendData(3027, airTemp)
	ExportScript.Tools.SendData(4017, "Air Temp\n" .. airTemp .. "°C\n")
end


function ExportScript.navigation1Tile(mainPanelDevice)
	
	local dial_compass = math.floor(mainPanelDevice:get_argument_value(31) * 360)--TODO. This may not be the right instrument
	
	if dial_compass == 360 then
		dial_compass = 000
	end
	
	dial_compass = string.format("%.1d" , dial_compass)
	
	if #dial_compass == 2 then
		dial_compass = "0" .. dial_compass
	elseif #dial_compass == 1 then
		dial_compass = "00" .. dial_compass
	end
	
	ExportScript.Tools.SendData(3028, dial_compass)
	
	local dial_compassNeedle_1 = math.floor(mainPanelDevice:get_argument_value(47) * 360)
	
	if dial_compassNeedle_1 == 360 then
		dial_compassNeedle_1 = 000
	end
	
	dial_compassNeedle_1 = string.format("%.1d" , dial_compassNeedle_1)
	
	if #dial_compassNeedle_1 == 2 then
		dial_compassNeedle_1 = "0" .. dial_compassNeedle_1
	elseif #dial_compassNeedle_1 == 1 then
		dial_compassNeedle_1 = "00" .. dial_compassNeedle_1
	end
	
	ExportScript.Tools.SendData(3029, dial_compassNeedle_1)
	
	local dial_compassNeedle_2 = math.floor(mainPanelDevice:get_argument_value(48) * 360)
	
	if dial_compassNeedle_2 == 360 then
		dial_compassNeedle_2 = 000
	end
	
	dial_compassNeedle_2 = string.format("%.1d" , dial_compassNeedle_2)
	
	if #dial_compassNeedle_2 == 2 then
		dial_compassNeedle_2 = "0" .. dial_compassNeedle_2
	elseif #dial_compassNeedle_2 == 1 then
		dial_compassNeedle_2 = "00" .. dial_compassNeedle_2
	end
	
	ExportScript.Tools.SendData(3030, dial_compassNeedle_2)
	
	ExportScript.Tools.SendData(4018, "HDG " .. dial_compass
										.. "\nPNT 1 " .. dial_compassNeedle_1
										.. "\nPNT 2 " .. dial_compassNeedle_2)									
end


function ExportScript.airspeedAltitudeVerticalSpeedTile(mainPanelDevice)
	local dial_altimeter_tenThousands = math.floor(mainPanelDevice:get_argument_value(70) * 100000)
	local altitude = dial_altimeter_tenThousands
	altitude = round(altitude,-1)
	if altitude > 60000 then
		altitude = altitude - 100000
	end
	
	altitude = format_int(altitude)
	
	local dial_altimeterPressure = round((mainPanelDevice:get_argument_value(71) * 250) + 800,0)
	
	if string.find(dial_altimeterPressure, ".") then
		--the dot was there, dont do anything
	else --the dot is not there, so add it
		dial_altimeterPressure = string.format(dial_altimeterPressure .. ".0")
	end
	

	ExportScript.Tools.SendData(3031, "Altimeter" .. "\n" .. altitude .. "ft")
	ExportScript.Tools.SendData(3032, "Pressure" .. "\n" ..dial_altimeterPressure .. " hPa")
	ExportScript.Tools.SendData(4019, "Altitude\n" .. altitude .. " ft" .. "\n" .. dial_altimeterPressure .. " hPa")--mbar == hPa. really!

	local dial_airspeed = math.floor(mainPanelDevice:get_argument_value(64) * 1000) --thanks ED
	ExportScript.Tools.SendData(3033, "Airspeed\n" .. dial_airspeed .. " mph")
	
	
	local verticalSpeed_x = {-1.0, -0.7, -0.443, -0.2, 0.0, 0.2, 0.443, 0.7, 1.0}
	local verticalSpeed_y = {-4000.0, -3000.0, -2000.0, -1000.0, 0.0, 1000.0, 2000.0, 3000.0, 4000.0}
	local verticalSpeed =  ExportScript.Linearize(mainPanelDevice:get_argument_value(67), verticalSpeed_x, verticalSpeed_y)
	verticalSpeed = round(verticalSpeed, 0)
	verticalSpeed = format_int(verticalSpeed)
	
	ExportScript.Tools.SendData(3034, "VS\n" .. verticalSpeed .. " fpm")
	
	
	ExportScript.Tools.SendData(4020, "Instruments"
										.. "\n" .. dial_airspeed .. " mph"
										.. "\n" .. altitude .. " ft"
										.. "\n" .. verticalSpeed .. " fpm")

end


function ExportScript.trimReadouts(mainPanelDevice)
	
	local trimElevatorRaw = mainPanelDevice:get_argument_value(6)
	local trimElevatorDirection = "DOWN"
	local trimElevatorDirectionShorthand = "D"
	trimElevatorAmt = round(trimElevatorRaw * 100,0)
	
	
	if trimElevatorAmt > 1 then  --trim is positive, which is nose down
		trimElevatorDirection = "DOWN"
		trimElevatorDirectionShorthand = "D"
	elseif trimElevatorAmt < -1 then --trim is negative, which is nose up
		trimElevatorDirection = "UP"
		trimElevatorDirectionShorthand = "U"
	else --trim is basically neutral
		trimElevatorDirection = " "
	end
	
	trimElevatorAmt = math.abs(trimElevatorAmt)
	ExportScript.Tools.SendData(3035, "ELV TRM\n" .. trimElevatorAmt .. "% " .. trimElevatorDirection)
	
	
	local trimRudderRaw = mainPanelDevice:get_argument_value(110)
	local trimRudderDirection = "STBD"
	local trimRudderDirectionShortHand = "S"
	trimRudderAmt = round(trimRudderRaw * 100,0)
	
	
	if trimRudderAmt > 1 then  --trim is positive, which is stbd
		trimRudderDirection = "STBD"
		trimRudderDirectionShortHand = "S"
	elseif trimRudderAmt < -1 then --trim is negative, which is port
		trimRudderDirection = "PORT"
		trimRudderDirectionShortHand = "P"
	else --trim is basically neutral
		trimRudderDirection = " "
	end
	
	trimRudderAmt = math.abs(trimRudderAmt)
	ExportScript.Tools.SendData(3036, "RUD TRM\n" .. trimRudderAmt .. "% " .. trimRudderDirection)
	
	
	local trimAileronRaw = mainPanelDevice:get_argument_value(122)
	local trimAileronDirection = " "
	local trimAileronDirectionShortHand = " "
	trimAileronAmt = round(trimAileronRaw * 100,0)
	
	
	if trimAileronAmt > 1 then  --trim is positive
		trimAileronDirection = "Right"
		trimAileronDirectionShortHand = "R"
	elseif trimAileronAmt < -1 then --trim is negative
		trimAileronDirection = "Left"
		trimAileronDirectionShortHand = "L"
	else --trim is basically neutral
		trimAileronDirection = " "
	end
	
	trimAileronAmt = math.abs(trimAileronAmt)
	ExportScript.Tools.SendData(3037, "AIL TRM\n" .. trimAileronAmt .. "% " .. trimAileronDirection)
	
	ExportScript.Tools.SendData(4021, "TRIM"
										.. "\n" .. "ELV " .. trimElevatorAmt .. "% " .. trimElevatorDirectionShorthand  
										.. "\n" .. "RUD  " .. trimRudderAmt .. "% " .. trimRudderDirectionShortHand
										.. "\n" .. "AIL  " .. trimAileronAmt .. "% " .. trimAileronDirectionShortHand)
	
end


function ExportScript.gearFlapsBombBayTile(mainPanelDevice)

	----------------------------------------------
	---------Display: Gear Up and Down------------
	----------------------------------------------
	
	local light_gearRedUpLeft = mainPanelDevice:get_argument_value(77) --red up left
	local light_gearGreenDownLeft = mainPanelDevice:get_argument_value(78) --green down left
	local light_gearRedUpRight = mainPanelDevice:get_argument_value(79) --red up right
	local light_gearGreenDownRight = mainPanelDevice:get_argument_value(80) --green down right
	
	local isGearUp
	local isGearDown
	
	local gearStatusMessage
	local flapsStatusMessage
	local bombBayStatusMessage
	
	-- actual lit value is about 0.7728 (for green) and 0.9195 (for red)
	if (light_gearRedUpLeft >= 0.5) and (light_gearRedUpRight >= 0.5) then
		isGearUp = 1
		gearStatusMessage = "Gear - UP"
	else
		isGearUp = 0
		gearStatusMessage = "Gear - TRSNT"
	end
		
	if light_gearGreenDownLeft >= 0.5 and light_gearGreenDownRight >= 0.5 then
		isGearDown = 1
		gearStatusMessage = "Gear - DWN"
	else
		isGearDown = 0
		gearStatusMessage = "Gear - TRSNT"
	end
	
	ExportScript.Tools.SendData(3038, isGearUp)
	ExportScript.Tools.SendData(3039, isGearDown)
	
	
	
	
	--ExportScript.Tools.SendData(30XX, "AIL TRM\n" .. trimAileronAmt .. "% " .. trimAileronDirection)
	----------------------------------------------
	---------Display: Flaps--------------------
	----------------------------------------------
	
	local dial_flapIndicator = math.floor(mainPanelDevice:get_argument_value(81) * 100)
	
	if dial_flapIndicator >= 70 then
		dial_flapIndicator = 70
	end
	ExportScript.Tools.SendData(3040, dial_flapIndicator)	
	
	ExportScript.Tools.SendData(4022, "External"
										.. "\n" .. gearStatusMessage  
										.. "\n" .. "Flaps  " .. dial_flapIndicator
										.. "\n" .. "BBay  " .. "OPN-CLSED")
	
end


function ExportScript.oxygenTile(mainPanelDevice) -- 82, 83, 155, 156
	local dial_oxygenFlowRatePilot = math.floor(mainPanelDevice:get_argument_value(82) * 100)
	ExportScript.Tools.SendData(3041, dial_oxygenFlowRatePilot)
	
	--numbers above 40 are "EMERGENCY"
	
	local isDial_oxygenFlowRatePilotEmergency
	if dial_oxygenFlowRatePilot > 40 then
		isDial_oxygenFlowRatePilotEmergency = 1
	else
		isDial_oxygenFlowRatePilotEmergency = 0
	end
	ExportScript.Tools.SendData(3042, isDial_oxygenFlowRatePilotEmergency)
	
	
	local dial_oxygenSupplyPilotRaw = mainPanelDevice:get_argument_value(83)
	
	local dial_oxygenSupplyPilot = (
                          (87.118 * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw)
                        - (228.16 * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw)
                        + (189.84 * dial_oxygenSupplyPilotRaw * dial_oxygenSupplyPilotRaw)
                        + (51.237 * dial_oxygenSupplyPilotRaw)
                        - 0.0026)	
						
	dial_oxygenSupplyPilot = round(dial_oxygenSupplyPilot, 0)		
						
	ExportScript.Tools.SendData(3043, dial_oxygenSupplyPilot)
	
	--numbers below 12.5 (1/8 on the dial) are red zone
	local isDial_oxygenSupplyPilotRedZone
	if dial_oxygenSupplyPilot < 12.5 then
		isDial_oxygenSupplyPilotRedZone = 1
	else
		isDial_oxygenSupplyPilotRedZone = 0
	end
	ExportScript.Tools.SendData(3044, isDial_oxygenSupplyPilotRedZone)
	
	
	-----------------
	local dial_oxygenFlowRateCopilot = math.floor(mainPanelDevice:get_argument_value(155) * 100)
	ExportScript.Tools.SendData(3045, dial_oxygenFlowRateCopilot)
	
	--numbers above 40 are "EMERGENCY"
	
	local isDial_oxygenFlowRateCopilotEmergency
	if dial_oxygenFlowRateCopilot > 40 then
		isDial_oxygenFlowRateCopilotEmergency = 1
	else
		isDial_oxygenFlowRateCopilotEmergency = 0
	end
	ExportScript.Tools.SendData(3046, isDial_oxygenFlowRateCopilotEmergency)
	
	
	local dial_oxygenSupplyCopilotRaw = mainPanelDevice:get_argument_value(156)
	
	local dial_oxygenSupplyCopilot = (
                          (87.118 * dial_oxygenSupplyCopilotRaw * dial_oxygenSupplyCopilotRaw * dial_oxygenSupplyCopilotRaw * dial_oxygenSupplyCopilotRaw)
                        - (228.16 * dial_oxygenSupplyCopilotRaw * dial_oxygenSupplyCopilotRaw * dial_oxygenSupplyCopilotRaw)
                        + (189.84 * dial_oxygenSupplyCopilotRaw * dial_oxygenSupplyCopilotRaw)
                        + (51.237 * dial_oxygenSupplyCopilotRaw)
                        - 0.0026)	
						
	dial_oxygenSupplyCopilot = round(dial_oxygenSupplyCopilot, 0)		
						
	ExportScript.Tools.SendData(3047, dial_oxygenSupplyCopilot)
	
	--numbers below 12.5 (1/8 on the dial) are red zone
	local isDial_oxygenSupplyCopilotRedZone
	if dial_oxygenSupplyCopilot < 12.5 then
		isDial_oxygenSupplyCopilotRedZone = 1
	else
		isDial_oxygenSupplyCopilotRedZone = 0
	end
	ExportScript.Tools.SendData(3048, isDial_oxygenSupplyCopilotRedZone)
	
	-------------------
	
	
	local oxygenTilePilot_output = string.format("Oxy PLT" .. "\n"
											.. "Flow  " .. dial_oxygenFlowRatePilot .. "k ft\n"
											.. "Amt.  " .. dial_oxygenSupplyPilot)
											
									
	
	ExportScript.Tools.SendData(4023, oxygenTilePilot_output)
	
	local oxygenTileCopilot_output = string.format("Oxy CPLT" .. "\n"
											.. "CP Flow  ".. dial_oxygenFlowRateCopilot .. "k ft\n"
											.. "CP Amt.  ".. dial_oxygenSupplyCopilot)
	
	ExportScript.Tools.SendData(4024, oxygenTileCopilot_output)
	
	local oxygenTileBoth_output = string.format(--"Oxy PLT" .. "\n" 
											"P Flow  ".. dial_oxygenFlowRatePilot .. "k ft\n"
											.. "P Amt.  ".. dial_oxygenSupplyPilot .. "\n"
											.. "CP Flow  ".. dial_oxygenFlowRateCopilot .. "k ft\n"
											.. "CP Amt.  ".. dial_oxygenSupplyCopilot)
	
	ExportScript.Tools.SendData(4025, oxygenTileBoth_output)
	
	local isPilotOxygenEmergency
	if isDial_oxygenSupplyPilotRedZone == 1 or isDial_oxygenFlowRatePilotEmergency == 1 then
		isPilotOxygenEmergency = 1
	else
		isPilotOxygenEmergency = 0
	end
	
	ExportScript.Tools.SendData(3049, isPilotOxygenEmergency)
	
	local isCopilotOxygenEmergency
	if isDial_oxygenSupplyCopilotRedZone == 1 or isDial_oxygenFlowRateCopilotEmergency == 1 then
		isCopilotOxygenEmergency = 1
	else
		isCopilotOxygenEmergency = 0
	end
	
	ExportScript.Tools.SendData(3050, isCopilotOxygenEmergency)
	
	local isPilotOrCopilotOxygenEmergency
	if isPilotOxygenEmergency == 1 or isCopilotOxygenEmergency == 1 then
		isPilotOrCopilotOxygenEmergency = 1
	else
		isPilotOrCopilotOxygenEmergency = 0
	end
	
	ExportScript.Tools.SendData(3051, isPilotOrCopilotOxygenEmergency)
	
end


function ExportScript.BestPowerTiles(mainPanelDevice)
	
	ExportScript.Tools.SendData(4026, "Takeoff 5" .. "\n" .. "RPM 3,000\nBoost +12")
	
	ExportScript.Tools.SendData(4027, "Inter. 60" .. "\n" .. "RPM 2,850\nBoost +9\nRad 125°C\nOil 90°C")
	ExportScript.Tools.SendData(4028, "Max Cont." .. "\n" .. "RPM 2,650\nBoost +7\nRad 105°C\nOil 90°C")
	ExportScript.Tools.SendData(4029, "Emergency 5" .. "\n" .. "RPM 3,000\nBoost +25\nRad 125°C\nOil 105°C")
	
	------------------------------
	-- Max rate and range climb --
	------------------------------
	
	local maxRateAirspeed
	local maxRateGear
	local maxRateBoost
	
	local maxRangeRPM = 2650
	local maxRangeBoost = 7
	local maxRangeGear = "Low Gear"
	
	maxRateAirspeed = kts2mph(150)
	local dial_altimeter_tenThousands = math.floor(mainPanelDevice:get_argument_value(70) * 100000)
	local altitude = dial_altimeter_tenThousands
	altitude = round(altitude,-1)
	if altitude > 60000 then
		altitude = altitude - 100000
	end
	
	if altitude > 18000 then
		local altitudeDifference = altitude - 18000
		altitudeDifference = altitudeDifference / 1000
		maxRateAirspeed = maxRateAirspeed - (altitudeDifference * 2) --formula is on manual page 102
		maxRateAirspeed = round(maxRateAirspeed,0)
		maxRangeBoost = 9
		maxRangeRPM = 2850
	end
	
	
	local guage_boostLeft_x = {0.0,0.052,0.142,0.289,0.425,0.547,0.662,0.776,0.887,0.983,1.0}--remove osme decimal places plz
	local guage_boostLeft_y = {-7.0,-6.0,-4.0,0.0,4.0,8.0,12.0,16.0,20.0,24.0,25.0}
	local guage_boostLeft =  ExportScript.Linearize(mainPanelDevice:get_argument_value(54), guage_boostLeft_x, guage_boostLeft_y)
	guage_boostLeft = round(guage_boostLeft,1)
	
	maxRateBoost = 9
	maxRateGear = "Low Gear"
	
	if mainPanelDevice:get_argument_value(18) >= 0.98 then --aka, if the left throttle is basically maxed out
		if guage_boostLeft <= 7 then
			maxRateGear = "AUTO Gear"
		else
			maxRateGear = "Low Gear"
		end
	end
	
	if mainPanelDevice:get_argument_value(18) >= 0.98 then --aka, if the left throttle is basically maxed out
		if guage_boostLeft <= 4 then
			maxRangeGear = "AUTO Gear"
		else
			maxRangeGear = "Low Gear"
		end
	end
	
	ExportScript.Tools.SendData(4030, "Max Rate CLB" 
										.. "\n" .. "RPM 2,850"
										.. "\n" .. "Boost +" .. maxRateBoost
										.. "\n" .. maxRateGear
										.. "\n" .. maxRateAirspeed .. " mph")
										
	
										
	ExportScript.Tools.SendData(4031, "Max Range CLB" 
										.. "\n" .. "RPM " .. format_int(maxRangeRPM)
										.. "\n" .. "Boost +" .. maxRangeBoost
										.. "\n" .. maxRangeGear
										.. "\n" .. maxRateAirspeed .. " mph")
	
	-----------------
	-- Best Cruise --
	-----------------
	--page 103 of manual
	
	local bestCruiseGear = "AUTO Gear"
	local bestCruiseAirspeed = 170
	
	if altitude < 10000 then
		bestCruiseAirspeed = kts2mph(200)
	end
	
	local guage_rpmLeft = math.floor(mainPanelDevice:get_argument_value(50) * 5000)
	guage_rpmLeft = round(guage_rpmLeft,-1)
	
	local dial_airspeed = math.floor(mainPanelDevice:get_argument_value(64) * 1000) --thanks ED
	
	if guage_rpmLeft >= 2650 then
		if dial_airspeed < bestCruiseAirspeed then
			bestCruiseGear = "MOD Gear"
		else
			bestCruiseGear = "AUTO Gear"
		end
	end
	
	ExportScript.Tools.SendData(4032, "Best Cruise" 
										.. "\n" .. "RPM Min"
										.. "\n" .. "Boost +7"
										.. "\n" .. bestCruiseGear
										.. "\n" .. bestCruiseAirspeed .. " mph")
	--------------------------
	-- Approach Speed Tiles --
	-------------------------- page 106
	
	local landingText = "Landing 17k" .. "\n" .. "FLAP DOWN\n125 mph" .. "\n" .. "FLAP UP\n140 mph" --default string
	
	if mainPanelDevice:get_argument_value(18) < 0.5 then --aka, if the left throttle is basically 0
		--if mainPanelDevice:get_argument_value(19) < 0.5 then --aka, if the right throttle is basically 0
			landingText = "Landing 17k" .. "\n" .. "Glide DOWN\n140 mph" .. "\n" .. "Glide UP\n150 mph"
		else
			landingText = "Landing 17k" .. "\n" .. "FLAP DOWN\n125 mph" .. "\n" .. "FLAP UP\n140 mph"
		--end -- the dual throttle thing isnt working TODO
	end
	
	ExportScript.Tools.SendData(4033, landingText)
end


function ExportScript.MaxSpeedTiles(mainPanelDevice)
	local dial_altimeter_tenThousands = math.floor(mainPanelDevice:get_argument_value(70) * 100000)
	local altitude = dial_altimeter_tenThousands
	altitude = round(altitude,-1)
	if altitude > 60000 then
		altitude = altitude - 100000
	end
	
	local limitA
	local limitB
	local limitC
	local limitD
	
	if altitude < 10000 then
		limitA = kts2mph(370)
		limitB = kts2mph(330)
		limitC = kts2mph(350)
		limitD = kts2mph(305)
	elseif altitude < 15000 then
		limitA = kts2mph(350)
		limitB = kts2mph(330)
		limitC = kts2mph(350)
		limitD = kts2mph(305)
	elseif altitude < 20000 then
		limitA = kts2mph(320)
		limitB = kts2mph(320)
		limitC = kts2mph(320)
		limitD = kts2mph(305)
	elseif altitude < 25000 then
		limitA = kts2mph(295)
		limitB = kts2mph(295)
		limitC = kts2mph(295)
		limitD = kts2mph(295)
	elseif altitude < 30000 then
		limitA = kts2mph(260)
		limitB = kts2mph(260)
		limitC = kts2mph(260)
		limitD = kts2mph(260)
	else --if altitude < 35000 then
		limitA = kts2mph(235)
		limitB = kts2mph(235)
		limitC = kts2mph(235)
		limitD = kts2mph(235)
	end

	--the manual numbers are in knots TODO convert if confirmed via ED
	ExportScript.Tools.SendData(4034, "Slick " .. limitA .. " mph"
										.. "\nTanks " .. limitB .. " mph"
										.. "\nR.P. " .. limitC .. " mph"
										.. "\nExt. " .. limitD .. " mph")
										
										
	
	ExportScript.Tools.SendData(4035, "BBay " .. kts2mph(305) .. " mph"
										.. "\nGear " .. kts2mph(155) .. " mph"
										.. "\nF25° " .. kts2mph(175) .. " mph"
										.. "\nFDWN " .. kts2mph(130) .. " mph")
	
end


function ExportScript.StallSpeeds(mainPanelDevice)
-- stall warnings page 103 of manual
--	The approximate stall speeds at 18,000 feet and idle power are as follows:
--	▪ Undercarriage and flaps retracted: 105 knots
--	▪ Undercarriage and flaps extended: 95–100 knots
--	▪ Typical approach: 90–95 knots

--just make the highest number the warning because the gear lights are currently hard to get
	local dial_airspeed = math.floor(mainPanelDevice:get_argument_value(64) * 1000) 
	
	ExportScript.Tools.SendData(4036, "Stall Speeds"
										.. "\nRet. " .. kts2mph(105) .. " mph"
										.. "\nExt. " .. kts2mph(100) .. " mph"
										.. "\nApp. " .. kts2mph(95) .. " mph")
			
	local isAircraftStall = 0
	local stallSpeed = kts2mph(105)
	if dial_airspeed <= stallSpeed then
		isAircraftStall = 1
	end
	
	ExportScript.Tools.SendData(3052, isAircraftStall)
	
end

--[[
------------------------------
-- Ideas for implementation --
------------------------------

[
-Airspeed tile with color changes for limits
-gear up and down indicators
-overheat for engine instruments indicator
	-maybe have one tile that can display multiple things
-remember that you can get interesting things using
	-"local hindKneeboardInfo = ExportScript.Tools.split(list_indication(8), "%c")
		-this contains the formated table of the kneeboard of the hind"

-----------------------
-- Ideas for "Tiles" --
-----------------------

------------------ 
|     Brakes     |
| Supply: XXX    |
| Port: XX       |
| Starboard: XXX |
------------------ 

------------------
|     Status     |
| BOMB BAY: XXXX |
| GEAR: XXX      |
| FLAPS: XX      |
------------------ In Progress

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

-----------------
|  NAVIGATION2  |
| Compass: XXX  |
| Repeater: XXX |
| Director: XXX |
----------------- nogo

------------------- 
|     Oxygen      |
| PLT Flow: XXX   |
| PLT Supply: XX  |
| CPLT Flow: XXX  |
| CPLT Supply: XX |
------------------- complete

-------------
|  Radio 1  |
| Channel A |
------------- complete

----------------
|   Radio 2    |
| Band: Yellow |
| Freq: XXXXX  |
---------------- Complete

--------------
| Alt: XXXX  |
| Baro: XXXX |
| VSI: XXXX  |
-------------- Complete

-----------------
|  NAVIGATION1  |
| Repeater: XXX |
| Needle 1: XXX |
| Needle 2: XXX |
----------------- Complete

--------------------
|       Trim       |
| Aileron: L XX%   |
| Elevator: R XX%  |
| Rudder: Centered |
-------------------- Complete

------------
| Air Temp |
|   XXoC   |
------------ Complete

-------------   ------------- 
| Engine L	|	| Engine R	|
| RPM: XXX	|	| RPM: XXX	|
| Boost: XX	|	| Boost: XX	|
-------------	------------- Complete. 3000 and 3002

--------------   -------------
|  Engine L	 |	|  Engine R	 |
| Oil T: XXX |	| Oil T: XXX |
| Oil P: XXX |	| Oil P: XXX |
| Rad T: XXX |	| Rad T: XXX |
--------------	--------------  Complete. 3001 and 3003

-------------------
|    Fuel Inner   |
| Port: XX.X      |
| Starboard: XX.X |
| Total: XX.X     |
------------------- Complete. 4005

---------------
| Fuel Center |
| No10: XX.X  |
| No12: XX.X  |
| Total: XX.X |
--------------- Complete. 4006

-------------------
|    Fuel Outer   |
| Port: XX.X      |
| Starboard: XX.X |
| Total: XX.X     |
------------------- Complete. 4007

------------------
| Fuel Total XXX |
| Inner: XX.X    |
| Center: XX.X   |
| Outer: XX.X    |
------------------ Complete. 4008

-------------------
|   Gunner Sight  |
| Range: XXX      |
| Wingspan: XXX   |
| Ideal: NameAcft |
------------------- Complete. 4004

]]--

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


function kts2mph(kts) -- converts kts to floored mph
	local mph = kts * 1.15078
	mph = math.floor(mph)
	return mph
end

