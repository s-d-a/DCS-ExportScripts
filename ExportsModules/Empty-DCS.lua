-- modul name
-- Version

gES_FoundDCSModule = true

gES_GlassCockpitConfigEveryFrameArguments = 
{
-- Hier kommen alle Anzeigen rein die in HELOS/HawgTouch angezeigt werden sollen
-- [4] DCS ID, e.g. 4 for AOA
-- "%.4f" Format des Rückgabewerte, z.B. "%.4f" eine Floatzahl mit 4 Nachkommastellen, "%0.1f" eine Floatzahl mit führender 0 und einer Nachkommstelle, "%1d" eine Einstellige dezimalzahl 
-- -- AOA, Description of DCS ID
	[4] = "%.4f",		-- AOA
	[] = "",		-- 
}
gES_GlassCockpitConfigArguments = 
{
-- Hier kommen alle Schalter rein die in HELOS/HawgTouch angezeigt werden sollen
-- [101] DCS ID from Button, e.g. 22 for PTR-EXT-STORES-JETT (mergency Jettison External Stores)
-- "%.1" Format des Wertes der an DCS gesendet werden soll, Beschreibung siehe oben
-- -- PTR-EXT-STORES-JETT (mergency Jettison External Stores) Description of DCS ID
	[101] = "%.1f",    -- PTR-EXT-STORES-JETT (mergency Jettison External Stores)
	[] = "",     -- 
}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessGlassCockpitDCSHighImportance
function ProcessGlassCockpitDCSConfigHighImportance(mainPanelDevice)
	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6
	end
end

function ProcessHARDWAREConfigHighImportance(mainPanelDevice)
-- Hier kommen alle Daten rein die ueber die Hardware in schneller folge ausgeben werden soll
-- In der Regel sind das die Statusanzeigen

-- SendDataHW(), ist die Funktion zur Ausgabe der Werte an die Hardware
-- "178" ist die ID des Wertes die in der entsprechenden XML Datei festgelegt wird, sollte der DCS ID entsprechen
-- mainPanelDevice:get_argument_value() ist eine Funktion die die Werte der übergeben DCS ID aus dem Spiel ausliest
-- 178 ist die DCS ID von dem man die Werte haben will
-- Description
	SendDataHW("178",  mainPanelDevice:get_argument_value(178))	-- L_AILERON_EMER_DISENGAGE
	SendDataHW("",  mainPanelDevice:get_argument_value())	-- 
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ProcessGlassCockpitDCSConfigLowImportance
function ProcessGlassCockpitDCSConfigLowImportance(mainPanelDevice)
	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6
	end
end

function ProcessHARDWAREConfigLowImportance(mainPanelDevice)
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

	--=====================================================================================
	--[[
	WriteToLog('list_cockpit_params(): '..dump(list_cockpit_params()))
	WriteToLog('CMSP: '..dump(list_indication(7)))
	
	local ltmp1 = 0
	for ltmp2 = 0, 13, 1 do
		ltmp1 = list_indication(ltmp2)
		WriteToLog(ltmp2..': '..dump(ltmp1))
		--WriteToLog(ltmp2..' (metatable): '..dump(getmetatable(ltmp1)))
	end
	]]
--[[
	local ltmp1 = 0
	for ltmp2 = 1, 73, 1 do
		ltmp1 = GetDevice(ltmp2)
		WriteToLog(ltmp2..': '..dump(ltmp1))
		WriteToLog(ltmp2..' (metatable): '..dump(getmetatable(ltmp1)))
	end
]]
end

-----------------------------
--     Custom functions    --
-----------------------------

function genericRadio(key, value, hardware)
end
