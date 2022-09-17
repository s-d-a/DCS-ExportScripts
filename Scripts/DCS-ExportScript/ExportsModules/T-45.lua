-- T-45C Mod
-- ExportScript created by skypickle

ExportScript.FoundDCSModule = true
ExportScript.Version.T45 = "1.2.1"
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
   --Arg ID] = "%.2f",  --Hints
[92] = "%.2f",  --Control Aug Switch
[181] = "%.2f", --Hook Bypass
[165] = "%.2f", --Altimeter Setting Knob
[250] = "%.2f", --COMM 1 Frequency Tens
[251] = "%.2f", --COMM 1 Frequency Ones
[252] = "%.2f", --COMM 1 Frequency Tenths
[253] = "%.2f", --COMM 1 Frequency Hundredths
[254] = "%.2f", --COMM 1 AM/FM Mode Switch
[246] = "%.2f", --COMM 1 Volume
[256] = "%.2f", --COMM 1 Mode Control Selector
[255] = "%.2f", --COMM 1 Brightness
[196] = "%.2f", --MIC Switch
[198] = "%.2f", --Intercom Volume
[191] = "%.2f", --COMM 1 Switch
[192] = "%.2f", --COMM 2 Switch
[294] = "%.2f", --Microphone Button
[274] = "%.2f", --COMM 2 Frequency Tens
[275] = "%.2f", --COMM 2 Frequency Ones
[276] = "%.2f", --COMM 2 Frequency Tenths
[277] = "%.2f", --COMM 2 Frequency Hundredths
[278] = "%.2f", --COMM 2 AM/FM Mode Switch
[270] = "%.2f", --COMM 2 Volume
[280] = "%.2f", --COMM 2 Mode Control Selector
[279] = "%.2f", --COMM 2 Brightness
[201] = "%.2f", --1
[202] = "%.2f", --2
[203] = "%.2f", --3
[204] = "%.2f", --4
[205] = "%.2f", --5
[206] = "%.2f", --6
[207] = "%.2f", --7
[208] = "%.2f", --8
[209] = "%.2f", --9
[200] = "%.2f", --0
[211] = "%.2f", --Enter
[212] = "%.2f", --Clear
[210] = "%.2f", --Declutter
[214] = "%.2f", --Low Altitude Warning Set
[215] = "%.2f", --Course Set
[216] = "%.2f", --Heading Set
[217] = "%.2f", --Bingo Set
[218] = "%.2f", --Master Mode
[223] = "%.2f", --Mil Depression Increase
[224] = "%.2f", --Mil Depression Decrease
[8] = "%.2f", --Tail Hook Lever
[7] = "%.2f", --Flaps Lever
[67] = "%.2f",  --Launch Bar Switch
[6] = "%.2f", --Landing Gear Lever
[10] = "%.2f",  --Anti-Skid Switch
[183] = "%.2f", --Landing Gear Emergency Release Handle
[11] = "%.2f",  --Engine Switch
[300] = "%.2f", --Battery 1 Switch
[301] = "%.2f", --Battery 2 Switch
[303] = "%.2f", --Generator Switch
[35] = "%.2f",  --Gas Turbine Starter Button
[0] = "%.2f", --Finger Lift
[66] = "%.2f",  --HYD 2 Reset Button
[180] = "%.2f", --Pitot Heat Switch
[184] = "%.2f", --EMER FLAPS Switch
[402] = "%.2f", --Anti-Collision/Strobe Lights
[404] = "%.2f", --Tail Lights
[405] = "%.2f", --Wing Lights
[406] = "%.2f", --Formation Lights
[401] = "%.2f", --Landing/Taxi Light
[403] = "%.2f", --Nav Lights
[452] = "%.2f", --Flood Lights Knob
[451] = "%.2f", --Console Lights Knob
[450] = "%.2f", --MIP Lights Knob
[400] = "%.2f", --Exterior Lights Master Switch
[117] = "%.2f", --Parking Brake Handle
[143] = "%.2f", --Master Alert Button - Push To Reset
[12] = "%.2f",  --Rudder Trim Knob
[116] = "%.2f", --Canopy Handle
[455] = "%.2f", --Flood Lights Knob
[454] = "%.2f", --Console Lights Knob
[453] = "%.2f", --MIP Lights Knob
[265] = "%.2f", --Seat Arming Handle
[264] = "%.2f", --Ejection Handle - Pull To Eject
[219] = "%.2f", --HUD Power Knob
[221] = "%.2f", --HUD Brightness Knob
[424] = "%.2f", --MFD On Day
[425] = "%.2f", --MFD On Night
[426] = "%.2f", --MFD Off
[422] = "%.2f", --MFD Brightness Increase
[423] = "%.2f", --MFD Brightness Decrease
[15] = "%.2f",  --Push Button 1
[16] = "%.2f",  --Push Button 2
[17] = "%.2f",  --Push Button 3
[18] = "%.2f",  --Push Button 4
[19] = "%.2f",  --Push Button 5
[20] = "%.2f",  --Push Button 6
[21] = "%.2f",  --Push Button 7
[22] = "%.2f",  --Push Button 8
[23] = "%.2f",  --Push Button 9
[24] = "%.2f",  --Push Button 10
[25] = "%.2f",  --Push Button 11
[26] = "%.2f",  --Push Button 12
[27] = "%.2f",  --Push Button 13
[28] = "%.2f",  --Push Button 14
[29] = "%.2f",  --Push Button 15
[30] = "%.2f",  --Push Button 16
[31] = "%.2f",  --Push Button 17
[32] = "%.2f",  --Push Button 18
[33] = "%.2f",  --Push Button 19
[34] = "%.2f",  --Push Button 20
[434] = "%.2f", --MFD On Day
[435] = "%.2f", --MFD On Night
[436] = "%.2f", --MFD Off
[432] = "%.2f", --MFD Brightness Increase
[433] = "%.2f", --MFD Brightness Decrease
[40] = "%.2f",  --Push Button 1
[41] = "%.2f",  --Push Button 2
[42] = "%.2f",  --Push Button 3
[43] = "%.2f",  --Push Button 4
[44] = "%.2f",  --Push Button 5
[45] = "%.2f",  --Push Button 6
[46] = "%.2f",  --Push Button 7
[47] = "%.2f",  --Push Button 8
[48] = "%.2f",  --Push Button 9
[49] = "%.2f",  --Push Button 10
[50] = "%.2f",  --Push Button 11
[51] = "%.2f",  --Push Button 12
[52] = "%.2f",  --Push Button 13
[53] = "%.2f",  --Push Button 14
[54] = "%.2f",  --Push Button 15
[55] = "%.2f",  --Push Button 16
[56] = "%.2f",  --Push Button 17
[57] = "%.2f",  --Push Button 18
[58] = "%.2f",  --Push Button 19
[59] = "%.2f",  --Push Button 20
[245] = "%.2f", --TACAN Channel Selector Ones
[242] = "%.2f", --TACAN Channel Selector Tens
[241] = "%.2f", --TACAN Power Switch
[230] = "%.2f", --VOR/ILS 1MHz Frequency Knob
[232] = "%.2f", --VOR/ILS 50KHz Frequency Knob
[231] = "%.2f", --VOR/ILS Power Knob
[182] = "%.2f", --Emergency Jettison Button
[114] = "%.2f", --Master Arm

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-- Pointed to by ProcessIkarusDCSHighImportance
-----------------------------

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
-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
-----------------------------------------------------

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
  local UHF_RADIO = GetDevice(3)  - I dont really know how to set this up
  ExportScript.Tools.SendDataDAC("ExportID", "Format")
  ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
  ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
  ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
  ]]


  local radio1 = (GetDevice(3):get_frequency())/1000000 --left radio freq unrounded
  local radio2 = (GetDevice(4):get_frequency())/1000000 --right radio freq unrounded
      
  ExportScript.Tools.SendData(2001, radio1) 
  ExportScript.Tools.SendData(2002, radio2) 
end