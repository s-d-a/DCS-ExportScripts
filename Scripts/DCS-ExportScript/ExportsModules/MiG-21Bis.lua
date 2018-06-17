-- MiG-21Bis Export
-- Version 1.0.2

ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	--[[
	every frames arguments
	based of "mainpanel_init.lua"
	Example (http://www.lua.org/manual/5.1/manual.html#pdf-string.format)
	[DeviceID] = "Format"
	  [4] = "%.4f",  <- floating-point number with 4 digits after point
	 [19] = "%0.1f", <- floating-point number with 
	  [5] = "%.f",   <- floating point number rounded to a decimal number
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
	--[9]   = "%.f",	 	-- GEAR_NOSE_UP_LIGHT
	[12]  = "%.f",	 	-- GEAR_NOSE_DOWN_LIGHT
	--[10]  = "%.f",	 	-- GEAR_LEFT_UP_LIGHT
	[13]  = "%.f",	 	-- GEAR_LEFT_DOWN_LIGHT
	--[11]  = "%.f",	 	-- GEAR_RIGHT_UP_LIGHT
	[14]  = "%.f",	 	-- GEAR_RIGHT_DOWN_LIGHT
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
	[111] = "%.4f", 	-- KSI_course_indicator
	[68]  = "%.4f", 	-- KSI_course_set_needle
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
	--[565] = "%.4f", 	-- RSBN_KPP_kurs_director
	--[566] = "%.4f", 	-- RSBN_KPP_glisada_director
--/N/ ARK subgroup ---------------------------------------------------------------------------------------------------------------------------------
	[174] = "%.1f", 	-- ARK_switch
	[254] = "%.1f", 	-- ARK_dal_bliz_selector
	[36]  = "%.4f", 	-- ARK_RSBN_needle
-- Radio-altimeter subgroup ------------------------------------------------------------------------------------------------------------------------------------------------------
	[175] = "%.1f", 	-- RADIO_ALTIMETER_MARKER_switch
	[103] = "%.4f", 	-- RADIO_ALTIMETER_indicator
	[500] = "%.f", 		-- LOW_ALT_LIGHT
-- UUA and SUA subgroup -----------------------------------------------------------------------------------------------------------------------------------------------------------
	[105] = "%.4f", 	-- UUA_indicator
	[537] = "%.f", 		-- AOA_WARNING_LIGHT
-- DA-200 subgroup ---------------------------------------------------------------------------------------------------------------------------------------------------------
	[107] = "%.6f", 	-- DA200_TurnNeedle
	[106] = "%.4f", 	-- DA200_VerticalVelocity
	[31]  = "%.4f", 	-- DA200_Slipball
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
	[519] = "%.f", 		-- TRIMMER_light
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
	[510] = "%.f", 		-- DC_GENERATOR_LIGHT
	[16666] = "%.1f", 	-- DC_GENERATOR
	[563] = "%.1f", 	-- DC_BUS
	[55] =  "%.1f", 	-- DC_BUS_ISA_K
--/N/ AC bus == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[564] = "%.1f", 	-- AC_BUS
	[15366] = "%.1f", 	-- AC_BUS_PO7501
	[15466] = "%.1f", 	-- AC_BUS_PO7502
	[16466] = "%.1f", 	-- AC_BUS_Emerg_Inverter
	[16966] = "%.1f", 	-- AC_GENERATOR
	[511] = "%.f", 		-- AC_GENERATOR_LIGHT
--/N/ FUEL PUMPS & FUEL SYSTEM == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[159] = "%.1f", 	-- FUEL_PUMP_3
	[160] = "%.1f", 	-- FUEL_PUMP_1
	[161] = "%.1f", 	-- FUEL_PUMP_RASHOD
	[402] = "%.4f", 	-- FUEL_PRESSURE  { 0, 45 } ????
	[52]  = "%.4f", 	-- FUEL_METER
--FUEL LIGHTS (in connection with previous) == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[501] = "%.f",	 	-- FUEL_LIGHT_FUELPODC
	[502] = "%.f", 		-- FUEL_LIGHT_1GR
	[503] = "%.f", 		-- FUEL_LIGHT_450
	[504] = "%.f", 		-- FUEL_LIGHT_3GR
	[505] = "%.f", 		-- FUEL_LIGHT_FUELPODW
	[506] = "%.f", 		-- FUEL_LIGHT_RASHOD
--ENGINE START DEVICE == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[403] = "%.1f", 	-- ENGINE_START_DEVICE_STATUS { -1, 0, 1, 2 }
	[509] = "%.f", 		-- START_DEVICE_ZAZIG_LIGHT
	[415] = "%.1f", 	-- ENGINE_OXYGENE_STATUS
	[61]  = "%.4f", 	-- ENGINE_OXYGENE_manometer
-- ENGINE and THROTTLE == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[624] = "%.1f", 	-- SPS_state
	[625] = "%.4f", 	-- KONUS_efficiency
	[626] = "%.4f", 	-- SOPLO_efficiency
	--[50]  = "%.4f", 	-- ENGINE_RPM
	[670] = "%.4f", 	-- ENGINE_RPM2
	[51]  = "%.4f", 	-- ENGINE_TEMP
	[404] = "%.4f", 	-- ENGINE_STRESS
	[507] = "%.f", 		-- FORSAZ_1_LIGHT
	[508] = "%.f", 		-- FORSAZ_2_LIGHT
	[512] = "%.f", 		-- NOZZLE_LIGHT
	[517] = "%.f", 		-- KONUS_LIGHT
	[513] = "%.f", 		-- OIL_LIGHT
	[627] = "%.4f", 	-- OIL_PRESSURE
	[534] = "%.f", 		-- FIRE_LIGHT
	[405] = "%.1f", 	-- ENGINE_SURGE_DOORS_POZITION { -1, 0, 1 }
-- GIDRO == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[418] = "%.4f", 	-- PRIMARY_GIDRO_Pressure
	[419] = "%.4f", 	-- SECONDARY_GIDRO_Pressure
	[126] = "%.4f", 	-- PRIMARY_GIDRO_Pressure_needle
	[125] = "%.4f", 	-- SECONDARY_GIDRO_Pressure_needle
	[171] = "%.1f", 	-- GIDRO_NR27_switch
	[319] = "%.1f", 	-- GIDRO_ailerones_busters_switch
	[515] = "%.f", 		-- HYDRAULIC_LIGHT
	[514] = "%.f", 		-- BUSTER_LIGHT
--HELMET == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[306] = "%.1f", 	-- HELMET_heat_man_auto_switch
	[310] = "%.1f", 	-- HELMET_quick_heat_button
	[595] = "%.1f", 	-- HELMET_visor_switch
--AIR CONDITIONING == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[412] = "%.4f", 	-- AIR_CONDITION_cockpit_temperature
-- WARNING LIGHTS == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[541] = "%.f",	 	-- CANOPY_WARNING_LIGHT
	[542] = "%.f",	 	-- SORC_LIGHT
	[407] = "%.f", 		-- WARNING_LIGHTS_CHECK_STATE
	[516] = "%.f", 		-- MARKER_LIGHT
	[518] = "%.f", 		-- STABILISATOR_LIGHT
	[520] = "%.f", 		-- CHECK_GEAR_LIGHT
	[521] = "%.f", 		-- FLAPS_LIGHT
	[522] = "%.f", 		-- AIRBRAKE_LIGHT
	[523] = "%.f", 		-- CENTRAL_PYLON_LIGHT
	[524] = "%.f", 		-- RATO_L_LIGHT
	[525] = "%.f", 		-- RATO_R_LIGHT
	[526] = "%.f", 		-- PYLON_1_ON_LIGHT
	[527] = "%.f", 		-- PYLON_2_ON_LIGHT
	[528] = "%.f", 		-- PYLON_3_ON_LIGHT
	[529] = "%.f", 		-- PYLON_4_ON_LIGHT
	[530] = "%.f", 		-- PYLON_1_OFF_LIGHT
	[531] = "%.f", 		-- PYLON_2_OFF_LIGHT
	[532] = "%.f", 		-- PYLON_3_OFF_LIGHT
	[533] = "%.f", 		-- PYLON_4_OFF_LIGHT
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
	[546] =   "%.f", 	-- SAU_stabilization_LIGHT
	[547] =   "%.f", 	-- SAU_privedenie_LIGHT
	[544] =   "%.f", 	-- SAU_landing_COMMAND_LIGHT
	[545] =   "%.f", 	-- SAU_landing_AUTO_LIGHT
-- ARU == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[64] =   "%.4f", 	-- ARU_3G_instrument
-- KONUS == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[66] =   "%.4f", 	-- KONUS_UPES_3_instrument
-- DRAG CHUTE == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == 
	[550] =   "%.f", 	-- GUN_GOTOVN_LIGHT
-- SPO == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == = 
	[601] =   "%.f", 	-- SPO_L_F
	[602] =   "%.f", 	-- SPO_R_F
	[603] =   "%.f", 	-- SPO_R_B
	[604] =   "%.f", 	-- SPO_L_B
	[605] =   "%.f", 	-- SPO_MUTED
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
-- Clock == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
	-- currtimeHours; currtimeMinutes; currtimeSeconds; flightTimeMeterStatus; 
	-- flightHours;flightMinutes; secondsMeterTimeMinutes; secondsMeterTimeSeconds;
	-- 115; 116; 117; 118; 119; 120; 121; 122;
	[115] =   "%.4f",	-- currtimeHours
	[116] =   "%.4f",	-- currtimeMinutes
	[117] =   "%.4f",	-- currtimeSeconds
	[118] =   "%.4f",	-- flightTimeMeterStatus
	[119] =   "%.4f",	-- flightHours
	[120] =   "%.4f",	-- flightMinutes
	[121] =   "%.4f",	-- secondsMeterTimeMinutes
	[122] =   "%.4f",	-- secondsMeterTimeSeconds
-- Gear Brake
	[56] =   "%.4f",	-- Gearbrake_needle2
	[57] =   "%.4f",	-- Gearbrake_needle1
}
ExportScript.ConfigArguments =  
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

	-- ADI/KPP correction
	ExportScript.Tools.SendData(565, string.format("%.4f", (mainPanelDevice:get_argument_value(565) * 3))) -- RSBN_KPP_kurs_director
	ExportScript.Tools.SendData(566, string.format("%.4f", (mainPanelDevice:get_argument_value(566) * 3))) -- RSBN_KPP_glisada_director
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
	--[50]  = "%.4f", 	-- ENGINE_RPM
	local lENGINE_RPM = mainPanelDevice:get_argument_value(50)
	local ltmpENGINE_RPM = lENGINE_RPM
	--ExportScript.Tools.WriteToLog('ENGINE_RPM: '..ExportScript.Tools.dump(lENGINE_RPM))
	--[[
	Export           = Input  = Anzeige = differenz
0.48699209094048 = 0.31   = 3,48	-- Idle
0.52623742818832 = 0.36   = 4
0.59046465158463 = 0.455  = 5
0.65491729974747 = 0.545  = 6
0.71658140420914 = 0.635  = 7
0.7799117565155  = 0.725  = 8
0.84348386526108 = 0.82   = 9
0.90568602085114 = 0.903  = 10
			idle				4					5					6					7					8					9					10					5 - 9
	y_min = 0,0					0,31				0,36				0,455				0,545				0,635				0,725				0,82				-- minimaler Ausgabewert
	y_max = 0,31				0,36				0,455				0,545				0,635				0,725				0,82				0,903				-- maximaler Ausgabewert
	x_min = 0					0,48699209094048	0,52623742818832	0,59046465158463	0,65491729974747	0,71658140420914	0,7799117565155		0,84348386526108	-- minimaler Eingangswert
	x_max = 0,48699209094048	0,52623742818832	0,59046465158463	0,65491729974747	0,71658140420914	0,7799117565155		0,84348386526108	0,90568602085114	-- maximaler Eingangswert

	d_y   = 0,31				0,05				0,095				0,09				0,09				0,09				0,095				0,083				0,09			-- Delta Ausgabewerte (y_max - y_min)
	d_x   = 0,48699209094048	0,03924533724784	0,06422722339631	0,06445264816284	0,06166410446167	0,06333035230636	0,06357210874558	0,06220215559006	0,063			-- Delta Eingangswerte (x_max - x_min)
	m     = 0,63656064598776	1,27403670107974	1,47912357060508	1,39637396701862	1,45952010145454	1,42111952203622	1,49436603369878	1,33435890143433	1,428571428571	-- Steigung der linearen Funktion (d_y / d_x)
	n     = -0,000000000000002	-0,3104457969937	-0,4183701837679	-0,3695094679175	-0,4108649637718	-0,3833478226497	-0,4404736382191	-0,3055102038274	-0,38915965216	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
	
	y = 0,0171875	0,636	-- Ergebnis (m * x + n)
	]]
	if lENGINE_RPM < 0.48699209094048 then
		ltmpENGINE_RPM = 0.63656064598776 * lENGINE_RPM + -0.000000000000002
	elseif lENGINE_RPM > 0.48699209094048 and lENGINE_RPM < 0.52623742818832 then
		ltmpENGINE_RPM = 1.27403670107974 * lENGINE_RPM + -0.3104457969937
	elseif lENGINE_RPM > 0.52623742818832 and lENGINE_RPM < 0.84348386526108 then
		ltmpENGINE_RPM = 1.428571428571 * lENGINE_RPM + -0.38915965216
	elseif lENGINE_RPM > 0.84348386526108 then
		ltmpENGINE_RPM = 1.33435890143433 * lENGINE_RPM + -0.3055102038274
	end

	--ExportScript.Tools.WriteToLog('ENGINE_RPM: '..ExportScript.Tools.dump(ltmpENGINE_RPM))
	ExportScript.Tools.SendData(50, string.format("%.4f", ltmpENGINE_RPM)) -- ENGINE_RPM
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
	-- logic error with upper landing gear lights
	ExportScript.Tools.SendData(9, (mainPanelDevice:get_argument_value(9) == 0 and 1 or 0))		-- GEAR_NOSE_UP_LIGHT
	ExportScript.Tools.SendData(10, (mainPanelDevice:get_argument_value(10) == 0 and 1 or 0))	-- GEAR_LEFT_UP_LIGHT
	ExportScript.Tools.SendData(11, (mainPanelDevice:get_argument_value(11) == 0 and 1 or 0))	-- GEAR_RIGHT_UP_LIGHT
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
