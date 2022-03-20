-- F-16C Block 50

-- Upgrade project
-- Com freq or channel readouts
-- DCS mike

ExportScript.FoundDCSModule = true
ExportScript.Version.F16C_Viper = "1.2.1"

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
	
      -- Lamps
	[630]=  "%.1f",   --   ( CautionLights.FLCS_FAULT)
	[631]=  "%.1f",   --   ( CautionLights.ENGINE_FAULT)
	[632]=  "%.1f",   --   ( CautionLights.AVIONICS_FAULT)
	[633]=  "%.1f",   --   ( CautionLights.SEAT_NOT_ARMED)
	[634]=  "%.1f",   --   ( CautionLights.ELEC_SYS)
	[635]=  "%.1f",   --   ( CautionLights.SEC)
	[636]=  "%.1f",   --   ( CautionLights.EQUIP_HOT)
	[637]=  "%.1f",   --   ( CautionLights.NWS_FAIL)
	[638]=  "%.1f",   --   ( CautionLights.PROBE_HEAT)
	[639]=  "%.1f",   --   ( CautionLights.FUEL_OIL_HOT)
	[640]=  "%.1f",   --   ( CautionLights.RADAR_ALT)
	[641]=  "%.1f",   --   ( CautionLights.ANTI_SKID)
	[642]=  "%.1f",   --   ( CautionLights.CADC)
	[643]=  "%.1f",   --   ( CautionLights.INLET_ICING)
	[644]=  "%.1f",   --   ( CautionLights.IFF)
	[645]=  "%.1f",   --   ( CautionLights.HOOK)
	[646]=  "%.1f",   --   ( CautionLights.STORES_CONFIG)
	[647]=  "%.1f",   --   ( CautionLights.OVERHEAT)
	[648]=  "%.1f",   --   ( CautionLights.NUCLEAR)
	[649]=  "%.1f",   --   ( CautionLights.OBOGS)
	[650]=  "%.1f",   --   ( CautionLights.ATF_NOT_ENGAGED)
	[651]=  "%.1f",   --   ( CautionLights.EEC)
	[652]=  "%.1f",   --   ( CautionLights.LIGHTS_MAX)
	[653]=  "%.1f",   --   ( CautionLights.CABIN_PRESS)
	[654]=  "%.1f",   --   ( CautionLights.FWD_FUEL_LOW)
	[655]=  "%.1f",   --   ( CautionLights.BUC)
	[656]=  "%.1f",   --   ( CautionLights.LIGHTS_MAX)
	[657]=  "%.1f",   --   ( CautionLights.LIGHTS_MAX)
	[658]=  "%.1f",   --   ( CautionLights.AFT_FUEL_LOW)
	[659]=  "%.1f",   --   ( CautionLights.LIGHTS_MAX)
	[660]=  "%.1f",   --   ( CautionLights.LIGHTS_MAX)
	[661]=  "%.1f",   --   ( CautionLights.LIGHTS_MAX)
		-- Edge of glareshield
	[117]=  "%.1f",   --   ( CautionLights.MASTER_CAUTION)
	[121]=  "%.1f",   --   ( CautionLights.TF_FAIL)
	[126]=  "%.1f",   --   ( CautionLights.ENG_FIRE)
	[127]=  "%.1f",   --   ( CautionLights.ENGINE)
	[129]=  "%.1f",   --   ( CautionLights.HYD_OIL_PRESS)
	[130]=  "%.1f",   --   ( CautionLights.FLCS)
	[131]=  "%.1f",   --   ( CautionLights.DBU_ON)
	[133]=  "%.1f",   --   ( CautionLights.TO_LDG_CONFIG)
	[134]=  "%.1f",   --   ( CautionLights.CANOPY)
	[135]=  "%.1f",   --   ( CautionLights.OXY_LOW)
		-- AOA Indexer
	[110]=  "%.1f",   --   ( CautionLights.AOA_RED)
	[111]=  "%.1f",   --   ( CautionLights.AOA_GREEN)
	[112]=  "%.1f",   --   ( CautionLights.AOA_YELLOW)
		-- LG Control Panel
	[350]=  "%.1f",   --   ( CautionLights.GEAR_NOSE)
	[351]=  "%.1f",   --   ( CautionLights.GEAR_LEFT)
	[352]=  "%.1f",   --   ( CautionLights.GEAR_RIGHT)
	[369]=  "%.1f",   --   ( CautionLights.GEAR_WARNING)
	[113]=  "%.1f",   --   ( CautionLights.RDY)
	[114]=  "%.1f",   --   ( CautionLights.AR_NWS)
	[115]=  "%.1f",   --   ( CautionLights.DISC)
	[157]=  "%.1f",   --   ( CautionLights.MARKER_BEACON)
		-- Eng Control Panel
	[446]=  "%.1f",   --   ( CautionLights.JFS_RUN)
	------ECM Lamps
	[102]=  "%.1f",   --  ECM Light
	
	[461]=  "%.1f",   --  BTN 1S
	[462]=  "%.1f",   --  BTN 1A
	[463]=  "%.1f",   --  BTN 1F
	[464]=  "%.1f",   --  BTN 1T
	[466]=  "%.1f",   --  Btn_2_S
	[467]=  "%.1f",   --  Btn_2_A
	[468]=  "%.1f",   --  Btn_2_F
	[469]=  "%.1f",   --  Btn_2_T
	[471]=  "%.1f",   --  Btn_3_S
	[472]=  "%.1f",   --  Btn_3_A
	[473]=  "%.1f",   --  Btn_3_F
	[474]=  "%.1f",   --  Btn_3_T
	[476]=  "%.1f",   --  Btn_4_S
	[477]=  "%.1f",   --  Btn_4_A
	[478]=  "%.1f",   --  Btn_4_F
	[479]=  "%.1f",   --  Btn_4_T
	[481]=  "%.1f",   --  Btn_5_S
	[482]=  "%.1f",   --  Btn_5_A    
	[483]=  "%.1f",   --  Btn_5_F
	[484]=  "%.1f",   --  Btn_5_T
	[486]=  "%.1f",   --  Btn_6_S
	[487]=  "%.1f",   --  Btn_6_A
	[488]=  "%.1f",   --  Btn_6_F
	[489]=  "%.1f",   --  Btn_6_T
	[491]=  "%.1f",   --  Btn_FRM_S
	[492]=  "%.1f",   --  Btn_FRM_A
	[493]=  "%.1f",   --  Btn_FRM_F
	[494]=  "%.1f",   --  Btn_FRM_T
	[496]=  "%.1f",   --  Btn_SPL_S
	[497]=  "%.1f",   --  Btn_SPL_A
	[498]=  "%.1f",   --  Btn_SPL_F
	[499]=  "%.1f",   --  Btn_SPL_T
		-- EPU Control Panel
	[524]=  "%.1f",   --   ( CautionLights.HYDRAZN)
	[523]=  "%.1f",   --   ( CautionLights.AIR)
	[526]=  "%.1f",   --   ( CautionLights.EPU)
		-- Elec Control Panel
	[513]=  "%.1f",   --   ( CautionLights.FLCS_PMG)
	[512]=  "%.1f",   --   ( CautionLights.MAIN_GEN)
	[515]=  "%.1f",   --   ( CautionLights.STBY_GEN)
	[517]=  "%.1f",   --   ( CautionLights.EPU_GEN)
	[516]=  "%.1f",   --   ( CautionLights.EPU_PMG)
	[519]=  "%.1f",   --   ( CautionLights.TO_FLCS)
	[518]=  "%.1f",   --   ( CautionLights.FLCS_RLY)
	[521]=  "%.1f",   --   ( CautionLights.ACFT_BATT_FAIL)
		-- Advance Mode Switch
	[106]=  "%.1f",   --   ( CautionLights.ACTIVE)
	[107]=  "%.1f",   --   ( CautionLights.STBY)
		-- FLCP
	[570]=  "%.1f",   --   ( CautionLights.FL_RUN)
	[571]=  "%.1f",   --   ( CautionLights.FL_FAIL)
		-- Test Switch Panel
	[581]=  "%.1f",   --   ( CautionLights.FLCS_PWR_A)
	[582]=  "%.1f",   --   ( CautionLights.FLCS_PWR_B)
	[583]=  "%.1f",   --   ( CautionLights.FLCS_PWR_C)
	[584]=  "%.1f",   --   ( CautionLights.FLCS_PWR_D)
		-- RWR
	[396]=  "%.1f",   --   ( RWRLights.SEARCH)
	[398]=  "%.1f",   --   ( RWRLights.ACTIVITY)
	[423]=  "%.1f",   --   ( RWRLights.ACT_POWER)
	[400]=  "%.1f",   --   ( RWRLights.ALT_LOW)
	[424]=  "%.1f",   --   ( RWRLights.ALT)
	[402]=  "%.1f",   --   ( RWRLights.POWER)
	[142]=  "%.1f",   --   ( RWRLights.HANDOFF_UP)
	[136]=  "%.1f",   --   ( RWRLights.HANDOFF_H)
	[144]=  "%.1f",   --   ( RWRLights.MSL_LAUNCH)
	[146]=  "%.f",   --   ( RWRLights.MODE_PRI)
	[137]=  "%.1f",   --   ( RWRLights.MODE_OPEN)
	[148]=  "%.1f",   --   ( RWRLights.SHIP_U)
	[148]=  "%.1f",   --   ( RWRLights.SHIP_UNKNOWN)
	[150]=  "%.1f",   --   ( RWRLights.SYSTEST_ON)
	[150]=  "%.1f",   --   ( RWRLights.SYSTEST)
	[152]=  "%.1f",   --   ( RWRLights.TGTSEP_UP)
	[138]=  "%.1f",   --   ( RWRLights.TGTSEP_DOWN)
	
	------AGGIUNTI DA PVI_EAGLE
	
	[88]=  "%.1f",   --   ( FuelFlowCounter_10k)
	[89]=  "%.1f",   --   ( FuelFlowCounter_1k)
	[90]=  "%.1f",   --   ( FuelFlowCounter_100)
	[730]=  "%.1f",   --  ( FuelTotalizer_10k)
	[731]=  "%.1f",   --  ( FuelTotalizer_1k)
	[732]=  "%.1f",   --  ( FuelTotalizer_100) 
	[363]=  "%.1f",   --  ( SpeedBrake_Indicator) 

	[15]  = "%.3f",   -- AOA Indicator
	[16]  = "%.3f",   -- VVI Indicator (Vertical Velocity)
	[47]  = "%.3f",   -- VNE Max Speed Needle
	[48]  = "%.3f",   -- Airspeed Indicator (knots)
	[49]  = "%.3f",   -- Airspeed Indicator (mach)
	[51]  = "%.3f",   -- Barometric Altitude Needle
	[52]  = "%.3f",   -- Barometric Altitude Window 1
	[53]  = "%.3f",   -- Barometric Altitude Window 2
	[54]  = "%.3f",   -- Barometric Altitude Window 3
	[56]  = "%.3f",   -- Barometric Setting Kollsman Window 1
	[57]  = "%.3f",   -- Barometric Setting Kollsman Window 2
	[58]  = "%.3f",   -- Barometric Setting Kollsman Window 3
	[59]  = "%.3f",   -- Barometric Setting Kollsman Window 4

}


ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	
	[62]  = "%1d",   --PTR-ALT-LVR-SET-62, Barometric Setting Knob, Barometric Setting Knob, , , (0, 0, 1)
	[60]  = "%1d",   --PTR-ALT-TMB-MODE-60, Mode Lever, Mode Lever, ,  ELEC/OFF/PNEU, (1, 0, 1)
	-- ADI(50)
	[22]  = "%1d",   --PTR-ADI-LVR-KNOB-22, Pitch Trim Knob, Pitch Trim Knob, , , (0, 0, 1)
	-- AMI(46)
	[71]  = "%1d",   --PTR-SPD-LVR-SET-71, SET INDEX Knob, SET INDEX Knob, , , (0, 0, 1)
	-- CLOCK(51)
	[626]  = "%1d",   --PTR-SNSR-TMB-RDR-674, Clock Winding and Setting Knob, Clock Winding and Setting Knob, , , (1, 0, 1)
	[628]  = "%1d",   --PTR-RPAN-WATCH-BTN-CTRL-627, Clock Elapsed Time Knob, Clock Elapsed Time Knob, , , (1, 0, 1)
	[625]  = "%.2f",   --PTR-SNSR-TMB-RDR-674, Clock Winding and Setting Knob, Clock Winding and Setting Knob, , , (0.04, 0, 1)
	-- CMDS(32)
	[375]  = "%1d",   --PTR-LPAN-CMDS-TMB-RWR-375, RWR 555 Switch, RWR 555 Switch, ,  ON/OFF, (-1, 0, 1)
	[374]  = "%1d",   --PTR-LPAN-CMDS-TMB-JMR-374, JMR Source Switch, JMR Source Switch, ,  ON/OFF, (-1, 0, 1)
	[373]  = "%1d",   --PTR-LPAN-CMDS-TMB-MWS-373, MWS Source Switch, MWS Source Switch, ,  ON/OFF (no function), (-1, 0, 1)
	[371]  = "%1d",   --PTR-LPAN-CMDS-TMB-JTSN-371, Jettison Switch, Jettison Switch, ,  JETT/OFF, (-1, 0, 1)
	[365]  = "%1d",   --PTR-LPAN-CMDS-BTN-OSB1-365, O1 Expendable Category Switch, O1 Expendable Category Switch, ,  ON/OFF, (-1, 0, 1)
	[366]  = "%1d",   --PTR-LPAN-CMDS-BTN-OSB2-366, O2 Expendable Category Switch, O2 Expendable Category Switch, ,  ON/OFF, (-1, 0, 1)
	[367]  = "%1d",   --PTR-LPAN-CMDS-BTN-OSB3-367, CH Expendable Category Switch, CH Expendable Category Switch, ,  ON/OFF, (-1, 0, 1)
	[368]  = "%1d",   --PTR-LPAN-CMDS-BTN-OSB4-368, FL Expendable Category Switch, FL Expendable Category Switch, ,  ON/OFF, (-1, 0, 1)
	[375]  = "%1d",   --PTR-LPAN-CMDS-TMB-RWR-375, RWR 555 Switch, RWR 555 Switch, ,  ON/OFF, (1, 0, 1)
	[374]  = "%1d",   --PTR-LPAN-CMDS-TMB-JMR-374, JMR Source Switch, JMR Source Switch, ,  ON/OFF, (1, 0, 1)
	[373]  = "%1d",   --PTR-LPAN-CMDS-TMB-MWS-373, MWS Source Switch, MWS Source Switch, ,  ON/OFF (no function), (1, 0, 1)
	[371]  = "%1d",   --PTR-LPAN-CMDS-TMB-JTSN-371, Jettison Switch, Jettison Switch, ,  JETT/OFF, (1, 0, 1)
	[365]  = "%1d",   --PTR-LPAN-CMDS-BTN-OSB1-365, O1 Expendable Category Switch, O1 Expendable Category Switch, ,  ON/OFF, (1, 0, 1)
	[366]  = "%1d",   --PTR-LPAN-CMDS-BTN-OSB2-366, O2 Expendable Category Switch, O2 Expendable Category Switch, ,  ON/OFF, (1, 0, 1)
	[367]  = "%1d",   --PTR-LPAN-CMDS-BTN-OSB3-367, CH Expendable Category Switch, CH Expendable Category Switch, ,  ON/OFF, (1, 0, 1)
	[368]  = "%1d",   --PTR-LPAN-CMDS-BTN-OSB4-368, FL Expendable Category Switch, FL Expendable Category Switch, ,  ON/OFF, (1, 0, 1)
	[604]  = "%1d",   --PTR-LSIDE-BTN-CHAFF-604, CHAFF/FLARE Dispense Button - Push to dispense, CHAFF/FLARE Dispense Button - Push to dispense, , , (1, 0, 1)
	[377]  = "%.1f",   --PTR-LPAN-CMDS-LVR-PRGM-377, PROGRAM Knob, PROGRAM Knob, ,  BIT/1/2/3/4, (0.1, 0, 0.4)
	[378]  = "%.1f",   --PTR-LPAN-CMDS-LVR-MODE-378, MODE Knob, MODE Knob, ,  OFF/STBY/MAN/SEMI/AUTO/BYP, (0.1, 0, 0.5)
	[377]  = "%.1f",   --PTR-LPAN-CMDS-LVR-PRGM-377, PROGRAM Knob, PROGRAM Knob, ,  BIT/1/2/3/4, (-0.1, 0, 0.4)
	[378]  = "%.1f",   --PTR-LPAN-CMDS-LVR-MODE-378, MODE Knob, MODE Knob, ,  OFF/STBY/MAN/SEMI/AUTO/BYP, (-0.1, 0, 0.5)
	-- CONTROL_INTERFACE(2)
	[566]  = "%1d",   --PTR-FLTCP-TMB-DIGITAL-566, DIGITAL BACKUP Switch, DIGITAL BACKUP Switch, ,  OFF/BACKUP, (-1, 0, 1)
	[567]  = "%1d",   --PTR-FLTCP-TMB-AFLP-567, ALT FLAPS Switch, ALT FLAPS Switch, ,  NORM/EXTEND, (-1, 0, 1)
	[572]  = "%1d",   --PTR-FLTCP-TMB-LEFLP-572, LE FLAPS Switch, LE FLAPS Switch, ,  AUTO/LOCK, (-1, 0, 1)
	[564]  = "%1d",   --PTR-MANTRIM-TMB-MODE-564, TRIM/AP DISC Switch, TRIM/AP DISC Switch, ,  DISC/NORM, (-1, 0, 1)
	[358]  = "%1d",   --PTR-LGCP-TMB-STCONF-358, STORES CONFIG Switch, STORES CONFIG Switch, ,  CAT III/CAT I, (-1, 0, 1)
	[109]  = "%1d",   --PTR-CLCP-TMB-PITCH-109, Autopilot PITCH Switch, Autopilot PITCH Switch, ,  ATT HOLD/ A/P OFF/ ALT HOLD, (-1, -1, 0)
	[108]  = "%1d",   --PTR-CLCP-TMB-ROLL-108, Autopilot ROLL Switch, Autopilot ROLL Switch, ,  STRG SEL/ATT HOLD/HDG SEL, (-1, -1, 1)
	[97]  = "%1d",   --PTR-CLCP-BTN-ADV-97, ADV MODE Switch, ADV MODE Switch, , , (-1, 0, 1)
	[568]  = "%1d",   --PTR-FLTCP-TMB-MAN-568, MANUAL TF FLYUP Switch, MANUAL TF FLYUP Switch, ,  ENABLE/DISABLE, (-1, 0, 1)
	[560]  = "%1d",   --PTR-MANTRIM-LVR-ROLL-560, ROLL TRIM Wheel, ROLL TRIM Wheel, , , (0, -1, 1)
	[562]  = "%1d",   --PTR-MANTRIM-LVR-PITCH-562, PITCH TRIM Wheel, PITCH TRIM Wheel, , , (0, -1, 1)
	[565]  = "%1d",   --PTR-MANTRIM-LVR-YAW-565, YAW TRIM Knob, YAW TRIM Knob, , , (0, -1, 1)
	[566]  = "%1d",   --PTR-FLTCP-TMB-DIGITAL-566, DIGITAL BACKUP Switch, DIGITAL BACKUP Switch, ,  OFF/BACKUP, (1, 0, 1)
	[567]  = "%1d",   --PTR-FLTCP-TMB-AFLP-567, ALT FLAPS Switch, ALT FLAPS Switch, ,  NORM/EXTEND, (1, 0, 1)
	[574]  = "%1d",   --PTR-FLTCP-TMB-BIT-574, BIT Switch, BIT Switch, ,  OFF/BIT, (1, 0, 1)
	[574]  = "%1d",   --PTR-FLTCP-TMB-BIT-574, BIT Switch, BIT Switch, ,  OFF/BIT, (1, 0, 1)
	[573]  = "%1d",   --PTR-FLTCP-TMB-FLCS-573, FLCS RESET Switch, FLCS RESET Switch, ,  OFF/RESET, (1, 0, 1)
	[573]  = "%1d",   --PTR-FLTCP-TMB-FLCS-573, FLCS RESET Switch, FLCS RESET Switch, ,  OFF/RESET, (1, 0, 1)
	[572]  = "%1d",   --PTR-FLTCP-TMB-LEFLP-572, LE FLAPS Switch, LE FLAPS Switch, ,  AUTO/LOCK, (1, 0, 1)
	[564]  = "%1d",   --PTR-MANTRIM-TMB-MODE-564, TRIM/AP DISC Switch, TRIM/AP DISC Switch, ,  DISC/NORM, (1, 0, 1)
	[425]  = "%1d",   --PTR-MPCP-TMB-MP-425, MANUAL PITCH Override Switch, MANUAL PITCH Override Switch, ,  OVRD/NORM, (1, 0, 1)
	[425]  = "%1d",   --PTR-MPCP-TMB-MP-425, MANUAL PITCH Override Switch, MANUAL PITCH Override Switch, ,  OVRD/NORM, (1, 0, 1)
	[358]  = "%1d",   --PTR-LGCP-TMB-STCONF-358, STORES CONFIG Switch, STORES CONFIG Switch, ,  CAT III/CAT I, (1, 0, 1)
	[109]  = "%1d",   --PTR-CLCP-TMB-PITCH-109, Autopilot PITCH Switch, Autopilot PITCH Switch, ,  ATT HOLD/ A/P OFF/ ALT HOLD, (1, 0, 1)
	[108]  = "%1d",   --PTR-CLCP-TMB-ROLL-108, Autopilot ROLL Switch, Autopilot ROLL Switch, ,  STRG SEL/ATT HOLD/HDG SEL, (1, -1, 1)
	[97]  = "%1d",   --PTR-CLCP-BTN-ADV-97, ADV MODE Switch, ADV MODE Switch, , , (1, 0, 1)
	[568]  = "%1d",   --PTR-FLTCP-TMB-MAN-568, MANUAL TF FLYUP Switch, MANUAL TF FLYUP Switch, ,  ENABLE/DISABLE, (1, 0, 1)
	-- CPT_MECH(10)
	[606]  = "%1d",   --PTR-LARMS-TMB-OPN-606, Canopy Switch, Canopy Switch, ,  OPEN/HOLD/CLOSE(momentarily), (-1, 0, 1)
	[606]  = "%1d",   --PTR-LARMS-TMB-OPN-606, Canopy Switch, Canopy Switch, ,  OPEN/HOLD/CLOSE(momentarily), (-1, -1, 0)
	[600]  = "%1d",   --PTR-LARMS-CNPOPN-600, Canopy Handle, Canopy Handle, ,  UP/DOWN, (-1, 0, 1)
	[601]  = "%1d",   --PTR-LARMS-CNPJETT-601, CANOPY JETTISON T-Handle, CANOPY JETTISON T-Handle, ,  PULL/STOW, (-1, 0, 1)
	[785]  = "%1d",   --PTR-SEAT-ARM-LOCK-785, Ejection Safety Lever, Ejection Safety Lever, ,  ARMED/LOCKED, (-1, 0, 1)
	[786]  = "%1d",   --PTR-SEAT-TMB-ADJ-786, SEAT ADJ Switch, SEAT ADJ Switch, ,  UP/OFF/DOWN, (-1, -1, 0)
	[796]  = "%1d",   --PTR-STICK-HIDE-796, Hide Stick toggle, Hide Stick toggle, , , (-1, 0, 1)
	[600]  = "%1d",   --PTR-LARMS-CNPOPN-600, Canopy Handle, Canopy Handle, ,  UP/DOWN, (1, 0, 1)
	[601]  = "%1d",   --PTR-LARMS-CNPJETT-601, CANOPY JETTISON T-Handle, CANOPY JETTISON T-Handle, ,  PULL/STOW, (1, 0, 1)
	[785]  = "%1d",   --PTR-SEAT-ARM-LOCK-785, Ejection Safety Lever, Ejection Safety Lever, ,  ARMED/LOCKED, (1, 0, 1)
	[786]  = "%1d",   --PTR-SEAT-TMB-ADJ-786, SEAT ADJ Switch, SEAT ADJ Switch, ,  UP/OFF/DOWN, (1, 0, 1)
	[796]  = "%1d",   --PTR-STICK-HIDE-796, Hide Stick toggle, Hide Stick toggle, , , (1, 0, 1)
	-- CPTLIGHTS_SYSTEM(12)
	[691]  = "%1d",   --PTR-RLGT-TMB-MALIND-691, MAL & IND LTS Switch, MAL & IND LTS Switch, ,  BRT/Center/DIM, (-1, -1, 0)
	[685]  = "%1d",   --PTR-RLGT-LVR-PRICNS-685, PRIMARY CONSOLES BRT Knob, PRIMARY CONSOLES BRT Knob, , , (0, 0, 1)
	[686]  = "%1d",   --PTR-RLGT-LVR-PRIPNL-686, PRIMARY INST PNL BRT Knob, PRIMARY INST PNL BRT Knob, , , (0, 0, 1)
	[687]  = "%1d",   --PTR-RLGT-LVR-PRIDATA-687, PRIMARY DATA ENTRY DISPLAY BRT Knob, PRIMARY DATA ENTRY DISPLAY BRT Knob, , , (0, 0, 1)
	[688]  = "%1d",   --PTR-RLGT-LVR-FLDCNS-688, FLOOD CONSOLES BRT Knob, FLOOD CONSOLES BRT Knob, , , (0, 0, 1)
	[690]  = "%1d",   --PTR-RLGT-LVR-FLDPNL-690, FLOOD INST PNL BRT Knob, FLOOD INST PNL BRT Knob, , , (0, 0, 1)
	[794]  = "%1d",   --PTR-AOA-LVL-794, AOA Indexer Dimming Lever, AOA Indexer Dimming Lever, , , (0, 0, 1)
	[795]  = "%1d",   --PTR-AR-LVL-795, AR Status Indicator Dimming Lever, AR Status Indicator Dimming Lever, , , (0, 0, 1)
	[116]  = "%1d",   --PTR-CPBC-BTN-MCAUT-116, Master Caution Button - Push to reset, Master Caution Button - Push to reset, , , (1, 0, 1)
	[577]  = "%1d",   --PTR-TESTCP-BTN-MAL-577, MAL & IND LTS Test Button - Push to test, MAL & IND LTS Test Button - Push to test, , , (1, 0, 1)
	[691]  = "%1d",   --PTR-RLGT-TMB-MALIND-691, MAL & IND LTS Switch, MAL & IND LTS Switch, ,  BRT/Center/DIM, (1, 0, 1)
	-- ECS_INTERFACE(13)
	[692]  = "%.1f",   --PTR-AIRCOND-TMB-TEMP-692, TEMP Knob, TEMP Knob, , , (0, -0.3, 0.3)
	[602]  = "%.2f",   --PTR-LARMS-DEFOG-602, DEFOG Lever, DEFOG Lever, , , (0.05, 0, 1)
	[602]  = "%.2f",   --PTR-LARMS-DEFOG-602, DEFOG Lever, DEFOG Lever, , , (-0.05, 0, 1)
	[693]  = "%.1f",   --PTR-AIRCOND-TMB-SRC-693, AIR SOURCE Knob, AIR SOURCE Knob, ,  OFF/NORM/DUMP/RAM, (0.1, 0, 0.3)
	[693]  = "%.1f",   --PTR-AIRCOND-TMB-SRC-693, AIR SOURCE Knob, AIR SOURCE Knob, ,  OFF/NORM/DUMP/RAM, (-0.1, 0, 0.3)
	-- EHSI(28)
	[46]  = "%1d",   --PTR-EHSI-BTN-M-46, Mode (M) Button, Mode (M) Button, , , (1, 0, 1)
	[45]  = "%1d",   --PTR-EHSI-LVR-HDG-45, HDG Set Knob, HDG Set Knob, , , (1, 0, 1)
	[42]  = "%1d",   --PTR-EHSI-LVR-HDG-45, HDG Set Knob, HDG Set Knob, , , (1, 0, 1)
	[44]  = "%1d",   --PTR-EHSI-LVR-CRS-44, CRS Set / Brightness Control Knob, CRS Set / Brightness Control Knob, , , (1, 0, 1)
	[43]  = "%1d",   --PTR-EHSI-LVR-CRS-44, CRS Set / Brightness Control Knob, CRS Set / Brightness Control Knob, , , (1, 0, 1)
	-- ELEC_INTERFACE(3)
	[510]  = "%1d",   --PTR-ELEC-TMB-MPWR-510, MAIN PWR Switch, MAIN PWR Switch, ,  MAIN PWR/BATT/OFF, (-1, -1, 1)
	[578]  = "%1d",   --PTR-TESTCP-TMB-PROBE-578, PROBE HEAT Switch, PROBE HEAT Switch, ,  PROBE HEAT/OFF/TEST(momentarily), (-1, 0, 1)
	[578]  = "%1d",   --PTR-TESTCP-TMB-PROBE-578, PROBE HEAT Switch, PROBE HEAT Switch, ,  PROBE HEAT/OFF/TEST(momentarily), (-1, -1, 0)
	[510]  = "%1d",   --PTR-ELEC-TMB-MPWR-510, MAIN PWR Switch, MAIN PWR Switch, ,  MAIN PWR/BATT/OFF, (1, -1, 1)
	[511]  = "%1d",   --PTR-ELEC-BTN-CRES-511, ELEC CAUTION RESET Button - Push to reset, ELEC CAUTION RESET Button - Push to reset, , , (1, 0, 1)
	[585]  = "%1d",   --PTR-TESTCP-TMB-TEST-585, FLCS PWR TEST Switch, FLCS PWR TEST Switch, ,  MAINT/NORM/TEST(momentarily), (1, -1, 0)
	[585]  = "%1d",   --PTR-TESTCP-TMB-TEST-585, FLCS PWR TEST Switch, FLCS PWR TEST Switch, ,  MAINT/NORM/TEST(momentarily), (1, 0, 1)
	[579]  = "%1d",   --PTR-TESTCP-TMB-EPU-579, EPU/GEN Test Switch, EPU/GEN Test Switch, ,  EPU/GEN /OFF, (1, 0, 1)
	[579]  = "%1d",   --PTR-TESTCP-TMB-EPU-579, EPU/GEN Test Switch, EPU/GEN Test Switch, ,  EPU/GEN /OFF, (1, 0, 1)
	-- ENGINE_INTERFACE(6)
	[527]  = "%1d",   --PTR-EPU-CVR-EPUTMB-527, EPU Switch Cover for ON, EPU Switch Cover for ON, ,  OPEN/CLOSE, (-1, 0, 1)
	[529]  = "%1d",   --PTR-EPU-CVR-EPUTMB-529, EPU Switch Cover for OFF, EPU Switch Cover for OFF, ,  OPEN/CLOSE, (-1, 0, 1)
	[528]  = "%1d",   --PTR-EPU-TMB-EPUTMB-528, EPU Switch, EPU Switch, ,  ON/NORM/OFF, (-1, -1, 1)
	[710]  = "%1d",   --PTR-ANTICE-TMB-ENG-710, Engine ANTI ICE Switch, Engine ANTI ICE Switch, ,  ON/AUTO/OFF, (-1, -1, 1)
	[447]  = "%1d",   --PTR-ENGSTART-TMB-JETFUEL-447, JFS Switch, JFS Switch, ,  START 1/OFF/START 2, (-1, 1, 0)
	[448]  = "%1d",   --PTR-ENGSTART-CVR-ENGCNT-448, ENG CONT Switch Cover, ENG CONT Switch Cover, ,  OPEN/CLOSE, (-1, 0, 1)
	[449]  = "%1d",   --PTR-ENGSTART-TMB-ENGCNT-449, ENG CONT Switch, ENG CONT Switch, ,  PRI/SEC, (-1, 0, 1)
	[451]  = "%1d",   --PTR-ENGSTART-TMB-MAXPWR-451, MAX POWER Switch (is inoperative), MAX POWER Switch (is inoperative), ,  MAX POWER/OFF, (-1, 0, 1)
	[450]  = "%1d",   --PTR-ENGSTART-TMB-ABENG-450, AB RESET Switch, AB RESET Switch, ,  AB RESET/NORM/ENG DATA, (-1, -1, 0)
	[527]  = "%1d",   --PTR-EPU-CVR-EPUTMB-527, EPU Switch Cover for ON, EPU Switch Cover for ON, ,  OPEN/CLOSE, (1, 0, 1)
	[529]  = "%1d",   --PTR-EPU-CVR-EPUTMB-529, EPU Switch Cover for OFF, EPU Switch Cover for OFF, ,  OPEN/CLOSE, (1, 0, 1)
	[528]  = "%1d",   --PTR-EPU-TMB-EPUTMB-528, EPU Switch, EPU Switch, ,  ON/NORM/OFF, (1, -1, 1)
	[710]  = "%1d",   --PTR-ANTICE-TMB-ENG-710, Engine ANTI ICE Switch, Engine ANTI ICE Switch, ,  ON/AUTO/OFF, (1, -1, 1)
	[447]  = "%1d",   --PTR-ENGSTART-TMB-JETFUEL-447, JFS Switch, JFS Switch, ,  START 1/OFF/START 2, (1, 0, 1)
	[448]  = "%1d",   --PTR-ENGSTART-CVR-ENGCNT-448, ENG CONT Switch Cover, ENG CONT Switch Cover, ,  OPEN/CLOSE, (1, 0, 1)
	[449]  = "%1d",   --PTR-ENGSTART-TMB-ENGCNT-449, ENG CONT Switch, ENG CONT Switch, ,  PRI/SEC, (1, 0, 1)
	[451]  = "%1d",   --PTR-ENGSTART-TMB-MAXPWR-451, MAX POWER Switch (is inoperative), MAX POWER Switch (is inoperative), ,  MAX POWER/OFF, (1, 0, 1)
	[450]  = "%1d",   --PTR-ENGSTART-TMB-ABENG-450, AB RESET Switch, AB RESET Switch, ,  AB RESET/NORM/ENG DATA, (1, 0, 1)
	[575]  = "%1d",   --PTR-TESTCP-BTN-FIRE-575, FIRE & OHEAT DETECT Test Button - Push to test, FIRE & OHEAT DETECT Test Button - Push to test, , , (1, 0, 1)
	-- EXTLIGHTS_SYSTEM(11)
	[532]  = "%1d",   --PTR-EXTLGT-TMB-FLSH-532, FLASH STEADY Switch, FLASH STEADY Switch, ,  FLASH/STEADY, (-1, 0, 1)
	[533]  = "%1d",   --PTR-EXTLGT-TMB-WNGTAIL-533, WING/TAIL Switch, WING/TAIL Switch, ,  BRT/OFF/DIM, (-1, -1, 1)
	[534]  = "%1d",   --PTR-EXTLGT-TMB-FUS-534, FUSELAGE Switch, FUSELAGE Switch, ,  BRT/OFF/DIM, (-1, -1, 1)
	[360]  = "%1d",   --PTR-LGCP-TMB-LIGHTS-360, LANDING TAXI LIGHTS Switch, LANDING TAXI LIGHTS Switch, ,  LANDING/OFF/TAXI, (-1, -1, 1)
	[535]  = "%1d",   --PTR-EXTLGT-LVR-FORM-535, FORM Knob, FORM Knob, , , (0, 0, 1)
	[537]  = "%1d",   --PTR-EXTLGT-LVR-AREF-537, AERIAL REFUELING Knob, AERIAL REFUELING Knob, , , (0, 0, 1)
	[532]  = "%1d",   --PTR-EXTLGT-TMB-FLSH-532, FLASH STEADY Switch, FLASH STEADY Switch, ,  FLASH/STEADY, (1, 0, 1)
	[533]  = "%1d",   --PTR-EXTLGT-TMB-WNGTAIL-533, WING/TAIL Switch, WING/TAIL Switch, ,  BRT/OFF/DIM, (1, -1, 1)
	[534]  = "%1d",   --PTR-EXTLGT-TMB-FUS-534, FUSELAGE Switch, FUSELAGE Switch, ,  BRT/OFF/DIM, (1, -1, 1)
	[360]  = "%1d",   --PTR-LGCP-TMB-LIGHTS-360, LANDING TAXI LIGHTS Switch, LANDING TAXI LIGHTS Switch, ,  LANDING/OFF/TAXI, (1, -1, 1)
	[531]  = "%.1f",   --PTR-EXTLGT-TMB-ANTCOL-531, ANTI-COLL Knob, ANTI-COLL Knob, ,  OFF/1/2/3/4/A/B/C, (0.1, 0, 0.7)
	[536]  = "%.1f",   --PTR-EXTLGT-TMB-MASTER-536, MASTER Switch, MASTER Switch, ,  OFF/ALL/A-C/FORM/NORM, (0.1, 0, 0.4)
	[531]  = "%.1f",   --PTR-EXTLGT-TMB-ANTCOL-531, ANTI-COLL Knob, ANTI-COLL Knob, ,  OFF/1/2/3/4/A/B/C, (-0.1, 0, 0.7)
	[536]  = "%.1f",   --PTR-EXTLGT-TMB-MASTER-536, MASTER Switch, MASTER Switch, ,  OFF/ALL/A-C/FORM/NORM, (-0.1, 0, 0.4)
	-- FCR(31)
	[672]  = "%1d",   --PTR-SNSR-TMB-FCR-672, FCR Switch, FCR Switch, ,  FCR/OFF, (-1, 0, 1)
	[672]  = "%1d",   --PTR-SNSR-TMB-FCR-672, FCR Switch, FCR Switch, ,  FCR/OFF, (1, 0, 1)
	-- FUEL_INTERFACE(4)
	[559]  = "%1d",   --PTR-FUELCP-TMB-MASTER-559, FUEL MASTER Switch, FUEL MASTER Switch, ,  MASTER/OFF, (-1, 0, 1)
	[558]  = "%1d",   --PTR-FUELCP-CVR-MASTER-558, FUEL MASTER Switch Cover, FUEL MASTER Switch Cover, ,  OPEN/CLOSE, (-1, 0, 1)
	[159]  = "%1d",   --PTR-CDCP-TMB-FTRANS-159, External Fuel Transfer Switch, External Fuel Transfer Switch, ,  NORM/ WING FIRST, (-1, 0, 1)
	[557]  = "%1d",   --PTR-FUELCP-TMB-TANK-557, TANK INERTING Switch, TANK INERTING Switch, ,  TANK INERTING /OFF, (-1, 0, 1)
	[555]  = "%1d",   --PTR-FUELCP-TMB-REFUEL-555, AIR REFUEL Switch, AIR REFUEL Switch, ,  OPEN/CLOSE, (-1, 0, 1)
	[559]  = "%1d",   --PTR-FUELCP-TMB-MASTER-559, FUEL MASTER Switch, FUEL MASTER Switch, ,  MASTER/OFF, (1, 0, 1)
	[558]  = "%1d",   --PTR-FUELCP-CVR-MASTER-558, FUEL MASTER Switch Cover, FUEL MASTER Switch Cover, ,  OPEN/CLOSE, (1, 0, 1)
	[159]  = "%1d",   --PTR-CDCP-TMB-FTRANS-159, External Fuel Transfer Switch, External Fuel Transfer Switch, ,  NORM/ WING FIRST, (1, 0, 1)
	[557]  = "%1d",   --PTR-FUELCP-TMB-TANK-557, TANK INERTING Switch, TANK INERTING Switch, ,  TANK INERTING /OFF, (1, 0, 1)
	[555]  = "%1d",   --PTR-FUELCP-TMB-REFUEL-555, AIR REFUEL Switch, AIR REFUEL Switch, ,  OPEN/CLOSE, (1, 0, 1)
	[556]  = "%.1f",   --PTR-FUELCP-TMB-ENGFEED-556, ENGINE FEED Knob, ENGINE FEED Knob, ,  OFF/NORM/AFT/FWD, (0.1, 0, 0.3)
	[158]  = "%.1f",   --PTR-CDCP-TMB-FMODE-158, FUEL QTY SEL Knob, FUEL QTY SEL Knob, ,  TEST(momentarily)/NORM/RSVR/INT WING/EXT WING/EXT CTR, (0.1, 0, 0.5)
	[556]  = "%.1f",   --PTR-FUELCP-TMB-ENGFEED-556, ENGINE FEED Knob, ENGINE FEED Knob, ,  OFF/NORM/AFT/FWD, (-0.1, 0, 0.3)
	[158]  = "%.1f",   --PTR-CDCP-TMB-FMODE-158, FUEL QTY SEL Knob, FUEL QTY SEL Knob, ,  TEST(momentarily)/NORM/RSVR/INT WING/EXT WING/EXT CTR, (-0.1, 0, 0.5)
	-- GEAR_INTERFACE(7)
	[362]  = "%1d",   --PTR-LGCP-ARM-LG-362, LG Handle, LG Handle, ,  UP/DN, (-1, 0, 1)
	[356]  = "%1d",   --PTR-LGCP-TMB-BRK-356, BRAKES Channel Switch, BRAKES Channel Switch, ,  CHAN 1/CHAN 2, (-1, 0, 1)
	[354]  = "%1d",   --PTR-LGCP-TMB-HOOK-354, HOOK Switch, HOOK Switch, ,  UP/DN, (-1, 0, 1)
	[362]  = "%1d",   --PTR-LGCP-ARM-LG-362, LG Handle, LG Handle, ,  UP/DN, (1, 0, 1)
	[361]  = "%1d",   --PTR-LGCP-BTN-DNLOCK-361, DN LOCK REL Button - Push to reset, DN LOCK REL Button - Push to reset, , , (1, 0, 1)
	[357]  = "%1d",   --PTR-LGCP-TMB-PRKNG-357, ANTI-SKID Switch, ANTI-SKID Switch, ,  PARKING BRAKE/ANTI-SKID/OFF, (1, 0, 1)
	[357]  = "%1d",   --PTR-LGCP-TMB-PRKNG-357, ANTI-SKID Switch, ANTI-SKID Switch, ,  PARKING BRAKE/ANTI-SKID/OFF, (1, -1, 0)
	[356]  = "%1d",   --PTR-LGCP-TMB-BRK-356, BRAKES Channel Switch, BRAKES Channel Switch, ,  CHAN 1/CHAN 2, (1, 0, 1)
	[354]  = "%1d",   --PTR-LGCP-TMB-HOOK-354, HOOK Switch, HOOK Switch, ,  UP/DN, (1, 0, 1)
	[359]  = "%1d",   --PTR-LGCP-BTN-HORN-359, HORN SILENCER Button - Push to reset, HORN SILENCER Button - Push to reset, , , (1, 0, 1)
	-- GPS(59)
	[720]  = "%1d",   --PTR-AVIPWR-TMB-GPS-720, GPS Switch, GPS Switch, ,  GPS/OFF, (-1, 0, 1)
	[720]  = "%1d",   --PTR-AVIPWR-TMB-GPS-720, GPS Switch, GPS Switch, ,  GPS/OFF, (1, 0, 1)
	-- HMCS(30)
	[392]  = "%.1f",   --PTR-HMDP-LVR-SMBINT-392, HMCS SYMBOLOGY INT Knob, HMCS SYMBOLOGY INT Knob, , , (0,1)
	-- IDM(60)
	[721]  = "%1d",   --PTR-AVIPWR-TMB-DL-721, DL Switch, DL Switch, ,  DL/OFF, (-1, 0, 1)
	[721]  = "%1d",   --PTR-AVIPWR-TMB-DL-721, DL Switch, DL Switch, ,  DL/OFF, (1, 0, 1)
	-- IFF_CONTROL_PANEL(35)
	[542]  = "%1d",   --PTR-AUXCOM-TMB-CNI-542, C & I Knob, C & I Knob, ,  UFC/BACKUP, (-1, 0, 1)
	[541]  = "%1d",   --PTR-AUXCOM-TMB-M4-541, IFF M-4 CODE Switch, IFF M-4 CODE Switch, ,  HOLD/ A/B /ZERO, (-1, -1, 1)
	[543]  = "%1d",   --PTR-AUXCOM-TMB-REPLY-543, IFF MODE 4 REPLY Switch, IFF MODE 4 REPLY Switch, ,  OUT/A/B, (-1, -1, 1)
	[544]  = "%1d",   --PTR-AUXCOM-TMB-MONITOR-544, IFF MODE 4 MONITOR Switch, IFF MODE 4 MONITOR Switch, ,  OUT/AUDIO, (-1, 0, 1)
	[553]  = "%1d",   --PTR-AUXCOM-TMB-TACAN-553, IFF ENABLE Switch, IFF ENABLE Switch, ,  M1/M3 /OFF/ M3/MS, (-1, -1, 1)
	[545]  = "%1d",   --PTR-AUXCOM-TMB-CHNL1-545, IFF MODE 1 Selector Lever, IFF MODE 1 Selector Lever, ,  DIGIT 1, (-1, -1, 0)
	[547]  = "%1d",   --PTR-AUXCOM-TMB-CHNL2-547, IFF MODE 1 Selector Lever, IFF MODE 1 Selector Lever, ,  DIGIT 2, (-1, -1, 0)
	[549]  = "%1d",   --PTR-AUXCOM-TMB-CHNL3-549, IFF MODE 3 Selector Lever, IFF MODE 3 Selector Lever, ,  DIGIT 1, (-1, -1, 0)
	[551]  = "%1d",   --PTR-AUXCOM-TMB-CHNL4-551, IFF MODE 3 Selector Lever, IFF MODE 3 Selector Lever, ,  DIGIT 2, (-1, -1, 0)
	[542]  = "%1d",   --PTR-AUXCOM-TMB-CNI-542, C & I Knob, C & I Knob, ,  UFC/BACKUP, (1, 0, 1)
	[541]  = "%1d",   --PTR-AUXCOM-TMB-M4-541, IFF M-4 CODE Switch, IFF M-4 CODE Switch, ,  HOLD/ A/B /ZERO, (1, -1, 1)
	[543]  = "%1d",   --PTR-AUXCOM-TMB-REPLY-543, IFF MODE 4 REPLY Switch, IFF MODE 4 REPLY Switch, ,  OUT/A/B, (1, -1, 1)
	[544]  = "%1d",   --PTR-AUXCOM-TMB-MONITOR-544, IFF MODE 4 MONITOR Switch, IFF MODE 4 MONITOR Switch, ,  OUT/AUDIO, (1, 0, 1)
	[553]  = "%1d",   --PTR-AUXCOM-TMB-TACAN-553, IFF ENABLE Switch, IFF ENABLE Switch, ,  M1/M3 /OFF/ M3/MS, (1, -1, 1)
	[545]  = "%1d",   --PTR-AUXCOM-TMB-CHNL1-545, IFF MODE 1 Selector Lever, IFF MODE 1 Selector Lever, ,  DIGIT 1, (1, 0, 1)
	[547]  = "%1d",   --PTR-AUXCOM-TMB-CHNL2-547, IFF MODE 1 Selector Lever, IFF MODE 1 Selector Lever, ,  DIGIT 2, (1, 0, 1)
	[549]  = "%1d",   --PTR-AUXCOM-TMB-CHNL3-549, IFF MODE 3 Selector Lever, IFF MODE 3 Selector Lever, ,  DIGIT 1, (1, 0, 1)
	[551]  = "%1d",   --PTR-AUXCOM-TMB-CHNL4-551, IFF MODE 3 Selector Lever, IFF MODE 3 Selector Lever, ,  DIGIT 2, (1, 0, 1)
	[540]  = "%.1f",   --PTR-AUXCOM-LVR-MODE-540, IFF MASTER Knob, IFF MASTER Knob, ,  OFF/STBY/LOW/NORM/EMER, (0.1, 0, 0.4)
	[540]  = "%.1f",   --PTR-AUXCOM-LVR-MODE-540, IFF MASTER Knob, IFF MASTER Knob, ,  OFF/STBY/LOW/NORM/EMER, (-0.1, 0, 0.4)
	-- INS(14)
	[719]  = "%.1f",   --PTR-AVIPWR-LVR-INS-719, INS Knob, INS Knob, ,  OFF/STOR HDG/NORM/NAV/CAL/INFLT ALIGN/ATT, (0.1, 0, 0.6)
	[719]  = "%.1f",   --PTR-AVIPWR-LVR-INS-719, INS Knob, INS Knob, ,  OFF/STOR HDG/NORM/NAV/CAL/INFLT ALIGN/ATT, (-0.1, 0, 0.6)
	-- INTERCOM(39)
	[443]  = "%1d",   --PTR-AUDIO2-TMB-MODE-443, HOT MIC CIPHER Switch, HOT MIC CIPHER Switch, ,  HOT MIC / OFF / CIPHER, (-1, -1, 1)
	[711]  = "%1d",   --PTR-ANTICE-TMB-IFF-711, IFF ANT SEL Switch, IFF ANT SEL Switch, ,  LOWER/NORM/UPPER, (-1, -1, 1)
	[712]  = "%1d",   --PTR-ANTICE-TMB-UHF-712, UHF ANT SEL Switch, UHF ANT SEL Switch, ,  LOWER/NORM/UPPER, (-1, -1, 1)
	[696]  = "%1d",   --PTR-ZROIZE-TMB-VOICE-696, Voice Message Inhibit Switch, Voice Message Inhibit Switch, ,  VOICE MESSAGE/INHIBIT, (-1, 0, 1)
	[701]  = "%1d",   --PTR-NUCLR-TMB-PLAIN-701, PLAIN Cipher Switch, PLAIN Cipher Switch, ,  CRAD 1/PLAIN/CRAD 2, (-1, -1, 1)
	[694]  = "%1d",   --PTR-ZROIZE-CVR-ZERO-694, ZEROIZE Switch Cover, ZEROIZE Switch Cover, ,  OPEN/CLOSE, (-1, 0, 1)
	[695]  = "%1d",   --PTR-ZROIZE-TMB-ZERO-695, ZEROIZE Switch, ZEROIZE Switch, ,  OFP/OFF/DATA, (-1, -1, 1)
	[430]  = "%1d",   --PTR-AUDIO1-LVR-COMM1-430, COMM 1 Power Knob, COMM 1 Power Knob, , , (0, 0, 1)
	[431]  = "%1d",   --PTR-AUDIO1-LVR-COMM2-431, COMM 2 Power Knob, COMM 2 Power Knob, , , (0, 0, 1)
	[432]  = "%1d",   --PTR-AUDIO1-LVR-SV-432, SECURE VOICE Knob, SECURE VOICE Knob, , , (0, 0, 1)
	[433]  = "%1d",   --PTR-AUDIO1-LVR-MSL-433, MSL Tone Knob, MSL Tone Knob, , , (0, 0, 1)
	[436]  = "%1d",   --PTR-AUDIO1-LVR-TF-436, TF Tone Knob, TF Tone Knob, , , (0, 0, 1)
	[437]  = "%1d",   --PTR-AUDIO1-LVR-THREAT-437, THREAT Tone Knob, THREAT Tone Knob, , , (0, 0, 1)
	[442]  = "%1d",   --PTR-AUDIO2-LVR-ILS-442, ILS Power Knob, ILS Power Knob, , , (0, 0, 1)
	[441]  = "%1d",   --PTR-AUDIO2-LVR-TACAN-441, TACAN Knob, TACAN Knob, , , (0, 0, 1)
	[440]  = "%1d",   --PTR-AUDIO2-LVR-INTERCOM-440, INTERCOM Knob, INTERCOM Knob, , , (0, 0, 1)
	[443]  = "%1d",   --PTR-AUDIO2-TMB-MODE-443, HOT MIC CIPHER Switch, HOT MIC CIPHER Switch, ,  HOT MIC / OFF / CIPHER, (1, -1, 1)
	[711]  = "%1d",   --PTR-ANTICE-TMB-IFF-711, IFF ANT SEL Switch, IFF ANT SEL Switch, ,  LOWER/NORM/UPPER, (1, -1, 1)
	[712]  = "%1d",   --PTR-ANTICE-TMB-UHF-712, UHF ANT SEL Switch, UHF ANT SEL Switch, ,  LOWER/NORM/UPPER, (1, -1, 1)
	[696]  = "%1d",   --PTR-ZROIZE-TMB-VOICE-696, Voice Message Inhibit Switch, Voice Message Inhibit Switch, ,  VOICE MESSAGE/INHIBIT, (1, 0, 1)
	[701]  = "%1d",   --PTR-NUCLR-TMB-PLAIN-701, PLAIN Cipher Switch, PLAIN Cipher Switch, ,  CRAD 1/PLAIN/CRAD 2, (1, -1, 1)
	[694]  = "%1d",   --PTR-ZROIZE-CVR-ZERO-694, ZEROIZE Switch Cover, ZEROIZE Switch Cover, ,  OPEN/CLOSE, (1, 0, 1)
	[695]  = "%1d",   --PTR-ZROIZE-TMB-ZERO-695, ZEROIZE Switch, ZEROIZE Switch, ,  OFP/OFF/DATA, (1, -1, 1)
	[434]  = "%.1f",   --PTR-AUDIO1-TMB-COMM1-434, COMM 1 (UHF) Mode Knob, COMM 1 (UHF) Mode Knob, , , (0.5, 0, 1)
	[435]  = "%.1f",   --PTR-AUDIO1-TMB-COMM2-435, COMM 2 (VHF) Mode Knob, COMM 2 (VHF) Mode Knob, , , (0.5, 0, 1)
	[434]  = "%.1f",   --PTR-AUDIO1-TMB-COMM1-434, COMM 1 (UHF) Mode Knob, COMM 1 (UHF) Mode Knob, , , (-0.5, 0, 1)
	[435]  = "%.1f",   --PTR-AUDIO1-TMB-COMM2-435, COMM 2 (VHF) Mode Knob, COMM 2 (VHF) Mode Knob, , , (-0.5, 0, 1)
	-- KY58(42)
	[708]  = "%1d",   --PTR-KY58-LVR-VOL-708, KY-58 VOLUME Knob, KY-58 VOLUME Knob, , , (0, 0, 1)
	[705]  = "%.1f",   --PTR-KY58-LVR-MODE1-705, KY-58 MODE Knob, KY-58 MODE Knob, ,  P/C/LD/RV, (0.1, 0, 0.3)
	[706]  = "%.1f",   --PTR-KY58-LVR-MODE2-706, KY-58 FILL Knob, KY-58 FILL Knob, ,  Z 1-5/1/2/3/4/5/6/Z ALL, (0.1, 0, 0.7)
	[705]  = "%.1f",   --PTR-KY58-LVR-MODE1-705, KY-58 MODE Knob, KY-58 MODE Knob, ,  P/C/LD/RV, (-0.1, 0, 0.3)
	[706]  = "%.1f",   --PTR-KY58-LVR-MODE2-706, KY-58 FILL Knob, KY-58 FILL Knob, ,  Z 1-5/1/2/3/4/5/6/Z ALL, (-0.1, 0, 0.7)
	[707]  = "%.1f",   --PTR-KY58-LVR-MODE3-707, KY-58 Power Knob, KY-58 Power Knob, ,  OFF/ON/TD, (0.5, 0, 1)
	[707]  = "%.1f",   --PTR-KY58-LVR-MODE3-707, KY-58 Power Knob, KY-58 Power Knob, ,  OFF/ON/TD, (-0.5, 0, 1)
	[722]  = "%1d",   --PTR-AVIPWR-TMB-MAP-722, MAP Switch, MAP Switch, ,  MAP/OFF, (-1, 0, 1)
	[722]  = "%1d",   --PTR-AVIPWR-TMB-MAP-722, MAP Switch, MAP Switch, ,  MAP/OFF, (1, 0, 1)
	-- MFD_LEFT(24)
	[320]  = "%1d",   --PTR-LMFCD-RS-GAIN-DN-320, Left MFD GAIN Rocker Switch, Left MFD GAIN Rocker Switch, ,  Down/Decrease, (-1, -1, 0)
	[321]  = "%1d",   --PTR-LMFCD-RS-SYM-DN-321, Left MFD SYM Rocker Switch, Left MFD SYM Rocker Switch, ,  Down/Decrease, (-1, -1, 0)
	[322]  = "%1d",   --PTR-LMFCD-RS-CON-DN-322, Left MFD CON Rocker Switch, Left MFD CON Rocker Switch, ,  Down/Decrease, (-1, -1, 0)
	[323]  = "%1d",   --PTR-LMFCD-RS-BRT-DN-323, Left MFD BRT Rocker Switch, Left MFD BRT Rocker Switch, ,  Down/Decrease, (-1, -1, 0)
	[300]  = "%1d",   --PTR-LMFCD-BTN-OSB1-300, Left MFD OSB 1, Left MFD OSB 1, , , (1, 0, 1)
	[301]  = "%1d",   --PTR-LMFCD-BTN-OSB2-301, Left MFD OSB 2, Left MFD OSB 2, , , (1, 0, 1)
	[302]  = "%1d",   --PTR-LMFCD-BTN-OSB3-302, Left MFD OSB 3, Left MFD OSB 3, , , (1, 0, 1)
	[303]  = "%1d",   --PTR-LMFCD-BTN-OSB4-303, Left MFD OSB 4, Left MFD OSB 4, , , (1, 0, 1)
	[304]  = "%1d",   --PTR-LMFCD-BTN-OSB5-304, Left MFD OSB 5, Left MFD OSB 5, , , (1, 0, 1)
	[305]  = "%1d",   --PTR-LMFCD-BTN-OSB6-305, Left MFD OSB 6, Left MFD OSB 6, , , (1, 0, 1)
	[306]  = "%1d",   --PTR-LMFCD-BTN-OSB7-306, Left MFD OSB 7, Left MFD OSB 7, , , (1, 0, 1)
	[307]  = "%1d",   --PTR-LMFCD-BTN-OSB8-307, Left MFD OSB 8, Left MFD OSB 8, , , (1, 0, 1)
	[308]  = "%1d",   --PTR-LMFCD-BTN-OSB9-308, Left MFD OSB 9, Left MFD OSB 9, , , (1, 0, 1)
	[309]  = "%1d",   --PTR-LMFCD-BTN-OSB10-309, Left MFD OSB 10, Left MFD OSB 10, , , (1, 0, 1)
	[310]  = "%1d",   --PTR-LMFCD-BTN-OSB11-310, Left MFD OSB 11, Left MFD OSB 11, , , (1, 0, 1)
	[311]  = "%1d",   --PTR-LMFCD-BTN-OSB12-311, Left MFD OSB 12, Left MFD OSB 12, , , (1, 0, 1)
	[312]  = "%1d",   --PTR-LMFCD-BTN-OSB13-312, Left MFD OSB 13, Left MFD OSB 13, , , (1, 0, 1)
	[313]  = "%1d",   --PTR-LMFCD-BTN-OSB14-313, Left MFD OSB 14, Left MFD OSB 14, , , (1, 0, 1)
	[314]  = "%1d",   --PTR-LMFCD-BTN-OSB15-314, Left MFD OSB 15, Left MFD OSB 15, , , (1, 0, 1)
	[315]  = "%1d",   --PTR-LMFCD-BTN-OSB16-315, Left MFD OSB 16, Left MFD OSB 16, , , (1, 0, 1)
	[316]  = "%1d",   --PTR-LMFCD-BTN-OSB17-316, Left MFD OSB 17, Left MFD OSB 17, , , (1, 0, 1)
	[317]  = "%1d",   --PTR-LMFCD-BTN-OSB18-317, Left MFD OSB 18, Left MFD OSB 18, , , (1, 0, 1)
	[318]  = "%1d",   --PTR-LMFCD-BTN-OSB19-318, Left MFD OSB 19, Left MFD OSB 19, , , (1, 0, 1)
	[319]  = "%1d",   --PTR-LMFCD-BTN-OSB20-319, Left MFD OSB 20, Left MFD OSB 20, , , (1, 0, 1)
	[320]  = "%1d",   --PTR-LMFCD-RS-GAIN-UP-320, Left MFD GAIN Rocker Switch, Left MFD GAIN Rocker Switch, ,  Up/Increase, (1, 0, 1)
	[321]  = "%1d",   --PTR-LMFCD-RS-SYM-UP-321, Left MFD SYM Rocker Switch, Left MFD SYM Rocker Switch, ,  Up/Increase, (1, 0, 1)
	[322]  = "%1d",   --PTR-LMFCD-RS-CON-UP-322, Left MFD CON Rocker Switch, Left MFD CON Rocker Switch, ,  Up/Increase, (1, 0, 1)
	[323]  = "%1d",   --PTR-LMFCD-RS-BRT-UP-323, Left MFD BRT Rocker Switch, Left MFD BRT Rocker Switch, ,  Up/Increase, (1, 0, 1)
	-- MFD_RIGHT(25)
	[346]  = "%1d",   --PTR-RMFCD-RS-GAIN-DN-346, Left MFD GAIN Rocker Switch, Left MFD GAIN Rocker Switch, ,  Down/Decrease, (-1, -1, 0)
	[347]  = "%1d",   --PTR-RMFCD-RS-SYM-DN-347, Left MFD SYM Rocker Switch, Left MFD SYM Rocker Switch, ,  Down/Decrease, (-1, -1, 0)
	[348]  = "%1d",   --PTR-RMFCD-RS-CON-DN-348, Left MFD CON Rocker Switch, Left MFD CON Rocker Switch, ,  Down/Decrease, (-1, -1, 0)
	[349]  = "%1d",   --PTR-RMFCD-RS-BRT-DN-349, Left MFD BRT Rocker Switch, Left MFD BRT Rocker Switch, ,  Down/Decrease, (-1, -1, 0)
	[326]  = "%1d",   --PTR-RMFCD-BTN-OSB1-326, Right MFD OSB 1, Right MFD OSB 1, , , (1, 0, 1)
	[327]  = "%1d",   --PTR-RMFCD-BTN-OSB2-327, Right MFD OSB 2, Right MFD OSB 2, , , (1, 0, 1)
	[328]  = "%1d",   --PTR-RMFCD-BTN-OSB3-328, Right MFD OSB 3, Right MFD OSB 3, , , (1, 0, 1)
	[329]  = "%1d",   --PTR-RMFCD-BTN-OSB4-329, Right MFD OSB 4, Right MFD OSB 4, , , (1, 0, 1)
	[330]  = "%1d",   --PTR-RMFCD-BTN-OSB5-330, Right MFD OSB 5, Right MFD OSB 5, , , (1, 0, 1)
	[331]  = "%1d",   --PTR-RMFCD-BTN-OSB6-331, Right MFD OSB 6, Right MFD OSB 6, , , (1, 0, 1)
	[332]  = "%1d",   --PTR-RMFCD-BTN-OSB7-332, Right MFD OSB 7, Right MFD OSB 7, , , (1, 0, 1)
	[333]  = "%1d",   --PTR-RMFCD-BTN-OSB8-333, Right MFD OSB 8, Right MFD OSB 8, , , (1, 0, 1)
	[334]  = "%1d",   --PTR-RMFCD-BTN-OSB9-334, Right MFD OSB 9, Right MFD OSB 9, , , (1, 0, 1)
	[335]  = "%1d",   --PTR-RMFCD-BTN-OSB10-335, Right MFD OSB 10, Right MFD OSB 10, , , (1, 0, 1)
	[336]  = "%1d",   --PTR-RMFCD-BTN-OSB11-336, Right MFD OSB 11, Right MFD OSB 11, , , (1, 0, 1)
	[337]  = "%1d",   --PTR-RMFCD-BTN-OSB12-337, Right MFD OSB 12, Right MFD OSB 12, , , (1, 0, 1)
	[338]  = "%1d",   --PTR-RMFCD-BTN-OSB13-338, Right MFD OSB 13, Right MFD OSB 13, , , (1, 0, 1)
	[339]  = "%1d",   --PTR-RMFCD-BTN-OSB14-339, Right MFD OSB 14, Right MFD OSB 14, , , (1, 0, 1)
	[340]  = "%1d",   --PTR-RMFCD-BTN-OSB15-340, Right MFD OSB 15, Right MFD OSB 15, , , (1, 0, 1)
	[341]  = "%1d",   --PTR-RMFCD-BTN-OSB16-341, Right MFD OSB 16, Right MFD OSB 16, , , (1, 0, 1)
	[342]  = "%1d",   --PTR-RMFCD-BTN-OSB17-342, Right MFD OSB 17, Right MFD OSB 17, , , (1, 0, 1)
	[343]  = "%1d",   --PTR-RMFCD-BTN-OSB18-343, Right MFD OSB 18, Right MFD OSB 18, , , (1, 0, 1)
	[344]  = "%1d",   --PTR-RMFCD-BTN-OSB19-344, Right MFD OSB 19, Right MFD OSB 19, , , (1, 0, 1)
	[345]  = "%1d",   --PTR-RMFCD-BTN-OSB20-345, Right MFD OSB 20, Right MFD OSB 20, , , (1, 0, 1)
	[346]  = "%1d",   --PTR-RMFCD-RS-GAIN-UP-346, Left MFD GAIN Rocker Switch, Left MFD GAIN Rocker Switch, ,  Up/Increase, (1, 0, 1)
	[347]  = "%1d",   --PTR-RMFCD-RS-SYM-UP-347, Left MFD SYM Rocker Switch, Left MFD SYM Rocker Switch, ,  Up/Increase, (1, 0, 1)
	[348]  = "%1d",   --PTR-RMFCD-RS-CON-UP-348, Left MFD CON Rocker Switch, Left MFD CON Rocker Switch, ,  Up/Increase, (1, 0, 1)
	[349]  = "%1d",   --PTR-RMFCD-RS-BRT-UP-349, Left MFD BRT Rocker Switch, Left MFD BRT Rocker Switch, ,  Up/Increase, (1, 0, 1)
	-- MIDS(41)
	[723]  = "%.1f",   --PTR-AVIPWR-LVR-MIDS-723, MIDS LVT Knob, MIDS LVT Knob, ,  ZERO/OFF/ON, (0.1, 0, 0.2)
	[723]  = "%.1f",   --PTR-AVIPWR-LVR-MIDS-723, MIDS LVT Knob, MIDS LVT Knob, ,  ZERO/OFF/ON, (-0.1, 0, 0.2)
	[715]  = "%1d",   --PTR-AVIPWR-TMB-MMC-715, MMC Switch, MMC Switch, ,  MMC/OFF, (-1, 0, 1)
	[105]  = "%1d",   --PTR-CLCP-TMB-MASTER-105, MASTER ARM Switch, MASTER ARM Switch, ,  MASTER ARM/OFF/SIMULATE, (-1, -1, 1)
	[355]  = "%1d",   --PTR-LGCP-TMB-GNDJETT-355, GND JETT ENABLE Switch, GND JETT ENABLE Switch, ,  ENABLE/OFF, (-1, 0, 1)
	[675]  = "%1d",   --PTR-RHUD-TMB-WVAH-675, HUD Scales Switch, HUD Scales Switch, ,  VV/VAH / VAH / OFF, (-1, -1, 1)
	[676]  = "%1d",   --PTR-RHUD-TMB-ATT-676, HUD Flightpath Marker Switch, HUD Flightpath Marker Switch, ,  ATT/FPM / FPM / OFF, (-1, -1, 1)
	[677]  = "%1d",   --PTR-RHUD-TMB-DED-677, HUD DED/PFLD Data Switch, HUD DED/PFLD Data Switch, ,  DED / PFL / OFF, (-1, -1, 1)
	[678]  = "%1d",   --PTR-RHUD-TMB-DEPR-678, HUD Depressible Reticle Switch, HUD Depressible Reticle Switch, ,  STBY / PRI / OFF, (-1, -1, 1)
	[679]  = "%1d",   --PTR-RHUD-TMB-CAS-679, HUD Velocity Switch, HUD Velocity Switch, ,  CAS / TAS / GND SPD, (-1, -1, 1)
	[680]  = "%1d",   --PTR-RHUD-TMB-ALT-680, HUD Altitude Switch, HUD Altitude Switch, ,  RADAR / BARO / AUTO, (-1, -1, 1)
	[681]  = "%1d",   --PTR-RHUD-TMB-DAYNGT-681, HUD Brightness Control Switch, HUD Brightness Control Switch, ,  DAY / AUTO BRT / NIGHT, (-1, -1, 1)
	[682]  = "%1d",   --PTR-RHUD-TMB-TEST-682, HUD TEST Switch, HUD TEST Switch, ,  STEP / ON / OFF, (-1, -1, 1)
	[717]  = "%1d",   --PTR-AVIPWR-TMB-MFD-717, MFD Switch, MFD Switch, ,  MFD/OFF, (-1, 0, 1)
	[715]  = "%1d",   --PTR-AVIPWR-TMB-MMC-715, MMC Switch, MMC Switch, ,  MMC/OFF, (1, 0, 1)
	[105]  = "%1d",   --PTR-CLCP-TMB-MASTER-105, MASTER ARM Switch, MASTER ARM Switch, ,  MASTER ARM/OFF/SIMULATE, (1, -1, 1)
	[353]  = "%1d",   --PTR-LGCP-BTN-ESJETT-353, EMER STORES JETTISON Button - Push to jettison, EMER STORES JETTISON Button - Push to jettison, , , (1, 0, 1)
	[355]  = "%1d",   --PTR-LGCP-TMB-GNDJETT-355, GND JETT ENABLE Switch, GND JETT ENABLE Switch, ,  ENABLE/OFF, (1, 0, 1)
	[104]  = "%1d",   --PTR-CLCP-TMB-ALT-104, ALT REL Button - Push to release, ALT REL Button - Push to release, , , (1, 0, 1)
	[675]  = "%1d",   --PTR-RHUD-TMB-WVAH-675, HUD Scales Switch, HUD Scales Switch, ,  VV/VAH / VAH / OFF, (1, -1, 1)
	[676]  = "%1d",   --PTR-RHUD-TMB-ATT-676, HUD Flightpath Marker Switch, HUD Flightpath Marker Switch, ,  ATT/FPM / FPM / OFF, (1, -1, 1)
	[677]  = "%1d",   --PTR-RHUD-TMB-DED-677, HUD DED/PFLD Data Switch, HUD DED/PFLD Data Switch, ,  DED / PFL / OFF, (1, -1, 1)
	[678]  = "%1d",   --PTR-RHUD-TMB-DEPR-678, HUD Depressible Reticle Switch, HUD Depressible Reticle Switch, ,  STBY / PRI / OFF, (1, -1, 1)
	[679]  = "%1d",   --PTR-RHUD-TMB-CAS-679, HUD Velocity Switch, HUD Velocity Switch, ,  CAS / TAS / GND SPD, (1, -1, 1)
	[680]  = "%1d",   --PTR-RHUD-TMB-ALT-680, HUD Altitude Switch, HUD Altitude Switch, ,  RADAR / BARO / AUTO, (1, -1, 1)
	[681]  = "%1d",   --PTR-RHUD-TMB-DAYNGT-681, HUD Brightness Control Switch, HUD Brightness Control Switch, ,  DAY / AUTO BRT / NIGHT, (1, -1, 1)
	[682]  = "%1d",   --PTR-RHUD-TMB-TEST-682, HUD TEST Switch, HUD TEST Switch, ,  STEP / ON / OFF, (1, -1, 1)
	[717]  = "%1d",   --PTR-AVIPWR-TMB-MFD-717, MFD Switch, MFD Switch, ,  MFD/OFF, (1, 0, 1)
	-- OXYGEN_INTERFACE(8)
	[727]  = "%1d",   --PTR-OXYCP-LVR-DUL-727, Diluter Lever, Diluter Lever, ,  100 percent/NORM, (-1, 0, 1)
	[726]  = "%1d",   --PTR-OXYCP-LVR-EMRG-726, Emergency Lever, Emergency Lever, ,  EMERGENCY/NORMAL/TEST MASK(momentarily), (-1, 0, 1)
	[726]  = "%1d",   --PTR-OXYCP-LVR-EMRG-726, Emergency Lever, Emergency Lever, ,  EMERGENCY/NORMAL/TEST MASK(momentarily), (-1, -1, 0)
	[727]  = "%1d",   --PTR-OXYCP-LVR-DUL-727, Diluter Lever, Diluter Lever, ,  100 percent/NORM, (1, 0, 1)
	[576]  = "%1d",   --PTR-TESTCP-TMB-OXY-576, OBOGS BIT Switch, OBOGS BIT Switch, ,  BIT/OFF, (1, 0, 1)
	[576]  = "%1d",   --PTR-TESTCP-TMB-OXY-576, OBOGS BIT Switch, OBOGS BIT Switch, ,  BIT/OFF, (1, 0, 1)
	[728]  = "%.1f",   --PTR-OXYCP-LVR-SUPP-728, Supply Lever, Supply Lever, ,  PBG/ON/OFF, (0.5, 0, 1)
	[728]  = "%.1f",   --PTR-OXYCP-LVR-SUPP-728, Supply Lever, Supply Lever, ,  PBG/ON/OFF, (-0.5, 0, 1)
	-- RALT(15)
	[673]  = "%1d",   --PTR-SNSR-TMB-RDR-673, RDR ALT Switch, RDR ALT Switch, ,  RDR ALT/STBY/OFF, (-1, -1, 1)
	[673]  = "%1d",   --PTR-SNSR-TMB-RDR-673, RDR ALT Switch, RDR ALT Switch, ,  RDR ALT/STBY/OFF, (1, -1, 1)
	
	[401]  = "%1d",   --PTR-TWAP-BTN-PWR-401, RWR Indicator Control POWER Button, RWR Indicator Control POWER Button, , , (-1, 0, 1)
	[140]  = "%.1f",   --PTR-CMSC-LVR-BRT-140, RWR Intensity Knob - Rotate to adjust brightness, RWR Intensity Knob - Rotate to adjust brightness, , , (0, 0, 0.8)
	[404]  = "%1d",   --PTR-TWAP-LVR-DIM-404, RWR Indicator Control DIM Knob - Rotate to adjust brightness, RWR Indicator Control DIM Knob - Rotate to adjust brightness, , , (0, 0, 1)
	[141]  = "%1d",   --PTR-CMSC-BTN-HNDOFF-141, RWR Indicator Control HANDOFF Button, RWR Indicator Control HANDOFF Button, , , (1, 0, 1)
	[143]  = "%1d",   --PTR-CMSC-BTN-LNCH-143, RWR Indicator Control LAUNCH Button, RWR Indicator Control LAUNCH Button, , , (1, 0, 1)
	[145]  = "%1d",   --PTR-CMSC-BTN-MODE-145, RWR Indicator Control MODE Button, RWR Indicator Control MODE Button, , , (1, 0, 1)
	[147]  = "%1d",   --PTR-CMSC-BTN-OBJ-147, RWR Indicator Control UNKNOWN SHIP Button, RWR Indicator Control UNKNOWN SHIP Button, , , (1, 0, 1)
	[149]  = "%1d",   --PTR-CMSC-BTN-STEST-149, RWR Indicator Control SYS TEST Button, RWR Indicator Control SYS TEST Button, , , (1, 0, 1)
	[151]  = "%1d",   --PTR-CMSC-BTN-T-151, RWR Indicator Control T Button, RWR Indicator Control T Button, , , (1, 0, 1)
	[395]  = "%1d",   --PTR-TWAP-BTN-SRCH-395, RWR Indicator Control SEARCH Button, RWR Indicator Control SEARCH Button, , , (1, 0, 1)
	[397]  = "%1d",   --PTR-TWAP-BTN-ACTPWR-397, RWR Indicator Control ACT/PWR Button, RWR Indicator Control ACT/PWR Button, , , (1, 0, 1)
	[401]  = "%1d",   --PTR-TWAP-BTN-PWR-401, RWR Indicator Control POWER Button, RWR Indicator Control POWER Button, , , (1, 0, 1)
	[399]  = "%1d",   --PTR-TWAP-BTN-ALT-399, RWR Indicator Control ALTITUDE Button, RWR Indicator Control ALTITUDE Button, , , (1, 0, 1)
	-- SAI(47)
	[67]  = "%1d",   --PTR-SAI-LVR-CAGE-P-66, SAI Cage Knob, SAI Cage Knob, ,  (LMB) Pull to cage /(MW) Adjust aircraft reference symbol, (1, 0, 1)
	[66]  = "%.3f",   --PTR-SAI-LVR-CAGE-P-66, SAI Cage Knob, SAI Cage Knob, ,  (LMB) Pull to cage /(MW) Adjust aircraft reference symbol, (1, 0.375, 0.625)
	-- SMS(22)
	[716]  = "%1d",   --PTR-AVIPWR-TMB-STSTA-716, ST STA Switch, ST STA Switch, ,  ST STA/OFF, (-1, 0, 1)
	[670]  = "%1d",   --PTR-SNSR-TMB-LEFT-670, LEFT HDPT Switch, LEFT HDPT Switch, ,  ON/OFF, (-1, 0, 1)
	[671]  = "%1d",   --PTR-SNSR-TMB-RIGHT-671, RIGHT HDPT Switch, RIGHT HDPT Switch, ,  ON/OFF, (-1, 0, 1)
	[103]  = "%1d",   --PTR-CLCP-TMB-LASER-103, LASER ARM Switch, LASER ARM Switch, ,  ARM/OFF, (-1, 0, 1)
	[716]  = "%1d",   --PTR-AVIPWR-TMB-STSTA-716, ST STA Switch, ST STA Switch, ,  ST STA/OFF, (1, 0, 1)
	[670]  = "%1d",   --PTR-SNSR-TMB-LEFT-670, LEFT HDPT Switch, LEFT HDPT Switch, ,  ON/OFF, (1, 0, 1)
	[671]  = "%1d",   --PTR-SNSR-TMB-RIGHT-671, RIGHT HDPT Switch, RIGHT HDPT Switch, ,  ON/OFF, (1, 0, 1)
	[103]  = "%1d",   --PTR-CLCP-TMB-LASER-103, LASER ARM Switch, LASER ARM Switch, ,  ARM/OFF, (1, 0, 1)
	-- UFC(17)
	[718]  = "%1d",   --PTR-AVIPWR-TMB-UFC-718, UFC Switch, UFC Switch, ,  UFC/OFF, (-1, 0, 1)
	[188]  = "%1d",   --PTR-ICP-RS-FLIR-DN-188, ICP FLIR Increment/Decrement Switch, ICP FLIR Increment/Decrement Switch, ,  Down, (-1, -1, 0)
	[189]  = "%1d",   --PTR-ICP-TMB-GAIN-189, ICP FLIR GAIN/LEVEL Switch, ICP FLIR GAIN/LEVEL Switch, ,  GAIN/LVL/AUTO, (-1, -1, 1)
	[186]  = "%1d",   --PTR-ICP-TMB-DRIFT-186, ICP DRIFT CUTOUT/WARN RESET Switch, ICP DRIFT CUTOUT/WARN RESET Switch, ,  DRIFT C/O /NORM/WARN RESET, (-1, 0, 1)
	[186]  = "%1d",   --PTR-ICP-TMB-DRIFT-186, ICP DRIFT CUTOUT/WARN RESET Switch, ICP DRIFT CUTOUT/WARN RESET Switch, ,  DRIFT C/O /NORM/WARN RESET, (-1, -1, 0)
	[183]  = "%1d",   --PTR-ICP-RS-OFF-DN-183, ICP DED Increment/Decrement Switch, ICP DED Increment/Decrement Switch, ,  Down, (-1, -1, 0)
	[184]  = "%1d",   --PTR-ICP-TMB-RTN-184, ICP Data Control Switch, ICP Data Control Switch, ,  RTN, (-1, -1, 0)
	[184]  = "%1d",   --PTR-ICP-TMB-RTN-184, ICP Data Control Switch, ICP Data Control Switch, ,  RTN, (-1, -1, 0)
	[185]  = "%1d",   --PTR-ICP-TMB-RTNSEQ-DN-185, ICP Data Control Switch, ICP Data Control Switch, ,  DN, (-1, -1, 0)
	[185]  = "%1d",   --PTR-ICP-TMB-RTNSEQ-DN-185, ICP Data Control Switch, ICP Data Control Switch, ,  DN, (-1, -1, 0)
	[100]  = "%1d",   --PTR-CLCP-TMB-RF-100, RF Switch, RF Switch, ,  SILENT/QUIET/NORM, (-1, -1, 1)
	[192]  = "%1d",   --PTR-ICP-LVR-RET-192, ICP Reticle Depression Control Knob, ICP Reticle Depression Control Knob, , , (0, 0, 1)
	[193]  = "%1d",   --PTR-ICP-LVR-CONT-193, ICP Raster Contrast Knob, ICP Raster Contrast Knob, , , (0, 0, 1)
	[190]  = "%.1f",   --PTR-ICP-LVR-SYM-190, ICP HUD Symbology Intensity Knob, ICP HUD Symbology Intensity Knob, , , (0,1)
	[191]  = "%1d",   --PTR-ICP-LVR-BRT-191, ICP Raster Intensity Knob, ICP Raster Intensity Knob, , , (0, 0, 1)
	[718]  = "%1d",   --PTR-AVIPWR-TMB-UFC-718, UFC Switch, UFC Switch, ,  UFC/OFF, (1, 0, 1)
	[182]  = "%1d",   --PTR-ICP-BTN-NMB0-182, ICP Priority Function Button, ICP Priority Function Button, ,  0(M-SEL), (1, 0, 1)
	[171]  = "%1d",   --PTR-ICP-BTN-NMB1-171, ICP Priority Function Button, ICP Priority Function Button, ,  1(T-ILS), (1, 0, 1)
	[172]  = "%1d",   --PTR-ICP-BTN-NMB2-172, ICP Priority Function Button, ICP Priority Function Button, ,  2/N(ALOW), (1, 0, 1)
	[173]  = "%1d",   --PTR-ICP-BTN-NMB3-173, ICP Priority Function Button, ICP Priority Function Button, , 3, (1, 0, 1)
	[175]  = "%1d",   --PTR-ICP-BTN-NMB4-175, ICP Priority Function Button, ICP Priority Function Button, ,  4/W(STPT), (1, 0, 1)
	[176]  = "%1d",   --PTR-ICP-BTN-NMB5-176, ICP Priority Function Button, ICP Priority Function Button, ,  5(CRUS), (1, 0, 1)
	[177]  = "%1d",   --PTR-ICP-BTN-NMB6-177, ICP Priority Function Button, ICP Priority Function Button, ,  6/E(TIME), (1, 0, 1)
	[179]  = "%1d",   --PTR-ICP-BTN-NMB7-179, ICP Priority Function Button, ICP Priority Function Button, ,  7(MARK), (1, 0, 1)
	[180]  = "%1d",   --PTR-ICP-BTN-NMB8-180, ICP Priority Function Button, ICP Priority Function Button, ,  8/S(FIX), (1, 0, 1)
	[181]  = "%1d",   --PTR-ICP-BTN-NMB9-181, ICP Priority Function Button, ICP Priority Function Button, ,  9(A-CAL), (1, 0, 1)
	[165]  = "%1d",   --PTR-ICP-BTN-COM1-165, ICP COM Override Button, ICP COM Override Button, ,  COM1(UHF), (1, 0, 1)
	[166]  = "%1d",   --PTR-ICP-BTN-COM2-166, ICP COM Override Button, ICP COM Override Button, ,  COM2(VHF), (1, 0, 1)
	[167]  = "%1d",   --PTR-ICP-BTN-IFF-167, ICP IFF Override Button, ICP IFF Override Button, ,  IFF, (1, 0, 1)
	[168]  = "%1d",   --PTR-ICP-BTN-LIST-168, ICP LIST Override Button, ICP LIST Override Button, ,  LIST, (1, 0, 1)
	[178]  = "%1d",   --PTR-ICP-BTN-ENTR-178, ICP Enter Button, ICP Enter Button, ,  ENTR, (1, 0, 1)
	[174]  = "%1d",   --PTR-ICP-BTN-RCL-174, ICP Recall Button, ICP Recall Button, ,  RCL, (1, 0, 1)
	[169]  = "%1d",   --PTR-ICP-BTN-AA-169, ICP Master Mode Button, ICP Master Mode Button, ,  A-A, (1, 0, 1)
	[170]  = "%1d",   --PTR-ICP-BTN-AG-170, ICP Master Mode Button, ICP Master Mode Button, ,  A-G, (1, 0, 1)
	[187]  = "%1d",   --PTR-ICP-BTN-WX-187, ICP FLIR Polarity Button, ICP FLIR Polarity Button, ,  Wx, (1, 0, 1)
	[188]  = "%1d",   --PTR-ICP-RS-FLIR-UP-188, ICP FLIR Increment/Decrement Switch, ICP FLIR Increment/Decrement Switch, ,  Up, (1, 0, 1)
	[189]  = "%1d",   --PTR-ICP-TMB-GAIN-189, ICP FLIR GAIN/LEVEL Switch, ICP FLIR GAIN/LEVEL Switch, ,  GAIN/LVL/AUTO, (1, -1, 1)
	[183]  = "%1d",   --PTR-ICP-RS-OFF-UP-183, ICP DED Increment/Decrement Switch, ICP DED Increment/Decrement Switch, ,  Up, (1, 0, 1)
	[184]  = "%1d",   --PTR-ICP-TMB-SEQ-184, ICP Data Control Switch, ICP Data Control Switch, ,  SEQ, (1, 0, 1)
	[184]  = "%1d",   --PTR-ICP-TMB-SEQ-184, ICP Data Control Switch, ICP Data Control Switch, ,  SEQ, (1, 0, 1)
	[185]  = "%1d",   --PTR-ICP-TMB-RTNSEQ-UP-185, ICP Data Control Switch, ICP Data Control Switch, ,  UP, (1, 0, 1)
	[185]  = "%1d",   --PTR-ICP-TMB-RTNSEQ-UP-185, ICP Data Control Switch, ICP Data Control Switch, ,  UP, (1, 0, 1)
	[122]  = "%1d",   --PTR-CPBC-BTN-FACK-122, F-ACK Button, F-ACK Button, , , (1, 0, 1)
	[125]  = "%1d",   --PTR-CPBC-BTN-IFF-125, IFF IDENT Button, IFF IDENT Button, , , (1, 0, 1)
	[100]  = "%1d",   --PTR-CLCP-TMB-RF-100, RF Switch, RF Switch, ,  SILENT/QUIET/NORM, (1, -1, 1)
	-- UHF_CONTROL_PANEL(37)
	[419]  = "%1d",   --PTR-ANARC164-SQUELCH-419, UHF SQUELCH Switch, UHF SQUELCH Switch, , , (-1, 0, 1)
	[734]  = "%1d",   --PTR_ANARC164-CHNL-SELECTOR01-734, Access Door, Access Door, ,  OPEN/CLOSE, (-1, 0, 1)
	[420]  = "%1d",   --PTR-ANARC164-VOLUME-420, UHF VOL Knob, UHF VOL Knob, , , (0, 0, 1)
	[418]  = "%1d",   --PTR-ANARC164-T-TONE-418, UHF Tone Button, UHF Tone Button, , , (1, 0, 1)
	[419]  = "%1d",   --PTR-ANARC164-SQUELCH-419, UHF SQUELCH Switch, UHF SQUELCH Switch, , , (1, 0, 1)
	[421]  = "%1d",   --PTR-ANARC164-TEST-DISPLAY-421, UHF TEST DISPLAY Button, UHF TEST DISPLAY Button, , , (1, 0, 1)
	[422]  = "%1d",   --PTR-ANARC164-STATUS-422, UHF STATUS Button, UHF STATUS Button, , , (1, 0, 1)
	[734]  = "%1d",   --PTR_ANARC164-CHNL-SELECTOR01-734, Access Door, Access Door, ,  OPEN/CLOSE, (1, 0, 1)
	[410]  = "%.2f",   --PTR-ANARC164-CHNL-SELECTOR-410, UHF CHAN Knob, UHF CHAN Knob, , , (0.05, 0, 0.95)
	[410]  = "%.2f",   --PTR-ANARC164-CHNL-SELECTOR-410, UHF CHAN Knob, UHF CHAN Knob, , , (-0.05, 0, 0.95)
	[411]  = "%.1f",   --PTR-ANARC164-100MHZ-SEL-411, UHF Manual Frequency Knob 100 MHz, UHF Manual Frequency Knob 100 MHz, , , (0.1, 0.1, 0.3)
	[412]  = "%.1f",   --PTR-ANARC164-10MHZ-SEL-412, UHF Manual Frequency Knob 10 MHz, UHF Manual Frequency Knob 10 MHz, , , (0.1, 0, 0.9)
	[413]  = "%.1f",   --PTR-ANARC164-1MHZ-SEL-413, UHF Manual Frequency Knob 1 MHz, UHF Manual Frequency Knob 1 MHz, , , (0.1, 0, 0.9)
	[414]  = "%.1f",   --PTR-ANARC164-0.1MHZ-SEL-414, UHF Manual Frequency Knob 0.1 MHz, UHF Manual Frequency Knob 0.1 MHz, , , (0.1, 0, 0.9)
	[416]  = "%.1f",   --PTR-ANARC164-FREQMODE-416, UHF Mode Knob, UHF Mode Knob, , , (0.1, 0, 0.2)
	[417]  = "%.1f",   --PTR-ANARC164-FUNCTION-417, UHF Function Knob, UHF Function Knob, , , (0.1, 0, 0.3)
	[411]  = "%.1f",   --PTR-ANARC164-100MHZ-SEL-411, UHF Manual Frequency Knob 100 MHz, UHF Manual Frequency Knob 100 MHz, , , (-0.1, 0.1, 0.3)
	[412]  = "%.1f",   --PTR-ANARC164-10MHZ-SEL-412, UHF Manual Frequency Knob 10 MHz, UHF Manual Frequency Knob 10 MHz, , , (-0.1, 0, 0.9)
	[413]  = "%.1f",   --PTR-ANARC164-1MHZ-SEL-413, UHF Manual Frequency Knob 1 MHz, UHF Manual Frequency Knob 1 MHz, , , (-0.1, 0, 0.9)
	[414]  = "%.1f",   --PTR-ANARC164-0.1MHZ-SEL-414, UHF Manual Frequency Knob 0.1 MHz, UHF Manual Frequency Knob 0.1 MHz, , , (-0.1, 0, 0.9)
	[416]  = "%.1f",   --PTR-ANARC164-FREQMODE-416, UHF Mode Knob, UHF Mode Knob, , , (-0.1, 0, 0.2)
	[417]  = "%.1f",   --PTR-ANARC164-FUNCTION-417, UHF Function Knob, UHF Function Knob, , , (-0.1, 0, 0.3)
	[415]  = "%.2f",   --PTR-ANARC164-0.025MHZ-SEL-415, UHF Manual Frequency Knob 0.025 MHz, UHF Manual Frequency Knob 0.025 MHz, , , (0.25, 0, 0.75)
	[415]  = "%.2f",   --PTR-ANARC164-0.025MHZ-SEL-415, UHF Manual Frequency Knob 0.025 MHz, UHF Manual Frequency Knob 0.025 MHz, , , (-0.25, 0, 0.75)
 
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
	
	------------------
	-----F16 mike-----
	------------------
	--mike might be breaking all things called after it in this function. Darn.
	ExportScript.mike(mainPanelDevice)	
	
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
	
	ExportScript.EcmPanel(mainPanelDevice)
	ExportScript.FuelInfo(mainPanelDevice)	
	ExportScript.CountermeasureReadouts(mainPanelDevice)	
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
function ExportScript.mike(mainPanelDevice) -- F16 mike project
	-- ExportScript.Tools.SendData(44250, "Hello") -- Test
	-------------------
	-----F16 mike-----
	-------------------
	
	-- Aka (Streamdeck Elevation Navigation Pressure Altimeter Instrument) SENPAI
	-- Aka (STANDARD UNIT GRAPHICAL OVERLAY INTERPRETATION) SUGOI
	-- Aka (Local Elevation and Weather Dataconverter) LEWD
	-- Aka (Metric Imperial Navigation Automated System Aid Nonsense) MINA-SAN
	
	--[[
	Goal: Create a "universal" profile that displays the following for every module with
	minimal or no Stream Deck reconfiguration. Contains 4 tiles with three conversions each.
	- Pressure
		- inHg
		- Millibars
		- mmHg
	- Altitude (MSL)
		- feet
		- meters
		- kilometers
	- Altitude (AGL)
		- feet
		- meters
		- kilometers
	- Airspeed
		- Knots
		- kilometers per hr
		- Mach (airframe dependent)
		
		
	-- Export number format
	44224 = Pressure readouts
	44225 = Pressure readout color change
	44226 = Alt(msl) readouts
	44227 = Alt(msl) readout color change
	44228 = Alt(agl) readouts
	44229 = Alt(agl) readout color change
	44230 = airspeed readouts
	44231 = airspeed readout color change
	]]
	
	----------------------------
	-- Get F16 Pressure Info ---
	----------------------------
	-- Necessary info
	--	[56]  = "%.2f",   -- Barometric Setting Kollsman Window 1
	--	[57]  = "%.2f",   -- Barometric Setting Kollsman Window 2
	--	[58]  = "%.2f",   -- Barometric Setting Kollsman Window 3
	--	[59]  = "%.2f",   -- Barometric Setting Kollsman Window 4
	-- the above are 0 = 0 , 0.50 = 5, 1 = 0
	-- they are tumblers
	
	--[[
	range is 120 units
	magic formula is =(value*120)+670
	0 		= 680
	0.5000	= 
	1 		= 790
	]]
	-- TODO: There is a bug to where the inHg displays 29.48 --> 29.49 --> 29.510 --> 29.50 --> 29.51
	local KollsmanWindowReadout_value1 = string.format("%.f",mainPanelDevice:get_argument_value(56) * 10)
	local KollsmanWindowReadout_value2 = string.format("%.f",mainPanelDevice:get_argument_value(57) * 10)
	local KollsmanWindowReadout_value3 = string.format("%.f",mainPanelDevice:get_argument_value(58) * 10)
	local KollsmanWindowReadout_value4 = string.format("%.f",mainPanelDevice:get_argument_value(59) * 10)
	
	if KollsmanWindowReadout_value1 == "10" then
		KollsmanWindowReadout_value1 = "0"
	end
	if KollsmanWindowReadout_value2 == "10" then
		KollsmanWindowReadout_value2 = "0"
	end
	if KollsmanWindowReadout_value3 == "10" then
		KollsmanWindowReadout_value3 = "0"
	end
	if KollsmanWindowReadout_value4 == "10" then
		KollsmanWindowReadout_value4 = "0"
	end
	
	local KollsmanWindowReadout_total = string.format(KollsmanWindowReadout_value1 .. KollsmanWindowReadout_value2 .. "." .. KollsmanWindowReadout_value3 .. KollsmanWindowReadout_value4 )
	local pressure_f16c_inHg  = KollsmanWindowReadout_total
	
	--ExportScript.Tools.SendData(44260, pressure_f16c_inHg .. " inHg")
	
	-- convert to mmhg
	local pressure_f16c_mmHg = string.format("%.f", pressure_f16c_inHg * 25.4)
	--ExportScript.Tools.SendData(44261, pressure_f16c_mmHg .. " mmHg")
	
	-- Convert to millibar
	local pressure_f16c_mbar = string.format("%.f", pressure_f16c_inHg * 33.864)
	--ExportScript.Tools.SendData(44262, pressure_f16c_mbar .. " mbar")
	
	-- Combined
	ExportScript.Tools.SendData(44224, string.format("Pressure\n" .. 
													pressure_f16c_inHg .. " inHg" .. "\n" ..
													pressure_f16c_mmHg .. " mmHg" .. "\n" ..
													pressure_f16c_mbar .. " mbar"))
													
	----------------------------------
	-- Get F16 Altitude (MSL) Info ---
	----------------------------------
	-- Necessary info
	--[51]  = "%.3f",   -- Barometric Altitude Needle
	--[52]  = "%.3f",   -- Barometric Altitude Window 1
	--[53]  = "%.3f",   -- Barometric Altitude Window 2
	--[54]  = "%.3f",   -- Barometric Altitude Window 3
	-- the above are 0 = 0 , 0.50 = 5, 1 = 0
	-- they are tumblers
	
	local altitudeWindowReadout_value1 = string.format("%.f",mainPanelDevice:get_argument_value(52) * 10)
	local altitudeWindowReadout_value2 = string.format("%.f",mainPanelDevice:get_argument_value(53) * 10)
	local altitudeWindowReadout_value3 = string.format("%.f",mainPanelDevice:get_argument_value(54) * 10)
	local altitudeWindowReadout_needle = string.format("%.f",mainPanelDevice:get_argument_value(51) * 1000)
	
	--this fixes the extra "10" problem
	if altitudeWindowReadout_value1 == "10" then
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
	
	--ExportScript.Tools.SendData(44261, altitudeWindowReadout_value1 .. " ft")
	--ExportScript.Tools.SendData(44262, altitudeWindowReadout_value2 .. " ft")
	--ExportScript.Tools.SendData(44263, altitudeWindowReadout_value3 .. " ft")
	--ExportScript.Tools.SendData(44264, altitudeWindowReadout_needle .. " ft")
	
	--value 3 isnt needed bc it is taken over by the needle
	local altitudeWindowReadout_total = string.format(altitudeWindowReadout_value1 .. altitudeWindowReadout_value2 .. altitudeWindowReadout_needle)
	--remove leading zeros
	altitudeWindowReadout_total = altitudeWindowReadout_total:match("0*(%d+)") --https://stackoverflow.com/questions/34331633/remove-leading-zeroes-in-lua-string
	local altMsl_f16c_ft  = altitudeWindowReadout_total
	
	--ExportScript.Tools.SendData(44260, altMsl_f16c_ft .. " ft")
	
	-- convert to meters
	local altMsl_f16c_meters = string.format("%.f", altMsl_f16c_ft / 3.281)
	--ExportScript.Tools.SendData(44261, altMsl_f16c_meters .. " m")
	
	-- convert to km
	local altMsl_f16c_km = string.format("%.2f", altMsl_f16c_ft / 3281)
	--ExportScript.Tools.SendData(44262, altMsl_f16c_km .. " km")
	
	-- Combined
	ExportScript.Tools.SendData(44226, string.format("Alt (MSL)\n" .. 
													altMsl_f16c_ft .. " ft" .. "\n" ..
													altMsl_f16c_meters .. " m" .. "\n" ..
													altMsl_f16c_km .. " km"))
	----------------------------------
	-- Get F16 Altitude (AGL) Info --- todo: this
	----------------------------------
	--the radar altimeter readout is somehwere between entry 466 and 480. youll have to find it
	--local expendableReadout = ExportScript.Tools.split(list_indication(1), "%c")--this contains the formated table of the HUD info
	
	local expendableReadout1 = ExportScript.Tools.split(list_indication(1), "%c")--this contains the formated table of the HUD info
	
	local radAlt_firstHalf
	local radAlt_secondHalf
	 
	 --[[
	 
	for k,v in pairs(expendableReadout1) do
		if v == "HUD_RadarAlt_num_k" then
			radAlt_firstHalf = expendableReadout1[k+1]
		end
		if v == "HUD_RadarAlt_num" then
			radAlt_secondHalf = expendableReadout1[k+1]
		end
	end
	]]
	
	for k,v in pairs(expendableReadout) do
		if v ~= "HUD_RadarAlt_num_k" then
			for x,y in pairs(expendableReadout) do
				if y == "HUD_RadarAlt_num" then
					radAlt_secondHalf = expendableReadout[x+1]
					print(radAlt_secondHalf)
				end
			end
		end
	end
	
	local radAlt_total = string.format("%.f",radAlt_firstHalf .. radAlt_secondHalf)
	local altAgl_f16c_ft  = radAlt_total
	
	ExportScript.Tools.SendData(44250, radAlt_firstHalf)
	ExportScript.Tools.SendData(44251, radAlt_secondHalf)
	ExportScript.Tools.SendData(44252, string.format(altAgl_f16c_ft .. " ft"))
	
	
	-- Convert to meters
	local altAgl_f16c_meters = string.format("%.0f", altAgl_f16c_ft / 3.281)
	--ExportScript.Tools.SendData(44262, altMsl_f16c_km .. " km")
	
	-- Convert to km
	local altAgl_f16c_km = string.format("%.2f", altAgl_f16c_ft / 3281)
	
	-- Combined
	ExportScript.Tools.SendData(44228, string.format("Alt (AGL)\n" .. 
													altAgl_f16c_ft .. " ft" .. "\n" ..
													altAgl_f16c_meters .. " m" .. "\n" ..
													altAgl_f16c_km .. " km"))
	----------------------------
	-- Get F16 Airspeed Info --- TODO: use the new way of lua to get the HUD airspeed.
	----------------------------
	
	--[48]  = "%.3f",   -- Airspeed Indicator (knots) -- todo: replace with hud indication when i can parse the lua
	--[49]  = "%.3f",   -- Airspeed Indicator (mach) --todo: later when i can parse the lua
	
	-- old way of detection
	local airspeed_f16c_kts = string.format("%.f",(mainPanelDevice:get_argument_value(48) * 1000) - 0) -- the "-4" is there because I feel like it matches slightly better
	ExportScript.Tools.SendData(44264, string.format(airspeed_f16c_kts .. " kts"))
	
	-- Convert to kmph
	local airspeed_f16c_kmph = string.format("%.f",airspeed_f16c_kts * 1.852)
	ExportScript.Tools.SendData(44263, string.format(airspeed_f16c_kmph .. " km/h"))
	
	-- Compined
	ExportScript.Tools.SendData(44230, string.format("Airspeed\n" .. 
													airspeed_f16c_kts .. " kts" .. "\n" ..
													airspeed_f16c_kmph .. " km/h" .. "\n" ..
													" "))
													
	-- Extras 
	-- Radar alt color change TODO: this
		--if R readout is less than AL readout, change the color
	local radAlt_minimums
	 
	for k,v in pairs(expendableReadout1) do
		if v == "HUD_Window25_Altitude_Low_num" then
			radAlt_minimums = expendableReadout1[k+1]
		end
	end
	
	if  radAlt_total > radAlt_minimums then
		ExportScript.Tools.SendData(44229, "0")
	else
		ExportScript.Tools.SendData(44229, "1")
	end
	ExportScript.Tools.SendData(44260, radAlt_minimums)
	ExportScript.Tools.SendData(44261, radAlt_total)
	
	
	-- Airspeed color change
		-- if the raw value of the barberpole (VNE) needle is less than the other needles, change color
	if mainPanelDevice:get_argument_value(47) < mainPanelDevice:get_argument_value(48) then
		ExportScript.Tools.SendData(44231, "1") 
	else
		ExportScript.Tools.SendData(44231, "0") 
	end

	
	
	
end

function ExportScript.KollsmanWindowReadout(mainPanelDevice)
	-- ExportScript.Tools.SendData(44250, "Hello again") -- Test
		-- Necessary info
	--	[56]  = "%.2f",   -- Barometric Setting Kollsman Window 1
	--	[57]  = "%.2f",   -- Barometric Setting Kollsman Window 2
	--	[58]  = "%.2f",   -- Barometric Setting Kollsman Window 3
	--	[59]  = "%.2f",   -- Barometric Setting Kollsman Window 4
	-- the above are 0 = 0 , 0.50 = 5, 1 = 0
	-- they are tumblers
end

function ExportScript.FuelInfo(mainPanelDevice)	
	local FuelTotalizer_10k = mainPanelDevice:get_argument_value(730) * 100000
	local FuelTotalizer_1k = math.floor(mainPanelDevice:get_argument_value(731) * 10) * 1000 -- this method counters the odd rounding seen with roller counters
	local FuelTotalizer_100 = mainPanelDevice:get_argument_value(732) * 1000
	
	local totalFuel = FuelTotalizer_10k + FuelTotalizer_1k + FuelTotalizer_100
	totalFuel = round(totalFuel, 0)
	totalFuel = format_int(totalFuel)
	ExportScript.Tools.SendData(3006, "Fuel LBS\n" .. totalFuel)
	
	
	local FuelFlowCounter_10k = mainPanelDevice:get_argument_value(88) * 100000
	local FuelFlowCounter_1k = math.floor(mainPanelDevice:get_argument_value(89) * 10) * 1000 -- this method counters the odd rounding seen with roller counters
	local FuelFlowCounter_100 = mainPanelDevice:get_argument_value(90) * 1000
	
	local totalFuelFlowCounter = FuelFlowCounter_10k + FuelFlowCounter_1k + FuelFlowCounter_100
	totalFuelFlowCounter = round(totalFuelFlowCounter, -1)
	totalFuelFlowCounter = format_int(totalFuelFlowCounter)
	
	ExportScript.Tools.SendData(3007, "Fuel Flow\n" .. totalFuelFlowCounter)
end

function ExportScript.EcmPanel(mainPanelDevice)
	--this is logic for the ECM panel and the associated lights
	--this is designed to be paired with the proper pre-formated image
	--https://en.wikipedia.org/wiki/Block_Elements
	-- 5 of these █ will cover the whole row at Times New Roman 15pt
	-- options for blanking out
		-- left showing |       ████|
		-- right showing|████       |
		-- both showing ||
		-- both hidden|█████|
	
	--1 logic
	local topPattern_1
	-- if S and A are both off
	if mainPanelDevice:get_argument_value(461) < 0.5 and mainPanelDevice:get_argument_value(462) < 0.5 then
		topPattern_1 = "█████"
	--if S is on and A is off
	elseif mainPanelDevice:get_argument_value(461) > 0.5 and mainPanelDevice:get_argument_value(462) < 0.5 then
		topPattern_1 = "       ████"
	--if S is off and A is off
	elseif mainPanelDevice:get_argument_value(461) > 0.5 and mainPanelDevice:get_argument_value(462) > 0.5 then
		topPattern_1 = ""
	--if S is off and A is on
	elseif mainPanelDevice:get_argument_value(461) < 0.5 and mainPanelDevice:get_argument_value(462) > 0.5 then
		topPattern_1 = "████       "
	end
	
	local bottomPattern_1
	-- if F and T are both off
	if mainPanelDevice:get_argument_value(463) < 0.5 and mainPanelDevice:get_argument_value(464) < 0.5 then
		bottomPattern_1 = "█████"
	--if F is on and T is off
	elseif mainPanelDevice:get_argument_value(463) > 0.5 and mainPanelDevice:get_argument_value(464) < 0.5 then
		bottomPattern_1 = "       ████"
	--if F is off and T is off
	elseif mainPanelDevice:get_argument_value(463) > 0.5 and mainPanelDevice:get_argument_value(464) > 0.5 then
		bottomPattern_1 = ""
	--if F is off and T is on
	elseif mainPanelDevice:get_argument_value(463) < 0.5 and mainPanelDevice:get_argument_value(464) > 0.5 then
		bottomPattern_1 = "████       "
	end
	
	ExportScript.Tools.SendData(3008, topPattern_1 .. "\n\n" .. bottomPattern_1)
	
	--2 logic
    local topPattern_2
    -- if S and A are both off
    if mainPanelDevice:get_argument_value(466) < 0.5 and mainPanelDevice:get_argument_value(467) < 0.5 then
        topPattern_2 = "█████"
    --if S is on and A is off
    elseif mainPanelDevice:get_argument_value(466) > 0.5 and mainPanelDevice:get_argument_value(467) < 0.5 then
        topPattern_2 = "       ████"
    --if S is off and A is off
    elseif mainPanelDevice:get_argument_value(466) > 0.5 and mainPanelDevice:get_argument_value(467) > 0.5 then
        topPattern_2 = ""
    --if S is off and A is on
    elseif mainPanelDevice:get_argument_value(466) < 0.5 and mainPanelDevice:get_argument_value(467) > 0.5 then
        topPattern_2 = "████       "
    end
    
    local bottomPattern_2
    -- if F and T are both off
    if mainPanelDevice:get_argument_value(468) < 0.5 and mainPanelDevice:get_argument_value(469) < 0.5 then
        bottomPattern_2 = "█████"
    --if F is on and T is off
    elseif mainPanelDevice:get_argument_value(468) > 0.5 and mainPanelDevice:get_argument_value(469) < 0.5 then
        bottomPattern_2 = "       ████"
    --if F is off and T is off
    elseif mainPanelDevice:get_argument_value(468) > 0.5 and mainPanelDevice:get_argument_value(469) > 0.5 then
        bottomPattern_2 = ""
    --if F is off and T is on
    elseif mainPanelDevice:get_argument_value(468) < 0.5 and mainPanelDevice:get_argument_value(469) > 0.5 then
        bottomPattern_2 = "████       "
    end
    
    ExportScript.Tools.SendData(3009, topPattern_2 .. "\n\n" .. bottomPattern_2)
    
    --3 logic
    local topPattern_3
    -- if S and A are both off
    if mainPanelDevice:get_argument_value(471) < 0.5 and mainPanelDevice:get_argument_value(472) < 0.5 then
        topPattern_3 = "█████"
    --if S is on and A is off
    elseif mainPanelDevice:get_argument_value(471) > 0.5 and mainPanelDevice:get_argument_value(472) < 0.5 then
        topPattern_3 = "       ████"
    --if S is off and A is off
    elseif mainPanelDevice:get_argument_value(471) > 0.5 and mainPanelDevice:get_argument_value(472) > 0.5 then
        topPattern_3 = ""
    --if S is off and A is on
    elseif mainPanelDevice:get_argument_value(471) < 0.5 and mainPanelDevice:get_argument_value(472) > 0.5 then
        topPattern_3 = "████       "
    end
    
    local bottomPattern_3
    -- if F and T are both off
    if mainPanelDevice:get_argument_value(473) < 0.5 and mainPanelDevice:get_argument_value(474) < 0.5 then
        bottomPattern_3 = "█████"
    --if F is on and T is off
    elseif mainPanelDevice:get_argument_value(473) > 0.5 and mainPanelDevice:get_argument_value(474) < 0.5 then
        bottomPattern_3 = "       ████"
    --if F is off and T is off
    elseif mainPanelDevice:get_argument_value(473) > 0.5 and mainPanelDevice:get_argument_value(474) > 0.5 then
        bottomPattern_3 = ""
    --if F is off and T is on
    elseif mainPanelDevice:get_argument_value(473) < 0.5 and mainPanelDevice:get_argument_value(474) > 0.5 then
        bottomPattern_3 = "████       "
    end
    
    ExportScript.Tools.SendData(3010, topPattern_3 .. "\n\n" .. bottomPattern_3)
    
    --4 logic
    local topPattern_4
    -- if S and A are both off
    if mainPanelDevice:get_argument_value(476) < 0.5 and mainPanelDevice:get_argument_value(477) < 0.5 then
        topPattern_4 = "█████"
    --if S is on and A is off
    elseif mainPanelDevice:get_argument_value(476) > 0.5 and mainPanelDevice:get_argument_value(477) < 0.5 then
        topPattern_4 = "       ████"
    --if S is off and A is off
    elseif mainPanelDevice:get_argument_value(476) > 0.5 and mainPanelDevice:get_argument_value(477) > 0.5 then
        topPattern_4 = ""
    --if S is off and A is on
    elseif mainPanelDevice:get_argument_value(476) < 0.5 and mainPanelDevice:get_argument_value(477) > 0.5 then
        topPattern_4 = "████       "
    end
    
    local bottomPattern_4
    -- if F and T are both off
    if mainPanelDevice:get_argument_value(478) < 0.5 and mainPanelDevice:get_argument_value(479) < 0.5 then
        bottomPattern_4 = "█████"
    --if F is on and T is off
    elseif mainPanelDevice:get_argument_value(478) > 0.5 and mainPanelDevice:get_argument_value(479) < 0.5 then
        bottomPattern_4 = "       ████"
    --if F is off and T is off
    elseif mainPanelDevice:get_argument_value(478) > 0.5 and mainPanelDevice:get_argument_value(479) > 0.5 then
        bottomPattern_4 = ""
    --if F is off and T is on
    elseif mainPanelDevice:get_argument_value(478) < 0.5 and mainPanelDevice:get_argument_value(479) > 0.5 then
        bottomPattern_4 = "████       "
    end
    
    ExportScript.Tools.SendData(3011, topPattern_4 .. "\n\n" .. bottomPattern_4)
    
    --5 logic
    local topPattern_5
    -- if S and A are both off
    if mainPanelDevice:get_argument_value(481) < 0.5 and mainPanelDevice:get_argument_value(482) < 0.5 then
        topPattern_5 = "█████"
    --if S is on and A is off
    elseif mainPanelDevice:get_argument_value(481) > 0.5 and mainPanelDevice:get_argument_value(482) < 0.5 then
        topPattern_5 = "       ████"
    --if S is off and A is off
    elseif mainPanelDevice:get_argument_value(481) > 0.5 and mainPanelDevice:get_argument_value(482) > 0.5 then
        topPattern_5 = ""
    --if S is off and A is on
    elseif mainPanelDevice:get_argument_value(481) < 0.5 and mainPanelDevice:get_argument_value(482) > 0.5 then
        topPattern_5 = "████       "
    end
    
    local bottomPattern_5
    -- if F and T are both off
    if mainPanelDevice:get_argument_value(483) < 0.5 and mainPanelDevice:get_argument_value(484) < 0.5 then
        bottomPattern_5 = "█████"
    --if F is on and T is off
    elseif mainPanelDevice:get_argument_value(483) > 0.5 and mainPanelDevice:get_argument_value(484) < 0.5 then
        bottomPattern_5 = "       ████"
    --if F is off and T is off
    elseif mainPanelDevice:get_argument_value(483) > 0.5 and mainPanelDevice:get_argument_value(484) > 0.5 then
        bottomPattern_5 = ""
    --if F is off and T is on
    elseif mainPanelDevice:get_argument_value(483) < 0.5 and mainPanelDevice:get_argument_value(484) > 0.5 then
        bottomPattern_5 = "████       "
    end
    
    ExportScript.Tools.SendData(3012, topPattern_5 .. "\n\n" .. bottomPattern_5)
    
    --6 logic
    local topPattern_6
    -- if S and A are both off
    if mainPanelDevice:get_argument_value(486) < 0.5 and mainPanelDevice:get_argument_value(487) < 0.5 then
        topPattern_6 = "█████"
    --if S is on and A is off
    elseif mainPanelDevice:get_argument_value(486) > 0.5 and mainPanelDevice:get_argument_value(487) < 0.5 then
        topPattern_6 = "       ████"
    --if S is off and A is off
    elseif mainPanelDevice:get_argument_value(486) > 0.5 and mainPanelDevice:get_argument_value(487) > 0.5 then
        topPattern_6 = ""
    --if S is off and A is on
    elseif mainPanelDevice:get_argument_value(486) < 0.5 and mainPanelDevice:get_argument_value(487) > 0.5 then
        topPattern_6 = "████       "
    end
    
    local bottomPattern_6
    -- if F and T are both off
    if mainPanelDevice:get_argument_value(488) < 0.5 and mainPanelDevice:get_argument_value(489) < 0.5 then
        bottomPattern_6 = "█████"
    --if F is on and T is off
    elseif mainPanelDevice:get_argument_value(488) > 0.5 and mainPanelDevice:get_argument_value(489) < 0.5 then
        bottomPattern_6 = "       ████"
    --if F is off and T is off
    elseif mainPanelDevice:get_argument_value(488) > 0.5 and mainPanelDevice:get_argument_value(489) > 0.5 then
        bottomPattern_6 = ""
    --if F is off and T is on
    elseif mainPanelDevice:get_argument_value(488) < 0.5 and mainPanelDevice:get_argument_value(489) > 0.5 then
        bottomPattern_6 = "████       "
    end
    
    ExportScript.Tools.SendData(3013, topPattern_6 .. "\n\n" .. bottomPattern_6)
    
	--FRM logic
	local topPattern_FRM
	-- if S and A are both off
	if mainPanelDevice:get_argument_value(491) < 0.5 and mainPanelDevice:get_argument_value(492) < 0.5 then
		topPattern_FRM = "█████"
	--if S is on and A is off
	elseif mainPanelDevice:get_argument_value(491) > 0.5 and mainPanelDevice:get_argument_value(492) < 0.5 then
		topPattern_FRM = "       ████"
	--if S is off and A is off
	elseif mainPanelDevice:get_argument_value(491) > 0.5 and mainPanelDevice:get_argument_value(492) > 0.5 then
		topPattern_FRM = ""
	--if S is off and A is on
	elseif mainPanelDevice:get_argument_value(491) < 0.5 and mainPanelDevice:get_argument_value(492) > 0.5 then
		topPattern_FRM = "████       "
	end
	
	local bottomPattern_FRM
	-- if F and T are both off
	if mainPanelDevice:get_argument_value(493) < 0.5 and mainPanelDevice:get_argument_value(494) < 0.5 then
		bottomPattern_FRM = "█████"
	--if F is on and T is off
	elseif mainPanelDevice:get_argument_value(493) > 0.5 and mainPanelDevice:get_argument_value(494) < 0.5 then
		bottomPattern_FRM = "       ████"
	--if F is off and T is off
	elseif mainPanelDevice:get_argument_value(493) > 0.5 and mainPanelDevice:get_argument_value(494) > 0.5 then
		bottomPattern_FRM = ""
	--if F is off and T is on
	elseif mainPanelDevice:get_argument_value(493) < 0.5 and mainPanelDevice:get_argument_value(494) > 0.5 then
		bottomPattern_FRM = "████       "
	end
	
	ExportScript.Tools.SendData(3014, topPattern_FRM .. "\n\n" .. bottomPattern_FRM)
	
    --SPL logic
    local topPattern_SPL
    -- if S and A are both off
    if mainPanelDevice:get_argument_value(496) < 0.5 and mainPanelDevice:get_argument_value(497) < 0.5 then
        topPattern_SPL = "█████"
    --if S is on and A is off
    elseif mainPanelDevice:get_argument_value(496) > 0.5 and mainPanelDevice:get_argument_value(497) < 0.5 then
        topPattern_SPL = "       ████"
    --if S is off and A is off
    elseif mainPanelDevice:get_argument_value(496) > 0.5 and mainPanelDevice:get_argument_value(497) > 0.5 then
        topPattern_SPL = ""
    --if S is off and A is on
    elseif mainPanelDevice:get_argument_value(496) < 0.5 and mainPanelDevice:get_argument_value(497) > 0.5 then
        topPattern_SPL = "████       "
    end
    
    local bottomPattern_SPL
    -- if F and T are both off
    if mainPanelDevice:get_argument_value(498) < 0.5 and mainPanelDevice:get_argument_value(499) < 0.5 then
        bottomPattern_SPL = "█████"
    --if F is on and T is off
    elseif mainPanelDevice:get_argument_value(498) > 0.5 and mainPanelDevice:get_argument_value(499) < 0.5 then
        bottomPattern_SPL = "       ████"
    --if F is off and T is off
    elseif mainPanelDevice:get_argument_value(498) > 0.5 and mainPanelDevice:get_argument_value(499) > 0.5 then
        bottomPattern_SPL = ""
    --if F is off and T is on
    elseif mainPanelDevice:get_argument_value(498) < 0.5 and mainPanelDevice:get_argument_value(499) > 0.5 then
        bottomPattern_SPL = "████       "
    end
    
    ExportScript.Tools.SendData(3015, topPattern_SPL .. "\n\n" .. bottomPattern_SPL)
end

function ExportScript.CountermeasureReadouts(mainPanelDevice)
	
	local expendableReadout = ExportScript.Tools.split(list_indication(16), "%c")--this contains the formated table of the CMDS numbers
	
	local CMDS_O1_Amount
	local CMDS_O2_Amount
	local CMDS_CH_Amount
	local CMDS_FL_Amount
	
	if expendableReadout[2] == "CMDS_O1_Amount" then
		CMDS_O1_Amount = expendableReadout[3]
	elseif expendableReadout[5] == "CMDS_O1_Amount" then
		CMDS_O1_Amount = expendableReadout[6]
	elseif expendableReadout[8] == "CMDS_O1_Amount" then
		CMDS_O1_Amount = expendableReadout[9]
	elseif expendableReadout[11] == "CMDS_O1_Amount" then
		CMDS_O1_Amount = expendableReadout[12]
	else
		CMDS_O1_Amount = "--"
	end
	
	if expendableReadout[2] == "CMDS_O2_Amount" then
		CMDS_O2_Amount = expendableReadout[3]
	elseif expendableReadout[5] == "CMDS_O2_Amount" then
		CMDS_O2_Amount = expendableReadout[6]
	elseif expendableReadout[8] == "CMDS_O2_Amount" then
		CMDS_O2_Amount = expendableReadout[9]
	elseif expendableReadout[11] == "CMDS_O2_Amount" then
		CMDS_O2_Amount = expendableReadout[12]
	else
		CMDS_O2_Amount = "--"
	end
	
	if expendableReadout[2] == "CMDS_CH_Amount" then
		CMDS_CH_Amount = expendableReadout[3]
	elseif expendableReadout[5] == "CMDS_CH_Amount" then
		CMDS_CH_Amount = expendableReadout[6]
	elseif expendableReadout[8] == "CMDS_CH_Amount" then
		CMDS_CH_Amount = expendableReadout[9]
	elseif expendableReadout[11] == "CMDS_CH_Amount" then
		CMDS_CH_Amount = expendableReadout[12]
	else
		CMDS_CH_Amount = "--"
	end
	
	if expendableReadout[2] == "CMDS_FL_Amount" then
		CMDS_FL_Amount = expendableReadout[3]
	elseif expendableReadout[5] == "CMDS_FL_Amount" then
		CMDS_FL_Amount = expendableReadout[6]
	elseif expendableReadout[8] == "CMDS_FL_Amount" then
		CMDS_FL_Amount = expendableReadout[9]
	elseif expendableReadout[11] == "CMDS_FL_Amount" then
		CMDS_FL_Amount = expendableReadout[12]
	else
		CMDS_FL_Amount = "--"
	end
	
	CMDS_O1_Amount = trim(CMDS_O1_Amount)
	CMDS_O2_Amount = trim(CMDS_O2_Amount)
	CMDS_CH_Amount = trim(CMDS_CH_Amount)
	CMDS_FL_Amount = trim(CMDS_FL_Amount)
	
	ExportScript.Tools.SendData(3000, "OTHER1\n" .. CMDS_O1_Amount)
	ExportScript.Tools.SendData(3001, "OTHER2\n" .. CMDS_O2_Amount)
	ExportScript.Tools.SendData(3002, "CHAFF\n" .. CMDS_CH_Amount)
	ExportScript.Tools.SendData(3003, "FLARE\n" .. CMDS_FL_Amount)
	
	ExportScript.Tools.SendData(3004, "CH " .. CMDS_CH_Amount
										.. "\nFL " .. CMDS_FL_Amount)
	
	ExportScript.Tools.SendData(3005, "O1 " .. CMDS_O1_Amount
										.. "\nO2 " .. CMDS_O2_Amount
										.. "\nCH " .. CMDS_CH_Amount
										.. "\nFL " .. CMDS_FL_Amount)
end

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

function trim(s) --http://lua-users.org/wiki/CommonFunctions
  -- from PiL2 20.4
  return (s:gsub("^%s*(.-)%s*$", "%1"))
end
