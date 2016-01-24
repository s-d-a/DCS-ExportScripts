-- MiG-21Bis Export
-- Version 0.9.9 BETA

gES_FoundDCSModule = true

gES_GlassCockpitConfigEveryFrameArguments = 
{
	--[[
	every frames arguments
	based of "mainpanel_init.lua"
	Example (http://www.lua.org/manual/5.1/manual.html#pdf-string.format)
	[DeviceID] = "Format"
	  [4] = "%.4f",  <- floating-point number with 4 digits after point
	 [19] = "%0.1f", <- floating-point number with 1 digit after point
	[129] = "%1d",   <- decimal number
	]]
	[239] = "%.1f", 	-- CANOPY_anti_ice
--ALCOHOL, COMPRESSED_AIR other similar stuff == == == == == == == == == == == == == == == == == == == == == == = 
	[411] = "%.1f", 	-- ALCOHOL
	[413] = "%.1f", 	-- COMPRESSED_AIR_main
	[414] = "%.1f", 	-- COMPRESSED_AIR_aux
-- OXYGENE SYSTEM (pilot only, engine O2 separated) == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[59]  = "%.1f", 	-- OXYGENE_instrument_IK52
	[60]  = "%.1f", 	-- OXYGENE_instrument_IK52_blinking_lungs
	[58]  = "%.1f", 	-- OXYGENE_instrument_M2000
--GEAR LIGHTS == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
	[9]   = "%.1f", 	-- GEAR_NOSE_UP_LIGHT
	[12]  = "%.1f", 	-- GEAR_NOSE_DOWN_LIGHT
	[10]  = "%.1f", 	-- GEAR_LEFT_UP_LIGHT
	[13]  = "%.1f", 	-- GEAR_LEFT_DOWN_LIGHT
	[11]  = "%.1f", 	-- GEAR_RIGHT_UP_LIGHT
	[14]  = "%.1f", 	-- GEAR_RIGHT_DOWN_LIGHT
-- AIRBRAKES == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[316] = "%.1f", 	-- AIRBRAKES_button
	[7]   = "%.1f", 	-- AIRBRAKES_3D
-- INSTRUMENTS == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[100] = "%.4f", 	-- IAS_indicator
	[101] = "%.4f", 	-- TAS_indicator
	[102] = "%.4f", 	-- M_indicator
-- Baro altimeter subgroup --------------------------------------------------------------------------------------------------------------------------
	[104] = "%.4f", 	-- H_indicator_needle_m
	[112] = "%.4f", 	-- H_indicator_needle_km
--/N/ KSI subgroup (NPP) --------------------------------------------------------------------------------------------------------------------------
	[178] = "%.1f", 	-- KSI_switch
	[258] = "%.1f", 	-- KSI_adjust_button
	[111] = "%.1f", 	-- KSI_course_indicator
	[68]  = "%.1f", 	-- KSI_course_set_needle
-- RSBN subgroup ------------------------------------------------------------------------------------------------------------------------------------------------
	[176] = "%.1f", 	-- RSBN_switch
	[548] = "%.1f", 	-- RSBN_azimut_korekcija_LIGHT
	[549] = "%.1f", 	-- RSBN_dalnost_korekcija_LIGHT
	[417] = "%.1f", 	-- RSBN_distance_meter
	[355] = "%.1f", 	-- RSBN_distance_meter_Hundreds
	[356] = "%.1f", 	-- RSBN_distance_meter_Tens
	[357] = "%.1f", 	-- RSBN_distance_meter_Singles
	[587] = "%.1f", 	-- RSBN_NPP_kurs_blinker
	[588] = "%.1f", 	-- RSBN_NPP_glisada_blinker
	[590] = "%.4f", 	-- RSBN_NPP_kurs_needle
	[589] = "%.4f", 	-- RSBN_NPP_glisada_needle
	[567] = "%.1f", 	-- RSBN_KPP_kren_blinker
	[568] = "%.1f", 	-- RSBN_KPP_tangaz_blinker
	[565] = "%.4f", 	-- RSBN_KPP_kurs_director
	[566] = "%.4f", 	-- RSBN_KPP_glisada_director
--/N/ ARK subgroup ---------------------------------------------------------------------------------------------------------------------------------
	[174] = "%.1f", 	-- ARK_switch
	[254] = "%.1f", 	-- ARK_dal_bliz_selector
	[36]  = "%.4f", 	-- ARK_RSBN_needle
-- Radio-altimeter subgroup ------------------------------------------------------------------------------------------------------------------------------------------------------
	[175] = "%.1f", 	-- RADIO_ALTIMETER_MARKER_switch
	[103] = "%.4f", 	-- RADIO_ALTIMETER_indicator
	[500] = "%.1f", 	-- LOW_ALT_LIGHT
-- UUA and SUA subgroup -----------------------------------------------------------------------------------------------------------------------------------------------------------
	[105] = "%.4f", 	-- UUA_indicator
	[537] = "%.1f", 	-- AOA_WARNING_LIGHT
-- DA-200 subgroup ---------------------------------------------------------------------------------------------------------------------------------------------------------
	[107] = "%.6f", 	-- DA200_TurnNeedle
	[106] = "%.4f", 	-- DA200_VerticalVelocity
	[31]  = "%.1f", 	-- DA200_Slipball
	[177] = "%.1f", 	-- KPP_switch
	[259] = "%.1f", 	-- KPP_ARRETIR
	[535] = "%.1f", 	-- KPP_ARRETIR_light
	[108] = "%.4f", 	-- KPP_Bank
	[109] = "%.4f", 	-- KPP_Pitch
-- ACCELEROMETER == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[110] = "%.4f", 	-- ACCELEROMETER
	[228] = "%.4f", 	-- RESET_G_needle
	[113] = "%.4f", 	-- MAX_G_needle
	[114] = "%.4f", 	-- MIN_G_needle
--TRIMMER == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[172] = "%.1f", 	-- TRIMMER_switch
	[519] = "%.1f", 	-- TRIMMER_light
--PITOT TUBES == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[229] = "%.1f", 	-- PITOT_TUBES_SELECTOR
	[279] = "%.1f", 	-- PITOT_TUBES_HEATING_main
	[280] = "%.1f", 	-- PITOT_TUBES_HEATING_aux
	[406] = "%.1f", 	-- PITOT_TUBES_STATUS
-- FREEZING EFFECTS == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[410] = "%.1f", 	-- FREEZING_level_absolute
	[543] = "%.1f", 	-- FREEZING_EFFECTS_canopy
--/N/ DC bus == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[124] = "%.4f", 	-- DC_BUS_V_needle
	[165] = "%.1f", 	-- DC_BUS_battery
	[155] = "%.1f", 	-- DC_BUS_battery_heat
	[510] = "%.1f", 	-- DC_GENERATOR_LIGHT
	[16666] = "%.1f", 	-- DC_GENERATOR
	[563] = "%.1f", 	-- DC_BUS
	[55] =  "%.1f", 	-- DC_BUS_ISA_K
--/N/ AC bus == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[564] = "%.1f", 	-- AC_BUS
	[15366] = "%.1f", 	-- AC_BUS_PO7501
	[15466] = "%.1f", 	-- AC_BUS_PO7502
	[16466] = "%.1f", 	-- AC_BUS_Emerg_Inverter
	[16966] = "%.1f", 	-- AC_GENERATOR
	[511] = "%.1f", 	-- AC_GENERATOR_LIGHT
--/N/ FUEL PUMPS & FUEL SYSTEM == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[159] = "%.1f", 	-- FUEL_PUMP_3
	[160] = "%.1f", 	-- FUEL_PUMP_1
	[161] = "%.1f", 	-- FUEL_PUMP_RASHOD
	[402] = "%.4f", 	-- FUEL_PRESSURE  { 0, 45 } ????
	[52]  = "%.1f", 	-- FUEL_METER
--FUEL LIGHTS (in connection with previous) == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[501] = "%.1f", 	-- FUEL_LIGHT_FUELPODC
	[502] = "%.1f", 	-- FUEL_LIGHT_1GR
	[503] = "%.1f", 	-- FUEL_LIGHT_450
	[504] = "%.1f", 	-- FUEL_LIGHT_3GR
	[505] = "%.1f", 	-- FUEL_LIGHT_FUELPODW
	[506] = "%.1f", 	-- FUEL_LIGHT_RASHOD
--ENGINE START DEVICE == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[403] = "%.1f", 	-- ENGINE_START_DEVICE_STATUS { -1, 0, 1, 2 }
	[509] = "%.1f", 	-- START_DEVICE_ZAZIG_LIGHT
	[415] = "%.1f", 	-- ENGINE_OXYGENE_STATUS
	[61]  = "%.4f", 	-- ENGINE_OXYGENE_manometer
-- ENGINE and THROTTLE == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[624] = "%.1f", 	-- SPS_state
	[625] = "%.4f", 	-- KONUS_efficiency
	[626] = "%.4f", 	-- SOPLO_efficiency
	[50]  = "%.4f", 	-- ENGINE_RPM
	[670] = "%.4f", 	-- ENGINE_RPM2
	[51]  = "%.4f", 	-- ENGINE_TEMP
	[404] = "%.4f", 	-- ENGINE_STRESS
	[507] = "%.1f", 	-- FORSAZ_1_LIGHT
	[508] = "%.1f", 	-- FORSAZ_2_LIGHT
	[512] = "%.1f", 	-- NOZZLE_LIGHT
	[517] = "%.1f", 	-- KONUS_LIGHT
	[513] = "%.1f", 	-- OIL_LIGHT
	[627] = "%.4f", 	-- OIL_PRESSURE
	[534] = "%.1f", 	-- FIRE_LIGHT
	[405] = "%.1f", 	-- ENGINE_SURGE_DOORS_POZITION { -1, 0, 1 }
-- GIDRO == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[418] = "%.4f", 	-- PRIMARY_GIDRO_Pressure
	[419] = "%.4f", 	-- SECONDARY_GIDRO_Pressure
	[126] = "%.4f", 	-- PRIMARY_GIDRO_Pressure_needle
	[125] = "%.4f", 	-- SECONDARY_GIDRO_Pressure_needle
	[171] = "%.1f", 	-- GIDRO_NR27_switch
	[319] = "%.1f", 	-- GIDRO_ailerones_busters_switch
	[515] = "%.1f", 	-- HYDRAULIC_LIGHT
	[514] = "%.1f", 	-- BUSTER_LIGHT
--HELMET == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[306] = "%.1f", 	-- HELMET_heat_man_auto_switch
	[310] = "%.1f", 	-- HELMET_quick_heat_button
	[595] = "%.1f", 	-- HELMET_visor_switch
--AIR CONDITIONING == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[412] = "%.4f", 	-- AIR_CONDITION_cockpit_temperature
-- WARNING LIGHTS == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[541] = "%.1f", 	-- CANOPY_WARNING_LIGHT
	[542] = "%.1f", 	-- SORC_LIGHT
	[407] = "%.1f", 	-- WARNING_LIGHTS_CHECK_STATE
	[516] = "%.1f", 	-- MARKER_LIGHT
	[518] = "%.1f", 	-- STABILISATOR_LIGHT
	[520] = "%.1f", 	-- CHECK_GEAR_LIGHT
	[521] = "%.1f", 	-- FLAPS_LIGHT
	[522] = "%.1f", 	-- AIRBRAKE_LIGHT
	[523] = "%.1f", 	-- CENTRAL_PYLON_LIGHT
	[524] = "%.1f", 	-- RATO_L_LIGHT
	[525] = "%.1f", 	-- RATO_R_LIGHT
	[526] = "%.1f", 	-- PYLON_1_ON_LIGHT
	[527] = "%.1f", 	-- PYLON_2_ON_LIGHT
	[528] = "%.1f", 	-- PYLON_3_ON_LIGHT
	[529] = "%.1f", 	-- PYLON_4_ON_LIGHT
	[530] = "%.1f", 	-- PYLON_1_OFF_LIGHT
	[531] = "%.1f", 	-- PYLON_2_OFF_LIGHT
	[532] = "%.1f", 	-- PYLON_3_OFF_LIGHT
	[533] = "%.1f", 	-- PYLON_4_OFF_LIGHT
-- GIRO DEVICES == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[536] = "%.1f", 	-- GIRO_ARRETIR
	[408] = "%.1f", 	-- GIRO_AGD_KSI_SAU_RLS_STATE
	[409] = "%.1f", 	-- GIRO_DA200_KSI_SAU_RLS_STATE
	[162] = "%.1f", 	-- GIRO_AGD_KSI_SAU_RLS_switch
	[163] = "%.1f", 	-- GIRO_DA200_KSI_SAU_RLS_switch
-- ASP == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[539] = "%.1f", 	-- ASP_TGT_ACQUIRED_LIGHT
	[538] = "%.1f", 	-- ASP_LAUNCH
	[540] = "%.1f", 	-- ASP_DISENGAGE
	[67] =  "%.1f", 	-- GUN_camera_3D
	[551] =  "%.1f", 	-- ASP_DISTANCE
	[552] =  "%.4f", 	-- ASP_DISTANCE_MISSILE
	[553] =  "%.1f", 	-- RADAR_ERROR
	[554] =  "%.1f", 	-- RADAR_LOW_ALT
	[555] =  "%.1f", 	-- RADAR_FIX_BEAM
	[556] =  "%.1f", 	-- ASP_SCALE_BASE
	[557] =  "%.1f", 	-- ASP_SCALE_ANGLE
	[558] =  "%.1f", 	-- RADAR_LAUNCH
	[559] =  "%.1f", 	-- RADAR_MISSILE_HEAD_RDY
	[560] =  "%.1f", 	-- RADAR_JAMMED
	[561] =  "%.1f", 	-- RADAR_BROKEN
	[562] =  "%.1f", 	-- RADAR_DISENGAGE
	[571] =  "%.1f", 	-- RADAR_19A_1
	[572] =  "%.1f", 	-- RADAR_19A_2
	[573] =  "%.1f", 	-- RADAR_19A_3
	[574] =  "%.1f", 	-- RADAR_19A_4
	[575] =  "%.1f", 	-- RADAR_19A_5
	[576] =  "%.1f", 	-- RADAR_19A_6
	[577] =  "%.1f", 	-- RADAR_19A_7
	[578] =  "%.1f", 	-- RADAR_19A_8
	[579] =  "%.1f", 	-- SEAT_HEIGHT
	[580] =  "%.1f", 	-- IAB_BOX
	[581] =  "%.1f", 	-- IAB_LIGHT_1
	[582] =  "%.1f", 	-- IAB_LIGHT_2
	[583] =  "%.1f", 	-- IAB_LIGHT_3
	[584] =  "%.1f", 	-- MISSILE_55_1
	[585] =  "%.1f", 	-- MISSILE_55_2
	[586] =  "%.1f", 	-- MISSILE_62
	[63] =   "%.1f", 	-- TACTICAL_DROP_ARMED
	[591] =   "%.1f", 	-- SPS_BOX
	[592] =   "%.1f", 	-- SPS_HIGH
	[593] =   "%.1f", 	-- SPS_ILLUMINATION
	[594] =   "%.1f", 	-- SPS_LAUNCH
	[598] =   "%.1f", 	-- GUV_BOX
	[701] =   "%.1f", 	-- GUV_LAUNCH
-- SARPP == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[193] =   "%.1f", 	-- SARPP_switch
-- SAU == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[546] =   "%.1f", 	-- SAU_stabilization_LIGHT
	[547] =   "%.1f", 	-- SAU_privedenie_LIGHT
	[544] =   "%.1f", 	-- SAU_landing_COMMAND_LIGHT
	[545] =   "%.1f", 	-- SAU_landing_AUTO_LIGHT
-- ARU == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[64] =   "%.1f", 	-- ARU_3G_instrument
-- KONUS == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[66] =   "%.1f", 	-- KONUS_UPES_3_instrument
-- DRAG CHUTE == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[550] =   "%.1f", 	-- GUN_GOTOVN_LIGHT
-- SPO == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[601] =   "%.1f", 	-- SPO_L_F
	[602] =   "%.1f", 	-- SPO_R_F
	[603] =   "%.1f", 	-- SPO_R_B
	[604] =   "%.1f", 	-- SPO_L_B
	[605] =   "%.1f", 	-- SPO_MUTED
-- SOD == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[606] =   "%.1f", 	-- SOD_ANSWER
	[607] =   "%.1f", 	-- SRZO_ON
	[608] =   "%.1f", 	-- SRZO_CODE
	[609] =   "%.1f", 	-- SRZO_CIPH
	[611] =   "%.1f", 	-- SRZO_ERROR
	[613] =   "%.1f", 	-- ASP_BACKLIGHT_ON
	[614] =   "%.1f", 	-- ASP_BACKLIGHT_INTENSITY
	[618] =   "%.1f", 	-- NEEDLES_PHOSPHOR_LIGHT
	[152] =   "%.1f", 	-- RED_PANELLIGHT
	[619] =   "%.1f", 	-- RED_FLOODLIGHT
	[620] =   "%.1f", 	-- WHITE_PANELLIGHT
	[621] =   "%.1f", 	-- RED_INSTRUMENT
	[622] =   "%.1f", 	-- ASP_GLASS_LIGHT_INTENSITY
	[652] =   "%.4f", 	-- H_indicator_needle_max
	[655] =   "%.4f", 	-- COCKPIT_PRESSURE_ALTIMETER
	[656] =   "%.4f", 	-- COCKPIT_PRESSURE	
}
gES_GlassCockpitConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	-- cockpit mechanics
	--[718] = "%.1f",     -- Canopy Switch, OPEN/OFF/CLOSE {-1.0, 1.0}
	--[818] = "%.1f",     -- Emergency Jettison Handle, IN/OUT {0.0, 1.0}
	
-- DC & AC buses & giro devices
	[165] =   "%.1f", 	-- Battery On/Off
	[155] =   "%.1f", 	-- Battery Heat On/Off
	[166] =   "%.1f", 	-- DC Generator On/Off
	[169] =   "%.1f", 	-- AC Generator On/Off
	[153] =   "%.1f", 	-- PO-750 Inverter #1 On/Off
	[154] =   "%.1f", 	-- PO-750 Inverter #2 On/Off
	[164] =   "%.1f", 	-- Emergency Inverter
-- GIRO
	[162] =   "%.1f", 	-- Giro, NPP, SAU, RLS Signal, KPP Power On/Off
	[163] =   "%.1f", 	-- DA-200 Signal, Giro, NPP, RLS, SAU Power On/Off
-- FUEL_PUMPS & FUEL_SYSTEM (merged)
	[159] =   "%.1f", 	-- Fuel Tanks 3rd Group, Fuel Pump
	[160] =   "%.1f", 	-- Fuel Tanks 1st Group, Fuel Pump
	[161] =   "%.1f", 	-- Drain Fuel Tank, Fuel Pump
	[274] =   "%.1f", 	-- Fuel Quantity Set
-- ENGINE START DEVICE	
	[302] =   "%.1f", 	-- APU On/Off
	[288] =   "%.1f", 	-- Engine Cold / Normal Start
	[289] =   "%.1f", 	-- Start Engine
	[301] =   "%.1f", 	-- Engine Emergency Air Start
	[616] =   "%.1f", 	-- Engine Stop/Lock
-- ACCELEROMETER
	[228] =   "%.1f", 	-- Accelerometer Reset
-- PITOT TUBES and related things that use dc bus for heating
	[229] =   "%.1f", 	-- Pitot tube Selector Main/Emergency
	[279] =   "%.1f", 	-- Pitot tube/Periscope/Clock Heat
	[280] =   "%.1f", 	-- Secondary Pitot Tube Heat
-- DA-200
	[261] =   "%.1f", 	-- Variometer Set
-- ENGINE
	[308] =   "%.1f", 	-- Anti surge doors - Auto/Manual
	[300] =   "%.1f", 	-- Afterburner/Maximum Off/On
	[320] =   "%.1f", 	-- Emergency Afterburner Off/On
-- FIRE EXTINGUISHER
	[303] =   "%.1f", 	-- Fire Extinguisher Off/On
	[324] =   "%.1f", 	-- Fire Extinguisher Cover
	[325] =   "%.1f", 	-- Fire Extinguisher
-- LIGHTS
	[612] =   "%.1f", 	-- Cockpit Texts Back-light default_axis
	[156] =   "%.1f", 	-- Instruments Back-light default_axis
	[157] =   "%.1f", 	-- Main Red Lights default_axis
	[222] =   "%.1f", 	-- Main White Lights default_axis
	[194] =   "%.1f", 	-- Navigation Lights Off/Min/Med/Max
	[323] =   "%.1f", 	-- Landing Lights Off/Taxi/Land
-- LIGHTS WARNING
	[195] =   "%.1f", 	-- CheckWarningLights11
	[196] =   "%.1f", 	-- CheckWarningLights21
	[273] =   "%.1f", 	-- CheckWarningLights31
	[282] =   "%.1f", 	-- CheckWarningLights41
	[283] =   "%.1f", 	-- CheckWarningLights51
	[322] =   "%.1f", 	-- CheckWarningLights61
	[657] =   "%.1f", 	-- SORC
-- Radio
	[173] =   "%.1f", 	-- Radio System On/Off
	[208] =   "%.1f", 	-- Radio / Compass
	[209] =   "%.1f", 	-- Squelch On/Off
	[210] =   "%.1f", 	-- Radio Volume
	[211] =   "%.1f", 	-- Radio Channel
	[315] =   "%.1f", 	-- Radio PTT
-- ARK
	[174] =   "%.1f", 	-- ARK On/Off
	[198] =   "%.1f", 	-- ARK Sound
	[212] =   "%.1f", 	-- ARK Change
	[189] =   "%.1f", 	-- ARK Zone
	[197] =   "%.1f", 	-- ARK Mode - Antenna / Compass
	[254] =   "%.1f", 	-- Marker Far/Near
-- RSBN
	[176] =   "%.1f", 	-- RSBN On/Off
	[240] =   "%.1f", 	-- RSBN Mode Land/Navigation/Descend
	[340] =   "%.1f", 	-- RSBN / ARK
	[294] =   "%.1f", 	-- RSBN Identify
	[347] =   "%.1f", 	-- RSBN self-test
--RSBN Panel
	[345] =   "%.1f", 	-- RSBN Sound
	[351] =   "%.1f", 	-- RSBN Navigation
	[352] =   "%.1f", 	-- PRMG Landing
	[366] =   "%.1f", 	-- RSBN Reset
	[367] =   "%.1f", 	-- RSBN Bearing
	[368] =   "%.1f", 	-- RSBN Distance
-- SAU
	[179] =   "%.1f", 	-- SAU On/Off
	[180] =   "%.1f", 	-- SAU Pitch On/Off
	[343] =   "%.1f", 	-- SAU - Stabilize
	[376] =   "%.1f", 	-- SAU cancel current mode
	[377] =   "%.1f", 	-- SAU - Recovery
	[344] =   "%.1f", 	-- SAU Preset - Limit Altitude
	[341] =   "%.1f", 	-- SAU - Landing - Command
	[342] =   "%.1f", 	-- SAU - Landing - Auto
	[348] =   "%.1f", 	-- SAU Reset/Off
-- SPO
	[202] =   "%.1f", 	-- SPO-10 RWR On/Off
	[226] =   "%.1f", 	-- SPO-10 Test
	[227] =   "%.1f", 	-- SPO-10 Night / Day
	[225] =   "%.1f", 	-- SPO-10 Volume
-- SRZO IFF
	[188] =   "%.1f", 	-- SRZO IFF Coder/Decoder On/Off
	[192] =   "%.1f", 	-- SRZO Codes
	[346] =   "%.1f", 	-- IFF System 'Type 81' On/Off
	[190] =   "%.1f", 	-- Emergency Transmitter Cover
	[191] =   "%.1f", 	-- Emergency Transmitter On/Off
	[427] =   "%.1f", 	-- SRZO Self Destruct Cover
	[428] =   "%.1f", 	-- SRZO Self Destruct
-- SOD
	[200] =   "%.1f", 	-- SOD IFF On/Off
	[199] =   "%.1f", 	-- SOD Identify
	[201] =   "%.1f", 	-- SOD Wave Selector 3/1/2
	[204] =   "%.1f", 	-- SOD Modes
-- RADAR
	[205] =   "%.1f", 	-- Radar Off/Prep/On
	[206] =   "%.1f", 	-- Low Altitude Off/Comp/On
	[207] =   "%.1f", 	-- Locked Beam On/Off
	[266] =   "%.1f", 	-- Radar Screen Magnetic Reset
	[330] =   "%.1f", 	-- Radar Interferes - Continues
	[331] =   "%.1f", 	-- Radar Interferes - Temporary
	[332] =   "%.1f", 	-- Radar Interferes - Passive
	[333] =   "%.1f", 	-- Radar Interferes - Weather
	[334] =   "%.1f", 	-- Radar Interferes - IFF
	[335] =   "%.1f", 	-- Radar Interferes - Low Speed
	[336] =   "%.1f", 	-- Radar Interferes - Self-test
	[337] =   "%.1f", 	-- Radar Interferes - Reset
	[378] =   "%.1f", 	-- Lock Target
	[623] =   "%.1f", 	-- Radar Polar Filter
-- SPRD
	[167] =   "%.1f", 	-- SPRD (RATO) System On/Off
	[168] =   "%.1f", 	-- SPRD (RATO) Drop System On/Off
	[252] =   "%.1f", 	-- SPRD (RATO) Start Cover
	[253] =   "%.1f", 	-- SPRD (RATO) Start
	[317] =   "%.1f", 	-- SPRD (RATO)t Drop Cover
	[318] =   "%.1f", 	-- SPRD (RATO) Drop
-- CONTROL SYSTEM ------------- subsystems --------------------------------------------
-- SPS
	[293] =   "%.1f", 	-- SPS System Off/On
-- ARU
	[295] =   "%.1f", 	-- ARU System - Manual/Auto
	[296] =   "%.1f", 	-- ARU System - Low Speed/Neutral/High Speed
-- Airbrake
	[316] =   "%.1f", 	-- Airbrake - Out/In
-- Gear brakes
	[299] =   "%.1f", 	-- ABS Off/On
	[238] =   "%.1f", 	-- Nosegear Brake Off/On
	[237] =   "%.1f", 	-- Emergency Brake
-- Gears
	[326] =   "%.1f", 	-- Gear Handle Fixator
	[327] =   "%.1f", 	-- Gear Up/Neutral/Down
	[223] =   "%.1f", 	-- Main Gears Emergency Release Handle
	[281] =   "%.1f", 	-- Nose Gear Emergency Release Handle
-- Flaps
	[311] =   "%.1f", 	-- Flaps Neutral
	[312] =   "%.1f", 	-- Flaps Take-Off
	[313] =   "%.1f", 	-- Flaps Landing
	[314] =   "%.1f", 	-- Flaps Reset buttons
-- Drag chute
	[298] =   "%.1f", 	-- Release Drag Chute
	[304] =   "%.1f", 	-- Drop Drag Chute Cover
	[305] =   "%.1f", 	-- Drop Drag Chute
--TRIMMER
	[172] =   "%.1f", 	-- Trimmer On/Off
	[379] =   "%.1f", 	-- Trimmer Pitch Up/Down
-- KONUS
	[170] =   "%.1f", 	-- Nosecone On/Off
	[309] =   "%.1f", 	-- Nosecone Control - Manual/Auto
	[236] =   "%.1f", 	-- Nosecone manual position controller
-- SOPLO
	[291] =   "%.1f", 	-- Engine Nozzle 2 Position Emergency Control
--MAIN_HYDRO and BUSTER_HYDRO == == == == == == == == == == == == == == == == == == == TEMPORARY MERGED == == == == == == == == == == == == == == == == == == == == == == 
	[171] =   "%.1f", 	-- Emergency Hydraulic Pump On/Off
	[319] =   "%.1f", 	-- Aileron Booster - Off/On
--KPP
	[177] =   "%.1f", 	-- KPP Main/Emergency
	[259] =   "%.1f", 	-- KPP Cage
	[260] =   "%.1f", 	-- KPP Set
--IAS / TAS / KSI (NPP)
	[178] =   "%.1f", 	-- NPP On/Off
	[258] =   "%.1f", 	-- NPP Adjust
	[263] =   "%.1f", 	-- NPP Course set
-- ALTIMETER and radioALTIMETER
	[175] =   "%.1f", 	-- Radio Altimeter/Marker On/Off
	[284] =   "%.1f", 	-- Dangerous Altitude Warning Set
	[262] =   "%.1f", 	-- Altimeter pressure knob
-- OXYGENE_SYSTEM
	[285] =   "%.1f", 	-- Helmet Air Condition Off/On
	[286] =   "%.1f", 	-- Emergency Oxygen Off/On
	[287] =   "%.1f", 	-- Mixture/Oxygen
-- CANOPY
	[328] =   "%.1f", 	-- Hermetize Canopy
	[329] =   "%.1f", 	-- Secure Canopy
	[375] =   "%.1f", 	-- Canopy Open
	[385] =   "%.1f", 	-- Canopy Close
	[239] =   "%.1f", 	-- Canopy Anti Ice
	[224] =   "%.1f", 	-- Canopy Emergency Release Handle
	[649] =   "%.1f", 	-- Canopy Ventilation System
-- ASP Gunsight
	[186] =   "%.1f", 	-- ASP Optical sight On/Off
	[241] =   "%.1f", 	-- ASP Main Mode - Manual/Auto
	[242] =   "%.1f", 	-- ASP Mode - Bombardment/Shooting
	[243] =   "%.1f", 	-- ASP Mode - Missiles-Rockets/Gun
	[244] =   "%.1f", 	-- ASP Mode - Giro/Missile
	[249] =   "%.1f", 	-- Pipper On/Off
	[250] =   "%.1f", 	-- Fix net On/Off
	[245] =   "%.1f", 	-- Target Size
	[246] =   "%.1f", 	-- Intercept Angle
	[247] =   "%.1f", 	-- Scale Backlights control
	[248] =   "%.1f", 	-- Pipper light control
	[251] =   "%.1f", 	-- Fix Net light control
	[384] =   "%.1f", 	-- TDC Range / Pipper Span control
-- WEAPON_CONTROL
	[181] =   "%.1f", 	-- Missiles - Rockets Heat On/Off
	[182] =   "%.1f", 	-- Missiles - Rockets Launch On/Off
	[183] =   "%.1f", 	-- Pylon 1-2 Power On/Off
	[184] =   "%.1f", 	-- Pylon 3-4 Power On/Off
	[185] =   "%.1f", 	-- GS-23 Gun On/Off
	[187] =   "%.1f", 	-- Guncam On/Off
	[277] =   "%.1f", 	-- Tactical Drop Cover
	[278] =   "%.1f", 	-- Tactical Drop
	[275] =   "%.1f", 	-- Emergency Missile/Rocket Launcher Cover
	[276] =   "%.1f", 	-- Emergency Missile/Rocket Launcher
	[256] =   "%.1f", 	-- Drop Wing Fuel Tanks Cover
	[257] =   "%.1f", 	-- Drop Wing Fuel Tanks
	[386] =   "%.1f", 	-- Drop Center Fuel Tank
	[269] =   "%.1f", 	-- Drop Payload - Outer Pylons Cover
	[270] =   "%.1f", 	-- Drop Payload - Outer Pylons
	[271] =   "%.1f", 	-- Drop Payload - Inner Pylons Cover
	[272] =   "%.1f", 	-- Drop Payload - Inner Pylons
	[230] =   "%.1f", 	-- Weapon Mode - Air/Ground
	[231] =   "%.1f", 	-- Weapon Mode - IR Missile/Neutral/SAR Missile
	[232] =   "%.1f", 	-- Activate Gun Loading Pyro - 1
	[233] =   "%.1f", 	-- Activate Gun Loading Pyro - 2
	[234] =   "%.1f", 	-- Activate Gun Loading Pyro - 3
	[235] =   "%.1f", 	-- Weapon Selector
	[297] =   "%.1f", 	-- Missile Seeker Sound
	[381] =   "%.1f", 	-- Fire Gun
	[382] =   "%.1f", 	-- Release Weapon
	[383] =   "%.1f", 	-- Release Weapon Cover
-- HELMET_VISOR	
	[306] =   "%.1f", 	-- Helmet Heat - Manual/Auto
	[310] =   "%.1f", 	-- Helmet Quick Heat
	[369] =   "%.1f", 	-- Helmet visor - off/on
-- AIR CONDITIONING
	[292] =   "%.1f", 	-- Cockpit Air Condition Off/Cold/Auto/Warm
-- SARPP
	[193] =   "%.1f", 	-- SARPP-12 Flight Data Recorder On/Off
-- Flight Control

-- Dummy buttons/switches
	[632] =   "%.1f", 	-- Radar emission - Cover
	[633] =   "%.1f", 	-- Radar emission - Combat/Training
	[634] =   "%.1f", 	-- G-Suit Max/Min valve
	[635] =   "%.1f", 	-- Electric Bus Nr.1 - Cover
	[636] =   "%.1f", 	-- Electric Bus Nr.1
	[637] =   "%.1f", 	-- Electric Bus Nr.2
	[638] =   "%.1f", 	-- 1.7 Mach Test Button - Cover
	[639] =   "%.1f", 	-- 1.7 Mach Test Button
	[640] =   "%.1f", 	-- BU-45 Buster System Separation
	[642] =   "%.1f", 	-- SOD Control PBU-1
	[641] =   "%.1f", 	-- SOD Control PBU-2
	[643] =   "%.1f", 	-- Eject
	[644] =   "%.1f", 	-- Ejection Seat Emergency Oxygen
	[645] =   "%.1f", 	-- UK-2M Mic Amplifier M/L
	[646] =   "%.1f", 	-- UK-2M Mic Amplifier GS/KM
	[647] =   "%.1f", 	-- Suit Ventilation
	[648] =   "%.1f", 	-- Harness Separation
	[650] =   "%.1f", 	-- Harness Loose/Tight
	[651] =   "%.1f", 	-- Throttle Fixation
-- IAB PBK-3
	[387] =   "%.1f", 	-- Emergency Jettison
	[388] =   "%.1f", 	-- Emergency Jettison Armed / Not Armed
	[389] =   "%.1f", 	-- Tactical Jettison
	[390] =   "%.1f", 	-- Special AB / Missile-Rocket-Bombs-Cannon
	[391] =   "%.1f", 	-- Brake Chute
	[392] =   "%.1f", 	-- Detonation Air / Ground
-- SPS 141-100	
	[393] =   "%.1f", 	-- "On / Off"
	[394] =   "%.1f", 	-- Transmit / Receive
	[395] =   "%.1f", 	-- Program I / II
	[396] =   "%.1f", 	-- Continuous / Impuls
	[397] =   "%.1f", 	-- Test
	[398] =   "%.1f", 	-- Dispenser Auto / Manual
	[399] =   "%.1f", 	-- Off / Parallel / Full
	[400] =   "%.1f", 	-- Manual Activation button - Cover
	[401] =   "%.1f", 	-- Manual Activation button
-- GUV Control Box -/N/ GUV is useless, it's mostly anti-infantry weapon
	[420] =   "%.1f", 	-- On / Off
	[421] =   "%.1f", 	-- MAIN GUN / UPK Guns
	[422] =   "%.1f", 	-- LOAD 1
	[425] =   "%.1f", 	-- LOAD 2
	[424] =   "%.1f", 	-- LOAD 3	
}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

function ProcessGlassCockpitDCSConfigHighImportance(mainPanelDevice)
	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6
		--[[
			every frame export
			Example from A-10C
			Landing Gear
			mainPanelDevice, basis panel
			SendDataHW("2004",  mainPanelDevice:get_argument_value(659))			-- GEAR_N_SAFE
			SendDataHW("2005",  mainPanelDevice:get_argument_value(660))			-- GEAR_L_SAFE
			SendDataHW("2006",  mainPanelDevice:get_argument_value(661))			-- GEAR_R_SAFE
		]]
		
		
		-- Distance
		-- distance_meter_Hundreds;distance_meter_Tens;distance_meter_Singles
		-- 355; 356; 357;
		SendData(2000, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(355), 
										mainPanelDevice:get_argument_value(356), 
										mainPanelDevice:get_argument_value(357)))
		-- HSI
		-- heading; requiredHeading; bearingNeedle; warningFlagG; warningFlagK; glide; side;
		-- 111; 68; 590; 588; 587; glide; side;
		SendData(2001, string.format("%0.4f;%0.4f;%0.4f;%0.1f;%0.1f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(111), 
										mainPanelDevice:get_argument_value(68), 
										((mainPanelDevice:get_argument_value(36) + 0.25) - mainPanelDevice:get_argument_value(111)), --Needle is wrong
										mainPanelDevice:get_argument_value(588), -- RSBN_NPP_glisada_blinker
										mainPanelDevice:get_argument_value(587), -- RSBN_NPP_kurs_blinker
										mainPanelDevice:get_argument_value(589), -- RSBN_NPP_glisada_needle
										mainPanelDevice:get_argument_value(590))) -- RSBN_NPP_kurs_needle
		-- Altimeter
		-- altituteMeter; altituteKM; baroPressure
		-- 104; 112; 655;
		SendData(2002, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(104), 
										mainPanelDevice:get_argument_value(112), 
										mainPanelDevice:get_argument_value(655)))
		-- ADI
		-- bank;pitch;sideslip;RSBN_KPP_tangaz_blinker(Flag_L);RSBN_KPP_kren_blinker(Flag_R);
        -- desiredBank;desirePitch;airSpeedDeviation;trackDeviation;heightDeviation;
		SendData(2003, string.format("%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(108), -- bank
										mainPanelDevice:get_argument_value(109), -- pitch
										mainPanelDevice:get_argument_value(31),  -- sideslip
										mainPanelDevice:get_argument_value(568), -- RSBN_KPP_tangaz_blinker(Flag_L)
										mainPanelDevice:get_argument_value(567), -- RSBN_KPP_kren_blinker(Flag_R)
										(mainPanelDevice:get_argument_value(565) * 3), -- RSBN_KPP_kurs_director
										(mainPanelDevice:get_argument_value(566) * 3), -- RSBN_KPP_glisada_director (maybe multiply by 3)
										0, -- ?
										mainPanelDevice:get_argument_value(590), -- RSBN_NPP_kurs_needle
										mainPanelDevice:get_argument_value(589))) -- RSBN_NPP_glisada_needle
		-- HydraulicPressure 
		-- PRIMARY_GIDRO_Pressure_needle, SECONDARY_GIDRO_Pressure_needle
		-- 126; 125;
		SendData(2004, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(126), 
										mainPanelDevice:get_argument_value(125)))
		-- Mach 
		-- 101; 102;
		SendData(2005, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(101), 
										mainPanelDevice:get_argument_value(102)))
		-- Nosecone 
		-- KONUS_efficiency, KONUS_UPES_3_instrument
		-- 625; 66;
		SendData(2006, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(625), 
										mainPanelDevice:get_argument_value(66)))
		-- RPM 
		-- ENGINE_RPM; ENGINE_RPM2
		-- 50; 670;
		SendData(2007, string.format("%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(50), 
										mainPanelDevice:get_argument_value(670)))
		
		-- VVI
		-- DA200_VerticalVelocity; DA200_TurnNeedle; DA200_Slipball
		-- 106; 107; 31;
		SendData(2008, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(106), 
										mainPanelDevice:get_argument_value(107), 
										mainPanelDevice:get_argument_value(31)))
		-- Wheelbrakes
		-- LEFT_Wheelbrake;RIGHT_Wheelbrake;
		-- ???; ???
		-- SendData(2009, string.format("%0.4f;%0.4f", 
		--								mainPanelDevice:get_argument_value(???), 
		--								mainPanelDevice:get_argument_value(???)))
		
		-- Gear
		-- GEAR_NOSE_UP_LIGHT; GEAR_NOSE_DOWN_LIGHT; GEAR_LEFT_UP_LIGHT; GEAR_LEFT_DOWN_LIGHT; 
		-- GEAR_RIGHT_UP_LIGHT; GEAR_RIGHT_DOWN_LIGHT; AIRBRAKE_LIGHT; FLAPS_LIGHT; CHECK_GEAR_LIGHT;
		--  9; 12; 10; 13; 11; 14; 522; 521; 520;

		SendData(2010, string.format("%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(9), 
										mainPanelDevice:get_argument_value(12), 
										mainPanelDevice:get_argument_value(10), 
										mainPanelDevice:get_argument_value(13), 
										mainPanelDevice:get_argument_value(11), 
										mainPanelDevice:get_argument_value(14), 
										mainPanelDevice:get_argument_value(522), 
										mainPanelDevice:get_argument_value(521), 
										mainPanelDevice:get_argument_value(520)))
		-- ACC
		-- ACCELEROMETER; MAX_G_needle; MIN_G_needle
		-- 110; 113; 114;
		SendData(2012, string.format("%0.4f;%0.4f;%0.4f", 
										mainPanelDevice:get_argument_value(110), 
										mainPanelDevice:get_argument_value(113), 
										mainPanelDevice:get_argument_value(114)))
		-- SPO
		-- SPO_L_F; SPO_R_F; SPO_R_B; SPO_L_B; SPO_MUTED
		-- 601; 602; 603; 604; 605;
		SendData(2013, string.format("%0.4f;%0.4f;%0.4f;%0.1f;%0.1f", 
										mainPanelDevice:get_argument_value(601), 
										mainPanelDevice:get_argument_value(602), 
										mainPanelDevice:get_argument_value(603),
										mainPanelDevice:get_argument_value(604),
										mainPanelDevice:get_argument_value(605)))
		-- Clock
		-- currtimeHours; currtimeMinutes; currtimeSeconds; flightTimeMeterStatus; 
		-- flightHours;flightMinutes; secondsMeterTimeMinutes; secondsMeterTimeSeconds;
		-- 115; 116; 117; 118; 119; 120; 121; 122;
		SendData(2014, string.format("%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f;%0.4f",
										mainPanelDevice:get_argument_value(115),
										mainPanelDevice:get_argument_value(116),
										mainPanelDevice:get_argument_value(117),
										mainPanelDevice:get_argument_value(118),
										mainPanelDevice:get_argument_value(119),
										mainPanelDevice:get_argument_value(120),
										mainPanelDevice:get_argument_value(121),
										mainPanelDevice:get_argument_value(122)))		
	end
end

function ProcessHARDWAREConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to hardware
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF_RADIO = GetDevice(54)
	SendDataHW("ExportID", "Format")
	SendDataHW("ExportID", "Format", HardwareConfigID)
	SendDataHW("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	SendDataHW("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000), 2) -- export to Hardware '2' Config
	]]
--GEAR LIGHTS == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
	SendDataHW("9",  mainPanelDevice:get_argument_value(9))		-- GEAR_NOSE_UP_LIGHT
	SendDataHW("12",  mainPanelDevice:get_argument_value(12))	-- GEAR_NOSE_DOWN_LIGHT
	SendDataHW("10",  mainPanelDevice:get_argument_value(10))	-- GEAR_LEFT_UP_LIGHT
	SendDataHW("13",  mainPanelDevice:get_argument_value(13))	-- GEAR_LEFT_DOWN_LIGHT
	SendDataHW("11",  mainPanelDevice:get_argument_value(11))	-- GEAR_RIGHT_UP_LIGHT
	SendDataHW("14",  mainPanelDevice:get_argument_value(14))	-- GEAR_RIGHT_DOWN_LIGHT
	SendDataHW("522",  mainPanelDevice:get_argument_value(522))	-- AIRBRAKE_LIGHT
	SendDataHW("521",  mainPanelDevice:get_argument_value(521))	-- FLAPS_LIGHT
	SendDataHW("520",  mainPanelDevice:get_argument_value(520))	-- CHECK_GEAR_LIGHT
-- Radio-altimeter subgroup ------------------------------------------------------------------------------------------------------------------------------------------------------
	SendDataHW("500",  mainPanelDevice:get_argument_value(500))	-- LOW_ALT_LIGHT
-- UUA and SUA subgroup -----------------------------------------------------------------------------------------------------------------------------------------------------------
	SendDataHW("537",  mainPanelDevice:get_argument_value(537))	-- AOA_WARNING_LIGHT
--/N/ DC bus == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	SendDataHW("510",  mainPanelDevice:get_argument_value(510))	-- DC_GENERATOR_LIGHT
--TRIMER == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	SendDataHW("519",  mainPanelDevice:get_argument_value(519))	-- TRIMMER_light
--/N/ AC bus == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	SendDataHW("511",  mainPanelDevice:get_argument_value(511))	-- AC_GENERATOR_LIGHT
--FUEL LIGHTS (in connection with previous) == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	SendDataHW("501",  mainPanelDevice:get_argument_value(501))	-- FUEL_LIGHT_FUELPODC
	SendDataHW("502",  mainPanelDevice:get_argument_value(502))	-- FUEL_LIGHT_1GR
	SendDataHW("503",  mainPanelDevice:get_argument_value(503))	-- FUEL_LIGHT_450
	SendDataHW("504",  mainPanelDevice:get_argument_value(504))	-- FUEL_LIGHT_3GR
	SendDataHW("505",  mainPanelDevice:get_argument_value(505))	-- FUEL_LIGHT_FUELPODW
	SendDataHW("506",  mainPanelDevice:get_argument_value(506))	-- FUEL_LIGHT_RASHOD
-- GIDRO == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	SendDataHW("515",  mainPanelDevice:get_argument_value(515))	-- HYDRAULIC_LIGHT
	SendDataHW("514",  mainPanelDevice:get_argument_value(514))	-- BUSTER_LIGHT
-- DRAG CHUTE == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	SendDataHW("550",  mainPanelDevice:get_argument_value(550)) -- GUN_GOTOVN_LIGHT
-- SPO == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	SendDataHW("601",  mainPanelDevice:get_argument_value(601)) -- SPO_L_F
	SendDataHW("602",  mainPanelDevice:get_argument_value(602)) -- SPO_R_F
	SendDataHW("603",  mainPanelDevice:get_argument_value(603)) -- SPO_R_B
	SendDataHW("604",  mainPanelDevice:get_argument_value(604)) -- SPO_L_B
	SendDataHW("605",  mainPanelDevice:get_argument_value(605)) -- SPO_MUTED
-- SAU == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	SendDataHW("546",  mainPanelDevice:get_argument_value(546)) -- SAU_stabilization_LIGHT
	SendDataHW("547",  mainPanelDevice:get_argument_value(547)) -- SAU_privedenie_LIGHT
	SendDataHW("544",  mainPanelDevice:get_argument_value(544)) -- SAU_landing_COMMAND_LIGHT
	SendDataHW("545",  mainPanelDevice:get_argument_value(545)) -- SAU_landing_AUTO_LIGHT
-- WARNING LIGHTS == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	SendDataHW("541",  mainPanelDevice:get_argument_value(541)) -- CANOPY_WARNING_LIGHT
	SendDataHW("542",  mainPanelDevice:get_argument_value(542))	-- SORC_LIGHT
	SendDataHW("407",  mainPanelDevice:get_argument_value(407))	-- WARNING_LIGHTS_CHECK_STATE
	SendDataHW("516",  mainPanelDevice:get_argument_value(516))	-- MARKER_LIGHT
	SendDataHW("518",  mainPanelDevice:get_argument_value(518))	-- STABILISATOR_LIGHT
	SendDataHW("520",  mainPanelDevice:get_argument_value(520))	-- CHECK_GEAR_LIGHT
	SendDataHW("521",  mainPanelDevice:get_argument_value(521))	-- FLAPS_LIGHT
	SendDataHW("522",  mainPanelDevice:get_argument_value(522))	-- AIRBRAKE_LIGHT
	SendDataHW("523",  mainPanelDevice:get_argument_value(523))	-- CENTRAL_PYLON_LIGHT
	SendDataHW("524",  mainPanelDevice:get_argument_value(524))	-- RATO_L_LIGHT
	SendDataHW("525",  mainPanelDevice:get_argument_value(525))	-- RATO_R_LIGHT
	SendDataHW("526",  mainPanelDevice:get_argument_value(526))	-- PYLON_1_ON_LIGHT
	SendDataHW("527",  mainPanelDevice:get_argument_value(527))	-- PYLON_2_ON_LIGHT
	SendDataHW("528",  mainPanelDevice:get_argument_value(528))	-- PYLON_3_ON_LIGHT
	SendDataHW("529",  mainPanelDevice:get_argument_value(529))	-- PYLON_4_ON_LIGHT
	SendDataHW("530",  mainPanelDevice:get_argument_value(530))	-- PYLON_1_OFF_LIGHT
	SendDataHW("531",  mainPanelDevice:get_argument_value(531))	-- PYLON_2_OFF_LIGHT
	SendDataHW("532",  mainPanelDevice:get_argument_value(532))	-- PYLON_3_OFF_LIGHT
	SendDataHW("533",  mainPanelDevice:get_argument_value(533))	-- PYLON_4_OFF_LIGHT
-- ENGINE and THROTTLE == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	SendDataHW("507",  mainPanelDevice:get_argument_value(507))	-- FORSAZ_1_LIGHT
	SendDataHW("508",  mainPanelDevice:get_argument_value(508))	-- FORSAZ_2_LIGHT
	SendDataHW("512",  mainPanelDevice:get_argument_value(512))	-- NOZZLE_LIGHT
	SendDataHW("517",  mainPanelDevice:get_argument_value(517))	-- KONUS_LIGHT
	SendDataHW("513",  mainPanelDevice:get_argument_value(513))	-- OIL_LIGHT
	SendDataHW("534",  mainPanelDevice:get_argument_value(534))	-- FIRE_LIGHT
--ENGINE START DEVICE == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	SendDataHW("509",  mainPanelDevice:get_argument_value(509)) -- START_DEVICE_ZAZIG_LIGHT

end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

function ProcessGlassCockpitDCSConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to HELIOS
	Example from A-10C
	Landing Gear
	mainPanelDevice, basis panel
	SendDataHW("2004",  mainPanelDevice:get_argument_value(659))			-- GEAR_N_SAFE
	SendDataHW("2005",  mainPanelDevice:get_argument_value(660))			-- GEAR_L_SAFE
	SendDataHW("2006",  mainPanelDevice:get_argument_value(661))			-- GEAR_R_SAFE
	]]
	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6
	end
end

function ProcessHARDWAREConfigLowImportance(mainPanelDevice)
--[[
	export in low tick interval to hardware
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	SendData("ExportID", "Format")
	SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) <- special function for get frequency data
	
	Device test, Device 2 to 32
	is value "userdata", is only DLL intern functions
	local ltmp1 = 0
	for ltmp2 = 1, 32, 1 do
		ltmp1 = GetDevice(ltmp2)
		WriteToLog(ltmp2..': '..dump(ltmp1))
		WriteToLog(ltmp2..' (metatable): '..dump(getmetatable(ltmp1)))
	end
	]]
end