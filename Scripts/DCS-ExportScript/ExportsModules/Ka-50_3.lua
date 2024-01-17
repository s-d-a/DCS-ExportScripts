-- Ka-50_3

ExportScript.FoundDCSModule = true
ExportScript.Version.Ka50_3 = "1.2.1"

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
    [6] = "%0.4f", -- APUTemperature
    [11] = "%0.4f", -- KI_13_course
    [12] = "%0.4f", -- KI_13_pitch
    [14] = "%0.4f", -- KI_13_bank
    [15] = "%0.4f", -- PRC_button_CLEAN
    [16] = "%0.4f", -- PRC_button_WINGMAN_ALL
    [17] = "%0.4f", -- PRC_button_WINGMAN_1
    [18] = "%0.4f", -- PRC_button_WINGMAN_2
    [19] = "%0.4f", -- PRC_button_WINGMAN_3
    [20] = "%0.4f", -- PRC_button_WINGMAN_4
    [21] = "%0.4f", -- PRC_button_TARGET_1
    [22] = "%0.4f", -- PRC_button_TARGET_2
    [23] = "%0.4f", -- PRC_button_TARGET_3
    [24] = "%0.4f", -- vy
    [25] = "%0.4f", -- LWS_LampAzimuth_0
    [26] = "%0.4f", -- LWS_LampAzimuth_180
    [27] = "%0.4f", -- LWS_LampAzimuth_270
    [28] = "%0.4f", -- LWS_LampAzimuth_90
    [31] = "%0.4f", -- LWS_LampAzimuth_UpperHemisphere
    [32] = "%0.4f", -- LWS_LampAzimuth_LowerHemisphere
    [33] = "%0.4f", -- LWS_LampAzimuth_LaserRangefinder
    [34] = "%0.4f", -- LWS_LampAzimuth_LaserTargetingSystem
    [44] = "%0.4f", -- lamp_MasterWarning
    [46] = "%0.4f", -- lamp_RotorRPM
    [47] = "%0.4f", -- lamp_UNDERFIREwarning
    [48] = "%0.4f", -- lamp_LowerGear
    [50] = "%0.4f", -- PRC_button_RESET -- PRC_button_TARGET_POINT
    [51] = "%0.4f", -- IAS
    [52] = "%0.4f", -- RotorRPM
    [53] = "%0.4f", -- RotorPitch
    [59] = "%0.4f", -- LGCP_Lamp_LeftMainGearUp
    [60] = "%0.4f", -- LGCP_Lamp_LeftMainGearDown
    [61] = "%0.4f", -- LGCP_Lamp_RightMainGearUp
    [62] = "%0.4f", -- LGCP_Lamp_RightMainGearDown
    [63] = "%0.4f", -- LGCP_Lamp_NoseGearUp
    [64] = "%0.4f", -- LGCP_Lamp_NoseGearDown
    [65] = "%0.4f", -- LGCP_gear_handle
    [68] = "%0.4f", -- CLOCK_currtime_hours
    [69] = "%0.4f", -- CLOCK_currtime_minutes
    [70] = "%0.4f", -- CLOCK_currtime_seconds
    [71] = "%0.4f", -- stick_roll
    [72] = "%0.4f", -- CLOCK_flight_hours
    [73] = "%0.4f", -- CLOCK_seconds_meter_time_minutes
    [74] = "%0.4f", -- stick_pitch
    [75] = "%0.4f", -- CLOCK_flight_time_meter_status
    [78] = "%0.4f", -- lamp_RPM_leftEngineMax
    [79] = "%0.4f", -- lamp_RPM_rightEngineMax
    [80] = "%0.4f", -- lamp_NyMax
    [81] = "%0.4f", -- lamp_vibr_leftEngine
    [82] = "%0.4f", -- lamp_vibr_rightEngine
    [83] = "%0.4f", -- lamp_IAS_max
    [84] = "%0.4f", -- lamp_mainTransmission
    [85] = "%0.4f", -- lamp_Fire
    [86] = "%0.4f", -- lamp_IFFfailure
    [87] = "%0.4f", -- VM_15PV_BALT_thousands
    [88] = "%0.4f", -- VM_15PV_BaroPressure
    [89] = "%0.4f", -- VM_15PV_BALT_CommandedAlt
    [90] = "%0.4f", -- VM_15PV_BaroPressureRotary
    [92] = "%0.4f", -- A_036_DangerRALT_lamp
    [93] = "%0.4f", -- A_036_DangerRALT_index
    [94] = "%0.4f", -- A_036_RALT
    [95] = "%0.4f", -- A_036_warning_flag
    [97] = "%0.4f", -- ADP_4_acceleration
    [98] = "%0.4f", -- ADP_4_max_achieved_acc
    [99] = "%0.4f", -- ADP_4_min_achieved_acc
    [100] = "%0.4f", -- ADI_Roll
    [101] = "%0.4f", -- ADI_Pitch
    [102] = "%0.4f", -- ADI_steering_warning_flag
    [103] = "%0.4f", -- ADI_track_deviation
    [104] = "%0.4f", -- collective_position
    [106] = "%0.4f", -- ADI_pitch_steering
    [107] = "%0.4f", -- ADI_bank_steering
    [108] = "%0.4f", -- ADI_sideslip
    [109] = "%0.4f", -- ADI_attitude_warning_flag
    [111] = "%0.4f", -- ADI_airspeed_deviation
    [112] = "%0.4f", -- HSI_heading
    [114] = "%0.4f", -- HSI_course_warning_flag
    [115] = "%0.4f", -- HSI_bearing_needle
    [116] = "%0.4f", -- HSI_range_unavailable_flag
    [117] = "%0.4f", -- HSI_range_counter_hundreds
    [118] = "%0.4f", -- HSI_commanded_course_needle
    [119] = "%0.4f", -- HSI_heading_warning_flag
    [121] = "%0.4f", -- HSI_course_unavailable_flag
    [124] = "%0.4f", -- HSI_commanded_heading_needle
    [125] = "%0.4f", -- HSI_glideslope_warning_flag
    [126] = "%0.4f", -- HSI_courseKnob
    [127] = "%0.4f", -- HSI_longitudinal_deviation
    [128] = "%0.4f", -- HSI_lateral_deviation
    [129] = "%0.4f", -- HSI_headingKnob
    [133] = "%0.4f", -- LeftEngineTemperatureHund
    [134] = "%0.4f", -- RightEngineTemperatureHund
    [135] = "%0.4f", -- LeftEngineRPM
    [136] = "%0.4f", -- RightEngineRPM
    [137] = "%0.4f", -- ForwardTankAmount
    [138] = "%0.4f", -- RearTankAmount
    [139] = "%0.4f", -- lamp_ForwardTankTest
    [140] = "%0.4f", -- lamp_RearTankTest
    [142] = "%0.4f", -- AGR_81_Roll
    [143] = "%0.4f", -- AGR_81_Pitch
    [144] = "%0.4f", -- AGR_81_sideslip
    [145] = "%0.4f", -- AGR_81_failure_flag
    [150] = "%0.4f", -- PRC_button_ESCAPE
    [155] = "%0.4f", -- lamp_LeftPitotHeatTest
    [157] = "%0.4f", -- lamp_RightPitotHeatTest
    [159] = "%0.4f", -- PRC_button_SEND
    [161] = "%0.4f", -- PRC_button_ERASE
    [162] = "%0.4f", -- lamp_APUValveOpen
    [163] = "%0.4f", -- lamp_EnginesStartValve
    [164] = "%0.4f", -- lamp_RoughNAVcalc
    [165] = "%0.4f", -- lamp_RouteHeadingSteering
    [166] = "%0.4f", -- lamp_EndOfRoute
    [167] = "%0.4f", -- lamp_WeapSysBUS_ON
    [168] = "%0.4f", -- lamp_APUOilPres
    [169] = "%0.4f", -- lamp_APUStoppedByRPM
    [170] = "%0.4f", -- lamp_H_RALT_stab
    [171] = "%0.4f", -- lamp_RouteCourseSteering
    [172] = "%0.4f", -- lamp_Descent
    [173] = "%0.4f", -- lamp_CannonMovingBarr
    [174] = "%0.4f", -- lamp_APU_IsON
    [175] = "%0.4f", -- lamp_Hover
    [176] = "%0.4f", -- lamp_Waypoint
    [177] = "%0.4f", -- lamp_CannonMovingBarr2
    [178] = "%0.4f", -- lamp_Burst
    [179] = "%0.4f", -- lamp_OBZOR_800
    [180] = "%0.4f", -- lamp_TrainingMode
    [181] = "%0.4f", -- lamp_AntiIceLeftEngine
    [182] = "%0.4f", -- lamp_AntiIceRightEngine
    [183] = "%0.4f", -- lamp_AntiIceRotors
    [184] = "%0.4f", -- lamp_VUO_Heat
    [185] = "%0.4f", -- lamp_LeftOuterTank
    [186] = "%0.4f", -- lamp_RightOuterTank
    [187] = "%0.4f", -- lamp_CouplerOff
    [188] = "%0.4f", -- lamp_RANET
    [189] = "%0.4f", -- lamp_CC_test
    [190] = "%0.4f", -- lamp_DustProtectLeftEngine
    [191] = "%0.4f", -- lamp_DustProtectRightEngine
    [200] = "%0.4f", -- lamp_ForwardTank
    [201] = "%0.4f", -- lamp_RearTank
    [202] = "%0.4f", -- lamp_LeftInnerTank
    [203] = "%0.4f", -- lamp_RightInnerTank
    [204] = "%0.4f", -- lamp_ActuatorsOilPress
    [205] = "%0.4f", -- lamp_I_251V
    [206] = "%0.4f", -- lamp_CC_failure
    [207] = "%0.4f", -- lamp_BackupModeLeftEngine
    [208] = "%0.4f", -- lamp_BackupModeRightEngine
    [209] = "%0.4f", -- lamp_LeftValveClosed
    [210] = "%0.4f", -- lamp_RightValveClosed
    [211] = "%0.4f", -- lamp_FuelCrossfeedOn
    [212] = "%0.4f", -- lamp_DC_AC_Inverter
    [213] = "%0.4f", -- lamp_LockOff
    [234] = "%0.4f", -- LeftEngineMode
    [235] = "%0.4f", -- RightEngineMode
    [237] = "%0.4f", -- lamp_Exting_LeftEngineFire
    [239] = "%0.4f", -- lamp_Exting_APU_Fire
    [241] = "%0.4f", -- lamp_Exting_RightEngineFire
    [243] = "%0.4f", -- lamp_Exting_VentilatorFire
    [244] = "%0.4f", -- lamp_Exting_Lamp1
    [245] = "%0.4f", -- lamp_Exting_Lamp2
    [252] = "%0.4f", -- NeedleOilPressureEngineLeft
    [253] = "%0.4f", -- NeedleOilPressureEngineRight
    [254] = "%0.4f", -- NeedleOilPressureGearBox
    [255] = "%0.4f", -- NeedleOilTemperatureEngineLeft
    [256] = "%0.4f", -- NeedleOilTemperatureEngineRight
    [257] = "%0.4f", -- NeedleOilTemperatureGearBox
    [261] = "%0.4f", -- lamp_DC_Ground_Power
    [266] = "%0.4f", -- rudder
    [313] = "%0.4f", -- PVI_button_ENTER
    [314] = "%0.4f", -- PVI_button_CANCEL
    [315] = "%0.4f", -- PVI_button_WPT
    [316] = "%0.4f", -- PVI_button_FIXPT
    [317] = "%0.4f", -- PVI_button_AERDR
    [318] = "%0.4f", -- PVI_button_TGT
    [319] = "%0.4f", -- PVI_button_FILAMBDA
    [320] = "%0.4f", -- PVI_button_FIZ
    [321] = "%0.4f", -- PVI_button_DU
    [322] = "%0.4f", -- PVI_button_FII
    [323] = "%0.4f", -- PVI_button_BRGRNG
    [330] = "%0.4f", -- PPR_button_K
    [331] = "%0.4f", -- PPR_button_T
    [332] = "%0.4f", -- PPR_button_H
    [333] = "%0.4f", -- PPR_button_B
    [334] = "%0.4f", -- PPR_button_DIR
    [337] = "%0.4f", -- ZMS3_MagVar_counter_hundreds_tenth
    [339] = "%0.4f", -- PShK7_Latitude_counter_tenth
    [342] = "%0.4f", -- PShK7_LampAuto
    [375] = "%0.4f", -- Radio_ASU_lamp
    [388] = "%0.4f", -- lamp_PUI800_Sta1_WeapIsReady
    [389] = "%0.4f", -- lamp_PUI800_Sta2_WeapIsReady
    [390] = "%0.4f", -- lamp_PUI800_Sta3_WeapIsReady
    [391] = "%0.4f", -- lamp_PUI800_Sta4_WeapIsReady
    [392] = "%0.4f", -- lamp_PUI800_Sta1_WeapIsPresent
    [393] = "%0.4f", -- lamp_PUI800_Sta2_WeapIsPresent
    [394] = "%0.4f", -- lamp_PUI800_Sta3_WeapIsPresent
    [395] = "%0.4f", -- lamp_PUI800_Sta4_WeapIsPresent
    [419] = "%0.4f", -- Radio_Test_lamp
    [424] = "%0.4f", -- R800Revolve1
    [425] = "%0.4f", -- R800Revolve2
    [426] = "%0.4f", -- R800Revolve3
    [427] = "%0.4f", -- R800Revolve4
    [437] = "%0.4f", -- PRC_button_AUTO_TURN
    [438] = "%0.4f", -- PRC_button_AIRBORNE_TARGET
    [439] = "%0.4f", -- PRC_button_FORWARD_HEMISPHERE
    [440] = "%0.4f", -- PRC_button_GROUND_MOVING_TARGET
    [441] = "%0.4f", -- PRC_button_CLEAR
    [461] = "%0.4f", -- EjectSystemTestLamp
    [469] = "%0.4f", -- lamp_flap_hydro_1
    [470] = "%0.4f", -- lamp_flap_hydro_2
    [471] = "%0.4f", -- hydro_common_pressure
    [472] = "%0.4f", -- hydro_main_pressure
    [473] = "%0.4f", -- hydro_acc_brake_pressure
    [474] = "%0.4f", -- hydro_gear_brake_pressure
    [475] = "%0.4f", -- hydro_common_temperature
    [476] = "%0.4f", -- hydro_main_temperature
    [509] = "%0.4f", -- filter
    [510] = "%0.4f", -- filter_handle
    [519] = "%0.4f", -- PVI_button_INSREALN
    [520] = "%0.4f", -- PVI_button_PRECALN
    [521] = "%0.4f", -- PVI_button_NORMALN
    [522] = "%0.4f", -- PVI_button_INITCOORD
    [526] = "%0.4f", -- ADI_height_deviation
    [527] = "%0.4f", -- HSI_range_counter_tenth
    [528] = "%0.4f", -- HSI_range_counter_units
    [529] = "%0.4f", -- HSI_course_counter_hundreds_tenth
    [530] = "%0.4f", -- HSI_course_counter_units
    [531] = "%0.4f", -- CLOCK_flight_minutes
    [532] = "%0.4f", -- CLOCK_seconds_meter_time_seconds
    [533] = "%0.4f", -- left_door
    [540] = "%0.4f", -- pilot_draw
    [541] = "%0.4f", -- UV26_lampLeftBoard
    [542] = "%0.4f", -- UV26_lampRightBoard
    [545] = "%0.4f", -- mirrors_draw
    [546] = "%0.4f", -- windscreen_wiper
    [551] = "%0.4f", -- Panels_buttons_light
    [554] = "%0.4f", -- left_engine_break_hangle
    [555] = "%0.4f", -- right_engine_break_hangle
    [557] = "%0.4f", -- right_engine_throttle
    [558] = "%0.4f", -- coll_ReadjustFreeTurbRPM_sw
    [560] = "%0.4f", -- coll_ROUTE_DESCENT_sw
    [561] = "%0.4f", -- lamp_ABRIS_button1
    [562] = "%0.4f", -- lamp_ABRIS_button2
    [563] = "%0.4f", -- lamp_ABRIS_button3
    [564] = "%0.4f", -- lamp_ABRIS_button4
    [565] = "%0.4f", -- lamp_ABRIS_button5
    [566] = "%0.4f", -- LeftEngineTemperatureTenth
    [567] = "%0.4f", -- RightEngineTemperatureTenth
    [568] = "%0.4f", -- lamp_Exting_HydraulicsFire
    [571] = "%0.4f", -- wheel_brakes
    [573] = "%0.4f", -- VM_15PV_BALT_tenth
    [574] = "%0.4f", -- R800Rotary2
    [575] = "%0.4f", -- R800Rotary3
    [576] = "%0.4f", -- R800Rotary4
    [577] = "%0.4f", -- R800Rotary1
    [578] = "%0.4f", -- left_engine_throttle
    [579] = "%0.4f", -- throttle_cover
    [580] = "%0.4f", -- collective_stopper
    [581] = "%0.4f", -- R828_channel_selector
    [582] = "%0.4f", -- LWS_LampReady
    [586] = "%0.4f", -- lamp_AC_Ground_Power
    [587] = "%0.4f", -- ambientTemperature
    [592] = "%0.4f", -- EnginesMode
    [594] = "%0.4f", -- PShK7_Latitude_counter_units
    [596] = "%0.4f", -- ZMS3_MagVar_counter_units
    [599] = "%0.4f", -- AGR_81_LongitudinalDeviationBar
    [613] = "%0.4f", -- AGR_81_LateralDeviationBar
    [614] = "%0.4f", -- missile_trigger
    [615] = "%0.4f", -- gun_trigger
    [798] = "%0.4f", -- ADI_illumination
    [799] = "%0.4f", -- illumination_panels2
    [800] = "%0.4f", -- Control_Panel_illumination
    [801] = "%0.4f", -- ADI_illumination2
    [802] = "%0.4f", -- AHR_illumination
    [803] = "%0.4f", -- illumination_panels
    [1000] = "%0.4f", -- Plafond
    [1010] = "%0.4f", -- HMD_PrismsRotPhase
    [1015] = "%0.4f", -- lamp_MasterWarning_brightness
    [1016] = "%0.4f", -- lamp_RotorRPM_brightness
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

    ---------------
    -- Log Dumps --
    ---------------
    --ExportScript.CockpitParamsLogDump(mainPanelDevice)
    --ExportScript.MetaTableLogDump(mainPanelDevice)
    --ExportScript.ListIndicationLogDump(mainPanelDevice)
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
end

-----------------------------
--     Custom functions    --
-----------------------------

function ExportScript.CockpitParamsLogDump(mainPanelDevice) -- Get list of cockpit params
   ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
end

function ExportScript.MetaTableLogDump(mainPanelDevice) -- getmetatable get function name from devices
    local ltmp1 = 0
    for ltmp2 = 1, 70, 1 do
        ltmp1 = GetDevice(ltmp2)
        ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
        ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
    end
end

function ExportScript.ListIndicationLogDump(mainPanelDevice) -- list_indication get the value of cockpit displays
    local ltmp1 = 0
    for ltmp2 = 0, 20, 1 do
        ltmp1 = list_indication(ltmp2)
        ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
    end
end