-- MiG-15bis FC

ExportScript.FoundDCSModule = true
ExportScript.Version.MiG15bis_FC = "1.2.1"

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
	[4] = "%0.4f", -- IAS
	[5] = "%0.4f", -- TAS
	[6] = "%0.4f", -- AGK_47B_roll
	[7] = "%0.4f", -- AGK_47B_pitch
	[8] = "%0.4f", -- AGK_47B_sideslip
	[9] = "%0.4f", -- AGK_47B_turn
	[10] = "%0.4f", -- AGK_47B_horizon
	[11] = "%0.4f", -- AGK_47B_failure_flag
	[14] = "%0.4f", -- Variometer
	[15] = "%0.4f", -- CLOCK_currtime_hours
	[16] = "%0.4f", -- CLOCK_currtime_minutes
	[17] = "%0.4f", -- CLOCK_seconds_meter_time_seconds
	[18] = "%0.4f", -- CLOCK_flight_hours
	[19] = "%0.4f", -- CLOCK_flight_minutes
	[20] = "%0.4f", -- CLOCK_seconds_meter_time_minutes
	[22] = "%0.4f", -- CLOCK_flight_time_meter_status
	[27] = "%0.4f", -- MACH
	[28] = "%0.4f", -- Altimeter_km
	[29] = "%0.4f", -- Altimeter_m
	[31] = "%0.4f", -- Altimeter_Pressure
	[32] = "%0.4f", -- HeadingScale
	[33] = "%0.4f", -- Heading
	[35] = "%0.4f", -- PRV_46_RAlt
	[38] = "%0.4f", -- ARC5_Bearing
	[39] = "%0.4f", -- CockpitAltitude
	[40] = "%0.4f", -- PressureDifference
	[41] = "%0.4f", -- EngineTemperature
	[42] = "%0.4f", -- EngineTachometer
	[43] = "%0.4f", -- EngineFuelPressure
	[44] = "%0.4f", -- OilPressure
	[45] = "%0.4f", -- OilTemperature
	[46] = "%0.4f", -- FuelPressure
	[47] = "%0.4f", -- FuelQuantity
	[48] = "%0.4f", -- OxygenPressure
	[49] = "%0.4f", -- FlowPressure
	[60] = "%0.4f", -- FlowBlinker
	[83] = "%0.4f", -- VoltAmperMeter
	[93] = "%0.4f", -- NR23_TOP_Ready_Lamp
	[94] = "%0.4f", -- NR23_BOTTOM_Ready_Lamp
	[95] = "%0.4f", -- N37D_Ready_Lamp
	[98] = "%0.4f", -- LEFT_BOMB_Lamp
	[99] = "%0.4f", -- RIGHT_BOMB_Lamp
	[100] = "%0.4f", -- Tactical_Rel_Lamp
	[121] = "%0.4f", -- LeftBrakePressure
	[122] = "%0.4f", -- RightBrakePressure
	[127] = "%0.4f", -- RadioReceiverInd
	[128] = "%0.4f", -- RadioReceiverKnob
	[139] = "%0.4f", -- HydraulicPressureGain
	[144] = "%0.4f", -- RadioReceiverGauge
	[165] = "%0.4f", -- HydraulicPressureAirGears
	[168] = "%0.4f", -- HydraulicPressureMain
	[169] = "%0.4f", -- HydraulicPressureAirFlaps
	[172] = "%0.4f", -- HydraulicPressureMainAir
	[175] = "%0.4f", -- ARC5_Tuning
	[176] = "%0.4f", -- ARC5_TuningMeter
	[188] = "%0.4f", -- CanopyAirValveIndication
	[191] = "%0.4f", -- StickPitch
	[192] = "%0.4f", -- StickBank
	[193] = "%0.4f", -- B_1_knopf
	[194] = "%0.4f", -- A_knopf
	[195] = "%0.4f", -- B_2_knopf
	[196] = "%0.4f", -- Cover_knopf
	[199] = "%0.4f", -- WheelBrakeLever
	[204] = "%0.4f", -- Panel_Shake_Y
	[205] = "%0.4f", -- Panel_Shake_Z
	[205] = "%0.4f", -- EngineThrottle
	[206] = "%0.4f", -- Panel_Rot_X
	[211] = "%0.4f", -- RudderPedals
	[222] = "%0.4f", -- RightCanopyLever
	[223] = "%0.4f", -- LeftCanopyLever
	[224] = "%0.4f", -- AftCanopyLever
	[225] = "%0.4f", -- Canopy
	[235] = "%0.4f", -- RadioAntennaPower
	[238] = "%0.4f", -- ARC5_Band
	[239] = "%0.4f", -- ARC5_FreqScale
	[244] = "%0.4f", -- lamps_lightness
	[245] = "%0.4f", -- ASP_3N_Range
	[246] = "%0.4f", -- CanopyDamages
	[540] = "%0.4f", -- pilot_draw
	[814] = "%0.4f", -- ARC5_Scale

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