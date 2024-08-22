-- DCS F-4E Phantom II by HEATBLUR

ExportScript.FoundDCSModule = true
ExportScript.Version.F4E45MC = "1.2.1"

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
    [1] = "%.1f",    -- Pilot_STICK_ROLL
    [2] = "%.1f",    -- Pilot_STICK_PITCH
    [3] = "%.1f",    -- WSO_STICK_ROLL
    [4] = "%.1f",    -- WSO_STICK_PITCH
    [5] = "%.1f",    -- Landing Gear_Lever {1, 0, 1, Landing Gear (Pull Out for Emergency)}
    [6] = "%.1f",    -- Toebrake_L
    [7] = "%.1f",    -- Toebrake_R
    [8] = "%.1f",    -- Pilot_Rudder_Pedal_Adjust
    [9] = "%.1f",    -- WSO_Rudder_Pedal_Adjust
    [38] = "%.1f",   -- ???
    [50] = "%.1f",   -- LGIndicator_UP_Right
    [51] = "%.1f",   -- LGindicator_UP_Nose
    [52] = "%.1f",   -- LGIndicator_UP_Left
    [54] = "%.1f",   -- RUDDER_PEDALS
    [55] = "%.1f",   -- Pilot_Canopy_Lock_Mech
    [56] = "%.1f",   -- WSO_Canopy_Lock_Mech
    [63] = "%.1f",   -- AntiSkid_Switch {-1, 0, 1, Anti-Skid Toggle}
    [64] = "%.1f",   -- AntiSkid_Inop_Light
    [65] = "%.1f",   -- WHEELS_Light
    [66] = "%.1f",   -- WHEELS_Handle_Light_Pilot
    [67] = "%.1f",   -- Pilot_G_Needle_First
    [68] = "%.1f",   -- Pilot_G_Needle_Second
    [69] = "%.1f",   -- Pilot_G_Needle_Third
    [70] = "%.1f",   -- Pilot_AOA_Needle
    [71] = "%.1f",   -- Pilot_AOA_OFF_Flag
    [72] = "%.1f",   -- Pilot_G_Button {1, 0, 1, Reset Accelerometer}
    [73] = "%.1f",   -- Radar_Alt_Needle
    [74] = "%.1f",   -- Radar_Low_Alt_Indicator
    [75] = "%.1f",   -- Radar_Alt_Off_Flag
    [76] = "%.2f",   -- Pilot_ICS_Volume {0.5, 0, 1, Change Intercom Volume}
    [77] = "%.1f",   -- Low_AoA_Indexer_Left_Pilot
    [78] = "%.1f",   -- Mid_AoA_Indexer_Left_Pilot
    [79] = "%.1f",   -- Top_AoA_Indexer_Left_Pilot
    [80] = "%.1f",   -- Mag_Compass_Hdg
    [81] = "%.1f",   -- Mag_Compass_Pitch
    [82] = "%.1f",   -- Mag_Compass_Bank
    [83] = "%.2f",   -- Radar_Alt_Function_Ctr_Switch {0, -0.2, 1, Move Bug (push to test rotate to 0, to turn off)}
    [84] = "%.1f",   -- Radar_Alt_Function_Ctr_Push {1, 0, 1, Move Bug (push to test rotate to 0, to turn off)}
    [85] = "%.1f",   -- Radar_Alt_Warning_Light
    [86] = "%.1f",   -- Pneumatic_Pressure_Needle
    [87] = "%.1f",   -- Pilot_Canopy
    [88] = "%.1f",   -- Copilot_Canopy
    [90] = "%.1f",   -- Pilot_VSI_Needle
    [91] = "%.3f",   -- Pilot_Altimeter_Needle
    [92] = "%.3f",   -- Pilot_Altimeter_Hundreds
    [93] = "%.3f",   -- Pilot_Altimeter_Thousands
    [94] = "%.3f",   -- Pilot_Altimeter_Tenthousands
    [95] = "%.2f",   -- Pilot_Altimeter_Set_Knob {0.5, 0, 1, Change Reference Pressure}
    [96] = "%.1f",   -- Pilot_Altimeter_Set_DecHundreds
    [97] = "%.1f",   -- Pilot_Altimeter_Set_DecTens
    [98] = "%.1f",   -- Pilot_Altimeter_Set_Ones
    [99] = "%.1f",   -- Pilot_Altimeter_Set_Tens
    [100] = "%.1f",  -- Pilot_Altimeter_ResetStby_Switch {-1, -1, 0, Change Mode (hold to reset)}
    [101] = "%.1f",  -- Pilot_Altimeter_Stby_Flag
    [102] = "%.1f",  -- Pilot_Machandairspeed_IAS_Needle
    [103] = "%.1f",  -- Pilot_Machandairspeed_Mach_Dial
    [104] = "%.1f",  -- Pilot_Machandairspeed_Bug_Airspeed
    [105] = "%.1f",  -- Pilot_Machandairspeed_Bug_Mach
    [106] = "%.2f",  -- Pilot_Machandairspeed_Knob_Rotation {0.5, 0, 1, Move Bug (toggle speed/mach bugs)}
    [107] = "%.1f",  -- Pilot_Machandairspeed_Knob_Position {1, 0, 1, Move Bug (toggle speed/mach bugs)}
    [108] = "%.1f",  -- Pitot_Heat_Switch {-1, 0, 1, Pitot Heat}
    [109] = "%.5f",  -- TAS_ones
    [110] = "%.5f",  -- TAS_tens
    [111] = "%.5f",  -- TAS_hundreds
    [112] = "%.5f",  -- TAS_thousands
    [113] = "%.1f",  -- SPC_switch {-1, 1, 0, CADC Corrections}
    [114] = "%.1f",  -- STATIC_CORR_OFF_light
    [115] = "%.1f",  -- ALT_ENCODER_OUT_light
    [118] = "%.1f",  -- Antenna_Selection_Switch {-1, 0, 1, Select Communication Antenna}
    [119] = "%.1f",  -- Pilot_COMM_CMD_Button {1, 0, 1, Toggle Radio Command}
    [120] = "%.1f",  -- Pilot_NAV_CMD_Button {1, 0, 1, Toggle TACAN Command}
    [121] = "%.2f",  -- Pilot_UHF_Volume_Control {0.5, 0, 1, Change UHF Volume}
    [122] = "%.2f",  -- Pilot_UHF_Mode_Selector_Knob {-0.2, 0, 1, Select Radio Mode}
    [123] = "%.4f",  -- Pilot_UHF_Communication_Channel_Control_Knob {-0.058823529, 0, 1, Set Comm Channel}
    [131] = "%.4f",  -- Pilot_UHF_Freq_Knob_DecHundreds {-0.333333333, 0, 1, Set Frequency (decimal hundreds)}
    [132] = "%.4f",  -- Pilot_UHF_Freq_Knob_DecOnes {-0.111111111, 0, 1, Set Frequency (decimal ones)}
    [133] = "%.4f",  -- Pilot_UHF_Freq_Knob_Ones {-0.111111111, 0, 1, Set Frequency (ones)}
    [134] = "%.4f",  -- Pilot_UHF_Freq_Knob_Tens {-0.111111111, 0, 1, Set Frequency (tens)}
    [135] = "%.1f",  -- Pilot_UHF_Set_Channel_Pushbutton {1, 0, 1, Load Selected Comm Channel}
    [136] = "%.4f",  -- Pilot_UHF_AUX_Channel_Control_Knob {-0.052631579, 0, 1, Set AUX Channel}
    [139] = "%.2f",  -- Pilot_UHF_AUX_Volume_Control {0.5, 0, 1, Change AUX Volume}
    [144] = "%.1f",  -- RIO_COMM_CMD_Button {1, 0, 1, Toggle Radio Command}
    [145] = "%.1f",  -- RIO_NAV_CMD_Button {1, 0, 1, Toggle TACAN Command}
    [146] = "%.2f",  -- RIO_UHF_Volume_Control {0.5, 0, 1, Change UHF Volume}
    [147] = "%.1f",  -- RIO_UHF_Mode_Selector_Switch {-1, 0, 1, Select Frequency Mode}
    [148] = "%.4f",  -- RIO_UHF_Communication_Channel_Control_Knob {-0.058823529, 0, 1, Set Comm Channel}
    [156] = "%.4f",  -- RIO_UHF_Freq_Knob_DecHundreds {-0.333333333, 0, 1, Set Frequency (decimal hundreds)}
    [157] = "%.4f",  -- RIO_UHF_Freq_Knob_DecOnes {-0.111111111, 0, 1, Set Frequency (decimal ones)}
    [158] = "%.4f",  -- RIO_UHF_Freq_Knob_Ones {-0.111111111, 0, 1, Set Frequency (ones)}
    [159] = "%.4f",  -- RIO_UHF_Freq_Knob_Tens {-0.111111111, 0, 1, Set Frequency (tens)}
    [160] = "%.1f",  -- RIO_UHF_Set_Channel_Pushbutton {1, 0, 1, Load Selected Comm Channel}
    [161] = "%.4f",  -- RIO_UHF_AUX_Channel_Control_Knob {-0.052631579, 0, 1, Set AUX Channel}
    [164] = "%.2f",  -- RIO_UHF_AUX_Volume_Control {0.5, 0, 1, Change AUX Volume}
    [169] = "%.1f",  -- Pilot_COMM_CMD_light
    [170] = "%.1f",  -- Pilot_NAV_CMD_light
    [171] = "%.1f",  -- RIO_NAV_CMD_light
    [172] = "%.1f",  -- RIO_COMM_CMD_light
    [177] = "%.1f",  -- Rio_G_Needle_First
    [178] = "%.1f",  -- Rio_G_Needle_Second
    [179] = "%.1f",  -- Rio_G_Needle_Third
    [180] = "%.1f",  -- Rio_G_Button {1, 0, 1, Reset Accelerometer}
    [181] = "%.1f",  -- Rio_VSI_Needle
    [182] = "%.1f",  -- Rio_Altimeter_Needle
    [183] = "%.1f",  -- Rio_Altimeter_Hundreds
    [184] = "%.1f",  -- Rio_Altimeter_Thousands
    [185] = "%.1f",  -- Rio_Altimeter_Tenthousands
    [186] = "%.4f",  -- Rio_Altimeter_Set_Knob {0.03, 0, 1, Change Reference Pressure}
    [187] = "%.1f",  -- Rio_Altimeter_Set_DecHundreds
    [188] = "%.1f",  -- Rio_Altimeter_Set_DecTens
    [189] = "%.1f",  -- Rio_Altimeter_Set_Ones
    [190] = "%.1f",  -- Rio_Altimeter_Set_Tens
    [191] = "%.1f",  -- Rio_Altimeter_ResetStby_Switch {-1, -1, 0, Change Mode (hold to reset)}
    [192] = "%.1f",  -- Rio_Altimeter_Stby_Flag
    [193] = "%.1f",  -- Rio_Machandairspeed_IAS_Needle
    [194] = "%.1f",  -- Rio_Machandairspeed_Mach_Dial
    [195] = "%.1f",  -- Rio_Machandairspeed_Bug_Airspeed
    [196] = "%.1f",  -- Rio_Machandairspeed_Bug_Mach
    [197] = "%.2f",  -- Rio_Machandairspeed_Knob_Rotation {0.5, 0, 1, Move Bug (toggle speed/mach bugs)}
    [198] = "%.1f",  -- Rio_Machandairspeed_Knob_Position {1, 0, 1, Move Bug (toggle speed/mach bugs)}
    [199] = "%.1f",  -- PILOT_BUS_TIE_OPEN_LIGHT
    [200] = "%.1f",  -- Pilot_Canopy_Handle {0, 0, 1, Canopy Control (Aft to Open)}
    [201] = "%.1f",  -- Copilot_Canopy_Handle {0, 0, 1, Canopy Control (Aft to Open)}
    [202] = "%.1f",  -- Pilot_Canopy_Jettison {0, 0, 1, Canopy Emergency Release (Pull to Jettison)}
    [203] = "%.1f",  -- Copilot_Canopy_Jettison {0, 0, 1, Canopy Emergency Release (Pull to Jettison)}
    [204] = "%.1f",  -- Pilot_Canopy_Manual_Unlock {0, 0, 1, Manual Canopy Unlock (command 'open' first)}
    [205] = "%.1f",  -- Copilot_Canopy_Manual_Unlock {0, 0, 1, Manual Canopy Unlock (command 'open' first)}
    [206] = "%.1f",  -- Pilot_Canopy_Visibility
    [207] = "%.1f",  -- Copilot_Canopy_Visibility
    [208] = "%.1f",  -- Pilot_WL_Canopy_Unlock_Vis
    [209] = "%.1f",  -- Copilot_WL_Canopy_Unlock_Vis
    [210] = "%.1f",  -- HYD_PRESS_PC_2
    [211] = "%.1f",  -- HYD_PRESS_UTILITY
    [212] = "%.1f",  -- HYD_PRESS_PC_1
    [218] = "%.1f",  -- Pilot_Master_Caution_Light
    [219] = "%.1f",  -- RIO_Master_Caution_Light
    [220] = "%.1f",  -- Pilot_Check_Hydraulics_Light
    [221] = "%.1f",  -- Master_Caution_Button {1, 0, 1, Reset Master Caution}
    [222] = "%.1f",  -- Pilot_Slats_Flaps_Control {-1, -1, 1, Flaps/Slats (Down for Out)}
    [223] = "%.1f",  -- Pilot_Slats_Flaps_Emergency {1, 0, 1, Flaps/Slats Emergency (Pull to Deploy)}
    [224] = "%.1f",  -- RIO_Slats_Flaps_Emergency {1, 0, 1, Flaps/Slats Emergency (Pull to Deploy)}
    [225] = "%.1f",  -- Pilot_Slats_Indicator
    [226] = "%.1f",  -- Pilot_Flaps_Indicator
    [227] = "%.1f",  -- RIO_Slats_Indicator
    [228] = "%.1f",  -- RIO_Flaps_Indicator
    [231] = "%.1f",  -- Pilot_Oxygen_Gauge
    [232] = "%.1f",  -- Pilot_Oxygen_Test {1, 0, 1, Test Oxygen Gauge}
    [233] = "%.1f",  -- Pilot_Oxygen_Pressure
    [234] = "%.1f",  -- Pilot_Oxygen_Flow_Light
    [235] = "%.1f",  -- Pilot_Oxygen_Pressure_Switch {-1, 1, 0, Select Oxygen Mode}
    [236] = "%.4f",  -- Pilot_Oxygen_Ratio_Switch {-1.00001, 0, 1, Select Oxygen Mixture}
    [237] = "%.4f",  -- Pilot_Oxygen_Supply_Switch {-1.00001, 0, 1, Oxygen Supply}
    [238] = "%.1f",  -- Oxygen_Low_Light
    [239] = "%.1f",  -- RIO_Oxygen_Gauge
    [240] = "%.1f",  -- RIO_Cockpit_Pressure_Gauge
    [241] = "%.1f",  -- RIO_Oxygen_Flow_Light
    [242] = "%.1f",  -- RIO_Oxygen_Pressure_Switch {-1, 1, 0, Select Oxygen Mode}
    [243] = "%.4f",  -- RIO_Oxygen_Ratio_Switch {-1.00001, 0, 1, Select Oxygen Mixture}
    [244] = "%.4f",  -- RIO_Oxygen_Supply_Switch {-1.00001, 0, 1, Oxygen Supply}
    [245] = "%.1f",  -- RIO_Oxygen_Pressure_Gauge
    [246] = "%.1f",  -- Pilot_Cockpit_Pressure_Gauge
    [247] = "%.1f",  -- Master_Arm_Switch {-1, 0, 1, Master Arm Switch}
    [248] = "%.1f",  -- Master_Arm_Vis
    [249] = "%.1f",  -- Gun_Arm_Button {-1, 0, 1, Arm/Disarm Gun}
    [250] = "%.1f",  -- LO_Arm_Button {-1, 0, 1, Arm/Disarm Left-Outer Station}
    [251] = "%.1f",  -- LI_Arm_Button {-1, 0, 1, Arm/Disarm Left-Inner Station}
    [252] = "%.1f",  -- CTR_Arm_Button {-1, 0, 1, Arm/Disarm Center Station}
    [253] = "%.1f",  -- RI_Arm_Button {-1, 0, 1, Arm/Disarm Right-Inner Station}
    [254] = "%.1f",  -- RO_Arm_Button {-1, 0, 1, Arm/Disarm Right-Outer Station}
    [255] = "%.1f",  -- Gun_Button_Lit
    [256] = "%.1f",  -- LO_Button_Lit
    [257] = "%.1f",  -- LI_Button_Lit
    [258] = "%.1f",  -- CTR_Button_Lit
    [259] = "%.1f",  -- RI_Button_Lit
    [260] = "%.1f",  -- RO_Button_Lit
    [261] = "%.1f",  -- Gun_Arm_Lit
    [262] = "%.1f",  -- LO_Arm_Lit
    [263] = "%.1f",  -- LI_Arm_Lit
    [264] = "%.1f",  -- CTR_Arm_Lit
    [265] = "%.1f",  -- RI_Arm_Lit
    [266] = "%.1f",  -- RO_Arm_Lit
    [267] = "%.3f",  -- Reticle_Depress_Knob {0, 0, 1, Change Reticle Depression (mil)}
    [268] = "%.1f",  -- Reticle_Depress_100s
    [269] = "%.1f",  -- Reticle_Depress_10s
    [270] = "%.1f",  -- Reticle_Depress_1s
    [271] = "%.3f",  -- HUD_Mode_Select {-0.1666, 0, 0.9996 Select HUD Mode}
    [272] = "%.4f",  -- Delivery_Mode_Knob {-0.0833, 0, 0.9996 Select Delivery Mode}
    [273] = "%.2f",  -- Weapon_Select_Knob {-0.142867143, 0, 1, Select Weapon}
    [274] = "%.1f",  -- Heads_Up_Gun_Light
    [275] = "%.1f",  -- Rounds_Remaining_100s
    [276] = "%.1f",  -- Rounds_Remaining_10s
    [277] = "%.1f",  -- Rounds_Remaining_1s
    [278] = "%.1f",  -- Gun_Rate_Switch {-1, 0, 1, Set Gun Rate}
    [279] = "%.1f",  -- Heads_Up_Radar_Light
    [280] = "%.1f",  -- Heads_Up_Heat_Light
    [281] = "%.1f",  -- Armament_Safety_Override {-1, 0, 1, Override Ground Safety (Gear Handle must be down)}
    [282] = "%.1f",  -- HUD_Shutter_Lever {-1, 0, 1, Toggle Collimator Shutter}
    [284] = "%.1f",  -- HEAT_Light_L
    [285] = "%.1f",  -- HEAT_Light_ML
    [286] = "%.1f",  -- HEAT_Light_MR
    [287] = "%.1f",  -- HEAT_Light_R
    [288] = "%.1f",  -- RADAR_Light_TL
    [289] = "%.1f",  -- RADAR_Light_BL
    [290] = "%.1f",  -- RADAR_Light_TR
    [291] = "%.1f",  -- RADAR_Light_BR
    [292] = "%.1f",  -- ENGINES_PILOT_LEFT_MASTER_SWITCH {-1, 0, 1, Left Engine Master Switch}
    [293] = "%.1f",  -- ENGINES_PILOT_RIGHT_MASTER_SWITCH {-1, 0, 1, Right Engine Master Switch}
    [294] = "%.1f",  -- ENGINES_PILOT_START_SWITCH {-1, -1, 0, Start Engine Switch}
    [295] = "%.1f",  -- ENGINES_PILOT_LEFT_IGNITION {1, 0, 1, Ignite Left Engine}
    [296] = "%.1f",  -- ENGINES_PILOT_RIGHT_IGNITION {1, 0, 1, Ignite Right Engine}
    [297] = "%.1f",  -- FUEL_PILOT_LEFT_GAUGE
    [298] = "%.1f",  -- FUEL_PILOT_RIGHT_GAUGE
    [299] = "%.1f",  -- ENGINES_TACHOMETER_LEFT_GAUGE
    [300] = "%.1f",  -- ENGINES_TACHOMETER_RIGHT_GAUGE
    [301] = "%.1f",  -- ENGINES_EXHAUST_TEMP_LEFT_GAUGE
    [302] = "%.1f",  -- ENGINES_EXHAUST_TEMP_RIGHT_GAUGE
    [303] = "%.1f",  -- ENGINES_NOZZLE_POSITION_LEFT_GAUGE
    [304] = "%.1f",  -- ENGINES_NOZZLE_POSITION_RIGHT_GAUGE
    [305] = "%.2f",  -- Bomb_Qty_Knob {-0.090919091, 0, 1, Select Quantity}
    [306] = "%.1f",  -- Bomb_Interval_Switch {-1, 0, 1, Select Interval Multiplier (x10)}
    [307] = "%.2f",  -- Bomb_Interval_Knob {0, 0, 1, Select Interval (s)}
    [308] = "%.1f",  -- WRCS_North_South_100s
    [309] = "%.1f",  -- WRCS_North_South_10s
    [310] = "%.1f",  -- WRCS_North_South_1s
    [311] = "%.1f",  -- WRCS_East_West_100s
    [312] = "%.1f",  -- WRCS_East_West_10s
    [313] = "%.1f",  -- WRCS_East_West_1s
    [314] = "%.1f",  -- WRCS_Advance_100s
    [315] = "%.1f",  -- WRCS_Advance_10s
    [316] = "%.1f",  -- WRCS_Advance_1s
    [317] = "%.1f",  -- WRCS_Range_100s
    [318] = "%.1f",  -- WRCS_Range_10s
    [319] = "%.1f",  -- WRCS_Range_1s
    [320] = "%.4f",  -- WRCS_North_South_Knob {0, 0, 1, Set Target N/S Distance (x100, ft)}
    [321] = "%.4f",  -- WRCS_East_West_Knob {0, 0, 1, Set Target E/W Distance (x100, ft)}
    [322] = "%.4f",  -- WRCS_Advance_Knob {0, 0, 1, Set Release Advance (ms)}
    [323] = "%.4f",  -- WRCS_Range_Knob {0, 0, 1, Set Release Range (x10, ft)}
    [324] = "%.1f",  -- WRCS_Alt_Range_100s
    [325] = "%.1f",  -- WRCS_Alt_Range_10s
    [326] = "%.1f",  -- WRCS_Alt_Range_1s
    [327] = "%.1f",  -- WRCS_Drag_100s
    [328] = "%.1f",  -- WRCS_Drag_10s
    [329] = "%.1f",  -- WRCS_Drag_1s
    [330] = "%.4f",  -- WRCS_Alt_Range_Knob {0, 0, 1, Set Target Altitude/Range (x100, ft}
    [331] = "%.1f",  -- WRCS_Drag_Knob {0, 0, 1, Set Drag Coefficient}
    [332] = "%.4f",  -- WRCS_Delivery_Mode_Knob {-0.16681, 0, 0.834 Select BIT Mode}
    [334] = "%.2f",  -- RADAR_Rio_Brightness {0.5, 0, 1, Change Grid Brightness}
    [336] = "%.4f",  -- RADAR_Rio_Power {-0.25, 0, 1, Radar Power Controls}
    [337] = "%.2f",  -- RADAR_Rio_Range {-0.2, 0, 1, Select Radar Range (nm)}
    [338] = "%.4f",  -- RADAR_Rio_Display {-0.25, 0, 1, Select Display Mode}
    [339] = "%.2f",  -- RADAR_Rio_Mode {-0.2, 0, 1, Select Radar Mode}
    [340] = "%.2f",  -- RADAR_Rio_Rcvr_Gain_Fine {0.5, 0, 1, Change Radar Receiver Gain (fine)}
    [341] = "%.2f",  -- RADAR_Rio_Rcvr_Gain_Coarse {0.5, 0, 1, Change Radar Receiver Gain (coarse)}
    [342] = "%.1f",  -- RADAR_Rio_Scan_Switch {-1, 0, 1, Select Scan Pattern}
    [343] = "%.1f",  -- Pilot_Emergency_Brake_Lever {1, 0, 1, Emergency Wheel Brake (Pull)}
    [344] = "%.1f",  -- Rio_Emergency_Brake_Lever {1, 0, 1, Emergency Wheel Brake (Pull)}
    [345] = "%.1f",  -- WRCS_North_South_Wheel
    [346] = "%.1f",  -- WRCS_East_West_Wheel
    [347] = "%.1f",  -- Pilot_CW_Switch {-1, -1, 1, Select Radar-Missile CW}
    [348] = "%.1f",  -- Pilot_Interlock_Switch {-1, 0, 1, Select Interlock Position}
    [349] = "%.1f",  -- Centreline_Tank_Light
    [350] = "%.1f",  -- ARBCS_Pullup_Tone_Switch {-1, 0, 1, LABS Pull-Up Tone}
    [351] = "%.4f",  -- ARBCS_Low_Angle_Knob {1, 0, 1, Set LABS Low Angle}
    [352] = "%.4f",  -- ARBCS_High_Angle_Knob {1, 0, 1, Set LABS High Angle}
    [353] = "%.1f",  -- ARBCS_Low_Angle_1s
    [354] = "%.1f",  -- ARBCS_Low_Angle_10s
    [355] = "%.1f",  -- ARBCS_Low_Angle_100s
    [356] = "%.1f",  -- ARBCS_High_Angle_1s
    [357] = "%.1f",  -- ARBCS_High_Angle_10s
    [358] = "%.1f",  -- ARBCS_High_Angle_100s
    [359] = "%.1f",  -- ARBCS_High_Angle_1000s
    [360] = "%.1f",  -- ARBCS_Timer_Pullup_1s
    [361] = "%.1f",  -- ARBCS_Timer_Pullup_10s
    [362] = "%.1f",  -- ARBCS_Timer_Pullup_100s
    [363] = "%.1f",  -- ARBCS_Timer_Release_1s
    [364] = "%.1f",  -- ARBCS_Timer_Release_10s
    [365] = "%.1f",  -- ARBCS_Timer_Release_100s
    [366] = "%.1f",  -- Pilot_Gyro_Fast_Erect_Switch {-1, 0, 1, Set Gyro Mode}
    [367] = "%.1f",  -- Pilot_Pullup_Light_Visibility
    [368] = "%.1f",  -- Pilot_Pullup_Light_Press {1, 0, 1, LABS Pull-Up Light (push to test rotate to dim)}
    [369] = "%.4f",  -- ARBCS_Pullup_Timer_Knob {0, 0, 1, Set Bombing Pull-Up Timer (seconds)}
    [370] = "%.4f",  -- ARBCS_Release_Timer_Knob {0, 0, 1, Set Bombing Release Timer (seconds)}
    [371] = "%.1f",  -- RADAR_Rio_Pulse {-1, -1, 1, Select Pulse Length}
    [372] = "%.1f",  -- RADAR_Rio_Track {-1, -1, 1, Select Track Mode}
    [373] = "%.1f",  -- Pilot_InRange_Light_Visibility
    [374] = "%.1f",  -- Pilot_Shoot_Light_Visibility
    [375] = "%.1f",  -- Low_AoA_Indexer_Right_Pilot
    [376] = "%.1f",  -- Mid_AoA_Indexer_Right_Pilot
    [377] = "%.1f",  -- Top_AoA_Indexer_Right_Pilot
    [378] = "%.1f",  -- Low_AoA_Indexer_Right_Rio
    [379] = "%.1f",  -- Mid_AoA_Indexer_Right_Rio
    [380] = "%.1f",  -- Top_AoA_Indexer_Right_Rio
    [381] = "%.1f",  -- PILOT_APR36_I_SAM_BUTTON {1, 0, 1, Priority/Open Mode}
    [382] = "%.1f",  -- PILOT_APR36_G_SAM_BUTTON {1, 0, 1, Search}
    [383] = "%.1f",  -- PILOT_APR36_E_SAM_BUTTON {1, 0, 1, Handoff}
    [384] = "%.1f",  -- PILOT_APR37_MISSILE_LAUNCH_BUTTON {1, 0, 1, (no function)}
    [385] = "%.1f",  -- PILOT_APR36_AAA_DEF_BUTTON {1, 0, 1, Low/Altitude Mode}
    [386] = "%.1f",  -- PILOT_APR36_AI_BUTTON {1, 0, 1, Target Separation}
    [387] = "%.1f",  -- PILOT_APR36_G_LORO_BUTTON {1, 0, 1, System Test}
    [388] = "%.1f",  -- PILOT_APR36_AAA_GCI_BUTTON {1, 0, 1, Unknown}
    [389] = "%.1f",  -- PILOT_APR36_ACTIVITY_PWR_BUTTON {1, 0, 1, (no function)}
    [390] = "%.1f",  -- PILOT_APR36_SYSTEM_POWER_BUTTON {1, 0, 1, System Power}
    [420] = "%.1f",  -- Pilot_Slip_Ball
    [421] = "%.1f",  -- Pilot_Turn_Indicator
    [534] = "%.1f",  -- RIO_ADI_OFF_FLAG
    [535] = "%.1f",  -- DSCG_AMBIENT_LIGHT_PILOT
    [536] = "%.1f",  -- DSCG_AMBIENT_LIGHT_WSO
    [600] = "%.1f",  -- TAS_Rio_ones
    [601] = "%.1f",  -- TAS_Rio_tens
    [602] = "%.1f",  -- TAS_Rio_hundreds
    [603] = "%.1f",  -- TAS_Rio_thousands
    [604] = "%.1f",  -- GS_ones
    [605] = "%.1f",  -- GS_tens
    [606] = "%.1f",  -- GS_hundreds
    [607] = "%.1f",  -- GS_thousands
    [610] = "%.1f",  -- Rio_Slip_Ball
    [611] = "%.1f",  -- Rio_Turn_Indicator
    [612] = "%.2f",  -- ADI_Pitch_Trim_Knob {0.5, 0, 1, Adjust Pitch}
    [613] = "%.1f",  -- ADI_Heading
    [614] = "%.1f",  -- ADI_Roll
    [615] = "%.1f",  -- ADI_Pitch
    [616] = "%.1f",  -- ADI_Bank_Steering_Bar
    [617] = "%.1f",  -- ADI_Pitch_Steering_Bar
    [618] = "%.1f",  -- ADI_Bank_Pointers
    [619] = "%.1f",  -- ADI_Glideslope
    [620] = "%.1f",  -- ADI_Course_Warning_Flag
    [621] = "%.1f",  -- ADI_Glideslope_Warning_Flag
    [622] = "%.1f",  -- ADI_Attitude_Warning_Flag
    [624] = "%.1f",  -- STDBYADI_Intensity_knob
    [625] = "%.1f",  -- STDBYADI_Pitch
    [626] = "%.1f",  -- STDBYADI_Roll
    [627] = "%.1f",  -- STDBYADI_Off_Flag
    [628] = "%.1f",  -- STDBYADI_Cage_Knob {1, 0, 1, Cage/Uncage (turn to trim)}
    [629] = "%.1f",  -- STDBYADI_Trim_Knob
    [630] = "%.1f",  -- STDBYADI_Miniature_Trim
    [631] = "%.1f",  -- RIO_ADI_Pitch
    [632] = "%.1f",  -- RIO_ADI_Roll
    [633] = "%.2f",  -- RIO_ADI_Trim_Knob {0.5, 0, 1, Adjust Pitch}
    [634] = "%.1f",  -- RIO_ADI_Roll_Pointer
    [635] = "%.1f",  -- PILOT_AURAL_TONE_VOLUME {1, 0, 1, Aural Tone Volume}
    [636] = "%.1f",  -- WSO_STALL_WARNING_VOLUME {1, 0, 1, AoA Stall Warning Volume}
    [637] = "%.1f",  -- Low_AoA_Indexer_Left_Rio
    [638] = "%.1f",  -- Mid_AoA_Indexer_Left_Rio
    [639] = "%.1f",  -- Top_AoA_Indexer_Left_Rio
    [640] = "%.2f",  -- Pilot_TACAN_Chan_Ones_Knob {-0.1, 0, 0.9 Set TACAN Channel (ones)}
    [641] = "%.4f",  -- Pilot_TACAN_Chan_TensAndMore_Knob {-0.083333333, 0, 1, Set TACAN Channel (hundreds)}
    [642] = "%.2f",  -- Pilot_TACAN_Volume {0.5, 0, 1, Change TACAN Volume}
    [643] = "%.1f",  -- Pilot_TACAN_Chan_Ones
    [644] = "%.1f",  -- Pilot_TACAN_Chan_Tens
    [645] = "%.1f",  -- Pilot_TACAN_Chan_Hundreds
    [646] = "%.4f",  -- Pilot_TACAN_Mode_Knob {-0.25, 0, 1, Select TACAN Mode}
    [647] = "%.4f",  -- Rio_TACAN_Chan_Ones_Knob {-0.111111111, 0, 1, Set TACAN Channel (ones)}
    [648] = "%.4f",  -- Rio_TACAN_Chan_TensAndMore_Knob {-0.083333333, 0, 1, Set TACAN Channel (hundreds)}
    [649] = "%.2f",  -- Rio_TACAN_Volume {0.5, 0, 1, Change TACAN Volume}
    [650] = "%.1f",  -- Rio_TACAN_Chan_Ones
    [651] = "%.1f",  -- Rio_TACAN_Chan_Tens
    [652] = "%.1f",  -- Rio_TACAN_Chan_Hundreds
    [653] = "%.4f",  -- Rio_TACAN_Mode_Knob {-0.25, 0, 1, Select TACAN Mode}
    [654] = "%.1f",  -- PILOT_TACAN_XY_KNOB {-1, 0, 1, Set TACAN Channel (X/Y)}
    [655] = "%.1f",  -- PILOT_TACAN_TEST_BUTTON {1, 0, 1, Test TACAN}
    [656] = "%.1f",  -- PILOT_TACAN_XY_DIAL
    [657] = "%.1f",  -- PILOT_TACAN_TEST_LIGHT
    [658] = "%.1f",  -- RIO_TACAN_XY_KNOB {-1, 0, 1, Set TACAN Channel (X/Y)}
    [659] = "%.1f",  -- RIO_TACAN_TEST_BUTTON {1, 0, 1, Test TACAN}
    [660] = "%.1f",  -- RIO_TACAN_XY_DIAL
    [661] = "%.1f",  -- RIO_TACAN_TEST_LIGHT
    [662] = "%.4f",  -- PILOT_NAV_FUNCT_SEL_PANEL_BRG_DIST_SWITCH {-0.333333333, 0, 1, Select Navigation Input}
    [663] = "%.4f",  -- PILOT_NAV_FUNCT_SEL_PANEL_SOURCE_MODE_SELECTOR_KNOB {-0.333333333, 0, 1, Select Navigation Mode}
    [664] = "%.2f",  -- RIO_TACAN_NAV_FUNCTION_SELECTOR_SWITCH {-0.5, 0, 1, Select Navigation Input}
    [665] = "%.1f",  -- PILOT_NAV_FUNCT_SEL_PANEL_FD_SWITCH {-1, 0, 1, Toggle Flight Director (vertical - off)}
    [668] = "%.3f",  -- PILOT_HSI_COMPASS_CARD
    [669] = "%.1f",  -- PILOT_HSI_BEARING_POINTER
    [670] = "%.1f",  -- PILOT_HSI_COURSE_ARROW
    [671] = "%.1f",  -- PILOT_HSI_COURSE_DEVIATION_IND
    [672] = "%.1f",  -- PILOT_HSI_HEADING_MARKER
    [673] = "%.1f",  -- PILOT_HSI_COURSE_SET_KNOB {0, 0, 1, Set HSI Course}
    [674] = "%.1f",  -- PILOT_HSI_COURSE_SET_ONES
    [675] = "%.1f",  -- PILOT_HSI_COURSE_SET_TENS
    [676] = "%.1f",  -- PILOT_HSI_COURSE_SET_HUNDREDS
    [677] = "%.1f",  -- PILOT_HSI_TO_FROM_ARROW
    [678] = "%.1f",  -- PILOT_HSI_HEADING_SET_KNOB {0, 0, 1, Set HSI Heading}
    [679] = "%.1f",  -- PILOT_HSI_RANGE_ONES
    [680] = "%.1f",  -- PILOT_HSI_RANGE_TENS
    [681] = "%.1f",  -- PILOT_HSI_RANGE_HUNDREDS
    [682] = "%.1f",  -- PILOT_HSI_RANGE_THOUSANDS
    [683] = "%.1f",  -- PILOT_HSI_RANGE_WARNING_FLAG
    [684] = "%.1f",  -- PILOT_HSI_NAV_LIGHT
    [685] = "%.1f",  -- PILOT_HSI_DL_LEFT_LIGHT
    [686] = "%.1f",  -- PILOT_HSI_ILS_LIGHT
    [687] = "%.1f",  -- PILOT_HSI_MAN_LIGHT
    [688] = "%.1f",  -- PILOT_HSI_TAC_LIGHT
    [689] = "%.1f",  -- PILOT_HSI_TGT_LIGHT
    [690] = "%.1f",  -- PILOT_HSI_UHF_LIGHT
    [691] = "%.1f",  -- PILOT_HSI_DL_RIGHT_LIGHT
    [692] = "%.1f",  -- ADI_PILOT_STBY_SWITCH {-1, 0, 1, Select Reference System}
    [693] = "%.1f",  -- ILS_PILOT_MKR_BCN_LIGHT
    [700] = "%.1f",  -- ENGINES_PILOT_DEICE_SWITCH {-1, 0, 1, Engine Anti-Icing Switch}
    [705] = "%.1f",  -- FUELSYS_PILOT_REFUEL_SEL_COVER {-1, 0, 1, Refuel Tank Selector Cover}
    [706] = "%.1f",  -- FUELSYS_PILOT_REFUEL_SEL_SWITCH {-1, 0, 1, Select Tank to Refuel}
    [709] = "%.1f",  -- FUELSYS_PILOT_WING_DUMP_SWITCH {-1, 0, 1, Wing Fuel Dump Selector}
    [710] = "%.1f",  -- FUELSYS_PILOT_WING_INTERNAL_TRANS_SWITCH {-1, 0, 1, Internal Wing Tanks Feed}
    [711] = "%.1f",  -- FUELSYS_PILOT_WING_EXTERNAL_TRANS_SWITCH {-1, -1, 1, External Tanks Feed}
    [712] = "%.1f",  -- FUELSYS_PILOT_AIR_REFUEL_SWITCH {-1, 0, 1, Air Refuel Switch}
    [713] = "%.1f",  -- FUELSYS_PILOT_BOOST_PUMP_PRESS_IND_L
    [714] = "%.1f",  -- FUELSYS_PILOT_BOOST_PUMP_PRESS_IND_R
    [715] = "%.1f",  -- ENGINES_WSO_TACHOMETER_LEFT_GAUGE
    [716] = "%.1f",  -- ENGINES_WSO_TACHOMETER_RIGHT_GAUGE
    [717] = "%.1f",  -- ENGINES_PILOT_OIL_PRESS_L_GAUGE
    [718] = "%.1f",  -- ENGINES_PILOT_OIL_PRESS_R_GAUGE
    [719] = "%.1f",  -- FUELSYS_PILOT_FUEL_IND_ROLLER_TENS
    [720] = "%.1f",  -- FUELSYS_PILOT_FUEL_IND_ROLLER_HUNDREDS
    [721] = "%.1f",  -- FUELSYS_PILOT_FUEL_IND_ROLLER_THOUSANDS
    [722] = "%.1f",  -- FUELSYS_PILOT_FUEL_IND_ROLLER_TENSOFTHOUSANDS
    [723] = "%.1f",  -- FUELSYS_PILOT_FUEL_IND_TAPE
    [725] = "%.1f",  -- FUELSYS_PILOT_BOOST_PUMP_SW_L {1, 0, 1, Left Boost Pump}
    [726] = "%.1f",  -- FUELSYS_PILOT_BOOST_PUMP_SW_R {1, 0, 1, Right Boost Pump}
    [752] = "%.1f",  -- ENGINES_PILOT_RIGHT_THROTTLE
    [753] = "%.1f",  -- ENGINES_PILOT_LEFT_THROTTLE
    [775] = "%.1f",  -- VR_BODY_PILOT
    [776] = "%.1f",  -- VR_BODY_WSO
    [800] = "%.1f",  -- CLOCK_PILOT_HAND_HOURS
    [801] = "%.1f",  -- CLOCK_PILOT_HAND_MINUTES
    [802] = "%.1f",  -- STOPWATCH_PILOT_HAND_SECONDS
    [803] = "%.1f",  -- STOPWATCH_PILOT_HAND_MINUTES
    [804] = "%.1f",  -- CLOCK_RIO_HAND_HOURS
    [805] = "%.1f",  -- CLOCK_RIO_HAND_MINUTES
    [806] = "%.1f",  -- STOPWATCH_RIO_HAND_SECONDS
    [807] = "%.1f",  -- STOPWATCH_RIO_HAND_MINUTES
    [808] = "%.1f",  -- STOPWATCH_PILOT_RESET_BUTTON {1, 0, 1, Start/Stop/Reset Stopwatch}
    [809] = "%.2f",  -- CLOCK_PILOT_KNOB_ROTATION {0.5, 0, 1, Set Time (pull to turn)}
    [810] = "%.1f",  -- STOPWATCH_RIO_RESET_BUTTON {1, 0, 1, Start/Stop/Reset Stopwatch}
    [811] = "%.2f",  -- CLOCK_RIO_KNOB_ROTATION {0.5, 0, 1, Set Time (pull to turn)}
    [812] = "%.1f",  -- CLOCK_PILOT_KNOB_TRANSLATION {1, 0, 1, Set Time (pull to turn)}
    [813] = "%.1f",  -- CLOCK_RIO_KNOB_TRANSLATION {1, 0, 1, Set Time (pull to turn)}
    [900] = "%.4f",  -- NAV_COMP_RIO_FUNCTION_SELECTOR_KNOB {-0.25, 0, 1, Select Navigation Computer Mode}
    [901] = "%.1f",  -- NAV_COMP_RIO_WIND_MAG_KNOB {0, 0, 1, Set Wind Strength (knots)}
    [902] = "%.1f",  -- NAV_COMP_RIO_WIND_MAG_ONES
    [903] = "%.1f",  -- NAV_COMP_RIO_WIND_MAG_TENS
    [904] = "%.1f",  -- NAV_COMP_RIO_WIND_MAG_HUNDREDS
    [905] = "%.1f",  -- NAV_COMP_RIO_WIND_DIR_KNOB {0, 0, 1, Set Wind Direction (degrees)}
    [906] = "%.1f",  -- NAV_COMP_RIO_WIND_DIR_ONES
    [907] = "%.1f",  -- NAV_COMP_RIO_WIND_DIR_TENS
    [908] = "%.1f",  -- NAV_COMP_RIO_WIND_DIR_HUNDREDS
    [909] = "%.2f",  -- NAV_COMP_RIO_MAG_VAR_KNOB {0.5, 0, 1, Set Magnetic Variation (push to turn)}
    [910] = "%.1f",  -- NAV_COMP_RIO_MAG_VAR_FLAG
    [911] = "%.1f",  -- NAV_COMP_RIO_MAG_VAR_ONES
    [912] = "%.1f",  -- NAV_COMP_RIO_MAG_VAR_TENS
    [913] = "%.1f",  -- NAV_COMP_RIO_MAG_VAR_HUNDREDS
    [914] = "%.4f",  -- NAV_COMP_RIO_POS_LATITUDE_KNOB {0,   Set Position (N/S Lat) (push to turn)}
    [915] = "%.1f",  -- NAV_COMP_RIO_POS_LATITUDE_ONES
    [916] = "%.1f",  -- NAV_COMP_RIO_POS_LATITUDE_TENS
    [917] = "%.1f",  -- NAV_COMP_RIO_POS_LATITUDE_HUNDREDS
    [918] = "%.1f",  -- NAV_COMP_RIO_POS_LATITUDE_THOUSANDS
    [919] = "%.1f",  -- NAV_COMP_RIO_POS_LATITUDE_FLAG
    [920] = "%.4f",  -- NAV_COMP_RIO_POS_LONGITUDE_KNOB {0,   Set Position (E/W Long) (push to turn)}
    [921] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_FLAG
    [922] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_ONES
    [923] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_TENS
    [924] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_HUNDREDS
    [925] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_THOUSANDS
    [926] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_TENTHOUSANDS
    [927] = "%.2f",  -- NAV_COMP_RIO_TARGET_LATITUDE_KNOB {0.5, 0, 1, Set Target Position (N/S Lat)}
    [928] = "%.1f",  -- NAV_COMP_RIO_TARGET_LATITUDE_ONES
    [929] = "%.1f",  -- NAV_COMP_RIO_TARGET_LATITUDE_TENS
    [930] = "%.1f",  -- NAV_COMP_RIO_TARGET_LATITUDE_HUNDREDS
    [931] = "%.1f",  -- NAV_COMP_RIO_TARGET_LATITUDE_THOUSANDS
    [932] = "%.1f",  -- NAV_COMP_RIO_TARGET_LATITUDE_FLAG
    [933] = "%.2f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_KNOB {0.5, 0, 1, Set Target Position (E/W Long)}
    [934] = "%.1f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_FLAG
    [935] = "%.1f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_ONES
    [936] = "%.1f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_TENS
    [937] = "%.1f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_HUNDREDS
    [938] = "%.1f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_THOUSANDS
    [939] = "%.1f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_TENTHOUSANDS
    [940] = "%.2f",  -- NAV_COMP_RIO_POSITION_UPDATE_SWITCH {0, 0, 0.5, Set Position Update Mode}
    [941] = "%.1f",  -- NAV_COMP_RIO_POSITION_VARIATION_SYNC_METER
    [942] = "%.1f",  -- NAV_COMP_RIO_TEST_CAP_OFF_LIGHT
    [943] = "%.1f",  -- NAV_COMP_RIO_LAT_SYNC_LIGHT
    [944] = "%.1f",  -- NAV_COMP_RIO_LONG_SYNC_LIGHT
    [945] = "%.1f",  -- NAV_COMP_RIO_AIR_DATA_MODE_LIGHT
    [946] = "%.1f",  -- NAV_COMP_RIO_MAG_VAR_KNOB_PUSH {1, 0, 1, Set Magnetic Variation (push to turn)}
    [947] = "%.1f",  -- NAV_COMP_RIO_POS_LATITUDE_KNOB_PUSH {1, 0, 1, Set Position (N/S Lat) (push to turn)}
    [948] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_KNOB_PUSH {1, 0, 1, Set Position (E/W Long) (push to turn)}
    [949] = "%.1f",  -- BDHI_WSO_COMPASS_CARD
    [950] = "%.1f",  -- BDHI_WSO_POINTER_1
    [951] = "%.1f",  -- BDHI_WSO_POINTER_2
    [952] = "%.1f",  -- BDHI_WSO_RANGE_ONES
    [953] = "%.1f",  -- BDHI_WSO_RANGE_TENS
    [954] = "%.1f",  -- BDHI_WSO_RANGE_HUNDREDS
    [955] = "%.4f",  -- COMPASS_PANEL_PILOT_MODE_SELECTOR_KNOB {1, 0.666666667, 1, Set Compass Mode (hold to sync)}
    [956] = "%.1f",  -- COMPASS_PANEL_PILOT_SET_HEADING_KNOB {0, -1, 1, Set Compass Heading (press to rotate)}
    [957] = "%.1f",  -- COMPASS_PANEL_PILOT_REF_SYS_SELECTOR_SWITCH
    [958] = "%.2f",  -- COMPASS_PANEL_PILOT_LATITUDE_CONTROL_KNOB {0.5, 0, 1, Set Compass Latitude}
    [959] = "%.1f",  -- COMPASS_PANEL_PILOT_SYNC_INDICATOR_METER
    [960] = "%.1f",  -- COMPASS_PANEL_PILOT_HEMISPHERE_SWITCH {-1, 0, 1, Change Hemisphere}
    [961] = "%.1f",  -- PILOT_GUN_CAMERA_SWITCH {-1, 0, 1, Gun Camera Switch}
    [962] = "%.1f",  -- PILOT_GUN_CAMERA_BUTTON {1, 0, 1, Take Strike Camera Picture}
    [964] = "%.1f",  -- PILOT_RUDDER_TRIM_SWITCH {-1, -1, 0, Rudder Trim}
    [965] = "%.1f",  -- PILOT_EXT_STORES_EMERG_RELEASE_BUTTON {1, 0, 1, Emergency Release External Stores}
    [966] = "%.1f",  -- PILOT_STAB_TRIM_INDICATOR
    [967] = "%.1f",  -- PILOT_WEAPON_SLEW_X
    [968] = "%.1f",  -- PILOT_WEAPON_SLEW_Y
    [971] = "%.1f",  -- PILOT_L_GEN_SWITCH {-1, -1, 1, Left Generator}
    [972] = "%.1f",  -- PILOT_R_GEN_SWITCH {-1, -1, 1, Right Generator}
    [973] = "%.1f",  -- WSO_INSTRUMENT_GROUND_POWER_SWITCH {-1, 0, 1, Instrument Ground Power Switch}
    [974] = "%.1f",  -- PILOT_HOOK_HANDLE {0, 0, 1, Tailhook Deploy Lever}
    [975] = "%.1f",  -- PILOT_RWR_KNOB {1, 0, 1, Screen Brightness}
    [976] = "%.1f",  -- PILOT_APR_DIM_KNOB {1, 0, 1, Light Brightness}
    [977] = "%.2f",  -- PILOT_APR_AUDIO_KNOB {0.5, 0, 1, RWR Audio Volume}
    [978] = "%.1f",  -- PILOT_FIRE_TEST_BUTTON {1, 0, 1, Test Fire System}
    [979] = "%.2f",  -- PILOT_FLT_INST_KNOB {0.5, 0, 1, Change Flight Instrument Brightness}
    [980] = "%.2f",  -- PILOT_STATION_SELECT_DIM_KNOB {0.5, 0, 1, Change Panel Button Brightness}
    [981] = "%.1f",  -- PILOT_COOLING_RESET_BUTTON {1, 0, 1, Reset Cooling}
    [982] = "%.1f",  -- PILOT_RAIN_REMOVAL_SWITCH {-1, 0, 1, Toggle Rain Removal}
    [983] = "%.1f",  -- WSO_EMERG_GEAR_HANDLE {1, 0, 1, Emergency Gear Handle (Pull to Release)}
    [984] = "%.1f",  -- WSO_L_GEAR_INDICATOR_UP
    [986] = "%.1f",  -- WSO_NOSE_GEAR_INDICATOR_UP
    [988] = "%.1f",  -- WSO_R_GEAR_INDICATOR_UP
    [990] = "%.1f",  -- ENGINES_WSO_THROTTLE_LEFT
    [991] = "%.1f",  -- ENGINES_WSO_THROTTLE_RIGHT
    [992] = "%.1f",  -- WSO_GUN_CAMERA_SWITCH {-1, 0, 1, Toggle Gun Camera}
    [993] = "%.1f",  -- WSO_CORRECTION_SWITCH {-1, -1, 1, Maverick Contrast-Lock Polarity}
    [994] = "%.1f",  -- WSO_COOLING_RESET_BUTTON {1, 0, 1, Reset Cooling Button}
    [995] = "%.1f",  -- WSO_EJECTION_COMMAND_SELECTOR_VALVE {0, 0, 1, Ejection Command Selector (vert: WSO horz: Both)}
    [996] = "%.1f",  -- INS_WSO_ALIGN_MODE_COVER {-1, 0, 1, INS Align Mode Cover}
    [997] = "%.1f",  -- INS_WSO_ALIGN_MODE_SWITCH {-1, 0, 1, INS Align Mode Switch}
    [998] = "%.4f",  -- INS_WSO_POWER_KNOB {-0.333333333, 0, 1, INS Power Knob}
    [999] = "%.1f",  -- INS_WSO_ALIGN_LIGHT
    [1000] = "%.1f", -- INS_WSO_HEAT_LIGHT
    [1001] = "%.4f", -- RADAR_WSO_METER_SELECTOR_KNOB {-0.111543333, -0.673, 1, Select Meter Mode (Volt/Signal)}
    [1002] = "%.1f", -- RADAR_WSO_MONITOR_METER
    [1004] = "%.1f", -- RADAR_WSO_STAB_SWITCH {-1, -1, 1, Select Antenna Stabilization Mode}
    [1005] = "%.1f", -- RADAR_WSO_VC_SWITCH {-1, 0, 1, Select Vc}
    [1006] = "%.1f", -- RADAR_WSO_METER_SWITCH {-1, 0, 1, Set Meter Display}
    [1007] = "%.1f", -- RADAR_WSO_MANUEVER_SWITCH {-1, 0, 1, Select Maneuver}
    [1008] = "%.4f", -- RADAR_WSO_ASPECT_KNOB {-0.25, 0, 1, Select Target Aspect}
    [1009] = "%.1f", -- RADAR_WSO_POLAR_SWITCH {-1, -1, 1, Change Polarization}
    [1010] = "%.1f", -- RADAR_WSO_SKIN_TRACK_LIGHT
    [1011] = "%.1f", -- RADAR_WSO_HAND_CTRL_ANTENNA_SLEW_X
    [1012] = "%.1f", -- RADAR_WSO_HAND_CTRL_ANTENNA_SLEW_Y
    [1013] = "%.1f", -- RADAR_WSO_HAND_CTRL_TRIGGER
    [1014] = "%.2f", -- RADAR_WSO_HAND_CTRL_ELEVATION {0.5, 0, 1, Change Radar Antenna Elevation}
    [1015] = "%.1f", -- WSO_PULSE_SEL_SWITCH {-1, -1, 1, Select Skyspot Mode (was never equipped no function)}
    [1016] = "%.1f", -- WEAPON_DELIV_PANEL_WSO_ACTIVATE_SWITCH {-1, 0, 1, ARBCS Activate}
    [1017] = "%.1f", -- WEAPON_DELIV_PANEL_WSO_TGT_FIND_SWITCH {-1, 0, 1, Target Find Mode}
    [1018] = "%.1f", -- WEAPON_DELIV_PANEL_WSO_RANGE_SWITCH {-1, 0, 1, WRCS Range x100, Multiplier}
    [1019] = "%.1f", -- CURSOR_CTRL_PANEL_WSO_ALONG_TRACK_THUMBWHEEL {0, 0, 1, Move Cursor (Along Track)}
    [1020] = "%.1f", -- CURSOR_CTRL_PANEL_WSO_CROSS_TRACK_THUMBWHEEL {0, 0, 1, Move Cursor (Cross Track)}
    [1021] = "%.1f", -- CURSOR_CTRL_PANEL_WSO_FREEZE_BUTTON {1, 0, 1, Freeze Target Data}
    [1022] = "%.1f", -- CURSOR_CTRL_PANEL_WSO_FREEZE_LIGHT
    [1023] = "%.1f", -- CURSOR_CTRL_PANEL_WSO_TGT_INSERT_BUTTON {1, 0, 1, Insert Target Data}
    [1024] = "%.1f", -- CURSOR_CTRL_PANEL_WSO_TGT_INSERT_LIGHT
    [1025] = "%.1f", -- CURSOR_CTRL_PANEL_WSO_RESET_BUTTON {1, 0, 1, Reset Target Data}
    [1027] = "%.1f", -- WSO_AP_TEST_SWITCH {-1, 0, 1, Autopilot Ground Power Switch}
    [1028] = "%.1f", -- WSO_BATTERY_BYPASS_SWITCH {-1, 0, 1, Battery Bypass Switch}
    [1029] = "%.1f", -- COMPASS_PANEL_PILOT_SET_HEADING_KNOB_PRESS {1, 0, 1, Set Compass Heading (press to rotate)}
    [1200] = "%.1f", -- HUD_SHTR_Selector_Knob
    [1201] = "%.1f", -- HUD_RetIn_Knob {1, 0, 1, Change HUD Brightness}
    [1202] = "%.1f", -- HUD_Scale_Knob {1, 0, 1, Scale Brightness}
    [1203] = "%.2f", -- HUD_Contr_Knob {0.5, 0, 1, Change Screen Contrast}
    [1204] = "%.1f", -- HUD_OprErs_Knob {1, 0, 1, Activate/Erase DVST Display (no function with DSCG)}
    [1205] = "%.2f", -- HUD_HorLn_Knob {0.5, 0, 1, Adjust Horizon on Display}
    [1206] = "%.2f", -- HUD_Brt_Knob {0.5, 0, 1, Change Screen Brightness}
    [1210] = "%.2f", -- PILOT_RANGE_INDICATOR_MODE {-0.5, 0, 1, Range Mode}
    [1211] = "%.1f", -- PILOT_RANGE_INDICATOR_BRIGHTNESS {1, 0, 1, Display Brightness}
    [1212] = "%.1f", -- PILOT_RANGE_INDICATOR_DESIRED_RANGE {0, 0, 1, Desired Release Range}
    [1213] = "%.1f", -- PILOT_RANGE_INDICATOR_DESIRED_RANGE_PUSH
    [1221] = "%.2f", -- Pilot_Arm_Switch {-0.25001, 0, 0.75 Arm Fuze}
    [1253] = "%.1f", -- PILOT_Jettison_Button {1, 0, 1, Jettison Selection}
    [1254] = "%.4f", -- PILOT_Jettison_Knob {-0.12501, 0, 0.875 Select Stations to Jettison (down for STORES)}
    [1322] = "%.4f", -- Pilot_IFF_Code {-0.3333, 0, 0.9999 Select Mode 4 Function}
    [1323] = "%.1f", -- Pilot_IFF_Mode_1, {-1, -1, 1, M1, Off/On/Test}
    [1324] = "%.1f", -- Pilot_IFF_Mode_2 {-1, -1, 1, M2 Off/On/Test}
    [1325] = "%.1f", -- Pilot_IFF_Mode_3A {-1, -1, 1, M3 Off/On/Test}
    [1326] = "%.1f", -- Pilot_IFF_Mode_C {-1, -1, 1, MC Off/On/Test}
    [1327] = "%.1f", -- Pilot_IFF_Mode_4 {-1, 0, 1, Set Mode 4 On/Off}
    [1328] = "%.1f", -- Pilot_IFF_Audio {-1, -1, 1, Select Mode 4 Indication}
    [1329] = "%.1f", -- Pilot_IFF_Test {-1, -1, 1, Set Monitor-Radiation}
    [1330] = "%.1f", -- Pilot_IFF_Ident {-1, -1, 1, Set Position Identification}
    [1331] = "%.2f", -- Pilot_IFF_Mode_1_Tens {-0.142857143, 0, 1, Set M1, code (tens)}
    [1332] = "%.2f", -- Pilot_IFF_Mode_1_Units {-0.333333333, 0, 1, Set M1, code (ones)}
    [1333] = "%.2f", -- Pilot_IFF_Mode_3A_Thounsands {-0.142857143, 0, 1, Set M3 code (thousands)}
    [1334] = "%.2f", -- Pilot_IFF_Mode_3A_Hundreds {-0.142857143, 0, 1, Set M3 code (hundreds)}
    [1335] = "%.2f", -- Pilot_IFF_Mode_3A_Tens {-0.142857143, 0, 1, Set M3 code (tens)}
    [1336] = "%.2f", -- Pilot_IFF_Mode_3A_Units {-0.142857143, 0, 1, Set M3 code (ones)}
    [1337] = "%.1f", -- Pilot_DCU_Monitor_Switch_LO {-1, 0, 1, Arm Left/Outer Station}
    [1338] = "%.1f", -- Pilot_DCU_Monitor_Switch_LI {-1, 0, 1, Arm Left/Inner Station}
    [1339] = "%.1f", -- Pilot_DCU_Monitor_Switch_CTR {-1, 0, 1, Arm Center Station}
    [1340] = "%.1f", -- Pilot_DCU_Monitor_Switch_RI {-1, 0, 1, Arm Right/Inner Station}
    [1341] = "%.1f", -- Pilot_DCU_Monitor_Switch_RO {-1, 0, 1, Arm Right/Outer Station}
    [1342] = "%.1f", -- Pilot_DCU_Control_Test_Lamp {1, 0, 1, Test DCU Lamps}
    [1343] = "%.1f", -- Pilot_DCU_Control_Test_MSL {1, 0, 1, Test Missiles}
    [1344] = "%.1f", -- Pilot_DCU_Control_Test_Bomb {1, 0, 1, Test Bombs}
    [1345] = "%.4f", -- Pilot_DCU_Control_Mode_Knob {-0.333, 0, 0.999 DCU Mode}
    [1346] = "%.1f", -- Pilot_DCU_Control_Master_Guard {-1, 0, 1, DCU Master Release Switch Cover}
    [1347] = "%.1f", -- Pilot_DCU_Control_Master_Switch {-1, 0, 1, DCU Master Release Switch}
    [1348] = "%.1f", -- Pilot_Temperature_Knob {0, 0, 1, Change Temperature}
    [1349] = "%.1f", -- Pilot_Temperature_Mode {-1, -1, 1, Temperature Mode}
    [1350] = "%.1f", -- Pilot_Light_Cockpit_Flood_White {-1, 0, 1, Toggle White Floodlight}
    [1351] = "%.2f", -- Pilot_Light_Cockpit_Flood_Console {-0.5, 0, 1, Set Console Floodlight (Red) Brightness}
    [1352] = "%.1f", -- Pilot_Light_Cockpit_Instr_Panel {1, 0, 1, Change Instrument Panel Light Brightness}
    [1353] = "%.1f", -- Pilot_Light_Cockpit_Console {0, 0, 1, Change Console Light Brightness}
    [1354] = "%.1f", -- Pilot_Light_Cockpit_Stby_Comp {-1, 1, 0, Test Warning Lights/Standby Compass Light}
    [1355] = "%.2f", -- Pilot_Light_Exterior_Fuselage {-0.5, 0, 1, Set Fuselage & Anti-Collision Light Brightness}
    [1356] = "%.2f", -- Pilot_Light_Exterior_Flash {-0.5, 0, 1, Set Flasher Mode (only Tail/Anti-Col/Fus)}
    [1357] = "%.2f", -- Pilot_Light_Exterior_Tail {-0.5, 0, 1, Set Tail-Position Light Brightness}
    [1358] = "%.2f", -- Pilot_Light_Exterior_Wing {-0.5, 0, 1, Set Wing-Position & Join-Up Light Brightness}
    [1359] = "%.2f", -- Pilot_Handle_Defog {0.5, 0, 1, Defog Handle}
    [1360] = "%.1f", -- Pilot_Light_Intensity_AAI {1, 0, 1, Change AoA Indicator Brightness}
    [1361] = "%.1f", -- Pilot_Light_Intensity_HSI {1, 0, 1, Change HSI Brightness}
    [1362] = "%.1f", -- Pilot_Light_Intensity_VVI {1, 0, 1, Change VVI Brightness}
    [1363] = "%.1f", -- Pilot_Light_Intensity_MASI {1, 0, 1, Change Speed Indicator Brightness}
    [1364] = "%.1f", -- Pilot_Light_Intensity_ADI {1, 0, 1, Change ADI Brightness}
    [1365] = "%.1f", -- Pilot_Light_Intensity_ALT {1, 0, 1, Change Altimeter Brightness}
    [1366] = "%.2f", -- Pilot_Light_Formation_Fuselage {0.5, 0, 1, Fuze Cap (no function)}
    [1367] = "%.2f", -- Pilot_Light_Formation_Mode {0, 0, 0.5, Set Formation Lights Mode}
    [1368] = "%.2f", -- Pilot_Light_Formation_Dimmer {0.5, 0, 1, Change Formation Lights Brightness}
    [1369] = "%.1f", -- Pilot_Light_Formation_Indexer {1, 0, 1, Change AoA Indexer Brightness}
    [1370] = "%.2f", -- Pilot_Light_Inst_Flood_Brightness {-0.5, 0, 1, Set Instrument Floodlight (Red) Brightness (also WSO)}
    [1371] = "%.1f", -- Pilot_Light_Stdby_AI_Brightness {1, 0, 1, SAI Brightness (replaced by SAI Panel see Left Wall) (no function)}
    [1372] = "%.1f", -- Pilot_Volume_Knob__Stall {1, 0, 1, AoA Stall Warning Volume}
    [1373] = "%.1f", -- Pilot_Volume_Knob_ML {1, 0, 1, Change RWR Missile Volume}
    [1374] = "%.1f", -- Pilot_UHF_Squelch {-1, 0, 1, UHF Squelch Switch}
    [1375] = "%.4f", -- Pilot_UHF_Freq_Hundreds {-0.333333333, 0, 1, Set Frequency (hundreds)}
    [1376] = "%.1f", -- Pilot_UHF_Freq_Mode {-1, 0, 1, Select Frequency Mode}
    [1377] = "%.1f", -- Pilot_UHF_Tone {1, 0, 1, Tone Button}
    [1378] = "%.1f", -- Pilot_ICS_Radio_Override {-1, 1, 0, Set Mode}
    [1382] = "%.1f", -- Pilot_Circuit_Breaker_ARI {-1, 0, 1, Aileron-Rudder Interconnect (ARI) CB}
    [1383] = "%.1f", -- Pilot_Circuit_Breaker_AIL_Feel_Trim {-1, 0, 1, AIL Feel-Trim CB}
    [1384] = "%.1f", -- Pilot_Circuit_Breaker_STAB_Feel_Trim {-1, 0, 1, STAB Feel-Trim CB}
    [1385] = "%.1f", -- Pilot_Circuit_Breaker_Speed_Brake {-1, 0, 1, Speed Brake CB}
    [1386] = "%.1f", -- Pilot_Circuit_Breaker_LG {-1, 0, 1, Landing Gear CB}
    [1387] = "%.1f", -- Pilot_Circuit_Breaker_Flaps {-1, 0, 1, Flaps CB}
    [1388] = "%.1f", -- Pilot_Circuit_Breaker_Trim_CONT {-1, 0, 1, Trim Controls CB}
    [1389] = "%.1f", -- Pilot_Circuit_Breaker_RUD_Trim {-1, 0, 1, Rudder Trim CB}
    [1390] = "%.1f", -- AN_ALE40_Roller_Chaff_Hundreds
    [1391] = "%.1f", -- AN_ALE40_Roller_Chaff_Tens
    [1392] = "%.1f", -- AN_ALE40_Roller_Chaff_Ones
    [1393] = "%.1f", -- AN_ALE40_Roller_Flare_Hundreds
    [1394] = "%.1f", -- AN_ALE40_Roller_Flare_Tens
    [1395] = "%.1f", -- AN_ALE40_Roller_Flare_Ones
    [1400] = "%.2f", -- Radar_Contrast_Knob {0.5, 0, 1, Change Screen Contrast}
    [1401] = "%.2f", -- Radar_Cursor_RNG_Knob {0.5, 0, 1, Change Range-Cursor Brightness}
    [1402] = "%.2f", -- Radar_BRT_Knob {0.5, 0, 1, Change Screen Brightness}
    [1403] = "%.2f", -- Radar_Cursor_OFS_Knob {0.5, 0, 1, Change Offset-Cursor Brightness}
    [1404] = "%.2f", -- Radar_Display_Mode_Knob {-0.2, 0, 1, Select Screen Mode}
    [1407] = "%.4f", -- Radar_Man_Vc {-0.083373636, 0, 0.917 Select Manual Vc (Closure Velocity kt)}
    [1408] = "%.4f", -- Radar_Monitor_Test {-0.090919091, 0, 1, Radar BIT}
    [1409] = "%.2f", -- Pilot_ICS_Mode_Knob {-0.5, 0, 1, Select Amplifier}
    [1412] = "%.2f", -- Pilot_Gun_Count_Reset_Knob_Rotate {0.1, 0, 1, Set Gun Rounds}
    [1413] = "%.1f", -- Pilot_Gun_Count_Reset_Knob_Push
    [1414] = "%.1f", -- AN_ALE40_ON_Lamp
    [1415] = "%.1f", -- AN_ALE40_FLARES_Lamp
    [1416] = "%.2f", -- TAXI_Lt_sw {-0.5, 0, 1, Taxi/Landing Light}
    [1417] = "%.1f", -- AN_ALE40_FLARES_SELECT_Sw {-1, 0, 1, Select Dispense Program}
    [1435] = "%.1f", -- PILOT_ThrottleButton_Right {1, 0, 1, CAGE Mode}
    [1436] = "%.1f", -- PILOT_ThrottleButton_Left {1, 0, 1, Dispense Countermeasures}
    [1437] = "%.1f", -- AN_ALE40_ON_Lamp_Press {1, 0, 1, CMS Indicator (push to test rotate to dim)}
    [1438] = "%.1f", -- AN_ALE40_ON_Lamp_Rotation {0, 0, 1, CMS Indicator (push to test rotate to dim)}
    [1439] = "%.1f", -- AN_ALE40_FLARES_Lamp_Press {1, 0, 1, Flare Indicator (push to test rotate to dim)}
    [1440] = "%.1f", -- AN_ALE40_FLARES_Lamp_Rotation {0, 0, 1, Flare Indicator (push to test rotate to dim)}
    [1441] = "%.1f", -- AN_ALE40_CCU_Chaff_Lamp_Brightness
    [1442] = "%.1f", -- AN_ALE40_CCU_Flare_Lamp_Brightness
    [1443] = "%.2f", -- AN_ALE40_Flare_Mode {-0.5, 0, 1, Select Flare Mode}
    [1444] = "%.4f", -- AN_ALE40_Chaff_Mode {-0.333333333, 0, 1, Select Chaff Mode}
    [1445] = "%.1f", -- AN_ALE40_Ripple_Sw {-1, 0, 1, Toggle Ripple Release}
    [1446] = "%.1f", -- AN_ALE40_Ripple_Sw_Cover {-1, 0, 1, Ripple Switch Cover}
    [1447] = "%.1f", -- AN_ALE40_WSO_Dispense_Button {1, 0, 1, Dispense Countermeasures}
    [1448] = "%.1f", -- AN_ALE40_CCU_Chaff_Lamp_Rotation {0, 0, 1, Chaff Indicator (push to test rotate to dim)}
    [1449] = "%.1f", -- AN_ALE40_CCU_Flare_Lamp_Rotation {0, 0, 1, Flare Indicator (push to test rotate to dim)}
    [1450] = "%.1f", -- AN_ALE40_CCU_Chaff_Lamp_Press {1, 0, 1, Chaff Indicator (push to test rotate to dim)}
    [1451] = "%.1f", -- AN_ALE40_CCU_Flare_Lamp_Press {1, 0, 1, Flare Indicator (push to test rotate to dim)}
    [1452] = "%.2f", -- PILOT_VOR_LEFT_DRUM_ROLLER
    [1455] = "%.2f", -- PILOT_VOR_RIGHT_DRUM_ROLLER
    [1500] = "%.2f", -- Pilot_ALE40_Chaff_Count {-0.2, 0, 1, Select Chaff Burst Count}
    [1501] = "%.4f", -- Pilot_ALE40_Chaff_Interval {-0.333333333, 0, 1, Select Chaff Burst Interval}
    [1502] = "%.4f", -- Pilot_ALE40_Chaff_Count_Salvo {-0.25, 0, 1, Select Chaff Salvo Count}
    [1503] = "%.4f", -- Pilot_ALE40_Chaff_Interval_Salvo {-0.166666667, 0, 1, Select Chaff Salvo Interval}
    [1504] = "%.4f", -- Pilot_ALE40_Flare_Count {-0.25, 0, 1, Select Flare Burst Count}
    [1505] = "%.4f", -- Pilot_ALE40_Flare_Interval {-0.25, 0, 1, Select Flare Burst Interval}
    [1506] = "%.1f", -- Pilot_AFCS_Yaw {-1, 0, 1, STAB AUG Yaw}
    [1507] = "%.1f", -- Pilot_AFCS_Roll {-1, 0, 1, STAB AUG Roll}
    [1508] = "%.1f", -- Pilot_AFCS_Pitch {-1, 0, 1, STAB AUG Pitch}
    [1509] = "%.1f", -- Pilot_AFCS_Engage {-1, 0, 1, AFCS Autopilot}
    [1510] = "%.1f", -- Pilot_AFCS_Alt {-1, 0, 1, ALT Hold}
    [1511] = "%.1f", -- Pilot_VOR_Nav_vol {0, 0, 1, Change VOR/ILS Volume}
    [1512] = "%.2f", -- Pilot_VOR_MB_vol {0.5, 0, 1, Change Marker-Beacon Volume}
    [1513] = "%.1f", -- Pilot_VOR_Test {1, 0, 1, Test VOR/ILS System}
    [1514] = "%.4f", -- Pilot_VOR_Freq {-0.10001, 0, 0.9 Set ILS Frequency (hundreds)}
    [1515] = "%.4f", -- Pilot_VOR_Freq_decimal {-0.05001, 0, 0.95 Set ILS Frequency (decimals)}
    [1516] = "%.1f", -- Pilot_Drag_Chute_Handle {0, 0, 1, Release Drag-Parachute (only while deployed)}
    [1517] = "%.2f", -- Pilot_AGM_Polarization {-0.5, 0, 1, Maverick Contrast-Lock Polarity}
    [1518] = "%.1f", -- Pilot_Switch_LCOSS {-1, 0, 1, Select LCOSS}
    [1519] = "%.1f", -- Pilot_Switch_DSCG {-1, 0, 1, Select Radar}
    [1520] = "%.1f", -- Boarding_Steps_Indicator
    [1521] = "%.4f", -- Pilot_IFF_Master {-0.25, 0, 1, Select Master Mode}
    [1524] = "%.1f", -- PILOT_DCU_ARM_SLIDER {-1, 0, 1, DCU OS/S-Arm Selector}
    [1900] = "%.1f", -- Helmet_Pilot_Vis {-1, 0, 1, Put On / Take Off Helmet}
    [1901] = "%.1f", -- Helmet_Pilot_Hose_Mov
    [1902] = "%.1f", -- Helmet_Pilot_Strap_Mov
    [1903] = "%.1f", -- Helmet_WSO_Vis {-1, 0, 1, Put On / Take Off Helmet}
    [1904] = "%.1f", -- Helmet_WSO_Hose_Mov
    [1905] = "%.1f", -- Helmet_WSO_Strap_Mov
    [1906] = "%.1f", -- Helmet_Pilot_Vis2
    [1910] = "%.1f", -- Helmet_Pilot_Swap   --RBF on Rim.
    [1913] = "%.1f", -- Helmet_WSO_Swap     --RBF on Rim.
    [1916] = "%.1f", -- Helmet_Pilot_Swap2
    [2000] = "%.2f", -- Wso_Apx80_Units
    [2001] = "%.2f", -- Wso_Apx80_Ten
    [2002] = "%.2f", -- Wso_Apx80_Hundreds
    [2003] = "%.2f", -- Wso_Apx80_Thounsands
    [2004] = "%.2f", -- Wso_Apx80_Mode
    [2016] = "%.1f", -- CPT_PILOT_HEAD_SWAP
    [2017] = "%.1f", -- CPT_WSO_HEAD_SWAP
    [2020] = "%.1f", -- WSO_LASER_CODE_ONES
    [2021] = "%.1f", -- WSO_LASER_CODE_TENS
    [2022] = "%.1f", -- WSO_LASER_CODE_HUNDREDS
    [2023] = "%.1f", -- WSO_LASER_CODE_THOUSANDS
    [2030] = "%.4f", -- RIO_UHF_Frequency_Hundreds {-0.333333333, 0, 1, Set Frequency (hundreds)}
    [2031] = "%.2f", -- RIO_UHF_ModeSelector_Knob {-0.2, 0, 1, Select Radio Mode}
    [2032] = "%.1f", -- RIO_UHF_ModeSelector_Knob_Pull
    [2040] = "%.1f", -- RIO_Oxygen_Gauge_FlagOff
    [2500] = "%.1f", -- WSO_LASER_CODE_SET_THOUSANDS {1, 0, 1, Next Laser Code (thousands)}
    [2501] = "%.1f", -- WSO_LASER_CODE_SET_HUNDREDS {1, 0, 1, Next Laser Code (hundreds)}
    [2502] = "%.1f", -- WSO_LASER_CODE_SET_TENS {1, 0, 1, Next Laser Code (tens)}
    [2503] = "%.1f", -- WSO_LASER_CODE_SET_ONES {1, 0, 1, Next Laser Code (ones)}
    [2504] = "%.1f", -- WSO_LASER_CODE_ENTER {1, 0, 1, Enter Laser Code}
    [2507] = "%.1f", -- RADAR_WSO_CTRL_BORESIGHT_BUTTON {1, 0, 1, Adjust Stick Boresight (no function without screwdriver)}
    [2508] = "%.1f", -- RADAR_WSO_HAND_CTRL_BUTTON {1, 0, 1, Challenge Button}
    [2509] = "%.1f", -- WEAPON_WSO_NUCLEAR_CONSENT {-1, -1, 1, Nuclear Consent Switch}
    [2510] = "%.1f", -- LIGHT_WSO_COCKPIT_FLOOD_WHITE {-1, 0, 1, Toggle White Floodlight}
    [2511] = "%.1f", -- LIGHT_WSO_COCKPIT_STBY_COMPASS {-1, 0, 1, Toggle Standby Compass Light}
    [2512] = "%.2f", -- LIGHT_WSO_COCKPIT_FLOOD_CONSOLE {-0.5, 0, 1, Set Console Floodlight (Red) Brightness}
    [2513] = "%.1f", -- LIGHT_WSO_COCKPIT_WARNING {1, 0, 1, Test Warning Lights}
    [2514] = "%.1f", -- LIGHT_WSO_COCKPIT_INST_PANEL {1, 0, 1, Change Instrument Panel Light Brightness}
    [2515] = "%.1f", -- LIGHT_WSO_COCKPIT_INDEXER {1, 0, 1, Change AoA Indexer Brightness}
    [2516] = "%.1f", -- LIGHT_WSO_COCKPIT_CONSOLE {0, 0, 1, Change Console Light Brightness}
    [2517] = "%.1f", -- PILOT_RPM_Gauge_SmallNeedle_L
    [2518] = "%.1f", -- PILOT_RPM_Gauge_SmallNeedle_R
    [2519] = "%.1f", -- PILOT_Slats_ORIDE_Sw {-1, 0, 1, Slats Override Switch}
    [2520] = "%.1f", -- PILOT_Slats_ORIDE_Cover {-1, 0, 1, Slats Override Switch Cover}
    [2521] = "%.2f", -- WSO_VOR_ILS_Knob {0.5, 0, 1, Change VOR/ILS Volume}
    [2522] = "%.1f", -- WSO_VOR_ILS_MKR_BCN {0, 0, 1, Change Marker-Beacon Volume}
    [2523] = "%.1f", -- WSO_UHF_TONE_BUTTON {1, 0, 1, Tone Button}
    [2524] = "%.1f", -- WSO_UHF_Squelch {-1, 0, 1, UHF Squelch Switch}
    [2525] = "%.1f", -- PILOT_LIGHT_AIR_REFUEL_READY
    [2526] = "%.1f", -- PILOT_LIGHT_EXT_TK_LO_FULL
    [2527] = "%.1f", -- PILOT_LIGHT_EXT_TK_CL_FULL
    [2528] = "%.1f", -- PILOT_LIGHT_EXT_TK_RO_FULL
    [2529] = "%.1f", -- PILOT_LIGHT_AIR_REFUEL_DISENGAGED
    [2530] = "%.1f", -- PILOT_LIGHT_SHOOT_HUD_LEFT
    [2531] = "%.1f", -- PILOT_LIGHT_SHOOT_HUD_RIGHT
    [2532] = "%.1f", -- PILOT_LIGHT_HOLD_ALT
    [2533] = "%.1f", -- PILOT_LIGHT_RANGE_5
    [2534] = "%.1f", -- PILOT_LIGHT_RANGE_10
    [2535] = "%.1f", -- PILOT_LIGHT_RANGE_25
    [2536] = "%.1f", -- PILOT_LIGHT_RANGE_50
    [2537] = "%.1f", -- PILOT_LIGHT_APR36_I
    [2538] = "%.1f", -- PILOT_LIGHT_APR36_G
    [2539] = "%.1f", -- PILOT_LIGHT_APR36_E
    [2540] = "%.1f", -- PILOT_LIGHT_APR36_LAUNCH
    [2541] = "%.1f", -- PILOT_LIGHT_APR36_AAA_DEF
    [2542] = "%.1f", -- PILOT_LIGHT_APR36_AI
    [2543] = "%.1f", -- PILOT_LIGHT_APR36_G_LORO
    [2544] = "%.1f", -- PILOT_LIGHT_APR36_AAA_GCI
    [2545] = "%.1f", -- PILOT_LIGHT_APR36_ACT_PWR
    [2546] = "%.1f", -- PILOT_LIGHT_APR36_POWER
    [2547] = "%.1f", -- PILOT_LIGHT_FIRE_LEFT
    [2548] = "%.1f", -- PILOT_LIGHT_FIRE_RIGHT
    [2549] = "%.1f", -- PILOT_LIGHT_OVERHT_LEFT
    [2550] = "%.1f", -- PILOT_LIGHT_OVERHT_RIGHT
    [2551] = "%.1f", -- PILOT_LIGHT_LH_GEN_OUT
    [2552] = "%.1f", -- PILOT_LIGHT_RH_GEN_OUT
    [2554] = "%.1f", -- PILOT_LIGHT_KY28_P_MODE
    [2555] = "%.1f", -- PILOT_LIGHT_KY28_C_MODE
    [2556] = "%.1f", -- PILOT_LIGHT_IFF_TEST
    [2557] = "%.1f", -- PILOT_LIGHT_IFF_REPLY
    [2558] = "%.1f", -- PILOT_LIGHT_WARM_LO
    [2559] = "%.1f", -- PILOT_LIGHT_WARM_LI
    [2560] = "%.1f", -- PILOT_LIGHT_WARM_CL
    [2561] = "%.1f", -- PILOT_LIGHT_WARM_RI
    [2562] = "%.1f", -- PILOT_LIGHT_WARM_RO
    [2563] = "%.1f", -- PILOT_LIGHT_UNLOCKED_LO
    [2564] = "%.1f", -- PILOT_LIGHT_UNLOCKED_LI
    [2565] = "%.1f", -- PILOT_LIGHT_UNLOCKED_CL
    [2566] = "%.1f", -- PILOT_LIGHT_UNLOCKED_RI
    [2567] = "%.1f", -- PILOT_LIGHT_UNLOCKED_RO
    [2568] = "%.1f", -- PILOT_LIGHT_IFF
    [2569] = "%.1f", -- PILOT_LIGHT_AUTOPILOT_PITCH_TRIM
    [2570] = "%.1f", -- PILOT_LIGHT_LEFT_EXT_FUEL
    [2571] = "%.1f", -- PILOT_LIGHT_FUEL_LOW_LEVEL
    [2572] = "%.1f", -- PILOT_LIGHT_L_ANTIICE_ON
    [2573] = "%.1f", -- PILOT_LIGHT_L_AUX_AIR_DOOR
    [2574] = "%.1f", -- PILOT_LIGHT_WINDSHIELD_TEMP
    [2575] = "%.1f", -- PILOT_LIGHT_SLATS_IN
    [2576] = "%.1f", -- PILOT_LIGHT_INERTIAL_NAV_OUT
    [2577] = "%.1f", -- PILOT_LIGHT_DC_BUS
    [2578] = "%.1f", -- PILOT_LIGHT_HOOK_DOWN
    [2579] = "%.1f", -- PILOT_LIGHT_AUTOPILOT_DISENGAGE
    [2580] = "%.1f", -- PILOT_LIGHT_CTR_EXT_FUEL
    [2581] = "%.1f", -- PILOT_LIGHT_CHK_FUEL_FILTER
    [2582] = "%.1f", -- PILOT_LIGHT_R_ANTIICE_ON
    [2583] = "%.1f", -- PILOT_LIGHT_R_AUX_AIR_DOOR
    [2584] = "%.1f", -- PILOT_LIGHT_DUCT_TEMP_HIGH
    [2585] = "%.1f", -- PILOT_LIGHT_PITCH_AUG_OFF
    [2586] = "%.1f", -- PILOT_LIGHT_TANK_7_FULL
    [2587] = "%.1f", -- PILOT_LIGHT_RIGHT_EXT_FUEL
    [2588] = "%.1f", -- PILOT_LIGHT_RADARON_COOLOFF
    [2589] = "%.1f", -- PILOT_LIGHT_SPEEDBRAKE_OUT
    [2590] = "%.1f", -- PILOT_LIGHT_CABIN_TURB_OVERSPEED
    [2591] = "%.1f", -- PILOT_LIGHT_FIRE_SYS
    [2592] = "%.1f", -- PILOT_LIGHT_RECORDER_ON
    [2593] = "%.1f", -- PILOT_LIGHT_SHOOT_LEFT
    [2594] = "%.1f", -- PILOT_LIGHT_SHOOT_RIGHT
    [2595] = "%.2f", -- PILOT_PEDAL_AJUST_CRANK {0.5, 0, 1, Adjust Pedal Position}
    [2596] = "%.2f", -- PILOT_TGT_MSL_REJECT {0, 0, 0.5, Missile Reject/Norm/Direction Finding Reject}
    [2597] = "%.1f", -- PILOT_TGT_MSL_BAND {-1, 0, 1, Change Shrike Band}
    [2598] = "%.1f", -- PILOT_AUTO_CLEAR {-1, 0, 1, Gun-pod Clear-Mode Switch}
    [2599] = "%.2f", -- PILOT_RADAR_TV_SWITCH {-0.5, 0, 1, Select DSCG Screen Mode}
    [2600] = "%.1f", -- PILOT_NUCLEAR_JETT {1, 0, 1, Jettison Nuclear Weapon}
    [2601] = "%.1f", -- PILOT_CL_TK
    [2602] = "%.1f", -- PILOT_MISSILE_HEAT_LEFT
    [2603] = "%.1f", -- PILOT_MISSILE_HEAT_RIGHT
    [2604] = "%.1f", -- PILOT_MISSILE_RADAR_LEFT
    [2605] = "%.1f", -- PILOT_MISSILE_RADAR_RIGHT
    [2606] = "%.1f", -- PILOT_VOR_SWITCH
    [2607] = "%.1f", -- PILOT_THROTTLE_LEFT_PULL {1, 0, 1, Left Idle Detent}
    [2608] = "%.1f", -- PILOT_THROTTLE_RIGHT_PULL {1, 0, 1, Right Idle Detent}
    [2609] = "%.1f", -- PILOT_THROTTLE_RIGHT_MIC_SWITCH {-1, -1, 0, Mic Switch}
    [2610] = "%.1f", -- PILOT_THROTTLE_RIGHT_SPEEDBRAKE {-1, 1, 0, Speed Brake}
    [2611] = "%.1f", -- PILOT_AZ_EL_INDICATOR_ROLL_NEEDLE
    [2612] = "%.1f", -- WSO_COURSE_SET_KNOB {0, 0, 1, Set Course}
    [2613] = "%.1f", -- WSO_COURSE_GLIDESLOPE
    [2614] = "%.1f", -- WSO_COURSE_GLIDESLOPE_OFF_FLAG
    [2615] = "%.1f", -- WSO_COURSE_LOCALIZER
    [2616] = "%.1f", -- WSO_COURSE_LOCALIZER_OFF_FLAG
    [2617] = "%.1f", -- WSO_COURSE_DIST_UNIT
    [2618] = "%.1f", -- WSO_COURSE_DIST_TEN
    [2619] = "%.1f", -- WSO_COURSE_DIST_HUNDRED
    [2620] = "%.1f", -- WSO_COURSE_LAMP_PRESS {1, 0, 1, Marker-Beacon Lamp (push to test rotate to dim)}
    [2621] = "%.1f", -- WSO_COURSE_HEADING
    [2622] = "%.1f", -- WSO_KY28_LAMP_PRESS_P_MODE {1, 0, 1, KY-28 P Mode Light (push to test rotate to dim)}
    [2623] = "%.1f", -- WSO_KY28_LAMP_PRESS_C_MODE {1, 0, 1, KY-28 C Mode Light (push to test rotate to dim)}
    [2624] = "%.2f", -- WSO_APR36_AUDIO_KNOB {0.5, 0, 1, RWR Audio Volume}
    [2625] = "%.2f", -- WSO_APR36_DIM_KNOB {0.5, 0, 1, Light Brightness}
    [2626] = "%.1f", -- WSO_RANGE_RATE_NEEDLE
    [2627] = "%.1f", -- WSO_BDHI_OFF_FLAG
    [2628] = "%.2f", -- WSO_AVTR_SWITCH {-0.5, 0, 1, Set AVTR Mode}
    [2629] = "%.1f", -- WSO_APX80A_UNIT_INCREASE {1, 0, 1, Increase IFF Code (ones)}
    [2630] = "%.1f", -- WSO_APX80A_UNIT_DECREASE {1, 0, 1, Decrease IFF Code (ones)}
    [2631] = "%.1f", -- WSO_APX80A_TEN_INCREASE {1, 0, 1, Increase IFF Code (tens)}
    [2632] = "%.1f", -- WSO_APX80A_TEN_DECREASE {1, 0, 1, Decrease IFF Code (tens)}
    [2633] = "%.1f", -- WSO_APX80A_HUNDRED_INCREASE {1, 0, 1, Increase IFF Code (hundreds)}
    [2634] = "%.1f", -- WSO_APX80A_HUNDRED_DECREASE {1, 0, 1, Decrease IFF Code (hundreds)}
    [2635] = "%.1f", -- WSO_APX80A_THOUSAND_INCREASE {1, 0, 1, Increase IFF Code (thousands)}
    [2636] = "%.1f", -- WSO_APX80A_THOUSAND_DECREASE {1, 0, 1, Decrease IFF Code (thousands)}
    [2637] = "%.1f", -- WSO_APX80A_MODE_INCREASE {1, 0, 1, Increase IFF Mode}
    [2638] = "%.1f", -- WSO_APX80A_MODE_DECREASE {1, 0, 1, Decrease IFF Mode}
    [2639] = "%.1f", -- WSO_APX80A_ANTIJAM {-1, 0, 1, Anti-Jam (no function)}
    [2640] = "%.1f", -- WSO_APX80A_LAMP_PRESS_TEST {1, 0, 1, Combat-Tree Challenge Light (push to test rotate to dim) (no simulated)}
    [2641] = "%.1f", -- WSO_APX80A_CHAL_BUTTON {1, 0, 1, Test Combat-Tree}
    [2642] = "%.1f", -- WSO_APX80A_M2 {-1, -1, 1, Set Combat-Tree Type 2 Mode}
    [2643] = "%.1f", -- WSO_APX80A_M3 {-1, -1, 1, Set Combat-Tree Type 3 Mode}
    [2644] = "%.1f", -- WSO_APX80A_M4 {-1, -1, 1, Mode 4 Alarm/Override Switch (no function)}
    [2645] = "%.1f", -- WSO_APX80A_TEST {-1, -1, 0, Test/Challenge Code Switch}
    [2646] = "%.1f", -- WSO_APX80A_LAMP_PRESS_CHAL {1, 0, 1, Challenge Light (push to test rotate to dim)}
    [2647] = "%.1f", -- WSO_KY28_ZEROIZE {1, 0, 1, Erase KY-28 Data}
    [2648] = "%.1f", -- WSO_KY28_BAND_SWITCH {-1, 0, 1, Select KY-28 Mode}
    [2649] = "%.2f", -- WSO_KY28_MODE_KNOB {-0.5, 0, 1, Select KY-28 Power Mode}
    [2650] = "%.2f", -- WSO_ECM_LEFT_MODE_KNOB {-0.25, 0, 1, Select ECM Mode (left pylons)}
    [2651] = "%.1f", -- WSO_ECM_LEFT_STBY_1
    [2652] = "%.1f", -- WSO_ECM_LEFT_STBY_2
    [2653] = "%.1f", -- WSO_ECM_LEFT_XMIT_1
    [2654] = "%.1f", -- WSO_ECM_LEFT_XMIT_2
    [2655] = "%.1f", -- WSO_ECM_LEFT_AI
    [2656] = "%.1f", -- WSO_ECM_LEFT_FAULT
    [2657] = "%.1f", -- WSO_ECM_LEFT_RESET_BUTTON {1, 0, 1, Reset ECM Fault (left pylons)}
    [2658] = "%.2f", -- WSO_ECM_RIGHT_MODE_KNOB {-0.25, 0, 1, Select ECM Mode (right pylons)}
    [2659] = "%.1f", -- WSO_ECM_RIGHT_STBY_1
    [2660] = "%.1f", -- WSO_ECM_RIGHT_STBY_2
    [2661] = "%.1f", -- WSO_ECM_RIGHT_XMIT_1
    [2662] = "%.1f", -- WSO_ECM_RIGHT_XMIT_2
    [2663] = "%.1f", -- WSO_ECM_RIGHT_AI
    [2664] = "%.1f", -- WSO_ECM_RIGHT_FAULT
    [2665] = "%.1f", -- WSO_ECM_RIGHT_RESET_BUTTON {1, 0, 1, Reset ECM Fault (right pylons)}
    [2666] = "%.2f", -- WSO_ICS_VOLUME_KNOB {0.5, 0, 1, Change Intercom Volume}
    [2667] = "%.2f", -- WSO_ICS_MODE_KNOB {-0.5, 0, 1, Select Amplifier}
    [2668] = "%.1f", -- WSO_ICS_RADIO_OVERRIDE {-1, 1, 0, Set Mode}
    [2670] = "%.1f", -- WSO_THROTTLE_SPEEDBRAKE {-1, 1, 0, Speed Brake}
    [2671] = "%.1f", -- WSO_THROTTLE_MIC_SWITCH {-1, -1, 0, Mic Switch}
    [2672] = "%.2f", -- WSO_RADAR_RANGE_KNOB {0.5, 0, 1, Scale Brightness}
    [2673] = "%.2f", -- WSO_CANOPY_LOW_ALT_KNOB {0.5, 0, 1, Canopy/Low Altitude Warning Volume (late variants only) (no function)}
    [2674] = "%.1f", -- WSO_LIGHT_COURSE
    [2675] = "%.1f", -- WSO_LIGHT_KY28_P_MODE
    [2676] = "%.1f", -- WSO_LIGHT_KY28_C_MODE
    [2677] = "%.1f", -- WSO_LIGHT_SHOOT
    [2678] = "%.1f", -- WSO_LIGHT_APR36_I
    [2679] = "%.1f", -- WSO_LIGHT_APR36_G
    [2680] = "%.1f", -- WSO_LIGHT_APR36_E
    [2681] = "%.1f", -- WSO_LIGHT_APR36_LAUNCH
    [2682] = "%.1f", -- WSO_LIGHT_APR36_AAA_DEF
    [2683] = "%.1f", -- WSO_LIGHT_APR36_AI
    [2684] = "%.1f", -- WSO_LIGHT_APR36_G_LORO
    [2685] = "%.1f", -- WSO_LIGHT_APR36_AAA_GCI
    [2686] = "%.1f", -- WSO_LIGHT_APR36_ACT_PWR
    [2687] = "%.1f", -- WSO_LIGHT_APR36_POWER
    [2688] = "%.1f", -- WSO_LIGHT_INERTIAL_NAV_OUT
    [2689] = "%.1f", -- WSO_LIGHT_RADAR_COOL_OFF
    [2690] = "%.1f", -- WSO_LIGHT_AIR_TO_AIR
    [2691] = "%.1f", -- WSO_LIGHT_WEAPON
    [2692] = "%.1f", -- WSO_LIGHT_ASQ_153
    [2693] = "%.1f", -- WSO_LIGHT_RCD
    [2694] = "%.1f", -- WSO_LIGHT_EOT
    [2695] = "%.1f", -- WSO_LIGHT_APX_CHAL
    [2696] = "%.1f", -- WSO_LIGHT_APX_TEST
    [2697] = "%.1f", -- WSO_LIGHT_LASER_NO_GO
    [2703] = "%.1f", -- WSO_LIGHT_INDEXER_GREEN_LEFT
    [2707] = "%.1f", -- WSO_LIGHT_INDEXER_GREEN_RIGHT
    [2708] = "%.1f", -- PILOT_FLOODLIGHT_WHITE
    [2709] = "%.1f", -- PILOT_FLOODLIGHT_CONSOLES
    [2710] = "%.1f", -- PILOT_FLOODLIGHT_INSTRUMENTS
    [2711] = "%.1f", -- WSO_FLOODLIGHT_WHITE
    [2712] = "%.1f", -- WSO_FLOODLIGHT_CONSOLES
    [2713] = "%.1f", -- WSO_FLOODLIGHT_INSTRUMENTS
    [2714] = "%.1f", -- PILOT_LIGHT_VOR_MARKER
    [2715] = "%.1f", -- WSO_TGT_DESIGNATOR_LIGHT_STOW
    [2716] = "%.1f", -- WSO_TGT_DESIGNATOR_LIGHT_LASER_READY
    [2717] = "%.1f", -- WSO_TGT_DESIGNATOR_LIGHT_POWER_ON
    [2718] = "%.1f", -- WSO_TGT_DESIGNATOR_LIGHT_WRCS_OUT
    [2719] = "%.1f", -- WSO_TGT_DESIGNATOR_LIGHT_GO
    [2720] = "%.1f", -- WSO_TGT_DESIGNATOR_LIGHT_MALF
    [2721] = "%.1f", -- WSO_TGT_DESIGNATOR_LIGHT_OVHT
    [2722] = "%.1f", -- WSO_TGT_DESIGNATOR_LIGHT_INS_OUT
    [2723] = "%.1f", -- WSO_TACHOMETER_NEEDLES_UNI_LEFT
    [2724] = "%.1f", -- WSO_TACHOMETER_NEEDLES_UNI_RIGHT
    [2725] = "%.1f", -- BDHI_WSO_RANGE_THOUSANDS
    [2726] = "%.1f", -- WSO_COURSE_DEVIATION_NEEDLE
    [2727] = "%.1f", -- PILOT_TEMP_OFF_FLAG_L
    [2728] = "%.1f", -- PILOT_TEMP_OFF_FLAG_R
    [2729] = "%.2f", -- PILOT_VOL_CANOPY_LOW_ALT {0.5, 0, 1, Canopy/Low Altitude Warning Volume (late variants only) (no function)}
    [2730] = "%.1f", -- WSO_LIGHT_MONITOR_CORDS
    [2731] = "%.1f", -- WSO_LIGHT_MONITOR_TEMP
    [2732] = "%.1f", -- WSO_AIR_TO_AIR_BUTTON {1, 0, 1, Air to Air Mode - Exit Cage}
    [2733] = "%.1f", -- WSO_TGT_DESIGNATOR_RETICLE_BRIGHTNESS_KNOB {0, 0, 1, TV Reticle Brightness (black to white)}
    [2734] = "%.2f", -- WSO_TGT_DESIGNATOR_BORESIGHT_AZIMUTH_KNOB {0.5, 0, 1, Boresight Azimuth (12-Vis)}
    [2735] = "%.2f", -- WSO_TGT_DESIGNATOR_BORESIGHT_ELEVATION_KNOB {0.5, 0, 1, Boresight Elevation (12-Vis)}
    [2736] = "%.2f", -- WSO_TGT_DESIGNATOR_BORESIGHT_ROLL_KNOB {0.5, 0, 1, Boresight Roll (9-Vis)}
    [2737] = "%.1f", -- WSO_TGT_DESIGNATOR_BIT_BUTTON {1, 0, 1, Next BIT}
    [2738] = "%.1f", -- WSO_TGT_DESIGNATOR_LIGHT_BRIGHTNESS_KNOB {1, 0, 1, Panel Light Brightness}
    [2739] = "%.1f", -- WSO_TGT_DESIGNATOR_REJECT_OVERRIDE_BUTTON {1, 0, 1, Reject/Override Range}
    [2740] = "%.2f", -- WSO_TGT_DESIGNATOR_ACQUISITION_SWITCH {-0.5, 0, 1, Acquisition Mode}
    [2741] = "%.1f", -- WSO_RANGE_THOUSAND_NEEDLE
    [2742] = "%.1f", -- PILOT_LIGHT_APR36_ISAMLO
    [2743] = "%.1f", -- PILOT_LIGHT_APR36_GSAMLO
    [2744] = "%.1f", -- PILOT_LIGHT_APR36_ESAMLO
    [2745] = "%.1f", -- PILOT_LIGHT_APR36_AIDAY
    [2746] = "%.1f", -- PILOT_LIGHT_APR36_GCI
    [2747] = "%.1f", -- PILOT_LIGHT_APR36_PWR
    [2748] = "%.1f", -- WSO_LIGHT_APR36_ISAMLO
    [2749] = "%.1f", -- WSO_LIGHT_APR36_GSAMLO
    [2750] = "%.1f", -- WSO_LIGHT_APR36_ESAMLO
    [2751] = "%.1f", -- WSO_LIGHT_APR36_AIDAY
    [2752] = "%.1f", -- WSO_LIGHT_APR36_GCI
    [2753] = "%.1f", -- WSO_LIGHT_APR36_PWR
    [2754] = "%.1f", -- WSO_TGT_DESIGNATOR_STOW_BUTTON {1, 0, 1, Stow/Unstow TGP}
    [2755] = "%.1f", -- WSO_TGT_DESIGNATOR_LASER_READY_BUTTON {-1, 0, 1, Arm/Disarm Laser}
    [2756] = "%.1f", -- WSO_TGT_DESIGNATOR_POWER_ON_BUTTON {1, 0, 1, Power On/Off TGP}
    [2757] = "%.1f", -- WSO_TGT_DESIGNATOR_WRCS_OUT_BUTTON {-1, 0, 1, Enable/Disable WRCS integration}
    [2758] = "%.1f", -- WSO_TGT_DESIGNATOR_GO_MALF_BUTTON {-1, 0, 1, (no function)}
    [2759] = "%.1f", -- WSO_TGT_DESIGNATOR_INS_OUT_BUTTON {-1, 0, 1, Enable/Disable INS integration}
    [2760] = "%.1f", -- WSO_WEAPON_ASQ153_BUTTON {1, 0, 1, Select Video (Maverick or TGP)}
    [2761] = "%.1f", -- PILOT_AZ_EL_INDICATOR_RED_EL_FLAG
    [2762] = "%.1f", -- PILOT_AZ_EL_INDICATOR_YELLOW_EL_FLAG
    [2763] = "%.1f", -- PILOT_AZ_EL_INDICATOR_GREEN_EL_FLAG
    [2764] = "%.1f", -- PILOT_RANGE_INDICATOR_TEST_BUTTON {1, 0, 1, Test Display}
    [2765] = "%.1f", -- NAV_COMP_RIO_FUNCTION_SELECTOR_PULL_KNOB
    [2766] = "%.1f", -- WSO_TGT_DESIGNATOR_LAMP_BRIGHTNESS
    [2767] = "%.1f", -- Pilot_Drag_Chute_Handle_P1, {0, 0, 1, Drag-Parachute (Pull to Deploy)}
    [2768] = "%.2f", -- Pilot_COMM_CMD_light_rotation {0.5, 0, 1, Change Radio Command Light Brightness}
    [2770] = "%.2f", -- Pilot_NAV_CMD_light_rotation {0.5, 0, 1, Change TACAN Command Light Brightness}
    [2772] = "%.2f", -- WSO_COMM_CMD_light_rotation {0.5, 0, 1, Change Radio Command Light Brightness}
    [2774] = "%.2f", -- WSO_NAV_CMD_light_rotation {0.5, 0, 1, Change TACAN Command Light Brightness}
    [2776] = "%.1f", -- Pilot_Stick_Trigger
    [2777] = "%.1f", -- Pilot_Stick_Trim_Pitch
    [2778] = "%.1f", -- Pilot_Stick_Trim_Roll
    [2779] = "%.1f", -- Pilot_Stick_Bomb_Release
    [2780] = "%.1f", -- Pilot_Stick_Air_Refueling {1, 0, 1, Air Refuel Release button}
    [2781] = "%.1f", -- Pilot_Stick_NWS {1, 0, 1, Nosegear Steering Button}
    [2782] = "%.1f", -- Pilot_Stick_Paddle_Switch {1, 0, 1, Emergency Quick Release}
    [2783] = "%.1f", -- WSO_Stick_Trigger
    [2784] = "%.1f", -- WSO_Stick_Trim_Pitch
    [2785] = "%.1f", -- WSO_Stick_Trim_Roll
    [2786] = "%.1f", -- WSO_Stick_Bomb_Release
    [2787] = "%.1f", -- WSO_Stick_NWS {1, 0, 1, Nosegear Steering Button}
    [2788] = "%.1f", -- WSO_Stick_Emerg_Lever {1, 0, 1, Emergency Quick Release}
    [2789] = "%.1f", -- PILOT_FUELSYS_FEED_TANK_CHECK_SWITCH {1, 0, 1, Check Engine-Feed Tank}
    [2790] = "%.1f", -- PILOT_KY28_P_MODE_KNOB_ROTATION {0, 0, 1, KY-28 P Mode Light (push to test rotate to dim)}
    [2791] = "%.1f", -- PILOT_KY28_P_MODE_KNOB_PUSH {1, 0, 1, KY-28 P Mode Light (push to test rotate to dim)}
    [2792] = "%.1f", -- PILOT_KY28_C_MODE_KNOB_ROTATION {0, 0, 1, KY-28 C Mode Light (push to test rotate to dim)}
    [2793] = "%.1f", -- PILOT_KY28_C_MODE_KNOB_PUSH {1, 0, 1, KY-28 C Mode Light (push to test rotate to dim)}
    [2794] = "%.1f", -- PILOT_PULL_UP_LIGHT_ROTATION {0, 0, 1, LABS Pull-Up Light (push to test rotate to dim)}
    [2795] = "%.1f", -- PILOT_RECORDER_LAMP_ROTATION {0, 0, 1, AVTR Recorder Lamp (push to test rotate to dim)}
    [2796] = "%.1f", -- PILOT_RECORDER_LAMP_PUSH {1, 0, 1, AVTR Recorder Lamp (push to test rotate to dim)}
    [2797] = "%.1f", -- PILOT_MARKER_BEACON_LAMP_ROTATION {0, 0, 1, Marker-Beacon Lamp (push to test rotate to dim)}
    [2798] = "%.1f", -- PILOT_MARKER_BEACON_LAMP_PUSH {1, 0, 1, Marker-Beacon Lamp (push to test rotate to dim)}
    [2799] = "%.1f", -- PILOT_VOR_LIGHT_ROTATION {1, 0, 1, VOR Light (no function)}
    [2800] = "%.1f", -- PILOT_TACAN_TEST_LIGHT_ROTATION
    [2801] = "%.1f", -- PILOT_TACAN_TEST_LIGHT_PUSH
    [2802] = "%.1f", -- PILOT_OXYGEN_PRESSURE_DEMAND
    [2803] = "%.1f", -- PILOT_UHF_REPEATER_PUSH
    [2804] = "%.1f", -- PILOT_RADAR_ALTITUDE_LAMP_ROTATION
    [2805] = "%.1f", -- PILOT_RADAR_ALTITUDE_LAMP_PUSH
    [2806] = "%.1f", -- WSO_LOCALIZER_LIGHT_ROTATION {0, 0, 1, Marker-Beacon Lamp (push to test rotate to dim)}
    [2807] = "%.1f", -- WSO_KY28_P_MODE_KNOB_ROTATION {0, 0, 1, KY-28 P Mode Light (push to test rotate to dim)}
    [2808] = "%.1f", -- WSO_KY28_C_MODE_KNOB_ROTATION {0, 0, 1, KY-28 C Mode Light (push to test rotate to dim)}
    [2809] = "%.1f", -- WSO_RWR_KNOB_ROTATION {1, 0, 1, Screen Brightness}
    [2810] = "%.2f", -- WSO_RWR_PANEL_ML_AUDIO_ROTATION {0.5, 0, 1, Change RWR Missile Audio Volume}
    [2811] = "%.1f", -- WSO_APX_CHAL_LAMP_ROTATION {0, 0, 1, Challenge Light (push to test rotate to dim)}
    [2812] = "%.1f", -- WSO_APX_TEST_LAMP_ROTATION {0, 0, 1, Combat-Tree Challenge Light (push to test rotate to dim) (no simulated)}
    [2813] = "%.2f", -- WSO_PEDAL_ADJUST_LEVER {0.5, 0, 1, Adjust Pedal Position}
    [2814] = "%.2f", -- WSO_OXYGEN_KNOB_ROTATION {0.5, 0, 1, Lamp Cap (no function)}
    [2815] = "%.1f", -- WSO_OXYGEN_KNOB_DEMAND_ROTATION
    [2816] = "%.1f", -- WSO_RCD_EOT_BUTTON_PUSH {1, 0, 1, AVTR Record/End Of Tape Button (no function)}
    [2817] = "%.1f", -- WSO_UHF_REPEATER_PUSH
    [2818] = "%.2f", -- WSO_INS_ALIGN_LIGHT_ROTATION {0.5, 0, 1, INS Align Lamp (rotate to dim)}
    [2819] = "%.2f", -- WSO_INS_HEAT_LIGHT_ROTATION {0.5, 0, 1, INS Heat Lamp (rotate to dim)}
    [2820] = "%.1f", -- WSO_TACAN_TEST_LIGHT_ROTATION
    [2821] = "%.1f", -- WSO_TACAN_TEST_LIGHT_PUSH
    [2822] = "%.1f", -- WSO_MSL_TONE_KNOB_ROTATION {1, 0, 1, Aural Tone Volume}
    [2823] = "%.1f", -- WSO_UHF_AUX_TEST_PUSH
    [2824] = "%.1f", -- WSO_ALR46_PRIORITY_PUSH {1, 0, 1, Priority/Open Mode}
    [2825] = "%.1f", -- WSO_ALR46_SEARCH_PUSH {1, 0, 1, Search}
    [2826] = "%.1f", -- WSO_ALR46_HANDOFF_PUSH {1, 0, 1, Handoff}
    [2827] = "%.1f", -- WSO_ALR46_LAUNCH_PUSH {1, 0, 1, (no function)}
    [2828] = "%.1f", -- WSO_ALR46_LOW_PUSH {1, 0, 1, Low/Altitude Mode}
    [2829] = "%.1f", -- WSO_ALR46_TGT_SEP_PUSH {1, 0, 1, Target Separation}
    [2830] = "%.1f", -- WSO_ALR46_SYS_TEST_PUSH {1, 0, 1, System Test}
    [2831] = "%.1f", -- WSO_ALR46_UNKNOWN_PUSH {1, 0, 1, Unknown}
    [2832] = "%.1f", -- WSO_ALR46_ACTIVITY_PUSH {1, 0, 1, (no function)}
    [2833] = "%.1f", -- WSO_ALR46_POWER_PUSH {1, 0, 1, System Power}
    [2834] = "%.1f", -- PILOT_EJECT_LIGHT_PUSH {-1, 0, 1, Signal Ejection To WSO}
    [2835] = "%.1f", -- PILOT_EJECT_LIGHT
    [2836] = "%.1f", -- WSO_EJECT_LIGHT_PUSH_TEST {1, 0, 1, Eject Light (push to test)}
    [2837] = "%.1f", -- WSO_EJECT_LIGHT
    [2838] = "%.1f", -- PILOT_SEAT_VISIBILITY
    [2839] = "%.1f", -- WSO_SEAT_VISIBILITY
    [2840] = "%.1f", -- PILOT_STICK_VISIBILITY {-1, 0, 1, Hide/Show Stick}
    [2841] = "%.1f", -- WSO_STICK_VISIBILITY {-1, 0, 1, Hide/Show Stick}
    [2842] = "%.1f", -- PILOT_IFF_REPLY_LAMP_ROTATION {0, 0, 1, IFF Reply Lamp (push to test rotate to dim)}
    [2843] = "%.1f", -- PILOT_IFF_REPLY_LAMP_PUSH {1, 0, 1, IFF Reply Lamp (push to test rotate to dim)}
    [2844] = "%.1f", -- PILOT_IFF_TEST_LAMP_ROTATION {0, 0, 1, IFF Test Lamp (push to test rotate to dim)}
    [2845] = "%.1f", -- PILOT_IFF_TEST_LAMP_PUSH {1, 0, 1, IFF Test Lamp (push to test rotate to dim)}
    [2846] = "%.1f", -- PILOT_WEAPON_SEL_BRIGHTNESS
    [2847] = "%.1f", -- PILOT_RWR_LAMP_BRIGHTNESS
    [2848] = "%.1f", -- WSO_RWR_LAMP_BRIGHTNESS
    [2850] = "%.1f", -- PILOT_CABLE_SEG1_FWD_AFT
    [2851] = "%.1f", -- PILOT_CABLE_SEG1_UP_DN
    [2852] = "%.1f", -- PILOT_CABLE_SEG2_FWD_AFT
    [2853] = "%.1f", -- PILOT_CABLE_SEG2_UP_DN
    [2854] = "%.1f", -- PILOT_CABLE_SEG3_FWD_AFT
    [2855] = "%.1f", -- PILOT_CABLE_SEG3_UP_DN
    [2856] = "%.1f", -- PILOT_CABLE_SEG4_FWD_AFT
    [2857] = "%.1f", -- PILOT_CABLE_SEG4_LEFT_RIGHT
    [2858] = "%.1f", -- PILOT_CABLE_SEG5_FWD_AFT
    [2859] = "%.1f", -- PILOT_CABLE_SEG5_LEFT_RIGHT
    [2860] = "%.1f", -- PILOT_SAI_INTENSITY {1, 0, 1, Change Standby Attitude Indicator Brightness}
    [2861] = "%.1f", -- PILOT_SAI_CB {-1, 0, 1, Standby Attitude Indicator CB}
    [2862] = "%.1f", -- PILOT_THROTTLE_SWITCH_UD
    [2863] = "%.1f", -- PILOT_THROTTLE_SWITCH_FA
    [2864] = "%.1f", -- PILOT_INSTRUMENT_PANEL_LIGHT
    [2865] = "%.1f", -- WSO_INSTRUMENT_PANEL_LIGHT
    [2866] = "%.1f", -- PILOT_CONSOLE_LIGHT
    [2867] = "%.1f", -- WSO_CONSOLE_LIGHT
    [2868] = "%.1f", -- PILOT_AOA_INDICATOR_LIGHT -- TODO Doesnt exist in the model
    [2869] = "%.1f", -- PILOT_HSI_LIGHT -- TODO Doesnt exist in the model
    [2870] = "%.1f", -- PILOT_VVI_LIGHT -- TODO Doesnt exist in the model
    [2871] = "%.1f", -- PILOT_SPEED_INDICATOR_LIGHT -- TODO Doesnt exist in the model
    [2872] = "%.1f", -- PILOT_ADI_LIGHT -- TODO Doesnt exist in the model
    [2873] = "%.1f", -- PILOT_ALTIMETER_LIGHT -- TODO Doesnt exist in the model
    [2874] = "%.1f", -- PILOT_AOA_INDEXER_BRIGHTNESS
    [2875] = "%.1f", -- WSO_AOA_INDEXER_BRIGHTNESS
    [2876] = "%.1f", -- PILOT_SAI_LIGHT -- TODO Doesnt exist in the model
    [2877] = "%.1f", -- WSO_LAMP_RADAR_H
    [2878] = "%.1f", -- WSO_LAMP_RADAR_T
    [2879] = "%.1f", -- PILOT_CABIN_VENT_PLUG {-1, 0, 1, Emergency Release Cockpit Pressure}
    [2880] = "%.1f", -- WSO_APX_GLASS_COVER
    [2881] = "%.1f", -- PILOT_STANDBY_COMPASS_LIGHT -- TODO Doesnt exist in the model
    [2882] = "%.1f", -- WSO_STANDBY_COMPASS_LIGHT -- TODO Doesnt exist in the model
    [2883] = "%.1f", -- PILOT_SPARE_WARNING_LIGHTS
    [2884] = "%.1f", -- PILOT_AVTR_TAPE_EJECT_BUTTON {1, 0, 1, Eject AVTR Cassette (OFF mode only)}
    [2885] = "%.1f", -- PILOT_AVTR_TAPE_UNTHREAD_BUTTON {1, 0, 1, Unthread AVTR Cassette}
    [2886] = "%.1f", -- PILOT_AVTR_TAPE_POSITION -- TODO Doesnt exist in the model
    [2887] = "%.1f", -- WSO_RCD_EOT_BUTTON_BRIGHTNESS
    [2888] = "%.1f", -- SHOW_PROXY_PILOT
    [2889] = "%.1f", -- PILOT_INDICATOR_WARNING_LIGHTS_BRIGHTNESS
    [2890] = "%.1f", -- WSO_INDICATOR_WARNING_LIGHTS_BRIGHTNESS
    [3000] = "%.1f", -- SHAKE_RangeIndicator
    [3002] = "%.1f", -- SHAKE_Mirrors
    [3003] = "%.1f", -- SHAKE_GlareshieldLamp_Left
    [3004] = "%.1f", -- SHAKE_Glareshield_Left
    [3005] = "%.1f", -- SHAKE_WeaponsLights
    [3006] = "%.1f", -- SHAKE_Lamps_RightSide
    [3007] = "%.1f", -- SHAKE_RWR_Pilot
    [3008] = "%.1f", -- SHAKE_JettisonHandle
    [3009] = "%.1f", -- SHAKE_CanopyHandle
    [3010] = "%.1f", -- SHAKE_BrakeHandle
    [3011] = "%.1f", -- SHAKE_StringThing_LeftSide
    [3012] = "%.1f", -- SHAKE_StringThing_RightSide
    [3013] = "%.1f", -- SHAKE_HUD_Right
    [3014] = "%.1f", -- SHAKE_HUD_Left
    [3015] = "%.1f", -- SHAKE_RightSideGlareshield
    [3016] = "%.1f", -- SHAKE_TopShootLight
    [3017] = "%.1f", -- SHAKE_PullUpLamp
    [3018] = "%.1f", -- SHAKE_ECS_LEFT
    [3019] = "%.1f", -- SHAKE_ECS_RIGHT
    [3020] = "%.1f", -- SHAKE_PAPER_Right
    [3021] = "%.1f", -- SHAKE_PAPER_Left
    [3022] = "%.1f", -- SHAKE_EjectionHandles
    [3023] = "%.1f", -- SHAKE_SwitchFront
    [3024] = "%.1f", -- SHAKE_RightLightStack
    [3025] = "%.1f", -- SHAKE_Clock
    [3028] = "%.1f", -- SHAKE_EscapeTool
    [3029] = "%.1f", -- SHAKE_EscapeToolRing
    [3030] = "%.1f", -- SHAKE_Glareshield_LR
    [3031] = "%.1f", -- SHAKE_Glareshield_UD
    [3032] = "%.1f", -- SHAKE_Glareshield_Shaking
    [3033] = "%.1f", -- SHAKE_Glareshield_Centripetal
    [3034] = "%.1f", -- SHAKE_RingGravity
    [3035] = "%.1f", -- PNT_WsoMirror_Right {-1, 0, 1, Toggle WSO Mirror Right}
    [3036] = "%.1f", -- PNT_PILOT_GreasePencil {-1, 0, 1, Hide/Show Grease Pencil}
    [3037] = "%.1f", -- PNT_WSO_GreasePencil {-1, 0, 1, Hide/Show Grease Pencil}
    [3038] = "%.1f", -- RADAR_PILOT_BRIGHTNESS
    [3039] = "%.1f", -- RADAR_PILOT_RED_SLIDER {0, 0, 1, Screen Night Filter (Red)}
    [3040] = "%.1f", -- RADAR_PILOT_INT_SLIDER {0, 0, 1, Screen Intensity}
    [3041] = "%.1f", -- PILOT_SEAT_HEIGHT_SWITCH {-1, -1, 0, Change Seat Position}
    [3042] = "%.1f", -- PILOT_SEAT_HEIGHT
    [3043] = "%.1f", -- WSO_SEAT_HEIGHT_SWITCH {-1, -1, 0, Change Seat Position}
    [3044] = "%.1f", -- WSO_SEAT_HEIGHT
    [3045] = "%.1f", -- PILOT_EMERG_GEAR_HANDLE {1, 0, 1, Landing Gear (Pull Out for Emergency)}
    [3046] = "%.1f", -- PILOT_MODE_LIGHT_CB {-1, 0, 1, Mode/Indicator Lights CB}
    [3047] = "%.1f", -- PILOT_PRIM_INST_LIGHT_CB {-1, 0, 1, Flight Instrument Lights CB}
    [3048] = "%.2f", -- PROXY_LOD --0: both visible 0.5, in WSO seat 1.0, in Pilot Seat., , ,
    [3050] = "%.1f", -- WSO_SHOW_HIDE_RADAR_BOOT --Also swaps between the center pedestals with different RM's. {-1, 0, 1, Show/Hide Radar Boot}
    [3051] = "%.1f", -- WATER_TEST_ROLL -- TODO Doesnt exist in the model
    [3052] = "%.1f", -- WATER_TEST_UPDN -- TODO Doesnt exist in the model
    [3055] = "%.1f", -- TOGGLE_MIRRORS
    [3060] = "%.1f", -- PROXY_VR_PILOT --Used to intercept the command from the controller.
    [3061] = "%.1f", -- PNT_PilotMirror_Top {-1, 0, 1, Toggle Mirrors C}
    [3062] = "%.1f", -- PNT_PilotMirror_Left {-1, 0, 1, Toggle Mirrors L}
    [3063] = "%.1f", -- PNT_PilotMirror_Right {-1, 0, 1, Toggle Mirrors R}
    [3068] = "%.1f", -- PNT_red_reticle {-1, 0, 1, Screen Night Filter (red)}
    [9999] = "%.2f", -- ??? PNT_EMERG_ADI {0.5, 0, 1, Cage/Uncage (turn to trim)}
}

-- Please fill in this table with IDs that you're using so there are no collisions!
-- Then just use the table entry, for example: ExportScript.Tools.SendData(export_ids.PILOT_GUN_ROUNDS, ...)
export_ids = {
    PILOT_TAS_NUMERIC              = 10001,
    PILOT_TAS_STRING               = 10002,
    PILOT_GUN_ROUNDS               = 10003,

    PILOT_RADIO_REPEATER           = 10004,
    PILOT_RANGE_INDICATOR          = 10005, -- TGP range thingy left of HUD
    PILOT_AVTR_TIME_INDICATOR      = 10006,
    PILOT_VOR_ILS_FREQUENCY        = 10007,
    PILOT_TACAN_FREQUENCY          = 10008,
    WSO_TACAN_FREQUENCY            = 10009,

    -- Pilot RWR
    PILOT_RWR_MODE                 = 10010,
    PILOT_RWR_SEARCH               = 10011,
    PILOT_RWR_HANDOFF              = 10012,
    PILOT_RWR_LAUNCH               = 10013,
    PILOT_RWR_ALTITUDE             = 10014,
    PILOT_RWR_T                    = 10015,
    PILOT_RWR_SYS_TEST             = 10016,
    PILOT_RWR_SHIP                 = 10017,
    PILOT_RWR_ACT_PWR              = 10018,
    PILOT_RWR_POWER                = 10019,

    -- WSO Rollers
    WSO_LASER_CODE                 = 10020,
    WSO_WRCS_DRAG                  = 10021,
    WSO_WRCS_NS                    = 10022,
    WSO_WRCS_EW                    = 10023,
    WSO_WRCS_ADVANCE               = 10024,
    WSO_WRCS_RANGE                 = 10025,
    WSO_WRCS_ALTRANGE              = 10026,
    WSO_GROUNDSPEED                = 10027,
    WSO_TRUEAIRSPEED               = 10028,

    -- TODO add the rest of the roller for the WSO here, please
    -- Navigation Computer
    WSO_NAVCOMP_VARIATION          = 10029, --WIP
    WSO_NAVCOMP_VARIATION_FULL     = 10030, --WIP
    WSO_NAVCOMP_WIND_DEG           = 10031, --WIP
    WSO_NAVCOMP_WIND_KNOTS         = 10032, --WIP
    WSO_NAVCOMP_POSITION_LAT       = 10033, --WIP
    WSO_NAVCOMP_POSITION_LAT_FULL  = 10034, --WIP
    WSO_NAVCOMP_POSITION_LONG      = 10035, --WIP
    WSO_NAVCOMP_POSITION_LONG_FULL = 10036, --WIP
    WSO_NAVCOMP_TARGET_LAT         = 10037, --WIP
    WSO_NAVCOMP_TARGET_LAT_FULL    = 10038, --WIP
    WSO_NAVCOMP_TARGET_LONG        = 10039, --WIP
    WSO_NAVCOMP_TARGET_LONG_FULL   = 10040, --WIP

    -- UHF Radios (Can also add Command feature seen in tacan 100074)
    PILOT_UHF_FREQ                 = 10041, --WIP
    PILOT_UHF_CHANNEL              = 10042, --WIP
    WSO_UHF_FREQ                   = 10043, --WIP
    WSO_UHF_CHANNEL                = 10044, --WIP

    -- HSIs
    PILOT_HSI_COURSE_WINDOW        = 10045,
    PILOT_HSI_MILES                = 10046,
    WSO_HSI_COURSE_WINDOW          = 10047,
    WSO_HSI_MILES_VERT             = 10048,
    WSO_HSI_MILES_HORZ             = 10049,
    WSO_ARBCS_LOW_ANGLE            = 10050,
    WSO_ARBCS_HIGH_ANGLE           = 10051,
    WSO_ARBCS_PULLUP               = 10052,
    WSO_ARBCS_RELEASE              = 10053,

    -- Countermeasures
    WSO_CHAFF                      = 10054,
    WSO_FLARE                      = 10055,

    -- IFF
    PILOT_IFF_M1                   = 10056,
    PILOT_IFF_M3                   = 10057,
    WSO_APX80A                     = 10058,
    WSO_APX80A_FULL                = 10059,

    PILOT_GEAR_IND                 = 10060,
    PILOT_ALTIMETER                = 10061,
    MISSILE_LIGHTS                 = 10062,
    PILOT_RADAR_ALTITUDE           = 10063,
    PILOT_HSI_BAR_POINTER          = 10064,
    LEFT_ENGINE_RPM                = 10065,
    RIGHT_ENGINE_RPM               = 10066,
    VSI_INDICATION                 = 10067,
    AOA_INDEXER                    = 10068,
    PILOT_FUEL_READOUT             = 10069,
    PILOT_HDG_CRS                  = 10070,
    PILOT_HSI_COMPASS              = 10071,
    PILOT_HSI_POINTER              = 10072,
    PILOT_TACAN_FREQ_CMD_LGHT      = 10074,
    WSO_TACAN_FREQ_CMD_LGHT        = 10075,
}

-- ⚪ white
-- ⚫ black
-- 🟡 yellow
-- 🔴 red
-- 🟢 green
-- 🔵 blue

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
    ExportScript.WSO_speedIndicators(mainPanelDevice)
    ExportScript.Pilot_Gear_Status(mainPanelDevice)
    ExportScript.Pilot_Altimeter(mainPanelDevice)
    ExportScript.RADAR_ALTITUDE(mainPanelDevice)
    ExportScript.ENGINE_RPM(mainPanelDevice)
    ExportScript.VSI_INDICATION(mainPanelDevice)
    ExportScript.AOA_INDEXER(mainPanelDevice)
end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)

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
	-- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000)))
	]]

    ExportScript.TAS_indicator(mainPanelDevice)
    ExportScript.gun_rounds_indicator(mainPanelDevice)
    ExportScript.RWR_control_panel(mainPanelDevice)
    ExportScript.radio_repeater()
    ExportScript.range_indicator()
    ExportScript.avtr_time_indicator()
    ExportScript.VOR_ILS_frequency(mainPanelDevice)
    ExportScript.TACAN_channels(mainPanelDevice)
    ExportScript.LaserCodeReadout(mainPanelDevice)
    ExportScript.WSO_WRCS(mainPanelDevice)
    ExportScript.ARBCS(mainPanelDevice)
    ExportScript.UHF_radios(mainPanelDevice) -- WIP
    ExportScript.HSI(mainPanelDevice)
    ExportScript.Chaff_Flare(mainPanelDevice)
    ExportScript.IFF(mainPanelDevice)
    ExportScript.NAVCOMP(mainPanelDevice) -- WIP
    ExportScript.Missile_Lights(mainPanelDevice)
    ExportScript.Pilot_Fuel_Readout(mainPanelDevice)

    ---------------
    -- Log Dumps --
    ---------------
    -- ExportScript.CockpitParamsLogDump(mainPanelDevice)
    -- ExportScript.MetaTableLogDump(mainPanelDevice)
    -- ExportScript.ListIndicationLogDump(mainPanelDevice)
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
end

-----------------------------
--     Custom functions    --
-----------------------------

local function round(num)
    -- Hey look at that funny FPU trick! Basically a round function
    -- https://stackoverflow.com/a/58411671/17325837
    return num + (2 ^ 52 + 2 ^ 51) - (2 ^ 52 + 2 ^ 51)
end

function ExportScript.Pilot_Fuel_Readout(mainPanelDevice) -- bones1014
    local tens = string.format("%d", mainPanelDevice:get_argument_value(719) * 10)
    local hundreds = string.format("%d", mainPanelDevice:get_argument_value(720) * 10)
    local thousands = string.format("%d", mainPanelDevice:get_argument_value(721) * 10)
    local tensofthousands = string.format("%d", mainPanelDevice:get_argument_value(722) * 10)
    ExportScript.Tools.SendData(export_ids.PILOT_FUEL_READOUT,
        string.format("FUEL\n" .. tensofthousands .. thousands .. hundreds .. tens .. "\nx10"))
end

function ExportScript.ENGINE_RPM(mainPanelDevice) -- Bearmat
    local rpm_valueL = mainPanelDevice:get_argument_value(299) * 100
    local formatted_rpmL = string.format("%.0f", rpm_valueL)
    ExportScript.Tools.SendData(export_ids.LEFT_ENGINE_RPM, formatted_rpmL)

    local rpm_valueR = mainPanelDevice:get_argument_value(300) * 100
    local formatted_rpmR = string.format("%.0f", rpm_valueR)
    ExportScript.Tools.SendData(export_ids.RIGHT_ENGINE_RPM, formatted_rpmR)
end

function ExportScript.VSI_INDICATION(mainPanelDevice) -- Bearmat
    local vsi_value = mainPanelDevice:get_argument_value(90)
    local vsi_fpm = vsi_value * 6000
    local formatted_vsi = string.format("%d", vsi_fpm)
    ExportScript.Tools.SendData(export_ids.VSI_INDICATION, formatted_vsi)
end

function ExportScript.AOA_INDEXER(mainPanelDevice) -- Bearmat
    local aoa_value = mainPanelDevice:get_argument_value(70)
    local aoa_units = aoa_value * 30
    local formatted_aoa = string.format("%d", aoa_units)
    ExportScript.Tools.SendData(export_ids.AOA_INDEXER, formatted_aoa)
end

function ExportScript.RADAR_ALTITUDE(mainPanelDevice) -- Bearmat
    local radar_altitude_value = mainPanelDevice:get_argument_value(73)

    local altitude_table = {
        { 0.0000, 0 },
        { 0.0155, 0 },    -- on ground
        { 0.1681, 50 },
        { 0.2220, 100 },  -- average between 0.2080 and 0.2220
        { 0.2950, 150 },
        { 0.3682, 200 },  -- new value
        { 0.4597, 300 },
        { 0.5705, 500 },  -- new value
        { 0.6933, 1000 }, -- average between 0.6933 and 0.7145
        { 0.7733, 1500 },
        { 0.8159, 2000 }, -- average between 0.8159 and 0.8224
        { 0.9011, 3000 }, -- average between 0.9011 and 0.9630
        { 0.9839, 5000 }
    }

    local function interpolate(value, table)
        for i = 1, #table - 1 do
            if value >= table[i][1] and value <= table[i + 1][1] then
                local ratio = (value - table[i][1]) / (table[i + 1][1] - table[i][1])
                return table[i][2] + ratio * (table[i + 1][2] - table[i][2])
            end
        end
        return 0 -- return 0 if value is out of bounds
    end

    local radar_altitude_feet = interpolate(radar_altitude_value, altitude_table)
    local formatted_radar_altitude = string.format("%d", radar_altitude_feet)

    ExportScript.Tools.SendData(export_ids.PILOT_RADAR_ALTITUDE, formatted_radar_altitude)
end

function ExportScript.Pilot_Gear_Status(mainPanelDevice)
    local left, nose, right

    if mainPanelDevice:get_argument_value(52) < 0.5 then
        left = "🔴"
    elseif mainPanelDevice:get_argument_value(52) > 0.1 and mainPanelDevice:get_argument_value(52) < 0.9 then
        left = "🟡"
    else
        left = "🟢"
    end

    if mainPanelDevice:get_argument_value(51) < 0.5 then
        nose = "🔴"
    elseif mainPanelDevice:get_argument_value(51) > 0.1 and mainPanelDevice:get_argument_value(51) < 0.9 then
        nose = "🟡"
    else
        nose = "🟢"
    end

    if mainPanelDevice:get_argument_value(50) < 0.5 then
        right = "🔴"
    elseif mainPanelDevice:get_argument_value(50) > 0.1 and mainPanelDevice:get_argument_value(50) < 0.9 then
        right = "🟡"
    else
        right = "🟢"
    end

    local All_Gear = "LND GEAR\n" .. nose .. "\n" .. left .. " " .. right
    ExportScript.Tools.SendData(export_ids.PILOT_GEAR_IND, All_Gear)
end

function ExportScript.Pilot_Altimeter(mainPanelDevice)
    local altitudeWindowReadout_value1 = string.format("%.f", mainPanelDevice:get_argument_value(92) * 10)   --hundreds
    --local altitudeWindowReadout_value2 = string.format("%.f",math.floor(mainPanelDevice:get_argument_value(93) * 10)) --thousands
    local altitudeWindowReadout_value2 = string.format("%.f", mainPanelDevice:get_argument_value(93) * 10)   --thousands
    local altitudeWindowReadout_value3 = string.format("%.f", mainPanelDevice:get_argument_value(94) * 10)   --tenthousands
    local altitudeWindowReadout_needle = string.format("%.f", mainPanelDevice:get_argument_value(91) * 1000) --needle
    local separator
    --this fixes the extra "10" problem
    if mainPanelDevice:get_argument_value(92) * 10 < 10 then --altitudeWindowReadout_value1 == "10" then
        altitudeWindowReadout_value1 = "0"
    end
    if altitudeWindowReadout_value2 == "10" then
        altitudeWindowReadout_value2 = "0"
    end
    if altitudeWindowReadout_value3 == "10" then
        altitudeWindowReadout_value3 = "0"
    end
    if altitudeWindowReadout_needle == "10" then
        altitudeWindowReadout_needle = "0"
    end
    --this is for the hash part
    if altitudeWindowReadout_value1 == "0" then
        altitudeWindowReadout_value1 = ""
    end

    -- this is to fill the blank space when the needle is below 100
    if #altitudeWindowReadout_needle == 1 then
        altitudeWindowReadout_needle = string.format("00" .. altitudeWindowReadout_needle)
    end
    if #altitudeWindowReadout_needle == 2 then
        altitudeWindowReadout_needle = string.format("0" .. altitudeWindowReadout_needle)
    end

    --[[ExportScript.Tools.SendData(44261, altitudeWindowReadout_value1 .. " ft") --test values
    ExportScript.Tools.SendData(44262, altitudeWindowReadout_value2 .. " ft") --test values
	ExportScript.Tools.SendData(44263, altitudeWindowReadout_value3 .. " ft") --test values
	ExportScript.Tools.SendData(44264, altitudeWindowReadout_needle .. " ft") --test values
    ExportScript.Tools.SendData(44265, string.format("%.f",mainPanelDevice:get_argument_value(92) * 10) .. " ft") --test values
    ExportScript.Tools.SendData(44266, string.format("%2.d",mainPanelDevice:get_argument_value(93) * 10) .. " ft") --test values
	ExportScript.Tools.SendData(44267, string.format("%.f",mainPanelDevice:get_argument_value(94) * 10) .. " ft") --test values
	ExportScript.Tools.SendData(44268, string.format("%.f",mainPanelDevice:get_argument_value(91) * 1000) .. " ft") --test values]]
    --add separator
    if altitudeWindowReadout_value2 ~= "0" then
        separator = ","
    else
        separator = ""
    end
    --value 3 isnt needed bc it is taken over by the needle
    local altitudeWindowReadout_total = string.format(altitudeWindowReadout_value3 ..
        altitudeWindowReadout_value2 .. altitudeWindowReadout_value1 .. altitudeWindowReadout_needle)
    --remove leading zeros
    altitudeWindowReadout_total       = altitudeWindowReadout_total:match("0*(%d+)") --https://stackoverflow.com/questions/34331633/remove-leading-zeroes-in-lua-string
    local altMsl_f4e_ft               = altitudeWindowReadout_total .. "\nFT"
    ExportScript.Tools.SendData(export_ids.PILOT_ALTIMETER, altMsl_f4e_ft)
    --[[ExportScript.Tools.SendData(export_ids.PILOT_needle, altitudeWindowReadout_needle) --test
    ExportScript.Tools.SendData(export_ids.PILOT_hundreds, altitudeWindowReadout_value1) --test
    ExportScript.Tools.SendData(export_ids.PILOT_thousands, altitudeWindowReadout_value2) --test
    ExportScript.Tools.SendData(export_ids.PILOT_tenthousands, altitudeWindowReadout_value3) --test]]
end

function ExportScript.Missile_Lights(mainPanelDevice)
    local heat_left, heat_ml, heat_mr, heat_right, radar_tl, radar_tr, radar_bl, radar_br
    if mainPanelDevice:get_argument_value(284) < 0.8 then
        heat_left = "⚫"
    else
        heat_left = "🔴"
    end
    if mainPanelDevice:get_argument_value(285) < 0.8 then
        heat_ml = "⚫"
    else
        heat_ml = "🔴"
    end
    if mainPanelDevice:get_argument_value(286) < 0.8 then
        heat_mr = "⚫"
    else
        heat_mr = "🔴"
    end
    if mainPanelDevice:get_argument_value(287) < 0.8 then
        heat_right = "⚫"
    else
        heat_right = "🔴"
    end
    if mainPanelDevice:get_argument_value(288) < 0.8 then
        radar_tl = "⚫"
    else
        radar_tl = "🟢"
    end
    if mainPanelDevice:get_argument_value(289) < 0.8 then
        radar_bl = "⚫"
    else
        radar_bl = "🟢"
    end
    if mainPanelDevice:get_argument_value(290) < 0.8 then
        radar_tr = "⚫"
    else
        radar_tr = "🟢"
    end
    if mainPanelDevice:get_argument_value(291) < 0.8 then
        radar_br = "⚫"
    else
        radar_br = "🟢"
    end
    local missile_lights = "MSSL STAT" .. "\n" ..
        "" .. radar_tl .. "  " .. radar_tr .. "\n" ..
        heat_left .. heat_ml .. "  " .. heat_mr .. heat_right .. "\n" ..
        "" .. radar_bl .. "  " .. radar_br
    ExportScript.Tools.SendData(export_ids.MISSILE_LIGHTS, missile_lights)
end

function ExportScript.NAVCOMP(mainPanelDevice)
    --[[
    [902] = "%.1f",  -- NAV_COMP_RIO_WIND_MAG_ONES
    [903] = "%.1f",  -- NAV_COMP_RIO_WIND_MAG_TENS
    [904] = "%.1f",  -- NAV_COMP_RIO_WIND_MAG_HUNDREDS -- only goes up to 1



    [906] = "%.1f",  -- NAV_COMP_RIO_WIND_DIR_ONES
    [907] = "%.1f",  -- NAV_COMP_RIO_WIND_DIR_TENS
    [908] = "%.1f",  -- NAV_COMP_RIO_WIND_DIR_HUNDREDS -- only goes up to 3

    -- Note: for the rollers with flags, when the flag is activated
    -- the numbers are tumbled in "reverse".
    -- Can use model viewer to see how high these go.

    -- when using this one, it goes to 180 west to twice over east 080
    [910] = "%.1f",  -- NAV_COMP_RIO_MAG_VAR_FLAG
    [911] = "%.1f",  -- NAV_COMP_RIO_MAG_VAR_ONES
    [912] = "%.1f",  -- NAV_COMP_RIO_MAG_VAR_TENS
    [913] = "%.1f",  -- NAV_COMP_RIO_MAG_VAR_HUNDREDS

    [915] = "%.1f",  -- NAV_COMP_RIO_POS_LATITUDE_ONES
    [916] = "%.1f",  -- NAV_COMP_RIO_POS_LATITUDE_TENS
    [917] = "%.1f",  -- NAV_COMP_RIO_POS_LATITUDE_HUNDREDS
    [918] = "%.1f",  -- NAV_COMP_RIO_POS_LATITUDE_THOUSANDS
    [919] = "%.1f",  -- NAV_COMP_RIO_POS_LATITUDE_FLAG -- NORTH SOUTH


    [921] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_FLAG -- EAST WEST
    [922] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_ONES
    [923] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_TENS
    [924] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_HUNDREDS
    [925] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_THOUSANDS
    [926] = "%.1f",  -- NAV_COMP_RIO_POS_LONGITUDE_TENTHOUSANDS


    [928] = "%.1f",  -- NAV_COMP_RIO_TARGET_LATITUDE_ONES
    [929] = "%.1f",  -- NAV_COMP_RIO_TARGET_LATITUDE_TENS
    [930] = "%.1f",  -- NAV_COMP_RIO_TARGET_LATITUDE_HUNDREDS
    [931] = "%.1f",  -- NAV_COMP_RIO_TARGET_LATITUDE_THOUSANDS
    [932] = "%.1f",  -- NAV_COMP_RIO_TARGET_LATITUDE_FLAG -- NORTH SOUTH


    [934] = "%.1f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_FLAG -- EAST WEST
    [935] = "%.1f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_ONES
    [936] = "%.1f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_TENS
    [937] = "%.1f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_HUNDREDS
    [938] = "%.1f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_THOUSANDS
    [939] = "%.1f",  -- NAV_COMP_RIO_TARGET_LONGITUDE_TENTHOUSANDS
    ]]
end

-- These IFF functions take raw arg values and returns the
-- equivalent number based on a scale of 0-7 for IFF systems.
-- Two different functions were required for both the pilot and
-- WSO APX80A systems based on the animations not being the same.
function IFFmodeTransator(value)
    if value < 0.10 then
        value = 0
    elseif value < 0.20 then
        value = 1
    elseif value < 0.35 then
        value = 2
    elseif value < 0.45 then
        value = 3
    elseif value < 0.60 then
        value = 4
    elseif value < 0.72 then
        value = 5
    elseif value < 0.86 then
        value = 6
    else
        value = 7
    end
    return value
end

function IFFmodeTransatorAPX80(value)
    if value < 0.10 then
        value = 0
    elseif value < 0.15 then
        value = 1
    elseif value < 0.30 then
        value = 2
    elseif value < 0.45 then
        value = 3
    elseif value < 0.55 then
        value = 4
    elseif value < 0.65 then
        value = 5
    elseif value < 0.80 then
        value = 6
    elseif value < 0.95 then
        value = 7
    else
        value = 0
    end
    return value
end

function ExportScript.IFF(mainPanelDevice)
    -- Pilot Mode 1 roller
    local pilot_M1_ones = mainPanelDevice:get_argument_value(1332)
    local pilot_M1_tens = mainPanelDevice:get_argument_value(1331)

    if pilot_M1_ones == 0.0 then
        pilot_M1_ones = 0
    elseif pilot_M1_ones < 0.4 then
        pilot_M1_ones = 1
    elseif pilot_M1_ones < 0.7 then
        pilot_M1_ones = 2
    else
        pilot_M1_ones = 3
    end

    pilot_M1_tens = IFFmodeTransator(pilot_M1_tens)

    ExportScript.Tools.SendData(export_ids.PILOT_IFF_M1,
        string.format(pilot_M1_tens .. pilot_M1_ones))

    -- Pilot M3 rollers
    local pilot_M3_ones = mainPanelDevice:get_argument_value(1336)
    local pilot_M3_tens = mainPanelDevice:get_argument_value(1335)
    local pilot_M3_hundreds = mainPanelDevice:get_argument_value(1334)
    local pilot_M3_thousands = mainPanelDevice:get_argument_value(1333)

    pilot_M3_ones = IFFmodeTransator(pilot_M3_ones)
    pilot_M3_tens = IFFmodeTransator(pilot_M3_tens)
    pilot_M3_hundreds = IFFmodeTransator(pilot_M3_hundreds)
    pilot_M3_thousands = IFFmodeTransator(pilot_M3_thousands)

    ExportScript.Tools.SendData(export_ids.PILOT_IFF_M3,
        string.format(pilot_M3_thousands .. pilot_M3_hundreds .. pilot_M3_tens .. pilot_M3_ones))

    -- WSO APX-80A
    local Apx80_ones = mainPanelDevice:get_argument_value(2000)
    local Apx80_tens = mainPanelDevice:get_argument_value(2001)
    local Apx80_hundreds = mainPanelDevice:get_argument_value(2002)
    local Apx80_thousands = mainPanelDevice:get_argument_value(2003)
    local Apx80_mode = mainPanelDevice:get_argument_value(2004)


    Apx80_ones = IFFmodeTransatorAPX80(Apx80_ones)
    Apx80_tens = IFFmodeTransatorAPX80(Apx80_tens)
    Apx80_hundreds = IFFmodeTransatorAPX80(Apx80_hundreds)
    Apx80_thousands = IFFmodeTransatorAPX80(Apx80_thousands)

    if Apx80_mode < 0.15 then
        Apx80_mode = "X "
    elseif Apx80_mode < 0.25 then
        Apx80_mode = "1 "
    elseif Apx80_mode < 0.45 then
        Apx80_mode = "2 "
    elseif Apx80_mode < 0.65 then
        Apx80_mode = "3 "
    elseif Apx80_mode < 0.85 then
        Apx80_mode = "4/A "
    else
        Apx80_mode = "4/B "
    end

    ExportScript.Tools.SendData(export_ids.WSO_APX80A,
        string.format(Apx80_thousands .. Apx80_hundreds .. Apx80_tens .. Apx80_ones))

    ExportScript.Tools.SendData(export_ids.WSO_APX80A_FULL,
        string.format("%s%.0f%.0f%.0f%.0f",
            Apx80_mode, Apx80_thousands, Apx80_hundreds, Apx80_tens, Apx80_ones))
end

function ExportScript.Chaff_Flare(mainPanelDevice)
    local chaff_ones = string.format("%d", mainPanelDevice:get_argument_value(1390) * 10)
    local chaff_tens = string.format("%d", mainPanelDevice:get_argument_value(1391) * 10)
    local chaff_hundreds = string.format("%d", mainPanelDevice:get_argument_value(1392) * 10)

    ExportScript.Tools.SendData(export_ids.WSO_CHAFF,
        string.format(chaff_hundreds .. chaff_tens .. chaff_ones))

    local flare_ones = string.format("%d", mainPanelDevice:get_argument_value(1393) * 10)
    local flare_tens = string.format("%d", mainPanelDevice:get_argument_value(1394) * 10)
    local flare_hundreds = string.format("%d", mainPanelDevice:get_argument_value(1395) * 10)

    ExportScript.Tools.SendData(export_ids.WSO_FLARE,
        string.format(flare_hundreds .. flare_tens .. flare_ones))
end

function ExportScript.HSI(mainPanelDevice)
    -- Pilot HSI Course Roller
    local pilotCourseSet_ones = string.format("%d", mainPanelDevice:get_argument_value(674) * 10)
    local pilotCourseSet_tens = string.format("%d", mainPanelDevice:get_argument_value(675) * 10)
    local pilotCourseSet_hundreds = string.format("%d", mainPanelDevice:get_argument_value(676) * 10)

    ExportScript.Tools.SendData(export_ids.PILOT_HSI_COURSE_WINDOW,
        string.format(pilotCourseSet_hundreds .. pilotCourseSet_tens .. pilotCourseSet_ones))

    -- HSI Bar
    local bearing_value = mainPanelDevice:get_argument_value(670) * 360
    local formatted_bearing = string.format("%03.0f", bearing_value)
    if formatted_bearing == "360" then formatted_bearing = "000" end
    ExportScript.Tools.SendData(export_ids.PILOT_HSI_BAR_POINTER, formatted_bearing)

    -- HSI Compass
    local hsiCompass = mainPanelDevice:get_argument_value(668) * 360 --bearmat
    local formatted_hsiCompass = string.format("%03.0f", hsiCompass) --bearmat
    if formatted_hsiCompass == "360" then formatted_hsiCompass = "000" end
    ExportScript.Tools.SendData(export_ids.PILOT_HSI_COMPASS, string.format(formatted_hsiCompass))

    -- PILOT_HSI_BEARING_POINTER The little arrow on the outer part of the HSI
    local hsiPointer = mainPanelDevice:get_argument_value(669) * 360
    local adjustedPointer = hsiPointer + hsiCompass
    if adjustedPointer > 360 then
        adjustedPointer = adjustedPointer - 360
    end
    local formatted_hsiPointer = string.format("%03.0f", adjustedPointer)
    if formatted_hsiPointer == "360" then formatted_hsiPointer = "000" end
    ExportScript.Tools.SendData(export_ids.PILOT_HSI_POINTER, string.format(formatted_hsiPointer))

    -- Heading and HSI Course
    ExportScript.Tools.SendData(export_ids.PILOT_HDG_CRS,
        string.format("HDG\n" .. formatted_hsiCompass .. "\nCRS\n" .. formatted_bearing))

    -- Pilot HSI Miles Roller
    local pilotMiles_ones = string.format("%d", mainPanelDevice:get_argument_value(679) * 10)
    local pilotMiles_tens = string.format("%d", mainPanelDevice:get_argument_value(680) * 10)
    local pilotMiles_hundreds = string.format("%d", mainPanelDevice:get_argument_value(681) * 10)
    local pilotMiles_thousands = string.format("%d", mainPanelDevice:get_argument_value(682) * 10)

    ExportScript.Tools.SendData(export_ids.PILOT_HSI_MILES,
        string.format(pilotMiles_thousands .. pilotMiles_hundreds .. pilotMiles_tens .. pilotMiles_ones))

    -- WSO HSI Course Roller
    local wsoCourseSet_ones = string.format("%d", mainPanelDevice:get_argument_value(2617) * 10)
    local wsoCourseSet_tens = string.format("%d", mainPanelDevice:get_argument_value(2618) * 10)
    local wsoCourseSet_hundreds = string.format("%d", mainPanelDevice:get_argument_value(2619) * 10)

    ExportScript.Tools.SendData(export_ids.WSO_HSI_COURSE_WINDOW,
        string.format(wsoCourseSet_hundreds .. wsoCourseSet_tens .. wsoCourseSet_ones))

    -- WSO HSI Miles Roller
    local wsoMiles_ones = string.format("%d", mainPanelDevice:get_argument_value(952) * 10)
    local wsoMiles_tens = string.format("%d", mainPanelDevice:get_argument_value(953) * 10)
    local wsoMiles_hundreds = string.format("%d", mainPanelDevice:get_argument_value(954) * 10)
    local wsoMiles_thousands = string.format("%d", mainPanelDevice:get_argument_value(2725) * 10)

    ExportScript.Tools.SendData(export_ids.WSO_HSI_MILES_VERT,
        string.format(wsoMiles_thousands .. "\n" .. wsoMiles_hundreds
            .. "\n" .. wsoMiles_tens .. "\n" .. wsoMiles_ones))

    ExportScript.Tools.SendData(export_ids.WSO_HSI_MILES_HORZ,
        string.format(wsoMiles_thousands .. wsoMiles_hundreds .. wsoMiles_tens .. wsoMiles_ones))
end

function ExportScript.ARBCS(mainPanelDevice)
    -- WSO ARBCS Low Angle Tumbler
    local lowAngle_ones = string.format("%d", mainPanelDevice:get_argument_value(353) * 10)
    local lowAngle_tens = string.format("%d", mainPanelDevice:get_argument_value(354) * 10)
    local lowAngle_hundreds = string.format("%d", mainPanelDevice:get_argument_value(355) * 10)

    ExportScript.Tools.SendData(export_ids.WSO_ARBCS_LOW_ANGLE,
        string.format(lowAngle_hundreds .. lowAngle_tens .. lowAngle_ones))

    -- WSO ARBCS High Angle Tumbler
    local highAngle_ones = string.format("%d", mainPanelDevice:get_argument_value(356) * 10)
    local highAngle_tens = string.format("%d", mainPanelDevice:get_argument_value(357) * 10)
    local highAngle_hundreds = string.format("%d", mainPanelDevice:get_argument_value(358) * 10)
    local highAngle_thousands = string.format("%d", mainPanelDevice:get_argument_value(359) * 10)


    ExportScript.Tools.SendData(export_ids.WSO_ARBCS_HIGH_ANGLE,
        string.format(highAngle_thousands .. highAngle_hundreds .. highAngle_tens .. highAngle_ones))

    -- WSO ARBCS Timer Pullup Tumbler
    local pullup_ones = string.format("%d", mainPanelDevice:get_argument_value(360) * 10)
    local pullup_tens = string.format("%d", mainPanelDevice:get_argument_value(361) * 10)
    local pullup_hundreds = string.format("%d", mainPanelDevice:get_argument_value(362) * 10)


    ExportScript.Tools.SendData(export_ids.WSO_ARBCS_PULLUP,
        string.format(pullup_hundreds .. pullup_tens .. pullup_ones))

    -- WSO ARBCS Timer Release Roller
    local release_ones = string.format("%d", mainPanelDevice:get_argument_value(363) * 10)
    local release_tens = string.format("%d", mainPanelDevice:get_argument_value(364) * 10)
    local release_hundreds = string.format("%d", mainPanelDevice:get_argument_value(365) * 10)

    ExportScript.Tools.SendData(export_ids.WSO_ARBCS_RELEASE,
        string.format(release_hundreds .. release_tens .. release_ones))
end

-- TODO this
function ExportScript.UHF_radios(mainPanelDevice)
    --[[
    [131] = "%.2f",  -- Pilot_UHF_Freq_Knob_DecHundreds {-0.333333333, 0, 1, Set Frequency (decimal hundreds)}
    [132] = "%.1f",  -- Pilot_UHF_Freq_Knob_DecOnes {-0.111111111, 0, 1, Set Frequency (decimal ones)}
    [133] = "%.1f",  -- Pilot_UHF_Freq_Knob_Ones {-0.111111111, 0, 1, Set Frequency (ones)}
    [134] = "%.1f",  -- Pilot_UHF_Freq_Knob_Tens {-0.111111111, 0, 1, Set Frequency (tens)}
    [1375] = "%.2f", -- Pilot_UHF_Freq_Hundreds {-0.333333333, 0, 1, Set Frequency (hundreds)}

]]
    --[[
    --works
    local lUHFRadio = GetDevice(3)                                                                  -- Pilot Comm Preset Frequency
    ExportScript.Tools.SendData(10099, string.format("%7.3f", lUHFRadio:get_frequency() / 1000000)) -- <- special function for get frequency data
   ]]
    --ExportScript.Tools.SendData(10099, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency() / 1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
    --[[
    local mode2 = GetDevice(4)                                           -- Pilot IFF
    ExportScript.Tools.SendData(10100, string.format(mode2:get_mode2())) -- <- special function for get frequency data
    -- does not work
]]
    --[[
    local pilotUhfHunds = round(mainPanelDevice:get_argument_value(1375) * 10)
    local pilotUhfOnes = round(mainPanelDevice:get_argument_value(133) * 11)
    local pilotUhfTens = round(mainPanelDevice:get_argument_value(134) * 11)
    local pilotUhfOnesDec = round(mainPanelDevice:get_argument_value(132) * 11)
    local pilotUhfHundsDec = round(mainPanelDevice:get_argument_value(131) * 10)

    if pilotUhfHundsDec == 0 then
        pilotUhfHundsDec = 00
    elseif pilotUhfHundsDec == 3 then
        pilotUhfHundsDec = 25
    elseif pilotUhfHundsDec == 6 then
        pilotUhfHundsDec = 50
    else
        pilotUhfHundsDec = 75
    end

    if pilotUhfHunds == 0 then
        pilotUhfHunds = "T"
    elseif pilotUhfHunds == 3 then
        pilotUhfHunds = 2
    elseif pilotUhfHunds == 6 then
        pilotUhfHunds = 3
    else
        pilotUhfHunds = "A"
    end

    if pilotUhfHunds == 10 then pilotUhfHunds = 0 end
    if pilotUhfOnes == 10 then pilotUhfOnes = 0 end
    if pilotUhfTens == 10 then pilotUhfTens = 0 end
    if pilotUhfOnesDec == 10 then pilotUhfOnesDec = 0 end


    ExportScript.Tools.SendData(export_ids.PILOT_UHF_FREQ,
        string.format(pilotUhfHunds .. pilotUhfTens .. pilotUhfOnes .. pilotUhfOnesDec .. pilotUhfHundsDec))
]]
end

function ExportScript.WSO_speedIndicators(mainPanelDevice)
    -- WSO True Airspeed
    local tas_ones = round(mainPanelDevice:get_argument_value(600) * 10)
    local tas_tens = round(mainPanelDevice:get_argument_value(601) * 10)
    local tas_hundreds = round(mainPanelDevice:get_argument_value(602) * 10)
    local tas_thousands = round(mainPanelDevice:get_argument_value(603) * 10)
    if tas_ones == 10 then tas_ones = 0 end
    if tas_tens == 10 then tas_tens = 0 end
    if tas_hundreds == 10 then tas_hundreds = 0 end
    if tas_thousands == 10 then tas_thousands = 0 end

    ExportScript.Tools.SendData(export_ids.WSO_TRUEAIRSPEED,
        string.format(tas_thousands .. tas_hundreds .. tas_tens .. tas_ones))

    -- WSO Ground Speed
    local gs_ones = round(mainPanelDevice:get_argument_value(604) * 10)
    local gs_tens = round(mainPanelDevice:get_argument_value(605) * 10)
    local gs_hundreds = round(mainPanelDevice:get_argument_value(606) * 10)
    local gs_thousands = round(mainPanelDevice:get_argument_value(607) * 10)
    if gs_ones == 10 then gs_ones = 0 end
    if gs_tens == 10 then gs_tens = 0 end
    if gs_hundreds == 10 then gs_hundreds = 0 end
    if gs_thousands == 10 then gs_thousands = 0 end

    ExportScript.Tools.SendData(export_ids.WSO_GROUNDSPEED,
        string.format(gs_thousands .. gs_hundreds .. gs_tens .. gs_ones))
end

function ExportScript.WSO_WRCS(mainPanelDevice)
    -- Drag
    local drag_ones = round(mainPanelDevice:get_argument_value(329) * 10)
    local drag_tens = round(mainPanelDevice:get_argument_value(328) * 10)
    local drag_hundreds = round(mainPanelDevice:get_argument_value(327) * 10)
    if drag_ones == 10 then drag_ones = 0 end
    if drag_tens == 10 then drag_tens = 0 end
    if drag_hundreds == 10 then drag_hundreds = 0 end

    ExportScript.Tools.SendData(export_ids.WSO_WRCS_DRAG,
        string.format(drag_hundreds .. drag_tens .. drag_ones))

    -- North/South Distance
    local NS_hunds = round(mainPanelDevice:get_argument_value(308) * 10)
    local NS_tens = round(mainPanelDevice:get_argument_value(309) * 10)
    local NS_ones = round(mainPanelDevice:get_argument_value(310) * 10)
    if NS_hunds == 10 then NS_hunds = 0 end
    if NS_tens == 10 then NS_tens = 0 end
    if NS_ones == 10 then NS_ones = 0 end
    local NS_letter
    if mainPanelDevice:get_argument_value(345) > 0 then NS_letter = "N" else NS_letter = "S" end

    ExportScript.Tools.SendData(export_ids.WSO_WRCS_NS,
        string.format(NS_letter .. NS_hunds .. NS_tens .. NS_ones))

    -- East/West Distance
    local EW_hunds = round(mainPanelDevice:get_argument_value(311) * 10)
    local EW_tens = round(mainPanelDevice:get_argument_value(312) * 10)
    local EW_ones = round(mainPanelDevice:get_argument_value(313) * 10)
    if EW_hunds == 10 then EW_hunds = 0 end
    if EW_tens == 10 then EW_tens = 0 end
    if EW_ones == 10 then EW_ones = 0 end
    local EW_letter
    if mainPanelDevice:get_argument_value(346) > 0 then EW_letter = "E" else EW_letter = "W" end

    ExportScript.Tools.SendData(export_ids.WSO_WRCS_EW,
        string.format(EW_letter .. EW_hunds .. EW_tens .. EW_ones))

    -- Advance
    local Advance_hunds = round(mainPanelDevice:get_argument_value(314) * 10)
    local Advance_tens = round(mainPanelDevice:get_argument_value(315) * 10)
    local Advance_ones = round(mainPanelDevice:get_argument_value(316) * 10)
    if Advance_hunds == 10 then Advance_hunds = 0 end
    if Advance_tens == 10 then Advance_tens = 0 end
    if Advance_ones == 10 then Advance_ones = 0 end

    ExportScript.Tools.SendData(export_ids.WSO_WRCS_ADVANCE,
        string.format(Advance_hunds .. Advance_tens .. Advance_ones))

    -- Range
    local Range_hunds = round(mainPanelDevice:get_argument_value(317) * 10)
    local Range_tens = round(mainPanelDevice:get_argument_value(318) * 10)
    local Range_ones = round(mainPanelDevice:get_argument_value(319) * 10)
    if Range_hunds == 10 then Range_hunds = 0 end
    if Range_tens == 10 then Range_tens = 0 end
    if Range_ones == 10 then Range_ones = 0 end

    ExportScript.Tools.SendData(export_ids.WSO_WRCS_RANGE,
        string.format(Range_hunds .. Range_tens .. Range_ones))

    -- AltRange
    local AltRange_hunds = round(mainPanelDevice:get_argument_value(324) * 10)
    local AltRange_tens = round(mainPanelDevice:get_argument_value(325) * 10)
    local AltRange_ones = round(mainPanelDevice:get_argument_value(326) * 10)
    if AltRange_hunds == 10 then AltRange_hunds = 0 end
    if AltRange_tens == 10 then AltRange_tens = 0 end
    if AltRange_ones == 10 then AltRange_ones = 0 end

    ExportScript.Tools.SendData(export_ids.WSO_WRCS_ALTRANGE,
        string.format(AltRange_hunds .. AltRange_tens .. AltRange_ones))
end

function ExportScript.LaserCodeReadout(mainPanelDevice)
    local ones = round(mainPanelDevice:get_argument_value(2020) * 10)
    local tens = round(mainPanelDevice:get_argument_value(2021) * 10)
    local hundreds = round(mainPanelDevice:get_argument_value(2022) * 10)
    local thousands = round(mainPanelDevice:get_argument_value(2023) * 10)

    if ones == 10 then ones = 0 end
    if tens == 10 then tens = 0 end
    if hundreds == 10 then hundreds = 0 end
    if thousands == 10 then thousands = 0 end

    ExportScript.Tools.SendData(export_ids.WSO_LASER_CODE,
        string.format("%.0f%.0f%.0f%.0f", thousands, hundreds, tens, ones))
end

function ExportScript.TAS_indicator(mainPanelDevice)
    local ones = round(mainPanelDevice:get_argument_value(109) * 10)
    local tens = round(mainPanelDevice:get_argument_value(110) * 10)
    local hundreds = round(mainPanelDevice:get_argument_value(111) * 10)
    -- Thousands digit doesn't really move apart from buffet and just fucks up calculationm ignore it
    local TAS = hundreds * 100 + tens * 10 + ones
    ExportScript.Tools.SendData(export_ids.PILOT_TAS_NUMERIC, TAS)
    ExportScript.Tools.SendData(export_ids.PILOT_TAS_STRING, string.format("%04.0f", TAS))
end

function ExportScript.gun_rounds_indicator(mainPanelDevice)
    local ones = round(mainPanelDevice:get_argument_value(277) * 10)
    local tens = round(mainPanelDevice:get_argument_value(276) * 10)
    local hundreds = round(mainPanelDevice:get_argument_value(275) * 10)
    local rounds = hundreds * 100 + tens * 10 + ones
    ExportScript.Tools.SendData(export_ids.PILOT_GUN_ROUNDS, rounds)
end

local function get_RWR_button_lights(mainPanelDevice, first_id, second_id)
    -- Associate argument IDs with their text representation, which
    -- will be returned as a string for StreamDeck
    local labels_map = {
        [2537] = "PRIORITY",
        [2742] = "OPEN",
        [2538] = "█   S   █",
        [2743] = "█       █",
        [2539] = "█   ◆︎   █",
        [2744] = "█   H   █",
        [2542] = "TGT SEP",
        [2745] = "TGT SEP",
        [2544] = "█   U   █",
        [2746] = "UNKNOWN",
        [2545] = "ACTIVITY",
        [2747] = "POWER",
    }
    local first_on = mainPanelDevice:get_argument_value(first_id) > 0.0
    local second_on = mainPanelDevice:get_argument_value(second_id) > 0.0
    local first_label = first_on and labels_map[first_id] or " "
    local second_label = second_on and labels_map[second_id] or " "

    return first_label .. "\n\n\n" .. second_label
end

function ExportScript.RWR_control_panel(mainPanelDevice)
    local missile_launch = mainPanelDevice:get_argument_value(2540) > 0.0
    local low_alt = mainPanelDevice:get_argument_value(2541) > 0.0
    local on_sys_test = mainPanelDevice:get_argument_value(2543) > 0.0
    local system_power = mainPanelDevice:get_argument_value(2546) > 0.0

    ExportScript.Tools.SendData(export_ids.PILOT_RWR_MODE, get_RWR_button_lights(mainPanelDevice, 2537, 2742))
    ExportScript.Tools.SendData(export_ids.PILOT_RWR_SEARCH, get_RWR_button_lights(mainPanelDevice, 2538, 2743))
    ExportScript.Tools.SendData(export_ids.PILOT_RWR_HANDOFF, get_RWR_button_lights(mainPanelDevice, 2539, 2744))
    ExportScript.Tools.SendData(export_ids.PILOT_RWR_LAUNCH, missile_launch and "MISSILE\n\n\nLAUNCH" or "")
    ExportScript.Tools.SendData(export_ids.PILOT_RWR_ALTITUDE, low_alt and "LOW\n\n\nALT" or "")

    ExportScript.Tools.SendData(export_ids.PILOT_RWR_T, get_RWR_button_lights(mainPanelDevice, 2542, 2745))
    ExportScript.Tools.SendData(export_ids.PILOT_RWR_SYS_TEST, on_sys_test and "ON\n\n\nSYS TEST" or "")
    ExportScript.Tools.SendData(export_ids.PILOT_RWR_SHIP, get_RWR_button_lights(mainPanelDevice, 2544, 2746))
    ExportScript.Tools.SendData(export_ids.PILOT_RWR_ACT_PWR, get_RWR_button_lights(mainPanelDevice, 2545, 2747))
    ExportScript.Tools.SendData(export_ids.PILOT_RWR_POWER, system_power and "SYSTEM\n\n\nPOWER" or "")
end

function ExportScript.radio_repeater()
    local front_repeater_indicator = ExportScript.Tools.getListIndicatorValue(9)
    ExportScript.Tools.SendData(export_ids.PILOT_RADIO_REPEATER, front_repeater_indicator.freq_foreground)
end

function ExportScript.range_indicator()
    local range_indicator = ExportScript.Tools.getListIndicatorValue(8)
    ExportScript.Tools.SendData(export_ids.PILOT_RANGE_INDICATOR, range_indicator.range_indicator_foreground)
end

function ExportScript.avtr_time_indicator()
    local indicator = ExportScript.Tools.getListIndicatorValue(15)
    ExportScript.Tools.SendData(export_ids.PILOT_AVTR_TIME_INDICATOR, indicator.avtr_time_indicator_pilot_foreground)
end

function ExportScript.VOR_ILS_frequency(mainPanelDevice)
    local left_drum = mainPanelDevice:get_argument_value(1452)
    local right_drum = mainPanelDevice:get_argument_value(1455)
    local _, left_decimal = math.modf(left_drum)
    local _, right_decimal = math.modf(right_drum)
    if left_decimal > 0.91 then left_decimal = 0 end
    if right_decimal > 0.99 then right_decimal = 0 end
    local left_part = 108 + left_decimal * 10
    local right_part = right_decimal * 100
    ExportScript.Tools.SendData(export_ids.PILOT_VOR_ILS_FREQUENCY, string.format("%.0f.%02.0f", left_part, right_part))
end

function ExportScript.TACAN_channels(mainPanelDevice)
    -- PILOT
    local ones = mainPanelDevice:get_argument_value(643)
    local tens = mainPanelDevice:get_argument_value(644)
    local hundreds = mainPanelDevice:get_argument_value(645)
    local mode = mainPanelDevice:get_argument_value(656) > 0.5 and "Y" or "X"

    local _, tens_decimal = math.modf(tens)
    if tens_decimal > 0.91 then tens_decimal = 0 end
    -- Pilot TACAN Command light
    local tacan_command_PLT
    if mainPanelDevice:get_argument_value(170) > 0 then
        tacan_command_PLT = "🟢"
    else
        tacan_command_PLT = "⚫"
    end
    ExportScript.Tools.SendData(export_ids.PILOT_TACAN_FREQ_CMD_LGHT,
        string.format("%.0f%.0f%.0f%s", hundreds * 10, tens_decimal * 10, ones * 10, mode) ..
        "\n" .. tacan_command_PLT)
    ExportScript.Tools.SendData(export_ids.PILOT_TACAN_FREQUENCY,
        string.format("%.0f%.0f%.0f%s", hundreds * 10, tens_decimal * 10, ones * 10, mode))

    -- WSO
    local ones = mainPanelDevice:get_argument_value(650)
    local tens = mainPanelDevice:get_argument_value(651)
    local hundreds = mainPanelDevice:get_argument_value(652)
    local mode = mainPanelDevice:get_argument_value(660) > 0.5 and "Y" or "X"

    local _, tens_decimal = math.modf(tens)
    if tens_decimal > 0.91 then tens_decimal = 0 end
    -- WSO TACAN Command light
    local tacan_command_WSO
    if mainPanelDevice:get_argument_value(171) > 0 then
        tacan_command_WSO = "🟢"
    else
        tacan_command_WSO = "⚫"
    end
    ExportScript.Tools.SendData(export_ids.WSO_TACAN_FREQ_CMD_LGHT,
        string.format("%.0f%.0f%.0f%s", hundreds * 10, tens_decimal * 10, ones * 10, mode) ..
        "\n" .. tacan_command_WSO)
    ExportScript.Tools.SendData(export_ids.WSO_TACAN_FREQUENCY,
        string.format("%.0f%.0f%.0f%s", hundreds * 10, tens_decimal * 10, ones * 10, mode))
end

---------------------------------------------------------------------
--                         DEBUG FUNCTIONS                         --
---------------------------------------------------------------------

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
    for ltmp2 = 1, 50, 1 do
        ltmp1 = list_indication(ltmp2)
        ExportScript.Tools.WriteToLog(ltmp2 .. ': ' .. ExportScript.Tools.dump(ltmp1))
    end
end
