-- Ikarus and D.A.C. Export Script
-- Version 1.0.0 BETA
--
-- Copyright by Michael aka McMicha 2014
-- Contact dcs2arcaze.micha@farbpigmente.org


-- Main Table
ExportScript = {}
-- Simulation id
ExportScript.SimID = string.format("%08x*",os.time())

-- State data for export
ExportScript.PacketSize     = 0
ExportScript.SendStrings    = {}
ExportScript.LastData       = {}

ExportScript.PacketSizeDAC  = {}
ExportScript.SendStringsDAC = {}
ExportScript.LastDataDAC    = {}

dofile(lfs.writedir()..[[Scripts\DCS-ExportScript\Config.lua]])
dofile(lfs.writedir()..[[Scripts\DCS-ExportScript\lib\Tools.lua]])
dofile(lfs.writedir()..[[Scripts\DCS-ExportScript\lib\genericRadio.lua]])
dofile(lfs.writedir()..[[Scripts\DCS-ExportScript\lib\Maps.lua]])

for i = 1, #ExportScript.Config.DAC, 1 do
	ExportScript.PacketSizeDAC[i]  = 0
	ExportScript.SendStringsDAC[i] = {}
	ExportScript.LastDataDAC[i]    = {}
end

-- Frame counter for non important data
ExportScript.TickCount   = 0
ExportScript.TickCountDAC = 0

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

	ExportScript.socket = require("socket")

	ExportScript.UDPsender = ExportScript.socket.udp()
	ExportScript.UDPsender:setsockname("*", 0)
	ExportScript.UDPsender:settimeout(.004) -- set the timeout for reading the socket; 250 fps

	if ExportScript.Config.Listener then
		ExportScript.UDPListener = ExportScript.socket.udp()
		ExportScript.UDPListener:setsockname("*", ExportScript.Config.ListenerPort)
		ExportScript.UDPListener:settimeout(.004) -- set the timeout for reading the socket; 250 fps
	end

	--local lrename1, lrename2 = os.rename(ExportScript.Config.LogPath, ExportScript.Config.LogPath..".old")
	ExportScript.logFile = io.open(ExportScript.Config.LogPath, "w+")
	if ExportScript.logFile then
		ExportScript.logFile:write('\239\187\191') -- create a UTF-8 BOM
	end
	--if lrenmae1 == nil then
	--    ExportScript.Tools.WriteToLog("Rename Error: "..lrename2)
	--end

	ExportScript.AF = {} -- Table for Auxiliary functions

	ExportScript.Tools.SelectModule()   -- point globals to Module functions and data.
end

function LuaExportBeforeNextFrame()
	if ExportScript.Config.Debug then
		ExportScript.Tools.ProcessInput()
	else
		ExportScript.coProcessArguments_BeforeNextFrame = coroutine.create(ExportScript.Tools.ProcessInput)
		coStatus = coroutine.resume(ExportScript.coProcessArguments_BeforeNextFrame)
	end
end

function LuaExportAfterNextFrame()
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
end

function LuaExportActivityNextEvent(t)
	t = t + ExportScript.Config.ExportInterval
	local coStatus

	--ExportScript.TickCount = ExportScript.TickCount + 1
	ExportScript.TickCount = ExportScript.TickCount + ExportScript.Config.ExportInterval

	local lMyInfo = LoGetSelfData()
	if lMyInfo ~= nil then
		if ExportScript.ModuleName ~= lMyInfo.Name then
			ExportScript.Tools.SelectModule()  -- point globals to Module functions and data.
		end
		lMyInfo = nil
	end

	local lDevice = GetDevice(0)
	if type(lDevice) == "table" and ExportScript.FoundDCSModule then

		lDevice:update_arguments()

		if ExportScript.Config.Debug then
			ExportScript.Tools.WriteToLog("run hight importance export universally")
			ExportScript.Tools.ProcessArguments(lDevice, ExportScript.EveryFrameArguments) -- Module arguments as appropriate
		else
			ExportScript.coProcessArguments_EveryFrame = coroutine.create(ExportScript.Tools.ProcessArguments)
			coStatus = coroutine.resume( ExportScript.coProcessArguments_EveryFrame, lDevice, ExportScript.EveryFrameArguments)
		end

		if ExportScript.Config.IkarusExport then
			if ExportScript.Config.Debug then
				ExportScript.Tools.WriteToLog("run hight importance export Ikarus")
				ExportScript.ProcessIkarusDCSHighImportance(lDevice) -- Module, as appropriate; determined in ExportScript.Tools.SelectModule()
			else
				ExportScript.coProcessIkarusDCSHighImportance = coroutine.create(ExportScript.ProcessIkarusDCSHighImportance)
				coStatus = coroutine.resume( ExportScript.coProcessIkarusDCSHighImportance, lDevice)
			end
		end

		if ExportScript.Config.DACExport then
			if ExportScript.Config.Debug then
				ExportScript.Tools.WriteToLog("run hight importance export DAC")
				ExportScript.ProcessDACHighImportance(lDevice) -- Module, as appropriate; determined in ExportScript.Tools.SelectModule()
			else
				ExportScript.coProcessDACHighImportance = coroutine.create(ExportScript.ProcessDACHighImportance)
				coStatus = coroutine.resume( ExportScript.coProcessDACHighImportance, lDevice)
			end
		end

		if ExportScript.FirstNewDataSend and ExportScript.FirstNewDataSendCount == 0 then
			if ExportScript.Config.DACExport then
				ExportScript.Tools.ResetChangeValuesDAC()
			end
			if ExportScript.Config.IkarusExport then
				ExportScript.Tools.ResetChangeValues()
			end
			ExportScript.FirstNewDataSend = false
		else
			ExportScript.FirstNewDataSendCount = ExportScript.FirstNewDataSendCount - 1
		end

		if ExportScript.TickCount >= ExportScript.Config.ExportLowTickInterval then
			if ExportScript.Config.Debug then
				ExportScript.Tools.WriteToLog("run low importance export universally")
				ExportScript.Tools.ProcessArguments(lDevice, ExportScript.Arguments) -- Module arguments as appropriate
			else
				ExportScript.coProcessArguments_Arguments = coroutine.create(ExportScript.Tools.ProcessArguments)
				coStatus = coroutine.resume( ExportScript.coProcessArguments_Arguments, lDevice, ExportScript.Arguments)
			end

			if ExportScript.Config.IkarusExport then
				if ExportScript.Config.Debug then
					ExportScript.Tools.WriteToLog("run low importance export Ikarus")
					ExportScript.ProcessIkarusDCSLowImportance(lDevice) -- Module as appropriate; determined in ExportScript.Tools.SelectModule()
				else
					ExportScript.coProcessIkarusDCSLowImportance = coroutine.create(ExportScript.ProcessIkarusDCSLowImportance)
					coStatus = coroutine.resume( ExportScript.coProcessIkarusDCSLowImportance, lDevice)
				end
			end

			if ExportScript.Config.DACExport then
				if ExportScript.Config.Debug then
					ExportScript.Tools.WriteToLog("run low importance export DAC")
					ExportScript.ProcessDACLowImportance(lDevice) -- Module, as appropriate; determined in ExportScript.Tools.SelectModule()
				else
					ExportScript.coProcessDACLowImportance = coroutine.create(ExportScript.ProcessDACLowImportance)
					coStatus = coroutine.resume( ExportScript.coProcessDACLowImportance, lDevice)
				end
				ExportScript.TickCountDAC = ExportScript.TickCountDAC + 1
			end
			ExportScript.TickCount = 0
		end

		if ExportScript.Config.IkarusExport then
			ExportScript.Tools.FlushData()
		end

		if ExportScript.Config.DACExport then
			for i=1, #ExportScript.Config.DAC, 1 do
				ExportScript.Tools.FlushDataDAC(i)
			end
		end
	elseif ExportScript.FoundFCModule then -- Assume FC Aircraft
		
		ExportScript.AF.EventNumber = os.clock() --tonumber(tostring(os.clock()):gsub(".", ""))
		
		if ExportScript.Config.IkarusExport then
			if ExportScript.Config.Debug then
				ExportScript.Tools.WriteToLog("run hight importance export Ikarus")
				ExportScript.ProcessIkarusFCHighImportance()
			else
				ExportScript.coProcessGlassCockpitFCHighImportance = coroutine.create(ExportScript.ProcessIkarusFCHighImportance)
				coStatus = coroutine.resume( ExportScript.coProcessGlassCockpitFCHighImportance)
			end
		end
		if ExportScript.Config.DACExport then
			if ExportScript.Config.Debug then
				ExportScript.Tools.WriteToLog("run hight importance export DAC")
				ExportScript.ProcessDACHighImportance(lDevice)
			else
				ExportScript.coProcessDACHighImportance = coroutine.create(ExportScript.ProcessDACHighImportance)
				coStatus = coroutine.resume( ExportScript.coProcessDACHighImportance, lDevice)
			end
		end

		if ExportScript.FirstNewDataSend and ExportScript.FirstNewDataSendCount == 0 then
			if ExportScript.Config.DACExport then
				ExportScript.Tools.ResetChangeValuesDAC()
			end
			if ExportScript.Config.IkarusExport then
				ExportScript.Tools.ResetChangeValues()
			end
			ExportScript.FirstNewDataSend = false
		else
			ExportScript.FirstNewDataSendCount = ExportScript.FirstNewDataSendCount - 1
		end

		if ExportScript.TickCount >= ExportScript.Config.ExportLowTickInterval then
			if ExportScript.Config.IkarusExport then
				if ExportScript.Config.Debug then
					ExportScript.Tools.WriteToLog("run low importance export Ikarus")
					ExportScript.ProcessIkarusFCLowImportance()
				else
					ExportScript.coProcessIkarusFCLowImportance = coroutine.create(ExportScript.ProcessIkarusFCLowImportance)
					coStatus = coroutine.resume( ExportScript.coProcessIkarusFCLowImportance)
				end
			end

			if ExportScript.Config.DACExport then
				if ExportScript.Config.Debug then
					ExportScript.Tools.WriteToLog("run low importance export DAC")
					ExportScript.ProcessDACLowImportance(lDevice)
				else
					ExportScript.coProcessDACLowImportance = coroutine.create(ExportScript.ProcessDACLowImportance)
					coStatus = coroutine.resume( ExportScript.coProcessDACLowImportance, lDevice)
				end
				ExportScript.TickCountDAC = ExportScript.TickCountDAC + 1
			end
			ExportScript.TickCount = 0
		end

		if ExportScript.Config.IkarusExport then
			ExportScript.Tools.FlushData()
		end

		if ExportScript.Config.DACExport then
			for i=1, #ExportScript.Config.DAC, 1 do
				ExportScript.Tools.FlushDataDAC(i)
			end
		end
	else -- No Module found
		if ExportScript.FoundNoModul then
			ExportScript.Tools.WriteToLog("No Module Found.")
			ExportScript.Tools.SelectModule()  -- point globals to Module functions and data.
		end
	end

	return t
end
