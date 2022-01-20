-- A-4E-C

ExportScript.FoundDCSModule = true
ExportScript.Version.A4EC = "1.2.1"

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
	[8] = "%0.4f",		--Landing Gear Handle	{1,0,1}
	[10] = "%0.4f",		--Arresting Hook Handle	{1,0,1}
	[24] = "%0.4f",		--Shoulder Harness Control Handle	{1,0,1}
	[25] = "%0.4f",		--Alternate Ejection Handle	{1,0,1}
	[82] = "%0.4f",		--Rudder Trim Switch	{0,-1,1}
	[83] = "%0.4f",		--Master Exterior Lights Switch	{1,-1,1}
	[84] = "%0.4f",		--Spoiler Arm Switch	{1,0,1}
	[85] = "%0.4f",		--Speedbrake Switch	{1,0,1}
	[100] = "%0.4f",	--Engine Starter Switch	{1,0,1}
	[101] = "%0.4f",	--Drop Tank Pressurization Switch	{1,-1,1}
	[103] = "%0.4f",	--Fuel Dump Switch	{1,-1,1}
	[104] = "%0.4f",	--Fuel Control Switch	{1,0,1}
	[106] = "%0.4f",	--Instrument Lights Control	{0,0,1}
	[107] = "%0.4f",	--Console Lights Control	{0,0,1}
	[108] = "%0.4f",	--Instrument Lights Brightness	{1,-1,1}
	[110] = "%0.4f",	--White Floodlights Control	{0,0,1}
	[120] = "%0.4f",	--AN/APG-53A Radar Mode Switch	{0.1,0,0.4}
	[121] = "%0.4f",	--Radar AoA Compensation Switch	{1,0,1}
	[122] = "%0.4f",	--Radar Antenna Tilt Switch	{0.4,0,1}
	[123] = "%0.4f",	--Radar Obstacle Tone Volume	{0,-1,1}
	[125] = "%0.4f",	--Oxygen Switch	{1,0,1}
	[128] = "%0.4f",	--Emergency Speedbrake Knob	{1,-1,1}
	[130] = "%0.4f",	--Manual Fuel Shutoff Control Lever	{1,0,1}
	[131] = "%0.4f",	--Manual Fuel Shutoff Control Catch	{1,0,1}
	[132] = "%0.4f",	--Flap Handle	{1,-1,1}
	[133] = "%0.4f",	--JATO Arming Switch	{1,0,1}
	[134] = "%0.4f",	--JATO Jettison Switch	{1,0,1}
	[135] = "%0.4f",	--APC Power Switch	{1,-1,1}
	[136] = "%0.4f",	--APC Temperature Switch	{1,-1,1}
	[139] = "%0.4f",	--Accelerometer Reset	{1,0,1}
	[146] = "%0.4f",	--Elapsed-Time Clock	{1,0,1}
	[160] = "%0.4f",	--AFCS Standby Switch	{1,0,1}
	[161] = "%0.4f",	--AFCS Engage Switch	{1,0,1}
	[162] = "%0.4f",	--AFCS Heading Select Switch	{1,0,1}
	[163] = "%0.4f",	--AFCS Altitude Switch	{1,0,1}
	[164] = "%0.4f",	--AFCS Heading Select Pull-to-Set Knob	{0,0,1}
	[165] = "%0.4f",	--AFCS Stability Augmentation Switch (Yaw Damper)	{1,0,1}
	[166] = "%0.4f",	--AFCS Aileron Trim Switch (unimplemented)	{1,0,1}
	[170] = "%0.4f",	--AN/APN-153 Doppler Navigation Radar Mode Switch	{0.1,0,0.4}
	[176] = "%0.4f",	--AN/ASN-41 Function Selector Switch	{0.1,0,0.4}
	[177] = "%0.4f",	--Present Latitude Push-to-Set Knob	{1,0,1}
	[183] = "%0.4f",	--Present Longitude Push-to-Set Knob	{1,0,1}
	[190] = "%0.4f",	--Destination Latitude Push-to-Set Knob	{1,0,1}
	[196] = "%0.4f",	--Destination Longitude Push-to-Set Knob	{1,0,1}
	[203] = "%0.4f",	--Magnetic Variation Push-to-Set Knob	{1,0,1}
	[209] = "%0.4f",	--Wind Speed Push-to-Set Knob	{1,0,1}
	[213] = "%0.4f",	--Wind Direction Push-to-Set Knob	{1,0,1}
	[217] = "%0.4f",	--Probe Light Switch	{1,-1,1}
	[218] = "%0.4f",	--Taxi Light Switch	{1,0,1}
	[219] = "%0.4f",	--Anti-Collision Light Switch	{1,0,1}
	[220] = "%0.4f",	--Fuselage Light Switch	{1,-1,1}
	[221] = "%0.4f",	--Lighting Flash/Steady Switch	{1,0,1}
	[222] = "%0.4f",	--Navigation Lights Switch	{1,-1,1}
	[223] = "%0.4f",	--Tail Light Switch	{1,-1,1}
	[224] = "%0.4f",	--Cabin Pressure Switch	{1,0,1}
	[225] = "%0.4f",	--Windshield Defrost Switch	{1,-1,1}
	[226] = "%0.4f",	--Cabin Temperature Knob	{0,0,1}
	[236] = "%0.4f",	--Present Latitude Push-to-Set Knob	{1,0,1}
	[237] = "%0.4f",	--Present Longitude Push-to-Set Knob	{1,0,1}
	[238] = "%0.4f",	--Destination Latitude Push-to-Set Knob	{1,0,1}
	[239] = "%0.4f",	--Destination Longitude Push-to-Set Knob	{1,0,1}
	[240] = "%0.4f",	--Magnetic Variation Push-to-Set Knob	{1,0,1}
	[241] = "%0.4f",	--Wind Speed Push-to-Set Knob	{1,0,1}
	[242] = "%0.4f",	--Wind Direction Push-to-Set Knob	{1,0,1}
	[247] = "%0.4f",	--AN/APN-153 Memory Light Test	{1,0,1}
	[248] = "%0.4f",	--Destination Latitude Slew Knob	{1,-1,1}
	[249] = "%0.4f",	--Destination Longitude Slew Knob	{1,-1,1}
	[250] = "%0.4f",	--MCL Channel Selector Switch	{0.05,0,0.95}
	[251] = "%0.4f",	--Seat Adjustment Switch (unimplemented)	{1,-1,1}
	[252] = "%0.4f",	--Emergency Generator Switch	{1,0,1}
	[253] = "%0.4f",	--AN/ARA-63 MCL Power Switch	{1,-1,1}
	[254] = "%0.4f",	--TACAN Antenna Control Switch (unimplemented)	{1,-1,1}
	[255] = "%0.4f",	--Navigation Dead Reckoning/Doppler Switch (unimplemented)	{1,0,1}
	[256] = "%0.4f",	--Fuel Transfer Switch	{1,0,1}
	[257] = "%0.4f",	--Rain Removal Switch (unimplemented)	{1,0,1}
	[258] = "%0.4f",	--AFCS 1-N-2 Guard Switch	{1,0,1}
	[259] = "%0.4f",	--AFCS 1-N-2 Switch	{1,-1,1}
	[361] = "%0.4f",	--Radio Preset Channel Selector	{0.05,0,0.95}
	[365] = "%0.4f",	--Radio Volume	{0.5,0,1}
	[366] = "%0.4f",	--Radio Frequency Mode	{-1,-1,1}
	[366] = "%0.4f",	--Radio Frequency Mode	{1,-1,1}
	[367] = "%0.4f",	--Radio Frequency 10 MHz	{0.05,0,0.85}
	[368] = "%0.4f",	--Radio Frequency 1 MHz	{0.1,0,0.9}
	[369] = "%0.4f",	--Radio Frequency 50 kHz	{0.05,0,0.95}
	[370] = "%0.4f",	--Radio Squelch Disable	{1,0,1}
	[372] = "%0.4f",	--AN/ARC-51A UHF Radio Mode Switch	{0.1,0,0.3}
	[390] = "%0.4f",	--Gunpod Switch	{1,-1,1}
	[391] = "%0.4f",	--Gunpod Station LH Switch	{1,0,1}
	[392] = "%0.4f",	--Gunpod Station CTR Switch	{1,0,1}
	[393] = "%0.4f",	--Gunpod Station RH Switch	{1,0,1}
	[400] = "%0.4f",	--Radar Indicator Storage	{0,0,1}
	[401] = "%0.4f",	--Radar Indicator Brilliance	{0,0,1}
	[402] = "%0.4f",	--Radar Indicator Detail	{0,0,1}
	[403] = "%0.4f",	--Radar Indicator Gain	{0,0,1}
	[404] = "%0.4f",	--Radar Indicator Reticle	{0,0,1}
	[405] = "%0.4f",	--Radar Indicator Filter Plate	{1,0,1}
	[501] = "%0.4f",	--APR-27 Switch	{1,0,1}
	[502] = "%0.4f",	--AN/APR-23 Function Selector Switch	{0.33,0,0.99}
	[503] = "%0.4f",	--Audio ALQ Switch	{1,0,1}
	[504] = "%0.4f",	--APR-25 Switch	{1,0,1}
	[505] = "%0.4f",	--Missile Alert Volume	{0,-0.8,0.8}
	[506] = "%0.4f",	--PRF Volume	{0,-0.8,0.8}
	[507] = "%0.4f",	--APR-27 Test	{1,0,1}
	[509] = "%0.4f",	--Compass Latitude Knob (unimplemented)	{0,-1,1}
	[510] = "%0.4f",	--APR-27 Light	{1,0,1}
	[511] = "%0.4f",	--Compass Heading Set Knob (unimplemented)	{1,-1,1}
	[512] = "%0.4f",	--Compass Mode (unimplemented)	{1,0,1}
	[513] = "%0.4f",	--Compass Push-to-Sync (unimplemented)	{1,0,1}
	[522] = "%0.4f",	--Dispenser Select	{1,-1,1}
	[523] = "%0.4f",	--Chaff AUTO Pushbutton (ALE-29A Salvo)	{1,0,1}
	[524] = "%0.4f",	--Dispenser 1 Counter	{0,0,1}
	[525] = "%0.4f",	--Dispenser 2 Counter	{0,0,1}
	[530] = "%0.4f",	--Chaff Power Switch	{1,0,1}
	[602] = "%0.4f",	--AN/APN-141 Radar Altimeter	{0.5,0,1}
	[603] = "%0.4f",	--AN/APN-141 Radar Altimeter	{1,-1,0}
	[662] = "%0.4f",	--Standby Attitude Horizon	{0.5,0,1}
	[663] = "%0.4f",	--Standby Attitude Horizon	{1,0,1}
	[700] = "%0.4f",	--Emergency Release Selector	{0.1,0,0.6}
	[701] = "%0.4f",	--Guns Charging Switch	{1,0,1}
	[702] = "%0.4f",	--Bomb Arm Switch	{1,-1,1}
	[703] = "%0.4f",	--Station 1 Selector Switch	{1,0,1}
	[704] = "%0.4f",	--Station 2 Selector Switch	{1,0,1}
	[705] = "%0.4f",	--Station 3 Selector Switch	{1,0,1}
	[706] = "%0.4f",	--Station 4 Selector Switch	{1,0,1}
	[707] = "%0.4f",	--Station 5 Selector Switch	{1,0,1}
	[708] = "%0.4f",	--Weapon Function Selector Switch	{0.1,0,0.6}
	[709] = "%0.4f",	--Master Armament Switch	{1,0,1}
	[720] = "%0.4f",	--Internal-External Fuel Switch	{1,0,1}
	[721] = "%0.4f",	--Radar Terrain Clearance Switch	{1,0,1}
	[722] = "%0.4f",	--Radar Range Switch	{1,0,1}
	[723] = "%0.4f",	--Master Test Switch	{1,0,1}
	[724] = "%0.4f",	--BDHI Switch	{1,-1,1}
	[725] = "%0.4f",	--Shrike Selector Knob	{0.1,0,0.4}
	[726] = "%0.4f",	--Shrike/Sidewinder Volume Knob	{0,-1,1}
	[740] = "%0.4f",	--AWRS Quantity Selector Switch	{0.05,0,0.55}
	[742] = "%0.4f",	--AWRS Drop Interval Knob	{0,0,0.9}
	[743] = "%0.4f",	--AWRS Multiplier Switch	{1,0,1}
	[744] = "%0.4f",	--AWRS Mode Selector Switch	{0.1,0,0.5}
	[827] = "%0.4f",	--Altimeter Pressure	{0,0,1}
	[853] = "%0.4f",	--AoA Indexer Dimming Wheel	{1,-1,1}
	[884] = "%0.4f",	--IAS Index	{0.5,0,1}
	[885] = "%0.4f",	--IAS Index	{1,0,1}
	[891] = "%0.4f",	--Gunsight Day-Night Switch	{1,0,1}
	[895] = "%0.4f",	--Gunsight Light Control	{0,0,1}
	[900] = "%0.4f",	--AN/ARN-52 TACAN Mode Switch	{0.1,0,0.3}
	[901] = "%0.4f",	--TACAN Channel 10s	{0.05,0,0.6}
	[902] = "%0.4f",	--TACAN Channel 1s	{0.1,0,0.9}
	[903] = "%0.4f",	--TACAN Volume	{0,-1,1}
	[1240] = "%0.4f",	--Emergency Landing Gear Release Handle	{1,0,1}
	[1241] = "%0.4f",	--Emergency Stores Release Handle	{1,0,1}
	[1242] = "%0.4f",	--Manual Flight Control Handle	{1,0,1}
	[1243] = "%0.4f",	--Emergency Generator Release Handle	{1,0,1}

}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
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
	export in low tick interval to GlassCockpit
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
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
end

----------------------
-- Custom Functions --
----------------------



------------------------------
-- General Helper Functions --
------------------------------


function percentSignFromFuel(s)
    return s:gsub("%\%", "")
end


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


function addZeros3(number)
	number = string.format("%.1d" , number)
	if #number == 2 then
		number = "0" .. number
	elseif #number == 1 then
		number = "00" .. number
	end
	return number
end


-- inspired by https://github.com/ciribob/DCS-SimpleRadioStandalone/blob/a3021661a084e8dca285ffad7cf640b3c1dbccb2/Scripts/DCS-SRS/Scripts/DCS-SRS-Export.lua#L4195
function getCockpitParam()
	local ListIindicator = list_cockpit_params() --list_indication(IndicatorID)
	local TmpReturn = {}
	--if ListIindicator == "" then
    --    return nil
    --end 
    local ListindicatorMatch = ListIindicator:gmatch("([^\n]+):([^\n]+)")
  
    while true do
        local Key, Value = ListindicatorMatch()
        if not Key then
            break
        end
        TmpReturn[Key] = Value
    end
	return TmpReturn
end

