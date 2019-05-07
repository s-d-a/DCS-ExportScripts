-- F/A-18C Export

ExportScript.FoundDCSModule = true
ExportScript.Version.FA18C_hornet = "1.2.1"

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
	-- Controlls
	--[71] = "%.4f",   -- StickPitch {-1, 0, 0.137, 0.5} {1, 0.12, 0, -0.726}
	--[74] = "%.4f",   -- StickRoll {-1, 1}
	--[500] = "%.4f",   -- Rudder {-1, 1}
	--[501] = "%.4f",   -- LeftWheelBrake
	--[502] = "%.4f",   -- RightWheelBrake
	--[104] = "%.4f",   -- LeftThrottle
	--[105] = "%.4f",   -- RightThrottle
	--[495] = "%.4f",   -- LeftFingerLift
	--[496] = "%.4f",   -- RightFingerLift
	-- Electric Interface
	[400] = "%.4f",   -- VoltmeterU {16.0, 30.0}{0.0, 1.0}
	[401] = "%.4f",   -- VoltmeterE {16.0, 30.0}{0.0, 1.0}
	-- Hydraulic Interface
	[310] = "%.4f",   -- HydIndLeft {0.0, 5000.0} {0.0, 1.0}
	[311] = "%.4f",   -- HydIndRight {0.0, 5000.0} {0.0, 1.0}
	[242] = "%.4f",   -- HydIndBrake {0.0, 1000.0, 2000.0, 3000.0, 4000.0, 5000.0}{0.0, 0.036, 0.338, 0.636, 0.924, 1.0}
	-- Gear Interface
	[228] = "%.4f",   -- EmergGearDownHandle
	[240] = "%.4f",   -- EmergParkBrakeHandle
	-- Instruments --------------------------
    -- Standby Pressure Altimeter AAU-52/A
	[218] = "%.4f",   -- Altimeter_100_footPtr {0.0, 1000.0} {0.0, 1.0}
	[220] = "%.4f",   -- Altimeter_10000_footCount {0.0, 9.0} {0.0, 1.0}
	[219] = "%.4f",   -- Altimeter_1000_footCount {0.0, 9.0} {0.0, 1.0}
	[221] = "%.4f",   -- pressure_setting_0 {0.0, 10.0} {0.0, 1.0}
	[222] = "%.4f",   -- pressure_setting_1 {0.0, 10.0} {0.0, 1.0}
	[223] = "%.4f",   -- pressure_setting_2 {0.0, 10.0} {0.0, 1.0}
	-- Indicated Airspeed Indicator AVU-35/A
	[217] = "%.4f",   -- Airspeed {0.0,   60.0, 100.0, 150.0, 200.0, 250.0, 300.0, 350.0, 400.0, 450.0, 500.0, 550.0, 600.0, 650.0, 700.0, 750.0, 800.0, 850.0} {0.0, 0.0445,  0.15, 0.348, 0.586, 0.636, 0.673, 0.715, 0.748, 0.782, 0.819, 0.849, 0.870, 0.898, 0.922, 0.950, 0.976,   1.0}
    -- Vertical Speed Indicator AVU-53/A
	[225] = "%.4f",   -- Variometer {-6000.0, -4000.0, -3000.0, -2000.0, -1000.0, -500.0, 0.0, 500.0, 1000.0, 2000.0, 3000.0, 4000.0, 6000.0}  {   -1.0,   -0.83,   -0.73,  -0.605,   -0.40,  -0.22, 0.0,  0.22,   0.40,  0.605,   0.73,   0.83,    1.0}
	-- Clock
	[278] = "%.4f",   -- CLOCK_currtime_hour {0.0, 12.0} {0.0, 1.0}
	[279] = "%.4f",   -- CLOCK_currtime_minutes {0.0, 60.0} {0.0, 1.0}
	[281] = "%.4f",   -- CLOCK_elapsed_time_minutes {0.0, 60.0} {0.0, 1.0}
	[280] = "%.4f",   -- CLOCK_elapsed_time_seconds {0.0, 60.0} {0.0, 1.0}
	-- ID-2163/A
	[287] = "%.4f",   -- Min_Height_Indicator_ID2163A {-0.03, 0.0, 0.5, 0.8, 1.0} {0.0, 0.031, 0.525, 0.802, 0.982}
	[286] = "%.4f",   -- Altitude_Pointer_ID2163A {-10.0, 0.0, 100.0, 200.0, 300.0, 400.0, 600.0, 800.0, 1000.0, 3000.0, 5000.0, 5100.0} {0.0, 0.048, 0.171, 0.296, 0.416, 0.530, 0.616, 0.706, 0.799, 0.886, 0.974, 0.98}
	[288] = "%.4f",   -- OFF_Flag_ID2163A
	[290] = "%1d",   -- Red_Lamp_ID2163A
	[289] = "%1d",   -- Green_Lamp_ID2163A
	-- SAI
	[205] = "%.4f",   -- SAI_Pitch {-1.0, 1.0}
	[206] = "%.4f",   -- SAI_Bank {-1.0, 1.0}
	[209] = "%.4f",   -- SAI_attitude_warning_flag
	[210] = "%.4f",   -- SAI_manual_pitch_adjustment {0.0, 1.0} {-1.0, 1.0}
	[207] = "%.4f",   -- SAI_SlipBall {-1.0, 1.0}
	[208] = "%.4f",   -- SAI_RateOfTurn {-3.0, 3.0} {-1.0, 1.0}
	[211] = "%.4f",   -- SAI_vertical_pointer {-1.0, 1.0}
	[212] = "%.4f",   -- SAI_horisontal_pointer {-1.0, 1.0}
	-- Cockpit Pressure Altimeter
	[285] = "%.4f",   -- CockpitPressureAltimeter {0.0, 5000.0, 10000.0, 15000.0, 20000.0, 25000.0, 30000.0, 35000.0, 40000.0, 45000.0, 50000.0} {0.0, 0.117, 0.2245, 0.3225, 0.411, 0.506, 0.609, 0.717, 0.823, 0.914, 1.0}
	-- Caution Light Indicator Panel
	[298] = "%1d",   -- CPT_LTS_CK_SEAT
	[299] = "%1d",   -- CPT_LTS_APU_ACC
	[300] = "%1d",   -- CPT_LTS_BATT_SW
	[301] = "%1d",   -- CPT_LTS_FCS_HOT
	[302] = "%1d",   -- CPT_LTS_GEN_TIE
	[303] = "%1d",   -- CPT_LTS_SPARE_CTN1
	[304] = "%1d",   -- CPT_LTS_FUEL_LO
	[305] = "%1d",   -- CPT_LTS_FCES
	[306] = "%1d",   -- CPT_LTS_SPARE_CTN2
	[307] = "%1d",   -- CPT_LTS_L_GEN
	[308] = "%1d",   -- CPT_LTS_R_GEN
	[309] = "%1d",   -- CPT_LTS_SPARE_CTN3
	-- LH Advisory and Threat Warning Indicator Panel
	[13] = "%1d",   -- CPT_LTS_MASTER_CAUTION
	[10] = "%1d",   -- CPT_LTS_FIRE_LEFT
	[15] = "%1d",   -- CPT_LTS_GO
	[16] = "%1d",   -- CPT_LTS_NO_GO
	[17] = "%1d",   -- CPT_LTS_L_BLEED
	[18] = "%1d",   -- CPT_LTS_R_BLEED
	[19] = "%1d",   -- CPT_LTS_SPD_BRK
	[20] = "%1d",   -- CPT_LTS_STBY
	[21] = "%1d",   -- CPT_LTS_L_BAR_RED
	[22] = "%1d",   -- CPT_LTS_REC
	[23] = "%1d",   -- CPT_LTS_L_BAR_GREEN
	[24] = "%1d",   -- CPT_LTS_XMIT
	[25] = "%1d",   -- CPT_LTS_ASPJ_OH
	-- RH Advisory and Threat Warning Indicator Panel
	[29] = "%1d",   -- CPT_LTS_FIRE_APU
	[26] = "%1d",   -- CPT_LTS_FIRE_RIGHT
	[31] = "%1d",   -- CPT_LTS_RCDR_ON
	[32] = "%1d",   -- CPT_LTS_DISP
	[38] = "%1d",   -- CPT_LTS_SAM
	[39] = "%1d",   -- CPT_LTS_AI
	[40] = "%1d",   -- CPT_LTS_AAA
	[41] = "%1d",   -- CPT_LTS_CW
	[33] = "%1d",   -- CPT_LTS_SPARE_RH1
	[34] = "%1d",   -- CPT_LTS_SPARE_RH2
	[35] = "%1d",   -- CPT_LTS_SPARE_RH3
	[36] = "%1d",   -- CPT_LTS_SPARE_RH4
	[37] = "%1d",   -- CPT_LTS_SPARE_RH5
	-- Flaps, Landing Gear and Stores Indicator Panel
	[152] = "%1d",   -- CPT_LTS_CTR
	[154] = "%1d",   -- CPT_LTS_LI
	[156] = "%1d",   -- CPT_LTS_LO
	[158] = "%1d",   -- CPT_LTS_RI
	[160] = "%1d",   -- CPT_LTS_RO
	[166] = "%1d",   -- CPT_LTS_NOSE_GEAR
	[165] = "%1d",   -- CPT_LTS_LEFT_GEAR
	[167] = "%1d",   -- CPT_LTS_RIGHT_GEAR
	[163] = "%1d",   -- CPT_LTS_HALF_FLAPS
	[164] = "%1d",   -- CPT_LTS_FULL_FLAPS
	[162] = "%1d",   -- CPT_LTS_FLAPS
	-- Lock/Shoot Light Assy
	[1] = "%1d",   -- CPT_LTS_LOCK
	[2] = "%1d",   -- CPT_LTS_SHOOT
	[3] = "%1d",   -- CPT_LTS_SHOOT_STROBE
	-- Master Arm Control
	[47] = "%1d",   -- CPT_LTS_AA
	[48] = "%1d",   -- CPT_LTS_AG
	[45] = "%1d",   -- CPT_LTS_DISCH
	[44] = "%1d",   -- CPT_LTS_READY
	-- Arresting Hook Control Handle
	[294] = "%1d",   -- CPT_LTS_HOOK
	-- Landing Gear 
	--[] = "%1d",   -- CPT_LTS_LDG_GEAR_HANDLE
	-- APU Control Panel
	[376] = "%1d",   -- CPT_LTS_APU_READY
	-- ECM Control Panel Assy
	--[] = "%1d",   -- CPT_LTS_SEL
	-- Map Gain Control Panel Assy
	[137] = "%1d",   -- CPT_LTS_SPN
	-- Height Indicator
	[290] = "%1d",   -- CPT_LTS_LOW_ALT_WARN
	-- AoA Indexer Lights
	[4] = "%1d",   -- CPT_LTS_AOA_HIGH
	[5] = "%1d",   -- CPT_LTS_AOA_CENTER
	[6] = "%1d",   -- CPT_LTS_AOA_LOW
	-- Internal Lights
	--[460] = "%.1f",   -- Console
	--[461] = "%.1f",   -- Flood
	--[462] = "%.1f",   -- NvgFlood
	--[464] = "%.1f",   -- EmerInstr
	--[465] = "%.1f",   -- EngInstFlood
	--[466] = "%.1f",   -- Instrument
	--[467] = "%.1f",   -- StbyCompass
	--[810] = "%.1f",   -- Utility
	--[463] = "%.1f",   -- Chart
	-- WCAGroupLightness
	--[521] = "%.1f",   -- WCAGroupLightness 1
	--[522] = "%.1f",   -- WCAGroupLightness 2
	--[523] = "%.1f",   -- WCAGroupLightness 3
	-- IFEI
	[468] = "%1d",   -- IFEI
	[469] = "%1d",   -- IFEI_buttons
	-- RWR
	[276] = "%1d",   -- Lower
	[273] = "%1d",   -- Limit
	[274] = "%1d",   -- Display
	--[270] = "%1d",   -- SpecialEn
	[271] = "%1d",   -- Special
	[267] = "%1d",   -- Enable
	[268] = "%1d",   -- Offset
	[264] = "%1d",   -- Fail
	[265] = "%1d",   -- Bit
	[520] = "%.1f",   -- RwrLightsBrightness
	-- CMDS
	[516] = "%1d",   -- ecmJett  
	-- Magnetic compas
	[149] = "%.4f",	-- heading
	[150] = "%.4f",	-- pitch
	[151] = "%.4f",	-- bank
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	-- Control System
	[345] = "%.2f",   -- RUD TRIM Control (Axis) {-1.0, 1.0} in 0.05 Steps
	[346] = "%1d",   -- T/O TRIM Button
	[349] = "%1d",   -- FCS RESET Button
	[347] = "%1d",   -- GAIN Switch, NORM/ORIDE
	[234] = "%1d",   -- FLAP Switch, AUTO/HALF/FULL {-1.0,0.0,1.0}
	[138] = "%1d",   -- Spin Recovery Switch, RCVY/NORM
	[470] = "%1d",   -- FCS BIT Switch
	[295] = "%1d",   -- Wing Fold Control Handle, (RMB)CW/(LMB)CCW
	[296] = "%1d",   -- Wing Fold Control Handle, (MW)PULL/STOW
	[504] = "%.1f",   -- Throttles Friction Adjusting Lever (Axis) {0.0, 1.0} in 0.1 Steps
	-- Electric system
	[404] = "%1d",   -- Battery Switch, ON/OFF/ORIDE {-1.0,0.0,1.0}
	[402] = "%1d",   -- Left Generator Control Switch, NORM/OFF
	[403] = "%1d",   -- Right Generator Control Switch, NORM/OFF
	[378] = "%1d",   -- Generator TIE Control Switch, NORM/RESET
	[336] = "%1d",   -- External Power Switch, RESET/NORM/OFF {-1.0,0.0,1.0}
	[332] = "%1d",   -- Ground Power Switch 1, A ON/AUTO/B ON {-1.0,0.0,1.0}
	[333] = "%1d",   -- Ground Power Switch 2, A ON/AUTO/B ON {-1.0,0.0,1.0}
	[334] = "%1d",   -- Ground Power Switch 3, A ON/AUTO/B ON {-1.0,0.0,1.0}
	[335] = "%1d",   -- Ground Power Switch 4, A ON/AUTO/B ON {-1.0,0.0,1.0}
	-- Anti-Ice
	[409] = "%1d",   -- Pitot Heater Switch, ON/AUTO
	[410] = "%1d",   -- Engine Anti-Ice Switch, ON/OFF/TEST {-1.0,0.0,1.0}
	-- CB
	[381] = "%1d",   -- CB FCS CHAN 1, ON/OFF
	[382] = "%1d",   -- CB FCS CHAN 2, ON/OFF
	[383] = "%1d",   -- CB SPD BRK, ON/OFF
	[384] = "%1d",   -- CB LAUNCH BAR, ON/OFF
	[454] = "%1d",   -- CB FCS CHAN 3, ON/OFF
	[455] = "%1d",   -- CB FCS CHAN 4, ON/OFF
	[456] = "%1d",   -- CB HOOK, ON/OFF
	[457] = "%1d",   -- CB LG, ON/OFF
	-- 
	[368] = "%1d",   -- MC Switch, 1 OFF/NORM/2 OFF {-1.0,0.0,1.0}
	-- Power Plant
	[375] = "%1d",   -- APU Control Switch, ON/OFF
	[377] = "%1d",   -- Engine Crank Switch, LEFT/OFF/RIGHT {-1.0,0.0,1.0}
	[331] = "%1d",   -- Fire and Bleed Air Test Switch, (RMB) TEST A/(LMB) TEST B {-1.0,0.0,1.0}
	-- Hydraulic system
	[369] = "%1d",   -- Hydraulic Isolate Override Switch, NORM/ORIDE
	-- Gear system
	[226] = "%1d",   -- Landing Gear Control Handle, (RMB)UP/(LMB)DOWN {-1.0,0.0} ???
	[228] = "%1d",   -- Landing Gear Control Handle, (MW)EMERGENCY DOWN {0.0,1.0} ???
	[229] = "%1d",   -- Down Lock Override Button - Push to unlock
	[238] = "%1d",   -- Anti Skid Switch, ON/OFF
	[240] = "%.3f",   -- Emergency/Parking Brake Handle, (MW)Pull-Stow {0.0,1.0} in 0.001 Steps ???
	[241] = "%.3f",   -- Emergency/Parking Brake Handle, (LMB)Rotate Left/(RMB)Rotate Right ???
	[233] = "%1d",   -- Launch Bar Control Switch, EXTEND/RETRACT
	[293] = "%1d",   -- Arresting Hook Handle, UP/DOWN
	-- Fuel system
	[340] = "%1d",   -- Internal Wing Tank Fuel Control Switch, INHIBIT/NORM
	[341] = "%1d",   -- Probe Control Switch, EXTEND/RETRACT/EMERG EXTD {-1.0,0.0}
	[344] = "%1d",   -- Fuel Dump Switch, ON/OFF
	[343] = "%1d",   -- External Centerline Tank Fuel Control Switch, STOP/NORM/ORIDE {-1.0,0.0}
	[342] = "%1d",   -- External Wing Tanks Fuel Control Switch, STOP/NORM/ORIDE {-1.0,0.0}
	-- Cockpit Mechanics
	[453] = "%1d",   -- Canopy Control Switch, OPEN/HOLD/CLOSE {-1.0,0.0,1.0}
	[43] = "%1d",   -- Canopy Jettison Handle Unlock Button - Press to unlock
	[42] = "%1d",   -- Canopy Jettison Handle - Pull to jettison
	[510] = "%1d",   -- Ejection Control Handle (3 times)
	[511] = "%1d",   -- Ejection Seat SAFE/ARMED Handle, SAFE/ARMED
	[512] = "%1d",   -- Ejection Seat Manual Override Handle, PULL/PUSH
	[513] = "%1d",   -- Shoulder Harness Control Handle, LOCK/UNLOCK
	[514] = "%1d",   -- Seat Height Adjustment Switch, UP/HOLD/DOWN {-1.0,0.0,1.0}
	[260] = "%1d",   -- Rudder Pedal Adjust Lever
	[575] = "%1d",   -- Hide Stick toggle
	-- Exterior Lights
	[338] = "%.2f",   -- POSITION Lights Dimmer Control {0.0,1.0} in 0.15 Steps
	[337] = "%.2f",   -- FORMATION Lights Dimmer Control {0.0,1.0} in 0.15 Steps
	[339] = "%1d",   -- STROBE Lights Switch, BRT/OFF/DIM {-1.0,0.0,1.0}
	[237] = "%1d",   -- LDG/TAXI LIGHT Switch, ON/OFF
	-- Cockpit Lights
	[413] = "%.2f",   -- CONSOLES Lights Dimmer Control {0.0,1.0} in 0.15 Steps
	[414] = "%.2f",   -- INST PNL Dimmer Control {0.0,1.0} in 0.15 Steps
	[415] = "%.2f",   -- FLOOD Light Dimmer Control {0.0,1.0} in 0.15 Steps
	[419] = "%1d",   -- MODE Switch, NVG/NITE/DAY {-1.0,0.0,1.0}
	[418] = "%.2f",   -- CHART Light Dimmer Control {0.0,1.0} in 0.15 Steps
	[417] = "%.2f",   -- WARN/CAUTION Dimmer Control {0.0,1.0} in 0.15 Steps
	[416] = "%1d",   -- Lights Test Switch, TEST/OFF
	[14] = "%1d",   -- MASTER CAUTION Reset Button - Press to reset
	[239] = "%1d",   -- HOOK BYPASS Switch, FIELD/CARRIER
	-- Oxygen System
	[365] = "%1d",   -- OBOGS Control Switch, ON/OFF
	[366] = "%.2f",   -- OXY Flow Knob {0.0,1.0} in 0.5 Steps
	-- ECS
	[411] = "%.1f",   -- Bleed Air Knob, R OFF/NORM/L OFF/OFF {0.0,0.1,0.2,0.3}
	[412] = "%1d",   -- Bleed Air Knob, AUG PULL
	[405] = "%1d",   -- ECS Mode Switch, AUTO/MAN/ OFF/RAM {-1.0,0.0,1.0}
	[408] = "%1d",   -- Cabin Pressure Switch, NORM/DUMP/ RAM/DUMP {-1.0,0.0,1.0}
	[451] = "%.2f",   -- Defog Handle {0.0,1.0} in 0.1 Steps
	[407] = "%.2f",   -- Cabin Temperature Knob {0.0,1.0} in 0.1 Steps
	[406] = "%.2f",   -- Suit Temperature Knob {0.0,1.0} in 0.1 Steps
	[297] = "%1d",   -- AV COOL Switch, NORM/EMERG
	[452] = "%1d",   -- Windshield Anti-Ice/Rain Switch, ANTI ICE/OFF/RAIN {-1.0,0.0,1.0}
	[505] = "%.2f",   -- Left Louver {0.0,1.0} in 0.1 Steps
	[506] = "%.2f",   -- Right Louver {0.0,1.0} in 0.1 Steps
	-- HOTAS
	[494] = "%1d",   -- Exterior Lights Switch, ON/OFF
	-- Master Arm Panel
	[458] = "%1d",   -- Master Mode Button, A/A
	[459] = "%1d",   -- Master Mode Button, A/G
	[49] = "%1d",   -- Master Arm Switch, ARM/SAFE
	[50] = "%1d",   -- Emergency Jettison Button
	[258] = "%1d",   -- Auxiliary Release Switch, ENABLE/NORM
	[153] = "%1d",   -- Station Jettison Select Button, CENTER
	[155] = "%1d",   -- Station Jettison Select Button, LEFT IN
	[157] = "%1d",   -- Station Jettison Select Button, LEFT OUT
	[159] = "%1d",   -- Station Jettison Select Button, RIGHT IN
	[161] = "%1d",   -- Station Jettison Select Button, RIGHT OUT
	[235] = "%1d",   -- Selective Jettison Pushbutton
	[236] = "%1d",   -- Selective Jettison Knob, L FUS MSL/SAFE/R FUS MSL/ RACK/LCHR /STORES {0.0,0.1,0.2,0.3,0.4}
	[135] = "%.1f",   -- IR Cooling Switch, ORIDE/NORM/OFF {0.0,0.1,0.2}
	-- Fire Systems
	[46] = "%1d",   -- Fire Extinguisher Pushbutton
	[30] = "%1d",   -- APU Fire Warning/Extinguisher Light
	[11] = "%1d",   -- Left Engine/AMAD Fire Warning/Extinguisher Light - (LMB) depress
	[12] = "%1d",   -- Left Engine/AMAD Fire Warning/Extinguisher Light - (RMB) cover control
	[27] = "%1d",   -- Right Engine/AMAD Fire Warning/Extinguisher Light - (LMB) depress
	[28] = "%1d",   -- Right Engine/AMAD Fire Warning/Extinguisher Light - (RMB) cover control
	-- Multipurpose Display Group -----------
    -- Head-Up Display
	[140] = "%1d",   -- HUD Symbology Reject Switch, NORM/REJ 1/REJ 2 {0.0,0.1,0.2}
	[141] = "%.2f",   -- HUD Symbology Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[142] = "%1d",   -- HUD Symbology Brightness Selector Knob, DAY/NIGHT
	[143] = "%.2f",   -- HUD Black Level Control Knob {0.0,1.0} in 0.1 Steps
	[144] = "%1d",   -- HUD Video Control Switch, W/B /VID/OFF {0.0,0.1,0.2}
	[145] = "%.2f",   -- HUD Balance Control Knob {0.0,1.0} in 0.1 Steps
	[146] = "%.2f",   -- HUD AOA Indexer Control Knob {0.0,1.0} in 0.1 Steps
	[147] = "%1d",   -- HUD Altitude Switch, BARO/RDR
	[148] = "%1d",   -- HUD Attitude Selector Switch, INS/AUTO/STBY {-1.0,0.0,1.0}
	-- Left MDI
	[51] = "%1d",   -- Left MDI Brightness Selector Knob, OFF/NIGHT/DAY {0.0,0.1,0.2}
	[52] = "%.2f",   -- Left MDI Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[53] = "%.2f",   -- Left MDI Contrast Control Knob {0.0,1.0} in 0.1 Steps
	[54] = "%1d",   -- Left MDI PB 1
	[55] = "%1d",   -- Left MDI PB 2
	[56] = "%1d",   -- Left MDI PB 3
	[57] = "%1d",   -- Left MDI PB 4
	[58] = "%1d",   -- Left MDI PB 5
	[59] = "%1d",   -- Left MDI PB 6
	[60] = "%1d",   -- Left MDI PB 7
	[61] = "%1d",   -- Left MDI PB 8
	[62] = "%1d",   -- Left MDI PB 9
	[63] = "%1d",   -- Left MDI PB 10
	[64] = "%1d",   -- Left MDI PB 11
	[65] = "%1d",   -- Left MDI PB 12
	[66] = "%1d",   -- Left MDI PB 13
	[67] = "%1d",   -- Left MDI PB 14
	[68] = "%1d",   -- Left MDI PB 15
	[69] = "%1d",   -- Left MDI PB 16
	[70] = "%1d",   -- Left MDI PB 17
	[72] = "%1d",   -- Left MDI PB 18
	[73] = "%1d",   -- Left MDI PB 19
	[75] = "%1d",   -- Left MDI PB 20
	[312] = "%1d",   -- Heading Set Switch
	[313] = "%1d",   -- Course Set Switch
	-- Right MDI
	[76] = "%.1f",   -- Right MDI Brightness Selector Knob, OFF/NIGHT/DAY {0.0,0.1,0.2}
	[77] = "%.2f",   -- Right MDI Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[78] = "%.2f",   -- Right MDI Contrast Control Knob {0.0,1.0} in 0.1 Steps
	[79] = "%1d",   -- Right MDI PB 1
	[80] = "%1d",   -- Right MDI PB 2
	[81] = "%1d",   -- Right MDI PB 3
	[82] = "%1d",   -- Right MDI PB 4
	[83] = "%1d",   -- Right MDI PB 5
	[84] = "%1d",   -- Right MDI PB 6
	[85] = "%1d",   -- Right MDI PB 7
	[86] = "%1d",   -- Right MDI PB 8
	[87] = "%1d",   -- Right MDI PB 9
	[88] = "%1d",   -- Right MDI PB 10
	[89] = "%1d",   -- Right MDI PB 11
	[90] = "%1d",   -- Right MDI PB 12
	[91] = "%1d",   -- Right MDI PB 13
	[92] = "%1d",   -- Right MDI PB 14
	[93] = "%1d",   -- Right MDI PB 15
	[94] = "%1d",   -- Right MDI PB 16
	[95] = "%1d",   -- Right MDI PB 17
	[96] = "%1d",   -- Right MDI PB 18
	[97] = "%1d",   -- Right MDI PB 19
	[98] = "%1d",   -- Right MDI PB 20
	-- AMPCD
	[203] = "%.2f",   -- AMPCD Off/Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[177] = "%1d",   -- AMPCD Night/Day Brightness Selector, DAY/NGT {1.0,0.0,-1.0}
	[179] = "%1d",   -- AMPCD Symbology Control Switch, UP/DOWN {1.0,0.0,-1.0}
	[182] = "%1d",   -- AMPCD Contrast Control Switch, UP/DOWN {1.0,0.0,-1.0}
	[180] = "%1d",   -- AMPCD Gain Control Switch, UP/DOWN {1.0,0.0,-1.0}
	[183] = "%1d",   -- AMPCD PB 1
	[184] = "%1d",   -- AMPCD PB 2
	[185] = "%1d",   -- AMPCD PB 3
	[186] = "%1d",   -- AMPCD PB 4
	[187] = "%1d",   -- AMPCD PB 5
	[188] = "%1d",   -- AMPCD PB 6
	[189] = "%1d",   -- AMPCD PB 7
	[190] = "%1d",   -- AMPCD PB 8
	[191] = "%1d",   -- AMPCD PB 9
	[192] = "%1d",   -- AMPCD PB 10
	[193] = "%1d",   -- AMPCD PB 11
	[194] = "%1d",   -- AMPCD PB 12
	[195] = "%1d",   -- AMPCD PB 13
	[196] = "%1d",   -- AMPCD PB 14
	[197] = "%1d",   -- AMPCD PB 15
	[198] = "%1d",   -- AMPCD PB 16
	[199] = "%1d",   -- AMPCD PB 17
	[200] = "%1d",   -- AMPCD PB 18
	[201] = "%1d",   -- AMPCD PB 19
	[202] = "%1d",   -- AMPCD PB 20
	-- Instruments --------------------------
    -- Standby Pressure Altimeter AAU-52/A
	[224] = "%.2f",   -- AAU-52 Altimeter Pressure Setting Knob {0.0,1.0} in 0.04 Steps
	-- Radar Altimeter Height Indicator
	[291] = "%.2f",   -- Push to Test Switch, (MW) rotate clockwise to apply power and set low altitude index pointer {0.0,1.0} in 0.1 Steps
	[292] = "%1d",   -- Push to Test Switch, (LMB) activate BIT checks
	[213] = "%1d",   -- SAI Cage Knob, (LMB) Pull to cage 
	[214] = "%.2f",   -- SAI Cage Knob, (MW) Adjust miniature airplane {0.0,1.0} in 0.1 Steps
	[215] = "%1d",   -- SAI Test Button - Push to test
	-- Integrated Fuel/Engine Indicator (IFEI)
	[168] = "%1d",   -- IFEI Mode Button
	[169] = "%1d",   -- IFEI QTY Button
	[170] = "%1d",   -- IFEI Up Arrow Button
	[171] = "%1d",   -- IFEI Down Arrow Button
	[172] = "%1d",   -- IFEI ZONE Button
	[173] = "%1d",   -- IFEI ET Button
	[174] = "%.2f",   -- IFEI Brightness Control Knob {0.0,1.0} in 0.1 Steps
	-- Sensor panel
	[440] = "%.1f",   -- RADAR Switch (MW to pull), OFF/STBY/OPR/EMERG(PULL) {0.0,1.0} {0.0,0.1,0.2,0.3}
	[443] = "%.1f",   -- INS Switch, OFF/CV/GND/NAV/IFA/GYRO/GB/TEST {0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7}
	-- UFC
	[128] = "%1d",   -- UFC Function Selector Pushbutton, A/P
	[129] = "%1d",   -- UFC Function Selector Pushbutton, IFF
	[130] = "%1d",   -- UFC Function Selector Pushbutton, TCN
	[131] = "%1d",   -- UFC Function Selector Pushbutton, ILS
	[132] = "%1d",   -- UFC Function Selector Pushbutton, D/L
	[133] = "%1d",   -- UFC Function Selector Pushbutton, BCN
	[134] = "%1d",   -- UFC Function Selector Pushbutton, ON/OFF
	[100] = "%1d",   -- UFC Option Select Pushbutton 1
	[101] = "%1d",   -- UFC Option Select Pushbutton 2
	[102] = "%1d",   -- UFC Option Select Pushbutton 3
	[103] = "%1d",   -- UFC Option Select Pushbutton 4
	[106] = "%1d",   -- UFC Option Select Pushbutton 5
	[111] = "%1d",   -- UFC Keyboard Pushbutton, 1
	[112] = "%1d",   -- UFC Keyboard Pushbutton, 2
	[113] = "%1d",   -- UFC Keyboard Pushbutton, 3
	[114] = "%1d",   -- UFC Keyboard Pushbutton, 4
	[115] = "%1d",   -- UFC Keyboard Pushbutton, 5
	[116] = "%1d",   -- UFC Keyboard Pushbutton, 6
	[117] = "%1d",   -- UFC Keyboard Pushbutton, 7
	[118] = "%1d",   -- UFC Keyboard Pushbutton, 8
	[119] = "%1d",   -- UFC Keyboard Pushbutton, 9
	[120] = "%1d",   -- UFC Keyboard Pushbutton, 0
	[121] = "%1d",   -- UFC Keyboard Pushbutton, CLR
	[122] = "%1d",   -- UFC Keyboard Pushbutton, ENT
	[99] = "%1d",   -- UFC I/P Pushbutton
	[110] = "%1d",   -- UFC Emission Control Pushbutton
	[107] = "%1d",   -- UFC ADF Function Select Switch, 1/OFF/2 {-1.0,0.0,1.0}
	[108] = "%.2f",   -- UFC COMM 1 Volume Control Knob {0.0,1.0} in 0.1 Steps
	[123] = "%.2f",   -- UFC COMM 2 Volume Control Knob {0.0,1.0} in 0.1 Steps
	[109] = "%.2f",   -- UFC Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[125] = "%1d",   -- UFC COMM 1 Channel Selector Knob
	[124] = "%.2f",   -- UFC COMM 1 Channel Selector Knob {0.0,1.0} in 0.2 Steps
	[127] = "%1d",   -- UFC COMM 2 Channel Selector Knob
	[126] = "%.2f",   -- UFC COMM 2 Channel Selector Knob {0.0,1.0} in 0.2 Steps
	-- intercom
	[357] = "%.2f",   -- VOX Volume Control Knob {0.0,1.0} in 0.1 Steps
	[358] = "%.2f",   -- ICS Volume Control Knob {0.0,1.0} in 0.1 Steps
	[359] = "%.2f",   -- RWR Volume Control Knob {0.0,1.0} in 0.1 Steps
	[360] = "%.2f",   -- WPN Volume Control Knob {0.0,1.0} in 0.1 Steps
	[361] = "%.2f",   -- MIDS B Volume Control Knob {0.0,1.0} in 0.1 Steps
	[362] = "%.2f",   -- MIDS A Volume Control Knob {0.0,1.0} in 0.1 Steps
	[363] = "%.2f",   -- TACAN Volume Control Knob {0.0,1.0} in 0.1 Steps
	[364] = "%.2f",   -- AUX Volume Control Knob {0.0,1.0} in 0.1 Steps
	[350] = "%1d",   -- Comm Relay Switch, CIPHER/OFF/PLAIN {-1.0,0.0,1.0}
	[351] = "%1d",   -- COMM G XMT Switch, COMM 1/OFF/COMM 2 {-1.0,0.0,1.0}
	[356] = "%1d",   -- IFF Master Switch, EMER/NORM
	[355] = "%1d",   -- IFF Mode 4 Switch, DIS/AUD /DIS/OFF {-1.0,0.0,1.0}
	[354] = "%1d",   -- CRYPTO Switch, HOLD/NORM/ZERO {-1.0,0.0,1.0}
	[353] = "%1d",   -- ILS UFC/MAN Switch, UFC/MAN
	[352] = "%.2f",   -- ILS Channel Selector Switch {0.0,0.05,0.10,0.15,0.20,0.25,0.30,0.35,0.40,0.45,0.50,0.55,0.60,0.65,0.70,0.75,0.80,0.85,0.90,0.95}
	[230] = "%1d",   -- Warning Tone Silence Button - Push to silence
	-- KY-58
	[444] = "%.1f",   -- KY-58 Mode Select Knob, P/C/LD/RV {0.0,0.1,0.2,0.3}
	[445] = "%.2f",   -- KY-58 Volume Control Knob {0.0,1.0} in 0.1 Steps
	[446] = "%.1f",   -- KY-58 Fill Select Knob, Z 1-5/1/2/3/4/5/6/Z ALL {0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7}
	[447] = "%.1f",   -- KY-58 Power Select Knob, OFF/ON/TD {0.0,0.1,0.2}
	-- antenna selector
	[373] = "%1d",   -- COMM 1 Antenna Selector Switch, UPPER/AUTO/LOWER {-1.0,0.0,1.0}
	[374] = "%1d",   -- IFF Antenna Selector Switch, UPPER/BOTH/LOWER {-1.0,0.0,1.0}
	-- RWR
	[277] = "%1d",   -- ALR-67 POWER Pushbutton
	[275] = "%1d",   -- ALR-67 DISPLAY Pushbutton
	[272] = "%1d",   -- ALR-67 SPECIAL Pushbutton
	[269] = "%1d",   -- ALR-67 OFFSET Pushbutton
	[266] = "%1d",   -- ALR-67 BIT Pushbutton
	[263] = "%.2f",   -- ALR-67 DMR Control Knob {0.0,1.0} in 0.1 Steps
	[262] = "%.2f",   -- ALR-67 AUDIO Control Knob (no function){0.0,1.0} in 0.1 Steps
	[261] = "%.1f",   -- ALR-67 DIS TYPE Switch, N/I/A/U/F {0.0,0.1,0.2,0.3,0.4}
	[216] = "%.2f",   -- ALR-67 RWR Intensity Knob {0.0,1.0} in 0.1 Steps
	-- CMDS
	[380] = "%1d",   -- Dispense Button - Push to dispense flares and chaff
	[517] = "%.1f",   -- DISPENSER Switch, BYPASS/ON/OFF {0.0,0.1,0.2}
	[515] = "%1d",   -- ECM JETT JETT SEL Button - Push to jettison
	-- ICMCP
	[248] = "%.1f",   -- ECM Mode Switch, XMIT/REC/BIT/STBY/OFF {0.0,0.1,0.2,0.3,0.4}
	-- Helmet
	[136] = "%.2f",    -- HMD OFF/BRT Knob {0.0,0.75} in 0.01 Steps
	-- Targeting Pod, FLIR
	[439] = "%.1f",    -- FLIR Switch, ON/STBY/OFF {0.0,0.5,1.0}
	[441] = "%.1f",    -- LTD/R Switch, ARM/SAFE/AFT {0.0,0.5,1.0}
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
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) <- special function for get frequency data
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
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000), 2) -- export to Hardware '2' Config
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
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) <- special function for get frequency data
	]]
	
	--ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
	
	-- IFEI - Engine, Fuel and Clock informations
	local lEngineFuelClock = ExportScript.Tools.getListIndicatorValue(5)
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('EngineFuelClock: '..ExportScript.Tools.dump(lEngineFuelClock))
	end

	if lEngineFuelClock ~= nil and lEngineFuelClock.txt_RPM_R ~= nil then
		-- Engine informations 3 character
		ExportScript.Tools.SendData(2000, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_RPM_R, 3)) -- right RPM
		ExportScript.Tools.SendData(2001, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_RPM_L, 3)) -- left RPM
		ExportScript.Tools.SendData(2002, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_TEMP_R, 3)) -- right TEMP
		ExportScript.Tools.SendData(2003, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_TEMP_L, 3)) -- left TEMP
		ExportScript.Tools.SendData(2004, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_FF_R, 3)) -- right Fuel flow
		ExportScript.Tools.SendData(2005, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_FF_L, 3)) -- left Fuel flow
		ExportScript.Tools.SendData(2006, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_OilPress_R, 3)) -- right OilPress
		ExportScript.Tools.SendData(2007, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_OilPress_L, 3)) -- left OilPress
		
		-- Fuel informations 6 character
		ExportScript.Tools.SendData(2008, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_FUEL_UP, 6)) -- up Fuel
		ExportScript.Tools.SendData(2009, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_FUEL_DOWN, 6)) -- down Fuel
		ExportScript.Tools.SendData(2010, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_BINGO, 6)) -- BINGO 
		
		-- Clock 8 character
		ExportScript.Tools.SendData(2011, ExportScript.Tools.DisplayFormat(string.format("%s¦%s¦%s", lEngineFuelClock.txt_CLOCK_H, lEngineFuelClock.txt_CLOCK_M, lEngineFuelClock.txt_CLOCK_S), 8)) -- Clock HH:MM:SS
	else
		-- Engine informations 3 character
		ExportScript.Tools.SendData(2000, " ") -- right RPM
		ExportScript.Tools.SendData(2001, " ") -- left RPM
		ExportScript.Tools.SendData(2002, " ") -- right TEMP
		ExportScript.Tools.SendData(2003, " ") -- left TEMP
		ExportScript.Tools.SendData(2004, " ") -- right Fuel flow
		ExportScript.Tools.SendData(2005, " ") -- left Fuel flow
		ExportScript.Tools.SendData(2006, " ") -- right OilPress
		ExportScript.Tools.SendData(2007, " ") -- left OilPress
		
		-- Fuel informations 6 character
		ExportScript.Tools.SendData(2008, " ") -- up Fuel
		ExportScript.Tools.SendData(2009, " ") -- down Fuel
		ExportScript.Tools.SendData(2010, " ") -- BINGO 
		
		-- Clock 8 character
		ExportScript.Tools.SendData(2011, " ") -- Clock HH:MM:SS
	end
	
	-- UFC Displays
	local lUFCDisplays = ExportScript.Tools.getListIndicatorValue(6)
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('UFC: '..ExportScript.Tools.dump(lUFCDisplays))
	end
	
	if lUFCDisplays ~= nil and lUFCDisplays.UFC_MainDummy ~= nil then
		-- ScratchPadString Displays
		lUFCDisplays.UFC_ScratchPadString1Display = string.gsub(lUFCDisplays.UFC_ScratchPadString1Display, "_", "-") -- fix weil das ein - sein sollte
		lUFCDisplays.UFC_ScratchPadString2Display = string.gsub(lUFCDisplays.UFC_ScratchPadString2Display, "_", "-") -- fix weil das ein - sein sollte
		lUFCDisplays.UFC_ScratchPadString1Display = string.gsub(lUFCDisplays.UFC_ScratchPadString1Display, "~", "2") -- fix weil das eine 2 sein sollte
		lUFCDisplays.UFC_ScratchPadString2Display = string.gsub(lUFCDisplays.UFC_ScratchPadString2Display, "~", "2") -- fix weil das eine 2 sein sollte
		lUFCDisplays.UFC_ScratchPadString1Display = string.gsub(lUFCDisplays.UFC_ScratchPadString1Display, "`", "1") -- fix weil das eine 1 sein sollte
		lUFCDisplays.UFC_ScratchPadString2Display = string.gsub(lUFCDisplays.UFC_ScratchPadString2Display, "`", "1") -- fix weil das eine 1 sein sollte
		ExportScript.Tools.SendData(2020, ExportScript.Tools.DisplayFormat(lUFCDisplays.UFC_ScratchPadString1Display, 2)) -- ScratchPadString1Display 2 character
		ExportScript.Tools.SendData(2021, ExportScript.Tools.DisplayFormat(lUFCDisplays.UFC_ScratchPadString2Display, 2)) -- ScratchPadString2Display 2 character
		ExportScript.Tools.SendData(2022, ExportScript.Tools.DisplayFormat(lUFCDisplays.UFC_ScratchPadNumberDisplay, 7)) -- ScratchPadNumberDisplay 7 character

		local lTmpCueing = " "
		-- Option Displays
		lTmpCueing = (#lUFCDisplays.UFC_OptionCueing1 > 0 and "¦" or " ")
		ExportScript.Tools.SendData(2023, ExportScript.Tools.DisplayFormat(lTmpCueing..lUFCDisplays.UFC_OptionDisplay1)) -- OptionDisplay1 5 character
		lTmpCueing = (#lUFCDisplays.UFC_OptionCueing2 > 0 and "¦" or " ")
		ExportScript.Tools.SendData(2024, ExportScript.Tools.DisplayFormat(lTmpCueing..lUFCDisplays.UFC_OptionDisplay2)) -- OptionDisplay2 5 character
		lTmpCueing = (#lUFCDisplays.UFC_OptionCueing3 > 0 and "¦" or " ")
		ExportScript.Tools.SendData(2025, ExportScript.Tools.DisplayFormat(lTmpCueing..lUFCDisplays.UFC_OptionDisplay3)) -- OptionDisplay3 5 character
		lTmpCueing = (#lUFCDisplays.UFC_OptionCueing4 > 0 and "¦" or " ")
		ExportScript.Tools.SendData(2026, ExportScript.Tools.DisplayFormat(lTmpCueing..lUFCDisplays.UFC_OptionDisplay4)) -- OptionDisplay4 5 character
		lTmpCueing = (#lUFCDisplays.UFC_OptionCueing5 > 0 and "¦" or " ")
		ExportScript.Tools.SendData(2027, ExportScript.Tools.DisplayFormat(lTmpCueing..lUFCDisplays.UFC_OptionDisplay5)) -- OptionDisplay5 5 character

		-- Comm Displays
		lUFCDisplays.UFC_Comm1Display = string.gsub(lUFCDisplays.UFC_Comm1Display, "~", "2") -- fix weil das eine 2 sein sollte
		lUFCDisplays.UFC_Comm2Display = string.gsub(lUFCDisplays.UFC_Comm2Display, "~", "2") -- fix weil das eine 2 sein sollte
		lUFCDisplays.UFC_Comm1Display = string.gsub(lUFCDisplays.UFC_Comm1Display, "`", "1") -- fix weil das eine 1 sein sollte
		lUFCDisplays.UFC_Comm2Display = string.gsub(lUFCDisplays.UFC_Comm2Display, "`", "1") -- fix weil das eine 1 sein sollte
		ExportScript.Tools.SendData(2028, ExportScript.Tools.DisplayFormat(lUFCDisplays.UFC_Comm1Display, 2)) -- Comm1Display 2 character
		ExportScript.Tools.SendData(2029, ExportScript.Tools.DisplayFormat(lUFCDisplays.UFC_Comm2Display, 2)) -- Comm2Display 2 character
	else
		-- ScratchPadString Displays
		ExportScript.Tools.SendData(2020, " ") -- ScratchPadString1Display 2 character
		ExportScript.Tools.SendData(2021, " ") -- ScratchPadString2Display 2 character
		ExportScript.Tools.SendData(2022, " ") -- ScratchPadNumberDisplay 7 character

		-- Option Displays
		ExportScript.Tools.SendData(2023, " ") -- OptionDisplay1 5 character
		ExportScript.Tools.SendData(2024, " ") -- OptionDisplay2 5 character
		ExportScript.Tools.SendData(2025, " ") -- OptionDisplay3 5 character
		ExportScript.Tools.SendData(2026, " ") -- OptionDisplay4 5 character
		ExportScript.Tools.SendData(2027, " ") -- OptionDisplay5 5 character

		-- Comm Displays
		ExportScript.Tools.SendData(2028, " ") -- Comm1Display 2 character
		ExportScript.Tools.SendData(2029, " ") -- Comm2Display 2 character
	end
	
	local lUHF1Radio = GetDevice(38)
	ExportScript.Tools.SendData(2030, ExportScript.Tools.DisplayFormat(ExportScript.Tools.RoundFreqeuncy((lUHF1Radio:get_frequency()/1000000))), 7)
	
	local lUHF2Radio = GetDevice(39)
	ExportScript.Tools.SendData(2031, ExportScript.Tools.DisplayFormat(ExportScript.Tools.RoundFreqeuncy((lUHF2Radio:get_frequency()/1000000), "7.3", false, 0.005)), 7)
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
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000), 2) -- export to Hardware '2' Config
	]]

	-- IFEI - Engine, Fuel and Clock informations
	local lEngineFuelClock = ExportScript.Tools.getListIndicatorValue(5)
	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('EngineFuelClock: '..ExportScript.Tools.dump(lEngineFuelClock))
	end

	if lEngineFuelClock ~= nil and lEngineFuelClock.txt_RPM_R ~= nil then
		-- Engine informations 3 character
		ExportScript.Tools.SendDataDAC(2000, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_RPM_R, 3, "r", true)) -- right RPM
		ExportScript.Tools.SendDataDAC(2001, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_RPM_L, 3, "r", true)) -- left RPM
		ExportScript.Tools.SendDataDAC(2002, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_TEMP_R, 3, "r", true)) -- right TEMP
		ExportScript.Tools.SendDataDAC(2003, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_TEMP_L, 3, "r", true)) -- left TEMP
		ExportScript.Tools.SendDataDAC(2004, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_FF_R, 3, "r", true)) -- right Fuel flow
		ExportScript.Tools.SendDataDAC(2005, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_FF_L, 3, "r", true)) -- left Fuel flow
		ExportScript.Tools.SendDataDAC(2006, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_OilPress_R, 3, "r", true)) -- right OilPress
		ExportScript.Tools.SendDataDAC(2007, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_OilPress_L, 3, "r", true)) -- left OilPress
		
		-- Fuel informations 6 character
		ExportScript.Tools.SendDataDAC(2008, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_FUEL_UP:match("%d+"), 6, "r", true)) -- up Fuel
		ExportScript.Tools.SendDataDAC(2009, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_FUEL_DOWN:match("%d+"), 6, "r", true)) -- down Fuel
		ExportScript.Tools.SendDataDAC(2010, ExportScript.Tools.DisplayFormat(lEngineFuelClock.txt_BINGO:match("%d+"), 6, "r", true)) -- BINGO 
		
		-- Clock 8 character
		ExportScript.Tools.SendDataDAC(2011, ExportScript.Tools.DisplayFormat(string.format("%s.%s.$s", lEngineFuelClock.txt_CLOCK_H, lEngineFuelClock.txt_CLOCK_M, lEngineFuelClock.txt_CLOCK_S)), 8, "r", true) -- Clock HH:MM:SS
	else
		-- Engine informations 3 character
		ExportScript.Tools.SendDataDAC(2000, "-") -- right RPM
		ExportScript.Tools.SendDataDAC(2001, "-") -- left RPM
		ExportScript.Tools.SendDataDAC(2002, "-") -- right TEMP
		ExportScript.Tools.SendDataDAC(2003, "-") -- left TEMP
		ExportScript.Tools.SendDataDAC(2004, "-") -- right Fuel flow
		ExportScript.Tools.SendDataDAC(2005, "-") -- left Fuel flow
		ExportScript.Tools.SendDataDAC(2006, "-") -- right OilPress
		ExportScript.Tools.SendDataDAC(2007, "-") -- left OilPress
		
		-- Fuel informations 5 character
		ExportScript.Tools.SendDataDAC(2008, "-") -- up Fuel
		ExportScript.Tools.SendDataDAC(2009, "-") -- down Fuel
		ExportScript.Tools.SendDataDAC(2010, "-") -- BINGO 
		
		-- Clock 8 character
		ExportScript.Tools.SendDataDAC(2011, "-") -- Clock HH:MM:SS
	end
	
	local lUHF1Radio = GetDevice(39)
	ExportScript.Tools.SendDataDAC(2030, ExportScript.Tools.DisplayFormat(ExportScript.Tools.RoundFreqeuncy((lUHF1Radio:get_frequency()/1000000))), 7)
	
	local lUHF2Radio = GetDevice(40)
	ExportScript.Tools.SendDataDAC(2031, ExportScript.Tools.DisplayFormat(ExportScript.Tools.RoundFreqeuncy((lUHF2Radio:get_frequency()/1000000), "7.3", false, 0.005)), 7)

	--=====================================================================================
	--[[
	ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
	ExportScript.Tools.WriteToLog('CMSP: '..ExportScript.Tools.dump(list_indication(7)))
	
	local ltmp1 = 0
	for ltmp2 = 0, 13, 1 do
		ltmp1 = list_indication(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
		--ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
	]]
--[[
	local ltmp1 = 0
	for ltmp2 = 1, 73, 1 do
		ltmp1 = GetDevice(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
		ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
]]
end

-----------------------------
--     Custom functions    --
-----------------------------