-- Flaming Cliffs Auxiliary Functons

ExportScript.Version.FC_AuxiliaryFunctions = "1.2.1"

-- Workaround for engine start-up
ExportScript.AF.LeftEngineOn  = false
ExportScript.AF.RightEngineOn = false

-- Weapon Panel for Su-25A and Su-25T
function ExportScript.AF.FC_WeaponPanel_SU25(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"

	if ExportScript.AF.TmpWeaponPanelPresend == nil then
		ExportScript.AF.TmpWeaponPanelPresend = {[101] = 0, [102] = 0, [103] = 0, [104] = 0, [105] = 0, [106] = 0, [107] = 0, [108] = 0, [109] = 0, [110] = 0}
	end	

	if ExportScript.AF.TmpWeaponPanelActive == nil then
		ExportScript.AF.TmpWeaponPanelActive = {[201] = 0, [202] = 0, [203] = 0, [204] = 0, [205] = 0, [206] = 0, [207] = 0, [208] = 0, [209] = 0, [210] = 0}
	end

	if ExportScript.AF.TmpWeaponPanel == nil then
		ExportScript.AF.TmpWeaponPanel = {[231] = 0, [232] = 0, [233] = 0, [234] = 0, [235] = 0}
	end
	
	if ExportScript.AF.EventNumberFC_WeaponPanel == nil then
		ExportScript.AF.EventNumberFC_WeaponPanel = 0
	end 

	if(ExportScript.AF.EventNumberFC_WeaponPanel < ExportScript.AF.EventNumber) then
		ExportScript.AF.EventNumberFC_WeaponPanel = ExportScript.AF.EventNumber
		-- defination
		ExportScript.AF.PayloadInfo = LoGetPayloadInfo()
		if ExportScript.AF.PayloadInfo ~= nil then
			if ExportScript.AF.CurrentStationTmp == nil then
				ExportScript.AF.CurrentStationTmp = -1
			end
			if ExportScript.AF.CannonContainer == nil then	-- Find Cannon-Containers, aka SPPU_22
				ExportScript.AF.CannonContainer = {}
				ExportScript.AF.CannonContainer.counter = 0
				table.foreach(ExportScript.AF.PayloadInfo.Stations, ExportScript.AF.WeaponStatusPanel_FindCannonContainer)
			end

			if ExportScript.AF.PayloadInfo.CurrentStation  > 0 and
				ExportScript.AF.CurrentStationTmp ~= ExportScript.AF.PayloadInfo.CurrentStation then
				ExportScript.AF.CurrentStationTmp  = ExportScript.AF.PayloadInfo.CurrentStation

				ExportScript.AF.TmpStationToPanel = {}
				ExportScript.AF.TmpStationToPanel[1] =  {Panel =  1, StationID = 101, CurrentID = 201 }	-- left
				ExportScript.AF.TmpStationToPanel[2] =  {Panel = 10, StationID = 110, CurrentID = 210 }	-- right
				ExportScript.AF.TmpStationToPanel[3] =  {Panel =  2, StationID = 102, CurrentID = 202 }
				ExportScript.AF.TmpStationToPanel[4] =  {Panel =  9, StationID = 109, CurrentID = 209 }
				ExportScript.AF.TmpStationToPanel[5] =  {Panel =  3, StationID = 103, CurrentID = 203 }
				ExportScript.AF.TmpStationToPanel[6] =  {Panel =  8, StationID = 108, CurrentID = 208 }
				ExportScript.AF.TmpStationToPanel[7] =  {Panel =  4, StationID = 104, CurrentID = 204 }
				ExportScript.AF.TmpStationToPanel[8] =  {Panel =  7, StationID = 107, CurrentID = 207 }
				ExportScript.AF.TmpStationToPanel[9] =  {Panel =  5, StationID = 105, CurrentID = 205 }
				ExportScript.AF.TmpStationToPanel[10] = {Panel =  6, StationID = 106, CurrentID = 206 }

				-- ExportScript.AF.TmpWeaponPanelActive reset
				for i = 201, 210, 1 do
					ExportScript.AF.TmpWeaponPanelActive[i] = 0
				end

				if ExportScript.AF.TmpStationToPanel[ExportScript.AF.PayloadInfo.CurrentStation] ~= nil then
					ExportScript.AF.TmpWeaponPanelActive[ExportScript.AF.TmpStationToPanel[ExportScript.AF.PayloadInfo.CurrentStation].CurrentID] = 1        -- currrent value

					table.foreach(ExportScript.AF.PayloadInfo.Stations, ExportScript.AF.WeaponStatusPanel_selectCurrentPayloadStation)   -- corresponding station
				end

			end

			local lMainGun = 1.0	-- Full max 250 Rounds "F"
			local lReserve = 1.0
			if ExportScript.AF.PayloadInfo.Cannon.shells == 0 then
				lMainGun = 0.0	-- transversely striped
				lReserve = 0.0	-- transversely striped
			elseif ExportScript.AF.PayloadInfo.Cannon.shells < 65 then
				lMainGun = 0.1	-- "E"
			elseif ExportScript.AF.PayloadInfo.Cannon.shells < 125 then
				lMainGun = 0.3	-- "1/2" -- "3/4"
			elseif ExportScript.AF.PayloadInfo.Cannon.shells < 187 then
				lMainGun = 0.6	-- "1/4"
			end

			local lWeaponType = 0.0	-- transversely striped
			if ExportScript.AF.PayloadInfo.CurrentStation > 0 then
				if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].weapon.level1 == 4 then
					if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].weapon.level2 == 4 then -- Weapon type Missle
						lWeaponType = 0.1	-- MSL
					elseif ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].weapon.level2 == 7 then -- Weapon type NURS with Container
						if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].weapon.level3 == 33 then -- Weapon type Rocket
							lWeaponType = 0.2	-- RCT
						end
					elseif ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].weapon.level2 == 5 then -- Weapon type Bomb
						lWeaponType = 0.3	-- BB
					end
				end
			end

			local lOuterCannon = 0.0	-- transversely striped
			local lInnerCannon = 0.0	-- transversely striped
			if ExportScript.AF.CannonContainer.counter > 0 then
				for i = 7, 10, 1 do
					if ExportScript.AF.CannonContainer[i] == "{E92CBFE5-C153-11d8-9897-000476191836}" then	-- SPPU_22 with 260 rounds
						if i == 7 or i == 8 then
							lOuterCannon = 1.0						-- Full max 260 Rounds "F"
							if ExportScript.AF.PayloadInfo.Stations[i].count == 0 then
								lOuterCannon = 0.0					-- transversely striped
								ExportScript.AF.CannonContainer[i] = "empty"	-- do not check
							elseif ExportScript.AF.PayloadInfo.Stations[i].count < 65 then
								lOuterCannon = 0.1					-- "E"
							elseif ExportScript.AF.PayloadInfo.Stations[i].count < 130 then
								lOuterCannon = 0.3					-- "3/4"  -- "1/2"
							elseif ExportScript.AF.PayloadInfo.Stations[i].count < 195 then
								lOuterCannon = 0.6					-- "1/4"
							end
						else
							lInnerCannon = 1.0						-- Full max 260 Rounds "F"
							if ExportScript.AF.PayloadInfo.Stations[i].count == 0 then
								lInnerCannon = 0.0					-- transversely striped
								ExportScript.AF.CannonContainer[i] = "empty"	-- do not check
							elseif ExportScript.AF.PayloadInfo.Stations[i].count < 65 then
								lInnerCannon = 0.1					-- "E"
							elseif ExportScript.AF.PayloadInfo.Stations[i].count < 130 then
								lInnerCannon = 0.3					-- "3/4"  -- "1/2"
							elseif ExportScript.AF.PayloadInfo.Stations[i].count < 195 then
								lInnerCannon = 0.6					-- "1/4"
							end
						end
					end
				end
			end

			--[[
			Weapon Panel
									 |
			---------------------------------------------------
			|    |    |    |    |    |    |    |    |    |    |
			1    2    3    4    5    C    6    7    8    9    10   -- display
			1    3    5    7    9         10   8    6    4    2    -- Payload ID
			]]
			-- Payload Info
			-- weapon stations (panel) 1 (left) - 10 (right), no lamp for center station

			-- WeaponPresend1 {0, 1}
			-- WeaponPresend2 {0, 1}
			-- WeaponPresend3 {0, 1}
			-- WeaponPresend4 {0, 1}
			-- WeaponPresend5 {0, 1}
			-- WeaponPresend6 {0, 1}
			-- WeaponPresend7 {0, 1}
			-- WeaponPresend8 {0, 1}
			-- WeaponPresend9 {0, 1}
			-- WeaponPresend10 {0, 1}
			-- WeaponActive1 {0, 1}
			-- WeaponActive2 {0, 1}
			-- WeaponActive3 {0, 1}
			-- WeaponActive4 {0, 1}
			-- WeaponActive5 {0, 1}
			-- WeaponActive6 {0, 1}
			-- WeaponActive7 {0, 1}
			-- WeaponActive8 {0, 1}
			-- WeaponActive9 {0, 1}
			-- WeaponActive10 {0, 1}
			-- MainCannon {transversely striped = 0.0, 1/4 = 01, 1/2 = 03, 3/4 = 0.6, Full = 1.0}
			-- WeaponType {transversely striped = 0.0, Missle = 0.1, Rocket = 0.2, Bomb = 0.3}
			-- OuterCannon {transversely striped = 0.0, 1/4 = 01, 1/2 = 03, 3/4 = 0.6, Full = 1.0}
			-- InnerCannon {transversely striped = 0.0, 1/4 = 01, 1/2 = 03, 3/4 = 0.6, Full = 1.0}
			-- ReserveWeapon {transversely striped = 0.0, Gun = 1.0}

			ExportScript.AF.TmpWeaponPanel = {}
			ExportScript.AF.TmpWeaponPanel[231] = lMainGun		-- main cannon shells
			ExportScript.AF.TmpWeaponPanelPresend[101] = (ExportScript.AF.PayloadInfo.Stations[1].count  > 0 and 1 or 0)    -- weapon presend panel 1
			ExportScript.AF.TmpWeaponPanelPresend[102] = (ExportScript.AF.PayloadInfo.Stations[3].count  > 0 and 1 or 0)    -- weapon presend panel 2
			ExportScript.AF.TmpWeaponPanelPresend[103] = (ExportScript.AF.PayloadInfo.Stations[5].count  > 0 and 1 or 0)    -- weapon presend panel 3
			ExportScript.AF.TmpWeaponPanelPresend[104] = (ExportScript.AF.PayloadInfo.Stations[7].count  > 0 and 1 or 0)    -- weapon presend panel 4
			ExportScript.AF.TmpWeaponPanelPresend[105] = (ExportScript.AF.PayloadInfo.Stations[9].count  > 0 and 1 or 0)    -- weapon presend panel 5
			ExportScript.AF.TmpWeaponPanelPresend[106] = (ExportScript.AF.PayloadInfo.Stations[10].count > 0 and 1 or 0)    -- weapon presend panel 6
			ExportScript.AF.TmpWeaponPanelPresend[107] = (ExportScript.AF.PayloadInfo.Stations[8].count  > 0 and 1 or 0)    -- weapon presend panel 7
			ExportScript.AF.TmpWeaponPanelPresend[108] = (ExportScript.AF.PayloadInfo.Stations[6].count  > 0 and 1 or 0)    -- weapon presend panel 8
			ExportScript.AF.TmpWeaponPanelPresend[109] = (ExportScript.AF.PayloadInfo.Stations[4].count  > 0 and 1 or 0)    -- weapon presend panel 9
			ExportScript.AF.TmpWeaponPanelPresend[110] = (ExportScript.AF.PayloadInfo.Stations[2].count  > 0 and 1 or 0)    -- weapon presend panel 10
			--ExportScript.AF.TmpWeaponPanelActive[201]                          -- weapon active panel 1
			--ExportScript.AF.TmpWeaponPanelActive[202]                          -- weapon active panel 2
			--ExportScript.AF.TmpWeaponPanelActive[203]                          -- weapon active panel 3
			--ExportScript.AF.TmpWeaponPanelActive[204]                          -- weapon active panel 4
			--ExportScript.AF.TmpWeaponPanelActive[205]                          -- weapon active panel 5
			--ExportScript.AF.TmpWeaponPanelActive[206]                          -- weapon active panel 6
			--ExportScript.AF.TmpWeaponPanelActive[207]                          -- weapon active panel 7
			--ExportScript.AF.TmpWeaponPanelActive[208]                          -- weapon active panel 8
			--ExportScript.AF.TmpWeaponPanelActive[209]                          -- weapon active panel 9
			--ExportScript.AF.TmpWeaponPanelActive[210]                          -- weapon active panel 10
			ExportScript.AF.TmpWeaponPanel[232] = lWeaponType	-- current weapon type
			ExportScript.AF.TmpWeaponPanel[233] = lOuterCannon	-- outer cannon shells
			ExportScript.AF.TmpWeaponPanel[234] = lInnerCannon	-- inner cannon shells
			ExportScript.AF.TmpWeaponPanel[235] = lReserve		-- reserve weapon
		end
	end
	
	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		for key, value in pairs(ExportScript.AF.TmpWeaponPanelPresend) do
			ExportScript.Tools.SendData(key, value)
		end
		for key, value in pairs(ExportScript.AF.TmpWeaponPanelActive) do
			ExportScript.Tools.SendData(key, value)
		end
		for key, value in pairs(ExportScript.AF.TmpWeaponPanel) do
			ExportScript.Tools.SendData(key, value)
		end
	end
	
	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		for key, value in pairs(ExportScript.AF.TmpWeaponPanelPresend) do
			ExportScript.Tools.SendDataDAC(key, value)
		end
		for key, value in pairs(ExportScript.AF.TmpWeaponPanelActive) do
			ExportScript.Tools.SendDataDAC(key, value)
		end
	end
end

-- Weapon Panel for MiG-29A and MiG-29S
function ExportScript.AF.FC_WeaponPanel_MiG29(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"
-- The weapon status panel, quantity and readiness of the currently selected weapon and the remaining gun ammunition are indicated.
	if ExportScript.AF.TmpWeaponPanelPresend == nil then
		ExportScript.AF.TmpWeaponPanelPresend = {[100] = 0, [101] = 0, [102] = 0, [103] = 0, [104] = 0, [105] = 0, [106] = 0}
	end	

	if ExportScript.AF.TmpWeaponPanelActive == nil then
		ExportScript.AF.TmpWeaponPanelActive = {[201] = 0, [202] = 0, [203] = 0, [204] = 0, [205] = 0, [206] = 0}
	end

	if ExportScript.AF.EventNumberFC_WeaponPanel == nil then
		ExportScript.AF.EventNumberFC_WeaponPanel = 0
	end

	if(ExportScript.AF.EventNumberFC_WeaponPanel < ExportScript.AF.EventNumber) then
		ExportScript.AF.EventNumberFC_WeaponPanel = ExportScript.AF.EventNumber

		-- defination
		ExportScript.AF.PayloadInfo = LoGetPayloadInfo()
		if ExportScript.AF.PayloadInfo ~= nil then
			if ExportScript.AF.CurrentStationTmp == nil then
				ExportScript.AF.CurrentStationTmp = -1
			end

			if ExportScript.AF.PayloadInfo.CurrentStation  > 0 and
				ExportScript.AF.CurrentStationTmp ~= ExportScript.AF.PayloadInfo.CurrentStation then
				ExportScript.AF.CurrentStationTmp  = ExportScript.AF.PayloadInfo.CurrentStation

				ExportScript.AF.TmpStationToPanel = {}
				ExportScript.AF.TmpStationToPanel[1] = {Panel =  1, StationID = 101, CurrentID = 201 }	-- left
				ExportScript.AF.TmpStationToPanel[3] = {Panel =  2, StationID = 102, CurrentID = 202 }
				ExportScript.AF.TmpStationToPanel[5] = {Panel =  3, StationID = 103, CurrentID = 203 }
				ExportScript.AF.TmpStationToPanel[6] = {Panel =  4, StationID = 104, CurrentID = 204 }
				ExportScript.AF.TmpStationToPanel[4] = {Panel =  5, StationID = 105, CurrentID = 205 }
				ExportScript.AF.TmpStationToPanel[2] = {Panel =  6, StationID = 106, CurrentID = 206 } -- right

				-- ExportScript.AF.TmpWeaponPanelActive reset
				for i = 201, 206, 1 do
					ExportScript.AF.TmpWeaponPanelActive[i] = 0
				end

				if ExportScript.AF.TmpStationToPanel[ExportScript.AF.PayloadInfo.CurrentStation] ~= nil then
					ExportScript.AF.TmpWeaponPanelActive[ExportScript.AF.TmpStationToPanel[ExportScript.AF.PayloadInfo.CurrentStation].CurrentID] = 1        -- currrent value

					table.foreach(ExportScript.AF.PayloadInfo.Stations, ExportScript.AF.WeaponStatusPanel_selectCurrentPayloadStation)   -- corresponding station
				end
			end
			--[[
			Weapon Panel
						   |
			-------------------------------
			|    |    |    |    |    |    |
			1    2    3    C    4    5    6
			]]
			ExportScript.AF.TmpWeaponPanelPresend[100] =  ExportScript.AF.PayloadInfo.Cannon.shells
			ExportScript.AF.TmpWeaponPanelPresend[101] = (ExportScript.AF.PayloadInfo.Stations[1].count > 0 and 1 or 0)     -- weapon presend panel 1
			ExportScript.AF.TmpWeaponPanelPresend[102] = (ExportScript.AF.PayloadInfo.Stations[3].count > 0 and 1 or 0)     -- weapon presend panel 2
			ExportScript.AF.TmpWeaponPanelPresend[103] = (ExportScript.AF.PayloadInfo.Stations[5].count > 0 and 1 or 0)     -- weapon presend panel 3
			ExportScript.AF.TmpWeaponPanelPresend[104] = (ExportScript.AF.PayloadInfo.Stations[6].count > 0 and 1 or 0)     -- weapon presend panel 4
			ExportScript.AF.TmpWeaponPanelPresend[105] = (ExportScript.AF.PayloadInfo.Stations[4].count > 0 and 1 or 0)     -- weapon presend panel 5
			ExportScript.AF.TmpWeaponPanelPresend[106] = (ExportScript.AF.PayloadInfo.Stations[2].count > 0 and 1 or 0)     -- weapon presend panel 6
			--ExportScript.AF.TmpWeaponPanelActive[201]                           -- weapon active panel 1
			--ExportScript.AF.TmpWeaponPanelActive[202]                           -- weapon active panel 2
			--ExportScript.AF.TmpWeaponPanelActive[203]                           -- weapon active panel 3
			--ExportScript.AF.TmpWeaponPanelActive[204]                           -- weapon active panel 4
			--ExportScript.AF.TmpWeaponPanelActive[205]                           -- weapon active panel 5
			--ExportScript.AF.TmpWeaponPanelActive[206]                           -- weapon active panel 6
		end
	end

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		for key, value in pairs(ExportScript.AF.TmpWeaponPanelPresend) do
			ExportScript.Tools.SendData(key, value)
		end
		for key, value in pairs(ExportScript.AF.TmpWeaponPanelActive) do
			ExportScript.Tools.SendData(key, value)
		end
	end

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		for key, value in pairs(ExportScript.AF.TmpWeaponPanelPresend) do
			ExportScript.Tools.SendDataDAC(key, value)
		end
		for key, value in pairs(ExportScript.AF.TmpWeaponPanelActive) do
			ExportScript.Tools.SendDataDAC(key, value)
		end
	end
end

-- HSI for SU25T, SU-27, SU-33, MIG-29
function ExportScript.AF.FC_Russian_HSI(distancetoway)
	local lDistanceToWay	= distancetoway or 999

	local lDefaultOne		= 1.0
	local lDefaultNull		= 0.0
	local lRadToDCSunsignd	= math.pi * 2
	local lPitch,lBank,lYaw	= LoGetADIPitchBankYaw()			-- PITCH, BANK, YAW (Radian)
	local lHSI_RMI			= LoGetControlPanel_HSI().RMI_raw	-- VOR1 OBS (Radian)
	local lHSI_ADF			= LoGetControlPanel_HSI().ADF_raw	-- ADF OBS (Radian)
	local lHSI_Curse		= LoGetControlPanel_HSI().Course	-- HSI Course (Radian)
	local lGlide			= LoGetGlideDeviation()				-- VOR1 HORIZONTAL DEFLECTION (-1 +1)
	local lSide				= LoGetSideDeviation()				-- VOR1 VERTICAL DEFLECTION (-1 +1)
	local lHeading			= LoGetSelfData().Heading			-- HEADING (Radian)
	lPitch, lBank			= nil
--[[
    [Course] = number: "0.76548692098835"
    [CourseDeviation] = number: "0"
    [ADF_raw] = number: "5.5811524391174"
    [BearingPointer] = number: "0.80134677481978"
    [RMI_raw] = number: "5.4092655181885"
    [HeadingPointer] = number: "0.098191173578347"
    [Heading_raw] = number: "6.2831854820251"
		]]
	--[[
	Ka-50 HSI 
	[112] = "%.4f", 		-- HSI_heading {0.0, 1.0}
	[118] = "%.4f", 		-- HSI_commanded_course_needle {0.0, 1.0}
	[124] = "%.4f", 		-- HSI_commanded_heading_needle {0.0, 1.0}
	[115] = "%.4f", 		-- HSI_bearing_needle {0.0, 1.0}
	[119] = "%0.1f", 		-- HSI_heading_warning_flag{0.0,1.0}
	[114] = "%0.1f", 		-- HSI_course_warning_flag{0.0, 1.0}
	[125] = "%0.1f", 		-- HSI_glideslope_warning_flag{0.0, 1.0}
	[117] = "%0.4f", 		-- HSI_range_counter_100 {0.0,1.0}
	[527] = "%0.4f", 		-- HSI_range_counter_10 {0.0,1.0}
	[528] = "%0.4f", 		-- HSI_range_counter_1 {0.0,1.0}
	[127] = "%.4f", 		-- HSI_longitudinal_deviation{-1.0, 1.0}
	[128] = "%.4f", 		-- HSI_lateral_deviation{-1.0, 1.0}
	[116] = "%0.1f", 		-- HSI_range_unavailable_flag{0.0, 1.0}
	[121] = "%0.1f", 		-- HSI_course_unavailable_flag{0.0, 1.0}
	]]
	local lAltCounter = {[0] = 0.0, [1] = 0.11, [2] = 0.22, [3] = 0.33, [4] = 0.44, [5] = 0.55, [6] = 0.66, [7] = 0.77, [8] = 0.88, [9] = 0.99}
	lDistanceToWay = ExportScript.Tools.round(lDistanceToWay / 1000, 1)
	local lDistanceToWayTmp = string.format("%03d", lDistanceToWay)
	local lRangeCounter1 = 0
	local lRangeCounter2 = 0
	local lRangeCounter3 = 0
	if lDistanceToWay > 100 then
		lRangeCounter1 = ExportScript.Tools.round((lDistanceToWay / 100), 0, "floor") * 0.11
		lRangeCounter1 = lRangeCounter1 - ExportScript.Tools.round(lRangeCounter1, 0, "floor")
	end
	if lDistanceToWay > 10 then
		if lDistanceToWay > 100 then
			lRangeCounter2 = (ExportScript.Tools.round((lDistanceToWay - (ExportScript.Tools.round(lDistanceToWay / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.11
		else
			lRangeCounter2 = (lDistanceToWay / 10) * 0.11
			lRangeCounter2 = lRangeCounter2 - ExportScript.Tools.round(lRangeCounter2, 0, "floor")
		end
	end
	if lDistanceToWay > 10 then
		lRangeCounter3 = (lDistanceToWay - (ExportScript.Tools.round(lDistanceToWay / 10, 0, "floor") * 10)) * 0.11
	else
		lRangeCounter3 = lDistanceToWay * 0.11
	end

	lHeading = (lHeading / lRadToDCSunsignd)
	-- HSI_heading {0.0, 1.0}
	-- HSI_commanded_course_needle {0.0, 1.0}
	-- HSI_commanded_heading_needle {0.0, 1.0}
	-- HSI_bearing_needle {0.0, 1.0}
	-- HSI_heading_warning_flag{0.0,1.0}
	-- HSI_course_warning_flag{0.0, 1.0}
	-- HSI_glideslope_warning_flag{0.0, 1.0}
	-- HSI_range_counter_100 {0.0,1.0}
	-- HSI_range_counter_10 {0.0,1.0}
	-- HSI_range_counter_1 {0.0,1.0}
	-- HSI_longitudinal_deviation{-1.0, 1.0}
	-- HSI_lateral_deviation{-1.0, 1.0}
	-- HSI_range_unavailable_flag{0.0, 1.0}
	-- HSI_course_unavailable_flag{0.0, 1.0}

    ExportScript.Tools.SendData(11, string.format("%.4f", lHeading))                                                    -- compass card
    ExportScript.Tools.SendData(12, string.format("%.4f", ((lHeading + (lHSI_Curse / lRadToDCSunsignd)) - 1)))          -- double arrow
    ExportScript.Tools.SendData(13, string.format("%.4f", lHeading))                                                    -- yellow triangle
    ExportScript.Tools.SendData(14, string.format("%.4f", (0 - (lHeading + (lHSI_ADF / lRadToDCSunsignd)))))            -- yellow arrow
    ExportScript.Tools.SendData(15, lDefaultNull)                                                                       -- KC Flag
    ExportScript.Tools.SendData(16, lDefaultOne)                                                                        -- K Flag
    ExportScript.Tools.SendData(17, lDefaultOne)                                                                        -- L Flag
    ExportScript.Tools.SendData(18, string.format("%.4f", lAltCounter[tonumber(string.sub(lDistanceToWayTmp, 1, 1))]))
    ExportScript.Tools.SendData(19, string.format("%.4f", lAltCounter[tonumber(string.sub(lDistanceToWayTmp, 2, 2))]))
    ExportScript.Tools.SendData(20, string.format("%.4f", lRangeCounter3))
    ExportScript.Tools.SendData(21, string.format("%.4f", lGlide))
    ExportScript.Tools.SendData(22, string.format("%.4f", lSide))
    ExportScript.Tools.SendData(23, lDefaultNull)
    ExportScript.Tools.SendData(24, lDefaultNull)
end

-- HSI for SU25A
function ExportScript.AF.FC_Russian_HSI_old()

	local lDefaultOne		= 1.0
	local lDefaultNull		= 0.0
	local lRadToDCSsignd	= math.pi
	local lRadToDCSunsignd	= math.pi * 2
	local lHSI_ADF			= LoGetControlPanel_HSI().ADF_raw	-- ADF OBS (Radian)
	local lHSI_Curse		= LoGetControlPanel_HSI().Course	-- HSI Course (Radian)
	local lGlide			= LoGetGlideDeviation()				-- VOR1 HORIZONTAL DEFLECTION (-1 +1)
	local lSide				= LoGetSideDeviation()				-- VOR1 VERTICAL DEFLECTION (-1 +1)
	local lHeading			= LoGetSelfData().Heading			-- HEADING (Radian)
	--ExportScript.Tools.WriteToLog('LoGetControlPanel_HSI: '..ExportScript.Tools.dump(LoGetControlPanel_HSI()))
--[[
    [Course] = number: "0.76548692098835"
    [CourseDeviation] = number: "0"
    [ADF_raw] = number: "5.5811524391174"
    [BearingPointer] = number: "0.80134677481978"
    [RMI_raw] = number: "5.4092655181885"
    [HeadingPointer] = number: "0.098191173578347"
    [Heading_raw] = number: "6.2831854820251"
		]]

	lHeading = (lHeading / lRadToDCSunsignd)
	-- HSI_heading {0.0, 1.0} compass card
	-- HSI_commanded_course_needle {0.0, 1.0} (Required heading) white needle
	-- HSI_bearing_needle {0.0, 1.0} (RMI bearing) yellow needle
	-- Flag Г (T){0.0,1.0}
	-- Flag К (K){0.0,1.0}
	-- ILS needle horizontal{-1.0, 1.0}
	-- ILS needle vertical{-1.0, 1.0}

    ExportScript.Tools.SendData(11, string.format("%.4f", lHeading))                                          -- compass card
    ExportScript.Tools.SendData(12, string.format("%.4f", ((lHeading + (lHSI_Curse / lRadToDCSunsignd)) - 0.5)))      -- white needle
	--ExportScript.Tools.SendData(12, string.format("%.4f", ((lHeading + (lHSI_Curse / lRadToDCSunsignd)) - 1)))      -- white needle
	--ExportScript.Tools.SendData(12, string.format("%.4f", (lHeading + (lHSI_Curse / lRadToDCSsignd))))      -- white needle
    --ExportScript.Tools.SendData(13, string.format("%.4f", (0 - (lHeading + (lHSI_ADF / lRadToDCSunsignd)))))  -- yellow needle
	--ExportScript.Tools.SendData(13, string.format("%.4f", (0 - (lHeading + (lHSI_ADF / lRadToDCSsignd)))))  -- yellow needle
	ExportScript.Tools.SendData(13, string.format("%.4f", (0 - (lHSI_ADF / lRadToDCSunsignd))))  -- yellow needle
    ExportScript.Tools.SendData(16, lDefaultOne)                                                              -- T Flag
    ExportScript.Tools.SendData(17, lDefaultOne)                                                              -- K Flag
    ExportScript.Tools.SendData(21, string.format("%.4f", lGlide))
    ExportScript.Tools.SendData(22, string.format("%.4f", lSide))
end

-- HSI-Distance for SU25A
function ExportScript.AF.FC_Russian_HSI_Distance_old(distancetoway)
	local lDistanceToWay	= distancetoway or 999
	
	local lAltCounter = {[0] = 0.0, [1] = 0.11, [2] = 0.22, [3] = 0.33, [4] = 0.44, [5] = 0.55, [6] = 0.66, [7] = 0.77, [8] = 0.88, [9] = 0.99}
	lDistanceToWay = ExportScript.Tools.round(lDistanceToWay / 1000, 1)
	local lDistanceToWayTmp = string.format("%03d", lDistanceToWay)
	local lRangeCounter1 = 0
	local lRangeCounter2 = 0
	local lRangeCounter3 = 0
	if lDistanceToWay > 100 then
		lRangeCounter1 = ExportScript.Tools.round((lDistanceToWay / 100), 0, "floor") * 0.11
		lRangeCounter1 = lRangeCounter1 - ExportScript.Tools.round(lRangeCounter1, 0, "floor")
	end
	if lDistanceToWay > 10 then
		if lDistanceToWay > 100 then
			lRangeCounter2 = (ExportScript.Tools.round((lDistanceToWay - (ExportScript.Tools.round(lDistanceToWay / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.11
		else
			lRangeCounter2 = (lDistanceToWay / 10) * 0.11
			lRangeCounter2 = lRangeCounter2 - ExportScript.Tools.round(lRangeCounter2, 0, "floor")
		end
	end
	if lDistanceToWay > 10 then
		lRangeCounter3 = (lDistanceToWay - (ExportScript.Tools.round(lDistanceToWay / 10, 0, "floor") * 10)) * 0.11
	else
		lRangeCounter3 = lDistanceToWay * 0.11
	end

    ExportScript.Tools.SendData(18, string.format("%.4f", lAltCounter[tonumber(string.sub(lDistanceToWayTmp, 1, 1))]))
    ExportScript.Tools.SendData(19, string.format("%.4f", lAltCounter[tonumber(string.sub(lDistanceToWayTmp, 2, 2))]))
    ExportScript.Tools.SendData(20, string.format("%.4f", lRangeCounter3))
end

-- ADI for SU-25, SU-25T, SU-27, MIG-29A and MIG-29S
function ExportScript.AF.FC_Russian_ADI_Old()
	
	local lDefaultNull				= 0.0
	local lRadToDCSsignd			= math.pi
	local lNavInfo					= LoGetNavigationInfo()
	local lNavInfoPitch				= lNavInfo.Requirements.pitch		-- AP REQUIRED PITCH (Radian)
	local lNavInfoRoll				= lNavInfo.Requirements.roll		-- AP REQUIRED BANK (Radian)
	local lPitch, lBank, lYaw		= LoGetADIPitchBankYaw()			-- PITCH, BANK, YAW (Radian)
	local lSlipBallPosition			= LoGetSlipBallPosition()			-- SLIP BALL (-1 +1)
	local lSteeringWarningFlag		= 0
	local lAttitudeWarningFlag		= 0
-- ADI (IKP-81)
	---------------------------------------------------
	--[[
	Bank
	Pitch
	Slip indicator
	steering warning flag
	attitude warnng flag
	Required bank
	Required pitch
	Required heading
	Required altitude
	]]
	lNavInfoRoll      = (lNavInfoRoll > 0.5625 and 0.5625 or lNavInfoRoll)
	lNavInfoRoll      = (lNavInfoRoll < -0.5625 and -0.5625 or lNavInfoRoll)
	lPitch            = lPitch / (lRadToDCSsignd / 2)
	lBank             = lBank / lRadToDCSsignd

	if lNavInfo.SystemMode.submode == "ROUTE" then
		lNavInfoPitch     = lNavInfoPitch * lRadToDCSsignd
	elseif lNavInfo.SystemMode.submode == "ARRIVAL" then
		lNavInfoPitch     = lNavInfoPitch * 2
	elseif lNavInfo.SystemMode.submode == "LANDING" then
		lNavInfoPitch     = lNavInfoPitch * (lRadToDCSsignd * 0.75)
	elseif lNavInfo.SystemMode.submode == "OFF" then
		lSteeringWarningFlag = 1
		lAttitudeWarningFlag = 1
	end

	lNavInfoPitch     = (lNavInfoPitch > 1.0 and 1 or lNavInfoPitch)
	lNavInfoPitch     = (lNavInfoPitch < -1.0 and -1 or lNavInfoPitch)

    ExportScript.Tools.SendData(1, string.format("%.4f", lBank))
    ExportScript.Tools.SendData(2, string.format("%.4f", lPitch))
    ExportScript.Tools.SendData(3, string.format("%.4f", ExportScript.Tools.negate(lSlipBallPosition))) -- negate
    ExportScript.Tools.SendData(4, lSteeringWarningFlag)
	ExportScript.Tools.SendData(5, lAttitudeWarningFlag)
    ExportScript.Tools.SendData(6, string.format("%.4f", lNavInfoRoll))
    ExportScript.Tools.SendData(7, string.format("%.4f", lNavInfoPitch))
    ExportScript.Tools.SendData(8, lDefaultNull)
    ExportScript.Tools.SendData(9, lDefaultNull)
end

-- ADI for SU-33
function ExportScript.AF.FC_Russian_ADI_New()
	
	local lDefaultNull				= 0.0
	local lRadToDCSsignd			= math.pi
	local lNavInfoPitch				= LoGetNavigationInfo().Requirements.pitch		-- AP REQUIRED PITCH (Radian)
	local lNavInfoRoll				= LoGetNavigationInfo().Requirements.roll		-- AP REQUIRED BANK (Radian)
	local lPitch, lBank, lYaw		= LoGetADIPitchBankYaw()						-- PITCH, BANK, YAW (Radian)
	local lSlipBallPosition			= LoGetSlipBallPosition()						-- SLIP BALL (-1 +1)
-- ADI 
	---------------------------------------------------
	--[[
	[100] = "%.4f", 		-- ADI_Roll {-1.0,1.0}
	[101] = "%.4f", 		-- ADI_Pitch {-math.pi/2.0,math.pi/2.0}{1.0,-1.0}
	[102] = "%0.1f", 		-- ADI_steering_warning_flag {0.0,1.0}
	[109] = "%0.1f", 		-- ADI_attitude_warning_flag {0.0,1.0}
	[107] = "%.4f", 		-- ADI_bank_steering {-1.0,1.0}
	[106] = "%.4f", 		-- ADI_pitch_steering {-1.0,1.0}
	[111] = "%.4f", 		-- ADI_airspeed_deviation {-1.0,1.0}
	[103] = "%.4f", 		-- ADI_track_deviation {-1.0,1.0}
	[526] = "%.4f", 		-- ADI_height_deviation {-1.0,1.0}
	[108] = "%.4f", 		-- ADI_sideslip {-1.0,1.0}
	]]
	lNavInfoPitch = lNavInfoPitch / lRadToDCSsignd
	lNavInfoRoll  = lNavInfoRoll / lRadToDCSsignd
	lPitch        = lPitch / (lRadToDCSsignd / 2)
	lBank         = lBank / lRadToDCSsignd

    ExportScript.Tools.SendData(1, string.format("%.4f", lBank))
    ExportScript.Tools.SendData(2, string.format("%.4f", ExportScript.Tools.negate(lPitch))) -- negate
    ExportScript.Tools.SendData(3, lDefaultNull)
    ExportScript.Tools.SendData(4, lDefaultNull)
    ExportScript.Tools.SendData(5, string.format("%.4f", lNavInfoRoll))
    ExportScript.Tools.SendData(6, string.format("%.4f", lNavInfoPitch))
    ExportScript.Tools.SendData(7, lDefaultNull)
    ExportScript.Tools.SendData(8, lDefaultNull)
    ExportScript.Tools.SendData(9, lDefaultNull)
    ExportScript.Tools.SendData(10, string.format("%.4f", lSlipBallPosition))
end
									   
-- Radar Altimeter for SU-25A, SU-25T, SU-27, SU-33
function ExportScript.AF.FC_Russian_RadarAltimeter_1500m(warningflag)
	local lWarning_Flag    	= warningflag or 100

	local lScaleValue		= 1500
	local lAltRad			= LoGetAltitudeAboveGroundLevel()			-- ALTITUDE GROUND LEVEL (Meter)

	lAltRad = lAltRad / lScaleValue										-- (1500 m ist die maximalhoehe des Messgeraetes)
	lAltRad = (lAltRad > 1.0 and 1.0 or lAltRad)						-- the result is limited to 1.0
	local lDangerRALT = lWarning_Flag / lScaleValue						--  0.14 -- 50m ((50 * 1) / 350)
	local lWarning_Flag    = (lAltRad == 1.0 and 1.0 or 0.0)			-- (Flag an wenn Hoehe auf 1.0 ist)
	local lDangerRALT_Lamp = (lAltRad  < lDangerRALT and 1.0 or 0.0)	-- (Flag an wenn Hoehe niedriger als 0.14)
	-- AltRad {0.0,1.0}
	-- DangerRALT {0.0,1.0}
	-- Warning_Flag {0, 1}
	-- DangerRALT_Lamp {0, 1}

    ExportScript.Tools.SendData(25, string.format("%.4f", lAltRad))
    ExportScript.Tools.SendData(26, string.format("%.4f", lDangerRALT))
    ExportScript.Tools.SendData(27, lWarning_Flag)
    ExportScript.Tools.SendData(28, lDangerRALT_Lamp)
end

-- Radar Altimeter for MiG-29A/G/S
function ExportScript.AF.FC_Russian_RadarAltimeter_1000m(warningflag)
	local lWarning_Flag    	= warningflag or 100

	local lScaleValue		= 1000
	local lAltRad			= LoGetAltitudeAboveGroundLevel()			-- ALTITUDE GROUND LEVEL (Meter)

	lAltRad = lAltRad / lScaleValue										-- (1000 m ist die maximalhoehe des Messgeraetes)
	lAltRad = (lAltRad > 1.0 and 1.0 or lAltRad)						-- the result is limited to 1.0
	local lDangerRALT = lWarning_Flag / lScaleValue						--  0.14 -- 50m ((50 * 1) / 350)
	local lWarning_Flag    = (lAltRad == 1.0 and 1.0 or 0.0)			-- (Flag an wenn Hoehe auf 1.0 ist)
	local lDangerRALT_Lamp = (lAltRad  < lDangerRALT and 1.0 or 0.0)	-- (Flag an wenn Hoehe niedriger als 0.14)
	-- AltRad {0.0,1.0}
	-- DangerRALT {0.0,1.0}
	-- Warning_Flag {0, 1}
	-- DangerRALT_Lamp {0, 1}

    ExportScript.Tools.SendData(25, string.format("%.4f", lAltRad))
    ExportScript.Tools.SendData(26, string.format("%.4f", lDangerRALT))
    ExportScript.Tools.SendData(27, lWarning_Flag)
    ExportScript.Tools.SendData(28, lDangerRALT_Lamp)
end

-- Barometric Altimeter for SU-33
function ExportScript.AF.FC_Russian_BarometricAltimeter_late()

	local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()	-- BAROMETRIC PRESSURE (mm Hg)
	local lAltBar					= LoGetAltitudeAboveSeaLevel()		-- ALTITUDE SEA LEVEL (Meter)
	local lAltBar_kilometer_needle	= 0
	local lAltBar_meter_needle		= 0

	lAltBar 						= lAltBar - ((9.5 * (760 - lBasicAtmospherePressure)) / 2)	-- 9.5 m per 1mmHg difference

    lBasicAtmospherePressure        = lBasicAtmospherePressure * 1.33322 -- mmHg to hPa

--	if lAltBar > 10000 then
--		lAltBar_kilometer_needle	= lAltBar / 100000
--	else
		lAltBar_kilometer_needle	= lAltBar / 10000
--	end
--	if lAltBar > 1000 then
--		lAltBar_meter_needle		= lAltBar / 1000
--		lAltBar_meter_needle		= lAltBar_meter_needle - ExportScript.Tools.round(lAltBar_meter_needle, 0, "floor")
--	else
		lAltBar_meter_needle		= lAltBar / 1000
--	end
	lAltBar							= lAltBar / 1000

	-- AltBar_kilometer_needle {0.0,1.0}
	-- AltBar_meter_needle {0.0,1.0}
	-- BasicAtmospherePressure {947, 1080} hPa
	-- AltBar_kilometer {0, 99} km

    ExportScript.Tools.SendData(30, string.format("%.4f", lAltBar_kilometer_needle))
    ExportScript.Tools.SendData(31, string.format("%.4f", lAltBar_meter_needle))
    ExportScript.Tools.SendData(32, string.format("%04d", ExportScript.Tools.round(lBasicAtmospherePressure, 0, "floor")))
    ExportScript.Tools.SendData(33, string.format("%02d", ExportScript.Tools.round(lAltBar, 0, "floor")))
end

-- Barometric Altimeter for SU-25A, SU25-T
function ExportScript.AF.FC_Russian_BarometricAltimeter_late_special()

	local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()	-- BAROMETRIC PRESSURE (mm Hg)
	local lAltBar					= LoGetAltitudeAboveSeaLevel()		-- ALTITUDE SEA LEVEL (Meter)
	local lAltBar_kilometer_needle	= 0
	local lAltBar_meter_needle		= 0

	lAltBar 						= lAltBar - ((9.5 * (760 - lBasicAtmospherePressure)) / 2)	-- 9.5 m per 1mmHg difference

--	if lAltBar > 10000 then
--		lAltBar_kilometer_needle	= lAltBar / 100000
--	else
		lAltBar_kilometer_needle	= lAltBar / 10000
--	end
--	if lAltBar > 1000 then
--		lAltBar_meter_needle		= lAltBar / 1000
--		lAltBar_meter_needle		= lAltBar_meter_needle - ExportScript.Tools.round(lAltBar_meter_needle, 0, "floor")
--	else
		lAltBar_meter_needle		= lAltBar / 1000
--	end
	lAltBar							= lAltBar / 1000

	-- AltBar_kilometer_needle {0.0,1.0}
	-- AltBar_meter_needle {0.0,1.0}
	-- BasicAtmospherePressure {600, 780} mm Hg
	-- AltBar_kilometer {0, 99} km

    ExportScript.Tools.SendData(30, string.format("%.4f", lAltBar_kilometer_needle))
    ExportScript.Tools.SendData(31, string.format("%.4f", lAltBar_meter_needle))
    ExportScript.Tools.SendData(32, string.format("%04d", ExportScript.Tools.round(lBasicAtmospherePressure, 0, "floor")))
    ExportScript.Tools.SendData(33, string.format("%02d", ExportScript.Tools.round(lAltBar, 0, "floor")))
end

-- Barometric Altimeter for SU-27
function ExportScript.AF.FC_Russian_BarometricAltimeter_20000()

	local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()	-- BAROMETRIC PRESSURE (mm Hg)
	local lAltBar					= LoGetAltitudeAboveSeaLevel()		-- ALTITUDE SEA LEVEL (Meter)
	local lAltBar_kilometer_needle	= 0
	local lAltBar_meter_needle		= 0

	lAltBar 						= lAltBar - ((9.5 * (760 - lBasicAtmospherePressure)) / 2)	-- 9.5 m per 1mmHg difference

--	if lAltBar > 10000 then
--		lAltBar_kilometer_needle	= lAltBar / 200000
--	else
		lAltBar_kilometer_needle	= lAltBar / 20000
--	end
--	if lAltBar > 1000 then
--		lAltBar_meter_needle		= lAltBar / 1000
--		lAltBar_meter_needle		= lAltBar_meter_needle - ExportScript.Tools.round(lAltBar_meter_needle, 0, "floor")
--	else
		lAltBar_meter_needle		= lAltBar / 1000
--	end
	lBasicAtmospherePressure		= (lBasicAtmospherePressure - 600) / 200

	-- AltBar_kilometer_needle {0.0,1.0}
	-- AltBar_meter_needle {0.0,1.0}
	-- BasicAtmospherePressure {0.0, 1.0}={600.0, 800.0}

    ExportScript.Tools.SendData(30, string.format("%.4f", lAltBar_kilometer_needle))
    ExportScript.Tools.SendData(31, string.format("%.4f", lAltBar_meter_needle))
    ExportScript.Tools.SendData(32, string.format("%.4f", lBasicAtmospherePressure))
end

-- Barometric Altimeter for MiG-29A/G/S
function ExportScript.AF.FC_Russian_BarometricAltimeter_30000()

	local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()	-- BAROMETRIC PRESSURE (mm Hg)
	local lAltBar					= LoGetAltitudeAboveSeaLevel()		-- ALTITUDE SEA LEVEL (Meter)
	local lAltBar_kilometer_needle	= 0
	local lAltBar_meter_needle		= 0

	lAltBar 						= lAltBar - ((9.5 * (760 - lBasicAtmospherePressure)) / 2)	-- 9.5 m per 1mmHg difference

	lAltBar_kilometer_needle		= lAltBar / 30000

	lAltBar_meter_needle			= lAltBar / 1000

	lBasicAtmospherePressure		= (lBasicAtmospherePressure - 600) / 200

	-- AltBar_kilometer_needle {0.0,1.0}
	-- AltBar_meter_needle {0.0,1.0}
	-- BasicAtmospherePressure {0.0, 1.0}={600.0, 800.0}

    ExportScript.Tools.SendData(30, string.format("%.4f", lAltBar_kilometer_needle))
    ExportScript.Tools.SendData(31, string.format("%.4f", lAltBar_meter_needle))
    ExportScript.Tools.SendData(32, string.format("%.4f", lBasicAtmospherePressure))
end

-- Air Speed Indicator for SU-25A, SU-25T
function ExportScript.AF.FC_Russian_AirSpeed_1100hkm()

    local lIAS				= LoGetIndicatedAirSpeed() * 3.6  -- INDICATED AIRSPEED (Meter/Second to Km/h)
    local lTAS				= LoGetTrueAirSpeed()      * 3.6  -- TRUE AIRSPEED (Meter/Second to Km/h)

	--[[
	y_min = 0.0		0.09	-- minimaler Ausgabewert
	y_max = 0.09	1.0		-- maximaler Ausgabewert
	x_min = 0		100		-- minimaler Eingangswert
	x_max = 100		1100	-- maximaler Eingangswert
	x = 50			700		-- aktueller Eingangswert

	d_y = 0.09		0.91	-- Delta Ausgabewerte (y_max - y_min)
	d_x = 100		1000	-- Delta Eingangswerte (x_max - x_min)
	m = 0.0009		0.00091	-- Steigung der linearen Funktion (d_y / d_x)
	n = 0.0			-0.001	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
	
	y = 0,0171875	0,636	-- Ergebnis (m * x + n)
	]]
	if lIAS > 100 then
		lIAS = 0.00091 * lIAS + -0.001
	else
		lIAS = 0.0009 * lIAS
	end

	--[[
	y_min = 0.0		-- minimaler Ausgabewert
	y_max = 1.0		-- maximaler Ausgabewert
	x_min = 400		-- minimaler Eingangswert
	x_max = 1100	-- maximaler Eingangswert
	x = 800			-- aktueller Eingangswert

	d_y = 1.0		-- Delta Ausgabewerte (y_max - y_min)
	d_x = 700		-- Delta Eingangswerte (x_max - x_min)
	m = 0.00142857142857142857142857142857	-- Steigung der linearen Funktion (d_y / d_x)
	n = -0.571428571428571428571428571427	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
	
	y = 0.571428571428571428571428571429	-- Ergebnis (m * x + n)
	]]
	if lTAS > 400 then
		lTAS = 0.00142857142857142857142857142857 * lTAS + -0.571428571428571428571428571427
	else
		lTAS = 0.0
	end

	-- IAS {0.0,1.0}
	-- TAS {0.0,1.0}
	
    ExportScript.Tools.SendData(35, string.format("%.4f", lIAS))
    ExportScript.Tools.SendData(36, string.format("%.4f", lTAS))
end

-- Air Speed Indicator for SU-27, SU-33
function ExportScript.AF.FC_Russian_AirSpeed_1600hkm()

    local lScaleValueIAS	= 1600
    local lScaleValueMach	= 3.5
    local lIAS				= LoGetIndicatedAirSpeed() * 3.6	-- INDICATED AIRSPEED (Meter/Second to Km/h)
    local lMACH				= LoGetMachNumber()					-- MACH
	local lMACHtmp			= 0
	local lIAStmp			= 0

	if lIAS > 0 and lIAS <= 100 then
		--[[
		y_min = 0.0		-- minimaler Ausgabewert
		y_max = 0.03125	-- maximaler Ausgabewert
		x_min = 0		-- minimaler Eingangswert
		x_max = 100		-- maximaler Eingangswert
		x = 55			-- aktueller Eingangswert

		d_y = 0.03125	-- Delta Ausgabewerte (y_max - y_min)
		d_x = 100		-- Delta Eingangswerte (x_max - x_min)
		m = 0.0003125	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0			-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0,0171875	-- Ergebnis (m * x + n)
		]]
		lIAStmp = 0.0003125 * lIAS
	elseif lIAS > 100 and lIAS <= 500 then
		--[[
		y_min = 0.03125	-- minimaler Ausgabewert
		y_max = 0.427	-- maximaler Ausgabewert
		x_min = 100		-- minimaler Eingangswert
		x_max = 500		-- maximaler Eingangswert
		x = 250			-- aktueller Eingangswert

		d_y = 0.39575	-- Delta Ausgabewerte (y_max - y_min)
		d_x = 400		-- Delta Eingangswerte (x_max - x_min)
		m = 0.000989375	-- Steigung der linearen Funktion (d_y / d_x)
		n = -0.0676875	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0,0171875	-- Ergebnis (m * x + n)
		]]
		lIAStmp = 0.000989375 * lIAS + -0.0676875
	elseif lIAS > 500 and lIAS <= 600 then
		--[[
		y_min = 0.427	-- minimaler Ausgabewert
		y_max = 0.51	-- maximaler Ausgabewert
		x_min = 500		-- minimaler Eingangswert
		x_max = 600		-- maximaler Eingangswert
		x = 550			-- aktueller Eingangswert

		d_y = 0.083		-- Delta Ausgabewerte (y_max - y_min)
		d_x = 100		-- Delta Eingangswerte (x_max - x_min)
		m = 0.00083		-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.012		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0.4685	-- Ergebnis (m * x + n)
		]]
		lIAStmp = 0.00083 * lIAS + 0.012
	elseif lIAS > 600 and lIAS <= 1000 then
		--[[
		y_min = 0.51	-- minimaler Ausgabewert
		y_max = 0.753	-- maximaler Ausgabewert
		x_min = 600		-- minimaler Eingangswert
		x_max = 1000	-- maximaler Eingangswert
		x = 800			-- aktueller Eingangswert

		d_y = 0.243		-- Delta Ausgabewerte (y_max - y_min)
		d_x = 400		-- Delta Eingangswerte (x_max - x_min)
		m = 0.0006075	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.1455		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0.6315		-- Ergebnis (m * x + n)
		]]
		lIAStmp = 0.0006075 * lIAS + 0.1455
	elseif lIAS > 1000 and lIAS <= 1200 then
		--[[
		y_min = 0.753	-- minimaler Ausgabewert
		y_max = 0.84375	-- maximaler Ausgabewert
		x_min = 1000	-- minimaler Eingangswert
		x_max = 1200	-- maximaler Eingangswert
		x = 1100		-- aktueller Eingangswert

		d_y = 0.09075	-- Delta Ausgabewerte (y_max - y_min)
		d_x = 200		-- Delta Eingangswerte (x_max - x_min)
		m = 0.00045375	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.29925		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0.798375	-- Ergebnis (m * x + n)
		]]
		lIAStmp = 0.00045375 * lIAS + 0.29925
	elseif lIAS > 1200 and lIAS <= 1600 then
		--[[
		y_min = 0.84375	-- minimaler Ausgabewert
		y_max = 1.0		-- maximaler Ausgabewert
		x_min = 1200	-- minimaler Eingangswert
		x_max = 1600	-- maximaler Eingangswert
		x = 1400		-- aktueller Eingangswert

		d_y = 0.15625	-- Delta Ausgabewerte (y_max - y_min)
		d_x = 400		-- Delta Eingangswerte (x_max - x_min)
		m = 0.000390625	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.375		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0.921875	-- Ergebnis (m * x + n)
		]]
		lIAStmp = 0.000390625 * lIAS + 0.375
	end
	
	if lMACH > 0.6 and lMACH <= 0.9 then
		--[[
		y_min = 0.0		-- minimaler Ausgabewert
		y_max = 0.273	-- maximaler Ausgabewert
		x_min = 0.6		-- minimaler Eingangswert
		x_max = 0.9		-- maximaler Eingangswert
		x = 0.75		-- aktueller Eingangswert

		d_y = 0.273		-- Delta Ausgabewerte (y_max - y_min)
		d_x = 0.3		-- Delta Eingangswerte (x_max - x_min)
		m = 0.91		-- Steigung der linearen Funktion (d_y / d_x)
		n = -0.546		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0.1365	-- Ergebnis (m * x + n)
		]]
		lMACHtmp = 0.91 * lMACH + -0.546
	elseif lMACH > 0.9 and lMACH <= 1.5 then
		--[[
		y_min = 0.273	-- minimaler Ausgabewert
		y_max = 0.545	-- maximaler Ausgabewert
		x_min = 0.9		-- minimaler Eingangswert
		x_max = 1.5		-- maximaler Eingangswert
		x = 1.3			-- aktueller Eingangswert

		d_y = 0.272		-- Delta Ausgabewerte (y_max - y_min)
		d_x = 0.6		-- Delta Eingangswerte (x_max - x_min)
		m = 0.45333333333333333333333333333333		-- Steigung der linearen Funktion (d_y / d_x)
		n = -0.135		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0.45433333333333333333333333333333	-- Ergebnis (m * x + n)
		]]
		lMACHtmp = 0.45333333333333333333333333333333 * lMACH + -0.135
	elseif lMACH > 1.5 and lMACH <= 3.5 then
		--[[
		y_min = 0.545	-- minimaler Ausgabewert
		y_max = 1.0		-- maximaler Ausgabewert
		x_min = 1.5		-- minimaler Eingangswert
		x_max = 3.5		-- maximaler Eingangswert
		x = 2.3			-- aktueller Eingangswert

		d_y = 0.455		-- Delta Ausgabewerte (y_max - y_min)
		d_x = 2.0		-- Delta Eingangswerte (x_max - x_min)
		m = 0.2275		-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.20375		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0.727		-- Ergebnis (m * x + n)
		]]
		lMACHtmp = 0.2275 * lMACH + 0.20375
	end	

	-- IAS {0.0,1.0}
	-- MACH {0.0,1.0}

    ExportScript.Tools.SendData(35, string.format("%.4f", lIAStmp))
    ExportScript.Tools.SendData(36, string.format("%.4f", lMACHtmp))
end

-- Air Speed Indicator for MiG-29A, MiG-29S
function ExportScript.AF.FC_Russian_AirSpeed_1000hkm()

    local lIAS				= LoGetIndicatedAirSpeed() * 3.6	-- INDICATED AIRSPEED (Meter/Second to Km/h)
	local lThousand         = 0.0

	if lIAS > 1000 then
		lThousand = 1.0
	elseif lIAS > 950 then
		--[[
		y_min = 0.0	-- minimaler Ausgabewert
		y_max = 1.0		-- maximaler Ausgabewert
		x_min = 950		-- minimaler Eingangswert
		x_max = 1001	-- maximaler Eingangswert
		x = 980			-- aktueller Eingangswert

		d_y = 1.0		-- Delta Ausgabewerte (y_max - y_min)
		d_x = 51.0		-- Delta Eingangswerte (x_max - x_min)
		m = 0.01960784313725490196078431372549		-- Steigung der linearen Funktion (d_y / d_x)
		n = -18.627450980392156862745098039215		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0.5882352941176470588235294117652		-- Ergebnis (m * x + n)
		]]
		lThousand = 0.01960784313725490196078431372549 * lIAS + -18.627450980392156862745098039215
	end
	--[[
	y_min = 0.0	-- minimaler Ausgabewert
	y_max = 1.0		-- maximaler Ausgabewert
	x_min = 0.0		-- minimaler Eingangswert
	x_max = 1000	-- maximaler Eingangswert
	x = 880			-- aktueller Eingangswert

	d_y = 1.0		-- Delta Ausgabewerte (y_max - y_min)
	d_x = 1000.0	-- Delta Eingangswerte (x_max - x_min)
	m = 0.001		-- Steigung der linearen Funktion (d_y / d_x)
	n = 0.0			-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
	
	y = 0.88		-- Ergebnis (m * x + n)
	]]
	lIAS = 0.001 * lIAS
	lIAS = (lIAS > 1.0 and 1.0 or lIAS)		-- the result is limited to 1.0

	-- IAS {0.0,1.0}
	-- Thousand {0.0,1.0}

    ExportScript.Tools.SendData(35, string.format("%.4f", lIAS))
    ExportScript.Tools.SendData(36, string.format("%.4f", lThousand))
end

-- Machmeter for MiG-29A, MiG-29S
function ExportScript.AF.FC_Russian_Mach_MiG29()
	-- Mach {max, Mach}
	local lMACH				= LoGetMachNumber()					-- MACH
	--[[
	y_min = 0.0		-- minimaler Ausgabewert
	y_max = 1.0		-- maximaler Ausgabewert
	x_min = 0.0		-- minimaler Eingangswert
	x_max = 3.0		-- maximaler Eingangswert
	x = 1.65		-- aktueller Eingangswert

	d_y = 1.0		-- Delta Ausgabewerte (y_max - y_min)
	d_x = 3.0		-- Delta Eingangswerte (x_max - x_min)
	m = 0.33333333333333333333333333333333		-- Steigung der linearen Funktion (d_y / d_x)
	n = 0.00000000000000000000000000000001		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
	
	y = 0.55									-- Ergebnis (m * x + n)
	]]
	lMACH = 0.33333333333333333333333333333333 * lMACH + 0.00000000000000000000000000000001			

	ExportScript.Tools.SendData(37, string.format("%0.4f", lMACH)) -- Mach
	ExportScript.Tools.SendData(38, 0) -- Mach max
end
	
-- Vertical Velocity Indicator (Old Style) for SU-25, SU-25T, SU-27, MIG-29A and MIG-29S
function ExportScript.AF.FC_Russian_VVI_Old()

	local lVVI						= LoGetVerticalVelocity()		-- VERTICAL SPEED (Meter/Second)
	local lPitch, lBank, lYaw		= LoGetADIPitchBankYaw()		-- PITCH, BANK, YAW (Radian)
	lBank							= math.deg(lBank)
	local lSlipBallPosition			= LoGetSlipBallPosition()		-- SLIP BALL (-1 +1)
	--local lTAS						= LoGetTrueAirSpeed()			-- TRUE AIRSPEED (Meter/Second)
	--local lTurn = 0

	if lVVI > 0.0 then
		lVVI = lVVI / 200
		lVVI = (lVVI > 1.0 and 1.0 or lVVI)
	else
		lVVI = lVVI / 200
		lVVI = (lVVI < -1.0 and -1.0 or lVVI)
	end

	if lBank >= 0.0 then
		lBank = lBank / 45
		lBank = (lBank > 1.0 and 1.0 or lBank)		-- the result is limited to 1.0
	else
		lBank = lBank / 45
		lBank = (lBank < -1.0 and -1.0 or lBank)	-- the result is limited to -1.0
	end
	
	--lTurn = lTAS / 187.628865979					-- TRUE AIRSPEED (Meter/Second) / 187.628865979 m/s = Turn-Winkel or True Airspeed in Knots/min / 364 Knots
	--ExportScript.Tools.WriteToLog('lTurn: '..ExportScript.Tools.dump(lTurn))
	--ExportScript.Tools.WriteToLog('lVVI: '..ExportScript.Tools.dump(lVVI)..', lBank :'..ExportScript.Tools.dump(lBank))
	-- lVVI {-1.0, 0.0, 1.0} {0.0=0, 0.05=10, 0.10=20, 0.24=50, 0.49=100, 0.74=150, 1.0=200}
	-- lBank {-1.0, 0.0,1.0}
	-- lSlipBallPosition {0.0,1.0}

    ExportScript.Tools.SendData(40, string.format("%.4f", lVVI))
    ExportScript.Tools.SendData(41, string.format("%.4f", lBank))
    ExportScript.Tools.SendData(42, string.format("%.4f", ExportScript.Tools.negate(lSlipBallPosition))) -- negate
end

-- VVI for SU-33
function ExportScript.AF.FC_Russian_VVI_New()

	local lVVI						= LoGetVerticalVelocity()		-- VERTICAL SPEED (Meter/Second)

	--[[
	y_min = 0.0		0.325		-- minimaler Ausgabewert
	y_max = 0.325	1.0			-- maximaler Ausgabewert
	x_min = 0.0		20.0		-- minimaler Eingangswert
	x_max = 20.0	60.0		-- maximaler Eingangswert
	x = 5.0			40.0		-- aktueller Eingangswert

	d_y = 0.325		0.675		-- Delta Ausgabewerte (y_max - y_min)
	d_x = 20.0		40.0		-- Delta Eingangswerte (x_max - x_min)
	m = 0.01625		0.016875	-- Steigung der linearen Funktion (d_y / d_x)
	n = 0.0			-0.0125		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
	
	y = 0.08125		0,6625		-- Ergebnis (m * x + n)
	]]
	
	if lVVI >= 0.0 then
		if lVVI >= 0.0 and lVVI < 20.0 then
			lVVI = 0.01625 * lVVI
		else
			lVVI = 0.016875 * lVVI + -0.0125
		end
		lVVI = (lVVI > 1.0 and 1.0 or lVVI)
	else
		if lVVI <= 0.0 and lVVI < -20.0 then
			lVVI = 0.01625 * lVVI
		else
			lVVI = 0.016875 * lVVI + -0.0125
		end
		lVVI = (lVVI < -1.0 and -1.0 or lVVI)
	end

    ExportScript.Tools.SendData(40, string.format("%.4f", lVVI))
end

-- Airintake for MiG-29A/S/G, SU-27 and SU-33
function ExportScript.AF.FC_Russian_AirIntake()

	local lAirI		= LoGetMechInfo().airintake.value

    ExportScript.Tools.SendData(45, string.format("%.4f", lAirI))
    ExportScript.Tools.SendData(46, string.format("%.4f", lAirI))
end

-- AOA Indicator and Accelerometer (AOA, GLoad) for SU-25A, SU25T
function ExportScript.AF.FC_Russian_AOA_Su25()

	local lAoA						= LoGetAngleOfAttack()			-- ANGLE OF ATTACK AoA (Radian)
	local lAccelerationUnits		= LoGetAccelerationUnits().y	-- G-LOAD
	local lTrueAirSpeed			    = LoGetTrueAirSpeed()			-- TRUE AIRSPEED (Meter/Second)

	-- AOA Indicator and Accelerometer (AOA, GLoad)
	if lTrueAirSpeed > 1.0 then
		if lAoA > 0.0 then	-- positive AOA
			--[[
			y_min = 0.0		-- minimaler Ausgabewert
			y_max = 1.0		-- maximaler Ausgabewert
			x_min = 0.0		-- minimaler Eingangswert
			x_max = 40.0	-- maximaler Eingangswert
			x = 1.4			-- aktueller Eingangswert

			d_y = 1.0		-- Delta Ausgabewerte (y_max - y_min)
			d_x = 40.0		-- Delta Eingangswerte (x_max - x_min)
			m = 0.025		-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.0			-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
			
			y = 0.035		-- Ergebnis (m * x + n)
			]]
			lAoA = 0.025 * lAoA
		else
			--[[
			y_min = 0.0		-- minimaler Ausgabewert
			y_max = -0.28	-- maximaler Ausgabewert
			x_min = 0.0		-- minimaler Eingangswert
			x_max = -10.0	-- maximaler Eingangswert
			x = -3.2		-- aktueller Eingangswert

			d_y = -0.28		-- Delta Ausgabewerte (y_max - y_min)
			d_x = -10.0		-- Delta Eingangswerte (x_max - x_min)
			m = 0.028		-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.0			-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
			
			y = -0.0896		-- Ergebnis (m * x + n)
			]] --0.14
			lAoA = 0.028 * lAoA
		end
	else
		lAoA = 0.06
	end

	if lAccelerationUnits > 0.0 then	-- positive AOA
		--[[
		y_min = 0.0		-- minimaler Ausgabewert
		y_max = 1.0		-- maximaler Ausgabewert
		x_min = 0.0		-- minimaler Eingangswert
		x_max = 11.0	-- maximaler Eingangswert
		x = 2.5			-- aktueller Eingangswert

		d_y = 1.0								-- Delta Ausgabewerte (y_max - y_min)
		d_x = 11.0								-- Delta Eingangswerte (x_max - x_min)
		m = 0.09090909090909090909090909090909	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0									-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0,22727272727272727272727272727273	-- Ergebnis (m * x + n)
		]]
		lAccelerationUnits = 0.09090909090909090909090909090909 * lAccelerationUnits
	else
		--[[
		y_min = 0.0					-- minimaler Ausgabewert
		y_max = -0.40625			-- maximaler Ausgabewert
		x_min = 0.0					-- minimaler Eingangswert
		x_max = -2.2125720977783	-- maximaler Eingangswert
		x = -0.5					-- aktueller Eingangswert

		d_y = -0.40625								-- Delta Ausgabewerte (y_max - y_min)
		d_x = -2.2125720977783						-- Delta Eingangswerte (x_max - x_min)
		m = 0.18360983599491558834620754850374		-- Steigung der linearen Funktion (d_y / d_x)
		n = 2.559143240842e-33						-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = -0.09180491799745779417310377425187		-- Ergebnis (m * x + n)
		]]
		lAccelerationUnits = 0.18360983599491558834620754850374 * lAccelerationUnits + 2.559143240842e-33
	end

    ExportScript.Tools.SendData(50, string.format("%.4f", lAoA))
    ExportScript.Tools.SendData(51, string.format("%.4f", lAccelerationUnits))
end

-- AOA Indicator and Accelerometer (AOA, GLoad) for SU-27, SU33
function ExportScript.AF.FC_Russian_AOA_Su2733()

	local lAoA						= LoGetAngleOfAttack()			-- ANGLE OF ATTACK AoA (Radian)
	local lAccelerationUnits		= LoGetAccelerationUnits().y	-- G-LOAD
	local lTrueAirSpeed			    = LoGetTrueAirSpeed()			-- TRUE AIRSPEED (Meter/Second)

	if lTrueAirSpeed > 1.0 then
		if lAoA > 0.0 then	-- positive AOA
			--[[
			y_min = 0.0		-- minimaler Ausgabewert
			y_max = 1.0		-- maximaler Ausgabewert
			x_min = 0.0		-- minimaler Eingangswert
			x_max = 40.0	-- maximaler Eingangswert
			x = 1.4			-- aktueller Eingangswert

			d_y = 1.0		-- Delta Ausgabewerte (y_max - y_min)
			d_x = 40.0		-- Delta Eingangswerte (x_max - x_min)
			m = 0.025		-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.0			-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
			
			y = 0.035		-- Ergebnis (m * x + n)
			]]
			lAoA = 0.025 * lAoA
		else
			--[[
			y_min = 0.0		-- minimaler Ausgabewert
			y_max = -0.28	-- maximaler Ausgabewert
			x_min = 0.0		-- minimaler Eingangswert
			x_max = -10.0	-- maximaler Eingangswert
			x = -3.2		-- aktueller Eingangswert

			d_y = -0.28		-- Delta Ausgabewerte (y_max - y_min)
			d_x = -10.0		-- Delta Eingangswerte (x_max - x_min)
			m = 0.028		-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.0			-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
			
			y = -0.0896		-- Ergebnis (m * x + n)
			]] --0.14
			lAoA = 0.028 * lAoA
		end
	else
		lAoA = 0.06
	end

	if lAccelerationUnits > 0.0 then	-- positive AOA
		--[[
		y_min = 0.0		-- minimaler Ausgabewert
		y_max = 1.0		-- maximaler Ausgabewert
		x_min = 0.0		-- minimaler Eingangswert
		x_max = 11.0	-- maximaler Eingangswert
		x = 2.5			-- aktueller Eingangswert

		d_y = 1.0								-- Delta Ausgabewerte (y_max - y_min)
		d_x = 11.0								-- Delta Eingangswerte (x_max - x_min)
		m = 0.09090909090909090909090909090909	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0									-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0.22727272727272727272727272727273	-- Ergebnis (m * x + n)
		]]
		lAccelerationUnits = 0.09090909090909090909090909090909 * lAccelerationUnits
	else
		--[[
		y_min = 0.0			-- minimaler Ausgabewert
		y_max = -0.40625	-- maximaler Ausgabewert
		x_min = 0.0			-- minimaler Eingangswert
		x_max = -4.2		-- maximaler Eingangswert
		x = -0.5			-- aktueller Eingangswert

		d_y = -0.40625							-- Delta Ausgabewerte (y_max - y_min)
		d_x = -4.2								-- Delta Eingangswerte (x_max - x_min)
		m = 0.09672619047619047619047619047619	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0									-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = -0.09180491799745779417310377425187		-- Ergebnis (m * x + n)
		]]
		lAccelerationUnits = 0.09672619047619047619047619047619 * lAccelerationUnits
	end

    ExportScript.Tools.SendData(50, string.format("%.4f", lAoA))
    ExportScript.Tools.SendData(51, string.format("%.4f", lAccelerationUnits))
end

-- AOA Indicator and Accelerometer (AOA, GLoad) for MiG-29A, MiG-29S
function ExportScript.AF.FC_Russian_AOA_MiG29()

	local lAoA						= LoGetAngleOfAttack()			-- ANGLE OF ATTACK AoA (Radian)
	local lAccelerationUnits		= LoGetAccelerationUnits().y	-- G-LOAD
	
	if ExportScript.AF.TmpAOAMiG29GLoadMin == nil then
		ExportScript.AF.TmpAOAMiG29GLoadMin = 0
	end
	if ExportScript.AF.TmpAOAMiG29GLoadMax == nil then
		ExportScript.AF.TmpAOAMiG29GLoadMax = 0
	end

	if lAoA > 0.0 then	-- positive AOA
		--[[
		y_min = 0.0		-- minimaler Ausgabewert
		y_max = 0.7812	-- maximaler Ausgabewert
		x_min = 0.0		-- minimaler Eingangswert
		x_max = 30.0	-- maximaler Eingangswert
		x = 5.4			-- aktueller Eingangswert

		d_y = 0.7812	-- Delta Ausgabewerte (y_max - y_min)
		d_x = 30.0		-- Delta Eingangswerte (x_max - x_min)
		m = 0.02604		-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0			-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0.1406		-- Ergebnis (m * x + n)
		]]
		lAoA = 0.03333333333333333333333333333333 * lAoA
	else
		--[[
		y_min = 0.0		-- minimaler Ausgabewert
		y_max = -0.28	-- maximaler Ausgabewert
		x_min = 0.0		-- minimaler Eingangswert
		x_max = -5.5	-- maximaler Eingangswert
		x = -2.1		-- aktueller Eingangswert

		d_y = -0.28		-- Delta Ausgabewerte (y_max - y_min)
		d_x = -5.5		-- Delta Eingangswerte (x_max - x_min)
		m = 0,05090909090909090909090909090909	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0			-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = -0.10691	-- Ergebnis (m * x + n)
		]]
		lAoA = 0.05090909090909090909090909090909 * lAoA
	end

	if lAccelerationUnits > 0.0 then	-- positive AOA
		--[[
		y_min = 0.0		-- minimaler Ausgabewert
		y_max = 1.0		-- maximaler Ausgabewert
		x_min = 0.0		-- minimaler Eingangswert
		x_max = 11.0	-- maximaler Eingangswert
		x = 2.5			-- aktueller Eingangswert

		d_y = 1.0								-- Delta Ausgabewerte (y_max - y_min)
		d_x = 11.0								-- Delta Eingangswerte (x_max - x_min)
		m = 0.09090909090909090909090909090909	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0									-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0.22727272727272727272727272727273	-- Ergebnis (m * x + n)
		]]
		lAccelerationUnits = 0.09090909090909090909090909090909 * lAccelerationUnits
	else
		--[[
		y_min = 0.0			-- minimaler Ausgabewert
		y_max = -0.40625	-- maximaler Ausgabewert
		x_min = 0.0			-- minimaler Eingangswert
		x_max = -4.2		-- maximaler Eingangswert
		x = -0.5			-- aktueller Eingangswert

		d_y = -0.40625							-- Delta Ausgabewerte (y_max - y_min)
		d_x = -4.2								-- Delta Eingangswerte (x_max - x_min)
		m = 0.09672619047619047619047619047619	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0									-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = -0.09180491799745779417310377425187		-- Ergebnis (m * x + n)
		]]
		lAccelerationUnits = 0.09672619047619047619047619047619 * lAccelerationUnits
	end
	
	if lAccelerationUnits > ExportScript.AF.TmpAOAMiG29GLoadMax then
		ExportScript.AF.TmpAOAMiG29GLoadMax = lAccelerationUnits
	end
		if lAccelerationUnits < ExportScript.AF.TmpAOAMiG29GLoadMin then
		ExportScript.AF.TmpAOAMiG29GLoadMin = lAccelerationUnits
	end

    ExportScript.Tools.SendData(50, string.format("%.4f", lAoA))
    ExportScript.Tools.SendData(51, string.format("%.4f", lAccelerationUnits))
	ExportScript.Tools.SendData(52, string.format("%.4f", ExportScript.AF.TmpAOAMiG29GLoadMin))
	ExportScript.Tools.SendData(53, string.format("%.4f", ExportScript.AF.TmpAOAMiG29GLoadMax))
end

-- Russian Clock ACS-1 for KA-50, SU-25A, MIG-29A , MIG-29S
function ExportScript.AF.FC_Russian_Clock_ACS1()

	local lDefaultOne			= 1.0
	local lDefaultNull			= 0.0

    local lCurrentClock			= LoGetMissionStartTime() + LoGetModelTime()  -- in seconds
	local lCurrentHours			= lCurrentClock / 43200 -- (3600 * 12)
	lCurrentHours				= lCurrentHours - ExportScript.Tools.round(lCurrentHours, 0, "floor")
	local lCurrentMinutes		= lCurrentClock / 3600  -- (60 * 60)
	lCurrentMinutes				= lCurrentMinutes - ExportScript.Tools.round(lCurrentMinutes, 0, "floor")
	local lCurrentSeconds		= lCurrentClock / 60
	lCurrentSeconds				= lCurrentSeconds - ExportScript.Tools.round(lCurrentSeconds, 0, "floor")
	local lFlightTimeHours		= LoGetModelTime() / 43200
	lFlightTimeHours			= lFlightTimeHours - ExportScript.Tools.round(lFlightTimeHours, 0, "floor")
	local lFlightTimeMinutes	= LoGetModelTime() / 3600
	lFlightTimeMinutes			= lFlightTimeMinutes - ExportScript.Tools.round(lFlightTimeMinutes, 0, "floor")
	-- currtime_hours {0.0,1.0}
	-- currtime_minutes {0.0,1.0}
	-- currtime_seconds {0.0,1.0}
	-- flight_time_meter_status{0.0,0.2}
	-- flight_hours {0.0,1.0}
	-- flight_minutes {0.0,1.0}
	-- seconds_meter_time_minutes {0.0,1.0}
	-- seconds_meter_time_seconds {0.0,1.0}

    ExportScript.Tools.SendData(55, string.format("%.4f", lCurrentHours))
    ExportScript.Tools.SendData(56, string.format("%.4f", lCurrentMinutes))
    ExportScript.Tools.SendData(57, string.format("%.4f", lCurrentSeconds))
    ExportScript.Tools.SendData(58, lDefaultNull)   -- red/white flag
    ExportScript.Tools.SendData(59, string.format("%.4f", lFlightTimeHours))
    ExportScript.Tools.SendData(60, string.format("%.4f", lFlightTimeMinutes))
    ExportScript.Tools.SendData(61, lDefaultNull)
    ExportScript.Tools.SendData(62, lDefaultNull)
end

-- Russian Clock (latest Model) for SU-25T, SU-27, SU-33
function ExportScript.AF.FC_Russian_Clock_late()
	local lDefaultOne			= 1.0
	local lDefaultNull			= 0.0

    local lCurrentClock			= LoGetMissionStartTime() + LoGetModelTime()  -- in seconds
	local lCurrentHours			= lCurrentClock / 43200 -- (3600 * 12)
	lCurrentHours				= lCurrentHours - ExportScript.Tools.round(lCurrentHours, 0, "floor")
	local lCurrentMinutes		= lCurrentClock / 3600  -- (60 * 60)
	lCurrentMinutes				= lCurrentMinutes - ExportScript.Tools.round(lCurrentMinutes, 0, "floor")
	local lCurrentSeconds		= lCurrentClock / 60
	lCurrentSeconds				= lCurrentSeconds - ExportScript.Tools.round(lCurrentSeconds, 0, "floor")
	local lFlightTimeHours		= LoGetModelTime() / 43200
	lFlightTimeHours			= lFlightTimeHours - ExportScript.Tools.round(lFlightTimeHours, 0, "floor")
	local lFlightTimeMinutes	= LoGetModelTime() / 3600
	lFlightTimeMinutes			= lFlightTimeMinutes - ExportScript.Tools.round(lFlightTimeMinutes, 0, "floor")
	-- currtime_hours {0.0,1.0}
	-- currtime_minutes {0.0,1.0}
	-- currtime_seconds {0.0,1.0}
	-- flight_time_meter_status{0.0,0.2}
	-- flight_hours {0.0,1.0}
	-- flight_minutes {0.0,1.0}
	-- seconds_meter_time_seconds {0.0,1.0}

    ExportScript.Tools.SendData(55, string.format("%.4f", lCurrentHours))
    ExportScript.Tools.SendData(56, string.format("%.4f", lCurrentMinutes))
    ExportScript.Tools.SendData(57, string.format("%.4f", lCurrentSeconds))
    --ExportScript.Tools.SendData(58, lDefaultNull)   -- red/white flag
    ExportScript.Tools.SendData(59, string.format("%.4f", lFlightTimeHours))
    ExportScript.Tools.SendData(60, string.format("%.4f", lFlightTimeMinutes))
    ExportScript.Tools.SendData(61, string.format("%.4f", lCurrentSeconds))
end

-- Russian Enging RPM (Tachometer) for SU-25A+T, SU-27, SU-33, MIG-29
function ExportScript.AF.FC_Russian_EngineRPM()

    local lScaleValue       = 110
    local lEngineRPMleft    = LoGetEngineInfo().RPM.left    -- ENG1 RPM %
	local lEngineRPMright   = LoGetEngineInfo().RPM.right   -- ENG2 RPM %

	lEngineRPMleft  = lEngineRPMleft / lScaleValue
	lEngineRPMleft  = (lEngineRPMleft > 1.0 and 1.0 or lEngineRPMleft)     -- the result is limited to 1.0
	lEngineRPMright = lEngineRPMright / lScaleValue
	lEngineRPMright = (lEngineRPMright > 1.0 and 1.0 or lEngineRPMright)   -- the result is limited to 1.0
	-- EngineRPMleft {0.0,1.0}
	-- EngineRPMright {0.0,1.0}

    ExportScript.Tools.SendData(65, string.format("%.4f", lEngineRPMleft))
    ExportScript.Tools.SendData(66, string.format("%.4f", lEngineRPMright))
end

-- Russian Exthaus Gas Temperature 1.000GradC for SU-25A, SU-25T, MIG-29
function ExportScript.AF.FC_Russian_EGT_1000gc(egttemp, exportid)
    local lEGTtemp  	= egttemp  or 1
	local lExportID		= exportid or 70

	--[[
	y_min = 0.0		0.068	-- minimaler Ausgabewert
	y_max = 0.068	1.0		-- maximaler Ausgabewert
	x_min = 0		200		-- minimaler Eingangswert
	x_max = 200		1080	-- maximaler Eingangswert
	x = 100			650		-- aktueller Eingangswert

	d_y = 0.068		0.932	-- Delta Ausgabewerte (y_max - y_min)
	d_x = 200		880		-- Delta Eingangswerte (x_max - x_min)
	m = 0.00034		0.00105909090909090909090909090909	-- Steigung der linearen Funktion (d_y / d_x)
	n = 0			-0.1438181818181818181818181818172	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
	
	y = 0.034		0.5445909090909090909090909090913	-- Ergebnis (m * x + n)
	]]
	
	if lEGTtemp < 200 then
		lEGTtemp = 0.00034 * lEGTtemp
	else
		lEGTtemp = 0.00105909090909090909090909090909 * lEGTtemp + -0.1438181818181818181818181818172
	end	

	-- ExthausGasTemperature {0.0,1.0}
	ExportScript.Tools.SendData(lExportID, string.format("%.4f", lEGTtemp))
end

-- US Standby Compass for MiG-29A/S/G
function ExportScript.AF.FC_Russian_Compass2()
	local lDefaultNull	= 0.0
	local lHeading		= math.deg(LoGetSelfData().Heading)			-- HEADING (Radian to Grad)
	--local lHeading		= math.deg(LoGetMagneticYaw())			-- HEADING (Radian to Grad)
	--ExportScript.Tools.WriteToLog('lHeading: '..ExportScript.Tools.dump(lHeading))
	local lPitch		= LoGetSelfData().Pitch			-- Pitch
	local lBank			= LoGetSelfData().Bank			-- Bank

	if lHeading <= 180 then
		lHeading = lHeading / 180
	else
		lHeading = (lHeading / 180) - 2
	end

	lPitch	= lPitch / 1.31 -- korrektur der maximal Werte
	lBank	= lBank / 6.26	-- korrektur der maximal Werte

    ExportScript.Tools.SendData(67, string.format("%.4f", lHeading))	-- heading
    ExportScript.Tools.SendData(68, string.format("%.4f", lPitch))		-- pitch
    ExportScript.Tools.SendData(69, string.format("%.4f", lBank))		-- bank
end

-- Russian Mechanical Device Indicator for SU-25A+T
function ExportScript.AF.FC_Russian_MDI_SU25(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"

    local lMechInfo = LoGetMechInfo() -- mechanical components,  e.g. Flaps, Wheelbrakes,...
	--ExportScript.Tools.WriteToLog('lMechInfo: '..ExportScript.Tools.dump(lMechInfo))
	if lMechInfo == nil then
		return
	end
	local lTrueAirSpeed = LoGetTrueAirSpeed()
	if lTrueAirSpeed == nil then
		return
	end

    local lWarningLight = 0.0
    lWarningLight = ((lMechInfo.flaps.value > 0.93 and lTrueAirSpeed > 340) and 1.0 or 0.0) -- Speed Warning for Flaps, same light as gear warning light, but blinking light
    lWarningLight = (((lMechInfo.gear.status == 1 and lMechInfo.gear.value < 1) or (lMechInfo.gear.status == 0 and lMechInfo.gear.value > 0)) and 1.0 or lWarningLight )  -- gear warning light
	-- WarningLight {0.0 = Off, 0.1 = blinking light, 0.2 = on} 
	-- WarningLight {0.0 = Off, no blinking light, 1.0 = on} 
    -- nose gear {0, 1}
    -- left gear {0, 1}
    -- right gear {0, 1}
    -- speedbreakes on {0, 1}
    -- flap 1. position {0, 1}
    -- flap 2. position {0, 1}

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
        ExportScript.Tools.SendData(500, string.format("%.1f", lWarningLight))
        ExportScript.Tools.SendData(501, (lMechInfo.gear.value > 0.85 and 1 or 0))           -- nose gear
        ExportScript.Tools.SendData(502, (lMechInfo.gear.value > 0.95 and 1 or 0))           -- left gear
        ExportScript.Tools.SendData(503, (lMechInfo.gear.value == 1 and 1 or 0))             -- right gear
        ExportScript.Tools.SendData(510, (lMechInfo.speedbrakes.value  > 0.1 and 1 or 0))    -- speedbreakes on > 0.1 (0 - 1)
        ExportScript.Tools.SendData(531, (lMechInfo.flaps.value > 0.25 and 1 or 0))          -- flap 1. position
        ExportScript.Tools.SendData(532, (lMechInfo.flaps.value > 0.93 and 1 or 0))          -- flap 2. position
    end
    
    if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
        ExportScript.Tools.SendDataDAC(500, (((lMechInfo.gear.status == 1 and lMechInfo.gear.value < 1) or (lMechInfo.gear.status == 0 and lMechInfo.gear.value > 0)) and 1 or 0 ))
        ExportScript.Tools.SendDataDAC(501, (lMechInfo.gear.value > 0.85 and 1 or 0))           -- nose gear
        ExportScript.Tools.SendDataDAC(502, (lMechInfo.gear.value > 0.95 and 1 or 0))           -- left gear
        ExportScript.Tools.SendDataDAC(503, (lMechInfo.gear.value == 1 and 1 or 0))             -- right gear
        ExportScript.Tools.SendDataDAC(510, (lMechInfo.speedbrakes.value  > 0.1 and 1 or 0))    -- speedbreakes on > 0.1 (0 - 1)
        ExportScript.Tools.SendDataDAC(531, (lMechInfo.flaps.value > 0.25 and 1 or 0))          -- flap 1. position
        ExportScript.Tools.SendDataDAC(532, (lMechInfo.flaps.value > 0.93 and 1 or 0))          -- flap 2. position
        ExportScript.Tools.SendDataDAC(533, ((lMechInfo.flaps.value > 0.93 and lTrueAirSpeed > 340) and 1 or 0))   -- Speed Warning for Flaps, same light as gear warning light, but blinking light
    end
end

-- Russian Mechanical Device Indicator for MiG-29A/G/S
function ExportScript.AF.FC_Russian_MDI_MiG29(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"
-- The mechanical devices indicator shows the position of the landing gear, flaps, leading edge flaps and airbrake
	local lMechInfo = LoGetMechInfo() -- mechanical components,  e.g. Flaps, Wheelbrakes,...
	--ExportScript.Tools.WriteToLog('lMechInfo: '..ExportScript.Tools.dump(lMechInfo))
	if lMechInfo == nil then
		return
	end

	local lTrueAirSpeed = LoGetTrueAirSpeed()

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC(500, (((lMechInfo.gear.status == 1 and lMechInfo.gear.value < 1) or (lMechInfo.gear.status == 0 and lMechInfo.gear.value > 0)) and 1 or 0 ) ) -- gear warning light
		ExportScript.Tools.SendDataDAC(501, (lMechInfo.gear.value > 0.85 and 1 or 0) ) -- nose gear
		ExportScript.Tools.SendDataDAC(502, (lMechInfo.gear.value > 0.95 and 1 or 0) ) -- left gear
		ExportScript.Tools.SendDataDAC(503, (lMechInfo.gear.value > 0.97 and 1 or 0) )   -- right gear

		ExportScript.Tools.SendDataDAC(510, (lMechInfo.speedbrakes.value  > 0.1 and 1 or 0) ) -- speedbreakes on > 0.1 (0 - 1)

		--ExportScript.Tools.SendDataDAC(531, (lMechInfo.flaps.value > 0.25 and 1 or 0) ) -- flap 1. position
		--ExportScript.Tools.SendDataDAC(532, (lMechInfo.flaps.value > 0.93 and 1 or 0) ) -- flap 2. position
		--ExportScript.Tools.SendDataDAC(533, ((lMechInfo.flaps.value > 0.93 and lTrueAirSpeed > 340) and 1 or 0) ) -- Speed Warning for Flaps, same light as gear warning light, but blinking light
		ExportScript.Tools.SendDataDAC(531, (lMechInfo.flaps.value > 0.24 and 1 or 0) ) -- flap 1. position
		ExportScript.Tools.SendDataDAC(532, (lMechInfo.flaps.value > 0.49 and 1 or 0) ) -- flap 2. position
		ExportScript.Tools.SendDataDAC(533, ((lMechInfo.flaps.value > 0.49 and lTrueAirSpeed > 340) and 1 or 0) ) -- Speed Warning for Flaps, same light as gear warning light, but blinking light
		--ExportScript.Tools.SendDataDAC(534, (lMechInfo.gear.value > 0.5 and 1 or 0) )			-- Intake FOD shields -- falscher Wert
    
		ExportScript.Tools.SendDataDAC(541, (lMechInfo.parachute.value < 0.5 and 1 or 0) )

		ExportScript.Tools.SendDataDAC(551, (lMechInfo.noseflap.value > 20.0 and 1 or 0) )

		ExportScript.Tools.SendDataDAC(560, lMechInfo.airintake.status )
	end
	
	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		local lWarningLight = 0.0

		if lTrueAirSpeed ~= nil then
			--lWarningLight = ((lMechInfo.flaps.value > 0.93 and lTrueAirSpeed > 340) and 1.0 or 0.0) -- Speed Warning for Flaps, same light as gear warning light, but blinking light
			lWarningLight = ((lMechInfo.flaps.value > 0.49 and lTrueAirSpeed > 340) and 1.0 or 0.0) -- Speed Warning for Flaps, same light as gear warning light, but blinking light
			lWarningLight = (((lMechInfo.gear.status == 1 and lMechInfo.gear.value < 1) or (lMechInfo.gear.status == 0 and lMechInfo.gear.value > 0)) and 1.0 or lWarningLight )  -- gear warning light
		end

		ExportScript.Tools.SendData(500, string.format("%.1f", lWarningLight))
		ExportScript.Tools.SendData(501, (lMechInfo.gear.value > 0.85 and 1 or 0))           -- nose gear
		ExportScript.Tools.SendData(502, (lMechInfo.gear.value > 0.95 and 1 or 0))           -- left gear
		ExportScript.Tools.SendData(503, (lMechInfo.gear.value == 1 and 1 or 0))             -- right gear
		ExportScript.Tools.SendData(510, (lMechInfo.speedbrakes.value  > 0.1 and 1 or 0))    -- speedbreakes on > 0.1 (0 - 1)
		--ExportScript.Tools.SendData(531, (lMechInfo.flaps.value > 0.25 and 1 or 0))            -- flap 1. position
		--ExportScript.Tools.SendData(532, (lMechInfo.flaps.value > 0.93 and 1 or 0))          -- flap 2. position
		ExportScript.Tools.SendData(531, (lMechInfo.flaps.value > 0.24 and 1 or 0))           -- flap 1. position
		ExportScript.Tools.SendData(532, (lMechInfo.flaps.value > 0.49 and 1 or 0))           -- flap 2. position
		--ExportScript.Tools.SendData(534, (lMechInfo.gear.value > 0.5 and 1 or 0))            -- Intake FOD shields -- falscher Wert
	end
end

-- Russian Mechanical Device Indicator for MiG-29A/G/S
function ExportScript.AF.FC_Russian_FlareChaff_MiG29(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"
	local lSnares = LoGetSnares() -- Flare and Chaff
	--ExportScript.Tools.WriteToLog('lSnares: '..ExportScript.Tools.dump(lSnares))

	--[chaff] = number: "30"
	--[flare] = number: "30"

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC(800, lSnares.chaff + lSnares.flare )
	end
	
	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		ExportScript.Tools.SendData(800, lSnares.chaff + lSnares.flare )
	end
end

-- Russian Fuel Quantity Indicator for MiG-29A/G/S
function ExportScript.AF.FuelQuantityIndicator_MiG29(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"
-- Fuel quantity shows the fuel remaining in all tanks
	local lEngineInfo = LoGetEngineInfo()
	if lEngineInfo == nil then
		return
	end

	local lPayloadInfo  = LoGetPayloadInfo()
	local lRange        = 0
	local lStation5Tank = false
	local lStation6Tank = false
	local lStation7Tank = false

	if lEngineInfo ~= nil then
		lStation5Tank = (lPayloadInfo.Stations[5].CLSID == "{C0FF4842-FBAC-11d5-9190-00A0249B6F00}" and true or false)
		lStation6Tank = (lPayloadInfo.Stations[6].CLSID == "{C0FF4842-FBAC-11d5-9190-00A0249B6F00}" and true or false)
		lStation7Tank = (lPayloadInfo.Stations[7].CLSID == "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}" and true or false)
	end

	--ExportScript.Tools.WriteToLog('lStation7Tank: '..ExportScript.Tools.dump(lStation7Tank))
	--ExportScript.Tools.WriteToLog('lEngineInfo: '..ExportScript.Tools.dump(lEngineInfo))
	--[[
	[fuel_external] = number: "0"
    [Temperature] = {
        [left] = number: "626.99444580078"
        [right] = number: "626.99444580078"
    }
    [RPM] = {
        [left] = number: "87.453765869141"
        [right] = number: "87.453758239746"
    }
    [FuelConsumption] = {
        [left] = number: "0.1500396137767"
        [right] = number: "0.1500396137767"
    }
    [fuel_internal] = number: "3773.2749023438"
    [EngineStart] = {
        [left] = number: "0"
        [right] = number: "0"
    }
    [HydraulicPressure] = {
        [left] = number: "210"
        [right] = number: "210"
    }
	lPayloadInfo.Stations[7].CLSID == 2BEC576B-CDF5-4B7F-961F-B0FA4312B841   -- ext 1500l Fuel Tank
	]]

	local lTotalFuel = lEngineInfo.fuel_internal + lEngineInfo.fuel_external
	--ExportScript.Tools.WriteToLog('lTotalFuel: '..ExportScript.Tools.dump(lTotalFuel))

	-- Internal Fuel: 3370
	-- max external Fuel: 2930
	-- max totak Fuel: 6300
	-- 1400 Liter center tank = 1163kg, station 7, CLSID {2BEC576B-CDF5-4B7F-961F-B0FA4312B841}
	-- 1150 Liter tank = 891kg, station 5,6, CLSID {C0FF4842-FBAC-11d5-9190-00A0249B6F00}
	--lEngineInfo.fuel_external < 1770 -- Tank warning 1
	--lEngineInfo.fuel_external == 0 -- Tank warning 2
	--lEngineInfo.fuel_internal < 2500 -- Tank warning 3
	--lEngineInfo.fuel_internal < 800 -- Tank warning 4
	--lEngineInfo.fuel_internal < 650 -- Tank warning 5

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC("300", string.format("%d", ExportScript.Tools.round(((lTotalFuel) / 10), 0, "ceil") * 10) ) -- total fuel in kg

		if lStation7Tank and (lStation5Tank or lStation6Tank) then
			ExportScript.Tools.SendDataDAC("304", (lEngineInfo.fuel_external < 1770.0 and 1 or 0) ) -- Tank warning 1
			ExportScript.Tools.SendDataDAC("305", (lEngineInfo.fuel_external < 1.0 and 1 or 0) ) -- Tank warning 2
		elseif lStation7Tank and not(lStation5Tank or lStation6Tank) then
			ExportScript.Tools.SendDataDAC("304", (lEngineInfo.fuel_external < 1.0 and 1 or 0) ) -- Tank warning 1
			ExportScript.Tools.SendDataDAC("305", 0 ) -- Tank warning 2
		end
		ExportScript.Tools.SendDataDAC("306", (lEngineInfo.fuel_internal < 2500.0 and 1 or 0) ) -- Tank warning 3
		ExportScript.Tools.SendDataDAC("307", (lEngineInfo.fuel_internal < 800.0  and 1 or 0) ) -- Tank warning 4
		ExportScript.Tools.SendDataDAC("308", (lEngineInfo.fuel_internal < 650.0  and 1 or 0) ) -- Tank warning 5
	end

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		local lTotalFuel_7_5	= 0
		local lTotalFuel_5_0	= 0

		if lTotalFuel > 5000 then -- internal and external
			--[[
			y_min = 0.0		-- minimaler Ausgabewert
			y_max = 1.0		-- maximaler Ausgabewert
			x_min = 5000	-- minimaler Eingangswert
			x_max = 7500	-- maximaler Eingangswert

			x = 6300		-- aktueller Eingangswert

			d_y = 1			-- Delta Ausgabewerte (y_max - y_min)
			d_x = 2500		-- Delta Eingangswerte (x_max - x_min)
			m = 0.0004		-- Steigung der linearen Funktion (d_y / d_x)
			n = -2.0		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

			y = 0.52		-- Ergebnis (m * x + n)
			]]
			lTotalFuel_7_5 = 0.0004 * lTotalFuel + -2.0
			lTotalFuel_5_0 = 1
		else
			--[[
			y_min = 0.0		-- minimaler Ausgabewert
			y_max = 1.0		-- maximaler Ausgabewert
			x_min = 0		-- minimaler Eingangswert
			x_max = 5000	-- maximaler Eingangswert

			x = 3500		-- aktueller Eingangswert

			d_y = 1			-- Delta Ausgabewerte (y_max - y_min)
			d_x = 5000		-- Delta Eingangswerte (x_max - x_min)
			m = 0.0002		-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.0			-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

			y = 0.52		-- Ergebnis (m * x + n)
			]]
			lTotalFuel_5_0 = 0.0002 * lTotalFuel + 0
			lTotalFuel_7_5 = 0
		end

		ExportScript.Tools.SendData(301, string.format("%0.4f", lTotalFuel_7_5) )
		ExportScript.Tools.SendData(302, string.format("%0.4f", lTotalFuel_5_0) )

		if lStation7Tank and (lStation5Tank or lStation6Tank) then
			ExportScript.Tools.SendData(304, (lEngineInfo.fuel_external < 1770.0 and 1 or 0) ) -- Tank warning 1
			ExportScript.Tools.SendData(305, (lEngineInfo.fuel_external < 1.0 and 1 or 0) ) -- Tank warning 2
		elseif lStation7Tank and not(lStation5Tank or lStation6Tank) then
			ExportScript.Tools.SendData(304, (lEngineInfo.fuel_external < 1.0 and 1 or 0) ) -- Tank warning 1
			ExportScript.Tools.SendData(305, 0 ) -- Tank warning 2
		end
		ExportScript.Tools.SendData(306, (lEngineInfo.fuel_internal < 2500.0 and 1 or 0) ) -- Tank warning 3
		ExportScript.Tools.SendData(307, (lEngineInfo.fuel_internal < 800.0  and 1 or 0) ) -- Tank warning 4
		ExportScript.Tools.SendData(308, (lEngineInfo.fuel_internal < 650.0  and 1 or 0) ) -- Tank warning 4
		ExportScript.Tools.SendData(303, lRange ) -- Range in km
	end
end

-- Russian Sighting System for MiG-29A/G/S (DAC only)
function ExportScript.AF.SightingSystem_MiG29()
	local lSightingSystemInfo = LoGetSightingSystemInfo()
	if lSightingSystemInfo == nil then
		return
	end
	--ExportScript.Tools.WriteToLog('lSightingSystemInfo: '..ExportScript.Tools.dump(lSightingSystemInfo)9
	--[[
	[PRF] = {
        [selection] = string: "ILV"
        [current] = string: "MED"
    }
    [laser_on] = boolean: "false"
    [scale] = {
        [azimuth] = number: "0.52359873056412"
        [distance] = number: "10000"
    }
    [radar_on] = boolean: "false"
    [optical_system_on] = boolean: "false"
    [LaunchAuthorized] = boolean: "false"
    [ECM_on] = boolean: "false"
    [Manufacturer] = string: "RUS"
    [TDC] = {
        [y] = number: "0"
        [x] = number: "0"
    }
    [ScanZone] = {
        [coverage_H] = {
            [min] = number: "0"
            [max] = number: "20000"
        }
        [size] = {
            [azimuth] = number: "1.0471974611282"
            [elevation] = number: "0.17453290522099"
        }
        [position] = {
            [exceeding_manual] = number: "0"
            [distance_manual] = number: "0"
            [azimuth] = number: "0"
            [elevation] = number: "0"
        }
    }
	]]
	ExportScript.Tools.SendDataDAC("600", lSightingSystemInfo.ECM_on            == true and 1 or 0 )
	ExportScript.Tools.SendDataDAC("601", lSightingSystemInfo.laser_on          == true and 1 or 0 )
	ExportScript.Tools.SendDataDAC("602", lSightingSystemInfo.optical_system_on == true and 1 or 0 )
	ExportScript.Tools.SendDataDAC("603", lSightingSystemInfo.LaunchAuthorized  == true and 1 or 0 )
	ExportScript.Tools.SendDataDAC("604", lSightingSystemInfo.radar_on          == true and 1 or 0 )
end

-- Russian System Test EKRAN
function ExportScript.AF.FC_EKRAN()

	local lMCPState = LoGetMCPState() -- Warning Lights
	if lMCPState == nil then
		return
	end
	local lDisplayWindow	= ""	-- Message
	local lFAILlight		= ""	-- FAILURE
	local lMEMORYlight		= ""	-- MEMORY
	local lTURNlight		= ""	-- TURN
	if gDisplayWindow == nil then
		gFC_EKRAN_active	= {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false}
		gDisplayWindow		= ""
	end
	
	if lMCPState.LeftTailPlaneFailure and not gFC_EKRAN_active[1] then
		lDisplayWindow = "LEFT\nTAIL\nPLANE\nFAILURE"
		gFC_EKRAN_active[1] = true
	elseif lMCPState.RightTailPlaneFailure and not gFC_EKRAN_active[2] then
		lDisplayWindow = "RIGHT\nTAIL\nPLANE\nFAILURE"
		gFC_EKRAN_active[2] = true
	elseif lMCPState.MasterWarning and not gFC_EKRAN_active[3] then
		---lDisplayWindow = "MASTER\nWARNING"	-- don't display
		gFC_EKRAN_active[3] = true
	elseif lMCPState.LeftEngineFailure and not gFC_EKRAN_active[4] then
		lDisplayWindow = "LEFT\nENGINE\nFAILURE"
		gFC_EKRAN_active[4] = true
	elseif lMCPState.RightEngineFailure and not gFC_EKRAN_active[5] then
		lDisplayWindow = "RIGHT\nENGINE\nFAILURE"
		gFC_EKRAN_active[5] = true
	elseif lMCPState.RightAileronFailure and not gFC_EKRAN_active[6] then
		lDisplayWindow = "RIGHT\nAILERON\nFAILURE"
		gFC_EKRAN_active[6] = true
	elseif lMCPState.LeftMainPumpFailure and not gFC_EKRAN_active[7] then
		lDisplayWindow = "LEFT\nMAIN\nPUMP\nFAILURE"
		gFC_EKRAN_active[7] = true
	elseif lMCPState.RightMainPumpFailure and not gFC_EKRAN_active[8] then
		lDisplayWindow = "RIGHT\nMAIN\nPUMP\nFAILURE"
		gFC_EKRAN_active[8] = true
	elseif lMCPState.LeftWingPumpFailure and not gFC_EKRAN_active[9] then
		lDisplayWindow = "LEFT\nWING\nPUMP\nFAILURE"
		gFC_EKRAN_active[10] = true
	elseif lMCPState.RightWingPumpFailure and not gFC_EKRAN_active[10] then
		lDisplayWindow = "RIGHT\nWING\nPUMP\nFAILURE"
		gFC_EKRAN_active[10] = true
	elseif lMCPState.EOSFailure and not gFC_EKRAN_active[11] then
		lDisplayWindow = "EOS\nFAILURE"
		gFC_EKRAN_active[11] = true
	elseif lMCPState.ECMFailure and not gFC_EKRAN_active[12] then
		lDisplayWindow = "ECM\nFAILURE"
		gFC_EKRAN_active[12] = true
	elseif lMCPState.CannonFailure and not gFC_EKRAN_active[13] then
		lDisplayWindow = "CANNON\nFAILURE"
		gFC_EKRAN_active[13] = true
	elseif lMCPState.MLWSFailure and not gFC_EKRAN_active[14] then
		lDisplayWindow = "MLWS\nFAILURE"
		gFC_EKRAN_active[14] = true
	elseif lMCPState.ACSFailure and not gFC_EKRAN_active[15] then
		lDisplayWindow = "ACS\nFAILURE"
		gFC_EKRAN_active[15] = true
	elseif lMCPState.RadarFailure and not gFC_EKRAN_active[16] then
		lDisplayWindow = "RADAR\nFAILURE"
		gFC_EKRAN_active[16] = true
	elseif lMCPState.HelmetFailure and not gFC_EKRAN_active[17] then
		lDisplayWindow = "HELMET\nFAILURE"
		gFC_EKRAN_active[17] = true
	elseif lMCPState.HUDFailure and not gFC_EKRAN_active[18] then
		lDisplayWindow = "HUD\nFAILURE"
		gFC_EKRAN_active[18] = true
	elseif lMCPState.MFDFailure and not gFC_EKRAN_active[19] then
		lDisplayWindow = "MFD\nFAILURE"
		gFC_EKRAN_active[19] = true
	elseif lMCPState.RWSFailure and not gFC_EKRAN_active[20] then
		lDisplayWindow = "RWS\nFAILURE"
		gFC_EKRAN_active[20] = true
	elseif lMCPState.GearFailure and not gFC_EKRAN_active[21] then
		lDisplayWindow = "GEAR\nFAILURE"
		gFC_EKRAN_active[21] = true
	elseif lMCPState.HydraulicsFailure and not gFC_EKRAN_active[22] then
		lDisplayWindow = "HYDRAULICS\nFAILURE"
		gFC_EKRAN_active[22] = true
	elseif lMCPState.AutopilotFailure and not gFC_EKRAN_active[23] then
		--lDisplayWindow = "AUTOPILOT\nFAILURE"		-- bug in DCS, error is always active
		gFC_EKRAN_active[23] = true
	elseif lMCPState.FuelTankDamage and not gFC_EKRAN_active[24] then
		lDisplayWindow = "FUEL\nTANK\nDAMAGE"
		gFC_EKRAN_active[24] = true
	end

	if lDisplayWindow ~= "" then
		gDisplayWindow = lDisplayWindow
	end
	if gDisplayWindow ~= "" then
		lFAILlight = " FAILURE"
	end
	-- DisplayWindow (main message)
	-- FAILlight (failure text)
	-- MEMORYlight (memmory text)
	-- TURNlight (turn text)

    ExportScript.Tools.SendData(80, string.format("%s;", gDisplayWindow))
    ExportScript.Tools.SendData(81, string.format("%s;", lFAILlight))
    ExportScript.Tools.SendData(82, string.format("%s;", lMEMORYlight))
    ExportScript.Tools.SendData(83, string.format("%s;", lTURNlight))
end

-- ADI for A-10A, F-15C
function ExportScript.AF.FC_US_ADI()
	local lDefaultNull				= 0.0
	local lRadToDCSsignd			= math.pi
	local lNavInfoPitch				= LoGetNavigationInfo().Requirements.pitch		-- AP REQUIRED PITCH (Radian)
	local lNavInfoRoll				= LoGetNavigationInfo().Requirements.roll		-- AP REQUIRED BANK (Radian)
	local lPitch, lBank, lYaw		= LoGetADIPitchBankYaw()						-- PITCH, BANK, YAW (Radian)
	local lSlipBallPosition			= LoGetSlipBallPosition()						-- SLIP BALL (-1 +1)
	local lGlide					= LoGetGlideDeviation()							-- VOR1 HORIZONTAL DEFLECTION (-1 +1)
	--local lSide						= LoGetSideDeviation()							-- VOR1 VERTICAL DEFLECTION (-1 +1)
	--[[ ADI from A-10C
		[17] = "%.4f",		-- ADI Pitch
		[18] = "%.4f",		-- ADI Bank
		[24] = "%.4f",		-- ADI Slip Ball
		[20] = "%.4f",		-- ADI Bank Steering Bar
		[21] = "%.4f",		-- ADI Pitch Steering Bar
		[23] = "%.4f",		-- ADI Turn Needle
		[27] = "%.4f",		-- ADI Glide-Slope Indicator
		[26] = "%0.1f",		-- ADI Glide-Slope Warning Flag
		[25] = "%0.1f",		-- ADI Attitude Warning Flag
		[19] = "%0.1f",		-- ADI Course Warning Flag
		]]
	lNavInfoPitch = lNavInfoPitch / (lRadToDCSsignd * -1)  --lNavInfoPitch / lRadToDCSsignd
	lNavInfoRoll  = lNavInfoRoll / lRadToDCSsignd
	lPitch        = lPitch / (lRadToDCSsignd / 2)  --lPitch / (lRadToDCSsignd / 1.5)
	lBank         = lBank / lRadToDCSsignd

	ExportScript.Tools.SendData(2, string.format("%.4f", ExportScript.Tools.negate(lPitch))) -- negate
    ExportScript.Tools.SendData(1, string.format("%.4f", lBank))
    ExportScript.Tools.SendData(10, string.format("%.4f", lSlipBallPosition))
    ExportScript.Tools.SendData(5, string.format("%.4f", lNavInfoRoll))
    ExportScript.Tools.SendData(6, string.format("%.4f", ExportScript.Tools.negate(lNavInfoPitch))) -- negate
    ExportScript.Tools.SendData(3, string.format("%.4f", lBank))   -- as Turn Needle
    ExportScript.Tools.SendData(4, string.format("%.4f", lGlide))
    ExportScript.Tools.SendData(7, 0)
    ExportScript.Tools.SendData(8, 0)
    ExportScript.Tools.SendData(9, 0)
end

-- Standby ADI for A-10A, F-15C
function ExportScript.AF.FC_US_stbyADI()
	local lDefaultNull				= 0.0
	local lRadToDCSsignd			= math.pi
	local lPitch, lBank, lYaw		= LoGetADIPitchBankYaw()						-- PITCH, BANK, YAW (Radian)
	--local lSide						= LoGetSideDeviation()							-- VOR1 VERTICAL DEFLECTION (-1 +1)
	-- [63] = "%.4f",		-- Standby Attitude Indicator pitch	{-1.0, 1.0}
	-- [64] = "%.4f",		-- Standby Attitude Indicator bank	{-1.0, 1.0}
	-- [65] = "%0.1f",		-- Standby Attitude Indicator warning flag	{0.0, 1.0}
	lPitch			= lPitch / (lRadToDCSsignd / 1.5)
	lBank			= lBank / lRadToDCSsignd

    ExportScript.Tools.SendData(34, string.format("%.4f", lPitch))
    ExportScript.Tools.SendData(35, string.format("%.4f", ExportScript.Tools.negate(lBank))) -- negate
    --ExportScript.Tools.SendData(0, 0) -- Warning Flag
end

-- HSI for A-10A, F-15C
function ExportScript.AF.FC_US_HSI(distancetoway)
	local lDistanceToWay	= distancetoway or 999
	
	local lDefaultOne		= 1.0
	local lDefaultNull		= 0.0
	local lRadToDCSunsignd	= math.pi * 2
	local lPitch,lBank,lYaw	= LoGetADIPitchBankYaw()			-- PITCH, BANK, YAW (Radian)
	local lHSI_RMI			= LoGetControlPanel_HSI().RMI_raw	-- VOR1 OBS (Radian)
	local lHSI_ADF			= LoGetControlPanel_HSI().ADF_raw	-- ADF OBS (Radian)
	local lHSI_Curse		= LoGetControlPanel_HSI().Course	-- HSI Course (Radian)
	local lHeading			= LoGetSelfData().Heading			-- HEADING (Radian)
	local lCourseDeviation	= LoGetControlPanel_HSI().CourseDeviation
	--ExportScript.Tools.WriteToLog('LoGetControlPanel_HSI() 1: '..ExportScript.Tools.dump(LoGetControlPanel_HSI()))
	
	lPitch, lBank			= nil
--[[
    [Course] = number: "0.76548692098835"
    [CourseDeviation] = number: "0"
    [ADF_raw] = number: "5.5811524391174"
    [BearingPointer] = number: "0.80134677481978"
    [RMI_raw] = number: "5.4092655181885"
    [HeadingPointer] = number: "0.098191173578347"
    [Heading_raw] = number: "6.2831854820251"
	]]
	--[[ HSI A-10C
		[34] = "%.4f",		-- HSI Heading
		[33] = "%.4f",		-- HSI Bearing #1
		[35] = "%.4f",		-- HSI Bearing #2
		[36] = "%.4f",		-- HSI Heading Marker
		[47] = "%.4f",		-- HSI Course Arrow
		[41] = "%.4f",		-- HSI Deviation
		[29] = "%.2f",		-- HSI range_counter_100
		[30] = "%.2f",		-- HSI range_counter_10
		[31] = "%.2f",		-- HSI range_counter_1
		[42] = "%0.1f",		-- HSI Bearing to_from_1
		[43] = "%0.1f",		-- HSI Bearing to_from_2
		[46] = "%0.1f",		-- HSI Bearing Flag
		[40] = "%0.1f",		-- HSI Power Flag
		[32] = "%0.1f",		-- HSI Range Flag
	]]
	lDistanceToWay = lDistanceToWay * 0.00062136994937697 -- meter to miles
	--lDistanceToWay = ExportScript.Tools.round(lDistanceToWay / 1000, 1)
	local lRangeCounter1 = 0
	local lRangeCounter2 = 0
	local lRangeCounter3 = 0
	if lDistanceToWay > 100 then
		lRangeCounter1 = ExportScript.Tools.round((lDistanceToWay / 100), 0, "floor") * 0.11
		lRangeCounter1 = lRangeCounter1 - ExportScript.Tools.round(lRangeCounter1, 0, "floor")
	end
	if lDistanceToWay > 10 then
		if lDistanceToWay > 100 then
			lRangeCounter2 = (ExportScript.Tools.round((lDistanceToWay - (ExportScript.Tools.round(lDistanceToWay / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.11
		else
			lRangeCounter2 = (lDistanceToWay / 10) * 0.11
			lRangeCounter2 = lRangeCounter2 - ExportScript.Tools.round(lRangeCounter2, 0, "floor")
		end
	end
	if lDistanceToWay > 10 then
		lRangeCounter3 = (lDistanceToWay - (ExportScript.Tools.round(lDistanceToWay / 10, 0, "floor") * 10)) * 0.11
	else
		lRangeCounter3 = lDistanceToWay * 0.11
	end

	lHeading = 1.0 - (lHeading / lRadToDCSunsignd)
	lHSI_Curse = (lHSI_Curse / lRadToDCSunsignd)
	lHSI_ADF = (lHSI_ADF / lRadToDCSunsignd)
	lCourseDeviation = (lCourseDeviation > 1.0 and 1 or lCourseDeviation)
	lCourseDeviation = (lCourseDeviation < -1.0 and -1 or lCourseDeviation)
	-- HSI Heading {0.0, 1.0}
	-- HSI Bearing #1 {0.0, 1.0}
	-- HSI Bearing #2 {0.0, 1.0}
	-- HSI Heading Marker {0.0, 1.0}
	-- HSI Course Arrow {0.0, 1.0}
	-- HSI Deviation {0.0, 1.0}
	-- HSI range_counter_100
	-- HSI range_counter_10
	-- HSI range_counter_1
	-- HSI Bearing to_from_1
	-- HSI Bearing to_from_2
	-- HSI Bearing Flag
	-- HSI Power Flag
	-- HSI Range Flag

    ExportScript.Tools.SendData(11, string.format("%.4f", lHeading))        -- compass card
    ExportScript.Tools.SendData(12, string.format("%.4f", lHSI_Curse))      -- Bearing #1
    ExportScript.Tools.SendData(13, string.format("%.4f", lHSI_Curse))      -- Bearing #2
    ExportScript.Tools.SendData(14, lDefaultNull)
    ExportScript.Tools.SendData(15, string.format("%.4f", lHSI_Curse))
	ExportScript.Tools.SendData(16, string.format("%.4f", lCourseDeviation))
    ExportScript.Tools.SendData(17, string.format("%.4f", lRangeCounter1))
    ExportScript.Tools.SendData(18, string.format("%.4f", lRangeCounter2))
    ExportScript.Tools.SendData(19, string.format("%.4f", lRangeCounter3))
    ExportScript.Tools.SendData(20, lDefaultNull)
    ExportScript.Tools.SendData(21, lDefaultNull)
    ExportScript.Tools.SendData(22, lDefaultNull)
    ExportScript.Tools.SendData(23, lDefaultNull)	-- deaktiviert die Course Anzeige
end

-- VVI for A-10A, F-15C
function ExportScript.AF.FC_US_VVI()
	local lVVITmp					= LoGetVerticalVelocity() * 196.8504		-- VERTICAL SPEED (Meter/Second to Foots/Minute)
	--  {-1.0, -0.5, -0.29, 0.29, 0.5, 1.0} 
	--{-6000, -2000, -1000, 1000, 2000, 6000}
	--ExportScript.Tools.WriteToLog('lVVITmp 1: '..ExportScript.Tools.dump(lVVITmp))
	if lVVITmp >= 0.0 then
		--[[
		y_min = 0.0		0.29		0.503		0.765	-- minimaler Ausgabewert
		y_max = 0.29	0.503		0.765		1.0		-- maximaler Ausgabewert
		x_min = 0.0		1000.0		2000.0		4000.0	-- minimaler Eingangswert
		x_max = 1000.0	2000.0		4000.0		6000.0	-- maximaler Eingangswert
		x = 500.0		1600.0		2250.0		5500.0	-- aktueller Eingangswert 

		d_y = 0.29		0.213		0.262		0.235	-- Delta Ausgabewerte (y_max - y_min)
		d_x = 1000.0	1000.0		2000.0		2000.0	-- Delta Eingangswerte (x_max - x_min)
		m = 0.00029		0.000213	0.000131	0.0001175	-- Steigung der linearen Funktion (d_y / d_x) 
		n = 0.0			0.077		0.241		0.295	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

		y = 0.145		0.4178		0.53575		0.94125	-- Ergebnis (m * x + n)
		]]
		if lVVITmp >= 4000 then
			lVVITmp = 0.0001175 * lVVITmp + 0.295
		elseif lVVITmp >= 2000 then
			lVVITmp = 0.000131 * lVVITmp + 0.241
		elseif lVVITmp >= 1000 then
			lVVITmp = 0.000213 * lVVITmp + 0.077
		else
			lVVITmp = 0.00029 * lVVITmp
		end
		lVVITmp = (lVVITmp > 1.0 and 1.0 or lVVITmp)	-- the result is limited to 1.0
	else
		--[[
		y_min = -0.0	-0.29		-0.503		-0.765	-- minimaler Ausgabewert
		y_max = -0.29	-0.503		-0.765		-1.0		-- maximaler Ausgabewert
		x_min = -0.0	-1000.0		-2000.0		-4000.0	-- minimaler Eingangswert
		x_max = -1000.0	-2000.0		-4000.0		-6000.0	-- maximaler Eingangswert
		x = -500.0		-1600.0		-2250.0		-5500.0	-- aktueller Eingangswert 

		d_y = -0.29		-0.213		-0.262		-0.235	-- Delta Ausgabewerte (y_max - y_min)
		d_x = -1000.0	-1000.0		-2000.0		-2000.0	-- Delta Eingangswerte (x_max - x_min)
		m = 0.00029		0.000213	0.000131	0.0001175	-- Steigung der linearen Funktion (d_y / d_x) 
		n = 0.0			-0.077		-0.241		-0.295	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

		y = -0.145		-0.4178		-0.53575	-0.94125	-- Ergebnis (m * x + n)
		]]
		if lVVITmp <= 0 and lVVITmp > -1000 then
			lVVITmp = 0.00029 * lVVITmp
		elseif lVVITmp <= -1000 and lVVITmp > -2000 then
			lVVITmp = 0.000213 * lVVITmp + -0.077
		elseif lVVITmp <= -2000 and lVVITmp > -4000 then
			lVVITmp = 0.000131 * lVVITmp + -0.241
		else
			lVVITmp = 0.0001175 * lVVITmp + -0.295
		end

		lVVITmp = (lVVITmp < -1.0 and -1.0 or lVVITmp)	-- the result is limited to -1.0
	end
	
	ExportScript.Tools.SendData(24, string.format("%.4f", lVVITmp))
end

-- AOA Indicator (AOA) for A-10A, F-15C
function ExportScript.AF.FC_US_AOA()
	local lRadToDCSsignd	= math.pi
	local lAoA				= LoGetAngleOfAttack()						-- ANGLE OF ATTACK AoA (Radian)
--ExportScript.Tools.WriteToLog('lAoA 1: '..ExportScript.Tools.dump(lAoA))
	lAoA = (lAoA / 0.3) + 0.38
	--lAoA = ((lAoA / lRadToDCSsignd) * 10) + 0.38
	--[[
	lAoA = lAoA / (lRadToDCSsignd / 10)
	if lAoA >= 0.0 then
		lAoA = lAoA + 0.4
		lAoA = lAoA / 18
	else
		lAoA = lAoA + 0.4
		lAoA = lAoA / 12
	end
	]]
--ExportScript.Tools.WriteToLog('lAoA 2: '..ExportScript.Tools.dump(lAoA))
	ExportScript.Tools.SendData(50, string.format("%.4f", lAoA) )
end

-- Accelerometer (GLoad) for A-10A, F-15C
function ExportScript.AF.FC_US_GLOAD()
	local lAccelerationUnits		= LoGetAccelerationUnits().y							-- G-LOAD

	lAccelerationUnits  = (lAccelerationUnits / 15) + 0.33

	ExportScript.Tools.SendData(25, string.format("%.4f", lAccelerationUnits))
	ExportScript.Tools.SendData(26, 0)
	ExportScript.Tools.SendData(27, 0)
end

-- US Clock for A-10A, F-15C
function ExportScript.AF.FC_US_Clock()
    local lCurrentClock			= LoGetMissionStartTime() + LoGetModelTime()  -- in seconds
	local lCurrentHours			= lCurrentClock / 43200 -- (3600 * 12)
	lCurrentHours				= lCurrentHours - ExportScript.Tools.round(lCurrentHours, 0, "floor")
	local lCurrentMinutes		= lCurrentClock / 3600  -- (60 * 60)
	lCurrentMinutes				= lCurrentMinutes - ExportScript.Tools.round(lCurrentMinutes, 0, "floor")
	local lCurrentSeconds		= lCurrentClock / 60
	lCurrentSeconds				= lCurrentSeconds - ExportScript.Tools.round(lCurrentSeconds, 0, "floor")
	-- currtime_hours {0.0,1.0}
	-- currtime_minutes {0.0,1.0}
	-- currtime_seconds {0.0,1.0}

    ExportScript.Tools.SendData(28, string.format("%.4f", lCurrentHours))
    ExportScript.Tools.SendData(29, string.format("%.4f", lCurrentMinutes))
    ExportScript.Tools.SendData(30, string.format("%.4f", lCurrentSeconds))
end

-- US Standby Compass for A-10A, F-15C
function ExportScript.AF.FC_US_Compass()
	local lDefaultNull	= 0.0
	local lHeading		= math.deg(LoGetSelfData().Heading)			-- HEADING (Radian to Grad)
	--local lHeading		= math.deg(LoGetMagneticYaw())			-- HEADING (Radian to Grad)
	--lHeading = 360 - lHeading		-- muss umgerechnet werden??
	local lPitch		= LoGetSelfData().Pitch			-- Pitch
	local lBank			= LoGetSelfData().Bank			-- Bank

	--[[
	y_min = 1.0		-- minimaler Ausgabewert
	y_max = -1.0	-- maximaler Ausgabewert
	x_min = 0.0		-- minimaler Eingangswert
	x_max = 360.00	-- maximaler Eingangswert 
	x = 185.5		-- aktueller Eingangswert 

	d_y = -2.0								-- Delta Ausgabewerte (y_max - y_min)
	d_x = 360.0		-- Delta Eingangswerte (x_max - x_min)
	m = -0,00555555555555555555555555555556	-- Steigung der linearen Funktion (d_y / d_x)
	n = 1.0	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

	y = 0.4995680345615518	-- Ergebnis (m * x + n)
	]]
	lHeading = -0.00555555555555555555555555555556 * lHeading + 1.0

    ExportScript.Tools.SendData(31, string.format("%.4f", lHeading))		-- heading
    ExportScript.Tools.SendData(32, string.format("%.4f", lDefaultNull))	-- bank
    ExportScript.Tools.SendData(33, string.format("%.4f", lDefaultNull))	-- pitch
end

-- US F-15C Exaust Gas Temperature
function ExportScript.AF.FC_F15C_ExaustGasTemp(value, exportidNeedle, exportid100, exportid10, exportid1)
	local lValue			= value				or 1
	local lExportIDNeedle	= exportidNeedle	or 0
	local lExportID100		= exportid100		or 0
	local lExportID10		= exportid10		or 0
	local lExportID1		= exportid1			or 0
	local lValueTmp			= lValue

	local lCounter		= {[0] = 0.0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = 0.9}
	local lCounter3 	= 0
	local lValueTmp2	= lValueTmp

	lValueTmp2			= lValueTmp2 / 100
	lValueTmp2			= string.format("%02d", lValueTmp2)

	if lValueTmp > 100 then
		lCounter3 		= (lValueTmp - (ExportScript.Tools.round(lValueTmp / 100, 0, "floor") * 100)) * 0.01
	else
		lCounter3 		= lValueTmp * 0.01
	end

	--[[
	y_min = 0.0		0.08	-- minimaler Ausgabewert
	y_max = 0.08	1.0		-- maximaler Ausgabewert
	x_min = 0		200		-- minimaler Eingangswert
	x_max = 200		1400	-- maximaler Eingangswert
	x = 100			650		-- aktueller Eingangswert

	d_y = 0.08		0.92	-- Delta Ausgabewerte (y_max - y_min)
	d_x = 200		1200	-- Delta Eingangswerte (x_max - x_min)
	m = 0.0004		7.6666666666666666666666666666667e-4	-- Steigung der linearen Funktion (d_y / d_x)
	n = 0			-0.07333333333333333333333333333333		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
	
	y = 0.04		0,425	-- Ergebnis (m * x + n)
	]]

	if lValueTmp > 200 then
		lValue 		= 7.6666666666666666666666666666667e-4 * lValueTmp + -0.07333333333333333333333333333333
	else
		lValue 		= 0.0004 * lValueTmp
	end

    ExportScript.Tools.SendData(lExportIDNeedle, string.format("%.4f", lValue))
    ExportScript.Tools.SendData(lExportID100,    string.format("%.2f", lCounter[tonumber(string.sub(lValueTmp2, 1, 1))]))
    ExportScript.Tools.SendData(lExportID10,     string.format("%.2f", lCounter[tonumber(string.sub(lValueTmp2, 2, 2))]))
    ExportScript.Tools.SendData(lExportID1,      string.format("%.2f", lCounter3))
end

-- A-10A Exaust Gas Temperature
function ExportScript.AF.FC_A10A_ExaustGasTemp(value, exportidMain, exportidSecond)
	local lValue			= value				or 1
	local lExportIDMain		= exportidMain		or 0
	local lExportIDSecond	= exportidSecond	or 0
	local lValueTmp			= lValue

	--[[
	y_min = 0.0		-- minimaler Ausgabewert
	y_max = 1.0		-- maximaler Ausgabewert
	x_min = 100.0	-- minimaler Eingangswert
	x_max = 1100.00	-- maximaler Eingangswert 
	x = 605.5		-- aktueller Eingangswert 

	d_y = 1.0		-- Delta Ausgabewerte (y_max - y_min)
	d_x = 1000.0	-- Delta Eingangswerte (x_max - x_min)
	m = 0.001	-- Steigung der linearen Funktion (d_y / d_x)
	n = -0.1	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

	y = 0.5055	-- Ergebnis (m * x + n)
	]]
	lValue = 0.001 * lValue + -0.1

	local lv1, lValueTmp = math.modf(lValueTmp / 100) -- 100 = Secound Scala

	ExportScript.Tools.SendData(lExportIDMain,   string.format("%.4f", lValue))
	ExportScript.Tools.SendData(lExportIDSecond, string.format("%.4f", lValueTmp))
end

-- Gauges with 2 needles (small and large), 
-- for example:
-- A-10A RPM Engine
-- Su-27/33 Exthaus Gas Temperature 1.200GradC
function ExportScript.AF.FC_TwoNeedlesGauge(value, mainscala, secondscale, exportidMain, exportidSecond)
	local lValue			= value				or 1
	local lMainScala		= mainscala			or 100
	local lSecondScale		= secondscale		or 10
	local lExportIDMain		= exportidMain		or 0
	local lExportIDSecond	= exportidSecond	or 0
	local lValueTmp			= lValue

	lValue = lValue / lMainScala
	lValue = (lValue > 1.0 and 1.0 or lValue)	-- the result is limited to 1.0

	--lValueTmp = lValueTmp - (ExportScript.Tools.round((lValueTmp / lSecondScale), 0, "floor") * lSecondScale)
	--lValueTmp = lValueTmp / lSecondScale
	--lValueTmp = (lValueTmp > 1.0 and 1.0 or lValueTmp)      -- the result is limited to 1.0
	local lv1, lValueTmp = math.modf(lValueTmp / lSecondScale)

	ExportScript.Tools.SendData(lExportIDMain,   string.format("%.4f", lValue))
	ExportScript.Tools.SendData(lExportIDSecond, string.format("%.4f", lValueTmp))
end

-- Gauges with 1 needle, 
-- for example:
-- A-10A RPM FAN, RPM APU, Exaust Gas Temperature APU, Fuel Flow, Oil Pressure, Hydraulic Pressure
-- F-15C Oil Pressure, Hydraulic Pressure, Engine Exhaust Nozzle Position Indicator
-- Su-25A/T, Russian Hydraulic Pressure Gauges
function ExportScript.AF.FC_OneNeedleGauge(value, scala, exportid)
	local lValue	= value		or 1
	local lScala	= scala		or 100
	local lExportID	= exportid	or 0

	lValue = lValue / lScala
	lValue = (lValue > 1.0 and 1.0 or lValue)	-- the result is limited to 1.0

	ExportScript.Tools.SendData(lExportID, string.format("%.4f", lValue))
end

-- Gauges with 1 needle and 2 digits display
-- for example:
-- 
function ExportScript.AF.FC_OneNeedleGauge2Digits(value, scala, fixdigits, exportid)
	local lValue		= value			or 1
	local lScala		= scala			or 100
	local lExportID		= exportid		or 1
	local lFixDigits	= fixdigits		or 0
	local lValueTmp		= lValue
	
	--local lCounter	= {[0] = 0.0, [1] = 0.11, [2] = 0.22, [3] = 0.33, [4] = 0.44, [5] = 0.55, [6] = 0.66, [7] = 0.77, [8] = 0.88, [9] = 0.99}
	local lCounter		= {[0] = 0.0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = 0.9}
	
	local lCounter1 = 0
	local lCounter2 = 0
	local lFormat	= 2 - lFixDigits
	lFormat			= "%0"..lFormat.."d"

	local lValueTmp2 = string.format(lFormat, lValueTmp)
	--[[
	if lValueTmp > 10 then
		if lValueTmp > 100 then
			lCounter1 = (ExportScript.Tools.round((lValueTmp - (ExportScript.Tools.round(lValueTmp / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.1
		else
			lCounter1 = (lValueTmp / 10) * 0.1
			lCounter1 = lCounter2 - ExportScript.Tools.round(lCounter2, 0, "floor")
		end
	end]]
	if lValueTmp > 10 then
		lCounter2 = (lValueTmp - (ExportScript.Tools.round(lValueTmp / 10, 0, "floor") * 10)) * 0.1
	else
		lCounter2 = lValueTmp * 0.1
	end


	lValue = lValue / lScala
	lValue = (lValue > 1.0 and 1.0 or lValue)	-- the result is limited to 1.0

	SendData(lExportID, string.format("%.4f;%.2f;%.2f", 
									lValue,
									lCounter[tonumber(string.sub(lValueTmp2, 1, 1))],
									lCounter2))
end

-- Gauges with 1 needle and 3 digits display
-- for example:
-- F-15C RPM, Fuel Flow
function ExportScript.AF.FC_OneNeedleGauge3Digits_alt(value, scala, fixdigits, exportidNeedle, exportid100, exportid10, exportid1)
	local lValue			= value				or 1
	local lScala			= scala				or 100
	local lExportidNeedle	= exportidNeedle	or 0
	local lExportid100		= exportid100		or 0
	local lExportid10		= exportid10		or 0
	local lExportid1		= exportid1			or 0
	local lFixDigits		= fixdigits			or 0
	local lValueTmp			= lValue

	local lCounter	= {[0] = 0.0, [1] = 0.11, [2] = 0.22, [3] = 0.33, [4] = 0.44, [5] = 0.55, [6] = 0.66, [7] = 0.77, [8] = 0.88, [9] = 0.99}
	--local lCounter		= {[0] = 0.0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = 0.9}

	local lCounter3 	= 0
	local lValueTmp2	= lValueTmp

	if lFixDigits > 0 then
		lValueTmp2 = lValueTmp2 / math.pow(10, lFixDigits)
	end

	lValueTmp2			= string.format("%03d", lValueTmp2)

	if lValueTmp > 1000 then
		lCounter3 = (lValueTmp - (ExportScript.Tools.round(lValueTmp / 1000, 0, "floor") * 1000)) * math.pow(0.1, lFixDigits + 1) --0.1
	else
		lCounter3 = lValueTmp * math.pow(0.1, lFixDigits + 1) --0.1
	end

	lValue = lValue / lScala
	lValue = (lValue > 1.0 and 1.0 or lValue)	-- the result is limited to 1.0

    ExportScript.Tools.SendData(lExportIDNeedle, string.format("%.4f", lValue))
    ExportScript.Tools.SendData(lExportID100,    string.format("%.2f", lCounter[tonumber(string.sub(lValueTmp2, 1, 1))]))
    ExportScript.Tools.SendData(lExportID10,     string.format("%.2f", lCounter[tonumber(string.sub(lValueTmp2, 2, 2))]))
    ExportScript.Tools.SendData(lExportID1,      string.format("%.2f", lCounter3))
end

-- Gauges with 1 needle and 3 digits display
-- for example:
-- F-15C RPM, Fuel Flow
function ExportScript.AF.FC_OneNeedleGauge3Digits(value, scala, fixdigits, exportidNeedle, exportid100, exportid10, exportid1)
	local lValue			= value				or 1
	local lScala			= scala				or 100
	local lFixDigits		= fixdigits			or 0
	--local lExportidNeedle	= exportidNeedle	or 0
	--local lExportid100		= exportid100		or 0
	--local lExportid10		= exportid10		or 0
	--local lExportid1		= exportid1			or 0

	local lValueTmp			= lValue
	local lFactor			= string.len(tostring(lScala)) - 2
	lFactor =  math.pow(10, lFactor)

	local lCounter		= {[0] = 0.0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = 0.9}
	
	local lValueTmp2	= lValueTmp

	if lFixDigits > 0 then
		lValueTmp2 = lValueTmp2 / math.pow(10, lFixDigits)
	end

	lValueTmp2			= string.format("%03d", lValueTmp2)

	local lv1, lCounter3 = math.modf(lValueTmp / lFactor)

	lValue = lValue / lScala
	lValue = (lValue > 1.0 and 1.0 or lValue)	-- the result is limited to 1.0

    ExportScript.Tools.SendData(exportidNeedle, string.format("%.4f", lValue))
    ExportScript.Tools.SendData(exportid100,    string.format("%.2f", lCounter[tonumber(string.sub(lValueTmp2, 1, 1))]))
    ExportScript.Tools.SendData(exportid10,     string.format("%.2f", lCounter[tonumber(string.sub(lValueTmp2, 2, 2))]))
    ExportScript.Tools.SendData(exportid1,      string.format("%.2f", lCounter3))
end

-- Gauges with 1 needle and 4 digits display
-- for example:
-- 
function ExportScript.AF.FC_OneNeedleGauge4Digits(value, scala, fixdigits, exportid)
	local lValue		= value			or 1
	local lScala		= scala			or 100
	local lExportID		= exportid		or 1
	local lFixDigits	= fixdigits		or 0
	local lValueTmp		= lValue
	
	--local lCounter	= {[0] = 0.0, [1] = 0.11, [2] = 0.22, [3] = 0.33, [4] = 0.44, [5] = 0.55, [6] = 0.66, [7] = 0.77, [8] = 0.88, [9] = 0.99}
	local lCounter		= {[0] = 0.0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = 0.9}
	
	local lCounter1 = 0
	local lCounter2 = 0
	local lCounter3 = 0
	local lCounter4 = 0
	local lValueTmp2	= lValueTmp
	if lFixDigits > 0 then
		lValueTmp2 = lValueTmp2 / math.pow(10, lFixDigits)
	end
	lValueTmp2			= string.format("%04d", lValueTmp2)
	--[[
	if lValueTmp > 10000 then
		lCounter1 = ExportScript.Tools.round((lValueTmp / 1000), 0, "floor") * 0.1
		lCounter1 = lCounter1 - ExportScript.Tools.round(lCounter1, 0, "floor")
	end
	if lValueTmp > 1000 then
		if lValueTmp > 100 then
			lCounter2 = (ExportScript.Tools.round((lValueTmp - (ExportScript.Tools.round(lValueTmp / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.1
		else
			lCounter2 = (lValueTmp / 10) * 0.1
			lCounter2 = lCounter2 - ExportScript.Tools.round(lCounter2, 0, "floor")
		end
	end
	if lValueTmp > 100 then
		if lValueTmp > 10 then
			lCounter3 = (ExportScript.Tools.round((lValueTmp - (ExportScript.Tools.round(lValueTmp / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.1
		else
			lCounter3 = (lValueTmp / 10) * 0.1
			lCounter3 = lCounter3 - ExportScript.Tools.round(lCounter3, 0, "floor")
		end
	end]]
	if lValueTmp > 10 then
		lCounter4 = (lValueTmp - (ExportScript.Tools.round(lValueTmp / 10, 0, "floor") * 10)) * 0.1
	else
		lCounter4 = lValueTmp * 0.1
	end


	lValue = lValue / lScala
	lValue = (lValue > 1.0 and 1.0 or lValue)	-- the result is limited to 1.0

	SendData(lExportID, string.format("%.4f;%.2f;%.2f;%.2f;%.2f", 
									lValue,
									lCounter[tonumber(string.sub(lValueTmp2, 1, 1))],
									lCounter[tonumber(string.sub(lValueTmp2, 2, 2))],
									lCounter[tonumber(string.sub(lValueTmp2, 3, 3))],
									lCounter4))
end

-- Engine Lamps, Start and Afterburner
-- with Workaround for engine start-up on Su-27/33

function ExportScript.AF.FC_EngineLamps_SU2733(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"

	local lEngineInfo = LoGetEngineInfo()
	local lLeftEngineStart  = 0
	local lRightEngineStart = 0
	
	if lEngineInfo == nil then
		return
	end
	--ExportScript.Tools.WriteToLog('lEngineInfo: '..ExportScript.Tools.dump(lEngineInfo))

	if ExportScript.AF.LeftEngineOn == false then
		if (lEngineInfo.RPM.left > 0.1 and lEngineInfo.RPM.left < 49.0) then
			lLeftEngineStart = 1
		end
		if lEngineInfo.RPM.left > 49.0 then
			ExportScript.AF.LeftEngineOn = true
		end
	elseif ExportScript.AF.LeftEngineOn == true then
		if lEngineInfo.RPM.left < 0.1 then
			ExportScript.AF.LeftEngineOn = false
		end
	end

	if ExportScript.AF.RightEngineOn == false then
		if (lEngineInfo.RPM.right > 0.1 and lEngineInfo.RPM.right < 49.0) then
			lRightEngineStart = 1
		end
		if lEngineInfo.RPM.right > 49.0 then
			ExportScript.AF.RightEngineOn = true
		end
	elseif ExportScript.AF.RightEngineOn == true then
		if lEngineInfo.RPM.right < 0.1 then
			ExportScript.AF.RightEngineOn = false
		end
	end	

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		--ExportScript.Tools.SendData(728, lEngineInfo.EngineStart.left ) -- lamp start left engine (0|1)
		--ExportScript.Tools.SendData(729, lEngineInfo.EngineStart.right ) -- lamp start right engine (0|1)
		ExportScript.Tools.SendData(728, lLeftEngineStart  ) -- lamp start left engine (0|1)
		ExportScript.Tools.SendData(729, lRightEngineStart ) -- lamp start right engine (0|1)
	
		ExportScript.Tools.SendData(730, (lEngineInfo.RPM.left  > 99.8 and 1 or 0) ) -- lamp after burner left engine
		ExportScript.Tools.SendData(731, (lEngineInfo.RPM.right > 99.8 and 1 or 0) ) -- lam after burner right engine
	end
	
	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		--ExportScript.Tools.SendDataDAC("728", lEngineInfo.EngineStart.left ) -- lamp start left engine (0|1)
		--ExportScript.Tools.SendDataDAC("729", lEngineInfo.EngineStart.right ) -- lamp start right engine (0|1)
		ExportScript.Tools.SendDataDAC("728", lLeftEngineStart ) -- lamp start left engine (0|1)
		ExportScript.Tools.SendDataDAC("729", lRightEngineStart ) -- lamp start right engine (0|1)

		ExportScript.Tools.SendDataDAC("730", (lEngineInfo.RPM.left  > 99.8 and 1 or 0) ) -- lamp after burner left engine
		ExportScript.Tools.SendDataDAC("731", (lEngineInfo.RPM.right > 99.8 and 1 or 0) ) -- lam after burner right engine
	end
end


-- Engine Lamps, Start and Afterburner
-- MiG29A/G/S

function ExportScript.AF.FC_EngineLamps_MiG29(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"

	local lEngineInfo = LoGetEngineInfo()
	local lLeftEngineStart  = 0
	local lRightEngineStart = 0
	
	if lEngineInfo == nil then
		return
	end
	--ExportScript.Tools.WriteToLog('lEngineInfo: '..ExportScript.Tools.dump(lEngineInfo))

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		ExportScript.Tools.SendData(728, lEngineInfo.EngineStart.left ) -- lamp start left engine (0|1)
		ExportScript.Tools.SendData(729, lEngineInfo.EngineStart.right ) -- lamp start right engine (0|1)
	
		ExportScript.Tools.SendData(730, (lEngineInfo.RPM.left  > 100 and 1 or 0) ) -- lamp after burner left engine
		ExportScript.Tools.SendData(731, (lEngineInfo.RPM.right > 100 and 1 or 0) ) -- lam after burner right engine
	end
	
	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC("728", lEngineInfo.EngineStart.left ) -- lamp start left engine (0|1)
		ExportScript.Tools.SendDataDAC("729", lEngineInfo.EngineStart.right ) -- lamp start right engine (0|1)

		ExportScript.Tools.SendDataDAC("730", (lEngineInfo.RPM.left  > 100 and 1 or 0) ) -- lamp after burner left engine
		ExportScript.Tools.SendDataDAC("731", (lEngineInfo.RPM.right > 100 and 1 or 0) ) -- lam after burner right engine
	end
end

-- Auxiliary Functions for Hardware export

function ExportScript.AF.FC_SPO15RWR(FunctionTyp)
-- The RWR display indicates any threat radars illuminating ("painting") the aircraft. 
-- Information is presented as symbols representing the type and direction to the threat. 
-- Six illuminated symbols at the bottom of the display notify the pilot of the threat radar type. 
-- The system indicates both enemy and friendly radars
--
--[[
LoGetTWSInfo() -- return Threat Warning System status (result  the table )
result_of_LoGetTWSInfo =
{
        Mode = , -- current mode (0 - all ,1 - lock only,2 - launch only
        Emitters = {table of emitters}
}
emitter_table =
{
        ID =, -- world ID
        Type = {level1,level2,level3,level4}, -- world database classification of emitter
        Power =, -- power of signal
        Azimuth =,
        Priority =,-- priority of emitter (int)
        SignalType =, -- string with vlues: "scan" ,"lock", "missile_radio_guided","track_while_scan";
}]]

	local lFunctionTyp = FunctionTyp or "Ikarus"
	local lTWSInfo = LoGetTWSInfo() -- SPO15 Information
	if lTWSInfo == nil then
		return
	end
	--ExportScript.Tools.WriteToLog('lTWSInfo: '..ExportScript.Tools.dump(lTWSInfo))
	--[[
	[Emitters] = {
        [1] = {
            [Type] = {
                [level3] = number: "105"
                [level1] = number: "2"
                [level4] = number: "46"
                [level2] = number: "16"
            }
            [Azimuth] = number: "1.8300691843033"
            [Power] = number: "0.92326503992081"
            [ID] = number: "16777472"
            [Priority] = number: "230.92445373535"
            [SignalType] = string: "lock"
        }
        [2] = {
            [Type] = {
                [level3] = number: "101"
                [level1] = number: "2"
                [level4] = number: "39"
                [level2] = number: "16"
            }
            [Azimuth] = number: "2.6759564876556"
            [Power] = number: "0.90609884262085"
            [ID] = number: "16777728"
            [Priority] = number: "140.90609741211"
            [SignalType] = string: "scan"
        }
    }
    [Mode] = number: "0"
	]]

	if ExportScript.AF.EventNumberFC_SPO15RWR == nil then
		ExportScript.AF.EventNumberFC_SPO15RWR = 0
	end 

	if(ExportScript.AF.EventNumberFC_SPO15RWR < ExportScript.AF.EventNumber) then
		ExportScript.AF.EventNumberFC_SPO15RWR = ExportScript.AF.EventNumber
		
		local lPriorityTmp		= 0
		local lPrimaryThreatTmp	= 0
		
		if ExportScript.AF.SPO15RWRData == nil then
			ExportScript.AF.SPO15RWRData = {}
			
			ExportScript.AF.SPO15RWRData[400] = 1	-- Power light
		end
		
		-- 10 x for Secondary Thread direction
		ExportScript.AF.SPO15RWRData[451]=0
		ExportScript.AF.SPO15RWRData[452]=0
		ExportScript.AF.SPO15RWRData[453]=0
		ExportScript.AF.SPO15RWRData[454]=0
		ExportScript.AF.SPO15RWRData[455]=0
		ExportScript.AF.SPO15RWRData[456]=0
		ExportScript.AF.SPO15RWRData[457]=0
		ExportScript.AF.SPO15RWRData[458]=0
		ExportScript.AF.SPO15RWRData[459]=0
		ExportScript.AF.SPO15RWRData[460]=0
		
		if(#lTWSInfo.Emitters > 0) then

			ExportScript.AF.SPO15_FoundErmitter = true
			
			for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
				if(lTWSInfo.Emitters[EmitterIndex].Priority > lPriorityTmp) then
					lPriorityTmp      = lTWSInfo.Emitters[EmitterIndex].Priority
					lPrimaryThreatTmp = EmitterIndex
				end
			end
			
			for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do

				local lAzimut = ExportScript.Tools.round(lTWSInfo.Emitters[EmitterIndex].Azimuth * 90, 1)
				
				if EmitterIndex == lPrimaryThreatTmp then
					-- primary threat
					-- direction to the threat
					ExportScript.AF.SPO15RWRData[401] = (lAzimut <= -170.0 and 1 or 0) -- left back side
					ExportScript.AF.SPO15RWRData[402] = ((lAzimut <= -90.0  and lAzimut >= -170.0 ) and 1 or 0) -- left 90 degree
					ExportScript.AF.SPO15RWRData[403] = ((lAzimut <= -55.0  and lAzimut >= -125.0 ) and 1 or 0) -- left 50 degree
					ExportScript.AF.SPO15RWRData[404] = ((lAzimut <= -30.0  and lAzimut >= -70.0  ) and 1 or 0) -- left 30 degree
					ExportScript.AF.SPO15RWRData[405] = ((lAzimut <=  5.0   and lAzimut >= -40.0  ) and 1 or 0) -- left 10 degree
					ExportScript.AF.SPO15RWRData[406] = ((lAzimut >= -5.0   and lAzimut <=  40.0  ) and 1 or 0) -- right 10 degree
					ExportScript.AF.SPO15RWRData[407] = ((lAzimut >=  30.0  and lAzimut <=  70.0  ) and 1 or 0) -- right 30 degree
					ExportScript.AF.SPO15RWRData[408] = ((lAzimut >=  55.0  and lAzimut <= 125.0  ) and 1 or 0) -- right 50 degree
					ExportScript.AF.SPO15RWRData[409] = ((lAzimut >=  90.0  and lAzimut <= 170.0  ) and 1 or 0) -- right 90 degree
					ExportScript.AF.SPO15RWRData[410] = (lAzimut >= 170.0 and 1 or 0) -- right back side
					
					-- power of the threat
					local lPower = ExportScript.Tools.round(lTWSInfo.Emitters[EmitterIndex].Power * 15, 0, "ceil") + 1
					--WriteToLog("lPower: "..lPower)
					ExportScript.AF.SPO15RWRData[411] = (lPower <= 1  and 0 or 1) -- 1. power lamp
					ExportScript.AF.SPO15RWRData[412] = (lPower <= 2  and 0 or 1) -- 2. power lamp
					ExportScript.AF.SPO15RWRData[413] = (lPower <= 3  and 0 or 1) -- 3. power lamp
					ExportScript.AF.SPO15RWRData[414] = (lPower <= 4  and 0 or 1) -- 4. power lamp
					ExportScript.AF.SPO15RWRData[415] = (lPower <= 5  and 0 or 1) -- 5. power lamp
					ExportScript.AF.SPO15RWRData[416] = (lPower <= 6  and 0 or 1) -- 6. power lamp
					ExportScript.AF.SPO15RWRData[417] = (lPower <= 7  and 0 or 1) -- 7. power lamp
					ExportScript.AF.SPO15RWRData[418] = (lPower <= 8  and 0 or 1) -- 8. power lamp
					ExportScript.AF.SPO15RWRData[419] = (lPower <= 9  and 0 or 1) -- 9. power lamp
					ExportScript.AF.SPO15RWRData[420] = (lPower <= 10 and 0 or 1) -- 10. power lamp
					ExportScript.AF.SPO15RWRData[421] = (lPower <= 11 and 0 or 1) -- 11. power lamp
					ExportScript.AF.SPO15RWRData[422] = (lPower <= 12 and 0 or 1) -- 12. power lamp
					ExportScript.AF.SPO15RWRData[423] = (lPower <= 13 and 0 or 1) -- 13. power lamp
					ExportScript.AF.SPO15RWRData[424] = (lPower <= 14 and 0 or 1) -- 14. power lamp
					ExportScript.AF.SPO15RWRData[425] = (lPower <= 15 and 0 or 1) -- 15. power lamp
					
					-- type of the threat
					local lPrimaryTypeTmp = ExportScript.AF.FindRadarTypeForSPO15(lTWSInfo, lPrimaryThreatTmp)
					ExportScript.AF.SPO15RWRData[430] = (lPrimaryTypeTmp.AIR == 1 and 1 or 0)	-- primary Air or Weapon
					ExportScript.AF.SPO15RWRData[431] = (lPrimaryTypeTmp.LRR == 1 and 1 or 0)	-- long range radar
					ExportScript.AF.SPO15RWRData[432] = (lPrimaryTypeTmp.MRR == 1 and 1 or 0)	-- mid range radar
					ExportScript.AF.SPO15RWRData[433] = (lPrimaryTypeTmp.SRR == 1 and 1 or 0)	-- short range radar
					ExportScript.AF.SPO15RWRData[434] = (lPrimaryTypeTmp.EWR == 1 and 1 or 0)	-- EWR
					ExportScript.AF.SPO15RWRData[435] = (lPrimaryTypeTmp.AWACS == 1 and 1 or 0)	-- AWACS
					
					-- look or missil on air
					if lPrimaryTypeTmp.Lock == 0.1 then
						ExportScript.AF.SPO15RWRData[440] = 0
						ExportScript.AF.SPO15RWRData[441] = 1 -- blinking lights on
					elseif lPrimaryTypeTmp.Lock == 0.2 then
						ExportScript.AF.SPO15RWRData[440] = 1
						ExportScript.AF.SPO15RWRData[441] = 0 -- blinking lights off
					end
					-- hemisphere
					ExportScript.AF.SPO15RWRData[442] = lPrimaryTypeTmp.TopHemisphere	-- top hemisphere
					ExportScript.AF.SPO15RWRData[443] = lPrimaryTypeTmp.BottomHemisphere	-- bottom hemisphere
					
					lPrimaryTypeTmp = nil
				end

				ExportScript.AF.SPO15RWR_SendData(451, lAzimut <= -170.0) -- left back side
				ExportScript.AF.SPO15RWR_SendData(452, (lAzimut <= -90.0  and lAzimut >= -170.0 )) -- left 90 degree
				ExportScript.AF.SPO15RWR_SendData(453, (lAzimut <= -55.0  and lAzimut >= -125.0 )) -- left 50 degree
				ExportScript.AF.SPO15RWR_SendData(454, (lAzimut <= -30.0  and lAzimut >= -70.0  )) -- left 30 degree
				ExportScript.AF.SPO15RWR_SendData(455, (lAzimut <=  5.0   and lAzimut >= -40.0  )) -- left 10 degree
				ExportScript.AF.SPO15RWR_SendData(456, (lAzimut >= -5.0   and lAzimut <=  40.0  )) -- right 10 degree
				ExportScript.AF.SPO15RWR_SendData(457, (lAzimut >=  30.0  and lAzimut <=  70.0  )) -- right 30 degree
				ExportScript.AF.SPO15RWR_SendData(458, (lAzimut >=  55.0  and lAzimut <= 125.0  )) -- right 50 degree
				ExportScript.AF.SPO15RWR_SendData(459, (lAzimut >=  90.0  and lAzimut <= 170.0  )) -- right 90 degree
				ExportScript.AF.SPO15RWR_SendData(460, lAzimut >= 170.0) -- right back side
			end

			-- type of the secondary threat
			local lSecondaryTypeTmp = ExportScript.AF.FindRadarTypeForSPO15(lTWSInfo)
			ExportScript.AF.SPO15RWRData[470] = (lSecondaryTypeTmp.AIR == 1 and 1 or 0)	-- secondary Air or Weapon
			ExportScript.AF.SPO15RWRData[471] = (lSecondaryTypeTmp.LRR == 1 and 1 or 0)	-- long range radar
			ExportScript.AF.SPO15RWRData[472] = (lSecondaryTypeTmp.MRR == 1 and 1 or 0)	-- mid range radar
			ExportScript.AF.SPO15RWRData[473] = (lSecondaryTypeTmp.SRR == 1 and 1 or 0)	-- short range radar
			ExportScript.AF.SPO15RWRData[474] = (lSecondaryTypeTmp.EWR == 1 and 1 or 0)	-- EWR
			ExportScript.AF.SPO15RWRData[475] = (lSecondaryTypeTmp.AWACS == 1 and 1 or 0)	-- AWACS
			lSecondaryTypeTmp = nil
			
			
			if ExportScript.Config.IkarusExport then
				-- Lock
				ExportScript.AF.SPO15RWRData[444] = 0  -- off
				if ExportScript.AF.SPO15RWRData[440] == 1 then
					ExportScript.AF.SPO15RWRData[444] = 1	-- Lock
				elseif ExportScript.AF.SPO15RWRData[441] == 1 then
					ExportScript.AF.SPO15RWRData[444] = 0.5	-- Missle on air
				end
				
				-- Ermitter Power Triangle
				if ExportScript.AF.SPO15RWRData[411] == 1 then
					ExportScript.AF.SPO15RWRData[426] = 1
				else
					ExportScript.AF.SPO15RWRData[426] = 0
				end
			end
			
		else
			lPriorityTmp      = 0
			lPrimaryThreatTmp = 0

			if ExportScript.AF.SPO15_FoundErmitter == nil or ExportScript.AF.SPO15_FoundErmitter then
				ExportScript.AF.SPO15RWR_Reset(401, 480)
			end
		end
	end
	
	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		if ExportScript.AF.SPO15RWRData ~= nil then
			for key, value in pairs(ExportScript.AF.SPO15RWRData) do
				ExportScript.Tools.SendData(key, value)
			end
		end
	end
	
	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		if ExportScript.AF.SPO15RWRData ~= nil then
			for key, value in pairs(ExportScript.AF.SPO15RWRData) do
				ExportScript.Tools.SendDataDAC(key, value)
			end
		end
	end
	
	--[[
level: 2, 16, 101, 39
lNameByType: string: "hawk sr"

alle Level -> wsTypes.lua
oder
Nummer 101 -> AN-MPQ-51 HAWK SR.lua
Nummer 39  -> TechnicsTable.sht

lNameByType: string: "hawk sr" -> db_sensors.lua

	]]
end


-- Auxiliary Functions

function ExportScript.AF.FindRadarTypeForSPO15(lTWSInfo, PrimaryThreat)
	local lPrimaryThreat	= PrimaryThreat or 0
    local lReturn 			= {AIR = 0, LRR = 0, MRR = 0, SRR = 0, EWR = 0, AWACS = 0, Lock = 0, TopHemisphere = 0, BottomHemisphere = 0}

    for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
		if lPrimaryThreat ~= 0 then
			EmitterIndex = lPrimaryThreat
		end
		local lType = lTWSInfo.Emitters[EmitterIndex].Type
		--ExportScript.Tools.WriteToLog('level: '..lType.level1..', '..lType.level2..', '..lType.level3..', '..lType.level4)
		local lNameByType = LoGetNameByType(lType.level1, lType.level2, lType.level3, lType.level4) -- world database classification of emitter, args 4 (number : level1,level2,level3,level4), result string
		--ExportScript.Tools.WriteToLog('lNameByType: '..ExportScript.Tools.dump(lNameByType))

        -- threat type
		if (lType.level1 == 1 or lType.level1 == 4) and 
		not(lType.level4 == 26 or -- level4 26: A-50
		lType.level4 == 27 or -- level4 27: E-3
		lType.level4 == 41) then -- level4 41: E-2C
			lReturn.AIR = 1  -- primary Air or Weapon
		end

		if lNameByType ~= nil then 
			if lType.level1 == 2 or lType.level1 == 3 then
				-- ground or navy
				if lType.level2 == 16 then
					local lAn, lEn
					-- Ground SAM
					-- RU: s-300ps 64h6e sr,s-300ps 40b6m tr
					-- US: patriot str
					lAn, lEn = string.find("s-300ps 64h6e sr,s-300ps 40b6m tr,an/mpq-53,patriot str", lNameByType, 0, true)
					-- long range radar
					if lAn ~= nil then
						lReturn.LRR = 1
					end

					-- US: hawk sr,hawk tr
					-- Ru: s-300ps 40b6md sr,buk 9s18m1 sr,buk 9a310m1 ln,PATRIOT-RLS_P_1,MT-LB_P_1,kub 1s91 str
					-- PATRIOT-RLS_P_1 = SA-3 S-125 SR
					-- MT-LB_P_1 = SA-3-3 S-125 TR
					lAn, lEn = string.find("s-300ps 40b6md sr,buk 9s18m1 sr,buk 9a310m1 ln,PATRIOT-RLS_P_1,MT-LB_P_1,kub 1s91 str,hawk sr,hawk tr", lNameByType, 0, true)
					-- mid range radar
					if lAn ~= nil then
						lReturn.MRR = 1
					end

					-- US: M163 Vulcan,roland ads,roland radar,gepard
					-- RU: Dog Ear Radar,tor 9a331,tunguska 2c6m,osa 9a33 ln,shilka zsu-23-4
					lAn, lEn = string.find("M163 Vulcan,gepard,roland ads,roland radar,Dog Ear Radar,tor 9a331,tunguska 2c6m,osa 9a33 ln,shilka zsu-23-4", lNameByType, 0, true)
					-- short range radar
					if lAn ~= nil then
						lReturn.SRR = 1
					end
	--[[			if lType.level4 == 27 or -- Dog Ear Radar
					   lType.level4 == 31 or -- roland ads
					   lType.level4 == 32 or -- roland radar
					   lType.level4 == 38 then -- gepard
						lReturn.SRR = 1
					end
	]]
					-- RU: 1l13 ewr station,55g6 ewr station
					lAn, lEn = string.find("1l13 ewr station,55g6 ewr station", lNameByType, 0, true)
					-- EWR
					if lAn ~= nil then
						lReturn.EWR = 1
					end

				elseif lType.level2 == 12 then
					local lAn, lEn
					-- Ship
					-- RU Ships: Moscow,Piotr Velikiy,Rezky (Krivak-2)
					-- US Ships: FFG-7 Oliver H. Perry class,SG-47 Ticonderoga class
					lAn, lEn = string.find("Moscow,Piotr Velikiy,Rezky (Krivak-2),FFG-7 Oliver H. Perry class,SG-47 Ticonderoga class", lNameByType, 0, true)
					-- long range radar
					if lAn ~= nil then
						lReturn.LRR = 1
					end

					-- RU Ships: Albatros (Grisha-5),TAKR Kuznetsov,Molniya (Tarantul-3),Neustrashimy
					-- US Ships: CVN-70 Vinson
					lAn, lEn = string.find("Albatros (Grisha-5),TAKR Kuznetsov,Molniya (Tarantul-3),Neustrashimy,CVN-70 Vinson", lNameByType, 0, true)
					-- short range radar
					if lAn ~= nil then
						lReturn.SRR = 1
					end
				end
			elseif lType.level1 == 1 and lType.level2 == 1 and lType.level3 == 5 then 
				 if lType.level4 == 26 or lType.level4 == 27 or lType.level4 == 41 then
					-- AWACS
					-- level4 26: a-50
					-- level4 27: e-3a
					-- level4 41: e-2c hawkeye
					lReturn.AWACS = 1
				end
			end
		else -- if lNameByType == nil
			if lType.level1 == 2 or lType.level1 == 3 then
				-- ground or navy
				if lType.level2 == 16 then
					-- Ground SAM
					-- long range radar

					-- mid range radar
					if lType.level4 == 42 then -- SAM Hawk CWAR /MPQ-55
						lReturn.MRR = 1
					end

					-- short range radar
	--[[			if lType.level4 == 27 or -- Dog Ear Radar
					   lType.level4 == 31 or -- roland ads
					   lType.level4 == 32 or -- roland radar
					   lType.level4 == 38 then -- gepard
						lReturn.SRR = 1
					end
	]]

					-- EWR

				elseif lType.level2 == 12 then
					-- long range radar

					-- short range radar
				end
			elseif lType.level1 == 1 and lType.level2 == 1 and lType.level3 == 5 then 
				 if lType.level4 == 26 or lType.level4 == 27 or lType.level4 == 41 then
					-- AWACS
					-- level4 26: a-50
					-- level4 27: e-3a
					-- level4 41: e-2c hawkeye
					lReturn.AWACS = 1
				end
			end
		end
		-- primary threat handling only
		if lPrimaryThreat ~= 0 then
			if lTWSInfo.Emitters[lPrimaryThreat].SignalType == "lock" then
				-- look
				lReturn.Lock = 0.2
				
				lReturn.TopHemisphere    = 1 -- top hemisphere
				lReturn.BottomHemisphere = 1 -- bottom hemisphere
			elseif lTWSInfo.Emitters[lPrimaryThreat].SignalType == "missile_radio_guided" then
				-- Rocket on air
				lReturn.Lock = 0.1
			elseif lTWSInfo.Emitters[lPrimaryThreat].SignalType == "scan" then
				-- beep
			elseif lTWSInfo.Emitters[lPrimaryThreat].SignalType == "track_while_scan" then
				-- ???
			else
				lReturn.Lock = 0
			end

			local lErmitterObject		= LoGetObjectById(lTWSInfo.Emitters[lPrimaryThreat].ID)
			local lErmitterObjectAlt	= 0

			if lErmitterObject then
				lErmitterObjectAlt = lErmitterObject.LatLongAlt.Alt
			end

			local lSelfData		= LoGetSelfData()
			local lSelfDataAlt	= ExportScript.Tools.round(lSelfData.LatLongAlt.Alt, 0)

			if lErmitterObjectAlt and lSelfDataAlt then
			--ExportScript.Tools.WriteToLog('lErmitterObjectAlt: '..lErmitterObjectAlt..', lSelfDataAlt: '..lSelfDataAlt)
				if lErmitterObjectAlt > (lSelfDataAlt + 400) then
					lReturn.TopHemisphere    = 1 -- top hemisphere
				elseif lErmitterObjectAlt < (lSelfDataAlt - 400) then
					lReturn.BottomHemisphere = 1 -- bottom hemisphere
				else 
					lReturn.TopHemisphere    = 1 -- top hemisphere
					lReturn.BottomHemisphere = 1 -- bottom hemisphere
				end
			end

			lErmitterObject, lErmitterObjectAlt, lSelfData, lSelfDataAlt = nil

			break
		end
	end

   return lReturn
end

function ExportScript.AF.SPO15RWR_Reset(lMinId, lMaxID)
--ExportScript.Tools.WriteToLog('SPO15RWR_Reset')
	for lCounter = lMinId, lMaxID, 1 do
		ExportScript.AF.SPO15RWRData[lCounter] = 0
	end

	ExportScript.AF.SPO15_FoundErmitter = false
end

function ExportScript.AF.SPO15RWR_SendData(lKey, lValue)
--ExportScript.Tools.WriteToLog('SPO15RWR_SendData: '..ExportScript.Tools.dump(lKey)..', '..ExportScript.Tools.dump(lValue))
	if ExportScript.AF.SPO15RWRData[lKey] == 0 then
		if lValue then
			ExportScript.AF.SPO15RWRData[lKey] =  1
		end
	end
end

-- WeaponStatusPanel Reset for A-10A, F-15C
function ExportScript.AF.WeaponStatusPanel_Reset(lMinId, lMaxID)
--ExportScript.Tools.WriteToLog('WeaponStatusPanel_Reset')
	for lCounter = lMinId, lMaxID, 1 do
		ExportScript.Tools.SendDataDAC(lCounter, 0)
	end
end

function ExportScript.AF.WeaponStatusPanel_selectCurrentPayloadStation(_index)
	if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].CLSID == ExportScript.AF.PayloadInfo.Stations[_index].CLSID and ExportScript.AF.PayloadInfo.CurrentStation ~= _index then
		ExportScript.AF.TmpWeaponPanelActive[ExportScript.AF.TmpStationToPanel[_index].CurrentID] = 1
	end
end

function ExportScript.AF.WeaponStatusPanel_FindCannonContainer(_index)
	if ExportScript.AF.PayloadInfo.Stations[_index].weapon.level1 == 4 and 			-- weapon
	   ExportScript.AF.PayloadInfo.Stations[_index].weapon.level2 == 6 then			-- Shell
		ExportScript.AF.CannonContainer[_index] = ExportScript.AF.PayloadInfo.Stations[_index].CLSID
		ExportScript.AF.CannonContainer.counter = ExportScript.AF.CannonContainer.counter + 1
	end
end
