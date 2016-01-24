-- HELIOS and Arcaze Export Script
-- Version 0.9.9 BETA
--
-- Copyright by Michael aka McMicha 2014
-- Contact dcs2arcaze.micha@farbpigmente.org

-- List of all DCS Module Scripts

----------
-- DATA --
----------

-- Glass Cockpit Software
-- for example
-- HELIOS (http://www.gadrocsworkshop.com/helios/), Type 1
-- HawgTouch (http://forums.eagle.ru/showthread.php?t=71729), Type 2
gES_GlassCockpitExport    = true        -- false for not use
gES_GlassCockpitHost      = "127.0.0.1" -- IP for HELIOS or HawgToch
gES_GlassCockpitPort      = 1625        -- Port for HELIOS (9089) or HawgTouch (1625)
gES_GlassCockpitSeparator = ":"
gES_GlassCockpitType      = 2			-- 1 = HELIOS, 2 = HawgTouch

-- for example D.A.C. or SIOC
gES_HARDWAREExport        = true        -- false for not use
gES_HARDWARE              = {}
-- first hardware
gES_HARDWARE[1]           = {}
gES_HARDWARE[1].Host      = "127.0.0.1" -- IP for hardware 1
gES_HARDWARE[1].SendPort  = 26026       -- Port for hardware 1
gES_HARDWARE[1].Separator = ":"
-- secound to n hardware
--gES_HARDWARE[2]           = {}
--gES_HARDWARE[2].Host      = "127.0.0.1" -- IP for hardware 2
--gES_HARDWARE[2].SendPort  = 9092        -- Port for hardware 2
--gES_HARDWARE[2].Separator = ";"

-- D.A.C. can data send
gES_HARDWAREListner       = true          -- false for not use
gES_HARDWAREListnerPort   = 26027         -- Listener Port for D.A.C.

gES_ExportInterval        = 0.05
gES_ExportLowTickInterval = 1
gES_ExportModulePath      = lfs.writedir().."ExportsModules\\"
gES_LogPath               = lfs.writedir().."Logs\\Export.log"
gES_Debug                 = false
gES_FirstNewDataSend      = true
gES_FirstNewDataSendCount = 5
gES_genericRadioHardwareID = 1

------------
-- SCRIPT --
------------

os.setlocale("ISO-8559-1", "numeric")

-- Simulation id
gES_SimID = string.format("%08x*",os.time())

-- State data for export
gES_PacketSize    = 0
gES_SendStrings   = {}
gES_LastData      = {}

gES_PacketSizeHW  = {}
gES_SendStringsHW = {}
gES_LastDataHW    = {}

for i = 1, #gES_HARDWARE, 1 do
	gES_PacketSizeHW[i]  = 0
	gES_SendStringsHW[i] = {}
	gES_LastDataHW[i]    = {}
end

-- Frame counter for non important data
gES_TickCount   = 0
gES_TickCountHW = 0

-- Found DCS or FC Module
gES_FoundDCSModule = false
gES_FoundFCModule  = false
gES_FoundNoModul   = true

---------------------------------------------
-- DCS Export API Function Implementations --
---------------------------------------------

function LuaExportStart()
-- Works once just before mission start.
-- (and before player selects their aircraft, if there is a choice!)
	
    -- 2) Setup udp sockets to talk to GlassCockpit
    package.path  = package.path..";.\\LuaSocket\\?.lua"
    package.cpath = package.cpath..";.\\LuaSocket\\?.dll"
   
    gES_socket = require("socket")
    
    gES_c = gES_socket.udp()
	gES_c:setsockname("*", 0)
	gES_c:setoption('broadcast', true)
    gES_c:settimeout(.001) -- set the timeout for reading the socket

	if gES_HARDWAREListner then
		gES_c2 = gES_socket.udp()
		gES_c2:setsockname("*", gES_HARDWAREListnerPort)
		gES_c2:setoption('broadcast', true)
		gES_c2:settimeout(.001) -- set the timeout for reading the socket
	end

--	local lrename1, lrename2 = os.rename(gES_LogPath, gES_LogPath..".old")
	gES_logFile = io.open(gES_LogPath, "w+")
	WriteToLog("Export Modules Script Path: "..gES_ExportModulePath)
--	if lrenmae1 == nil then
--		WriteToLog("Rename Error: "..lrename2)
--	end
	
	SelectModule()  -- point globals to Module functions and data.
end

function WriteToLog(message)
    if gES_logFile then
        gES_logFile:write(os.date("%X :")..message.."\r\n")
    end
end

function LuaExportBeforeNextFrame()
	ProcessInput()
end

function LuaExportAfterNextFrame()
end

function LuaExportStop()
-- Works once just after mission stop.
	for i=1, #gES_HARDWARE, 1 do
		SendDataHW("DAC", "stop", i)
		FlushDataHW(i)
	end

    gES_c:close()
	if gES_HARDWAREListner then
		gES_c2:close()
	end

	if gES_logFile then
        gES_logFile:flush()
        gES_logFile:close()
        gES_logFile = nil
    end 
end

function ProcessInput()
    local lCommand, lCommandArgs, lDevice
	-- C1,3001,4
	-- lComand = C
	-- lCommandArgs[1] = 1 => lDevice
	-- lCommandArgs[2] = 3001
	-- lCommandArgs[3] = 4

    if gES_GlassCockpitExport then
		local lInput,from,port    = gES_c:receivefrom()

		if lInput then
			if gES_Debug then
				WriteToLog("lInput: "..lInput..", from: "..from..", port: "..port)
			end
			lCommand = string.sub(lInput,1,1)

			if lCommand == "R" then
				ResetChangeValues()
			end

			if (lCommand == "C") then
				lCommandArgs = StrSplit(string.sub(lInput,2),",")
				lDevice = GetDevice(lCommandArgs[1])
				if type(lDevice) == "table" then
					lDevice:performClickableAction(lCommandArgs[2],lCommandArgs[3])	
				end
			end
		end
	end
	
	if gES_HARDWAREListner then
		local lInput2,from2,port2 = gES_c2:receivefrom() -- Hardware

		if lInput2 then
			if gES_Debug then
				WriteToLog("lInput2: "..lInput2..", from2: "..from2..", port2: "..port2)
			end
			lCommand = string.sub(lInput2,1,1)

			if lCommand == "C" then
				ResetChangeValuesHW()
			end

			if (lCommand == "C") then
				lCommandArgs = StrSplit(string.sub(lInput2,2),",")
				lDevice = GetDevice(lCommandArgs[1])
				if lDevice ~= "1000" then
					if type(lDevice) == "table" then
						lDevice:performClickableAction(lCommandArgs[2],lCommandArgs[3])
					end
				elseif lDevice == "1000" then
					--genericRadio(key, value, hardware)
					genericRadio(lCommandArgs[2],lCommandArgs[3], gES_genericRadioHardwareID)
				end
			end
		end
	end
end

function LuaExportActivityNextEvent(t)
	t = t + gES_ExportInterval

	gES_TickCount = gES_TickCount + 1

	local lMyInfo = LoGetSelfData()
	if lMyInfo ~= nil then
		if gES_ModuleName ~= lMyInfo.Name then
			SelectModule()  -- point globals to Module functions and data.
		end
		lMyInfo = nil
	end

	local lDevice = GetDevice(0)
	if type(lDevice) == "table" and gES_FoundDCSModule then

		lDevice:update_arguments()

		if gES_GlassCockpitExport then
			--ProcessArguments(lDevice, gES_EveryFrameArguments) -- Module arguments as appropriate
			coProcessArguments_EveryFrame = coroutine.create(ProcessArguments)
			status = coroutine.resume( coProcessArguments_EveryFrame, lDevice, gES_EveryFrameArguments)
			if gES_Debug then
				WriteToLog("coProcessArguments_EveryFrame Status: "..dump(status))
			end
			--ProcessGlassCockpitDCSHighImportance(lDevice) -- Module, as appropriate; determined in SelectModule()
			coProcessGlassCockpitDCSHighImportance = coroutine.create(ProcessGlassCockpitDCSHighImportance)
			status = coroutine.resume( coProcessGlassCockpitDCSHighImportance, lDevice)
			if gES_Debug then
				WriteToLog("coProcessGlassCockpitDCSHighImportance Status: "..dump(status))
			end
		end
		if gES_HARDWAREExport then
			--ProcessHARDWAREHighImportance(lDevice) -- Module, as appropriate; determined in SelectModule()
			coProcessHARDWAREHighImportance = coroutine.create(ProcessHARDWAREHighImportance)
			status = coroutine.resume( coProcessHARDWAREHighImportance, lDevice)
			if gES_Debug then
				WriteToLog("coProcessHARDWAREHighImportance Status: "..dump(status))
			end
		end
		
		if gES_FirstNewDataSend and gES_FirstNewDataSendCount == 0 then
			if gES_HARDWAREExport then
				ResetChangeValuesHW()
			end
			if gES_GlassCockpitExport then
				ResetChangeValues()
			end
			gES_FirstNewDataSend = false
		else
			gES_FirstNewDataSendCount = gES_FirstNewDataSendCount - 1
		end
		
		if gES_TickCount >= gES_ExportLowTickInterval then
			if gES_GlassCockpitExport then
				--ProcessArguments(lDevice, gES_Arguments) -- Module arguments as appropriate
				coProcessArguments_Arguments = coroutine.create(ProcessArguments)
				status = coroutine.resume( coProcessArguments_Arguments, lDevice, gES_Arguments)
				if gES_Debug then
					WriteToLog("coProcessArguments_Arguments Status: "..dump(status))
				end
				--ProcessGlassCockpitDCSLowImportance(lDevice) -- Module as appropriate; determined in SelectModule()
				coProcessGlassCockpitDCSLowImportance = coroutine.create(ProcessGlassCockpitDCSLowImportance)
				status = coroutine.resume( coProcessGlassCockpitDCSLowImportance, lDevice)
				if gES_Debug then
					WriteToLog("coProcessGlassCockpitDCSLowImportance Status: "..dump(status))
				end
			end
			
			if gES_HARDWAREExport then
				--ProcessHARDWARELowImportance(lDevice) -- Module, as appropriate; determined in SelectModule()
				coProcessHARDWARELowImportance = coroutine.create(ProcessHARDWARELowImportance)
				status = coroutine.resume( coProcessHARDWARELowImportance, lDevice)
				if gES_Debug then
					WriteToLog("coProcessHARDWARELowImportance Status: "..dump(status))
				end
				gES_TickCountHW = gES_TickCountHW + 1
			end
			gES_TickCount = 0
		end

		if gES_GlassCockpitExport then
			FlushData()
		end
		
		if gES_HARDWAREExport then
			for i=1, #gES_HARDWARE, 1 do
				FlushDataHW(i)
			end
		end
	elseif gES_FoundFCModule then -- Assume FC Aircraft
		if gES_GlassCockpitExport then
			--ProcessGlassCockpitFCHighImportance()
			coProcessGlassCockpitFCHighImportance = coroutine.create(ProcessGlassCockpitFCHighImportance)
			status = coroutine.resume( coProcessGlassCockpitFCHighImportance)
			if gES_Debug then
				WriteToLog("coProcessGlassCockpitFCHighImportance Status: "..dump(status))
			end
		end
		if gES_HARDWAREExport then
			--ProcessHARDWAREHighImportance(lDevice)
			coProcessHARDWAREHighImportance = coroutine.create(ProcessHARDWAREHighImportance)
			status = coroutine.resume( coProcessHARDWAREHighImportance, lDevice)
			if gES_Debug then
				WriteToLog("coProcessHARDWAREHighImportance Status: "..dump(status))
			end
		end

		if gES_FirstNewDataSend and gES_FirstNewDataSendCount == 0 then
			if gES_HARDWAREExport then
				ResetChangeValuesHW()
			end
			if gES_GlassCockpitExport then
				ResetChangeValues()
			end
			gES_FirstNewDataSend = false
		else
			gES_FirstNewDataSendCount = gES_FirstNewDataSendCount - 1
		end
		
		if gES_TickCount >= gES_ExportLowTickInterval then
			if gES_GlassCockpitExport then
				--ProcessGlassCockpitFCLowImportance()
				coProcessGlassCockpitFCLowImportance = coroutine.create(ProcessGlassCockpitFCLowImportance)
				status = coroutine.resume( coProcessGlassCockpitFCLowImportance)
				if gES_Debug then
					WriteToLog("coProcessGlassCockpitFCLowImportance Status: "..dump(status))
				end
			end
			
			if gES_HARDWAREExport then
				--ProcessHARDWARELowImportance(lDevice)
				coProcessHARDWARELowImportance = coroutine.create(ProcessHARDWARELowImportance)
				status = coroutine.resume( coProcessHARDWARELowImportance, lDevice)
				if gES_Debug then
					WriteToLog("coProcessHARDWARELowImportance Status: "..dump(status))
				end
				gES_TickCountHW = gES_TickCountHW + 1
			end
			gES_TickCount = 0
		end
		
		if gES_GlassCockpitExport then
			FlushData()
		end
		
		if gES_HARDWAREExport then
			for i=1, #gES_HARDWARE, 1 do
				FlushDataHW(i)
			end
		end
	else -- No Module found
		if gES_FoundNoModul then
			WriteToLog("No Module Found.")
			SelectModule()  -- point globals to Module functions and data.
		end
    end

	return t
end

-- Helper Functions
function StrSplit(str, delim, maxNb)
    -- Eliminate bad cases...
    if string.find(str, delim) == nil then
        return { str }
    end
    if maxNb == nil or maxNb < 1 then
        maxNb = 0    -- No limit
    end
    local lResult = {}
    local lPat = "(.-)" .. delim .. "()"
    local lNb  = 0
    local lLastPos
    for part, pos in string.gfind(str, lPat) do
        lNb = lNb + 1
        lResult[lNb] = part
        lLastPos = pos
        if lNb == maxNb then break end
    end
    -- Handle the last field
    if lNb ~= maxNb then
        lResult[lNb + 1] = string.sub(str, lLastPos)
    end
    return lResult
end

function round(num, idp)
  local lMult = 10^(idp or 0)
  return math.floor(num * lMult + 0.5) / lMult
end



-- Status Gathering Functions
function ProcessArguments(device, arguments)
	local lArgument , lFormat , lArgumentValue
	local lCounter = 0

	if gES_Debug then
		WriteToLog("======Begin========")
	end

	for lArgument, lFormat in pairs(arguments) do 
		lArgumentValue = string.format(lFormat,device:get_argument_value(lArgument))
		if gES_Debug then
			lCounter = lCounter + 1
			WriteToLog(lCounter..". ID: "..lArgument..", Fromat: "..lFormat..", Value: "..lArgumentValue)
		end
		SendData(lArgument, lArgumentValue)
	end
	
	if gES_Debug then
		WriteToLog("======End========")
	end
end

-- Network Functions for GlassCockpit
function SendData(id, value)	
	if string.len(value) > 3 and value == string.sub("-0.00000000",1, string.len(value)) then
		value = value:sub(2)
	end
	
	if gES_LastData[id] == nil or gES_LastData[id] ~= value then
		local ldata    =  id .. "=" .. value
		local ldataLen = string.len(ldata)

		if ldataLen + gES_PacketSize > 576 then
			FlushData()
		end

		table.insert(gES_SendStrings, ldata)
		gES_LastData[id] = value	
		gES_PacketSize   = gES_PacketSize + ldataLen + 1
	end
end

-- Network Functions for Hardware
function SendDataHW(id, value, hardware)
	hardware = hardware or 1

	if gES_HARDWARE[hardware] == nil then
		WriteToLog("unknown hardware ID '"..hardware.."' for value: '"..id.."="..value.."'")
		return
	end

	if string.len(value) > 3 and value == string.sub("-0.00000000",1, string.len(value)) then
		value = value:sub(2)
	end

	if gES_LastDataHW[hardware][id] == nil or gES_LastDataHW[hardware][id] ~= value then
		local ldata    =  id .. "=" .. value
		local ldataLen = string.len(ldata)

		if ldataLen + gES_PacketSizeHW[hardware] > 576 then
			FlushDataHW(hardware)
		end

		table.insert(gES_SendStringsHW[hardware], ldata)
		gES_LastDataHW[hardware][id] = value	
		gES_PacketSizeHW[hardware]   = gES_PacketSizeHW[hardware] + ldataLen + 1
		--WriteToLog("id=ldata: "..ldata)
		--WriteToLog("gES_LastDataHW["..hardware.."]: "..dump(gES_LastDataHW[hardware]))
	end	
end

function FlushData()
	if #gES_SendStrings > 0 then
		local lES_SimID = ""
		if gES_GlassCockpitType == 1 then
			lES_SimID = gES_SimID
		elseif gES_GlassCockpitType == 2 then
			lES_SimID = ""
		end
		local lPacket = lES_SimID .. table.concat(gES_SendStrings, gES_GlassCockpitSeparator) .. "\n"
		gES_socket.try(gES_c:sendto(lPacket, gES_GlassCockpitHost, gES_GlassCockpitPort))
		gES_SendStrings = {}
		gES_PacketSize  = 0
	end
end

function FlushDataHW(hardware)
	hardware = hardware or 1

	if gES_HARDWARE[hardware] == nil then
		WriteToLog("unknown hardware ID '"..hardware.."'")
		return
	end

	if #gES_SendStringsHW[hardware] > 0 then
		local lPacket = gES_SimID .. table.concat(gES_SendStringsHW[hardware], gES_HARDWARE[hardware].Separator) .. "\n"
		gES_socket.try(gES_c:sendto(lPacket, gES_HARDWARE[hardware].Host, gES_HARDWARE[hardware].SendPort))
		gES_SendStringsHW[hardware] = {}
		gES_PacketSizeHW[hardware]  = 0



	end
end

function ResetChangeValues()
	gES_LastData   = {}
	gES_TickCount  = 10
end

function ResetChangeValuesHW()
	for i = 1, #gES_HARDWARE, 1 do
		gES_LastDataHW[i] = {}
	end
	gES_TickCount         = 10
	gES_TickCountHW       = 0
end

function SelectModule()
   -- Select Module...
	gES_FoundDCSModule = false
	gES_FoundFCModule  = false
	gES_FoundNoModul   = true

	local lMyInfo      = LoGetSelfData()
	if lMyInfo == nil then  -- End SelectModule, if don't selected a aircraft
		return
	end
	
          gES_ModuleName = lMyInfo.Name
	local lModuleName    = gES_ModuleName..".lua"
	local lModuleFile    = ""
	
	gES_FoundNoModul = false

	for file in lfs.dir(gES_ExportModulePath) do
		if lfs.attributes(gES_ExportModulePath..file,"mode") == "file" then 
			if file == lModuleName then
				lModuleFile = gES_ExportModulePath..file
			end
		end
	end

	WriteToLog("File Path: "..lModuleFile)

	if string.len(lModuleFile) > 1 then
		ResetChangeValuesHW()
		
		-- load Aircraft File
		dofile(lModuleFile)
		for i=1, #gES_HARDWARE, 1 do
			SendDataHW("File", lMyInfo.Name, i)
			FlushDataHW(i)
		end
		
		WriteToLog("File '"..lModuleFile.."' loaded")
		
		gES_FirstNewDataSend      = true
		gES_FirstNewDataSendCount = 5

		if gES_FoundDCSModule then
			local lCounter = 0
			for k, v in pairs(gES_GlassCockpitConfigEveryFrameArguments) do
				lCounter = lCounter + 1
			end
			if gES_Debug then
				WriteToLog("gES_GlassCockpitConfigEveryFrameArguments Count: "..lCounter)
			end
			if lCounter > 0 then
				gES_EveryFrameArguments = gES_GlassCockpitConfigEveryFrameArguments
			else
				-- no Arguments
				gES_EveryFrameArguments = {}
			end
			lCounter = 0
			for k, v in pairs(gES_GlassCockpitConfigArguments) do
				lCounter = lCounter + 1
			end
			if gES_Debug then
				WriteToLog("gES_GlassCockpitConfigArguments Count: "..lCounter)
			end
			if lCounter > 0 then
				gES_Arguments = gES_GlassCockpitConfigArguments
			else
				-- no Arguments
				gES_Arguments = {}
			end

			ProcessGlassCockpitDCSHighImportance = ProcessGlassCockpitDCSConfigHighImportance
			ProcessGlassCockpitDCSLowImportance  = ProcessGlassCockpitDCSConfigLowImportance
			ProcessHARDWAREHighImportance        = ProcessHARDWAREConfigHighImportance
			ProcessHARDWARELowImportance         = ProcessHARDWAREConfigLowImportance

		elseif gES_FoundFCModule then
			ProcessGlassCockpitFCHighImportance  = ProcessGlassCockpitFCHighImportanceConfig
			ProcessGlassCockpitFCLowImportance   = ProcessGlassCockpitFCLowImportanceConfig
			ProcessHARDWAREHighImportance        = ProcessHARDWAREConfigHighImportance
			ProcessHARDWARELowImportance         = ProcessHARDWAREConfigLowImportance
		else
			WriteToLog("Unknown Module Type: "..lMyInfo.Name)
		end

	else -- Unknown Module
		ProcessGlassCockpitDCSHighImportance     = ProcessGlassCockpitDCSHighImportanceNoConfig
		ProcessGlassCockpitDCSLowImportance      = ProcessGlassCockpitDCSLowImportanceNoConfig
		ProcessGlassCockpitFCHighImportance      = ProcessGlassCockpitFCHighImportanceNoConfig
		ProcessGlassCockpitFCLowImportance       = ProcessGlassCockpitFCLowImportanceNoConfig
		ProcessHARDWAREHighImportance            = ProcessHARDWARENoConfigHighImportance
		ProcessHARDWARELowImportance             = ProcessHARDWARENoConfigLowImportance
		gES_EveryFrameArguments                  = {}
		gES_Arguments                            = {}
		WriteToLog("Unknown Module Name: "..lMyInfo.Name)
	end
end

-- The dump function show the content of the specified variable.
-- dump is similar to PHP function var_dump and show variables from type
-- "nil, "number", "string", "boolean, "table", "function", "thread" and "userdata"
function dump(var, depth)
        depth = depth or 0
        if type(var) == "string" then
            return 'string: "' .. var .. '"\n'
		elseif type(var) == "nil" then
			return 'nil\n' 
		elseif type(var) == "number" then
			return 'number: "' .. var .. '"\n'
		elseif type(var) == "boolean" then
			return 'boolean: "' .. tostring(var) .. '"\n'
		elseif type(var) == "function" then
			if debug and debug.getinfo then
				fcnname = tostring(var)
				local info = debug.getinfo(var, "S")
				if info.what == "C" then
					return string.format('%q', fcnname .. ', C function') .. '\n'
				else 
					if (string.sub(info.source, 1, 2) == [[./]]) then
						return string.format('%q', fcnname .. ', defined in (' .. info.linedefined .. '-' .. info.lastlinedefined .. ')' .. info.source) ..'\n'
					else
						return string.format('%q', fcnname .. ', defined in (' .. info.linedefined .. '-' .. info.lastlinedefined .. ')') ..'\n'
					end
				end				
			else
				return 'a function\n'	
			end
		elseif type(var) == "thread" then
			return 'thread\n'
		elseif type(var) == "userdata" then
			return tostring(var)..'\n'
        elseif type(var) == "table" then
                depth = depth + 1
                out = "{\n"
                for k,v in pairs(var) do
                        out = out .. (" "):rep(depth*4).. "["..k.."] = " .. dump(v, depth)
                end
                return out .. (" "):rep((depth-1)*4) .. "}\n"
        else 
                return tostring(var) .. "\n"
        end
end

-- round function for math libraray
-- number  : value
-- decimals: number of decimal
-- method  :  ceil: Returns the smallest integer larger than or equal to number
--           floor: Returns the smallest integer smaller than or equal to number
function math.round(number, decimals, method)
	if string.find(number, "%p" ) ~= nil then
		decimals = decimals or 0
		local lFactor = 10 ^ decimals
		if (method == "ceil" or method == "floor") then
			-- ceil: Returns the smallest integer larger than or equal to number
			-- floor: Returns the smallest integer smaller than or equal to number
			return math[method](number * lFactor) / lFactor
		else
			return tonumber(("%."..decimals.."f"):format(number))
		end
	else
		return number
	end
end

-- split function for string libraray
-- stringvalue: value
-- delimiter  : delimiter for split
-- for example, see http://www.lua.org/manual/5.1/manual.html#5.4.1
function string.split(stringvalue, delimiter)
    result = {};
    for match in (stringvalue..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

-- Pointed to by ProcessGlassCockpitDCSHighImportance, if the player aircraft is something else
function ProcessGlassCockpitDCSHighImportanceNoConfig(mainPanelDevice)
end
-- Pointed to by ProcessGlassCockpitDCSLowImportance, if the player aircraft is something else
function ProcessGlassCockpitDCSLowImportanceNoConfig(mainPanelDevice)
end

-----------------------------------------
-- FLAMING CLIFFS AIRCRAFT / Su-25T    --
-- FC aircraft don't support GetDevice --
-----------------------------------------
-- the player aircraft is a Flaming Cliffs or similar aircraft
function ProcessGlassCockpitFCHighImportanceNoConfig()
end
function ProcessGlassCockpitFCLowImportanceNoConfig()
end

-- Hardware exports
function ProcessHARDWARENoConfigHighImportance(mainPanelDevice)
end
function ProcessHARDWARENoConfigLowImportance(mainPanelDevice)
end

--dofile("./AriesWings/AriesRadio.luac")
