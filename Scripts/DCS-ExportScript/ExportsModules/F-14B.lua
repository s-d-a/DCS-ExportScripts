-- F-14B Tomacat

ExportScript.FoundDCSModule = true
ExportScript.Version.F14 = "1.2.1"

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
	
	--Lamps
[10]  =  "%.1f",   --      RADAR DDD WCS PSRCH 
[11]  =  "%.1f",   --      RADAR DDD_WCS TWSMAN 
[12]  =  "%.1f",   --      RADAR DDD WCS TWSAUTO 
[13]  =  "%.1f",   --      RADAR_DDD_WCS_RWS 
[14]  =  "%.1f",   --      RADAR_DDD_WCS_PDSRCH 
[15]  =  "%.1f",   --      RADAR_DDD_WCS_PSTT 
[9916]  =  "%.1f",   --      RADAR_DDD_WCS_PDSTT 
[17]  =  "%.1f",   --      RADAR_DDD_display_IFF 
[18]  =  "%.1f",   --      RADAR_DDD_display_IR 
[19]  =  "%.1f",   --      RADAR_DDD_display_radar 
[20]  =  "%.1f",   --      RADAR_IR_gain 
[21]  =  "%.1f",   --      RADAR_IR_volume 
[22]  =  "%.1f",   --      RADAR_IR_threshold 
[23]  =  "%.1f",   --      RADAR_DDD_bright 
[24]  =  "%.1f",   --      RADAR_DDD_pulse_vid 
[25]  =  "%.1f",   --      RADAR_DDD_erase 
[26]  =  "%.1f",   --      RADAR_DDD_pulse_gain 
[27]  =  "%.1f",   --      RADAR_ACM_thresh 
[28]  =  "%.1f",   --      RADAR_jamjet 
[29]  =  "%.1f",   --      RADAR_PD_thresh_clutter 
[30]  =  "%.1f",   --      RADAR_PD_thresh_clear 

[31]  =  "%.1f",   --      VDI_Light_Color 
[32]  =  "%.1f",   --      HUD_Light_Color 

[33]  =  "%.1f",   --      HIDE_Stick 

[9945]  =  "%.1f",   --      DATA_ADF_Switch 

[403]  =  "%.1f",   --      INT_CANOPY_Open 
[404]  =  "%.1f",   --      Pilot_Seat_Safety 
[405]  =  "%.1f",   --      RIO_UHF_REMOTE_TEST 
[406]  =  "%.1f",   --      RIO_UHF_REMOTE_DIM 
[407]  =  "%.1f",   --      HCU_POWER_RESET_LIGHT 
[408]  =  "%.1f",   --      HCU_WCS_POWER_LIGHT 
[409]  =  "%.1f",   --      HCU_IR_STBY_LIGHT 
[410]  =  "%.1f",   --      RIO_LOD 
[411]  =  "%.1f",   --      PILOT_LOD 
[412]  =  "%.1f",   --      COMP_IND_SYNC_NEEDLE 
[413]  =  "%.1f",   --      DATALINK_ON_OFF_SW 

[414]  =  "%.1f",   --      TACAN_NFO_RIO_INDICATOR 

[1800]  =  "%.1f",   --      PILOT_FloodLights 
[1801]  =  "%.1f",   --      PILOT_PanelLights 
[1802]  =  "%.1f",   --      PILOT_InstrumentLights 
[1803]  =  "%.1f",   --      PILOT_WhiteFloodLights 

[1804]  =  "%.1f",   --  RIO_FloodLights 
[1805]  =  "%.1f",   --      RIO_PanelLights 
[1806]  =  "%.1f",   --      RIO_InstrumentLights 
[1807]  =  "%.1f",   --      RIO_WhiteFloodLights 

[1808]  =  "%.1f",   --      PILOT_Cockpit_LeanForward 
[1809]  =  "%.1f",   --      PILOT_Cockpit_LeanLeftRight 

[1810]  =  "%.1f",   --      RIO_Cockpit_LeanForward 
[1811]  =  "%.1f",   --      RIO_Cockpit_LeanLeftRight 

[1812]  =  "%.1f",   --      CCM_SPL 
[1813]  =  "%.1f",   --      CCM_ALT_DIFF 
[1814]  =  "%.1f",   --      CCM_VGS 

[6501]  =  "%.1f",   --      ACM_TurnIndicator 
[6500]  =  "%.1f",   --      ACM_SlipBall 

[6502]  =  "%.1f",   --      COMPASSBALL_ROTATE 
[6503]  =  "%.1f",   --      COMPASSBALL_ROTATE_VERTICAL 

[8000]  =  "%.1f",   --      MIRROR_Shake_FrontTop 
[8001]  =  "%.1f",   --      MIRROR_Shake_FrontLeft 
[8002]  =  "%.1f",   --      MIRROR_Shake_FrontRight 

[15012]  =  "%.1f",   --      SPOILER_FLR_ORIDE_Left 
[15013]  =  "%.1f",   --      SPOILER_FLR_ORIDE_Right 

[15014]  =  "%.1f",   --      Light_RFIRE 
[15015]  =  "%.1f",   --      Light_LFIRE 



[1044]  =  "%.1f",   --      Fire_Ext_Handle_Right 
[15081]  =  "%.1f",   --      Fire_Ext_Handle_Left 
[15082]  =  "%.1f",   --      Fire_Ext_Button_Right 
[15083]  =  "%.1f",   --      Fire_Ext_Button_Left 


[34]  =  "%.1f",   --      RADAR_DDD_aspect 
[35]  =  "%.1f",   --      RADAR_DDD_Vc_scale 
[36]  =  "%.1f",   --      RADAR_DDD_tgts 
[37]  =  "%.1f",   --      RADAR_DDD_MLC 
[38]  =  "%.1f",   --      RADAR_DDD_AGC 
[3900]  =  "%.1f",   --      RADAR_DDD_paramp 
[40]  =  "%.1f",   --      RADAR_DDD_range_5 
[41]  =  "%.1f",   --      RADAR_DDD_range_10 
[42]  =  "%.1f",   --      RADAR_DDD_range_20 
[43]  =  "%.1f",   --      RADAR_DDD_range_50 
[44]  =  "%.1f",   --      RADAR_DDD_range_100 
[45]  =  "%.1f",   --      RADAR_DDD_range_200 

[48]  =  "%.1f",   --      TID_bright 
[49]  =  "%.1f",   --      TID_contrast 

[52]  =  "%.1f",   --      TID_CLSN 
[53]  =  "%.1f",   --      TID_trackhold 

[54]  =  "%.1f",   --      PEDALS_Yaw 
[55]  =  "%.1f",   --      PEDALS_Brake_Left 

[58]  =  "%.1f",   --      WEAP_Elec_Fuse 
[59]  =  "%.1f",   --      WEAP_Type_Wheel 

[60]  =  "%.1f",   --      WEAP_Bomb_SinglePairs 
[61]  =  "%.1f",   --      WEAP_Bomb_StepRipple 
[62]  =  "%.1f",   --      WEAP_AG_Gun 
[63]  =  "%.1f",   --      WEAP_Mech_Fuse 
[64]  =  "%.1f",   --      WEAP_Jett_Station6 
[65]  =  "%.1f",   --      WEAP_Jett_Station3 
[66]  =  "%.1f",   --      WEAP_Jett_RackWeapons 
[67]  =  "%.1f",   --      WEAP_Jett_RightTank 
[68]  =  "%.1f",   --      WEAP_Jett_Station1 
[69]  =  "%.1f",   --      WEAP_Jett_Station4 
[70]  =  "%.1f",   --      WEAP_Jett_Station5 
[71]  =  "%.1f",   --      WEAP_Jett_Station8 
[72]  =  "%.1f",   --      WEAP_MSL_SPD_Gate 
[73]  =  "%.1f",   --      WEAP_Jett_LeftTank 
[74]  =  "%.1f",   --      WEAP_AA_Launch 
[75]  =  "%.1f",   --      WEAP_Missile_Option 

[78]  =  "%.1f",   --      WEAP_Selective_Jett 
[79]  =  "%.5f",   --      RADAR_elevation_bars_knob 
[80]  =  "%.5f",   --      RADAR_azimuth_scan_knob 
[81]  =  "%.1f",   --      RADAR_elevation_center_knob 
[82]  =  "%.1f",   --      RADAR_azimuth_center_knob 
[83]  =  "%.1f",   --      RADAR_stab_switch 
[84]  =  "%.1f",   --      RADAR_VSL_switch 

[87]  =  "%.1f",   --      TCS_ACQ_switch 
[88]  =  "%.1f",   --      TCS_FOV_button 
[89]  =  "%.1f",   --      TCS_Slave_switch 
[90]  =  "%.1f",   --      RECORD_power 
[91]  =  "%.1f",   --      RECORD_mode 
[92]  =  "%.1f",   --      RECORD_standby_lamp 
[93]  =  "%.1f",   --      RECORD_rec_lamp 
[94]  =  "%.1f",   --      RECORD_endoftape_lamp 
[95]  =  "%.1f",   --      LIQUID_cooling_switch 
[96]  =  "%.1f",   --      BEACON_power_switch 

[98]  =  "%.1f",   --      CAP_category 


[104]  =  "%.1f",   --      ALTI_NeedleBaro 
[20104]  =  "%.1f",   --      RIOALTI_NeedleBaro 

[106]  =  "%.1f",   --      VSI_needle 

[228]  =  "%.1f",   --  ACCEL_Reset 
[110]  =  "%.1f",   --      ACCEL_AccelerometerNeedle 
[15076]  =  "%.1f",   --      ACCEL_AccelerometerNeedle2 
[15077]  =  "%.1f",   --      ACCEL_AccelerometerNeedle3 

[15078]  =  "%.1f",   --      HOOK_EmergencyDown 

[15079]  =  "%.1f",   --      HSI_Flag_NukeThing 

[112]  =  "%.1f",   --      ALTI_ThousandsL 

[117]  =  "%.1f",   --      BEACON_ACLS_test_button 
[118]  =  "%.1f",   --      BEACON_mode_knob 

[20112]  =  "%.1f",   --      RIOALTI_ThousandsL 

[123]  =  "%.1f",   --      CAP_button5  -- note: 4 and 5 are swapped
[124]  =  "%.1f",   --      CAP_button4 
[125]  =  "%.1f",   --      CAP_button3 
[126]  =  "%.1f",   --      CAP_button2 
[127]  =  "%.1f",   --      CAP_button1 
[128]  =  "%.1f",   --      CAP_tng_nbr 
[129]  =  "%.1f",   --      CAP_button10 
[130]  =  "%.1f",   --      CAP_button9 
[131]  =  "%.1f",   --      CAP_button8 
[132]  =  "%.1f",   --      CAP_button7 
[133]  =  "%.1f",   --      CAP_button6 
[134]  =  "%.1f",   --      CAP_program_restart 

[136]  =  "%.1f",   --      CAP_LONG_6 
[137]  =  "%.1f",   --      CAP_LAT_1 
[138]  =  "%.1f",   --      CAP_NBR_2 
[139]  =  "%.1f",   --      CAP_7 
[140]  =  "%.1f",   --      CAP_HDG_8 
[141]  =  "%.1f",   --      CAP_SPD_3 
[143]  =  "%.1f",   --      CAP_ALT_4 
[142]  =  "%.1f",   --      CAP_9 
[144]  =  "%.1f",   --      CAP_BRG_0 
[145]  =  "%.1f",   --      CAP_RNG_5 
[146]  =  "%.1f",   --      CAP_NE 
[147]  =  "%.1f",   --      CAP_SW 
[148]  =  "%.1f",   --      CAP_clear 
[149]  =  "%.1f",   --      CAP_enter 



[156]  =  "%.1f",   --      ECMD_Override_SW 
[168]  =  "%.1f",   --      ECMD_Corr_SW 
[189]  =  "%.1f",   --      ECMD_Mode_SW 
[190]  =  "%.1f",   --      ECMD_Data_ADF_SW 

[2023]  =  "%.1f",   --      ECMD_Knob_Brightness 
[2024]  =  "%.1f",   --      ECMD_Btn_Test 


[151]  =  "%.1f",   --      DECM_Mode_Knob 
[9950]  =  "%.1f",   --      DECM_Vol_Knob 


[174]  =  "%.1f",   --      RCP45_Power_SW 
[173]  =  "%.1f",   --      RCP45_AAA_Mode_SW 



[175]  =  "%.1f",   --      DATALINK_Antenna 
[176]  =  "%.1f",   --      DATALINK_Reply 
[177]  =  "%.1f",   --      DATALINK_Cains 
[191]  =  "%.1f",   --      DATALINK_antijam 
[196]  =  "%.1f",   --      DATALINK_freq_10s 
[195]  =  "%.1f",   --      DATALINK_freq_1s 
[197]  =  "%.1f",   --      DATALINK_freq_tenths 

[161]  =  "%.1f",   --      IFF_audiolight_switch 
[162]  =  "%.1f",   --      IFF_M1_switch 
[163]  =  "%.1f",   --      IFF_M2_switch 
[164]  =  "%.1f",   --      IFF_M3A_switch 
[165]  =  "%.1f",   --      IFF_MC_switch 
[166]  =  "%.1f",   --      IFF_RAD_switch 
[167]  =  "%.1f",   --      IFF_ident_switch 
[181]  =  "%.1f",   --      IFF_M4_switch 
[183]  =  "%.1f",   --      IFF_code_knob 
[184]  =  "%.1f",   --      IFF_master_knob 
[185]  =  "%.1f",   --      IFF_test_button 
[186]  =  "%.1f",   --      IFF_reply_button 

[2262]  =  "%.1f",   --      IFF_M3code_1s 
[2261]  =  "%.1f",   --      IFF_M3code_10s 
[198]  =  "%.1f",   --      IFF_M3code_100s 
[199]  =  "%.1f",   --      IFF_M3code_1000s 
[200]  =  "%.1f",   --      IFF_M1code_1s 
[201]  =  "%.1f",   --      IFF_M1code_10s 
    -- see also RIO_IFF_TEST_LIGHT and RIO_IFF_REPLY_LIGHT

    -- ALR-67 RWR Control Panel
[16011]  =  "%.1f",   --  RWR_Brightness_Pilot 
[376]  =  "%.1f",   --  RWR_Brightness_RIO 

    -- CMDS ALE-39
[390]  =  "%.1f",   --      CMDS_Master_Mode_SW 
[389]  =  "%.1f",   --      CMDS_Chaff_Oper_SW 
[388]  =  "%.1f",   --      CMDS_Flare_Oper_SW 
[387]  =  "%.1f",   --  CMDS_Jammer_Oper_SW 
[391]  =  "%.1f",   --      CMDS_Flare_Salvo_SW 
[398]  =  "%.1f",   --      CMDS_Flare_Mode_SW 

[392]  =  "%.1f",   --  CMDS_Chaff_Counter_Roller_10 
[393]  =  "%.1f",   --  CMDS_Chaff_Counter_Roller_1 
[394]  =  "%.1f",   --  CMDS_Flare_Counter_Roller_10 
[395]  =  "%.1f",   --  CMDS_Flare_Counter_Roller_1 
[396]  =  "%.1f",   --  CMDS_Jammer_Counter_Roller_10 
[397]  =  "%.1f",   --  CMDS_Jammer_Counter_Roller_1 

[386]  =  "%.1f",   --  CMDS_Chaff_Counter_Control 
[385]  =  "%.1f",   --  CMDS_Flare_Counter_Control 
[399]  =  "%.1f",   --  CMDS_Jammer_Counter_Control 

[206]  =  "%.1f",   --      CMDS_L10_Wheel 
[207]  =  "%.1f",   --      CMDS_L20_Wheel 
[209]  =  "%.1f",   --      CMDS_R10_Wheel 
[208]  =  "%.1f",   --      CMDS_R20_Wheel 

[211]  =  "%.1f",   --  CMDS_JAMR_Intv_1 
[212]  =  "%.1f",   --  CMDS_JAMR_Intv_10 
[213]  =  "%.1f",   --  CMDS_JAMR_Intv_100 
[204]  =  "%.1f",   --  CMDS_JAMR_Qty 

[216]  =  "%.1f",   --  CMDS_Programmer_Reset 

[214]  =  "%.1f",   --      CMDS_Chaff_Burst_Qty_Wheel 
[215]  =  "%.1f",   --      CMDS_Chaff_Burst_Intv_Wheel 
[203]  =  "%.1f",   --      CMDS_Chaff_Salvo_Qty_Wheel 
[202]  =  "%.1f",   --      CMDS_Chaff_Salvo_Intv_Wheel 

[205]  =  "%.1f",   --      CMDS_Flare_Qty_Wheel 
[210]  =  "%.1f",   --      CMDS_Flare_Intv_Wheel 

[999]  =  "%.1f",   --  CMDS_RIO_Left_Grip_Hat 
[999]  =  "%.1f",   --  CMDS_RIO_Right_Grip_Hat 

[222]  =  "%.1f",   --      DATALINK_addr_hi 
[223]  =  "%.1f",   --      DATALINK_addr_lo 

[225]  =  "%.1f",   --      FLAP_Lever 
[226]  =  "%.1f",   --      TID_NON_ATTK 

[229]  =  "%.1f",   --      STICK_Weaponselect 
[230]  =  "%.1f",   --      STICK_Weaponselectbutton 
[231]  =  "%.1f",   --      STICK_Hatswitch 
[232]  =  "%.1f",   --      STICK_RightRed
[233]  =  "%.1f",   --      STICK_Wheel_Rotate 
[234]  =  "%.1f",   --      STICK_Wheel_Push 
[235]  =  "%.1f",   --      STICK_Button_Left 
[236]  =  "%.1f",   --      STICK_Button_RedBehind 
[240]  =  "%.1f",   --      STICK_Lever 
[241]  =  "%.1f",   --      STICK_Trigger 

[237]  =  "%.1f",   --      BRAKE_ParkingBrake 
[238]  =  "%.1f",   --      HOOK_Handle 
[239]  =  "%.1f",   --      WEAP_Emer_Jettison 

[39]  =  "%.1f",   --      BODY_Pilot_Left_Right 
[99]  =  "%.1f",   --      BODY_Pilot_Up_Down 
[1600]  =  "%.1f",   --      BODY_Pilot_Salute 
[1700]  =  "%.1f",   --      BODY_Pilot 

[1701]  =  "%.1f",   --      BODY_RIO 
[1601]  =  "%.1f",   --  BODY_RIO_Lean_And_Grab 
[1603]  =  "%.1f",   --      BODY_RIO_Hold_On 
[1605]  =  "%.1f",   --      BODY_RIO_Right_Left 
[1607]  =  "%.1f",   --      BODY_RIO_Up_Down 


[2129]  =  "%.1f",   --      AIRSPD_Needle 
[2128]  =  "%.1f",   --      AIRSPD_Inner 
[2125]  =  "%.1f",   --      AIRSPD_Bug1 
[2126]  =  "%.1f",   --      AIRSPD_Bug2 
[2127]  =  "%.1f",   --      AIRSPD_KnobPush 
[310]  =  "%.1f",   --      AIRSPD_Knob 

[250]  =  "%.1f",   --  AIRSPD_Needle_RIO 
[251]  =  "%.1f",   --      AIRSPD_Inner_RIO 
[252]  =  "%.1f",   --      AIRSPD_Bug1_RIO 
[253]  =  "%.1f",   --      AIRSPD_Bug2_RIO 
[254]  =  "%.1f",   --      AIRSPD_KnobPush_RIO 
[255]  =  "%.1f",   --      AIRSPD_Knob_RIO 

[290]  =  "%.1f",   --      PILOT_TACAN_Indicator_PLT 
[291]  =  "%.1f",   --      PILOT_TACAN_Indicator_NFO 
[292]  =  "%.1f",   --      PILOT_TACAN_Button 

[934]  =  "%.1f",   --      BIT_Selector 
[923]  =  "%.1f",   --      --BIT_SelectorPush  --temp for testing

[152]  =  "%.1f",   --      ACM_Light_Intensity 
[153]  =  "%.1f",   --      INDEXER_Light_Intensity 

[103]  =  "%.1f",   --      ALTI_NeedleRadar 
[19107]  =  "%.1f",   --      ALTI_Radar_WarningLight 
[19108]  =  "%.1f",   --      ALTI_Radar_TestLight 
[2124]  =  "%.1f",   --      ALTI_Radar_OffFlag 
[2123]  =  "%.1f",   --      ALTI_Radar_Bug 
[308]  =  "%.1f",   --      ALTI_Radar_Knob 
[16020]  =  "%.1f",   --      ALTI_Radar_KnobPush 
[16021]  =  "%.1f",   --      Brake_Pedal_Left 

[262]  =  "%.1f",   --      ALTI_ThousandsR 
[300]  =  "%.1f",   --      ALTI_HundredsWhite 
[301]  =  "%.1f",   --      ALTI_HundredsSmall1 
[302]  =  "%.1f",   --      ALTI_HundredsSmall2 
[303]  =  "%.1f",   --      ALTI_HundredsSmall3 
[304]  =  "%.1f",   --      ALTI_HundredsSmall4 
[305]  =  "%.1f",   --      ALTI_STDBYcard 
[306]  =  "%.1f",   --      ALTI_LeftKnob 
[307]  =  "%.1f",   --      ALTI_RightKnob 



[20262]  =  "%.1f",   --      RIOALTI_ThousandsR 
[20300]  =  "%.1f",   --      RIOALTI_HundredsWhite 
[20301]  =  "%.1f",   --      RIOALTI_HundredsSmall1 
[20302]  =  "%.1f",   --      RIOALTI_HundredsSmall2 
[20303]  =  "%.1f",   --      RIOALTI_HundredsSmall3 
[20304]  =  "%.1f",   --      RIOALTI_HundredsSmall4 
[20305]  =  "%.1f",   --      RIOALTI_STDBYcard 
[20306]  =  "%.1f",   --      RIOALTI_LeftKnob 
[20307]  =  "%.1f",   --      RIOALTI_RightKnob 





[310]  =  "%.1f",   --      Mach_MeterKnob 

[317]  =  "%.1f",   --      WINGSWEEP_EmergencySweepCover 

[326]  =  "%.1f",   --      GEAR_Handle 
[16015]  =  "%.1f",   --      GEAR_HandleEmergency 
[1075]  =  "%.1f",   --      GEAR_Strut 

[384]  =  "%.1f",   --      WINGSWEEP_EmergencySweepLever 

[623]  =  "%.1f",   --      HYD_PRESS 
[1064]  =  "%.1f",   --      HYD_CombinedHydraulicSystemPressure 
[1063]  =  "%.1f",   --      HYD_FlightHydraulicSystemPressure 
[629]  =  "%.1f",   --      HYD_TRANSFER_PUMP_Switch 
[630]  =  "%.1f",   --      HYD_TRANSFER_PUMP_SwitchCover 
[631]  =  "%.1f",   --      HYD_ISOLATION_Switch 
[928]  =  "%.1f",   --      HYD_EMERGENCY_FLT_Switch 
[615]  =  "%.1f",   --      HYD_EMERGENCY_FLT_SwitchCover 
[632]  =  "%.1f",   --      HYD_EMERG_PUMP 





[2]  =  "%.1f",   --      STICK_Pitch 
[1]  =  "%.1f",   --      STICK_Roll 

[19109]  =  "%.1f",   --      BDHI_CompassRing_Pilot 
[19105]  =  "%.1f",   --      BDHI_CompassFlag_Pilot 
[19106]  =  "%.1f",   --      BDHI_CompassRoller_Pilot 
[699]  =  "%.1f",   --      BDHI_NeedleTCN_Pilot 
[700]  =  "%.1f",   --      BDHI_NeedleADF_Pilot 

[701]  =  "%.1f",   --      PILOT_JETT_Light 

[702]  =  "%.1f",   --      BDHI_PILOT_Roller1 
[703]  =  "%.1f",   --      BDHI_PILOT_Roller2 
[704]  =  "%.1f",   --      BDHI_PILOT_Roller3 

[705]  =  "%.1f",   --      BDHI_RIO_Roller1 
[706]  =  "%.1f",   --      BDHI_RIO_Roller2 
[707]  =  "%.1f",   --      BDHI_RIO_Roller3 





[29109]  =  "%.1f",   --      BDHI_CompassRing_RIO 
[29105]  =  "%.1f",   --      BDHI_CompassFlag_RIO 
[29106]  =  "%.1f",   --      BDHI_CompassRoller_RIO 
[20699]  =  "%.1f",   --      BDHI_NeedleTCN_RIO 
[20700]  =  "%.1f",   --      BDHI_NeedleADF_RIO 

[15016]  =  "%.1f",   --      WARN_LGen 
[15017]  =  "%.1f",   --      WARN_LOilHot 
[15018]  =  "%.1f",   --      WARN_LFuelPress 
[15019]  =  "%.1f",   --      WARN_EngFireExt 
[15020]  =  "%.1f",   --      WARN_RGen 
[15021]  =  "%.1f",   --      WARN_RFuelPress 
[15022]  =  "%.1f",   --      WARN_ROilHot 
[15023]  =  "%.1f",   --      WARN_WingSweep 
[15024]  =  "%.1f",   --      WARN_AuxFireExt 
[15025]  =  "%.1f",   --      WARN_YawStabOp 
[15026]  =  "%.1f",   --      WARN_YawStabOut 
[15027]  =  "%.1f",   --      WARN_Canopy 
[15028]  =  "%.1f",   --      WARN_CADC 
[15029]  =  "%.1f",   --      WARN_LFuelLow 
[15030]  =  "%.1f",   --      WARN_WShieldHot 
[15031]  =  "%.1f",   --      WARN_EmergJett 
[15032]  =  "%.1f",   --      WARN_OxyLow 
[15033]  =  "%.1f",   --      WARN_Bingo 
[15034]  =  "%.1f",   --      WARN_HydPress 
[15035]  =  "%.1f",   --      WARN_RFuelLow 
[15036]  =  "%.1f",   --      WARN_MachTrim 
[15037]  =  "%.1f",   --      WARN_PitchStab1 
[15038]  =  "%.1f",   --      WARN_BleedDirty 
[15039]  =  "%.1f",   --      WARN_RollStab1 
[15040]  =  "%.1f",   --      WARN_PitchStab2 
[15041]  =  "%.1f",   --      WARN_AutoPilot 
[15042]  =  "%.1f",   --      WARN_LOvspValve 
[15043]  =  "%.1f",   --      WARN_ROvspValve 
[15044]  =  "%.1f",   --      WARN_RRamp 
[15045]  =  "%.1f",   --      WARN_LaunchBar 
[15046]  =  "%.1f",   --      WARN_Flap 
[15047]  =  "%.1f",   --      WARN_HzTailAuth 
[15048]  =  "%.1f",   --      WARN_OilPress 
[15049]  =  "%.1f",   --      WARN_LRamp 
[15050]  =  "%.1f",   --      WARN_Ladder 
[15051]  =  "%.1f",   --      WARN_RInlet 
[15052]  =  "%.1f",   --      WARN_InletIce 
[15053]  =  "%.1f",   --      WARN_RudderAuth 
[15054]  =  "%.1f",   --      WARN_LInlet 
[15055]  =  "%.1f",   --      WARN_ANRS 
[15056]  =  "%.1f",   --      WARN_RollStab2 
[15057]  =  "%.1f",   --      WARN_Spoilers 
[15058]  =  "%.1f",   --      WARN_TransRect 
[15059]  =  "%.1f",   --      WARN_ReduceSpeed 
[15060]  =  "%.1f",   --      WARN_InterTrim 
[15061]  =  "%.1f",   --      WARN_LEngSec 
[15062]  =  "%.1f",   --      WARN_Rats 
[15063]  =  "%.1f",   --      WARN_StartValve 
[15064]  =  "%.1f",   --      WARN_REngSec 








[752]  =  "%.1f",   --      ENGINE_RightThrottle 
[753]  =  "%.1f",   --      ENGINE_LeftThrottle 

[902]  =  "%.1f",   --      SPOIL_Inboard_Override_Cover 
[903]  =  "%.1f",   --      SPOIL_Outboard_Override_Cover 
[907]  =  "%.1f",   --      SPOIL_Outboard_Override 
[908]  =  "%.1f",   --      SPOIL_Inboard_Override 

[16014]  =  "%.1f",   --  AHRS_HDG_PushButton 
[904]  =  "%.1f",   --  AHRS_HDG_Rotate 
[905]  =  "%.1f",   --  AHRS_ModeSwitch 
[906]  =  "%.1f",   --  AHRS_NorthSouth 
[909]  =  "%.1f",   --  AHRS_LatCorrection 
[1026]  =  "%.1f",   --  AHRS_LatCorrectionDial 

[915]  =  "%.1f",   --      AoA_HookBypass 

[918]  =  "%.1f",   --      LIGHT_Taxi 
[924]  =  "%.1f",   --      LIGHT_RedFloodSwitch 
[921]  =  "%.1f",   --      LIGHT_WhiteFloodSwitch 
[913]  =  "%.1f",   --      LIGHTS_PositionWings 
[916]  =  "%.1f",   --      LIGHTS_PositionTail 
[919]  =  "%.1f",   --      LIGHTS_PositionFlash 
[923]  =  "%.1f",   --      LIGHTS_AntiCol 

[194]  =  "%.1f",   --  LIGHT_RedFloodSwitch_RIO 
[159]  =  "%.1f",   --      LIGHT_WhiteFloodSwitch_RIO 


[926]  =  "%.1f",   --      ELEC_EMERG_GEN_Switch 
[936]  =  "%.1f",   --      ELEC_MASTER_GEN_RightSwitch 
[937]  =  "%.1f",   --      ELEC_MASTER_GEN_LeftSwitch 

[9260]  =  "%.1f",   --      Brake_Pressure_Left 
[9261]  =  "%.1f",   --      Brake_Pressure_Right 

[941]  =  "%.1f",   --      ENGINE_Probe_Anti_Ice 
[942]  =  "%.1f",   --      WINDSHIELD_AIR 
[950]  =  "%.1f",   --      TEMPERATURE 
[938]  =  "%.1f",   --      RAMAIR 
[940]  =  "%.1f",   --      TEMPMANAUTO 

[927]  =  "%.1f",   --      ELEC_EMERG_GEN_SwitchCover 
[56]  =  "%.1f",   --      PEDALS_Brake_Right 
[999]  =  "%.1f",   --      GEAR_WheelsWarningLight 
[999]  =  "%.1f",   --      ELEC_R_GEN_CautionLight 
[999]  =  "%.1f",   --      BRAKE_PressureGauge 
[999]  =  "%.1f",   --      ELEC_TRANS_RECT_AdvisoryLight 
[999]  =  "%.1f",   --      GEAR_TransitionLight 
[999]  =  "%.1f",   --      ELEC_L_GEN_CautionLight 

[2273]  =  "%.1f",   --      WEAP_Gun_Elevation_PlusMinus 

[1001]  =  "%.1f",   --      FUELSYSTEM_WingExt_Trans 

[1002]  =  "%.1f",   --      NAV_Btn_Steer_TCN 
[1003]  =  "%.1f",   --      NAV_Btn_Steer_DEST 
[1004]  =  "%.1f",   --      NAV_Btn_Steer_AWL_PCD 
[1005]  =  "%.1f",   --      NAV_Btn_Steer_VEC 
[1006]  =  "%.1f",   --      NAV_Btn_Steer_MAN 

[1007]  =  "%.1f",   --      DISP_HUD_pitch_bright 
[1008]  =  "%.1f",   --      DISP_HSD_ECMD_power 
[1009]  =  "%.1f",   --      DISP_HUD_power 
[1010]  =  "%.1f",   --      DISP_VDI_power 
[1011]  =  "%.1f",   --      DISP_mode_landing 
[1012]  =  "%.1f",   --      DISP_mode_air2ground 
[1013]  =  "%.1f",   --      DISP_mode_air2air 
[1014]  =  "%.1f",   --      DISP_mode_cruise 
[1015]  =  "%.1f",   --      DISP_mode_takeoff 

[1016]  =  "%.1f",   --      HSD_Display_Mode_Cycle 
[1017]  =  "%.1f",   --      HSD_ECM_Override 

[1018]  =  "%.1f",   --      DISP_VDI_landing_mode 
[1019]  =  "%.1f",   --      DISP_VDI_display_mode 
[1020]  =  "%.1f",   --      DISP_HUD_AWL_mode 
[1021]  =  "%.1f",   --      DISP_HUD_declutter 

[1022]  =  "%.1f",   --      WEAP_Gun_Ammo_adjust 

[1023]  =  "%.1f",   --      HYD_SPOIL_FLAG 
[1024]  =  "%.1f",   --      HYD_EMER_HI_FLAG 
[1025]  =  "%.1f",   --      HYD_EMER_LO_FLAG 

[1026]  =  "%.1f",   --      COMP_DIAL 

[1031]  =  "%.1f",   --      RADIO_UHF_Remote_DISP_BRT_Pilot 
[1030]  =  "%.1f",   --      RADIO_VHF_Remote_DISP_BRT_Pilot 

[1071]  =  "%.1f",   --  MASTER_Reset 

[19100]  =  "%.1f",   --      STDBYADI_off 
[19101]  =  "%.1f",   --      STDBYADI_trim 

[6155]  =  "%.1f",   --      STDBYADI_RIO_uncage 
[6156]  =  "%.1f",   --      STDBYADI_RIO_trim 
[19900]  =  "%.1f",   --      STDBYADI_RIO_off 
[3333]  =  "%.1f",   --      STDBYADI_RIO_Pitch 
[19901]  =  "%.1f",   --      STDBYADI_RIO_Roll 




[1033]  =  "%.1f",   --      VDIG_VDI_handle 
[1034]  =  "%.1f",   --      VDIG_HUD_trim 
[1035]  =  "%.1f",   --      VDIG_VSDI_trim 
[1036]  =  "%.1f",   --      VDIG_VSDI_bright 
[1037]  =  "%.1f",   --      VDIG_HUD_bright 
[1038]  =  "%.1f",   --      VDIG_VDI_contrast 

[1039]  =  "%.1f",   --      HSD_Knob_Heading 
[1040]  =  "%.1f",   --      HSD_Knob_Course 
[1041]  =  "%.1f",   --      HSD_Test 
[1043]  =  "%.1f",   --      HSD_Knob_Brightness 

[1044]  =  "%.1f",   --      FUELSYSTEM_Shutoff_R 

[1046]  =  "%.1f",   --      WEAP_Master_Arm_Cover 
[1047]  =  "%.1f",   --      WEAP_Master_Arm 
[1048]  =  "%.1f",   --      WEAP_ACM_Jettison 
[1049]  =  "%.1f",   --      WEAP_ACM_Cover 

[1050]  =  "%.1f",   --      FUELSYSTEM_Bingo_Knob 

[1051]  =  "%.1f",   --      CLOCK_Wind 
[1000]  =  "%.1f",   --      CLOCK_Timer 

[1052]  =  "%.1f",   --      CLOCK_RIO_WIND 
[1053]  =  "%.1f",   --      CLOCK_RIO_TIMER 

[1054]  =  "%.1f",   --      FUEL_AftL 
[1055]  =  "%.1f",   --      FUEL_FwdR 

[1057]  =  "%.1f",   --      ENGINE_RpmL 
[1058]  =  "%.1f",   --      ENGINE_RpmR 
[1059]  =  "%.1f",   --      ENGINE_TitL 
[1060]  =  "%.1f",   --      ENGINE_TitR 
[1061]  =  "%.1f",   --      ENGINE_FfL 
[1062]  =  "%.1f",   --      ENGINE_FFR 
[1065]  =  "%.1f",   --      ENGINE_OilPressureR 
[1066]  =  "%.1f",   --      ENGINE_OilPressureL 
[1067]  =  "%.1f",   --      ENGINE_NozzleR 
[1068]  =  "%.1f",   --      ENGINE_NozzleL 

[1069]  =  "%.1f",   --      SEL_JETT_GUARD 



[15005]  =  "%.1f",   --      LIGHTS_ACM 
[15006]  =  "%.1f",   --      LIGHTS_INDEXER 
[15007]  =  "%.1f",   --      LIGHTS_INSTRUMENT 
[15008]  =  "%.1f",   --      LIGHTS_CONSOLE 
[15009]  =  "%.1f",   --      LIGHTS_FORMATION 

[193]  =  "%.1f",   --  LIGHTS_INSTRUMENT_RIO 
[192]  =  "%.1f",   --      LIGHTS_CONSOLE_RIO 

[15010]  =  "%.1f",   --      MASTER_TEST_Go 
[15011]  =  "%.1f",   --      MASTER_TEST_NoGo 

[1070]  =  "%.1f",   --      FUELSYSTEM_Shutoff_L 

[1072]  =  "%.1f",   --      BRAKE_AntiSkidAndSpoilerBrake 

[1073]  =  "%.1f",   --      FUELSYSTEM_Refuel_Probe 
[1074]  =  "%.1f",   --      FUELSYSTEM_Dump 
[1076]  =  "%.1f",   --      FUELSYSTEM_Fuel_Qty_Sel 

[4150]  =  "%.1f",   --      RIO_CLOCK_Hours 
[4151]  =  "%.1f",   --      RIO_CLOCK_Minutes 
[4152]  =  "%.1f",   --      RIO_CLOCK_TimerSeconds 
[4153]  =  "%.1f",   --      RIO_CLOCK_Timer 

[4154]  =  "%.1f",   --      RADAR_Altimeter_Bug 

[1096]  =  "%.1f",   --      CLOCK_Hours 
[1097]  =  "%.1f",   --      CLOCK_Minutes 
[1098]  =  "%.1f",   --      CLOCK_TimerSeconds 
[1099]  =  "%.1f",   --      CLOCK_Timer 

[1094]  =  "%.1f",   --      FUELSYSTEM_Fuel_Feed_Cover 
[1095]  =  "%.1f",   --      FUELSYSTEM_Fuel_Feed 

[2000]  =  "%.1f",   --      CLOCK_TimerMinutes 

[2047]  =  "%.1f",   --  SWEEP_MinimumIndex 
[2001]  =  "%.1f",   --      SWEEP_Commanded 
[2002]  =  "%.1f",   --      SWEEP_Position 
[2003]  =  "%.1f",   --      AoA_slider 

[1117]  =  "%.1f",   --      TID_DATA_LINK 
[1116]  =  "%.1f",   --      TID_SYM_ELEM 
[1115]  =  "%.1f",   --      TID_ALT_NUM 
[1118]  =  "%.1f",   --      TID_JAM_STROBE 
[2004]  =  "%.1f",   --      TID_RID_DSBL  -- doesn't seem to work
[2005]  =  "%.5f",   --      TID_mode_knob 
[2006]  =  "%.1f",   --      TID_range_knob 

[50]  =  "%.1f",   --      TID_nav_mode 
[51]  =  "%.1f",   --      TID_dest_mode 

[2007]  =  "%.1f",   --      HCU_IR_TV 
[2008]  =  "%.1f",   --      HCU_RDR 
[2009]  =  "%.1f",   --      HCU_DDD_cursor 
[2010]  =  "%.1f",   --      HCU_TID_cursor 
[2011]  =  "%.1f",   --      HCU_TVIR_enable 
[2012]  =  "%.1f",   --      HCU_WCS_enable 
[2013]  =  "%.1f",   --      HCU_POWER_RESET_BUTTON 
[2014]  =  "%.1f",   --      HCU_LIGHT_TEST_BUTTON 

[2016]  =  "%.1f",   --      ACLS_TEST_LIGHT 

[2031]  =  "%.1f",   --      RADIO_UHF_VOL_Pilot 
[383]  =  "%.1f",   --      RADIO_UHF_VOL_RIO 
[2035]  =  "%.1f",   --      RADIO_UHF_SQL_Pilot 
[2030]  =  "%.1f",   --      RADIO_UHF_FREQ_HUNDRED_TEN_Pilot 
[2029]  =  "%.1f",   --      RADIO_UHF_FREQ_UNIT_Pilot 
[2028]  =  "%.1f",   --      RADIO_UHF_FREQ_TEHTH_Pilot 
[2026]  =  "%.1f",   --      RADIO_UHF_FREQ_HUNDREDTH_Pilot 
[2027]  =  "%.1f",   --      RADIO_UHF_BRT_Pilot 
[2034]  =  "%.1f",   --      RADIO_UHF_FUNC_Pilot 
[2032]  =  "%.1f",   --      RADIO_UHF_CHAN_Pilot 
[2033]  =  "%.1f",   --      RADIO_UHF_FREQ_MODE_Pilot 
[8115]  =  "%.1f",   --  RADIO_UHF_READ_Pilot 
[16009]  =  "%.1f",   --  RADIO_UHF_LOAD_Pilot 
[16010]  =  "%.1f",   --  RADIO_UHF_TONE_Pilot 

[350]  =  "%.1f",   --      RADIO_VHF_VOL_RIO 
[2038]  =  "%.1f",   --  RADIO_VHF_VOL_PILOT 
[351]  =  "%.1f",   --      RADIO_VHF_SQL_RIO 
[354]  =  "%.1f",   --      RADIO_VHF_FREQ_HUNDRED_TEN_RIO 
[355]  =  "%.1f",   --      RADIO_VHF_FREQ_UNIT_RIO 
[356]  =  "%.1f",   --      RADIO_VHF_FREQ_TEHTH_RIO 
[357]  =  "%.1f",   --      RADIO_VHF_FREQ_HUNDREDTH_RIO 
[360]  =  "%.1f",   --      RADIO_VHF_BRT_RIO 
[358]  =  "%.1f",   --      RADIO_VHF_FUNC_RIO 
[352]  =  "%.1f",   --      RADIO_VHF_CHAN_RIO 
[353]  =  "%.1f",   --      RADIO_VHF_FREQ_MODE_RIO 
[359]  =  "%.1f",   --      RADIO_VHF_FM_AM_RIO 
[106]  =  "%.1f",   --      --RADIO_VHF_TOD_RIO 
[100]  =  "%.1f",   --      --RADIO_VHF_NORM_AJ_RIO 



[2040]  =  "%.1f",   --  RADIO_ICS_Vol_ALR45 
[2039]  =  "%.1f",   --  RADIO_ICS_Vol_ALR50 
[2040]  =  "%.1f",   --  RADIO_ICS_Vol_ALR67_Pilot 
[2039]  =  "%.1f",   --  RADIO_ICS_Vol_Sidewinder 

[2048]  =  "%.1f",   --      RADIO_ICS_Vol_Pilot 
[2045]  =  "%.1f",   --      RADIO_ICS_Ampl_Pilot 
[2044]  =  "%.1f",   --      RADIO_ICS_Func_Pilot 

[8109]  =  "%.1f",   --  RADIO_ICS_HotMic_Pilot 

[400]  =  "%.1f",   --  RADIO_ICS_Vol_RIO 
[401]  =  "%.1f",   --      RADIO_ICS_Ampl_RIO 
[402]  =  "%.1f",   --      RADIO_ICS_Func_RIO 

[490]  =  "%.1f",   --      TID_STBY_LIGHT 
[491]  =  "%.1f",   --      TID_READY_LIGHT 

[492]  =  "%.1f",   --      RIO_LAUNCH_LIGHT 

[493]  =  "%.1f",   --      DECM_LIGHT 

[494]  =  "%.1f",   --      CANOPY_VISIBILITY_INT 

[495]  =  "%.1f",   --      RIO_Ejection_Seat_Visibility 



[116]  =  "%.1f",   --  RADIO_KY28_POWER_MODE 
[115]  =  "%.1f",   --  RADIO_KY28_RADIO_SELECTOR 
[361]  =  "%.1f",   --  RADIO_KY28_ZEROIZE 
[150]  =  "%.1f",   --  RADIO_KY28_ZEROIZE_COVER 

[2049]  =  "%.1f",   --      EJECT_CMD_Lever 

[2100]  =  "%.1f",   --      INLET_RAMPS_LeftSwitch 
[2101]  =  "%.1f",   --      INLET_RAMPS_RightSwitch 

[2102]  =  "%.1f",   --      ENGINE_Crank 
[2103]  =  "%.1f",   --      ENGINE_Throttle_Temp 
[2104]  =  "%.1f",   --      ENGINE_Throttle_Mode 
[2105]  =  "%.1f",   --      ENGINE_Air_Start 

[2106]  =  "%.1f",   --      AFCS_Stability_Pitch 
[2107]  =  "%.1f",   --      AFCS_Stability_Roll 
[2108]  =  "%.1f",   --      AFCS_Stability_Yaw 

[2109]  =  "%.1f",   --      AP_Vector 
[2110]  =  "%.1f",   --      AP_Altitude 
[2111]  =  "%.1f",   --      AP_Heading 
[2112]  =  "%.1f",   --      AP_Engage 
[2113]  =  "%.1f",   --      TID_LAUNCH_ZONE 
[2114]  =  "%.1f",   --      TID_VEL_VECTOR 

[2114]  =  "%.1f",   --      --Pilot Stdby ADI Pullout (Cage) 
[2115]  =  "%.1f",   --      --RIO Stdby ADI Twist 
[2116]  =  "%.1f",   --      --RIO Stdby ADI pullout 

[8114]  =  "%.1f",   --      ENVIRO_PilotOxygenOn 
[119]  =  "%.1f",   --  ENVIRO_RIOOxygenOn 
[939]  =  "%.1f",   --  ENVIRO_CabinPressureDump 
[929]  =  "%.1f",   --  ENVIRO_AirSourceRam 
[933]  =  "%.1f",   --  ENVIRO_AirSourceOff 
[930]  =  "%.1f",   --  ENVIRO_AirSourceLEng 
[931]  =  "%.1f",   --  ENVIRO_AirSourceREng 
[932]  =  "%.1f",   --      ENVIRO_AirSourceBoth 
[935]  =  "%.1f",   --      ENVIRO_CabinPressureNeedle 
[2999]  =  "%.1f",   --      ENVIRO_LiquidOxygen_OFF_Flag 

[910]  =  "%.1f",   --      ARA63_Power_Switch 
[911]  =  "%.1f",   --      ARA63_BIT_Btn 
[912]  =  "%.1f",   --      ARA63_Chnl_Knob 


[135]  =  "%.1f",   --      TACAN_CMD_Btn_RIO 

[2022]  =  "%.1f",   --      WEAP_ATTK_Mode 


[2199]  =  "%.1f",   --      rAnnunc_OXYLOW 
[2200]  =  "%.1f",   --      rAnnunc_MCAUT 
[2201]  =  "%.1f",   --      rAnnunc_IFF 
[2202]  =  "%.1f",   --      rAnnunc_RCV 
[2203]  =  "%.1f",   --      rAnnunc_XMIT 
[2204]  =  "%.1f",   --      rAnnunc_SAM 
[2205]  =  "%.1f",   --      rAnnunc_AAA 
[2206]  =  "%.1f",   --      rAnnunc_CW 
[2208]  =  "%.1f",   --      rAnnunc_AI 

[2209]  =  "%.1f",   --      rAnnunc_CDHOT 
[2210]  =  "%.1f",   --      rAnnunc_CABINPRESS 
[2211]  =  "%.1f",   --      rAnnunc_FUELLOW 
[2212]  =  "%.1f",   --      rAnnunc_CANOPY 
[2213]  =  "%.1f",   --      rAnnunc_FUZEHV 
[2214]  =  "%.1f",   --      rAnnunc_RDRENABLED 
[2215]  =  "%.1f",   --      rAnnunc_COOLINGAIR 
[2216]  =  "%.1f",   --      rAnnunc_MSLCOND 
[2217]  =  "%.1f",   --      rAnnunc_AWG9COND 
[2218]  =  "%.1f",   --      rAnnunc_NAVCOMP 
[2219]  =  "%.1f",   --      rAnnunc_FILMLOW 
[2220]  =  "%.1f",   --      rAnnunc_IMU 
[2221]  =  "%.1f",   --      rAnnunc_AHRS 

[2222]  =  "%.1f",   --      rAnnunc_WAVEOFF 
[2223]  =  "%.1f",   --      rAnnunc_LANDCHK 
[2224]  =  "%.1f",   --      rAnnunc_ACLBEAC 
[2225]  =  "%.1f",   --      rAnnunc_ACLRDY 
[2226]  =  "%.1f",   --      rAnnunc_APCPLR 
[2227]  =  "%.1f",   --      rAnnunc_10SEC 
[2228]  =  "%.1f",   --      rAnnunc_ADJAC 
[2229]  =  "%.1f",   --      rAnnunc_VOICE 
[2230]  =  "%.1f",   --      rAnnunc_TILT 
[2231]  =  "%.1f",   --      rAnnunc_CMDCHG 
[2232]  =  "%.1f",   --      rAnnunc_ALTCHG 
[2233]  =  "%.1f",   --      rAnnunc_MONALT 
[2234]  =  "%.1f",   --      rAnnunc_MANUAL 
[2235]  =  "%.1f",   --      rAnnunc_SPDCHG 
[2236]  =  "%.1f",   --      rAnnunc_MONSPD 
[2237]  =  "%.1f",   --      rAnnunc_CMDCTRL 
[2238]  =  "%.1f",   --      rAnnunc_CHGCHN 
[2239]  =  "%.1f",   --      rAnnunc_HDGCHN 
[2240]  =  "%.1f",   --      rAnnunc_CANCRPY 
[2241]  =  "%.1f",   --      rAnnunc_FWDVEC 
[2242]  =  "%.1f",   --      rAnnunc_AFTVEC 
[2243]  =  "%.1f",   --      rAnnunc_COIVEC 
[2244]  =  "%.1f",   --      rAnnunc_NOMSG 
[2245]  =  "%.1f",   --      rAnnunc_TOWAYPT 
[2246]  =  "%.1f",   --      rAnnunc_HANDOVER 
[2247]  =  "%.1f",   --      rAnnunc_ORBIT 
[2248]  =  "%.1f",   --      rAnnunc_CHALNGE 
[2249]  =  "%.1f",   --      rAnnunc_ARM1 
[2250]  =  "%.1f",   --      rAnnunc_ARM2 
[2251]  =  "%.1f",   --      rAnnunc_ARM3 
[2252]  =  "%.1f",   --      rAnnunc_NOTCMD 
[2253]  =  "%.1f",   --      rAnnunc_FRELAN 
[2254]  =  "%.1f",   --      rAnnunc_DISGAGE 
[2255]  =  "%.1f",   --      rAnnunc_ABORT 
[2256]  =  "%.1f",   --      rAnnunc_BEACON 
[2257]  =  "%.1f",   --      rAnnunc_BEACDUB 
[2258]  =  "%.1f",   --      rAnnunc_DROP 
[2259]  =  "%.1f",   --      rAnnunc_BEACOFF 
[2260]  =  "%.1f",   --      rAnnunc_RETBASE 




[2036]  =  "%.1f",   --      TACAN_Knob_Vol_Pilot 
[2041]  =  "%.1f",   --      TACAN_Knob_Func_Pilot 
[2042]  =  "%.1f",   --      TACAN_Mode_Norm_Inv_Pilot 
[2043]  =  "%.1f",   --      TACAN_Mode_X_Y_Pilot 
[2115]  =  "%.1f",   --      TACAN_Btn_BIT_Pilot 

[375]  =  "%.1f",   --      TACAN_Knob_Vol_RIO 
[374]  =  "%.1f",   --      TACAN_Knob_Func_RIO 
[373]  =  "%.1f",   --      TACAN_Mode_Norm_Inv_RIO 
[372]  =  "%.1f",   --      TACAN_Mode_X_Y_RIO 
[371]  =  "%.1f",   --      TACAN_Btn_BIT_RIO 

[380]  =  "%.1f",   --      RIO_UHF_UPR_LWR 
[381]  =  "%.1f",   --      RADIO_ICS_XMTR_SEL_RIO 
[382]  =  "%.1f",   --      RIO_KY_MODE 


[2121]  =  "%.1f",   --      RADAR_Elevation_arrow 
[2122]  =  "%.1f",   --      TCS_Elevation_arrow 
[2117]  =  "%.4f",   --      FUEL_TotalFuelRIO10k 
[2118]  =  "%.1f",   --      FUEL_TotalFuelRIO1k 
[2119]  =  "%.1f",   --      FUEL_TotalFuelRIO100 
[2120]  =  "%.1f",   --      FUEL_TotalFuelRIO10 
[2135]  =  "%.1f",   --      FUEL_TotalFuelRIO1 

[2136]  =  "%.1f",   --      ALR67_RIO_RWR_DISPLAY_TYPE 
[2137]  =  "%.1f",   --      ALR67_RIO_RWR_MODE 
[2138]  =  "%.1f",   --      ALR67_RIO_RWR_VOL 
[2139]  =  "%.1f",   --      ALR67_RIO_RWR_PWR 
[2140]  =  "%.1f",   --      ALR67_RIO_RWR_TEST 

[3001]  =  "%.1f",   --      STDBYADI_Pitch 
[3002]  =  "%.1f",   --      STDBYADI_Roll 

[3450]  =  "%.1f",   --      TID_Light 

[3760]  =  "%.1f",   --      AOA_Slow 
[3761]  =  "%.1f",   --      AOA_Optimum 
[3762]  =  "%.1f",   --      AOA_Fast 

[4001]  =  "%.1f",   --  CockpitRandomArg1 
[4002]  =  "%.1f",   --  CockpitRandomArg2 
[4003]  =  "%.1f",   --  CockpitRandomArg3 
[4004]  =  "%.1f",   --  CockpitRandomArg4 
[4005]  =  "%.1f",   --  CockpitRandomArg5 

[4060]  =  "%.1f",   --      AMMO_Hundreds 
[4061]  =  "%.1f",   --      AMMO_Tens 
[4062]  =  "%.1f",   --      AMMO_Ones 
[2270]  =  "%.1f",   --      WEAP_Gun_lead_Hundreds 
[2271]  =  "%.1f",   --      WEAP_Gun_lead_Tens 
[2272]  =  "%.1f",   --      WEAP_Gun_lead_Ones 


[5550]  =  "%.1f",   --      CAP_light_CLEAR 
[5551]  =  "%.1f",   --      CAP_light_SW 
[5552]  =  "%.1f",   --      CAP_light_NE 
[5553]  =  "%.1f",   --      CAP_light_ENTER 
[5554]  =  "%.1f",   --      CAP_light_1 
[5555]  =  "%.1f",   --      CAP_light_2 
[5556]  =  "%.1f",   --      CAP_light_3 
[5557]  =  "%.1f",   --      CAP_light_4 
[5558]  =  "%.1f",   --      CAP_light_5 
[5559]  =  "%.1f",   --      CAP_light_6 
[5560]  =  "%.1f",   --      CAP_light_7 
[5561]  =  "%.1f",   --      CAP_light_8 
[5562]  =  "%.1f",   --      CAP_light_9 
[5563]  =  "%.1f",   --      CAP_light_0 
[5564]  =  "%.1f",   --      CAP_light_msg_btn6 
[5565]  =  "%.1f",   --      CAP_light_msg_btn7 
[5566]  =  "%.1f",   --      CAP_light_msg_btn8 
[5567]  =  "%.1f",   --      CAP_light_msg_btn9 
[5568]  =  "%.1f",   --      CAP_light_msg_btn1 
[5569]  =  "%.1f",   --      CAP_light_msg_btn2 
[5570]  =  "%.1f",   --      CAP_light_msg_btn3 
[5571]  =  "%.1f",   --      CAP_light_msg_btn4 
[5572]  =  "%.1f",   --      CAP_light_msg_btn5 
[5573]  =  "%.1f",   --      CAP_light_TNG_NBR 
[5574]  =  "%.1f",   --      CAP_light_PGM_RESTART 

[5590]  =  "%.1f",   --      CAP_light_msg_btn10 

[6000]  =  "%.1f",   --      FUEL_LFuelDial1k 
[6001]  =  "%.1f",   --      FUEL_LFuelDial100 
[6002]  =  "%.1f",   --      FUEL_LFuelDial10 
[6003]  =  "%.1f",   --      FUEL_LFuelDial1 
[6004]  =  "%.1f",   --      FUEL_RFuelDial1k 
[6005]  =  "%.1f",   --      FUEL_RFuelDial100 
[6006]  =  "%.1f",   --      FUEL_RFuelDial10 
[6007]  =  "%.1f",   --      FUEL_RFuelDial1 
[6010]  =  "%.4f",   --      FUEL_TotalFuel10k 
[6011]  =  "%.1f",   --      FUEL_TotalFuel1k 
[6012]  =  "%.1f",   --      FUEL_TotalFuel100 
[6013]  =  "%.1f",   --      FUEL_TotalFuel10 
[6014]  =  "%.1f",   --      FUEL_TotalFuel1 
[6020]  =  "%.4f",   --      FUEL_BingoFuel10k 
[6021]  =  "%.1f",   --      FUEL_BingoFuel1k 
[6022]  =  "%.1f",   --      FUEL_BingoFuel100 
[6023]  =  "%.1f",   --      FUEL_BingoFuel10 
[6024]  =  "%.1f",   --      FUEL_BingoFuel1 

[1032]  =  "%.1f",   --      STDBY_ADI_Push 
[1042]  =  "%.1f",   --      STDBY_ADI_Twist 



[6100]  =  "%.1f",   --      DDD_range_roller 
[6101]  =  "%.1f",   --      TID_readout_src_roller 
[6102]  =  "%.1f",   --      DDD_radar_mode 
[6103]  =  "%.1f",   --      TID_steering_roller 

[6111]  =  "%.1f",   --      DDD_mode_light_rdr 
[6112]  =  "%.1f",   --      DDD_mode_light_ir 
[6113]  =  "%.1f",   --      DDD_mode_light_iff 
[6114]  =  "%.1f",   --      DDD_mode_light_pdstt 
[6115]  =  "%.1f",   --      DDD_mode_light_pstt 
[6116]  =  "%.1f",   --      DDD_mode_light_pdsearch 
[6117]  =  "%.1f",   --      DDD_mode_light_rws 
[6118]  =  "%.1f",   --      DDD_mode_light_tws_auto 
[6119]  =  "%.1f",   --      DDD_mode_light_tws_man 
[6120]  =  "%.1f",   --      DDD_mode_light_psearch 
[6121]  =  "%.1f",   --      CCM_mode_light_spl 
[6122]  =  "%.1f",   --      CCM_mode_light_altoff 
[6123]  =  "%.1f",   --      CCM_mode_light_vgs 

[6125]  =  "%.1f",   --      TID_trackhold_light 
[6126]  =  "%.1f",   --      TID_CLSN_light 
[6127]  =  "%.1f",   --      TID_option_light_riddsbl 
[6128]  =  "%.1f",   --      TID_option_light_altnum 
[6129]  =  "%.1f",   --      TID_option_light_symelem 
[6130]  =  "%.1f",   --      TID_option_light_datalink 
[6131]  =  "%.1f",   --      TID_option_light_jam 
[6132]  =  "%.1f",   --      TID_option_light_nonattk 
[6133]  =  "%.1f",   --      TID_option_light_LZ 
[6134]  =  "%.1f",   --      TID_option_light_velvec 
[6135]  =  "%.1f",   --      HCU_mode_light_TVIR 
[6136]  =  "%.1f",   --      HCU_mode_light_RDR 
[6137]  =  "%.1f",   --      HCU_mode_light_DDD 
[6138]  =  "%.1f",   --      HCU_mode_light_TID 

[8050]  =  "%.1f",   --      TACAN_LIGHT_GO_Pilot 
[8051]  =  "%.1f",   --      TACAN_LIGHT_NOGO_Pilot 

[8052]  =  "%.1f",   --      RIO_IFF_TEST_LIGHT 
[8053]  =  "%.1f",   --      RIO_IFF_REPLY_LIGHT 

[8300]  =  "%.1f",   --      NOSEGEAR_OffFlag 
[8301]  =  "%.1f",   --      NOSEGEAR_Indicator 

[8302]  =  "%.1f",   --      L_GEAR_Indicator 
[8303]  =  "%.1f",   --      L_GEAR_OffFlag 

[8304]  =  "%.1f",   --      R_GEAR_OffFlag 
[8305]  =  "%.1f",   --      R_GEAR_Indicator 

[15001]  =  "%.1f",   --      Landing_Gear_Light 
[15002]  =  "%.1f",   --      Refuel_probe_light 
[15004]  =  "%.1f",   --      UHF_Test_Button_Pilot 
[15003]  =  "%.1f",   --      VHF_Test_Button_Pilot 

[15090]  =  "%.1f",   --      Hook_Light 

[15091]  =  "%.1f",   --      Wingsweep_Flag_OFF 
[15092]  =  "%.1f",   --      Wingsweep_Flag_AUTO 
[15093]  =  "%.1f",   --      Wingsweep_Flag_MAN 
[15094]  =  "%.1f",   --      Wingsweep_Flag_EMER 
[15095]  =  "%.1f",   --      Wingsweep_Flag_OVER 

[15096]  =  "%.1f",   --      Wingsweep_Lever_Popout 

[15097]  =  "%.1f",   --      Stdby_Compass_Roll 
[15098]  =  "%.1f",   --      Master_test_knob_push 


[8306]  =  "%.1f",   --      SPDBRK_OffFlag 
[8307]  =  "%.1f",   --      SPDBRK_In_and_Partial 
[8308]  =  "%.1f",   --      SPDBRK_Full 

[8309]  =  "%.1f",   --      SLATS_OffFlag 
[8310]  =  "%.1f",   --      SLATS_Indicator 

[8311]  =  "%.1f",   --      FLAPS_Indicator 

[8315]  =  "%.1f",   --      SPOILER_DN_OuterLeft 
[8316]  =  "%.1f",   --      SPOILER_DN_InnerLeft 
[8317]  =  "%.1f",   --      SPOILER_DN_InnerRight 
[8318]  =  "%.1f",   --      SPOILER_DN_OuterRight 
[8319]  =  "%.1f",   --      SPOILER_Indicator_OuterLeft 
[8320]  =  "%.1f",   --      SPOILER_Indicator_InnerLeft 
[8321]  =  "%.1f",   --      SPOILER_Indicator_OuterRight 
[8322]  =  "%.1f",   --      SPOILER_Indicator_InnterRight 

[1090]  =  "%.1f",   --      STABILATOR_Indicator_Left 
[1091]  =  "%.1f",   --      STABILATOR_Indicator_Right 

[1092]  =  "%.1f",   --      RUDDER_Indicator_Left 
[1093]  =  "%.1f",   --      RUDDER_Indicator_Right 

[8888]  =  "%.1f",   --      TACAN_Dial_Outer_Pilot 
[8889]  =  "%.1f",   --      TACAN_Dial_Inner_Pilot 
[8890]  =  "%.1f",   --      TACAN_Dial_Inner_RIO 
[8891]  =  "%.1f",   --      TACAN_Dial_Outer_RIO 
[8892]  =  "%.1f",   --      TACAN_LIGHT_NOGO_RIO 
[8893]  =  "%.1f",   --      TACAN_LIGHT_GO_RIO 

[9199]  =  "%.1f",   --      WEAP_Master_Caution_Button 

[9200]  =  "%.1f",   --      WEAP_Master_Caution 
[9201]  =  "%.1f",   --      WEAP_Hot_Trig 
[9202]  =  "%.1f",   --      WEAP_Collision 
[9203]  =  "%.1f",   --      WEAP_SEAM_lock 
[9204]  =  "%.1f",   --      WEAP_gunrate_high 
[9205]  =  "%.1f",   --      WEAP_gunrate_low 
[9206]  =  "%.1f",   --      WEAP_SW_Cool_on 
[9207]  =  "%.1f",   --      WEAP_SW_Cool_off 
[9208]  =  "%.1f",   --      WEAP_MSL_Prep_on 
[9209]  =  "%.1f",   --      WEAP_MSL_Prep_off 
[9210]  =  "%.1f",   --      WEAP_MSL_Mode_norm 
[9211]  =  "%.1f",   --      WEAP_MSL_Mode_boresight 
[9221]  =  "%.1f",   --      WEAP_store_1a 
[9222]  =  "%.1f",   --      WEAP_store_1b 
[9223]  =  "%.1f",   --      WEAP_store_3 
[9224]  =  "%.1f",   --      WEAP_store_4 
[9225]  =  "%.1f",   --      WEAP_store_5 
[9226]  =  "%.1f",   --      WEAP_store_6 
[9227]  =  "%.1f",   --      WEAP_store_8b 
[9228]  =  "%.1f",   --      WEAP_store_8a 
[16000]  =  "%.1f",   --      WEAP_GunRateButton 
[16001]  =  "%.1f",   --      WEAP_SWCoolButton 
[16002]  =  "%.1f",   --      WEAP_MSLPrepButton 
[16003]  =  "%.1f",   --      WEAP_ModeSTPButton 

[16004]  =  "%.1f",   --      AOA_Indicator_OFF_Flag 

[16005]  =  "%.1f",   --      ASYM_Limiter_Flipcover 
[16006]  =  "%.1f",   --      ASYM_Limiter_Switch 

[16007]  =  "%.1f",   --      ENG_Mode_L 
[16008]  =  "%.1f",   --      ENG_Mode_R 

[16012]  =  "%.1f",   --      VDI_Realtime_Light 
[16013]  =  "%.1f",   --      HUD_Realtime_Light 

[260]  =  "%.1f",   --  DDD_Realtime_Light 
[3450]  =  "%.1f",   --      TID_Realtime_Light 

[16015]  =  "%.1f",   --      Gear_emergency_down 

[16016]  =  "%.1f",   --      RECORD_Knob_Reset 


[9360]  =  "%.1f",   --      ADV_ADJAC 
[9361]  =  "%.1f",   --  ADV_LandingChk 
[9362]  =  "%.1f",   --  ADV_ACLReady 
[9363]  =  "%.1f",   --  ADV_APCPLR 
[9364]  =  "%.1f",   --  ADV_CMDControl 
[9365]  =  "%.1f",   --  ADV_TenSeconds 
[9366]  =  "%.1f",   --  ADV_TILT 
[9367]  =  "%.1f",   --  ADV_Voice 
[9368]  =  "%.1f",   --  ADV_AutoThrottle 
[9369]  =  "%.1f",   --      ADV_APRef 



[15070]  =  "%.1f",   --      LIGHT_WAVE_OFF 
[15071]  =  "%.1f",   --      LIGHT_WING_SWEEP 
[15072]  =  "%.1f",   --      LIGHT_REDUCESPD 
[15073]  =  "%.1f",   --      LIGHT_ALTLOW 


[9350]  =  "%.1f",   --  HUD_Wheels 
[9351]  =  "%.1f",   --  HUD_Brakes 
[9352]  =  "%.1f",   --  HUD_ACLAP 
[9353]  =  "%.1f",   --  HUD_NWSEnga 
[9354]  =  "%.1f",   --      HUD_AutoThrottle 

[9355]  =  "%.1f",   --      HUD_RStall 
[9356]  =  "%.1f",   --      HUD_LStall 

[9357]  =  "%.1f",   --      HUD_SAM 
[9358]  =  "%.1f",   --      HUD_AAA 
[9359]  =  "%.1f",   --      HUD_AI  



[9960]  =  "%.1f",   --      WEAP_Interval_10s 
[9961]  =  "%.1f",   --      WEAP_Interval_100s 
[9962]  =  "%.1f",   --      WEAP_Quantity_10s 
[9963]  =  "%.1f",   --      WEAP_Quantity_1s 
[9964]  =  "%.1f",   --      WEAP_Next_launch 

[11500]  =  "%.1f",   --      HCU_joystick_rightleft 
[11501]  =  "%.1f",   --      HCU_joystick_backfore 

[11503]  =  "%.1f",   --      DDD_ANT_TRK_light 
[11504]  =  "%.1f",   --      DDD_RDROT_light 
[11505]  =  "%.1f",   --      DDD_JAT_light 
[11506]  =  "%.1f",   --      DDD_IROT_light 

[11600]  =  "%.1f",   --      RECORD_minutes_hi 
[11601]  =  "%.1f",   --      RECORD_minutes_med 
[11602]  =  "%.1f",   --      RECORD_minutes_low 

[224]  =  "%.1f",   --      CANOPY_Jettison 
[122]  =  "%.1f",   --  RIO_STORAGE_BOX 


[497]  =  "%.1f",   --      GEAR_LaunchBarAbort 
[496]  =  "%.1f",   --      GEAR_LaunchBarAbortCover 

[498]  =  "%.1f",   --      RIO_SEAT_SAFETY 

[666]  =  "%.1f",   --  LANTIRN_Panel_Visibility 

[667]  =  "%.1f",   --      LANTIRN_RotaryKnob 
[668]  =  "%.1f",   --      LANTIRN_Laser 
[669]  =  "%.1f",   --      LANTIRN_MODE 
[670]  =  "%.1f",   --      LANTIRN_Video 
[671]  =  "%.1f",   --      LANTIRN_Button 

[672]  =  "%.1f",   --      LANTIRN_RedButton 

[673]  =  "%.1f",   --      LANTIRN_OPERSTBY 
[674]  =  "%.1f",   --      LANTIRN_IMUGPS 
[675]  =  "%.1f",   --      LANTIRN_LGPFLIR 
[676]  =  "%.1f",   --      LANTIRN_MUXEGU 
[677]  =  "%.1f",   --      LANTIRN_LASERSERVO 
[678]  =  "%.1f",   --      LANTIRN_FLIRTCS 
[679]  =  "%.1f",   --      LANTIRN_IBIT 
[680]  =  "%.1f",   --      LANTIRN_LASERARMED 

[38]  =  "%.1f",   --  CANOPY_Open 

[404]  =  "%.1f",   --      WINGS_LeftSweep 

[1022]  =  "%.1f",   --      CONTROL_LeftOuterSlats 
[509]  =  "%.1f",   --      CONTROL_LeftRudder 


[25]  =  "%.1f",   --      GEARHOOK_Hook 
[1305]  =  "%.1f",   --      GEARHOOK_Visual 

[28]  =  "%.1f",   --  ENGINE_RightAB_Dummy 
[435]  =  "%.1f",   --      ENGINE_RightAB 
[500]  =  "%.1f",   --  ENGINE_RightAB_Stage4 
[29]  =  "%.1f",   --  ENGINE_LeftAB_Dummy 
[436]  =  "%.1f",   --      ENGINE_LeftAB 
[501]  =  "%.1f",   --  ENGINE_LeftAB_Stage4 
[434]  =  "%.1f",   --      ENGINE_LeftNozzle 
[433]  =  "%.1f",   --      ENGINE_RightNozzle 
[5353]  =  "%.1f",   --      ENGINE_LeftFan 
[5352]  =  "%.1f",   --      ENGINE_RightFan 

[85]  =  "%.1f",   --      GEARHOOK_LaunchBar 

[400]  =  "%.1f",   --      CONTROL_TopSpeedBrake 
[401]  =  "%.1f",   --      CONTROL_BottomLeftSpeedBrake 
[402]  =  "%.1f",   --      CONTROL_BottomRightSpeedBrake 

[405]  =  "%.1f",   --      WINGS_RightSweep 
[507]  =  "%.1f",   --      WINGS_LeftOverSweep 
[508]  =  "%.1f",   --      WINGS_RightOverSweep 

[450]  =  "%.1f",   --      CONTROL_LeftStabilator 
[406]  =  "%.1f",   --      CONTROL_RightStabilator 

[1609]  =  "%.1f",   --      AICS_LeftRamp1  --500
[1610]  =  "%.1f",   --      AICS_LeftRamp2  --501
[1611]  =  "%.1f",   --      AICS_RightRamp1  --502
[1612]  =  "%.1f",   --      AICS_RightRamp2  --503

[600]  =  "%.1f",   --      WEAP_Front_Phoenix_rails 
[601]  =  "%.1f",   --      WEAP_Front_Phoenix_left_plug 
[602]  =  "%.1f",   --      WEAP_Front_Phoenix_right_plug 
[603]  =  "%.1f",   --      WEAP_Rear_Phoenix_left_plug 
[604]  =  "%.1f",   --      WEAP_Rear_Phoenix_right_plug 
[605]  =  "%.1f",   --      WEAP_Rear_Phoenix_rails 
[606]  =  "%.1f",   --      WEAP_LANTIRN 
[607]  =  "%.1f",   --      WEAP_LANTIRN_Rotate1 
[608]  =  "%.1f",   --      WEAP_LANTIRN_Rotate2 

[999]  =  "%.1f",   --      FUEL_FuelDumpTorchHor 
[999]  =  "%.1f",   --      FUEL_FuelDumpTorchVert 
[22]  =  "%.1f",   --      FUEL_FuelProbe 
[999]  =  "%.1f",   --      FUEL_FuelDump 
[999]  =  "%.1f",   --      FUEL_FuelDumpTorch 

[999]  =  "%.1f",   --      CONTROL_LeftInnerSlats 
[999]  =  "%.1f",   --      CONTROL_RightInnerSlats 
[1004]  =  "%.1f",   --      CONTROL_LeftAuxFlaps 
[1001]  =  "%.1f",   --      CONTROL_LeftMainFlaps 
[1003]  =  "%.1f",   --      CONTROL_RightMainFlaps 
[1002]  =  "%.1f",   --      CONTROL_RightAuxFlaps 

[1500]  =  "%.1f",   --      WINGS_LeftFlex 
[1501]  =  "%.1f",   --      WINGS_RightFlex 

[1010]  =  "%.1f",   --      CONTROL_LeftOuterSpoiler 
[1011]  =  "%.1f",   --      CONTROL_LeftInnerSpoiler 
[1012]  =  "%.1f",   --      CONTROL_RightInnerSpoiler 
[1013]  =  "%.1f",   --      CONTROL_RightOuterSpoiler 
[1020]  =  "%.1f",   --      CONTROL_RightRudder 
[1021]  =  "%.1f",   --      CONTROL_RightOuterSlats 

[6000]  =  "%.1f",   --  PILOT_Left_Right 
[6001]  =  "%.1f",   --      PILOT_Up_Down 
[1600]  =  "%.1f",   --      PILOT_Salute 
[6002]  =  "%.1f",   --      PILOT_LeanSideways 

[1601]  =  "%.1f",   --      RIO_Lean_And_Grab 
[1603]  =  "%.1f",   --      RIO_Hold_On 
[1605]  =  "%.1f",   --      RIO_Right_Left 
[1607]  =  "%.1f",   --      RIO_Up_Down 
[6003]  =  "%.1f",   --      RIO_LeanSideways 
[6004]  =  "%.1f",   --      RIO_LeanForward 

[1608]  =  "%.1f",   --      DDD_Lamp 

[1614]  =  "%.1f",   --      PILOT_Lean_Forward 
[1615]  =  "%.1f",   --      PILOT_Lean_Back 

[16]  =  "%.1f",   --  DUMMY_LeftElevator 
[15]  =  "%.1f",   --  DUMMY_RightElevator 
[12]  =  "%.1f",   --  DUMMY_LeftAileron 
[11]  =  "%.1f",   --      DUMMY_RightAileron 

[3600]  =  "%.1f",   --      Sync1 
[3601]  =  "%.1f",   --      Sync2 
[3602]  =  "%.1f",   --      Sync3 
[3603]  =  "%.1f",   --      Sync4 

[51]  =  "%.1f",   --  LIGHTS_Taxi 
[200]  =  "%.1f",   --  LIGHTS_Formation 
[84]  =  "%.1f",   --  LIGHTS_Approach 
[609]  =  "%.1f",   --  LIGHTS_Approach_Bright_Dim_Switch 
[610]  =  "%.1f",   --  LIGHTS_Fuel_Probe 
[611]  =  "%.1f",   --  LIGHTS_Position_Wing 
[612]  =  "%.1f",   --  LIGHTS_Position_Glove 
[613]  =  "%.1f",   --  LIGHTS_Position_Tail 
[620]  =  "%.1f",   --  LIGHTS_Anticollision 
[614]  =  "%.1f",   --  LIGHTS_Anticollision_Bottom 
[615]  =  "%.1f",   --  LIGHTS_External_Dummy 
[621]  =  "%.1f",   --  LIGHTS_Disable_Ext 
[625]  =  "%.1f",   --  LIGHTS_External_Dummy2 

[626]  =  "%.1f",   --  RIO_Right_Left_Dummy 
[627]  =  "%.1f",   --  RIO_Up_Down_Dummy 
 

}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
[15082] = "%1d",   -- Fire Ext Bottle - Right, (1, 0, 1)
[15083] = "%1d",   -- Fire Ext Bottle - Left, (1, 0, 1)
--   ACCELEROMETER(24)
[228] = "%1d",   -- Accelerometer Reset, (1, 0, 1)
--   AFCS(21)
[2112] = "%1d",   -- Autopilot - Engage, (-2, -1, 1)
[2106] = "%1d",   -- AFCS Stability Augmentation - Pitch, (-1, 0, 1)
[2107] = "%1d",   -- AFCS Stability Augmentation - Roll, (-1, 0, 1)
[2108] = "%1d",   -- AFCS Stability Augmentation - Yaw, (-1, 0, 1)
[2109] = "%1d",   -- Autopilot - Vector / Automatic Carrier Landing, (-1, -1, 1)
[2110] = "%1d",   -- Autopilot - Altitude Hold, (-1, 0, 1)
[2111] = "%1d",   -- Autopilot - Heading / Ground Track, (-1, -1, 1)
[2106] = "%1d",   -- AFCS Stability Augmentation - Pitch, (1, 0, 1)
[2107] = "%1d",   -- AFCS Stability Augmentation - Roll, (1, 0, 1)
[2108] = "%1d",   -- AFCS Stability Augmentation - Yaw, (1, 0, 1)
[2109] = "%1d",   -- Autopilot - Vector / Automatic Carrier Landing, (1, -1, 1)
[2110] = "%1d",   -- Autopilot - Altitude Hold, (1, 0, 1)
[2111] = "%1d",   -- Autopilot - Heading / Ground Track, (1, -1, 1)
[2112] = "%1d",   -- Autopilot - Engage, (2, -1, 1)
--   AHRS(51)
[905] = "%1d",   -- Compass Mode, (-1, -1, 1)
[906] = "%1d",   -- Compass N-S Hemisphere, (-1, 0, 1)
[909] = "%1d",   -- Compass LAT Correction, (0, 0, 1)
[904] = "%1d",   -- Compass HDG Slave Knob/nPush (Left Mouse Button) and rotate (Right Mouse Button), (1, -1, 1)
[905] = "%1d",   -- Compass Mode, (1, -1, 1)
[906] = "%1d",   -- Compass N-S Hemisphere, (1, 0, 1)
[16014] = "%1d",   -- Compass HDG Slave Knob/nPush (Left Mouse Button) and rotate (Right Mouse Button), (1, 0, 1)
--   AICS(13)
[2100] = "%1d",   -- Stow Inlet Ramps Left Switch, (-1, 0, 1)
[2101] = "%1d",   -- Stow Inlet Ramps Right Switch, (-1, 0, 1)
[2100] = "%1d",   -- Stow Inlet Ramps Left Switch, (1, 0, 1)
[2101] = "%1d",   -- Stow Inlet Ramps Right Switch, (1, 0, 1)
--   AOASYSTEM(25)
[915] = "%1d",   -- Hook Bypass, (-1, 0, 1)
[915] = "%1d",   -- Hook Bypass, (1, 0, 1)
[15006] = "%.4f",   -- AoA Indexer Light Intensity, (0.125, 0, 1)
[15006] = "%.4f",   -- AoA Indexer Light Intensity, (-0.125, 0, 1)
--   ARC159(3)
[2026] = "%1d",   -- UHF ARC-159 0.025MHz, (-1, -1, 0)
[2028] = "%1d",   -- UHF ARC-159 0.1MHz, (-1, -1, 0)
[2029] = "%1d",   -- UHF ARC-159 1MHz, (-1, -1, 0)
[2030] = "%1d",   -- UHF ARC-159 100MHz & 10MHz, (-1, -1, 0)
[2035] = "%1d",   -- UHF ARC-159 Squelch Switch, (-1, 0, 1)
[383] = "%1d",   -- UHF ARC-159 Volume RIO, (0, 0, 1)
[2027] = "%1d",   -- UHF ARC-159 Display Brightness, (0, 0, 1)
[2031] = "%1d",   -- UHF ARC-159 Volume Pilot, (0, 0, 1)
[405] = "%1d",   -- UHF Radio Remote Display Test, (1, 0, 1)
[406] = "%1d",   -- UHF Radio Remote Display Brightness, (1, 0, 1)
[1031] = "%1d",   -- UHF Radio Remote Display Brightness, (1, 0, 1)
[2026] = "%1d",   -- UHF ARC-159 0.025MHz, (1, 1, 0)
[2028] = "%1d",   -- UHF ARC-159 0.1MHz, (1, 1, 0)
[2029] = "%1d",   -- UHF ARC-159 1MHz, (1, 1, 0)
[2030] = "%1d",   -- UHF ARC-159 100MHz & 10MHz, (1, 1, 0)
[2035] = "%1d",   -- UHF ARC-159 Squelch Switch, (1, 0, 1)
[8115] = "%1d",   -- UHF ARC-159 Read, (1, 0, 1)
[15004] = "%1d",   -- UHF Radio Remote Display Test, (1, 0, 1)
[16009] = "%1d",   -- UHF ARC-159 Load, (1, 0, 1)
[16010] = "%1d",   -- UHF ARC-159 Tone, (1, 0, 1)
[2032] = "%.4f",   -- UHF ARC-159 Preset Channel Selector, (0.0833333333, 0, 0.9166666663)
[2032] = "%.4f",   -- UHF ARC-159 Preset Channel Selector, (-0.0833333333, 0, 0.9166666663)
[2034] = "%.4f",   -- UHF ARC-159 Function, (0.333333, 0, 0.999999)
[2034] = "%.4f",   -- UHF ARC-159 Function, (-0.333333, 0, 0.999999)
[2033] = "%.1f",   -- UHF ARC-159 Freq Mode, (0.5, 0, 1)
[2033] = "%.1f",   -- UHF ARC-159 Freq Mode, (-0.5, 0, 1)
--   ARC182(4)
[351] = "%1d",   -- VHF/UHF ARC-182 Squelch Switch, (-1, 0, 1)
[354] = "%1d",   -- VHF/UHF ARC-182 100MHz & 10MHz, (-1, -1, 0)
[355] = "%1d",   -- VHF/UHF ARC-182 1MHz, (-1, -1, 0)
[356] = "%1d",   -- VHF/UHF ARC-182 0.1MHz, (-1, -1, 0)
[357] = "%1d",   -- VHF/UHF ARC-182 0.025MHz, (-1, -1, 0)
[359] = "%1d",   -- VHF/UHF ARC-182 FM/AM Switch, (-1, 0, 1)
[350] = "%1d",   -- VHF/UHF ARC-182 Volume RIO, (0, 0, 1)
[360] = "%1d",   -- VHF/UHF ARC-182 Display Brightness, (0, 0, 1)
[2038] = "%1d",   -- VHF/UHF ARC-182 Volume Pilot, (0, 0, 1)
[351] = "%1d",   -- VHF/UHF ARC-182 Squelch Switch, (1, 0, 1)
[354] = "%1d",   -- VHF/UHF ARC-182 100MHz & 10MHz, (1, 1, 0)
[355] = "%1d",   -- VHF/UHF ARC-182 1MHz, (1, 1, 0)
[356] = "%1d",   -- VHF/UHF ARC-182 0.1MHz, (1, 1, 0)
[357] = "%1d",   -- VHF/UHF ARC-182 0.025MHz, (1, 1, 0)
[359] = "%1d",   -- VHF/UHF ARC-182 FM/AM Switch, (1, 0, 1)
[1030] = "%1d",   -- VHF/UHF Radio Remote Display Brightness, (1, 0, 1)
[15003] = "%1d",   -- VHF/UHF Radio Remote Display Test, (1, 0, 1)
[352] = "%.4f",   -- VHF/UHF ARC-182 Preset Channel Selector, (0.0833333333, 0, 0.9166666663)
[352] = "%.4f",   -- VHF/UHF ARC-182 Preset Channel Selector, (-0.0833333333, 0, 0.9166666663)
[353] = "%.1f",   -- VHF/UHF ARC-182 Freq Mode, (0.2, 0, 1)
[353] = "%.1f",   -- VHF/UHF ARC-182 Freq Mode, (-0.2, 0, 1)
[358] = "%.2f",   -- VHF/UHF ARC-182 MODE, (0.25, 0, 1)
[358] = "%.2f",   -- VHF/UHF ARC-182 MODE, (-0.25, 0, 1)
--   BAROALTIMETER(28)
[307] = "%1d",   -- Altimeter Mode Switch, (-1, -1, 0)
[20307] = "%1d",   -- Altimeter Mode Switch, (-1, -1, 0)
[306] = "%1d",   -- Altimeter Pressure Setting, (0, 0, 1)
[20306] = "%1d",   -- Altimeter Pressure Setting, (0, 0, 1)
[307] = "%1d",   -- Altimeter Mode Switch, (1, 1, 0)
[20307] = "%1d",   -- Altimeter Mode Switch, (1, 1, 0)
--   BITPANEL(10)
[15098] = "%1d",   -- Master Test Selector (LB to rotate, (1, 0, 1)
[934] = "%.4f",   -- Master Test Selector (LB to rotate, (0.090909090909091, 0, 0.90909090909091)
--   CADC(22)
[1071] = "%1d",   -- MASTER RESET, (1, 0, 1)
--   CAP(23)
[123] = "%1d",   -- CAP btn 5, (1, 0, 1)
[124] = "%1d",   -- CAP btn 4, (1, 0, 1)
[125] = "%1d",   -- CAP btn 3, (1, 0, 1)
[126] = "%1d",   -- CAP btn 2, (1, 0, 1)
[127] = "%1d",   -- CAP btn 1, (1, 0, 1)
[128] = "%1d",   -- CAP TNG NBR, (1, 0, 1)
[129] = "%1d",   -- CAP btn 10, (1, 0, 1)
[130] = "%1d",   -- CAP btn 9, (1, 0, 1)
[131] = "%1d",   -- CAP btn 8, (1, 0, 1)
[132] = "%1d",   -- CAP btn 7, (1, 0, 1)
[133] = "%1d",   -- CAP btn 6, (1, 0, 1)
[134] = "%1d",   -- CAP PGM RSTRT, (1, 0, 1)
[136] = "%1d",   -- CAP LONG 6, (1, 0, 1)
[137] = "%1d",   -- CAP LAT 1, (1, 0, 1)
[138] = "%1d",   -- CAP NBR 2, (1, 0, 1)
[139] = "%1d",   -- CAP 7, (1, 0, 1)
[140] = "%1d",   -- CAP HDG 8, (1, 0, 1)
[141] = "%1d",   -- CAP SPD 3, (1, 0, 1)
[142] = "%1d",   -- CAP 9, (1, 0, 1)
[143] = "%1d",   -- CAP ALT 4, (1, 0, 1)
[144] = "%1d",   -- CAP BRG 0, (1, 0, 1)
[145] = "%1d",   -- CAP RNG 5, (1, 0, 1)
[146] = "%1d",   -- CAP N+E, (1, 0, 1)
[147] = "%1d",   -- CAP S-W, (1, 0, 1)
[148] = "%1d",   -- CAP clear, (1, 0, 1)
[149] = "%1d",   -- CAP enter, (1, 0, 1)
[98] = "%.1f",   -- CAP category, (0.2, 0, 1)
[98] = "%.1f",   -- CAP category, (-0.2, 0, 1)
--   CLOCK(26)
[1099] = "%1d",   -- Clock Timer Start/Stop/Reset, (1, 0, 1)
[4153] = "%1d",   -- Clock Timer Start/Stop/Reset, (1, 0, 1)
[1051] = "%.1f",   -- Clock Wind, (0.5, 0, 1)
--[] = "%.1f",   -- Clock Wind, (0.5, 0, 1)
--   COCKPITMECHANICS(11)
[119] = "%1d",   -- RIO Oxygen On, (-1, 0, 1)
[159] = "%1d",   -- White Flood Light, (-1, -1, 1)
[194] = "%1d",   -- Red Flood Light, (-1, -1, 1)
[913] = "%1d",   -- Position Lights Wing, (-1, -1, 1)
[916] = "%1d",   -- Position Lights Tail, (-1, -1, 1)
[918] = "%1d",   -- Taxi Light, (-1, 0, 1)
[919] = "%1d",   -- Position Lights Flash, (-1, 0, 1)
[921] = "%1d",   -- White Flood Light, (-1, -1, 1)
[923] = "%1d",   -- Anti-Collision Lights, (-1, 0, 1)
[924] = "%1d",   -- Red Flood Light, (-1, -1, 1)
[929] = "%1d",   -- Air Source Ram, (-1, 0, 1)
[930] = "%1d",   -- Air Source Left Engine, (-1, 0, 1)
[931] = "%1d",   -- Air Source Right Engine, (-1, 0, 1)
[932] = "%1d",   -- Air Source Both Engines, (-1, 0, 1)
[933] = "%1d",   -- Air Source Off, (-1, 0, 1)
[938] = "%1d",   -- Ram Air, (-1, 0, 1)
[939] = "%1d",   -- Cabin Pressure Dump, (-1, 0, 1)
[940] = "%1d",   -- Temp Auto / Man, (-1, 0, 1)
[942] = "%1d",   -- Wind Shield Air, (-1, -1, 1)
[8114] = "%1d",   -- Pilot Oxygen On, (-1, 0, 1)
[122] = "%1d",   -- Storage, (0, 0, 1)
[224] = "%1d",   -- Canopy Jettison, (0, 0, 1)
[224] = "%1d",   -- Canopy Jettison, (0, 0, 1)
[404] = "%1d",   -- Ejection Seat Safety, (0, 0, 1)
[498] = "%1d",   -- Ejection Seat Safety, (0, 0, 1)
[2049] = "%1d",   -- Ejection CMD Lever, (0, 0, 1)
[119] = "%1d",   -- RIO Oxygen On, (1, 0, 1)
[122] = "%1d",   -- Storage, (1, 0, 1)
[159] = "%1d",   -- White Flood Light, (1, -1, 1)
[194] = "%1d",   -- Red Flood Light, (1, -1, 1)
[224] = "%1d",   -- Canopy Jettison, (1, 0, 1)
[224] = "%1d",   -- Canopy Jettison, (1, 0, 1)
[404] = "%1d",   -- Ejection Seat Safety, (1, 0, 1)
[498] = "%1d",   -- Ejection Seat Safety, (1, 0, 1)
[913] = "%1d",   -- Position Lights Wing, (1, -1, 1)
[916] = "%1d",   -- Position Lights Tail, (1, -1, 1)
[918] = "%1d",   -- Taxi Light, (1, 0, 1)
[919] = "%1d",   -- Position Lights Flash, (1, 0, 1)
[921] = "%1d",   -- White Flood Light, (1, -1, 1)
[923] = "%1d",   -- Anti-Collision Lights, (1, 0, 1)
[924] = "%1d",   -- Red Flood Light, (1, -1, 1)
[929] = "%1d",   -- Air Source Ram, (1, 0, 1)
[930] = "%1d",   -- Air Source Left Engine, (1, 0, 1)
[931] = "%1d",   -- Air Source Right Engine, (1, 0, 1)
[932] = "%1d",   -- Air Source Both Engines, (1, 0, 1)
[933] = "%1d",   -- Air Source Off, (1, 0, 1)
[938] = "%1d",   -- Ram Air, (1, 0, 1)
[939] = "%1d",   -- Cabin Pressure Dump, (1, 0, 1)
[940] = "%1d",   -- Temp Auto / Man, (1, 0, 1)
[942] = "%1d",   -- Wind Shield Air, (1, -1, 1)
[2049] = "%1d",   -- Ejection CMD Lever, (1, 0, 1)
[8114] = "%1d",   -- Pilot Oxygen On, (1, 0, 1)
[192] = "%.4f",   -- Console Light Intensity, (0.125, 0, 1)
[193] = "%.4f",   -- Instrument Light Intensity, (0.125, 0, 1)
[950] = "%.4f",   -- Temperature, (0.125, 0, 1)
[15005] = "%.4f",   -- ACM Panel Light Intensity, (0.125, 0, 1)
[15007] = "%.4f",   -- Instrument Light Intensity, (0.125, 0, 1)
[15008] = "%.4f",   -- Console Light Intensity, (0.125, 0, 1)
[15009] = "%.4f",   -- Formation Light Intensity, (0.125, 0, 1)
[192] = "%.4f",   -- Console Light Intensity, (-0.125, 0, 1)
[193] = "%.4f",   -- Instrument Light Intensity, (-0.125, 0, 1)
[950] = "%.4f",   -- Temperature, (-0.125, 0, 1)
[15005] = "%.4f",   -- ACM Panel Light Intensity, (-0.125, 0, 1)
[15007] = "%.4f",   -- Instrument Light Intensity, (-0.125, 0, 1)
[15008] = "%.4f",   -- Console Light Intensity, (-0.125, 0, 1)
[15009] = "%.4f",   -- Formation Light Intensity, (-0.125, 0, 1)
--   COUNTERMEASURES(5)
[387] = "%1d",   -- AN/ALE-37 Jammer Dispense, (-1, -1, 0)
[388] = "%1d",   -- AN/ALE-37 Flare Dispense, (-1, -1, 0)
[389] = "%1d",   -- AN/ALE-37 Chaff Dispense, (-1, -1, 0)
[390] = "%1d",   -- AN/ALE-37 Power/Mode, (-1, -1, 1)
[398] = "%1d",   -- AN/ALE-37 Flare Mode, (-1, -1, 1)
[216] = "%1d",   -- AN/ALE-37 Programmer Reset, (1, 0, 1)
[385] = "%1d",   -- AN/ALE-37 Flare Counter, (1, 0, 1)
[386] = "%1d",   -- AN/ALE-37 Chaff Counter, (1, 0, 1)
[387] = "%1d",   -- AN/ALE-37 Jammer Dispense, (1, 1, 0)
[388] = "%1d",   -- AN/ALE-37 Flare Dispense, (1, 1, 0)
[389] = "%1d",   -- AN/ALE-37 Chaff Dispense, (1, 1, 0)
[390] = "%1d",   -- AN/ALE-37 Power/Mode, (1, -1, 1)
[391] = "%1d",   -- AN/ALE-37 Flare Salvo, (1, 0, 1)
[398] = "%1d",   -- AN/ALE-37 Flare Mode, (1, -1, 1)
[399] = "%1d",   -- AN/ALE-37 Jammer Counter, (1, 0, 1)
[211] = "%.4f",   -- AN/ALE-37 Jammer Interval Units, (0.11111111111111, 0, 1)
[212] = "%.4f",   -- AN/ALE-37 Jammer Interval Tens, (0.11111111111111, 0, 1)
[213] = "%.4f",   -- AN/ALE-37 Jammer Interval Hundreds, (0.11111111111111, 0, 1)
[211] = "%.4f",   -- AN/ALE-37 Jammer Interval Units, (-0.11111111111111, 0, 1)
[212] = "%.4f",   -- AN/ALE-37 Jammer Interval Tens, (-0.11111111111111, 0, 1)
[213] = "%.4f",   -- AN/ALE-37 Jammer Interval Hundreds, (-0.11111111111111, 0, 1)
[203] = "%.4f",   -- AN/ALE-37 Chaff Salvo Quantity, (0.16666666666667, 0, 1)
[203] = "%.4f",   -- AN/ALE-37 Chaff Salvo Quantity, (-0.16666666666667, 0, 1)
[205] = "%.1f",   -- AN/ALE-37 Flare Quantity, (0.2, 0, 1)
[214] = "%.1f",   -- AN/ALE-37 Chaff Burst Quantity, (0.2, 0, 1)
[215] = "%.1f",   -- AN/ALE-37 Chaff Burst Interval, (0.2, 0, 1)
[205] = "%.1f",   -- AN/ALE-37 Flare Quantity, (-0.2, 0, 1)
[214] = "%.1f",   -- AN/ALE-37 Chaff Burst Quantity, (-0.2, 0, 1)
[215] = "%.1f",   -- AN/ALE-37 Chaff Burst Interval, (-0.2, 0, 1)
[202] = "%.2f",   -- AN/ALE-37 Chaff Salvo Interval, (0.25, 0, 1)
[210] = "%.2f",   -- AN/ALE-37 Flare Interval, (0.25, 0, 1)
[202] = "%.2f",   -- AN/ALE-37 Chaff Salvo Interval, (-0.25, 0, 1)
[210] = "%.2f",   -- AN/ALE-37 Flare Interval, (-0.25, 0, 1)
[204] = "%.4f",   -- AN/ALE-37 Jammer Quantity, (0.33333333333333, 0, 1)
[204] = "%.4f",   -- AN/ALE-37 Jammer Quantity, (-0.33333333333333, 0, 1)
[206] = "%.1f",   -- AN/ALE-37 L10 Load Type, (0.5, 0, 1)
[207] = "%.1f",   -- AN/ALE-37 L20 Load Type, (0.5, 0, 1)
[208] = "%.1f",   -- AN/ALE-37 R20 Load Type, (0.5, 0, 1)
[209] = "%.1f",   -- AN/ALE-37 R10 Load Type, (0.5, 0, 1)
[206] = "%.1f",   -- AN/ALE-37 L10 Load Type, (-0.5, 0, 1)
[207] = "%.1f",   -- AN/ALE-37 L20 Load Type, (-0.5, 0, 1)
[208] = "%.1f",   -- AN/ALE-37 R20 Load Type, (-0.5, 0, 1)
[209] = "%.1f",   -- AN/ALE-37 R10 Load Type, (-0.5, 0, 1)
--   DATALINK(52)
[96] = "%1d",   -- Beacon Power, (-1, -1, 1)
[175] = "%1d",   -- Datalink Antenna (no function), (-1, 0, 1)
[176] = "%1d",   -- Datalink Reply (no function), (-1, 0, 1)
[177] = "%1d",   -- Datalink CAINS/TAC, (-1, 0, 1)
[191] = "%1d",   -- Datalink Antijam (no function), (-1, -1, 1)
[413] = "%1d",   -- Datalink Power, (-1, -1, 1)
[96] = "%1d",   -- Beacon Power, (1, -1, 1)
[117] = "%1d",   -- ACLS test, (1, 0, 1)
[175] = "%1d",   -- Datalink Antenna (no function), (1, 0, 1)
[176] = "%1d",   -- Datalink Reply (no function), (1, 0, 1)
[177] = "%1d",   -- Datalink CAINS/TAC, (1, 0, 1)
[191] = "%1d",   -- Datalink Antijam (no function), (1, -1, 1)
[413] = "%1d",   -- Datalink Power, (1, -1, 1)
[195] = "%.4f",   -- Datalink freq 1MHz, (0.11111111111111, 0, 1)
[196] = "%.4f",   -- Datalink freq 10MHz, (0.11111111111111, 0, 1)
[197] = "%.4f",   -- Datalink freq 100kHz, (0.11111111111111, 0, 1)
[222] = "%.4f",   -- Datalink address high, (0.11111111111111, 0, 1)
[223] = "%.4f",   -- Datalink address low, (0.11111111111111, 0, 1)
[195] = "%.4f",   -- Datalink freq 1MHz, (-0.11111111111111, 0, 1)
[196] = "%.4f",   -- Datalink freq 10MHz, (-0.11111111111111, 0, 1)
[197] = "%.4f",   -- Datalink freq 100kHz, (-0.11111111111111, 0, 1)
[222] = "%.4f",   -- Datalink address high, (-0.11111111111111, 0, 1)
[223] = "%.4f",   -- Datalink address low, (-0.11111111111111, 0, 1)
[118] = "%.4f",   -- Beacon mode, (0.166667, 0, 1.000002)
[118] = "%.4f",   -- Beacon mode, (-0.166667, 0, 1.000002)
--   DECM(53)
[9950] = "%1d",   -- DECM ALQ-100 Volume, (0, 0, 1)
[151] = "%.1f",   -- DECM ALQ-100 Power/Mode, (0.2, 0, 1)
[151] = "%.1f",   -- DECM ALQ-100 Power/Mode, (-0.2, 0, 1)
--   ECMD(44)
[2023] = "%1d",   -- ECMD Brightness, (0, 0, 1)
[2024] = "%1d",   -- ECMD Test, (1, 0, 1)
--   ELECTRICS(14)
[902] = "%1d",   -- Inboard Spoiler Override Cover, (-1, 0, 1)
[903] = "%1d",   -- Outboard Spoiler Override Cover, (-1, 0, 1)
[907] = "%1d",   -- Outboard Spoiler Override, (-1, 0, 1)
[908] = "%1d",   -- Inboard Spoiler Override, (-1, 0, 1)
[926] = "%1d",   -- Emergency Generator Switch, (-1, 0, 1)
[927] = "%1d",   -- Emergency Generator Switch Cover, (-1, 0, 1)
[936] = "%1d",   -- Right Generator Switch, (-1, -1, 1)
[937] = "%1d",   -- Left Generator Switch, (-1, -1, 1)
[902] = "%1d",   -- Inboard Spoiler Override Cover, (1, 0, 1)
[903] = "%1d",   -- Outboard Spoiler Override Cover, (1, 0, 1)
[907] = "%1d",   -- Outboard Spoiler Override, (1, 0, 1)
[908] = "%1d",   -- Inboard Spoiler Override, (1, 0, 1)
[926] = "%1d",   -- Emergency Generator Switch, (1, 0, 1)
[927] = "%1d",   -- Emergency Generator Switch Cover, (1, 0, 1)
[936] = "%1d",   -- Right Generator Switch, (1, -1, 1)
[937] = "%1d",   -- Left Generator Switch, (1, -1, 1)
--   ENGINE(19)
[941] = "%1d",   -- Engine/Probe Anti-Ice, (-1, -1, 1)
[2102] = "%1d",   -- Engine Crank, (-1, -1, 1)
[2103] = "%1d",   -- Throttle Temp, (-1, -1, 1)
[2104] = "%1d",   -- Throttle Mode, (-1, -1, 1)
[2105] = "%1d",   -- Engine Airstart, (-1, 0, 1)
[12300] = "%1d",   -- Left Engine Fuel Cutoff, (-1, 0, 1)
[12301] = "%1d",   -- Right Engine Fuel Cutoff, (-1, 0, 1)
[16005] = "%1d",   -- Asymmetric Thrust Limiter Cover, (-1, 0, 1)
[16006] = "%1d",   -- Asymmetric Thrust Limiter, (-1, 0, 1)
[16007] = "%1d",   -- Left Engine Mode, (-1, 0, 1)
[16008] = "%1d",   -- Right Engine Mode, (-1, 0, 1)
[941] = "%1d",   -- Engine/Probe Anti-Ice, (1, -1, 1)
[2102] = "%1d",   -- Engine Crank, (1, -1, 1)
[2103] = "%1d",   -- Throttle Temp, (1, -1, 1)
[2104] = "%1d",   -- Throttle Mode, (1, -1, 1)
[2105] = "%1d",   -- Engine Airstart, (1, 0, 1)
[12300] = "%1d",   -- Left Engine Fuel Cutoff, (1, 0, 1)
[12301] = "%1d",   -- Right Engine Fuel Cutoff, (1, 0, 1)
[16005] = "%1d",   -- Asymmetric Thrust Limiter Cover, (1, 0, 1)
[16006] = "%1d",   -- Asymmetric Thrust Limiter, (1, 0, 1)
[16007] = "%1d",   -- Left Engine Mode, (1, 0, 1)
[16008] = "%1d",   -- Right Engine Mode, (1, 0, 1)
--   FLAPS(18)
[225] = "%1d",   -- Flaps Lever, (1, 0, 1)
--   FUELSYSTEM(20)
[1001] = "%1d",   -- Wing/Ext Trans, (-1, -1, 1)
[1073] = "%1d",   -- Refuel Probe, (-1, -1, 1)
[1074] = "%1d",   -- Fuel Dump, (-1, 0, 1)
[1076] = "%1d",   -- Fuel Quantity Selector, (-1, -1, 0)
[1094] = "%1d",   -- Fuel Feed Cover, (-1, 0, 1)
[1095] = "%1d",   -- Fuel Feed, (-1, -1, 1)
[1044] = "%1d",   -- Fuel Shutoff - Right, (0, 0, 1)
[15081] = "%1d",   -- Fuel Shutoff - Left, (0, 0, 1)
[1001] = "%1d",   -- Wing/Ext Trans, (1, -1, 1)
[1044] = "%1d",   -- Fuel Shutoff - Right, (1, 0, 1)
[1050] = "%1d",   -- BINGO Fuel Level Knob, (1, 0, 1)
[1073] = "%1d",   -- Refuel Probe, (1, -1, 1)
[1074] = "%1d",   -- Fuel Dump, (1, 0, 1)
[1076] = "%1d",   -- Fuel Quantity Selector, (1, 1, 0)
[1094] = "%1d",   -- Fuel Feed Cover, (1, 0, 1)
[1095] = "%1d",   -- Fuel Feed, (1, -1, 1)
[15081] = "%1d",   -- Fuel Shutoff - Left, (1, 0, 1)
--   GEARHOOK(17)
[496] = "%1d",   -- Launch Bar Abort Switch Cover, (-1, 0, 1)
[1072] = "%1d",   -- Anti-Skid Spoiler BK Switch, (-1, -1, 1)
[1075] = "%1d",   -- Nose Strut Compression Switch, (-1, -1, 0)
[237] = "%1d",   -- Parking Brake Handle, (0, 0, 1)
[237] = "%1d",   -- Parking Brake Handle, (1, 0, 1)
[238] = "%1d",   -- Hook Extension Handle (RB cycle emergency mode), (1, 0, 1)
[326] = "%1d",   -- Landing Gear Lever (RB emergency extend), (1, 0, 1)
[496] = "%1d",   -- Launch Bar Abort Switch Cover, (1, 0, 1)
[497] = "%1d",   -- Launch Bar Abort, (1, 0, 1)
[1072] = "%1d",   -- Anti-Skid Spoiler BK Switch, (1, -1, 1)
[1075] = "%1d",   -- Nose Strut Compression Switch, (1, 1, 0)
[15078] = "%1d",   -- Hook Extension Handle (RB cycle emergency mode), (1, 0, 1)
[16015] = "%1d",   -- Landing Gear Lever (RB emergency extend), (1, 0, 1)
--   HCU(58)
[2007] = "%1d",   -- HCU TCS mode, (-1, 0, 1)
[2008] = "%1d",   -- HCU radar mode, (-1, 0, 1)
[2009] = "%1d",   -- HCU DDD mode, (-1, 0, 1)
[2010] = "%1d",   -- HCU TID mode, (-1, 0, 1)
[2007] = "%1d",   -- HCU TCS mode, (1, 0, 1)
[2008] = "%1d",   -- HCU radar mode, (1, 0, 1)
[2009] = "%1d",   -- HCU DDD mode, (1, 0, 1)
[2010] = "%1d",   -- HCU TID mode, (1, 0, 1)
--   HSD(41)
[1008] = "%1d",   -- HSD/ECMD Power On/Off, (-1, 0, 1)
[1016] = "%1d",   -- HSD Display Mode, (-1, 0, 1)
[1017] = "%1d",   -- HSD ECM Override, (-1, 0, 1)
[1039] = "%1d",   -- HSD Selected Heading, (0, 0, 1)
[1040] = "%1d",   -- HSD Selected Course, (0, 0, 1)
[1043] = "%1d",   -- HSD Brightness, (0, 0, 1)
[1008] = "%1d",   -- HSD/ECMD Power On/Off, (1, 0, 1)
[1016] = "%1d",   -- HSD Display Mode, (1, 0, 1)
[1017] = "%1d",   -- HSD ECM Override, (1, 0, 1)
[1041] = "%1d",   -- HSD Test, (1, 0, 1)
--   HUD(40)
[1009] = "%1d",   -- HUD Power On/Off, (-1, 0, 1)
[1011] = "%1d",   -- HUD Landing Mode, (-1, 0, 1)
[1012] = "%1d",   -- HUD Air-to-Ground Mode, (-1, 0, 1)
[1013] = "%1d",   -- HUD Air-to-Air Mode, (-1, 0, 1)
[1014] = "%1d",   -- HUD Cruise Mode, (-1, 0, 1)
[1015] = "%1d",   -- HUD Take-Off Mode, (-1, 0, 1)
[1020] = "%1d",   -- HUD AWL Mode, (-1, 0, 1)
[1021] = "%1d",   -- HUD De-clutter On/Off, (-1, 0, 1)
[1033] = "%1d",   -- HUD filter, (0, 0, 1)
[1007] = "%1d",   -- HUD Pitch Ladder Brightness, (1, 0, 1)
[1009] = "%1d",   -- HUD Power On/Off, (1, 0, 1)
[1011] = "%1d",   -- HUD Landing Mode, (1, 0, 1)
[1012] = "%1d",   -- HUD Air-to-Ground Mode, (1, 0, 1)
[1013] = "%1d",   -- HUD Air-to-Air Mode, (1, 0, 1)
[1014] = "%1d",   -- HUD Cruise Mode, (1, 0, 1)
[1015] = "%1d",   -- HUD Take-Off Mode, (1, 0, 1)
[1020] = "%1d",   -- HUD AWL Mode, (1, 0, 1)
[1021] = "%1d",   -- HUD De-clutter On/Off, (1, 0, 1)
[1033] = "%1d",   -- HUD filter, (1, 0, 1)
[1034] = "%1d",   -- HUD Trim, (1, 0, 1)
[1037] = "%1d",   -- HUD Brightness, (1, 0, 1)
--   HYDRAULICS(12)
[615] = "%1d",   -- Hydraulic Emergency Flight Control Switch Cover, (-1, 0, 1)
[629] = "%1d",   -- Hydraulic Transfer Pump Switch, (-1, 0, 1)
[630] = "%1d",   -- Hydraulic Transfer Pump Switch Cover, (-1, 0, 1)
[631] = "%1d",   -- Hydraulic Isolation Switch, (-1, 0, 1)
[928] = "%1d",   -- Hydraulic Emergency Flight Control Switch, (-1, -1, 1)
[632] = "%1d",   -- Hydraulic Hand Pump, (0, 0, 1)
[615] = "%1d",   -- Hydraulic Emergency Flight Control Switch Cover, (1, 0, 1)
[629] = "%1d",   -- Hydraulic Transfer Pump Switch, (1, 0, 1)
[630] = "%1d",   -- Hydraulic Transfer Pump Switch Cover, (1, 0, 1)
[631] = "%1d",   -- Hydraulic Isolation Switch, (1, 0, 1)
[632] = "%1d",   -- Hydraulic Hand Pump, (1, 0, 1)
[928] = "%1d",   -- Hydraulic Emergency Flight Control Switch, (1, -1, 1)
--   ICS(2)
[150] = "%1d",   -- KY-28 ZEROIZE Cover, (-1, 0, 1)
[380] = "%1d",   -- V/UHF 2 ANT Switch, (-1, 0, 1)
[381] = "%1d",   -- XMTR SEL Switch, (-1, -1, 1)
[382] = "%1d",   -- KY MODE Switch, (-1, -1, 1)
[402] = "%1d",   -- ICS Function Selector, (-1, -1, 1)
[2044] = "%1d",   -- ICS Function Selector, (-1, -1, 1)
[400] = "%1d",   -- ICS Volume, (0, 0, 1)
[2039] = "%1d",   -- Sidewinder Volume, (0, 0, 1)
[2040] = "%1d",   -- ALR-67 Volume, (0, 0, 1)
[2048] = "%1d",   -- ICS Volume, (0, 0, 1)
[150] = "%1d",   -- KY-28 ZEROIZE Cover, (1, 0, 1)
[361] = "%1d",   -- KY-28 ZEROIZE, (1, 0, 1)
[380] = "%1d",   -- V/UHF 2 ANT Switch, (1, 0, 1)
[381] = "%1d",   -- XMTR SEL Switch, (1, -1, 1)
[382] = "%1d",   -- KY MODE Switch, (1, -1, 1)
[402] = "%1d",   -- ICS Function Selector, (1, -1, 1)
[2044] = "%1d",   -- ICS Function Selector, (1, -1, 1)
[2138] = "%1d",   -- AN/ALR-67 Volume, (1, 0, 1)
[115] = "%.1f",   -- KY-28 Radio Selector, (0.5, 0, 1)
[116] = "%.1f",   -- KY-28 Power Mode, (0.5, 0, 1)
[401] = "%.1f",   -- ICS Amplifier Selector, (0.5, 0, 1)
[2045] = "%.1f",   -- ICS Amplifier Selector, (0.5, 0, 1)
[115] = "%.1f",   -- KY-28 Radio Selector, (-0.5, 0, 1)
[116] = "%.1f",   -- KY-28 Power Mode, (-0.5, 0, 1)
[401] = "%.1f",   -- ICS Amplifier Selector, (-0.5, 0, 1)
[2045] = "%.1f",   -- ICS Amplifier Selector, (-0.5, 0, 1)
--   IFF(64)
[161] = "%1d",   -- IFF audio/light (no function), (-1, -1, 1)
[162] = "%1d",   -- IFF M1 (no function), (-1, -1, 1)
[163] = "%1d",   -- IFF M2 (no function), (-1, -1, 1)
[164] = "%1d",   -- IFF M3/A (no function), (-1, -1, 1)
[165] = "%1d",   -- IFF MC (no function), (-1, -1, 1)
[166] = "%1d",   -- IFF RAD (no function), (-1, -1, 1)
[167] = "%1d",   -- IFF Ident (no function), (-1, -1, 1)
[181] = "%1d",   -- IFF M4 (no function), (-1, 0, 1)
[161] = "%1d",   -- IFF audio/light (no function), (1, -1, 1)
[162] = "%1d",   -- IFF M1 (no function), (1, -1, 1)
[163] = "%1d",   -- IFF M2 (no function), (1, -1, 1)
[164] = "%1d",   -- IFF M3/A (no function), (1, -1, 1)
[165] = "%1d",   -- IFF MC (no function), (1, -1, 1)
[166] = "%1d",   -- IFF RAD (no function), (1, -1, 1)
[167] = "%1d",   -- IFF Ident (no function), (1, -1, 1)
[181] = "%1d",   -- IFF M4 (no function), (1, 0, 1)
[185] = "%1d",   -- IFF test (no function), (1, 0, 1)
[186] = "%1d",   -- IFF reply (no function), (1, 0, 1)
[198] = "%.4f",   -- IFF M3 code -x-- (no function), (0.11111, 0, 0.77777)
[199] = "%.4f",   -- IFF M3 code x--- (no function), (0.11111, 0, 0.77777)
[200] = "%.4f",   -- IFF M1 code -x (no function), (0.11111, 0, 0.33333)
[201] = "%.4f",   -- IFF M1 code x- (no function), (0.11111, 0, 0.77777)
[2261] = "%.4f",   -- IFF M3 code --x- (no function), (0.11111, 0, 0.77777)
[2262] = "%.4f",   -- IFF M3 code ---x (no function), (0.11111, 0, 0.77777)
[198] = "%.4f",   -- IFF M3 code -x-- (no function), (-0.11111, 0, 0.77777)
[199] = "%.4f",   -- IFF M3 code x--- (no function), (-0.11111, 0, 0.77777)
[200] = "%.4f",   -- IFF M1 code -x (no function), (-0.11111, 0, 0.33333)
[201] = "%.4f",   -- IFF M1 code x- (no function), (-0.11111, 0, 0.77777)
[2261] = "%.4f",   -- IFF M3 code --x- (no function), (-0.11111, 0, 0.77777)
[2262] = "%.4f",   -- IFF M3 code ---x (no function), (-0.11111, 0, 0.77777)
[184] = "%.2f",   -- IFF master (no function), (0.25, 0, 1)
[184] = "%.2f",   -- IFF master (no function), (-0.25, 0, 1)
[183] = "%.4f",   -- IFF code (no function), (0.33333333333333, 0, 1)
[183] = "%.4f",   -- IFF code (no function), (-0.33333333333333, 0, 1)
--   ILS(48)
[910] = "%1d",   -- AN/ARA-63 Power Switch, (-1, 0, 1)
[910] = "%1d",   -- AN/ARA-63 Power Switch, (1, 0, 1)
[911] = "%1d",   -- AN/ARA-63 BIT Button, (1, 0, 1)
[912] = "%.4f",   -- AN/ARA-63 Channel Knob, (0.052631578947368, 0, 1)
[912] = "%.4f",   -- AN/ARA-63 Channel Knob, (-0.052631578947368, 0, 1)
--   INS(50)
[50] = "%.4f",   -- Navigation Mode, (0.1666667, 0, 1.0000002)
[50] = "%.4f",   -- Navigation Mode, (-0.1666667, 0, 1.0000002)
--   LANTIRN(38)
[668] = "%1d",   -- LANTIRN Laser Arm Switch, (-1, 0, 1)
[668] = "%1d",   -- LANTIRN Laser Arm Switch, (1, 0, 1)
[669] = "%1d",   -- LANTIRN Operate Mode (Unstow), (1, 0, 1)
[671] = "%1d",   -- LANTIRN IBIT, (1, 0, 1)
[667] = "%.1f",   -- LANTIRN Power, (0.5, 0, 1)
[667] = "%.1f",   -- LANTIRN Power, (-0.5, 0, 1)
--   MACHANDAIRSPEED(27)
[2127] = "%1d",   -- Airspeed Indicator Bug Knob, (1, 0, 1)
[310] = "%.1f",   -- Airspeed Indicator Bug Knob, (0.5, 0, 1)
--   NAV_INTERFACE(46)
[1002] = "%1d",   -- Navigation Steer Commands: TACAN, (-1, 0, 1)
[1003] = "%1d",   -- Navigation Steer Commands: Destination, (-1, 0, 1)
[1004] = "%1d",   -- Navigation Steer Commands: AWL PCD, (-1, 0, 1)
[1005] = "%1d",   -- Navigation Steer Commands: Vector, (-1, 0, 1)
[1006] = "%1d",   -- Navigation Steer Commands: Manual, (-1, 0, 1)
[1002] = "%1d",   -- Navigation Steer Commands: TACAN, (1, 0, 1)
[1003] = "%1d",   -- Navigation Steer Commands: Destination, (1, 0, 1)
[1004] = "%1d",   -- Navigation Steer Commands: AWL PCD, (1, 0, 1)
[1005] = "%1d",   -- Navigation Steer Commands: Vector, (1, 0, 1)
[1006] = "%1d",   -- Navigation Steer Commands: Manual, (1, 0, 1)
[51] = "%.4f",   -- Destination Mode, (0.142857, 0, 0.999999)
[51] = "%.4f",   -- Destination Mode, (-0.142857, 0, 0.999999)
--   RADAR(39)
[38] = "%1d",   -- Automatic Gain Control (no function), (-2, -1, 1)
[3900] = "%1d",   -- Parametric amplifier (no function), (-2, -1, 1)
[34] = "%1d",   -- Aspect, (-1, -1, 1)
[35] = "%1d",   -- Closing Velocity scale, (-1, -1, 1)
[36] = "%1d",   -- Target size (no function), (-1, -1, 1)
[37] = "%1d",   -- Main Lobe Clutter filter, (-1, -1, 1)
[83] = "%1d",   -- Stabilize, (-1, 0, 1)
[84] = "%1d",   -- VSL switch, (-1, -1, 0)
[95] = "%1d",   -- Liquid cooling, (-1, -1, 1)
[2012] = "%1d",   -- WCS switch, (-1, -1, 1)
[81] = "%1d",   -- Radar elevation center, (0, -1, 1)
[82] = "%1d",   -- Radar azimuth center, (0, -1, 1)
[-1] = "%1d",   -- DDD filter, (1, 0, 1)
[10] = "%1d",   -- RADAR pulse search, (1, 0, 1)
[11] = "%1d",   -- RADAR track while scan manual, (1, 0, 1)
[12] = "%1d",   -- RADAR track while scan auto, (1, 0, 1)
[13] = "%1d",   -- RADAR range while scan, (1, 0, 1)
[14] = "%1d",   -- RADAR pulse doppler search, (1, 0, 1)
[15] = "%1d",   -- RADAR pulse single target track, (1, 0, 1)
[17] = "%1d",   -- DDD Interrogate Friend or Foe, (1, 0, 1)
[18] = "%1d",   -- DDD Infrared (no function), (1, 0, 1)
[19] = "%1d",   -- DDD RADAR, (1, 0, 1)
[34] = "%1d",   -- Aspect, (1, -1, 1)
[35] = "%1d",   -- Closing Velocity scale, (1, -1, 1)
[36] = "%1d",   -- Target size (no function), (1, -1, 1)
[37] = "%1d",   -- Main Lobe Clutter filter, (1, -1, 1)
[40] = "%1d",   -- RADAR 5 NM, (1, 0, 1)
[41] = "%1d",   -- RADAR 10 NM, (1, 0, 1)
[42] = "%1d",   -- RADAR 20 NM, (1, 0, 1)
[43] = "%1d",   -- RADAR 50 NM, (1, 0, 1)
[44] = "%1d",   -- RADAR 100 NM, (1, 0, 1)
[45] = "%1d",   -- RADAR 200 NM, (1, 0, 1)
[83] = "%1d",   -- Stabilize, (1, 0, 1)
[84] = "%1d",   -- VSL switch, (1, 1, 0)
[95] = "%1d",   -- Liquid cooling, (1, -1, 1)
[1812] = "%1d",   -- CCM SPL (no function), (1, 0, 1)
[1813] = "%1d",   -- CCM ALT DIFF (no function), (1, 0, 1)
[1814] = "%1d",   -- CCM VGS (no function), (1, 0, 1)
[2012] = "%1d",   -- WCS switch, (1, -1, 1)
[2013] = "%1d",   -- Power reset, (1, 0, 1)
[2014] = "%1d",   -- Light test, (1, 0, 1)
[9916] = "%1d",   -- RADAR pulse doppler single target track, (1, 0, 1)
[38] = "%1d",   -- Automatic Gain Control (no function), (2, -1, 1)
[3900] = "%1d",   -- Parametric amplifier (no function), (2, -1, 1)
[79] = "%.5f",   -- Radar elevation scan, (0.33333, 0, 0.99999)
[80] = "%.5f",   -- Radar azimuth scan, (0.33333, 0, 0.99999)
[79] = "%.5f",   -- Radar elevation scan, (-0.33333, 0, 0.99999)
[80] = "%.5f",   -- Radar azimuth scan, (-0.33333, 0, 0.99999)
[20] = "%.1f",   -- IR gain (no function), (0.5, 0, 1)
[21] = "%.1f",   -- IR volume (no function), (0.5, 0, 1)
[22] = "%.1f",   -- IR threshold (no function), (0.5, 0, 1)
[23] = "%.1f",   -- Brightness, (0.5, 0, 1)
[24] = "%.1f",   -- Pulse video, (0.5, 0, 1)
[25] = "%.1f",   -- Erase, (0.5, 0, 1)
[26] = "%.1f",   -- Pulse gain, (0.5, 0, 1)
[27] = "%.1f",   -- ACM threshold (no function), (0.5, 0, 1)
[28] = "%.1f",   -- JAM/JET (no function), (0.5, 0, 1)
[29] = "%.1f",   -- PD threshold clutter, (0.5, 0, 1)
[30] = "%.1f",   -- PD threshold clear (no function), (0.5, 0, 1)
--   RADARALTIMETER(29)
[16020] = "%1d",   -- Radar Altimeter Control Knob, (1, 0, 1)
[308] = "%.1f",   -- Radar Altimeter Control Knob, (0.5, 0, 1)
--   RWR(54)
[2137] = "%1d",   -- AN/ALR-67 Mode, (-1, -1, 0)
[2139] = "%1d",   -- AN/ALR-67 Power, (-1, 0, 1)
[2140] = "%1d",   -- AN/ALR-67 Test, (-1, -1, 0)
[376] = "%1d",   -- AN/ALR-67 Display Brightness, (1, 0, 1)
[2137] = "%1d",   -- AN/ALR-67 Mode, (1, 1, 0)
[2139] = "%1d",   -- AN/ALR-67 Power, (1, 0, 1)
[2140] = "%1d",   -- AN/ALR-67 Test, (1, 1, 0)
[16011] = "%1d",   -- AN/ALR-67 Display Brightness, (1, 0, 1)
[2136] = "%.2f",   -- AN/ALR-67 Display Type, (0.25, 0, 1)
[2136] = "%.2f",   -- AN/ALR-67 Display Type, (-0.25, 0, 1)
--   STDBYAI(30)
[6155] = "%1d",   -- Standby ADI Knob, (1, 0, 1)
--[] = "%1d",   -- Standby ADI Knob, (1, 0, 1)
[6156] = "%.1f",   -- Standby ADI Knob, (0.5, 0, 1)
[19101] = "%.1f",   -- Standby ADI Knob, (0.5, 0, 1)
--   TACAN(47)
[2042] = "%1d",   -- TACAN Mode Normal/Inverse, (-2, -1, 1)
[2043] = "%1d",   -- TACAN Channel X/Y, (-2, -1, 1)
[372] = "%1d",   -- TACAN Channel X/Y, (-1, 0, 1)
[373] = "%1d",   -- TACAN Mode Normal/Inverse, (-1, 0, 1)
[375] = "%1d",   -- TACAN Volume, (0, 0, 1)
[2036] = "%1d",   -- TACAN Volume, (0, 0, 1)
[135] = "%1d",   -- TACAN CMD Button, (1, 0, 1)
[292] = "%1d",   -- TACAN CMD Button, (1, 0, 1)
[371] = "%1d",   -- TACAN BIT, (1, 0, 1)
[372] = "%1d",   -- TACAN Channel X/Y, (1, 0, 1)
[373] = "%1d",   -- TACAN Mode Normal/Inverse, (1, 0, 1)
[2115] = "%1d",   -- TACAN BIT, (1, 0, 1)
[2042] = "%1d",   -- TACAN Mode Normal/Inverse, (2, -1, 1)
[2043] = "%1d",   -- TACAN Channel X/Y, (2, -1, 1)
[8888] = "%.4f",   -- TACAN Channel Wheel (Tens), (0.083333333333333, 0, 1)
[8891] = "%.4f",   -- TACAN Channel Wheel (Tens), (0.083333333333333, 0, 1)
[8888] = "%.4f",   -- TACAN Channel Wheel (Tens), (-0.083333333333333, 0, 1)
[8891] = "%.4f",   -- TACAN Channel Wheel (Tens), (-0.083333333333333, 0, 1)
[8889] = "%.4f",   -- TACAN Channel Lever (Ones), (0.11111111111111, 0, 1)
[8890] = "%.4f",   -- TACAN Channel Lever (Ones), (0.11111111111111, 0, 1)
[8889] = "%.4f",   -- TACAN Channel Lever (Ones), (-0.11111111111111, 0, 1)
[8890] = "%.4f",   -- TACAN Channel Lever (Ones), (-0.11111111111111, 0, 1)
[374] = "%.2f",   -- TACAN Mode, (0.25, 0, 1)
[2041] = "%.2f",   -- TACAN Mode, (0.25, 0, 1)
[374] = "%.2f",   -- TACAN Mode, (-0.25, 0, 1)
[2041] = "%.2f",   -- TACAN Mode, (-0.25, 0, 1)
--   TCS(37)
[88] = "%1d",   -- TCS FOV, (-2, -1, 1)
[87] = "%1d",   -- TCS Acquisition, (-1, -1, 1)
[89] = "%1d",   -- TCS Slave, (-1, -1, 1)
[90] = "%1d",   -- Record power (no function), (-1, -1, 1)
[2011] = "%1d",   -- TV/IR switch, (-1, -1, 1)
[87] = "%1d",   -- TCS Acquisition, (1, -1, 1)
[89] = "%1d",   -- TCS Slave, (1, -1, 1)
[90] = "%1d",   -- Record power (no function), (1, -1, 1)
[2011] = "%1d",   -- TV/IR switch, (1, -1, 1)
[16016] = "%1d",   -- Record reset (no function), (1, 0, 1)
[88] = "%1d",   -- TCS FOV, (2, -1, 1)
[91] = "%.2f",   -- Record mode (no function), (0.25, 0, 1)
[91] = "%.2f",   -- Record mode (no function), (-0.25, 0, 1)
--   TID(43)
[48] = "%1d",   -- TID Brightness, (1, 0, 1)
[49] = "%1d",   -- TID Contrast, (1, 0, 1)
[52] = "%1d",   -- collision steering, (1, 0, 1)
[53] = "%1d",   -- TID track hold, (1, 0, 1)
[226] = "%1d",   -- TID Non attack, (1, 0, 1)
[670] = "%1d",   -- Video Output Toggle (TCS/LANTIRN), (1, 0, 1)
[1115] = "%1d",   -- TID Alt num, (1, 0, 1)
[1116] = "%1d",   -- TID Sym Elem, (1, 0, 1)
[1117] = "%1d",   -- TID Data link, (1, 0, 1)
[1118] = "%1d",   -- TID Jam strobe, (1, 0, 1)
[2004] = "%1d",   -- TID Reject Image Device disable (no function), (1, 0, 1)
[2113] = "%1d",   -- TID Launch zone, (1, 0, 1)
[2114] = "%1d",   -- TID Velocity vector, (1, 0, 1)
[9964] = "%1d",   -- Next Launch, (1, 0, 1)
[2005] = "%.5f",   -- TID Mode, (0.33333, 0, 0.99999)
[2005] = "%.5f",   -- TID Mode, (-0.33333, 0, 0.99999)
[2006] = "%.1f",   -- TID Range, (0.5, -1, 1)
[2006] = "%.1f",   -- TID Range, (-0.5, -1, 1)
--   VDI(42)
[1010] = "%1d",   -- VDI Power On/Off, (-1, 0, 1)
[1018] = "%1d",   -- VDI Landing Mode, (-1, 0, 1)
[1019] = "%1d",   -- VDI Display Mode, (-1, 0, 1)
--[-1] = "%1d",   -- VDI filter, (1, 0, 1)
[1010] = "%1d",   -- VDI Power On/Off, (1, 0, 1)
[1018] = "%1d",   -- VDI Landing Mode, (1, 0, 1)
[1019] = "%1d",   -- VDI Display Mode, (1, 0, 1)
[1035] = "%1d",   -- VSDI Screen Trim, (1, 0, 1)
[1036] = "%1d",   -- VSDI Screen Brightness, (1, 0, 1)
[1038] = "%1d",   -- VDI Screen Contrast, (1, 0, 1)
--   WARNINGLIGHTS(34)
[9199] = "%1d",   -- Master Caution Reset, (1, 0, 1)
--   WEAPONS(55)
[60] = "%1d",   -- Bomb single/pairs, (-1, 0, 1)
[61] = "%1d",   -- Bomb step/ripple, (-1, 0, 1)
[62] = "%1d",   -- A/G gun mode, (-1, 0, 1)
[63] = "%1d",   -- Mech fuse, (-1, -1, 1)
[64] = "%1d",   -- Jettison station 6, (-1, 0, 1)
[65] = "%1d",   -- Jettison station 3, (-1, 0, 1)
[66] = "%1d",   -- Jettison racks/weapons, (-1, 0, 1)
[67] = "%1d",   -- Jettison right tank, (-1, 0, 1)
[68] = "%1d",   -- Jettison station 1, (-1, -1, 1)
[69] = "%1d",   -- Jettison station 4, (-1, 0, 1)
[70] = "%1d",   -- Jettison station 5, (-1, 0, 1)
[71] = "%1d",   -- Jettison station 8, (-1, -1, 1)
[73] = "%1d",   -- Jettison left tank, (-1, 0, 1)
[75] = "%1d",   -- Missile option, (-1, -1, 1)
[78] = "%1d",   -- Selective jettison, (-1, -1, 0)
[1047] = "%1d",   -- Master Arm Switch, (-1, -1, 1)
[1046] = "%1d",   -- Master Arm Cover, (0, 0, 1)
[1049] = "%1d",   -- ACM Cover, (0, 0, 1)
[1069] = "%1d",   -- Jettison aux guard, (0, 0, 1)
[60] = "%1d",   -- Bomb single/pairs, (1, 0, 1)
[61] = "%1d",   -- Bomb step/ripple, (1, 0, 1)
[62] = "%1d",   -- A/G gun mode, (1, 0, 1)
[63] = "%1d",   -- Mech fuse, (1, -1, 1)
[64] = "%1d",   -- Jettison station 6, (1, 0, 1)
[65] = "%1d",   -- Jettison station 3, (1, 0, 1)
[66] = "%1d",   -- Jettison racks/weapons, (1, 0, 1)
[67] = "%1d",   -- Jettison right tank, (1, 0, 1)
[68] = "%1d",   -- Jettison station 1, (1, -1, 1)
[69] = "%1d",   -- Jettison station 4, (1, 0, 1)
[70] = "%1d",   -- Jettison station 5, (1, 0, 1)
[71] = "%1d",   -- Jettison station 8, (1, -1, 1)
[73] = "%1d",   -- Jettison left tank, (1, 0, 1)
[74] = "%1d",   -- A/A Launch, (1, 0, 1)
[75] = "%1d",   -- Missile option, (1, -1, 1)
[78] = "%1d",   -- Selective jettison, (1, 1, 0)
[239] = "%1d",   -- Emergency stores jettison, (1, 0, 1)
[1022] = "%1d",   -- Gun Ammunition Counter Adjustment, (1, 0, 1)
[1046] = "%1d",   -- Master Arm Cover, (1, 0, 1)
[1047] = "%1d",   -- Master Arm Switch, (1, -1, 1)
[1048] = "%1d",   -- ACM Jettison, (1, 0, 1)
[1049] = "%1d",   -- ACM Cover, (1, 0, 1)
[1069] = "%1d",   -- Jettison aux guard, (1, 0, 1)
[16000] = "%1d",   -- Gun rate, (1, 0, 1)
[16001] = "%1d",   -- Sidewinder cool, (1, 0, 1)
[16002] = "%1d",   -- Missile prepare, (1, 0, 1)
[16003] = "%1d",   -- Missile mode, (1, 0, 1)
--[] = "%1d",   -- Gun Elevation Lead Adjustment, (1, 0, 1)
--[59] = "%.4f",   -- Weapon type wheel, (0.023255813953488, 0, 1)
[59] = "%.4f",   -- Weapon type wheel, (-0.023255813953488, 0, 1)
[9960] = "%.4f",   -- Weapon Interval x10ms, (0.11111111111111, 0, 1)
[9961] = "%.4f",   -- Weapon Interval x100ms, (0.11111111111111, 0, 1)
[9962] = "%.4f",   -- Weapon Quantity 10s, (0.11111111111111, , )
[9963] = "%.4f",   -- Weapon Quantity 1s, (0.11111111111111, 0, 1)
[9960] = "%.4f",   -- Weapon Interval x10ms, (-0.11111111111111, 0, 1)
[9961] = "%.4f",   -- Weapon Interval x100ms, (-0.11111111111111, 0, 1)
[9962] = "%.4f",   -- Weapon Quantity 10s, (-0.11111111111111, 0, 0.3333)
[9963] = "%.4f",   -- Weapon Quantity 1s, (-0.11111111111111, 0, 1)
[72] = "%.1f",   -- Missile speed gate, (0.2, 0, 1)
[72] = "%.1f",   -- Missile speed gate, (-0.2, 0, 1)
[58] = "%.2f",   -- Elec fuse, (0.25, 0, 1)
[2022] = "%.2f",   -- Attack mode, (0.25, 0, 1)
[58] = "%.2f",   -- Elec fuse, (-0.25, 0, 1)
[2022] = "%.2f",   -- Attack mode, (-0.25, 0, 1)
--   WINGSWEEP(16)
[15096] = "%1d",   -- Emergency Wing Sweep Handle (Click to pop out), (-1, 0, 1)
[317] = "%1d",   -- Emergency Wing Sweep Handle Cover, (0, 0, 1)
[317] = "%1d",   -- Emergency Wing Sweep Handle Cover, (1, 0, 1)
[384] = "%1d",   -- Emergency Wing Sweep Handle (Click to pop out), (1, 0, 1)
}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)

	--Test fuel 10k output
	local ourVariableTotalFuelRIO10k = mainPanelDevice:get_argument_value(2117)
	local ourVariableTotalFuel10k = mainPanelDevice:get_argument_value(6010)
	local ourVariableBingoFuel10k = mainPanelDevice:get_argument_value(6020)

	ExportScript.Tools.SendData(2600, ourVariableTotalFuelRIO10k)
	ExportScript.Tools.SendData(2601, ourVariableTotalFuel10k)
	ExportScript.Tools.SendData(2602, ourVariableBingoFuel10k)

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

	local lFR22Radio = GetDevice(31)
	--ExportScript.Tools.SendData(2500, string.format("%7.3f", lFR22Radio:get_frequency()/1000000)) -- full frequency
	ExportScript.Tools.SendData(2500, ExportScript.Tools.RoundFreqeuncy(lFR22Radio:get_frequency()/1000000)) -- full frequency
	local lMHz = string.format("%0.0f", lFR22Radio:get_frequency()/1000000)
	local lKHz = string.sub(string.format("%0.3f", string.format("%.3f", lFR22Radio:get_frequency()/1000000) - lMHz), 3)
	ExportScript.Tools.SendData(2501, lMHz) -- slice frequency MHz
	ExportScript.Tools.SendData(2502, lKHz) -- slice frequency KHz

	-- 1,2,3 Lamps
	--[405] = "%.1f",	-- Afterburner zone indicator 0.0=off, >= 0.3=1, >= 0.6=2, >= 0.9=3
	local lAfterburnerZoneIndicator = mainPanelDevice:get_argument_value(405)

	if lAfterburnerZoneIndicator >= 0.9 then
		ExportScript.Tools.SendData(2510, 1) -- Afterburner 1
		ExportScript.Tools.SendData(2511, 1) -- Afterburner 2
		ExportScript.Tools.SendData(2512, 1) -- Afterburner 3
	elseif lAfterburnerZoneIndicator >= 0.6 then
		ExportScript.Tools.SendData(2510, 1)
		ExportScript.Tools.SendData(2511, 2)
		ExportScript.Tools.SendData(2512, 0)
	elseif lAfterburnerZoneIndicator >= 0.3 then
		ExportScript.Tools.SendData(2510, 1)
		ExportScript.Tools.SendData(2511, 0)
		ExportScript.Tools.SendData(2512, 0)
	else
		ExportScript.Tools.SendData(2510, 0)
		ExportScript.Tools.SendData(2511, 0)
		ExportScript.Tools.SendData(2512, 0)
	end

	-- Cockpit Light
	ExportScript.Tools.IkarusCockpitLights(mainPanelDevice, {392, 393, 394})
	-- Panel Lights, Flood Lights, Instrument Lights


	--Fuel systems keys for 


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

	local lFR22Radio = GetDevice(31)
	--ExportScript.Tools.SendData(2500, string.format("%7.3f", lFR22Radio:get_frequency()/1000000)) -- full frequency
	ExportScript.Tools.SendData(2500, ExportScript.Tools.RoundFreqeuncy(lFR22Radio:get_frequency()/1000000)) -- full frequency
	local lMHz = string.format("%0.0f", lFR22Radio:get_frequency()/1000000)
	local lKHz = string.sub(string.format("%0.3f", string.format("%.3f", lFR22Radio:get_frequency()/1000000) - lMHz), 3)
	ExportScript.Tools.SendData(2501, lMHz) -- slice frequency MHz
	ExportScript.Tools.SendData(2502, lKHz) -- slice frequency KHz

	-- 1,2,3 Lamps
	--[405] = "%.1f",	-- Afterburner zone indicator 0.0=off, >= 0.3=1, >= 0.6=2, >= 0.9=3
	local lAfterburnerZoneIndicator = mainPanelDevice:get_argument_value(405)

	if lAfterburnerZoneIndicator >= 0.9 then
		ExportScript.Tools.SendDataDAC(2510, 1) -- Afterburner 1
		ExportScript.Tools.SendDataDAC(2511, 1) -- Afterburner 2
		ExportScript.Tools.SendDataDAC(2512, 1) -- Afterburner 3
	elseif lAfterburnerZoneIndicator >= 0.6 then
		ExportScript.Tools.SendDataDAC(2510, 1)
		ExportScript.Tools.SendDataDAC(2511, 2)
		ExportScript.Tools.SendDataDAC(2512, 0)
	elseif lAfterburnerZoneIndicator >= 0.3 then
		ExportScript.Tools.SendDataDAC(2510, 1)
		ExportScript.Tools.SendDataDAC(2511, 0)
		ExportScript.Tools.SendDataDAC(2512, 0)
	else
		ExportScript.Tools.SendDataDAC(2510, 0)
		ExportScript.Tools.SendDataDAC(2511, 0)
		ExportScript.Tools.SendDataDAC(2512, 0)
	end

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