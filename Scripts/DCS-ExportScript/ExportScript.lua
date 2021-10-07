-- Ikarus and D.A.C. Export Script
--
-- Copyright by Michael aka McMicha 2014 - 2018
-- Contact dcs2arcaze.micha@farbpigmente.org


-- Main Table
ExportScript = {}
ExportScript.Version = {}
ExportScript.Version.ExportScript = "1.2.1"
-- Simulation id
ExportScript.SimID = string.format("%08x*",os.time())

-- State data for export
ExportScript.PacketSize     = 0
ExportScript.SendStrings    = {}
ExportScript.LastData       = {}

ExportScript.PacketSizeDAC  = {}
ExportScript.SendStringsDAC = {}
ExportScript.LastDataDAC    = {}

ExportScript.lastExportTimeHI       = 0
ExportScript.lastExportTimeLI       = 0

ExportScript.NoLuaExportBeforeNextFrame = false

local PrevExport                    = {}
PrevExport.LuaExportStart           = LuaExportStart
PrevExport.LuaExportStop            = LuaExportStop
PrevExport.LuaExportBeforeNextFrame = LuaExportBeforeNextFrame
PrevExport.LuaExportAfterNextFrame  = LuaExportAfterNextFrame

dofile(lfs.writedir()..[[Scripts\DCS-ExportScript\Config.lua]])
ExportScript.utf8 = dofile(lfs.writedir()..[[Scripts\DCS-ExportScript\lib\utf8.lua]])
dofile(lfs.writedir()..[[Scripts\DCS-ExportScript\lib\Tools.lua]])
dofile(lfs.writedir()..[[Scripts\DCS-ExportScript\lib\genericRadio.lua]])
dofile(lfs.writedir()..[[Scripts\DCS-ExportScript\lib\Maps.lua]])

for i = 1, #ExportScript.Config.DAC, 1 do
	ExportScript.PacketSizeDAC[i]  = 0
	ExportScript.SendStringsDAC[i] = {}
	ExportScript.LastDataDAC[i]    = {}
end

-- Found DCS or FC Module
ExportScript.FoundDCSModule = false
ExportScript.FoundFCModule  = false
ExportScript.FoundNoModul   = true

---------------------------------------------
-- DCS Export API Function Implementations --
---------------------------------------------

function LuaExportStart()
-- Works once just before mission start.
-- (and before player selects their aircraft, if there is a choice!)

	-- 2) Setup udp sockets to talk to GlassCockpit
	package.path  = package.path..";.\\LuaSocket\\?.lua"
	package.cpath = package.cpath..";.\\LuaSocket\\?.dll"

	--local lrename1, lrename2 = os.rename(ExportScript.Config.LogPath, ExportScript.Config.LogPath..".old")
	ExportScript.logFile = io.open(ExportScript.Config.LogPath, "wa") -- "W+"
	if ExportScript.logFile then
		ExportScript.logFile:write('\239\187\191') -- create a UTF-8 BOM
		ExportScript.logFile:write("ExportScript Version: "..ExportScript.Version.ExportScript.."\r\n")
	end
	--if lrenmae1 == nil then
	--    ExportScript.Tools.WriteToLog("Rename Error: "..lrename2)
	--end

	ExportScript.Tools.createUDPSender()
	ExportScript.Tools.createUDPListner()

	ExportScript.AF = {} -- Table for Auxiliary functions

	ExportScript.NoLuaExportBeforeNextFrame = false
	ExportScript.Tools.SelectModule()   -- point globals to Module functions and data.
	
	-- Chain previously-included export as necessary
	if PrevExport.LuaExportStart then
		PrevExport.LuaExportStart()
	end
end

function LuaExportBeforeNextFrame()
--[[	if ExportScript.Config.Debug then
		ExportScript.Tools.ProcessInput()
	else
		ExportScript.coProcessArguments_BeforeNextFrame = coroutine.create(ExportScript.Tools.ProcessInput)
		coStatus = coroutine.resume(ExportScript.coProcessArguments_BeforeNextFrame)
	end
	
	if ExportScript.NoLuaExportBeforeNextFrame == false then
		ExportScript.Tools.ProcessOutput()
	end
]]	
	-- Chain previously-included export as necessary
	if PrevExport.LuaExportBeforeNextFrame then
		PrevExport.LuaExportBeforeNextFrame()
	end
end

function LuaExportAfterNextFrame()
	if ExportScript.NoLuaExportBeforeNextFrame then
		ExportScript.Tools.ProcessOutput()
	end
	
	-- Chain previously-included export as necessary
	if PrevExport.LuaExportAfterNextFrame then
		PrevExport.LuaExportAfterNextFrame()
	end
end

function LuaExportActivityNextEvent(t)
	local tNext = t

-- Put your event code here and increase tNext for the next event
-- so this function will be called automatically at your custom
-- model times. 
-- If tNext == t then the activity will be terminated.

	if ExportScript.Config.Debug then
		ExportScript.Tools.ProcessInput()
	else
		ExportScript.coProcessArguments_BeforeNextFrame = coroutine.create(ExportScript.Tools.ProcessInput)
		coStatus = coroutine.resume(ExportScript.coProcessArguments_BeforeNextFrame)
	end
	
	if ExportScript.NoLuaExportBeforeNextFrame == false then
		ExportScript.Tools.ProcessOutput()
	end

	tNext = tNext + ExportScript.Config.ExportInterval

	return tNext
end

function LuaExportStop()
-- Works once just after mission stop.
	if ExportScript.Config.DACExport then
		ExportScript.Tools.SendDataDAC("DAC", "stop")
		for i=1, #ExportScript.Config.DAC, 1 do
			ExportScript.Tools.FlushDataDAC(i)
		end
	end

	if ExportScript.Config.IkarusExport then
		ExportScript.Tools.SendData("Ikarus", "stop")
		ExportScript.Tools.FlushData()
	end

	ExportScript.UDPsender:close()
	if ExportScript.Config.Listener then
		ExportScript.UDPListener:close()
	end
	
	ExportScript.ModuleName   = nil
	ExportScript.FoundNoModul = false

	if ExportScript.logFile then
		ExportScript.Tools.WriteToLog("====== Logfile close ======")
		ExportScript.logFile:flush()
		ExportScript.logFile:close()
		ExportScript.logFile = nil
	end
	
	-- Chain previously-included export as necessary
	if PrevExport.LuaExportStop then
		PrevExport.LuaExportStop()
	end
end