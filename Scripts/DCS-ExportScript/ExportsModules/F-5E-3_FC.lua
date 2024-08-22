-- F-5E FC

ExportScript.FoundDCSModule = true
ExportScript.Version.F5E3_FC = "1.2.1"

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
    [3] = "%0.4f", -- Slipball
	[4] = "%0.4f", -- mirrors_draw
	[6] = "%0.4f", -- Accelerometer
	[7] = "%0.4f", -- AOA_Units
	[8] = "%0.4f", -- Airspeed
	[9] = "%0.4f", -- AAU34_PNEU_flag
	[10] = "%0.4f", -- Altimeter_100_footPtr
	[11] = "%0.4f", -- Altimeter_10000_footCount
	[12] = "%0.4f", -- EGT_Left
	[14] = "%0.4f", -- EGT_Right
	[16] = "%0.4f", -- Tachometer_Left
	[17] = "%0.4f", -- Tachometer_Right
	[18] = "%0.4f", -- CLOCK_currtime_minutes
	[19] = "%0.4f", -- CLOCK_currtime_hours
	[22] = "%0.4f", -- FuelQuantity_Left
	[23] = "%0.4f", -- FuelQuantity_Right
	[24] = "%0.4f", -- Variometer
	[30] = "%0.4f", -- AI_Bank
	[32] = "%0.4f", -- HSI_CompassCard
	[35] = "%0.4f", -- HSI_CourseArrow
	[36] = "%0.4f", -- HSI_CourseDevInd
	[37] = "%0.4f", -- CLOCK_elapsed_time_seconds
	[43] = "%0.4f", -- RetDepressionDrum_100
	[44] = "%0.4f", -- RetDepressionDrum_10
	[45] = "%0.4f", -- RetDepressionDrum_1
	[51] = "%0.4f", -- Flap_Indicator
	[52] = "%0.4f", -- Pitch_Trim
	[56] = "%0.4f", -- pressure_setting_3
	[57] = "%0.4f", -- pressure_setting_2
	[58] = "%0.4f", -- pressure_setting_1
	[59] = "%0.4f", -- pressure_setting_0
	[71] = "%0.4f", -- StickRoll
	[74] = "%0.4f", -- StickPitch
	[81] = "%0.4f", -- AI_Pitch
	[85] = "%0.4f", -- MotorRunKnob
	[97] = "%0.4f", -- AlterReleaseRods
	[102] = "%0.4f", -- LeftFingerLift
	[103] = "%0.4f", -- RightFingerLift
	[104] = "%0.4f", -- LeftThrottle
	[105] = "%0.4f", -- RightThrottle
	[107] = "%0.4f", -- NozzlePos_Left
	[108] = "%0.4f", -- NozzlePos_Right
	[109] = "%0.4f", -- Utility_Pressure
	[110] = "%0.4f", -- Flight_Pressure
	[111] = "%0.4f", -- AuxIntakeDoors
	[112] = "%0.4f", -- OilPressure_Left
	[113] = "%0.4f", -- OilPressure_Right
	[114] = "%0.4f", -- CabinPressure
	[139] = "%0.4f", -- HSI_BearingPtr
	[141] = "%0.4f", -- HSI_DevDF_Win
	[142] = "%0.4f", -- HSI_Range_flag
	[143] = "%0.4f", -- HSI_OFF_flag
	[144] = "%0.4f", -- HSI_HeadingMark
	[146] = "%0.4f", -- HSI_ToFrom
	[149] = "%0.4f", -- AI_OFF_flag
	[155] = "%0.4f", -- RangeScale_5
	[156] = "%0.4f", -- RangeScale_10
	[157] = "%0.4f", -- RangeScale_20
	[158] = "%0.4f", -- RangeScale_40
	[159] = "%0.4f", -- InRangeLight
	[160] = "%0.4f", -- FailLight
	[161] = "%0.4f", -- LockOnLight
	[162] = "%0.4f", -- ExcessGLight
	[163] = "%0.4f", -- ScaleBrightness
	[177] = "%0.4f", -- SetAirspeed
	[178] = "%0.4f", -- MaxAirspeed
	[179] = "%0.4f", -- MachIndicator
	[181] = "%0.4f", -- Canopy
	[197] = "%0.4f", -- IFF_Code4Sw_Pull
	[198] = "%0.4f", -- IFF_MasterSw_Pull
	[260] = "%0.4f", -- TACAN_test_light
	[268] = "%0.4f", -- HSI_Range_100
	[269] = "%0.4f", -- HSI_Range_10
	[270] = "%0.4f", -- HSI_Range_1
	[276] = "%0.4f", -- HSI_CourseSel_100_10
	[277] = "%0.4f", -- HSI_CourseSel_1
	[302] = "%0.4f", -- UHFRadio100MHz
	[303] = "%0.4f", -- UHFRadio10MHz
	[304] = "%0.4f", -- UHFRadio1MHz
	[305] = "%0.4f", -- UHFRadio01MHz
	[306] = "%0.4f", -- UHFRadio0025MHz
	[318] = "%0.4f", -- TdcControlAzimuth
	[319] = "%0.4f", -- TdcControlRange
	[326] = "%0.4f", -- UHFRadioChannel
	[390] = "%0.4f", -- OxygenQuantity
	[401] = "%0.4f", -- ChaffDrumCounter_10
	[402] = "%0.4f", -- ChaffDrumCounter_1
	[405] = "%0.4f", -- FlareDrumCounter_10
	[406] = "%0.4f", -- FlareDrumCounter_1
	[425] = "%0.4f", -- Tachometer_percent_Left
	[426] = "%0.4f", -- Tachometer_percent_Right
	[438] = "%0.4f", -- SAI_Pitch
	[439] = "%0.4f", -- SAI_Bank
	[440] = "%0.4f", -- SAI_OFF_flag
	[443] = "%0.4f", -- SAI_knob_arrow
	[500] = "%0.4f", -- Rudder
	[501] = "%0.4f", -- LeftWheelBrake
	[502] = "%0.4f", -- RightWheelBrake
	[509] = "%0.4f", -- CLOCK_elapsed_time_minutes
	[520] = "%0.4f", -- Altimeter_1000_footCount
	[521] = "%0.4f", -- Altimeter_100_footCount
	[525] = "%0.4f", -- FuelFlow_Left
	[526] = "%0.4f", -- FuelFlow_Right
	[600] = "%0.4f", -- FlowBlinker
	[604] = "%0.4f", -- FlowPressure
	[704] = "%0.4f", -- AOA_poweroff_flag
	[712] = "%0.4f", -- CanopyHandle
	[775] = "%0.4f", -- pilot_draw
	[902] = "%0.4f", -- AccelerometerMin
	[903] = "%0.4f", -- AccelerometerMax
	[905] = "%0.4f", -- CanopyDamages
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