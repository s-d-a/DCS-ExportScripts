-- Ikarus and D.A.C. Export Script
--
-- Tools
--
-- Copyright by Michael aka McMicha 2014 - 2018
-- Contact dcs2arcaze.micha@farbpigmente.org

ExportScript.Tools = {}
ExportScript.Version.Tools = "1.2.1"

function ExportScript.Tools.WriteToLog(message)
    if ExportScript.logFile then
        local ltmp, lMiliseconds = math.modf(os.clock())
        if lMiliseconds==0 then 
            lMiliseconds='000' 
        else 
            lMiliseconds=tostring(lMiliseconds):sub(3,5) 
        end
        ExportScript.logFile:write(os.date("%X")..":"..lMiliseconds.." : "..message.."\r\n")
    end
end

function ExportScript.Tools.createUDPSender()
	ExportScript.socket = require("socket")

	local lcreateUDPSender = ExportScript.socket.protect(function()
		ExportScript.UDPsender = ExportScript.socket.udp()
		ExportScript.socket.try(ExportScript.UDPsender:setsockname("*", 0))
		--ExportScript.socket.try(ExportScript.UDPsender:settimeout(.004)) -- set the timeout for reading the socket; 250 fps
	end)

	local ln, lerror = lcreateUDPSender()
	if lerror ~= nil then
		ExportScript.Tools.WriteToLog("createUDPSender protect: "..ExportScript.Tools.dump(ln)..", "..ExportScript.Tools.dump(lerror))
		return
	end

	ExportScript.Tools.WriteToLog("Create UDPSender")
end

function ExportScript.Tools.createUDPListner()
	if ExportScript.Config.Listener then
		ExportScript.socket = require("socket")

		local lcreateUDPListner = ExportScript.socket.protect(function()
			ExportScript.UDPListener = ExportScript.socket.udp()
			ExportScript.socket.try(ExportScript.UDPListener:setsockname("*", ExportScript.Config.ListenerPort))
			ExportScript.socket.try(ExportScript.UDPListener:settimeout(.001)) -- set the timeout for reading the socket; 250 fps
		end)

		local ln, lerror = lcreateUDPListner()
		if lerror ~= nil then
			ExportScript.Tools.WriteToLog("createUDPListner protect: "..ExportScript.Tools.dump(ln)..", "..ExportScript.Tools.dump(lerror))
			return
		end

		ExportScript.Tools.WriteToLog("Create UDPListner")
	end
end

function ExportScript.Tools.ProcessInput()
    local lCommand, lCommandArgs, lDevice
    -- C1,3001,4
    -- lComand = C
    -- lCommandArgs[1] = 1 => lDevice
    -- lCommandArgs[2] = 3001 => ButtonID
    -- lCommandArgs[3] = 4 => Value
    if ExportScript.Config.Listener then
        --local lInput,from,port = ExportScript.UDPListener:receivefrom()
		ExportScript.UDPListenerValues = {}

		local lUDPListenerReceivefrom = ExportScript.socket.protect(function()
			--[[
			local try = ExportScript.socket.newtry(function()
				ExportScript.UDPListener:close()
				ExportScript.Tools.createUDPListner()
			end)
			ExportScript.UDPListenerValues.Input, ExportScript.UDPListenerValues.from, ExportScript.UDPListenerValues.port = try(ExportScript.UDPListener:receivefrom())
			]] -- Bei einer newtry Funktion wird im fehlerfall deren inhalt ausgeführt.
			ExportScript.UDPListenerValues.Input, ExportScript.UDPListenerValues.from, ExportScript.UDPListenerValues.port = ExportScript.socket.try(ExportScript.UDPListener:receivefrom())
        end)

		local ln, lerror = lUDPListenerReceivefrom()
		if lerror ~= nil and lerror ~= "timeout" then
			ExportScript.Tools.WriteToLog("UDPListenerReceivefrom protect: "..ExportScript.Tools.dump(ln)..", "..ExportScript.Tools.dump(lerror))
			ExportScript.UDPListener:close()
			ExportScript.Tools.createUDPListner()
		end

		local lInput, from, port = ExportScript.UDPListenerValues.Input, ExportScript.UDPListenerValues.from, ExportScript.UDPListenerValues.port

		if ExportScript.Config.SocketDebug then
            ExportScript.Tools.WriteToLog("lInput: "..ExportScript.Tools.dump(lInput)..", from: "..ExportScript.Tools.dump(from)..", port: "..ExportScript.Tools.dump(port))
        end
        if lInput then
            lCommand = string.sub(lInput,1,1)

            if lCommand == "R" then -- R == Reset
                if ExportScript.Config.IkarusExport then
                    ExportScript.Tools.ResetChangeValues()
                    if ExportScript.Config.Debug then
                        ExportScript.Tools.WriteToLog("Reset fuer Ikarus Daten")
                    end
                end
                if ExportScript.Config.DACExport then
                    ExportScript.Tools.ResetChangeValuesDAC()
                    if ExportScript.Config.Debug then
                        ExportScript.Tools.WriteToLog("Reset fuer DAC Daten")
                    end
                end
            end

            if (lCommand == "C") then
                lCommandArgs = ExportScript.Tools.StrSplit(string.sub(lInput,2),",")
				lDeviceID = tonumber(lCommandArgs[1])
				if lDeviceID < 1000 then
					-- DCS Modules
					lDevice = GetDevice(lCommandArgs[1])
					if ExportScript.FoundDCSModule and type(lDevice) == "table" then
						lDevice:performClickableAction(lCommandArgs[2],lCommandArgs[3])
						if ExportScript.Config.Debug then
							ExportScript.Tools.WriteToLog("performClickableAction for Device: "..lCommandArgs[1]..", ButtonID: "..lCommandArgs[2]..", Value: "..lCommandArgs[3])
						end
					end
				elseif lDeviceID == 1000 then
					-- ExportScript.genericRadio(key, value)
					if ExportScript.FoundDCSModule then
						ExportScript.genericRadio(lCommandArgs[2],lCommandArgs[3])
						if ExportScript.Config.Debug then
							ExportScript.Tools.WriteToLog("genericRadio, ButtonID: "..lCommandArgs[2]..", Value: "..lCommandArgs[3])
						end
					end
				elseif lDeviceID == 2000 then
					-- Flaming Cliffs Module (Buttons)
					if ExportScript.FoundFCModule then
						-- ComamndID > 3000, because DAC or Ikarus add 300 to CommandID
						local lComandID = (tonumber(lCommandArgs[2]) - 3000)
						if tonumber(lCommandArgs[3]) == 1.0 then
						LoSetCommand(lComandID)
						if ExportScript.Config.Debug then
							ExportScript.Tools.WriteToLog("LoSetCommand, CommandID: "..lComandID)
						end
						end
					end
				elseif lDeviceID == 2001 then
					-- Flaming Cliffs Module (analog axies)
					if ExportScript.FoundFCModule then
						-- ComamndID > 3000, because DAC or Ikarus add 3000 to CommandID
						local lComandID = (tonumber(lCommandArgs[2]) - 3000)
						LoSetCommand(lComandID, lCommandArgs[3])
						if ExportScript.Config.Debug then
							ExportScript.Tools.WriteToLog("LoSetCommand, CommandID: "..lComandID..", Value: "..lCommandArgs[3])
						end
					end
				end
			end
		end
	end
end

function ExportScript.Tools.ProcessOutput()
    local coStatus
    --local currentTime = LoGetModelTime()

    local lMyInfo = LoGetSelfData()
    if lMyInfo ~= nil then
        if ExportScript.ModuleName ~= lMyInfo.Name then
            ExportScript.NoLuaExportBeforeNextFrame = false
			ExportScript.Tools.SelectModule()  -- point globals to Module functions and data.
			return
        end
        lMyInfo = nil
    end

    local lDevice = GetDevice(0)
    if type(lDevice) == "table" and ExportScript.FoundDCSModule then

        lDevice:update_arguments()

        --if currentTime - ExportScript.lastExportTimeHI > ExportScript.Config.ExportInterval then
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
				ExportScript.Tools.WriteToLog("reset dcs ikarus")
                    ExportScript.Tools.ResetChangeValues()
                end
                ExportScript.FirstNewDataSend = false
            else
                ExportScript.FirstNewDataSendCount = ExportScript.FirstNewDataSendCount - 1
            end
            
            --ExportScript.lastExportTimeHI = currentTime
			ExportScript.lastExportTimeHI = ExportScript.lastExportTimeHI + ExportScript.Config.ExportInterval
        --end

        --if currentTime - ExportScript.lastExportTimeLI > ExportScript.Config.ExportLowTickInterval then
		if ExportScript.lastExportTimeHI > ExportScript.Config.ExportLowTickInterval then
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
            end

            --ExportScript.lastExportTimeLI = currentTime
			ExportScript.lastExportTimeHI = 0
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

        --if currentTime - ExportScript.lastExportTimeHI > ExportScript.Config.ExportInterval then

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
				ExportScript.Tools.WriteToLog("reset fc ikarus")
                    ExportScript.Tools.ResetChangeValues()
                end
                ExportScript.FirstNewDataSend = false
            else
                ExportScript.FirstNewDataSendCount = ExportScript.FirstNewDataSendCount - 1
            end

            --ExportScript.lastExportTimeHI = currentTime
			ExportScript.lastExportTimeHI = ExportScript.lastExportTimeHI + ExportScript.Config.ExportInterval
        --end

        --if currentTime - ExportScript.lastExportTimeLI > ExportScript.Config.ExportLowTickInterval then
		if ExportScript.lastExportTimeHI > ExportScript.Config.ExportLowTickInterval then
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
            end

            --ExportScript.lastExportTimeLI = currentTime
			ExportScript.lastExportTimeHI = 0
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
end

function ExportScript.Tools.StrSplit(str, delim, maxNb)
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
	-- for part, pos in string.gmatch(str, lPat) do -- Lua Version > 5.1
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

-- remove trailing and leading whitespace from string.
function ExportScript.Tools.trim(s)
    return (s:gsub("^%s*(.-)%s*$", "%1"))
end

-- remove leading whitespace from string.
function ExportScript.Tools.ltrim(s)
    return (s:gsub("^%s*", ""))
end

-- remove trailing whitespace from string.
function ExportScript.Tools.rtrim(s)
    local n = #s
    while n > 0 and s:find("^%s", n) do n = n - 1 end
    return s:sub(1, n)
end
-- The following more obvious implementation is generally not
-- as efficient, particularly for long strings since Lua pattern matching
-- starts at the left (though in special cases it is more efficient).
-- Related discussion on p.197 of book "Beginning Lua Programming".
--[[
function ExportScript.Tools.rtrim(s) 
    return (s:gsub("%s*$", "")) 
end
]]

-- substitute variables into string.
-- Example: subst("a=$(a),b=$(b)", {a=1, b=2}) --> "a=1,b=2".
function ExportScript.Tools.subst(s, t)
  -- note: handle {a=false} substitution
    s = s:gsub("%$%(([%w_]+)%)", function(name)
        local val = t[name]
        return val ~= nil and tostring(val)
    end)
    return s
end

--[[
function ExportScript.Tools.round(num, idp)
  local lMult = 10^(idp or 0)
  return math.floor(num * lMult + 0.5) / lMult
end
]]

-- this function negate the numeric input values
function ExportScript.Tools.negate(Input)
    if type(Input) == "number" then
        return (Input > 0.0 and (0 - Input) or (Input - Input - Input))
    else
        return Input
    end
end

-- Status Gathering Functions
function ExportScript.Tools.ProcessArguments(device, arguments)
    local lArgument , lFormat , lArgumentValue
    local lCounter = 0

    if ExportScript.Config.Debug then
        ExportScript.Tools.WriteToLog("======Begin========")
    end

    for lArgument, lFormat in pairs(arguments) do
        lArgumentValue = string.format(lFormat,device:get_argument_value(lArgument))
        if ExportScript.Config.Debug then
            lCounter = lCounter + 1
            ExportScript.Tools.WriteToLog(lCounter..". ID: "..lArgument..", Fromat: "..lFormat..", Value: "..lArgumentValue)
        end
        if ExportScript.Config.IkarusExport then
            ExportScript.Tools.SendData(lArgument, lArgumentValue)
        end
        if ExportScript.Config.DACExport then
            ExportScript.Tools.SendDataDAC(lArgument, lArgumentValue)
        end
    end

    if ExportScript.Config.Debug then
        ExportScript.Tools.WriteToLog("======End========")
    end
end

-- Network Functions for GlassCockpit
function ExportScript.Tools.SendData(id, value)
    if id == nil then
        ExportScript.Tools.WriteToLog("Export id is nil")
        return
    end
    if value == nil then
        ExportScript.Tools.WriteToLog("Value for id "..id.." is nil")
        return
    end

    if string.len(value) > 3 and value == string.sub("-0.00000000",1, string.len(value)) then
        value = value:sub(2)
    end

    if ExportScript.LastData[id] == nil or ExportScript.LastData[id] ~= value then
        local ldata    =  id .. "=" .. value
        local ldataLen = string.len(ldata)

        if ldataLen + ExportScript.PacketSize > 576 then
            ExportScript.Tools.FlushData()
        end

        table.insert(ExportScript.SendStrings, ldata)
        ExportScript.LastData[id] = value
        ExportScript.PacketSize   = ExportScript.PacketSize + ldataLen + 1
    end
end

-- Network Functions for DAC
function ExportScript.Tools.SendDataDAC(id, value)
    for hardware=1, #ExportScript.Config.DAC, 1 do
        if id == nil then
            ExportScript.Tools.WriteToLog("Export id is nil")
            return
        end
        if value == nil then
            ExportScript.Tools.WriteToLog("Value for id "..id.." is nil")
            return
        end        
        if ExportScript.Config.DAC[hardware] == nil then
            ExportScript.Tools.WriteToLog("unknown hardware ID '"..hardware.."' for value: '"..id.."="..value.."'")
            return
        end

        if string.len(value) > 3 and value == string.sub("-0.00000000",1, string.len(value)) then
            value = value:sub(2)
        end

        if ExportScript.LastDataDAC[hardware][id] == nil or ExportScript.LastDataDAC[hardware][id] ~= value then
            local ldata    =  id .. "=" .. value
            local ldataLen = string.len(ldata)

            if ldataLen + ExportScript.PacketSizeDAC[hardware] > 576 then
                ExportScript.Tools.FlushDataDAC(hardware)
            end

            table.insert(ExportScript.SendStringsDAC[hardware], ldata)
            ExportScript.LastDataDAC[hardware][id] = value
            ExportScript.PacketSizeDAC[hardware]   = ExportScript.PacketSizeDAC[hardware] + ldataLen + 1
            --ExportScript.Tools.WriteToLog("id=ldata: "..ldata)
            --ExportScript.Tools.WriteToLog("ExportScript.LastDataDAC["..hardware.."]: "..ExportScript.Tools.dump(ExportScript.LastDataDAC[hardware]))
        end
    end
end

--[[
function ExportScript.Tools.FlushData()
    if #ExportScript.SendStrings > 0 then
        local lES_SimID = ""

        lES_SimID = ExportScript.SimID

        local lPacket = lES_SimID .. table.concat(ExportScript.SendStrings, ExportScript.Config.IkarusSeparator) .. "\n"
        ExportScript.socket.try(ExportScript.UDPsender:sendto(lPacket, ExportScript.Config.IkarusHost, ExportScript.Config.IkarusPort))

		if ExportScript.Config.SocketDebug then
			ExportScript.Tools.WriteToLog("FlushData: send the following data to host: "..ExportScript.Config.IkarusHost..", Port: "..ExportScript.Config.IkarusPort..", Data: "..lPacket)
		end

        ExportScript.SendStrings = {}
        ExportScript.PacketSize  = 0
    else
		if ExportScript.Config.SocketDebug then
			ExportScript.Tools.WriteToLog("FlushData: nothing sent")
		end
	end
end
]]

function ExportScript.Tools.FlushData()
	local lFlushData = ExportScript.socket.protect(function()
		if #ExportScript.SendStrings > 0 then
			local lES_SimID = ""

			lES_SimID = ExportScript.SimID

			local lPacket = lES_SimID .. table.concat(ExportScript.SendStrings, ExportScript.Config.IkarusSeparator) .. "\n"
			--ExportScript.socket.try(ExportScript.UDPsender:sendto(lPacket, ExportScript.Config.IkarusHost, ExportScript.Config.IkarusPort))
			local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() ExportScript.Tools.ResetChangeValues() end)
			try(ExportScript.UDPsender:sendto(lPacket, ExportScript.Config.IkarusHost, ExportScript.Config.IkarusPort))

			if ExportScript.Config.SocketDebug then
				ExportScript.Tools.WriteToLog("FlushData: send to host: "..ExportScript.Config.IkarusHost..", Port: "..ExportScript.Config.IkarusPort..", Data: "..lPacket)
			end

			ExportScript.SendStrings = {}
			ExportScript.PacketSize  = 0
		else
			if ExportScript.Config.SocketDebug then
				ExportScript.Tools.WriteToLog("FlushData: nothing sent")
			end
		end
	end)

	local ln, lerror = lFlushData()
	if lerror ~= nil then
		ExportScript.Tools.WriteToLog("FlushData protect: "..ExportScript.Tools.dump(ln)..", "..ExportScript.Tools.dump(lerror))
	end
end


function ExportScript.Tools.FlushDataDAC(hardware)
    hardware = hardware or 1

    if ExportScript.Config.DAC[hardware] == nil then
        ExportScript.Tools.WriteToLog("FlushDataDAC: unknown hardware ID '"..hardware.."'")
        return
    end

	local lFlushDataDAC = ExportScript.socket.protect(function()
		if #ExportScript.SendStringsDAC[hardware] > 0 then
			local lPacket = ExportScript.SimID .. table.concat(ExportScript.SendStringsDAC[hardware], ExportScript.Config.DAC[hardware].Separator) .. "\n"
			--ExportScript.socket.try(ExportScript.UDPsender:sendto(lPacket, ExportScript.Config.DAC[hardware].Host, ExportScript.Config.DAC[hardware].SendPort))
			local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() ExportScript.Tools.ResetChangeValuesDAC() end)
			try(ExportScript.UDPsender:sendto(lPacket, ExportScript.Config.DAC[hardware].Host, ExportScript.Config.DAC[hardware].SendPort))
			
			if ExportScript.Config.SocketDebug then
				ExportScript.Tools.WriteToLog("FlushDataDAC["..hardware.."]: send to host: "..ExportScript.Config.DAC[hardware].Host..", Port: "..ExportScript.Config.DAC[hardware].SendPort..", Data: "..lPacket)
			end
			
			ExportScript.SendStringsDAC[hardware] = {}
			ExportScript.PacketSizeDAC[hardware]  = 0
		else
			if ExportScript.Config.SocketDebug then
				ExportScript.Tools.WriteToLog("FlushDataDAC["..hardware.."]: nothing sent")
			end
		end
	end)

	local ln, lerror = lFlushDataDAC()
	if lerror ~= nil then
		ExportScript.Tools.WriteToLog("FlushDataDAC protect: "..ExportScript.Tools.dump(ln)..", "..ExportScript.Tools.dump(lerror))
	end
end

function ExportScript.Tools.ResetChangeValues()
    ExportScript.LastData   = {}
end

function ExportScript.Tools.ResetChangeValuesDAC()
    for i = 1, #ExportScript.Config.DAC, 1 do
        ExportScript.LastDataDAC[i] = {}
    end
end

function ExportScript.Tools.SelectModule()
   -- Select Module...
    ExportScript.FoundDCSModule = false
    ExportScript.FoundFCModule  = false
    ExportScript.FoundNoModul   = true

    local lMyInfo      = LoGetSelfData()
    if lMyInfo == nil then  -- End SelectModule, if don't selected a aircraft
        return
    end

    if ExportScript.Config.Debug then
        ExportScript.Tools.WriteToLog("MyInfo: "..ExportScript.Tools.dump(lMyInfo))
    end

    ExportScript.ModuleName   = lMyInfo.Name
    local lModuleName         = ExportScript.ModuleName..".lua"
    local lModuleFile         = ""

    ExportScript.FoundNoModul = false

    for file in lfs.dir(ExportScript.Config.ExportModulePath) do
        if lfs.attributes(ExportScript.Config.ExportModulePath..file,"mode") == "file" then
            if file == lModuleName then
                lModuleFile = ExportScript.Config.ExportModulePath..file
            end
        end
    end

    ExportScript.Tools.WriteToLog("File Path: "..lModuleFile)

    if string.len(lModuleFile) > 1 then
        ExportScript.Tools.ResetChangeValuesDAC()

        -- load Aircraft File
        dofile(lModuleFile)
        if ExportScript.Config.DACExport then
            ExportScript.Tools.SendDataDAC("File", lMyInfo.Name)
            for i=1, #ExportScript.Config.DAC, 1 do
                ExportScript.Tools.FlushDataDAC(i)
            end
        end

        if ExportScript.Config.IkarusExport then
            ExportScript.Tools.SendData("File", lMyInfo.Name)
        end

        ExportScript.Tools.WriteToLog("File '"..lModuleFile.."' loaded")
		
		ExportScript.Tools.WriteToLog("Version:")
		for k,v in pairs(ExportScript.Version) do
			ExportScript.Tools.WriteToLog(k..": "..v)
		end

        ExportScript.FirstNewDataSend      = ExportScript.Config.FirstNewDataSend 
        ExportScript.FirstNewDataSendCount = ExportScript.Config.FirstNewDataSendCount

        if ExportScript.FoundDCSModule then
            local lCounter = 0
            for k, v in pairs(ExportScript.ConfigEveryFrameArguments) do
                lCounter = lCounter + 1
            end
            if ExportScript.Config.Debug then
                ExportScript.Tools.WriteToLog("ExportScript.ConfigEveryFrameArguments Count: "..lCounter)
            end
            if lCounter > 0 then
                ExportScript.EveryFrameArguments = ExportScript.ConfigEveryFrameArguments
            else
                -- no Arguments
                ExportScript.EveryFrameArguments = {}
            end
            lCounter = 0
            for k, v in pairs(ExportScript.ConfigArguments) do
                lCounter = lCounter + 1
            end
            if ExportScript.Config.Debug then
                ExportScript.Tools.WriteToLog("ExportScript.ConfigArguments Count: "..lCounter)
            end
            if lCounter > 0 then
                ExportScript.Arguments = ExportScript.ConfigArguments
            else
                -- no Arguments
                ExportScript.Arguments = {}
            end

            ExportScript.ProcessIkarusDCSHighImportance = ExportScript.ProcessIkarusDCSConfigHighImportance
            ExportScript.ProcessIkarusDCSLowImportance  = ExportScript.ProcessIkarusDCSConfigLowImportance
            ExportScript.ProcessDACHighImportance       = ExportScript.ProcessDACConfigHighImportance
            ExportScript.ProcessDACLowImportance        = ExportScript.ProcessDACConfigLowImportance

        elseif ExportScript.FoundFCModule then
            ExportScript.ProcessIkarusFCHighImportance  = ExportScript.ProcessIkarusFCHighImportanceConfig
            ExportScript.ProcessIkarusFCLowImportance   = ExportScript.ProcessIkarusFCLowImportanceConfig
            ExportScript.ProcessDACHighImportance       = ExportScript.ProcessDACConfigHighImportance
            ExportScript.ProcessDACLowImportance        = ExportScript.ProcessDACConfigLowImportance
        else
            ExportScript.Tools.WriteToLog("Unknown Module Type: "..lMyInfo.Name)
        end

        if ExportScript.Config.IkarusExport then
            for Map, LatLong in pairs(ExportScript.Maps) do
                if lMyInfo.LatLongAlt.Lat > LatLong.Lat2 and lMyInfo.LatLongAlt.Lat < LatLong.Lat1 then
                    if lMyInfo.LatLongAlt.Long > LatLong.Long1 and lMyInfo.LatLongAlt.Long < LatLong.Long2 then
                        ExportScript.Tools.WriteToLog("Detected Map: "..Map)
                        ExportScript.Tools.SendData("Map", Map)
                        break
                    end
                end
            end

            ExportScript.Tools.FlushData()
        end

    else -- Unknown Module
        ExportScript.ProcessIkarusDCSHighImportance = ExportScript.ProcessIkarusDCSHighImportanceNoConfig
        ExportScript.ProcessIkarusDCSLowImportance  = ExportScript.ProcessIkarusDCSLowImportanceNoConfig
        ExportScript.ProcessIkarusFCHighImportance  = ExportScript.ProcessIkarusFCHighImportanceNoConfig
        ExportScript.ProcessIkarusFCLowImportance   = ExportScript.ProcessIkarusFCLowImportanceNoConfig
        ExportScript.ProcessDACHighImportance       = ExportScript.ProcessDACHighImportanceNoConfig
        ExportScript.ProcessDACLowImportance        = ExportScript.ProcessDACLowImportanceNoConfig
        ExportScript.EveryFrameArguments            = {}
        ExportScript.Arguments                      = {}
		
		ExportScript.Tools.WriteToLog("Version:")
		for k,v in pairs(ExportScript.Version) do
			ExportScript.Tools.WriteToLog(k..": "..v)
		end
        ExportScript.Tools.WriteToLog("Unknown Module Name: "..lMyInfo.Name)
    end
end

-- The ExportScript.Tools.dump function show the content of the specified variable.
-- ExportScript.Tools.dump is similar to PHP function dump and show variables from type
-- "nil, "number", "string", "boolean, "table", "function", "thread" and "userdata"
function ExportScript.Tools.dump(var, depth)
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
                        out = out .. (" "):rep(depth*4).. "["..k.."] = " .. ExportScript.Tools.dump(v, depth)
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
function ExportScript.Tools.round(number, decimals, method)
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
function ExportScript.Tools.split(stringvalue, delimiter)
    result = {};
    for match in (stringvalue..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

-- the function checks whether the cockpit light should be activated in ikarus on the basis of the parameters
-- functional parameters, a single ID, or a table with IDs
function ExportScript.Tools.IkarusCockpitLights(mainPanelDevice, ExportIDs)
    local TmpExportIDs = ExportIDs or 0
    local TmpLight     = false
    
    if type(mainPanelDevice) ~= "table" then
        return
    end 
    
    if type(TmpExportIDs) == "table" then
        for key,value in pairs(TmpExportIDs) do
            if type(value) == "number" then
                if mainPanelDevice:get_argument_value(value) > 0.4 then
                    TmpLight = true
                end
            end
        end
    elseif type(TmpExportIDs) == "number" then
        if mainPanelDevice:get_argument_value(TmpExportIDs) > 0.4 then
            TmpLight = true
        end
    end

    if TmpLight then
        ExportScript.Tools.SendData(2222, "1.0")    -- Ikarus Cockpit Light on
    else
        ExportScript.Tools.SendData(2222, "0.0")    -- Ikarus Cockpit Light off
    end
end

-- The function returns a correctly formatted string with the given radio frequency.
-- Frequency: MHz/KHz, format: e.g. "7.3" or "5.2", fill with leading zeros (default false), least value of frequency (default 0.025 (MHz))
function ExportScript.Tools.RoundFreqeuncy(Freqeuncy, Format, PrefixZeros, LeastValue)
	local freqeuncy   = Freqeuncy   or 0.0
	local format      = Format      or "7.3"
	local prefixzeros = PrefixZeros or false
	local leastvalue  = LeastValue or 0.025
	local tmpstring   = ""
	local tmp1, tmp2, tmp3, tmp4  = 0, 0, 0, 0

	local from ,to = string.find(format, "%.")
	tmp1 = string.sub(format, 0, to)
	tmp2 = string.sub(format, to)
	tmp1 = tonumber(string.sub(tmp1, string.find(tmp1, "%d+")))
	tmp2 = tonumber(string.sub(tmp2, string.find(tmp2, "%d+")))

	local tmp3, tmp4 = math.modf(freqeuncy)
	local bla3, bla4 =  math.modf(tmp4 / leastvalue)

	tmpstring = (tmp3 + (bla3 * leastvalue ))

	tmpstring = string.format("%."..tmp2.."f", tmpstring)
	
--	while string.len(tmpstring) < tmp1 do
--		tmpstring = " "..tmpstring
--	end
	
	tmpstring = string.rep(" ", tmp1 - string.len(tmpstring))..tmpstring

	if prefixzeros then
		tmpstring = string.gsub(tmpstring, " ", "0")
	end

	return tmpstring
end

-- The function return a table with values of given indicator
-- The value is retrievable via a named index. e.g. TmpReturn.txt_digits
function ExportScript.Tools.getListIndicatorValue(IndicatorID)
	local ListIindicator = list_indication(IndicatorID)
	local TmpReturn = {}

	if ExportScript.Config.Debug then
		ExportScript.Tools.WriteToLog('list_indication('..IndicatorID..'): '..ExportScript.Tools.dump(ListIindicator))
	end
	
	if ListIindicator == "" then
		return nil
	end

	local ListindicatorMatch = ListIindicator:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
		local Key, Value = ListindicatorMatch()
		if not Key then
			break
		end
		TmpReturn[Key] = Value
	end

	return TmpReturn
end

-- The function format a given string for a display
-- String: value for show in display, maxChars: Display size (default 5), LEFTorRIGHT: flush with left "l" or right "r" site (default "r")
function ExportScript.Tools.DisplayFormat(String, maxChars, LEFTorRight, DAC)
	local lString      = String      or ""
	local lmaxChars    = maxChars    or 5
	local lLEFTorRight = LEFTorRight or "r"
	local lDAC         = DAC         or false
	local lTmpLen      = 0
	local lRep         = " "
	
	if lDAC then
		lRep = "-"
	end
	
	lString = ExportScript.utf8.sub(lString, 0, lmaxChars)
	lTmpLen = ExportScript.utf8.len(lString)
	
	if lTmpLen < lmaxChars then
		if string.lower(lLEFTorRight) == "l" then
			lString = lString..string.rep(" ", lmaxChars - lTmpLen)
		else
			lString = string.rep(" ", lmaxChars - lTmpLen)..lString
		end
	end
	
	return lString
end

function ExportScript.Tools.KeyInTable(Table, Key)
	for key, value in pairs(Table) do
		if key == Key then
			return true
		end
	end
	return false
end

function ExportScript.Tools.ValueInTable(Table, Value)
	for key, value in pairs(Table) do
		if value == Value then
			return true
		end
	end
	return false
end

-- Pointed to by ExportScript.ProcessIkarusDCSHighImportance, if the player aircraft is something else
function ExportScript.ProcessIkarusDCSHighImportanceNoConfig(mainPanelDevice)
end
-- Pointed to by ExportScript.ProcessIkarusDCSLowImportance, if the player aircraft is something else
function ExportScript.ProcessIkarusDCSLowImportanceNoConfig(mainPanelDevice)
end

-- the player aircraft is a Flaming Cliffs or similar aircraft
function ExportScript.ProcessIkarusFCHighImportanceNoConfig()
end
function ExportScript.ProcessIkarusFCLowImportanceNoConfig()
end

-- Hardware exports
function ExportScript.ProcessDACHighImportanceNoConfig(mainPanelDevice)
end
function ExportScript.ProcessDACLowImportanceNoConfig(mainPanelDevice)
end
