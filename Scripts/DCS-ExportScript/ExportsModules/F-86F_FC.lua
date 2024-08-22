-- F-86F FC

ExportScript.FoundDCSModule = true
ExportScript.Version.F86F_FC = "1.2.1"

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
    [3] = "%0.4f", -- mirrors_draw
	[6] = "%0.4f", -- Accelerometer
	[8] = "%0.4f", -- AirspeeedM1
	[12] = "%0.4f", -- ExhaustTemperature
	[16] = "%0.4f", -- Tachometer
	[18] = "%0.4f", -- CLOCK_currtime_minutes
	[19] = "%0.4f", -- CLOCK_currtime_hours
	[22] = "%0.4f", -- FuelQuantity
	[24] = "%0.4f", -- Variometer
	[25] = "%0.4f", -- TurnIndicator
	[31] = "%0.4f", -- SlipIndicator
	[37] = "%0.4f", -- CLOCK_currtime_seconds
	[37] = "%0.4f", -- CLOCK_seconds_meter_time_minutes
	[52] = "%0.4f", -- CLOCK_flight_hours
	[53] = "%0.4f", -- CLOCK_flight_minutes
	[56] = "%0.4f", -- CLOCK_flight_time_meter_status
	[71] = "%0.4f", -- StickRoll
	[74] = "%0.4f", -- StickPitch
	[81] = "%0.4f", -- AttitudeIndicatorPitchSphere
	[104] = "%0.4f", -- Throttle
	[109] = "%0.4f", -- HydPress
	[112] = "%0.4f", -- OilPressure
	[114] = "%0.4f", -- CockpitAltimeter
	[178] = "%0.4f", -- Airspeeed
	[179] = "%0.4f", -- MachNumber
	[180] = "%0.4f", -- Panel_Shake_Y
	[180] = "%0.4f", -- PrimaryInstLights
	[181] = "%0.4f", -- Panel_Shake_Z
	[181] = "%0.4f", -- CockpitCanopy
	[182] = "%0.4f", -- IlluminationLights
	[185] = "%0.4f", -- AuxiliaryInstrumentLights
	[189] = "%0.4f", -- Panel_Rot_X
	[204] = "%0.4f", -- NormalTrimSwitch_pitch
	[214] = "%0.4f", -- AttitudeIndicatorPitchShift
	[215] = "%0.4f", -- Left_Wheel_Brake
	[216] = "%0.4f", -- Right_Wheel_Brake
	[219] = "%0.4f", -- ARN6_ScaleLight
	[221] = "%0.4f", -- EmergencyJettisonHandleRot
	[222] = "%0.4f", -- LandingGearUnsafe
	[353] = "%0.4f", -- OxygenPressure
	[500] = "%0.4f", -- Rudder
	[523] = "%0.4f", -- Altimeter1000
	[524] = "%0.4f", -- Altimeter100
	[531] = "%0.4f", -- FuelFlow
	[540] = "%0.4f", -- PilotDraw
	[600] = "%0.4f", -- ARN6_Bearing
	[601] = "%0.4f", -- VoltageDC
	[602] = "%0.4f", -- Loadmeter
	[603] = "%0.4f", -- LABS_roll_needle
	[604] = "%0.4f", -- LABS_pitch_needle
	[605] = "%0.4f", -- AttitudeIndicatorPitch
	[606] = "%0.4f", -- AttitudeIndicatorBank
	[700] = "%0.4f", -- AltimeterHG
	[705] = "%0.4f", -- OxygenFlowBlinker
	[707] = "%0.4f", -- Altimeter10000
	[709] = "%0.4f", -- AirspeeedDrum
	[711] = "%0.4f", -- GyroCompassNeedle
	[712] = "%0.4f", -- GyroCompassScale
	[713] = "%0.4f", -- AttitudeIndicatorOffFlag
	[800] = "%0.4f", -- ARN6_TuningMeter
	[801] = "%0.4f", -- ARN6_Tuning
	[804] = "%0.4f", -- ARN6_Band
	[814] = "%0.4f", -- ARN6_Scale
	[818] = "%0.4f", -- EmergencyJettisonHandlePos
	[825] = "%0.4f", -- StandByCompassLight
	[830] = "%0.4f", -- ARN6_FreqScale
	[1002] = "%0.4f", -- AccelerometerMax
	[1003] = "%0.4f", -- AccelerometerMin
	[1005] = "%0.4f", -- AttitudeIndicatorBankNeedle
	[1006] = "%0.4f", -- CLOCK_seconds_meter_time_seconds

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