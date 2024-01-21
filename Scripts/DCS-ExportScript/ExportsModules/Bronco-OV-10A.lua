-- Module Name Export

ExportScript.FoundDCSModule = true
ExportScript.Version.BroncoOV10A = "1.2.1"

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

    [400] = "%.2f",
    [401] = "%.2f",
    [402] = "%.2f",
    [403] = "%.2f",
    [404] = "%.2f",
    [405] = "%.2f",
    [406] = "%.2f",
    [407] = "%.2f",
    [410] = "%.2f",
    [411] = "%.2f",
    [412] = "%.2f",
    [413] = "%.2f",
    [414] = "%.2f",
    [415] = "%.2f",
    [416] = "%.2f",
    [420] = "%.2f",
    [421] = "%.2f",
    [422] = "%.2f",
    [423] = "%.2f",
    [424] = "%.2f",
    [425] = "%.2f",
    [426] = "%.2f",
    [430] = "%.2f",
    [431] = "%.2f",
    [432] = "%.2f",
    [433] = "%.2f",
    [434] = "%.2f",
    [435] = "%.2f",
    [440] = "%.2f",
    [441] = "%.2f",
    [442] = "%.2f",
    [443] = "%.2f",
    [500] = "%.2f",
    [501] = "%.2f",
    [502] = "%.2f",
    [503] = "%.2f",
    [510] = "%.2f",
    [511] = "%.2f",
    [512] = "%.2f",
    [4000] = "%.2f",
    [4001] = "%.2f",
    [4002] = "%.2f",
    [4003] = "%.2f",
    [4004] = "%.2f",
    [4005] = "%.2f",
    [4006] = "%.2f",
    [4007] = "%.2f",
    [4008] = "%.2f",
    [4009] = "%.2f",
    [4010] = "%.2f",
    [4011] = "%.2f",
    [4012] = "%.2f",
    [6000] = "%.2f",
    [6001] = "%.2f",
    [6002] = "%.2f",
    [6003] = "%.2f",
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
    ExportScript.HudMil(mainPanelDevice)


    ---------------
    -- Log Dumps --
    ---------------
--[[
    ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))

    local ltmp1 = 0
    for ltmp2 = 0, 20, 1 do
        ltmp1 = list_indication(ltmp2)
        ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
    end

    local ltmp1 = 0
    for ltmp2 = 1, 70, 1 do
        ltmp1 = GetDevice(ltmp2)
        ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
        ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
    end
]]
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

function ExportScript.HudMil(mainPanelDevice)
    local hudMil = mainPanelDevice:get_argument_value(435) -- -1 to 1, so normalize
    hudMil = hudMil + 1 -- 0 to 2, so,  0 = 1 and 1 = 12.5 and 2 = 26
    hudMil = (hudMil * 12.5) + 1 -- via excel
    hudMil = ExportScript.Tools.round(hudMil, 0) * 10 -- round to decimal only
    ExportScript.Tools.SendData(8000, 'HUD\nMIL ' .. hudMil) -- format export
--[[
    -------------------
    -- Bombing Table --
    -------------------

    -- Straight and level
    IAS ALT MIL
    --- --- ---
    200 200 60
    200 400 30
    150 400 Hud Tint Frame
]]
end

----------------------
-- Helper Functions --
----------------------