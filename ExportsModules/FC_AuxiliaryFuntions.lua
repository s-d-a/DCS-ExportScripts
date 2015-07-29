-- Flaming Cliffs Auxiliary Functons
-- Version 0.9.9

-- Weapon Panel for Su-25A and Su-25T
function FC_WeaponPanel_SU25(exportid)
	local lExportID = exportid or 14

	-- defination
	gES_PayloadInfo = LoGetPayloadInfo()
	if gES_PayloadInfo ~= nil then
		if gES_CurrentStationTmp == nil then
			gES_CurrentStationTmp = -1
		end
		if gES_CannonContainer == nil then	-- Find Cannon-Containers, aka SPPU_22
			gES_CannonContainer = {}
			gES_CannonContainer.counter = 0
			table.foreach(gES_PayloadInfo.Stations, WeaponStatusPanel_FindCannonContainer)
		end
		if gES_TmpWeaponPanelActive == nil then
			gES_TmpWeaponPanelActive = {[201] = 0, [202] = 0, [203] = 0, [204] = 0, [205] = 0, [206] = 0, [207] = 0, [208] = 0, [209] = 0, [210] = 0}
		end

		if gES_PayloadInfo.CurrentStation  > 0 and
			gES_CurrentStationTmp ~= gES_PayloadInfo.CurrentStation then
			gES_CurrentStationTmp  = gES_PayloadInfo.CurrentStation

			gES_TmpStationToPanel = {}
			gES_TmpStationToPanel[1] =  {Panel =  1, StationID = 101, CurrentID = 201 }	-- left
			gES_TmpStationToPanel[2] =  {Panel = 10, StationID = 110, CurrentID = 210 }	-- right
			gES_TmpStationToPanel[3] =  {Panel =  2, StationID = 102, CurrentID = 202 }
			gES_TmpStationToPanel[4] =  {Panel =  9, StationID = 109, CurrentID = 209 }
			gES_TmpStationToPanel[5] =  {Panel =  3, StationID = 103, CurrentID = 203 }
			gES_TmpStationToPanel[6] =  {Panel =  8, StationID = 108, CurrentID = 208 }
			gES_TmpStationToPanel[7] =  {Panel =  4, StationID = 104, CurrentID = 204 }
			gES_TmpStationToPanel[8] =  {Panel =  7, StationID = 107, CurrentID = 207 }
			gES_TmpStationToPanel[9] =  {Panel =  5, StationID = 105, CurrentID = 205 }
			gES_TmpStationToPanel[10] = {Panel =  6, StationID = 106, CurrentID = 206 }

			-- gES_TmpWeaponPanelActive reset
			for i = 201, 210, 1 do
				gES_TmpWeaponPanelActive[i] = 0
			end

			if gES_TmpStationToPanel[gES_PayloadInfo.CurrentStation] ~= nil then
				gES_TmpWeaponPanelActive[gES_TmpStationToPanel[gES_PayloadInfo.CurrentStation].CurrentID] = 1        -- currrent value

				table.foreach(gES_PayloadInfo.Stations, WeaponStatusPanel_selectCurrentPayloadStationGlassCockpit)   -- corresponding station
			end

		end

		local lMainGun = 1.0	-- Full max 250 Rounds "F"
		local lReserve = 1.0
		if gES_PayloadInfo.Cannon.shells == 0 then
			lMainGun = 0.0	-- transversely striped
			lReserve = 0.0	-- transversely striped
		elseif gES_PayloadInfo.Cannon.shells < 65 then
			lMainGun = 0.1	-- "E"
		elseif gES_PayloadInfo.Cannon.shells < 125 then
			lMainGun = 0.3	-- "1/2" -- "3/4"
		elseif gES_PayloadInfo.Cannon.shells < 187 then
			lMainGun = 0.6	-- "1/4"
		end

		local lWeaponType = 0.0	-- transversely striped
		if gES_PayloadInfo.CurrentStation > 0 then
			if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].weapon.level1 == 4 then
				if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].weapon.level2 == 4 then -- Weapon type Missle
					lWeaponType = 0.1	-- MSL
				elseif gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].weapon.level2 == 7 then -- Weapon type NURS with Container
					if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].weapon.level3 == 33 then -- Weapon type Rocket
						lWeaponType = 0.2	-- RCT
					end
				elseif gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].weapon.level2 == 5 then -- Weapon type Bomb
					lWeaponType = 0.3	-- BB
				end
			end
		end

		local lOuterCannon = 0.0	-- transversely striped
		local lInnerCannon = 0.0	-- transversely striped
		if gES_CannonContainer.counter > 0 then
			for i = 7, 10, 1 do
				if gES_CannonContainer[i] == "{E92CBFE5-C153-11d8-9897-000476191836}" then	-- SPPU_22 with 260 rounds
					if i == 7 or i == 8 then
						lOuterCannon = 1.0						-- Full max 260 Rounds "F"
						if gES_PayloadInfo.Stations[i].count == 0 then
							lOuterCannon = 0.0					-- transversely striped
							gES_CannonContainer[i] = "empty"	-- do not check
						elseif gES_PayloadInfo.Stations[i].count < 65 then
							lOuterCannon = 0.1					-- "E"
						elseif gES_PayloadInfo.Stations[i].count < 130 then
							lOuterCannon = 0.3					-- "3/4"  -- "1/2"
						elseif gES_PayloadInfo.Stations[i].count < 195 then
							lOuterCannon = 0.6					-- "1/4"
						end
					else
						lInnerCannon = 1.0						-- Full max 260 Rounds "F"
						if gES_PayloadInfo.Stations[i].count == 0 then
							lInnerCannon = 0.0					-- transversely striped
							gES_CannonContainer[i] = "empty"	-- do not check
						elseif gES_PayloadInfo.Stations[i].count < 65 then
							lInnerCannon = 0.1					-- "E"
						elseif gES_PayloadInfo.Stations[i].count < 130 then
							lInnerCannon = 0.3					-- "3/4"  -- "1/2"
						elseif gES_PayloadInfo.Stations[i].count < 195 then
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
		1    2    3    4    5    C    6    7    8    9    10
		]]
		-- Payload Info
		-- weapon stations (panel) 1 (left) - 10 (right), no lamp for center station

		-- MainCannon {transversely striped = 0.0, 1/4 = 01, 1/2 = 03, 3/4 = 0.6, Full = 1.0}
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
		-- WeaponType {transversely striped = 0.0, Missle = 0.1, Rocket = 0.2, Bomb = 0.3}
		-- OuterCannon {transversely striped = 0.0, 1/4 = 01, 1/2 = 03, 3/4 = 0.6, Full = 1.0}
		-- InnerCannon {transversely striped = 0.0, 1/4 = 01, 1/2 = 03, 3/4 = 0.6, Full = 1.0}
		-- ReserveWeapon {transversely striped = 0.0, Gun = 1.0}
		SendData(lExportID, string.format("%.1f;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%.1f;%.1f;%.1f;%.1f", 
										lMainGun,      											-- main cannon shells
										(gES_PayloadInfo.Stations[1].count  > 0 and 1 or 0),    -- weapon presend panel 1
										(gES_PayloadInfo.Stations[3].count  > 0 and 1 or 0),    -- weapon presend panel 2
										(gES_PayloadInfo.Stations[5].count  > 0 and 1 or 0),    -- weapon presend panel 3
										(gES_PayloadInfo.Stations[7].count  > 0 and 1 or 0),    -- weapon presend panel 4
										(gES_PayloadInfo.Stations[9].count  > 0 and 1 or 0),    -- weapon presend panel 5
										(gES_PayloadInfo.Stations[10].count > 0 and 1 or 0),    -- weapon presend panel 6
										(gES_PayloadInfo.Stations[8].count  > 0 and 1 or 0),    -- weapon presend panel 7
										(gES_PayloadInfo.Stations[6].count  > 0 and 1 or 0),    -- weapon presend panel 8
										(gES_PayloadInfo.Stations[4].count  > 0 and 1 or 0),    -- weapon presend panel 9
										(gES_PayloadInfo.Stations[2].count  > 0 and 1 or 0),    -- weapon presend panel 10
										gES_TmpWeaponPanelActive[201],                          -- weapon active panel 1
										gES_TmpWeaponPanelActive[202],                          -- weapon active panel 2
										gES_TmpWeaponPanelActive[203],                          -- weapon active panel 3
										gES_TmpWeaponPanelActive[204],                          -- weapon active panel 4
										gES_TmpWeaponPanelActive[205],                          -- weapon active panel 5
										gES_TmpWeaponPanelActive[206],                          -- weapon active panel 6
										gES_TmpWeaponPanelActive[207],                          -- weapon active panel 7
										gES_TmpWeaponPanelActive[208],                          -- weapon active panel 8
										gES_TmpWeaponPanelActive[209],                          -- weapon active panel 9
										gES_TmpWeaponPanelActive[210],                          -- weapon active panel 10
										lWeaponType,											   -- current weapon type
										lOuterCannon,										   -- outer cannon shells
										lInnerCannon,										   -- inner cannon shells
										lReserve))											   -- reserve weapon

	end
end

-- Weapon Panel for Su-27 and Su-33
function FC_WeaponPanel_SU2733(exportid)
	local lExportID = exportid or 13

	-- defination
	gES_PayloadInfo = LoGetPayloadInfo()
	if gES_PayloadInfo ~= nil then
		if gES_CurrentStationTmp == nil then
			gES_CurrentStationTmp = -1
		end

		if gES_TmpWeaponPanelActive == nil then
			gES_TmpWeaponPanelActive = {[201] = 0, [202] = 0, [203] = 0, [204] = 0, [205] = 0, [206] = 0, [207] = 0, [208] = 0, [209] = 0, [210] = 0}
		end

		if gES_PayloadInfo.CurrentStation  > 0 and
			gES_CurrentStationTmp ~= gES_PayloadInfo.CurrentStation then
			gES_CurrentStationTmp  = gES_PayloadInfo.CurrentStation

			gES_TmpStationToPanel = {}
			gES_TmpStationToPanel[1] =  {Panel =  1, StationID = 101, CurrentID = 201 }	-- left
			gES_TmpStationToPanel[2] =  {Panel = 10, StationID = 110, CurrentID = 210 }	-- right
			gES_TmpStationToPanel[3] =  {Panel =  2, StationID = 102, CurrentID = 202 }
			gES_TmpStationToPanel[4] =  {Panel =  9, StationID = 109, CurrentID = 209 }
			gES_TmpStationToPanel[5] =  {Panel =  3, StationID = 103, CurrentID = 203 }
			gES_TmpStationToPanel[6] =  {Panel =  8, StationID = 108, CurrentID = 208 }
			gES_TmpStationToPanel[7] =  {Panel =  4, StationID = 104, CurrentID = 204 }
			gES_TmpStationToPanel[8] =  {Panel =  7, StationID = 107, CurrentID = 207 }
			gES_TmpStationToPanel[9] =  {Panel =  5, StationID = 105, CurrentID = 205 }
			gES_TmpStationToPanel[10] = {Panel =  6, StationID = 106, CurrentID = 206 }

			-- gES_TmpWeaponPanelActive reset
			for i = 201, 210, 1 do
				gES_TmpWeaponPanelActive[i] = 0
			end

			if gES_TmpStationToPanel[gES_PayloadInfo.CurrentStation] ~= nil then
				gES_TmpWeaponPanelActive[gES_TmpStationToPanel[gES_PayloadInfo.CurrentStation].CurrentID] = 1        -- currrent value

				table.foreach(gES_PayloadInfo.Stations, WeaponStatusPanel_selectCurrentPayloadStationGlassCockpit)   -- corresponding station
			end

		end

		local lWeaponType = 0.0	-- transversely striped
		if gES_PayloadInfo.CurrentStation > 0 then
			if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].weapon.level1 == 4 then
				if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].weapon.level2 == 4 then -- Weapon type Missle
					lWeaponType = 0.1	-- MSL
				elseif gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].weapon.level2 == 7 then -- Weapon type NURS with Container
					if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].weapon.level3 == 33 then -- Weapon type Rocket
						lWeaponType = 0.2	-- RCT
					end
				elseif gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].weapon.level2 == 5 then -- Weapon type Bomb
					lWeaponType = 0.3	-- BB
				end
			end
		end

		--[[
		Weapon Panel
								 |
		---------------------------------------------------
		|    |    |    |    |    |    |    |    |    |    |
		1    2    3    4    5    C    6    7    8    9    10
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
		SendData(lExportID, string.format("%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d", 
										(gES_PayloadInfo.Stations[1].count  > 0 and 1 or 0),    -- weapon presend panel 1
										(gES_PayloadInfo.Stations[3].count  > 0 and 1 or 0),    -- weapon presend panel 2
										(gES_PayloadInfo.Stations[5].count  > 0 and 1 or 0),    -- weapon presend panel 3
										(gES_PayloadInfo.Stations[7].count  > 0 and 1 or 0),    -- weapon presend panel 4
										(gES_PayloadInfo.Stations[9].count  > 0 and 1 or 0),    -- weapon presend panel 5
										(gES_PayloadInfo.Stations[10].count > 0 and 1 or 0),    -- weapon presend panel 6
										(gES_PayloadInfo.Stations[8].count  > 0 and 1 or 0),    -- weapon presend panel 7
										(gES_PayloadInfo.Stations[6].count  > 0 and 1 or 0),    -- weapon presend panel 8
										(gES_PayloadInfo.Stations[4].count  > 0 and 1 or 0),    -- weapon presend panel 9
										(gES_PayloadInfo.Stations[2].count  > 0 and 1 or 0),    -- weapon presend panel 10
										gES_TmpWeaponPanelActive[201],                          -- weapon active panel 1
										gES_TmpWeaponPanelActive[202],                          -- weapon active panel 2
										gES_TmpWeaponPanelActive[203],                          -- weapon active panel 3
										gES_TmpWeaponPanelActive[204],                          -- weapon active panel 4
										gES_TmpWeaponPanelActive[205],                          -- weapon active panel 5
										gES_TmpWeaponPanelActive[206],                          -- weapon active panel 6
										gES_TmpWeaponPanelActive[207],                          -- weapon active panel 7
										gES_TmpWeaponPanelActive[208],                          -- weapon active panel 8
										gES_TmpWeaponPanelActive[209],                          -- weapon active panel 9
										gES_TmpWeaponPanelActive[210]))                         -- weapon active panel 10

	end
end

-- radar warner SPO-15 for all russian planes
function FC_RadarWarning_SPO15(exportid)
	local lExportID = exportid or 14

	local lTWSInfo = LoGetTWSInfo() -- SPO15 Information
	if lTWSInfo ~= nil then
		--SendData("15", "1;0.3;0;0.1;1;0;0.1;0.5;0;0;0;0;0;1;0;0;1;0;0;1;0;0;0;1")
		--Parameter (PowerOn, PrimaryDirection1, PrimaryDirection2, PrimaryType, TopHemisphere, BottomHemisphere, Lock, ErmitterPower, SecondaryLeftBack, SecondaryLeft90, SecondaryLeft50, SecondaryLeft30, SecondaryLeft10, SecondaryRight10, SecondaryRight30, SecondaryRight50, SecondaryRight90, SecondaryRightBack, SecondaryAIR, SecondaryLRR, SecondaryMRR, SecondarySRR, SecondaryEWR, SecondaryAWACS)
		-- Alle Parameter ohne extra Angabe haben  den Wert 0 oder 1
		--Power On
		--den 1. Wert welche Primäre Richtung leuchtet (es können maximal 2 Richtungsleuchten nebeneinander leuchten) (von links hinten nach recht hinten durchnummeriert, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0 oder 0 für alle aus)
		--den 2. Wert welche Primäre Richtung leuchtet (von links hinten nach recht hinten durchnummeriert, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0 oder 0 für alle aus)
		--den Wert welche Primäre Typ leuchtet (es kann nur ein Primären Typ geben) (AIR = 0.1, LRR = 0.2, MRR = 0.3, SRR = 0.4, EWR = 0.5 oder AWACS = 0.6)
		--den Wert ob Oben leuchtet
		--den Wert ob Unten leuchtet
		--den Wert ob Lock leuchtet (nichts = 0, Rackete im Anflug = 0.1 (blinken), Lock = 0.2 (dauerlicht))
		--den Wert welche maximale Ermitterstärke leuchtet (alle lampen bis dahin gehen an + das Dreieck) (0.00 bis 0.15)
		--den Wert ob Richtung links hinten Sekundär leuchtet
		--den Wert ob Richtung links 90 Sekundär leuchtet
		-- ... also insgesamt 10 Sekundär Richtungen
		--den Wert ob Richtung rechts 90 Sekundär leuchtet
		--den Wert ob Richtung rechts hinten Sekundär leuchtet
		--den Wert ob Sekundär AIR leuchte	-- air plane or missil
		--den Wert ob Sekundär LRR leuchte  -- long range radar
		--den Wert ob Sekundär MRR leuchte  -- mid range radar
		--den Wert ob Sekundär SRR leuchte  -- short range radar
		--den Wert ob Sekundär EWR leuchte  -- early warning radar
		--den Wert ob Sekundär AWACS leuchte
		-- Die Beispieldaten sind ein Primäres Flugzeug auf 50° links oberhalb mir, noch recht weit weg aber am scannen, Sekundär Radar ist auf 10° und 90° rechts und es ist ein Long Range und Awacs Radar

		-- prüft ob ein Radarsender vorhadnen ist
		if(#lTWSInfo.Emitters > 0) then

			local lPrimaryDirection1, lPrimaryDirection2, lPrimaryType, lTopHemisphere, lBottomHemisphere, lLock, lErmitterPower = 0,0,0,0,0,0,0
			local lSecondaryLeftBack, lSecondaryLeft90, lSecondaryLeft50, lSecondaryLeft30, lSecondaryLeft10, lSecondaryRight10, lSecondaryRight30, lSecondaryRight50, lSecondaryRight90, lSecondaryRightBack = 0,0,0,0,0,0,0,0,0,0
			local lSecondaryType = {AIR = 0, LRR = 0, MRR = 0, SRR = 0, EWR = 0, AWACS = 0}
			local lPriorityTmp, lPrimaryThreatTmp = 0,0
			local lHemisphere = 0
			gES_SPO15_FoundErmitter = true

			-- sucht den Primär Sender raus
			for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
				if(lTWSInfo.Emitters[EmitterIndex].Priority > lPriorityTmp) then
					lPriorityTmp      = lTWSInfo.Emitters[EmitterIndex].Priority
					lPrimaryThreatTmp = EmitterIndex
				end
			end

			for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do

				local lAzimut = math.round(lTWSInfo.Emitters[EmitterIndex].Azimuth * 90, 1)

				if EmitterIndex == lPrimaryThreatTmp then
					-- primary threat
					-- direction to the threat
					lPrimaryDirection1 = (lAzimut <= -170.0 and 0.1 or lPrimaryDirection1) -- left back side
					lPrimaryDirection1 = ((lAzimut <= -90.0  and lAzimut >= -170.0 and lPrimaryDirection1 == 0 ) and 0.2 or lPrimaryDirection1) -- left 90 degree
					lPrimaryDirection2 = ((lAzimut <= -90.0  and lAzimut >= -170.0 and lPrimaryDirection1 < 0.2) and 0.2 or lPrimaryDirection2) -- left 90 degree
					lPrimaryDirection1 = ((lAzimut <= -55.0  and lAzimut >= -125.0 and lPrimaryDirection1 == 0 ) and 0.3 or lPrimaryDirection1) -- left 50 degree
					lPrimaryDirection2 = ((lAzimut <= -55.0  and lAzimut >= -125.0 and lPrimaryDirection1 < 0.3) and 0.3 or lPrimaryDirection2) -- left 50 degree
					lPrimaryDirection1 = ((lAzimut <= -30.0  and lAzimut >= -70.5 and lPrimaryDirection1 == 0  ) and 0.4 or lPrimaryDirection1) -- left 30 degree
					lPrimaryDirection2 = ((lAzimut <= -30.0  and lAzimut >= -70.5 and lPrimaryDirection1 < 0.4 ) and 0.4 or lPrimaryDirection2) -- left 30 degree
					lPrimaryDirection1 = ((lAzimut <=  5.0   and lAzimut >= -40.0 and lPrimaryDirection1 == 0  ) and 0.5 or lPrimaryDirection1) -- left 10 degree
					lPrimaryDirection2 = ((lAzimut <=  5.0   and lAzimut >= -40.0 and lPrimaryDirection1 < 0.5 ) and 0.5 or lPrimaryDirection2) -- left 10 degree
					lPrimaryDirection1 = ((lAzimut >= -5.0   and lAzimut <=  40.0 and lPrimaryDirection1 == 0  ) and 0.6 or lPrimaryDirection1) -- right 10 degree
					lPrimaryDirection2 = ((lAzimut >= -5.0   and lAzimut <=  40.0 and lPrimaryDirection1 < 0.6 ) and 0.6 or lPrimaryDirection2) -- right 10 degree
					lPrimaryDirection1 = ((lAzimut >=  30.0  and lAzimut <=  70.5 and lPrimaryDirection1 == 0  ) and 0.7 or lPrimaryDirection1) -- right 30 degree
					lPrimaryDirection2 = ((lAzimut >=  30.0  and lAzimut <=  70.5 and lPrimaryDirection1 < 0.7 ) and 0.7 or lPrimaryDirection2) -- right 30 degree
					lPrimaryDirection1 = ((lAzimut >=  55.0  and lAzimut <= 125.0 and lPrimaryDirection1 == 0  ) and 0.8 or lPrimaryDirection1) -- right 50 degree
					lPrimaryDirection2 = ((lAzimut >=  55.0  and lAzimut <= 125.0 and lPrimaryDirection1 < 0.8 ) and 0.8 or lPrimaryDirection2) -- right 50 degree
					lPrimaryDirection1 = ((lAzimut >=  90.0  and lAzimut <= 170.0 and lPrimaryDirection1 == 0  ) and 0.9 or lPrimaryDirection1) -- right 90 degree
					lPrimaryDirection2 = ((lAzimut >=  90.0  and lAzimut <= 170.0 and lPrimaryDirection1 < 0.9 ) and 0.9 or lPrimaryDirection2) -- right 90 degree
					lPrimaryDirection1 = ((lAzimut >= 170.0 and lPrimaryDirection1 == 0  ) and 1.0 or lPrimaryDirection1) -- right back side
					lPrimaryDirection2 = ((lAzimut >= 170.0 and lPrimaryDirection1 < 1.0 ) and 1.0 or lPrimaryDirection2) -- right back side

					-- power of the threat
					lErmitterPower = math.round(lTWSInfo.Emitters[EmitterIndex].Power * 0.15, 2) + 0.01

					-- type of the threat
					local lPrimaryTypeTmp = FC_FindRadarTypeForSPO15(lTWSInfo, lPrimaryThreatTmp)
					if lPrimaryTypeTmp.AIR == 1 then
						lPrimaryType = 0.1
					elseif lPrimaryTypeTmp.LRR == 1 then
						lPrimaryType = 0.2
					elseif lPrimaryTypeTmp.MRR == 1 then
						lPrimaryType = 0.3
					elseif lPrimaryTypeTmp.SRR == 1 then
						lPrimaryType = 0.4
					elseif lPrimaryTypeTmp.EWR == 1 then
						lPrimaryType = 0.5
					elseif lPrimaryTypeTmp.AWACS == 1 then
						lPrimaryType = 0.6
					end
					-- look or missil on air
					lLock				= lPrimaryTypeTmp.Lock
					-- hemisphere
					lTopHemisphere		= lPrimaryTypeTmp.TopHemisphere		-- top hemisphere
					lBottomHemisphere	= lPrimaryTypeTmp.BottomHemisphere	-- bottom hemisphere
					if lPrimaryTypeTmp.TopHemisphere == 1 and lPrimaryTypeTmp.BottomHemisphere == 0 then
						lHemisphere = 0.1
					elseif lPrimaryTypeTmp.TopHemisphere == 0 and lPrimaryTypeTmp.BottomHemisphere == 1 then
						lHemisphere = 0.2
					elseif lPrimaryTypeTmp.TopHemisphere == 1 and lPrimaryTypeTmp.BottomHemisphere == 1 then
						lHemisphere = 0.3
					end
					
					lPrimaryTypeTmp = nil
				end

				-- secundary threat
				-- direction to the threat
				lSecondaryLeftBack  = (lAzimut <= -170.0 and 1 or lSecondaryLeftBack) -- left back side
				lSecondaryLeft90    = ((lAzimut <= -90.0  and lAzimut >= -170.0 ) and 1 or lSecondaryLeft90) -- left 90 degree
				lSecondaryLeft50    = ((lAzimut <= -55.0  and lAzimut >= -125.0 ) and 1 or lSecondaryLeft50) -- left 50 degree
				lSecondaryLeft30    = ((lAzimut <= -30.0  and lAzimut >= -70.5  ) and 1 or lSecondaryLeft30) -- left 30 degree
				lSecondaryLeft10    = ((lAzimut <=  5.0   and lAzimut >= -40.0  ) and 1 or lSecondaryLeft10) -- left 10 degree
				lSecondaryRight10   = ((lAzimut >= -5.0   and lAzimut <=  40.0  ) and 1 or lSecondaryRight10) -- right 10 degree
				lSecondaryRight30   = ((lAzimut >=  30.0  and lAzimut <=  70.5  ) and 1 or lSecondaryRight30) -- right 30 degree
				lSecondaryRight50   = ((lAzimut >=  55.0  and lAzimut <= 125.0  ) and 1 or lSecondaryRight50) -- right 50 degree
				lSecondaryRight90   = ((lAzimut >=  90.0  and lAzimut <= 170.0  ) and 1 or lSecondaryRight90) -- right 90 degree
				lSecondaryRightBack = (lAzimut >= 170.0 and 1 or lSecondaryRightBack) -- right back side

			end

			lSecondaryType = FC_FindRadarTypeForSPO15(lTWSInfo)
			-- Power {1}
			-- PrimaryDirection1 {Off = 0.0, LeftBack = 0.1, Left90 = 0.2, Left50 = 0.3, Left30 = 0.4, Left10 = 0.5, Right10 = 0.6, Right30 = 0.7, Right50 = 0.8, Right90 = 0.9, RightBack = 1.0}
			-- PrimaryDirection2 {Off = 0.0, LeftBack = 0.1, Left90 = 0.2, Left50 = 0.3, Left30 = 0.4, Left10 = 0.5, Right10 = 0.6, Right30 = 0.7, Right50 = 0.8, Right90 = 0.9, RightBack = 1.0}
			-- PrimaryType {Off = 0.0, AIR = 0.1, LRR = 0.2, MRR = 0.3, SRR = 0.4, EWR = 0.5 oder AWACS = 0.6}
			-- lHemisphere {0.0 = all off, 0.1 = TopHemisphere, 0.2 = BottomHemisphere, 0.3 = all on} -- TopHemisphere {0, 1} -- BottomHemisphere {0, 1}
			-- Lock {off = 0.0, missile = 0.1 (flashing), Lock = 0.2}
			-- ErmitterPower {Off = 0.0, LED1 = 0.01, LED2 = 0.02, ... LED15 = 0.15} 
			-- SecondaryLeftBack {0, 1}
			-- SecondaryLeft90 {0, 1}
			-- SecondaryLeft50 {0, 1}
			-- SecondaryLeft30 {0, 1}
			-- SecondaryLeft10 {0, 1}
			-- SecondaryRight10 {0, 1}
			-- SecondaryRight30 {0, 1}
			-- SecondaryRight50 {0, 1}
			-- SecondaryRight90 {0, 1}
			-- SecondaryRightBack {0, 1}
			-- SecondaryType_AIR {0, 1}
			-- SecondaryType_LRR {0, 1}
			-- SecondaryType_MRR {0, 1}
			-- SecondaryType_SRR {0, 1}
			-- SecondaryType_EWR {0, 1}
			-- SecondaryType_AWACS {0, 1}
			SendData(lExportID, string.format("%d;%.1f;%.1f;%.1f;%.1f;%.1f;%.2f;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d",
											1,
											lPrimaryDirection1, 
											lPrimaryDirection2, 
											lPrimaryType, 
											lHemisphere, 
											lLock, 
											lErmitterPower, 
											lSecondaryLeftBack, 
											lSecondaryLeft90, 
											lSecondaryLeft50, 
											lSecondaryLeft30, 
											lSecondaryLeft10, 
											lSecondaryRight10, 
											lSecondaryRight30, 
											lSecondaryRight50, 
											lSecondaryRight90, 
											lSecondaryRightBack, 
											lSecondaryType.AIR, 
											lSecondaryType.LRR, 
											lSecondaryType.MRR, 
											lSecondaryType.SRR, 
											lSecondaryType.EWR, 
											lSecondaryType.AWACS))

		else
			SendData(lExportID, "1;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0")
		end		
	end
end

-- HSI for SU25T, SU-27, SU-33, MIG-29
function FC_Russian_HSI(distancetoway, exportid)
	local lDistanceToWay	= distancetoway or 999
	local lExportID			= exportid or 5

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
	lDistanceToWay = math.round(lDistanceToWay / 1000, 1)
	local lDistanceToWayTmp = string.format("%03d", lDistanceToWay)
	local lRangeCounter1 = 0
	local lRangeCounter2 = 0
	local lRangeCounter3 = 0
	if lDistanceToWay > 100 then
		lRangeCounter1 = math.round((lDistanceToWay / 100), 0, "floor") * 0.11
		lRangeCounter1 = lRangeCounter1 - math.round(lRangeCounter1, 0, "floor")
	end
	if lDistanceToWay > 10 then
		if lDistanceToWay > 100 then
			lRangeCounter2 = (math.round((lDistanceToWay - (math.round(lDistanceToWay / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.11
		else
			lRangeCounter2 = (lDistanceToWay / 10) * 0.11
			lRangeCounter2 = lRangeCounter2 - math.round(lRangeCounter2, 0, "floor")
		end
	end
	if lDistanceToWay > 10 then
		lRangeCounter3 = (lDistanceToWay - (math.round(lDistanceToWay / 10, 0, "floor") * 10)) * 0.11
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
	SendData(lExportID, string.format("%.4f;%.4f;%.4f;%.4f;%.1f;%.1f;%.1f;%.3f;%.3f;%.3f;%.4f;%.4f;%.1f;%.1f",
									lHeading, -- compass card
									(lHeading + (lHSI_Curse / lRadToDCSunsignd)) - 1, -- doppel pfeil
									lHeading, -- gelbes dreieck
									0 - (lHeading + (lHSI_ADF / lRadToDCSunsignd)),  -- gelber pfeil
									lDefaultNull,	-- KC Flag
									lDefaultOne,	-- K Flag (left)
									lDefaultOne,	-- L Flag (left)
									lAltCounter[tonumber(string.sub(lDistanceToWayTmp, 1, 1))],
									lAltCounter[tonumber(string.sub(lDistanceToWayTmp, 2, 2))],
									lRangeCounter3,
									lGlide,
									lSide,
									lDefaultNull,	-- ???
									lDefaultNull))	-- deaktiviert die Course Anzeige
end

-- HSI for SU25A
function FC_Russian_HSI_old(exportid)
	local lDistanceToWay	= distancetoway or 999
	local lExportID			= exportid or 5

	local lDefaultOne		= 1.0
	local lDefaultNull		= 0.0
	local lRadToDCSunsignd	= math.pi * 2
	local lHSI_ADF			= LoGetControlPanel_HSI().ADF_raw	-- ADF OBS (Radian)
	local lHSI_Curse		= LoGetControlPanel_HSI().Course	-- HSI Course (Radian)
	local lGlide			= LoGetGlideDeviation()				-- VOR1 HORIZONTAL DEFLECTION (-1 +1)
	local lSide				= LoGetSideDeviation()				-- VOR1 VERTICAL DEFLECTION (-1 +1)
	local lHeading			= LoGetSelfData().Heading			-- HEADING (Radian)
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
	
	SendData(lExportID, string.format("%.4f;%.4f;%.4f;%.1f;%.1f;%.4f;%.4f",
									lHeading, -- compass card
									(lHeading + (lHSI_Curse / lRadToDCSunsignd)), -- - 1, -- white needle
									0 - (lHeading + (lHSI_ADF / lRadToDCSunsignd)),  -- yellow needle
									lDefaultOne,	-- T Flag
									lDefaultOne,	-- K Flag
									lGlide,
									lSide))
end

-- HSI-Distance for SU25A
function FC_Russian_HSI_Distance_old(distancetoway, exportid)
	local lDistanceToWay	= distancetoway or 999
	local lExportID			= exportid or 21
	
	local lAltCounter = {[0] = 0.0, [1] = 0.11, [2] = 0.22, [3] = 0.33, [4] = 0.44, [5] = 0.55, [6] = 0.66, [7] = 0.77, [8] = 0.88, [9] = 0.99}
	lDistanceToWay = math.round(lDistanceToWay / 1000, 1)
	local lDistanceToWayTmp = string.format("%03d", lDistanceToWay)
	local lRangeCounter1 = 0
	local lRangeCounter2 = 0
	local lRangeCounter3 = 0
	if lDistanceToWay > 100 then
		lRangeCounter1 = math.round((lDistanceToWay / 100), 0, "floor") * 0.11
		lRangeCounter1 = lRangeCounter1 - math.round(lRangeCounter1, 0, "floor")
	end
	if lDistanceToWay > 10 then
		if lDistanceToWay > 100 then
			lRangeCounter2 = (math.round((lDistanceToWay - (math.round(lDistanceToWay / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.11
		else
			lRangeCounter2 = (lDistanceToWay / 10) * 0.11
			lRangeCounter2 = lRangeCounter2 - math.round(lRangeCounter2, 0, "floor")
		end
	end
	if lDistanceToWay > 10 then
		lRangeCounter3 = (lDistanceToWay - (math.round(lDistanceToWay / 10, 0, "floor") * 10)) * 0.11
	else
		lRangeCounter3 = lDistanceToWay * 0.11
	end
	
	SendData(lExportID, string.format("%.3f;%.3f;%.3f",
									lAltCounter[tonumber(string.sub(lDistanceToWayTmp, 1, 1))],
									lAltCounter[tonumber(string.sub(lDistanceToWayTmp, 2, 2))],
									lRangeCounter3))	-- deaktiviert die Course Anzeige
end

-- ADI for SU-25, SU25T, SU-27, MIG-29A and MIG-29S
function FC_Russian_ADI_Old(exportid)
	local lExportID					= exportid or 4
	
	local lDefaultNull				= 0.0
	local lRadToDCSsignd			= math.pi
	local lNavInfoPitch				= LoGetNavigationInfo().Requirements.pitch		-- AP REQUIRED PITCH (Radian)
	local lNavInfoRoll				= LoGetNavigationInfo().Requirements.roll		-- AP REQUIRED BANK (Radian)
	local lPitch, lBank, lYaw		= LoGetADIPitchBankYaw()						-- PITCH, BANK, YAW (Radian)
	local lSlipBallPosition			= LoGetSlipBallPosition()						-- SLIP BALL (-1 +1)
-- ADI (IKP-81)
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
	--lPitch        = (lPitch > 0.0 and (0 - lPitch) or (lPitch + lPitch + lPitch))	-- pitch muss negiert werden
	lBank         = lBank / (lRadToDCSsignd / 2)
	SendData(lExportID, string.format("%.4f;%.4f;%.1f;%.1f;%.4f;%.4f;%.4f;%.4f;%.4f;%.4f", 
	                                   lBank,
	                                   lPitch,
	                                   lDefaultNull,
	                                   lDefaultNull,
	                                   lNavInfoRoll,
	                                   lNavInfoPitch,
	                                   lDefaultNull,
	                                   lDefaultNull,
	                                   lDefaultNull,
	                                   lSlipBallPosition))
end

-- ADI for SU-33
function FC_Russian_ADI_New(exportid)
	local lExportID					= exportid or 4
	
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
	lPitch        = (lPitch > 0.0 and (0 - lPitch) or (lPitch + lPitch + lPitch))	-- pitch muss negiert werden
	lBank         = lBank / lRadToDCSsignd --(lRadToDCSsignd / 2)
	SendData(lExportID, string.format("%.4f;%.4f;%.1f;%.1f;%.4f;%.4f;%.4f;%.4f;%.4f;%.4f", 
	                                   lBank,
	                                   lPitch,
	                                   lDefaultNull,
	                                   lDefaultNull,
	                                   lNavInfoRoll,
	                                   lNavInfoPitch,
	                                   lDefaultNull,
	                                   lDefaultNull,
	                                   lDefaultNull,
	                                   lSlipBallPosition))
end
									   
-- Radar Altimeter for SU-25A, SU25-T, SU-27, SU-33
function FC_Russian_RadarAltimeter_1500m(warningflag, exportid)
	local lWarning_Flag    	= warningflag or 100
	local lExportID			= exportid or 7

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
	SendData(lExportID, string.format("%.4f;%.4f;%d;%d",
									lAltRad,
									lDangerRALT,
									lWarning_Flag,
									lDangerRALT_Lamp))
end

-- Radar Altimeter for MiG-29A, MiG-29S
function FC_Russian_RadarAltimeter_1000m(warningflag, exportid)
	local lWarning_Flag    	= warningflag or 100
	local lExportID			= exportid or 7

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
	SendData(lExportID, string.format("%.4f;%.4f;%d;%d",
									lAltRad,
									lDangerRALT,
									lWarning_Flag,
									lDangerRALT_Lamp))
end

-- Barometric Altimeter for 
function FC_Russian_BarometricAltimeter(exportid)
	local lExportID					= exportid or 8

	local lScaleValue				= 1000
	local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()	-- BAROMETRIC PRESSURE (mm Hg)
	local lAltBar					= LoGetAltitudeAboveSeaLevel()		-- ALTITUDE SEA LEVEL (Meter)

	local lAltCounter				= {[0] = 0.0, [1] = 0.11, [2] = 0.22, [3] = 0.33, [4] = 0.44, [5] = 0.55, [6] = 0.66, [7] = 0.77, [8] = 0.88, [9] = 0.99}
	local lAltBarTmp				= string.format("%03d", lAltBar)
	lAltBar 						= lAltBar + (9.5 * (760 - lBasicAtmospherePressure))	-- 9.5 m per 1mmHg difference , eventuell minus der Differenz
	lBasicAtmospherePressure		= string.format("%03d", lBasicAtmospherePressure)
	
	lAltBar = lAltBar / lScaleValue
	lAltBar = lAltBar - math.round(lAltBar, 0, "floor")

	-- AltBar {0.0,1.0}
	-- AltBar_1000 {0.0,1.0}
	-- AltBar_100 {0.0,1.0}
	-- AltBar_10 {0.0,1.0}
	-- BasicAtmospherePressure_1000 {0.0,1.0}
	-- BasicAtmospherePressure_100 {0.0,1.0}
	-- BasicAtmospherePressure_10 {0.0,1.0}
	-- Warning_Flag {0, 1}
	SendData(lExportID, string.format("%.4f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f",
									lAltBar,
									lAltCounter[tonumber(string.sub(lAltBarTmp, 1, 1))],
									lAltCounter[tonumber(string.sub(lAltBarTmp, 2, 2))],
									lAltCounter[tonumber(string.sub(lAltBarTmp, 3, 3))],
									lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 1, 1))],
									lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 2, 2))],
									lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 3, 3))],
									0))
end

-- Barometric Altimeter for 
function FC_Russian_BarometricAltimeter(exportid)
	local lExportID					= exportid or 8

	local lScaleValue				= 1000
	local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()	-- BAROMETRIC PRESSURE (mm Hg)
	local lAltBar					= LoGetAltitudeAboveSeaLevel()		-- ALTITUDE SEA LEVEL (Meter)

	local lAltCounter				= {[0] = 0.0, [1] = 0.11, [2] = 0.22, [3] = 0.33, [4] = 0.44, [5] = 0.55, [6] = 0.66, [7] = 0.77, [8] = 0.88, [9] = 0.99}
	local lAltBarTmp				= string.format("%03d", lAltBar)
	lAltBar 						= lAltBar + (9.5 * (760 - lBasicAtmospherePressure))	-- 9.5 m per 1mmHg difference , eventuell minus der Differenz
	lBasicAtmospherePressure		= string.format("%03d", lBasicAtmospherePressure)
	
	lAltBar = lAltBar / lScaleValue
	lAltBar = lAltBar - math.round(lAltBar, 0, "floor")

	-- AltBar {0.0,1.0}
	-- AltBar_1000 {0.0,1.0}
	-- AltBar_100 {0.0,1.0}
	-- AltBar_10 {0.0,1.0}
	-- BasicAtmospherePressure_1000 {0.0,1.0}
	-- BasicAtmospherePressure_100 {0.0,1.0}
	-- BasicAtmospherePressure_10 {0.0,1.0}
	-- Warning_Flag {0, 1}
	SendData(lExportID, string.format("%.4f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f",
									lAltBar,
									lAltCounter[tonumber(string.sub(lAltBarTmp, 1, 1))],
									lAltCounter[tonumber(string.sub(lAltBarTmp, 2, 2))],
									lAltCounter[tonumber(string.sub(lAltBarTmp, 3, 3))],
									lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 1, 1))],
									lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 2, 2))],
									lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 3, 3))],
									0))
end

-- Barometric Altimeter for SU-25A, SU25-T
function FC_Russian_BarometricAltimeter_late(exportid)
	local lExportID					= exportid or 8

	local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()	-- BAROMETRIC PRESSURE (mm Hg)
	local lAltBar					= LoGetAltitudeAboveSeaLevel()		-- ALTITUDE SEA LEVEL (Meter)
	local lAltBar_kilometer_needle	= 0
	local lAltBar_meter_needle		= 0

	lAltBar 						= lAltBar - ((9.5 * (760 - lBasicAtmospherePressure)) / 2)	-- 9.5 m per 1mmHg difference

	if lAltBar > 10000 then
		lAltBar_kilometer_needle	= lAltBar / 100000
	else
		lAltBar_kilometer_needle	= lAltBar / 10000
	end
	if lAltBar > 1000 then
		lAltBar_meter_needle		= lAltBar / 1000
		lAltBar_meter_needle		= lAltBar_meter_needle - math.round(lAltBar_meter_needle, 0, "floor")
	else
		lAltBar_meter_needle		= lAltBar / 1000
	end
	lAltBar							= lAltBar / 1000

	-- AltBar_kilometer_needle {0.0,1.0}
	-- AltBar_meter_needle {0.0,1.0}
	-- BasicAtmospherePressure {600.0, 800.0}
	-- AltBar_kilometer {0.0, 99.9}
	SendData(lExportID, string.format("%.4f;%.4f;%.4f;%.4f",
									lAltBar_kilometer_needle,
									lAltBar_meter_needle,
									lBasicAtmospherePressure,
									lAltBar))
end

-- Barometric Altimeter for SU-27, SU-33
function FC_Russian_BarometricAltimeter_20000(exportid)
	local lExportID					= exportid or 8

	local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()	-- BAROMETRIC PRESSURE (mm Hg)
	local lAltBar					= LoGetAltitudeAboveSeaLevel()		-- ALTITUDE SEA LEVEL (Meter)
	local lAltBar_kilometer_needle	= 0
	local lAltBar_meter_needle		= 0

	lAltBar 						= lAltBar - ((9.5 * (760 - lBasicAtmospherePressure)) / 2)	-- 9.5 m per 1mmHg difference

	if lAltBar > 10000 then
		lAltBar_kilometer_needle	= lAltBar / 200000
	else
		lAltBar_kilometer_needle	= lAltBar / 20000
	end
	if lAltBar > 1000 then
		lAltBar_meter_needle		= lAltBar / 1000
		lAltBar_meter_needle		= lAltBar_meter_needle - math.round(lAltBar_meter_needle, 0, "floor")
	else
		lAltBar_meter_needle		= lAltBar / 1000
	end
	lBasicAtmospherePressure		= (lBasicAtmospherePressure - 600) / 200

	-- AltBar_kilometer_needle {0.0,1.0}
	-- AltBar_meter_needle {0.0,1.0}
	-- BasicAtmospherePressure {0.0, 1.0}={600.0, 800.0}
	SendData(lExportID, string.format("%.4f;%.4f;%.4f",
									lAltBar_kilometer_needle,
									lAltBar_meter_needle,
									lBasicAtmospherePressure))
end

-- Barometric Altimeter for MiG-29A, MiG-29S
function FC_Russian_BarometricAltimeter_30000(exportid)
	local lExportID					= exportid or 8

	local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()	-- BAROMETRIC PRESSURE (mm Hg)
	local lAltBar					= LoGetAltitudeAboveSeaLevel()		-- ALTITUDE SEA LEVEL (Meter)
	local lAltBar_kilometer_needle	= 0
	local lAltBar_meter_needle		= 0

	lAltBar 						= lAltBar - ((9.5 * (760 - lBasicAtmospherePressure)) / 2)	-- 9.5 m per 1mmHg difference

	if lAltBar > 10000 then
		lAltBar_kilometer_needle	= lAltBar / 300000
	else
		lAltBar_kilometer_needle	= lAltBar / 30000
	end
	if lAltBar > 1000 then
		lAltBar_meter_needle		= lAltBar / 1000
		lAltBar_meter_needle		= lAltBar_meter_needle - math.round(lAltBar_meter_needle, 0, "floor")
	else
		lAltBar_meter_needle		= lAltBar / 1000
	end
	lBasicAtmospherePressure		= (lBasicAtmospherePressure - 600) / 200

	-- AltBar_kilometer_needle {0.0,1.0}
	-- AltBar_meter_needle {0.0,1.0}
	-- BasicAtmospherePressure {0.0, 1.0}={600.0, 800.0}
	SendData(lExportID, string.format("%.4f;%.4f;%.4f",
									lBasicAtmospherePressure,
									lAltBar_meter_needle,
									lAltBar_kilometer_needle))
end

-- Air Speed Indicator for SU-25A, SU-25T
function FC_Russian_AirSpeed_1100hkm(exportid)
	local lExportID			= exportid or 1

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
	SendData(lExportID, string.format("%.4f;%.4f", lIAS, lTAS))
end

-- Air Speed Indicator for SU-27, SU-33
function FC_Russian_AirSpeed_1600hkm(exportid)
	local lExportID			= exportid or 1

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
	SendData(lExportID, string.format("%.4f;%.4f", lIAStmp, lMACHtmp))
end

-- Air Speed Indicator for MiG-29A, MiG-29S
function FC_Russian_AirSpeed_1000hkm(exportid)
	local lExportID			= exportid or 1

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
	SendData(lExportID, string.format("%.4f;%.4f", lIAS, lThousand))
end

-- Vertical Velocity Indicator (Old Style) for SU-25, SU25T, SU-27, MIG-29A and MIG-29S
function FC_Russian_VVI_Old(exportid)
	local lExportID					= exportid or 6

	local lVVI						= LoGetVerticalVelocity()		-- VERTICAL SPEED (Meter/Second)
	local lPitch, lBank, lYaw		= LoGetADIPitchBankYaw()		-- PITCH, BANK, YAW (Radian)
	lBank							= math.deg(lBank)
	local lSlipBallPosition			= LoGetSlipBallPosition()		-- SLIP BALL (-1 +1)
	--local lTAS						= LoGetTrueAirSpeed()			-- TRUE AIRSPEED (Meter/Second)
	--local lTurn = 0

	if lVVI >= 0.0 then
		lVVI = lVVI / 200
		lVVI = (lVVI > 1.0 and 1.0 or lVVI)		-- the result is limited to 1.0
	else
		lVVI = lVVI / 200
		lVVI = (lVVI < -1.0 and -1.0 or lVVI)	-- the result is limited to -1.0
	end

	if lBank >= 0.0 then
		lBank = lBank / 45
		lBank = (lBank > 1.0 and 1.0 or lBank)		-- the result is limited to 1.0
	else
		lBank = lBank / 45
		lBank = (lBank < -1.0 and -1.0 or lBank)	-- the result is limited to -1.0
	end
	--lTurn = lTAS / 187.628865979					-- TRUE AIRSPEED (Meter/Second) / 187.628865979 m/s = Turn-Winkel or True Airspeed in Knots/min / 364 Knots
	--WriteToLog('lTurn: '..dump(lTurn))
	--WriteToLog('lVVI: '..dump(lVVI)..', lBank :'..dump(lBank))
	-- lVVI {-1.0, 0.0, 1.0} {0.0=0, 0.05=10, 0.10=20, 0.24=50, 0.49=100, 0.74=150, 1.0=200}
	-- lBank {-1.0, 0.0,1.0}
	-- lSlipBallPosition {0.0,1.0}
	SendData(lExportID, string.format("%.4f;%.4f;%.4f",
									lVVI,
									lBank,
									lSlipBallPosition))
end

-- VVI for SU-33
function FC_Russian_VVI_New(exportid)
	local lExportID					= exportid or 6

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
	else
		if lVVI <= 0.0 and lVVI < -20.0 then
			lVVI = 0.01625 * lVVI
		else
			lVVI = 0.016875 * lVVI + -0.0125
		end
	end

	SendData(lExportID, string.format("%.4f", lVVI))
end

-- Airintake for SU-27 and SU-33
function FC_Russian_AirIntake(exportid)
	local lExportID	= exportid or 21

	local lAirI		= LoGetMechInfo().airintake.value

	SendData(lExportID, string.format("%.4f;%.4f", lAirI, lAirI))
end

-- AOA Indicator and Accelerometer (AOA, GLoad) for SU-25, SU25T
function FC_Russian_AOA_Su25(exportid)
	local lExportID					= exportid or 3

	local lAoA						= LoGetAngleOfAttack()			-- ANGLE OF ATTACK AoA (Radian)
	local lAccelerationUnits		= LoGetAccelerationUnits().y	-- G-LOAD

	-- AOA Indicator and Accelerometer (AOA, GLoad)
	if lAoA > 0.0 then	-- positive AOA
		--[[
		y_min = 0.0					-- minimaler Ausgabewert
		y_max = 1.0					-- maximaler Ausgabewert
		x_min = 0.0					-- minimaler Eingangswert
		x_max = 0.67224794626236	-- maximaler Eingangswert
		x = 0.336					-- aktueller Eingangswert

		d_y = 1.0								-- Delta Ausgabewerte (y_max - y_min)
		d_x = 0.67224794626236					-- Delta Eingangswerte (x_max - x_min)
		m = 1.4875463815991002393091135769939	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0									-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0.727								-- Ergebnis (m * x + n)
		]]
		lAoA = 1.4875463815991002393091135769939 * lAoA
	else
		--[[
		y_min = 0.0					-- minimaler Ausgabewert
		y_max = -0.28				-- maximaler Ausgabewert
		x_min = 0.0					-- minimaler Eingangswert
		x_max = -0.17499999701977	-- maximaler Eingangswert
		x = -0.1					-- aktueller Eingangswert

		d_y = -0.28								-- Delta Ausgabewerte (y_max - y_min)
		d_x = -0.17499999701977					-- Delta Eingangswerte (x_max - x_min)
		m = 1.6000000272478176068843626660856	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0									-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = -0.16000000272478176068843626660856	-- Ergebnis (m * x + n)
		]]
		lAoA = 1.6000000272478176068843626660856 * lAoA
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

	SendData(lExportID, string.format("%.4f;%.4f", 
								lAoA,
								lAccelerationUnits) )
end

-- AOA Indicator and Accelerometer (AOA, GLoad) for SU-27, SU33
function FC_Russian_AOA_Su2733(exportid)
	local lExportID					= exportid or 3

	local lAoA						= LoGetAngleOfAttack()			-- ANGLE OF ATTACK AoA (Radian)
	local lAccelerationUnits		= LoGetAccelerationUnits().y	-- G-LOAD

	if lAoA > 0.0 then	-- positive AOA
		--[[
		y_min = 0.0		-- minimaler Ausgabewert
		y_max = 1.0		-- maximaler Ausgabewert
		x_min = 0.0		-- minimaler Eingangswert
		x_max = 0.68	-- maximaler Eingangswert
		x = 0.4			-- aktueller Eingangswert

		d_y = 1.0								-- Delta Ausgabewerte (y_max - y_min)
		d_x = 0.68								-- Delta Eingangswerte (x_max - x_min)
		m = 1,4705882352941176470588235294118	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0									-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0,58823529411764705882352941176471	-- Ergebnis (m * x + n)
		]]
		lAoA = 1.4705882352941176470588235294118 * lAoA
	else
		--[[
		y_min = 0.0		-- minimaler Ausgabewert
		y_max = -0.28	-- maximaler Ausgabewert
		x_min = 0.0		-- minimaler Eingangswert
		x_max = -0.2	-- maximaler Eingangswert
		x = -0.1		-- aktueller Eingangswert

		d_y = -0.28		-- Delta Ausgabewerte (y_max - y_min)
		d_x = -0.2		-- Delta Eingangswerte (x_max - x_min)
		m = 1.4			-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0			-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = -0.14		-- Ergebnis (m * x + n)
		]]
		lAoA = 1.6000000272478176068843626660856 * lAoA
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

	SendData(lExportID, string.format("%.4f;%.4f", 
								lAoA,
								lAccelerationUnits) )
end

-- AOA Indicator and Accelerometer (AOA, GLoad) for MiG-29A, MiG-29S
function FC_Russian_AOA_MiG29(exportid)
	local lExportID					= exportid or 3

	local lAoA						= LoGetAngleOfAttack()			-- ANGLE OF ATTACK AoA (Radian)
	local lAccelerationUnits		= LoGetAccelerationUnits().y	-- G-LOAD

	if lAoA > 0.0 then	-- positive AOA
		--[[
		y_min = 0.0		-- minimaler Ausgabewert
		y_max = 1.0		-- maximaler Ausgabewert
		x_min = 0.0		-- minimaler Eingangswert
		x_max = 0.68	-- maximaler Eingangswert
		x = 0.4			-- aktueller Eingangswert

		d_y = 1.0								-- Delta Ausgabewerte (y_max - y_min)
		d_x = 0.68								-- Delta Eingangswerte (x_max - x_min)
		m = 1,4705882352941176470588235294118	-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0									-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = 0,58823529411764705882352941176471	-- Ergebnis (m * x + n)
		]]
		lAoA = 1.4705882352941176470588235294118 * lAoA
	else
		--[[
		y_min = 0.0		-- minimaler Ausgabewert
		y_max = -0.28	-- maximaler Ausgabewert
		x_min = 0.0		-- minimaler Eingangswert
		x_max = -0.2	-- maximaler Eingangswert
		x = -0.1		-- aktueller Eingangswert

		d_y = -0.28		-- Delta Ausgabewerte (y_max - y_min)
		d_x = -0.2		-- Delta Eingangswerte (x_max - x_min)
		m = 1.4			-- Steigung der linearen Funktion (d_y / d_x)
		n = 0.0			-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
		
		y = -0.14		-- Ergebnis (m * x + n)
		]]
		lAoA = 1.6000000272478176068843626660856 * lAoA
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

	SendData(lExportID, string.format("%.4f;%.4f", 
								lAoA,
								lAccelerationUnits) )
end

-- Russian Clock ACS-1 for KA-50, SU-25A, MIG-29A , MIG-29S
function FC_Russian_Clock_ACS1(exportid)
	local lExportID				= exportid or 12

	local lDefaultOne			= 1.0
	local lDefaultNull			= 0.0

    local lCurrentClock			= LoGetMissionStartTime() + LoGetModelTime()  -- in seconds
	local lCurrentHours			= lCurrentClock / 43200 -- (3600 * 12)
	lCurrentHours				= lCurrentHours - math.round(lCurrentHours, 0, "floor")
	local lCurrentMinutes		= lCurrentClock / 3600  -- (60 * 60)
	lCurrentMinutes				= lCurrentMinutes - math.round(lCurrentMinutes, 0, "floor")
	local lCurrentSeconds		= lCurrentClock / 60
	lCurrentSeconds				= lCurrentSeconds - math.round(lCurrentSeconds, 0, "floor")
	local lFlightTimeHours		= LoGetModelTime() / 43200
	lFlightTimeHours			= lFlightTimeHours - math.round(lFlightTimeHours, 0, "floor")
	local lFlightTimeMinutes	= LoGetModelTime() / 3600
	lFlightTimeMinutes			= lFlightTimeMinutes - math.round(lFlightTimeMinutes, 0, "floor")
	-- currtime_hours {0.0,1.0}
	-- currtime_minutes {0.0,1.0}
	-- currtime_seconds {0.0,1.0}
	-- flight_time_meter_status{0.0,0.2}
	-- flight_hours {0.0,1.0}
	-- flight_minutes {0.0,1.0}
	-- seconds_meter_time_minutes {0.0,1.0}
	-- seconds_meter_time_seconds {0.0,1.0}
	SendData(lExportID, string.format("%.4f;%.4f;%.4f;%.1f;%.4f;%.4f;%.4f;%.4f",
									lCurrentHours,
									lCurrentMinutes,
									lCurrentSeconds,
									lDefaultNull,	-- red/white flag
									lFlightTimeHours,
									lFlightTimeMinutes,
									lDefaultNull,
									lDefaultNull))
end

-- Russian Clock (latest Model) for SU-25T, SU-27, SU-33
function FC_Russian_Clock_late(exportid)
	local lExportID				= exportid or 12

	local lDefaultOne			= 1.0
	local lDefaultNull			= 0.0

    local lCurrentClock			= LoGetMissionStartTime() + LoGetModelTime()  -- in seconds
	local lCurrentHours			= lCurrentClock / 43200 -- (3600 * 12)
	lCurrentHours				= lCurrentHours - math.round(lCurrentHours, 0, "floor")
	local lCurrentMinutes		= lCurrentClock / 3600  -- (60 * 60)
	lCurrentMinutes				= lCurrentMinutes - math.round(lCurrentMinutes, 0, "floor")
	local lCurrentSeconds		= lCurrentClock / 60
	lCurrentSeconds				= lCurrentSeconds - math.round(lCurrentSeconds, 0, "floor")
	local lFlightTimeHours		= LoGetModelTime() / 43200
	lFlightTimeHours			= lFlightTimeHours - math.round(lFlightTimeHours, 0, "floor")
	local lFlightTimeMinutes	= LoGetModelTime() / 3600
	lFlightTimeMinutes			= lFlightTimeMinutes - math.round(lFlightTimeMinutes, 0, "floor")
	-- currtime_hours {0.0,1.0}
	-- currtime_minutes {0.0,1.0}
	-- currtime_seconds {0.0,1.0}
	-- flight_time_meter_status{0.0,0.2}
	-- flight_hours {0.0,1.0}
	-- flight_minutes {0.0,1.0}
	-- seconds_meter_time_seconds {0.0,1.0}
	SendData(lExportID, string.format("%.4f;%.4f;%.4f;%.1f;%.4f;%.4f;%.4f",
									lCurrentHours,
									lCurrentMinutes,
									lCurrentSeconds,
									lDefaultNull,	-- red/white flag
									lFlightTimeHours,
									lFlightTimeMinutes,
									lCurrentSeconds))
end

-- Russian Enging RPM (Tachometer) for SU-25A+T, SU-27, SU-33, MIG-29
function FC_Russian_EngineRPM(exportid)
	local lExportID			= exportid or 9

    local lScaleValue       = 110
    local lEngineRPMleft    = LoGetEngineInfo().RPM.left    -- ENG1 RPM %
	local lEngineRPMright   = LoGetEngineInfo().RPM.right   -- ENG2 RPM %

	lEngineRPMleft  = lEngineRPMleft / lScaleValue
	lEngineRPMleft  = (lEngineRPMleft > 1.0 and 1.0 or lEngineRPMleft)     -- the result is limited to 1.0
	lEngineRPMright = lEngineRPMright / lScaleValue
	lEngineRPMright = (lEngineRPMright > 1.0 and 1.0 or lEngineRPMright)   -- the result is limited to 1.0
	-- EngineRPMleft {0.0,1.0}
	-- EngineRPMright {0.0,1.0}
	SendData(lExportID, string.format("%.4f;%.4f", lEngineRPMleft, lEngineRPMright))
end

-- Russian Exthaus Gas Temperature 1.000GradC for SU-25A, SU25T, MIG-29
function FC_Russian_EGT_1000gc(egttemp, exportid)
    local lEGTtemp  	= egttemp  or 1
	local lExportID		= exportid or 10

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
	SendData(lExportID, string.format("%.4f", lEGTtemp))
end

-- Russian Mechanical Device Indicator for SU-25A+T
function FC_Russian_MDI_SU25(exportid)
	local lExportID	= exportid or 2

    local lMechInfo = LoGetMechInfo() -- mechanical components,  e.g. Flaps, Wheelbrakes,...
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
    SendData(lExportID, string.format("%.1f;%d;%d;%d;%d;%d;%d",
									lWarningLight,
									(lMechInfo.gear.value > 0.85 and 1 or 0),           -- nose gear
									(lMechInfo.gear.value > 0.95 and 1 or 0),           -- left gear
									(lMechInfo.gear.value == 1 and 1 or 0),             -- right gear
									(lMechInfo.speedbrakes.value  > 0.1 and 1 or 0),    -- speedbreakes on > 0.1 (0 - 1)
									(lMechInfo.flaps.value > 0.25 and 1 or 0),          -- flap 1. position
									(lMechInfo.flaps.value > 0.93 and 1 or 0)))         -- flap 2. position
end

-- Russian System Test EKRAN
function FC_EKRAN(exportid)
	local lExportID	= exportid or 16

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
	SendData(lExportID, string.format("%s;%s;%s;%s",
										gDisplayWindow,
										lFAILlight,
										lMEMORYlight,
										lTURNlight))
end

-- ADI for A-10A, F-15C
function FC_US_ADI(exportid)
	local lExportID	= exportid or 20

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
	lNavInfoPitch = lNavInfoPitch / lRadToDCSsignd
	lNavInfoRoll  = lNavInfoRoll / lRadToDCSsignd
	lNavInfoPitch = (lNavInfoPitch > 0.0 and (0 - lNavInfoPitch) or (lNavInfoPitch - lNavInfoPitch - lNavInfoPitch))
	lPitch        = lPitch / (lRadToDCSsignd / 1.5)
	lPitch        = (lPitch > 0.0 and (0 - lPitch) or (lPitch - lPitch - lPitch))	-- pitch muss negiert werden
	lBank         = lBank / lRadToDCSsignd
	SendData(lExportID, string.format("%.4f;%.4f;%.1f;%.1f;%.4f;%.4f;%.4f;%.1f;%.1f;%.1f", 
	                                   lPitch,
									   lBank,
	                                   lSlipBallPosition,
	                                   lNavInfoRoll,
	                                   lNavInfoPitch,
									   lBank,		-- as Turn Needle
	                                   lGlide,
	                                   lDefaultNull,
	                                   lDefaultNull,
	                                   lDefaultNull))
end

-- Standby ADI for A-10A, F-15C
function FC_US_stbyADI(exportid)
	local lExportID	= exportid or 21

	local lDefaultNull				= 0.0
	local lRadToDCSsignd			= math.pi
	local lPitch, lBank, lYaw		= LoGetADIPitchBankYaw()						-- PITCH, BANK, YAW (Radian)
	--local lSide						= LoGetSideDeviation()							-- VOR1 VERTICAL DEFLECTION (-1 +1)
	-- [63] = "%.4f",		-- Standby Attitude Indicator pitch	{-1.0, 1.0}
	-- [64] = "%.4f",		-- Standby Attitude Indicator bank	{-1.0, 1.0}
	-- [65] = "%0.1f",		-- Standby Attitude Indicator warning flag	{0.0, 1.0}
	lPitch			= lPitch / (lRadToDCSsignd / 1.5)
	--lPitch		= (lPitch > 0.0 and (0 - lPitch) or (lPitch + lPitch + lPitch))	-- pitch muss negiert werden
	lBank			= lBank / lRadToDCSsignd
	lBank			= (lBank > 0.0 and (0 - lBank) or (lBank - lBank - lBank))	-- Bank muss negiert werden
	SendData(lExportID, string.format("%.4f;%.4f;%.1f", 
	                                   lPitch,
									   lBank,
	                                   lDefaultNull))
end

-- HSI for A-10A, F-15C
function FC_US_HSI(distancetoway, exportid)
	local lDistanceToWay	= distancetoway or 999
	local lExportID			= exportid or 22
	
	local lDefaultOne		= 1.0
	local lDefaultNull		= 0.0
	local lRadToDCSunsignd	= math.pi * 2
	local lPitch,lBank,lYaw	= LoGetADIPitchBankYaw()			-- PITCH, BANK, YAW (Radian)
	local lHSI_RMI			= LoGetControlPanel_HSI().RMI_raw	-- VOR1 OBS (Radian)
	local lHSI_ADF			= LoGetControlPanel_HSI().ADF_raw	-- ADF OBS (Radian)
	local lHSI_Curse		= LoGetControlPanel_HSI().Course	-- HSI Course (Radian)
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
	--lDistanceToWay = math.round(lDistanceToWay / 1000, 1)
	local lRangeCounter1 = 0
	local lRangeCounter2 = 0
	local lRangeCounter3 = 0
	if lDistanceToWay > 100 then
		lRangeCounter1 = math.round((lDistanceToWay / 100), 0, "floor") * 0.11
		lRangeCounter1 = lRangeCounter1 - math.round(lRangeCounter1, 0, "floor")
	end
	if lDistanceToWay > 10 then
		if lDistanceToWay > 100 then
			lRangeCounter2 = (math.round((lDistanceToWay - (math.round(lDistanceToWay / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.11
		else
			lRangeCounter2 = (lDistanceToWay / 10) * 0.11
			lRangeCounter2 = lRangeCounter2 - math.round(lRangeCounter2, 0, "floor")
		end
	end
	if lDistanceToWay > 10 then
		lRangeCounter3 = (lDistanceToWay - (math.round(lDistanceToWay / 10, 0, "floor") * 10)) * 0.11
	else
		lRangeCounter3 = lDistanceToWay * 0.11
	end

	lHeading = 1.0 - (lHeading / lRadToDCSunsignd)
	lHSI_Curse = (lHSI_Curse / lRadToDCSunsignd)
	lHSI_ADF = (lHSI_ADF / lRadToDCSunsignd)
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
	SendData(lExportID, string.format("%.4f;%.1f;%.1f;%.1f;%.4f;%.4f;%.3f;%.3f;%.3f;%.1f;%.1f;%.1f;%.1f;%.1f",
									lHeading, -- compass card
									lHSI_Curse, -- Bearing #1
									lHSI_Curse, -- Bearing #2
									lDefaultNull,
									lHSI_Curse,
									lHSI_ADF,
									lRangeCounter1,
									lRangeCounter2,
									lRangeCounter3,
									lDefaultNull,
									lDefaultNull,
									lDefaultNull,
									lDefaultNull,
									lDefaultNull))	-- deaktiviert die Course Anzeige
end

-- VVI for A-10A, F-15C
function FC_US_VVI(exportid)
	local lExportID					= exportid or 15
	local lVVITmp					= LoGetVerticalVelocity() * 196.8504		-- VERTICAL SPEED (Meter/Second to Foots/Minute)
	--  {-1.0, -0.5, -0.29, 0.29, 0.5, 1.0} 
	--{-6000, -2000, -1000, 1000, 2000, 6000}
	--WriteToLog('lVVITmp 1: '..dump(lVVITmp))
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
	SendData(lExportID, string.format("%.4f", lVVITmp))
end

-- AOA Indicator (AOA) for A-10A, F-15C
function FC_US_AOA(exportid)
	local lExportID			= exportid or 16
	local lRadToDCSsignd	= math.pi
	local lAoA				= LoGetAngleOfAttack()						-- ANGLE OF ATTACK AoA (Radian)
--WriteToLog('lAoA 1: '..dump(lAoA))
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
--WriteToLog('lAoA 2: '..dump(lAoA))
	SendData(lExportID, string.format("%.4f", lAoA) )
end

-- Accelerometer (GLoad) for A-10A, F-15C
function FC_US_GLOAD(exportid)
	local lExportID					= exportid or 17

	local lAccelerationUnits		= LoGetAccelerationUnits().y							-- G-LOAD

	lAccelerationUnits  = (lAccelerationUnits / 15) + 0.33

	SendData(lExportID, string.format("%.4f;0;0", lAccelerationUnits) )
end

-- US Clock for A-10A, F-15C
function FC_US_Clock(exportid)
	local lExportID				= exportid or 18

	local lDefaultOne			= 1.0
	local lDefaultNull			= 0.0

    local lCurrentClock			= LoGetMissionStartTime() + LoGetModelTime()  -- in seconds
	local lCurrentHours			= lCurrentClock / 43200 -- (3600 * 12)
	lCurrentHours				= lCurrentHours - math.round(lCurrentHours, 0, "floor")
	local lCurrentMinutes		= lCurrentClock / 3600  -- (60 * 60)
	lCurrentMinutes				= lCurrentMinutes - math.round(lCurrentMinutes, 0, "floor")
	local lCurrentSeconds		= lCurrentClock / 60
	lCurrentSeconds				= lCurrentSeconds - math.round(lCurrentSeconds, 0, "floor")
	-- currtime_hours {0.0,1.0}
	-- currtime_minutes {0.0,1.0}
	-- currtime_seconds {0.0,1.0}
	SendData(lExportID, string.format("%.4f;%.4f;%.4f",
									lCurrentHours,
									lCurrentMinutes,
									lCurrentSeconds))
end

-- US Standby Compass for A-10A, F-15C
function FC_US_Compass(exportid)
	local lExportID		= exportid or 19
	
	local lDefaultNull	= 0.0
	local lHeading		= math.deg(LoGetSelfData().Heading)			-- HEADING (Radian to Grad)
	--local lHeading		= math.deg(LoGetMagneticYaw())			-- HEADING (Radian to Grad)
	--lHeading = 360 - lHeading		-- muss umgerechnet werden??

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

	SendData(lExportID, string.format("%0.4f;%0.4f;%0.4f", 
									lHeading, 		-- heading
									lDefaultNull, 	-- pitch
									lDefaultNull))	-- bank
end

-- US F-15C Exaust Gas Temperature
function FC_F15C_ExaustGasTemp(value, exportid)
	local lValue		= value			or 1
	local lExportID		= exportid		or 1
	local lValueTmp		= lValue

	local lCounter		= {[0] = 0.0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = 0.9}
	local lCounter3 	= 0
	local lValueTmp2	= lValueTmp

	lValueTmp2			= lValueTmp2 / 100
	lValueTmp2			= string.format("%02d", lValueTmp2)

	if lValueTmp > 100 then
		lCounter3 		= (lValueTmp - (math.round(lValueTmp / 100, 0, "floor") * 100)) * 0.01
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

	SendData(lExportID, string.format("%.4f;%.2f;%.2f;%.2f", 
									lValue,
									lCounter[tonumber(string.sub(lValueTmp2, 1, 1))],
									lCounter[tonumber(string.sub(lValueTmp2, 2, 2))],
									lCounter3))
end

-- A-10A Exaust Gas Temperature
function FC_A10A_ExaustGasTemp(value, exportid)
	local lValue		= value		  or 1
	local lExportID		= exportid	  or 1
	local lValueTmp		= lValue

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

	SendData(lExportID, string.format("%.4f;%.4f", lValue, lValueTmp))
end

-- Gauges with 2 needles (small and large), 
-- for example:
-- A-10A RPM Engine
-- Su-27/33 Exthaus Gas Temperature 1.200GradC
function FC_TwoNeedlesGauge(value, mainscala, secondscale, exportid)
	local lValue		= value		  or 1
	local lMainScala	= mainscala	  or 100
	local lSecondScale	= secondscale or 10
	local lExportID		= exportid	  or 1
	local lValueTmp		= lValue

	lValue = lValue / lMainScala
	lValue = (lValue > 1.0 and 1.0 or lValue)	-- the result is limited to 1.0

	--lValueTmp = lValueTmp - (math.round((lValueTmp / lSecondScale), 0, "floor") * lSecondScale)
	--lValueTmp = lValueTmp / lSecondScale
	--lValueTmp = (lValueTmp > 1.0 and 1.0 or lValueTmp)      -- the result is limited to 1.0
	local lv1, lValueTmp = math.modf(lValueTmp / lSecondScale)

	SendData(lExportID, string.format("%.4f;%.4f", lValue, lValueTmp))
end

-- Gauges with 1 needle, 
-- for example:
-- A-10A RPM FAN, RPM APU, Exaust Gas Temperature APU, Fuel Flow, Oil Pressure, Hydraulic Pressure
-- F-15C Oil Pressure, Hydraulic Pressure, Engine Exhaust Nozzle Position Indicator
-- Su-25A/T, Russian Hydraulic Pressure Gauges
function FC_OneNeedleGauge(value, scala, exportid)
	local lValue	= value		or 1
	local lScala	= scala		or 100
	local lExportID	= exportid	or 1

	lValue = lValue / lScala
	lValue = (lValue > 1.0 and 1.0 or lValue)	-- the result is limited to 1.0

	SendData(lExportID, string.format("%.4f", lValue))
end

-- Gauges with 1 needle and 2 digits display
-- for example:
-- 
function FC_OneNeedleGauge2Digits(value, scala, fixdigits, exportid)
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
			lCounter1 = (math.round((lValueTmp - (math.round(lValueTmp / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.1
		else
			lCounter1 = (lValueTmp / 10) * 0.1
			lCounter1 = lCounter2 - math.round(lCounter2, 0, "floor")
		end
	end]]
	if lValueTmp > 10 then
		lCounter2 = (lValueTmp - (math.round(lValueTmp / 10, 0, "floor") * 10)) * 0.1
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
function FC_OneNeedleGauge3Digits_alt(value, scala, fixdigits, exportid)
	local lValue		= value			or 1
	local lScala		= scala			or 100
	local lExportID		= exportid		or 1
	local lFixDigits	= fixdigits		or 0
	local lValueTmp		= lValue

	local lCounter	= {[0] = 0.0, [1] = 0.11, [2] = 0.22, [3] = 0.33, [4] = 0.44, [5] = 0.55, [6] = 0.66, [7] = 0.77, [8] = 0.88, [9] = 0.99}
	--local lCounter		= {[0] = 0.0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = 0.9}

	local lCounter3 	= 0
	local lValueTmp2	= lValueTmp

	if lFixDigits > 0 then
		lValueTmp2 = lValueTmp2 / math.pow(10, lFixDigits)
	end

	lValueTmp2			= string.format("%03d", lValueTmp2)

	if lValueTmp > 1000 then
		lCounter3 = (lValueTmp - (math.round(lValueTmp / 1000, 0, "floor") * 1000)) * math.pow(0.1, lFixDigits + 1) --0.1
	else
		lCounter3 = lValueTmp * math.pow(0.1, lFixDigits + 1) --0.1
	end

	lValue = lValue / lScala
	lValue = (lValue > 1.0 and 1.0 or lValue)	-- the result is limited to 1.0

	SendData(lExportID, string.format("%.4f;%.2f;%.2f;%.2f", 
									lValue,
									lCounter[tonumber(string.sub(lValueTmp2, 1, 1))],
									lCounter[tonumber(string.sub(lValueTmp2, 2, 2))],
									lCounter3))
end

-- Gauges with 1 needle and 3 digits display
-- for example:
-- F-15C RPM, Fuel Flow
function FC_OneNeedleGauge3Digits(value, scala, fixdigits, exportid)
	local lValue		= value			or 1
	local lScala		= scala			or 100
	local lExportID		= exportid		or 1
	local lFixDigits	= fixdigits		or 0
	local lValueTmp		= lValue
	local lFactor		= string.len(tostring(lScala)) - 2
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

	SendData(lExportID, string.format("%.4f;%.2f;%.2f;%.2f", 
									lValue,
									lCounter[tonumber(string.sub(lValueTmp2, 1, 1))],
									lCounter[tonumber(string.sub(lValueTmp2, 2, 2))],
									lCounter3))
end

-- Gauges with 1 needle and 4 digits display
-- for example:
-- 
function FC_OneNeedleGauge4Digits(value, scala, fixdigits, exportid)
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
		lCounter1 = math.round((lValueTmp / 1000), 0, "floor") * 0.1
		lCounter1 = lCounter1 - math.round(lCounter1, 0, "floor")
	end
	if lValueTmp > 1000 then
		if lValueTmp > 100 then
			lCounter2 = (math.round((lValueTmp - (math.round(lValueTmp / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.1
		else
			lCounter2 = (lValueTmp / 10) * 0.1
			lCounter2 = lCounter2 - math.round(lCounter2, 0, "floor")
		end
	end
	if lValueTmp > 100 then
		if lValueTmp > 10 then
			lCounter3 = (math.round((lValueTmp - (math.round(lValueTmp / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.1
		else
			lCounter3 = (lValueTmp / 10) * 0.1
			lCounter3 = lCounter3 - math.round(lCounter3, 0, "floor")
		end
	end]]
	if lValueTmp > 10 then
		lCounter4 = (lValueTmp - (math.round(lValueTmp / 10, 0, "floor") * 10)) * 0.1
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


-- Auxiliary Functions for Hardware export

function SPO15RWR(hardware)
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

	local lHardware = hardware or 1
	local lTWSInfo = LoGetTWSInfo() -- SPO15 Information
	if lTWSInfo == nil then
		return
	end
	--WriteToLog('lTWSInfo: '..dump(lTWSInfo))
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

	local lPriorityTmp		= 0
	local lPrimaryThreatTmp	= 0
	local lActiveLamp		= {0, 0, 0, 0, 0, 0, 0, 0, 0, 0} -- 10 x for direction
	if(#lTWSInfo.Emitters > 0) then
	
		gES_SPO15_FoundErmitter = true
	
		for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
			if(lTWSInfo.Emitters[EmitterIndex].Priority > lPriorityTmp) then
				lPriorityTmp      = lTWSInfo.Emitters[EmitterIndex].Priority
				lPrimaryThreatTmp = EmitterIndex
			end
		end
	
		for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do

			local lAzimut = math.round(lTWSInfo.Emitters[EmitterIndex].Azimuth * 90, 1)
			
			if EmitterIndex == lPrimaryThreatTmp then
				-- primary threat
				-- direction to the threat
				SendDataHW("401", (lAzimut <= -170.0 and 1 or 0), lHardware ) -- left back side
				SendDataHW("402", ((lAzimut <= -90.0  and lAzimut >= -170.0 ) and 1 or 0), lHardware ) -- left 90 degree
				SendDataHW("403", ((lAzimut <= -55.0  and lAzimut >= -125.0 ) and 1 or 0), lHardware ) -- left 50 degree
				SendDataHW("404", ((lAzimut <= -30.0  and lAzimut >= -70.0  ) and 1 or 0), lHardware ) -- left 30 degree
				SendDataHW("405", ((lAzimut <=  5.0   and lAzimut >= -40.0  ) and 1 or 0), lHardware ) -- left 10 degree
				SendDataHW("406", ((lAzimut >= -5.0   and lAzimut <=  40.0  ) and 1 or 0), lHardware ) -- right 10 degree
				SendDataHW("407", ((lAzimut >=  30.0  and lAzimut <=  70.0  ) and 1 or 0), lHardware ) -- right 30 degree
				SendDataHW("408", ((lAzimut >=  55.0  and lAzimut <= 125.0  ) and 1 or 0), lHardware ) -- right 50 degree
				SendDataHW("409", ((lAzimut >=  90.0  and lAzimut <= 170.0  ) and 1 or 0), lHardware ) -- right 90 degree
				SendDataHW("410", (lAzimut >= 170.0 and 1 or 0), lHardware ) -- right back side
				
				-- power of the threat
				local lPower = math.round(lTWSInfo.Emitters[EmitterIndex].Power * 15, 0, "ceil") + 1
				--WriteToLog("lPower: "..lPower)
				SendDataHW("411", (lPower <= 1  and 0 or 1), lHardware ) -- 1. power lamp
				SendDataHW("412", (lPower <= 2  and 0 or 1), lHardware ) -- 2. power lamp
				SendDataHW("413", (lPower <= 3  and 0 or 1), lHardware ) -- 3. power lamp
				SendDataHW("414", (lPower <= 4  and 0 or 1), lHardware ) -- 4. power lamp
				SendDataHW("415", (lPower <= 5  and 0 or 1), lHardware ) -- 5. power lamp
				SendDataHW("416", (lPower <= 6  and 0 or 1), lHardware ) -- 6. power lamp
				SendDataHW("417", (lPower <= 7  and 0 or 1), lHardware ) -- 7. power lamp
				SendDataHW("418", (lPower <= 8  and 0 or 1), lHardware ) -- 8. power lamp
				SendDataHW("419", (lPower <= 9  and 0 or 1), lHardware ) -- 9. power lamp
				SendDataHW("420", (lPower <= 10 and 0 or 1), lHardware ) -- 10. power lamp
				SendDataHW("421", (lPower <= 11 and 0 or 1), lHardware ) -- 11. power lamp
				SendDataHW("422", (lPower <= 12 and 0 or 1), lHardware ) -- 12. power lamp
				SendDataHW("423", (lPower <= 13 and 0 or 1), lHardware ) -- 13. power lamp
				SendDataHW("424", (lPower <= 14 and 0 or 1), lHardware ) -- 14. power lamp
				SendDataHW("425", (lPower <= 15 and 0 or 1), lHardware ) -- 15. power lamp
				
				-- type of the threat
				local lPrimaryTypeTmp = FC_FindRadarTypeForSPO15(lTWSInfo, lPrimaryThreatTmp)
				SendDataHW("430", (lPrimaryTypeTmp.AIR == 1 and 1 or 0), lHardware )	-- primary Air or Weapon
				SendDataHW("431", (lPrimaryTypeTmp.LRR == 1 and 1 or 0), lHardware )	-- long range radar
				SendDataHW("432", (lPrimaryTypeTmp.MRR == 1 and 1 or 0), lHardware )	-- mid range radar
				SendDataHW("433", (lPrimaryTypeTmp.SRR == 1 and 1 or 0), lHardware )	-- short range radar
				SendDataHW("434", (lPrimaryTypeTmp.EWR == 1 and 1 or 0), lHardware )	-- EWR
				SendDataHW("435", (lPrimaryTypeTmp.AWACS == 1 and 1 or 0), lHardware )	-- AWACS
				
				-- look or missil on air
				if lPrimaryTypeTmp.Lock == 0.1 then
					SendDataHW("440", 0, lHardware )
					SendDataHW("441", 1, lHardware ) -- blinking lights on
				elseif lPrimaryTypeTmp.Lock == 0.2 then
					SendDataHW("440", 1, lHardware )
					SendDataHW("441", 0, lHardware ) -- blinking lights off
				end
				-- hemisphere
				SendDataHW("442", lPrimaryTypeTmp.TopHemisphere, lHardware )	-- top hemisphere
				SendDataHW("443", lPrimaryTypeTmp.BottomHemisphere, lHardware )	-- bottom hemisphere
				
				lPrimaryTypeTmp = nil

			end

			lActiveLamp = SPO15RWR_SendDataHW(lActiveLamp,  1, "451", lAzimut <= -170.0, lHardware ) -- left back side
			lActiveLamp = SPO15RWR_SendDataHW(lActiveLamp,  2, "452", (lAzimut <= -90.0  and lAzimut >= -170.0 ), lHardware ) -- left 90 degree
			lActiveLamp = SPO15RWR_SendDataHW(lActiveLamp,  3, "453", (lAzimut <= -55.0  and lAzimut >= -125.0 ), lHardware ) -- left 50 degree
			lActiveLamp = SPO15RWR_SendDataHW(lActiveLamp,  4, "454", (lAzimut <= -30.0  and lAzimut >= -70.0  ), lHardware ) -- left 30 degree
			lActiveLamp = SPO15RWR_SendDataHW(lActiveLamp,  5, "455", (lAzimut <=  5.0   and lAzimut >= -40.0  ), lHardware ) -- left 10 degree
			lActiveLamp = SPO15RWR_SendDataHW(lActiveLamp,  6, "456", (lAzimut >= -5.0   and lAzimut <=  40.0  ), lHardware ) -- right 10 degree
			lActiveLamp = SPO15RWR_SendDataHW(lActiveLamp,  7, "457", (lAzimut >=  30.0  and lAzimut <=  70.0  ), lHardware ) -- right 30 degree
			lActiveLamp = SPO15RWR_SendDataHW(lActiveLamp,  8, "458", (lAzimut >=  55.0  and lAzimut <= 125.0  ), lHardware ) -- right 50 degree
			lActiveLamp = SPO15RWR_SendDataHW(lActiveLamp,  9, "459", (lAzimut >=  90.0  and lAzimut <= 170.0  ), lHardware ) -- right 90 degree
			lActiveLamp = SPO15RWR_SendDataHW(lActiveLamp, 10, "460", lAzimut >= 170.0, lHardware ) -- right back side

		end

		-- type of the secondary threat
		local lSecondaryTypeTmp = FC_FindRadarTypeForSPO15(lTWSInfo)
		SendDataHW("470", (lSecondaryTypeTmp.AIR == 1 and 1 or 0), lHardware )	-- primary Air or Weapon
		SendDataHW("471", (lSecondaryTypeTmp.LRR == 1 and 1 or 0), lHardware )	-- long range radar
		SendDataHW("472", (lSecondaryTypeTmp.MRR == 1 and 1 or 0), lHardware )	-- mid range radar
		SendDataHW("473", (lSecondaryTypeTmp.SRR == 1 and 1 or 0), lHardware )	-- short range radar
		SendDataHW("474", (lSecondaryTypeTmp.EWR == 1 and 1 or 0), lHardware )	-- EWR
		SendDataHW("475", (lSecondaryTypeTmp.AWACS == 1 and 1 or 0), lHardware )	-- AWACS
		lSecondaryTypeTmp = nil
		
	else
		lPriorityTmp      = 0
		lPrimaryThreatTmp = 0

		if gES_SPO15_FoundErmitter ~= nil and gES_SPO15_FoundErmitter then
			SPO15RWR_Reset(401, 480, lHardware)
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

function FC_FindRadarTypeForSPO15(lTWSInfo, PrimaryThreat)
	local lPrimaryThreat	= PrimaryThreat or 0
    local lReturn 			= {AIR = 0, LRR = 0, MRR = 0, SRR = 0, EWR = 0, AWACS = 0, Lock = 0, TopHemisphere = 0, BottomHemisphere = 0}

    for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
		if lPrimaryThreat ~= 0 then
			EmitterIndex = lPrimaryThreat
		end
		local lType = lTWSInfo.Emitters[EmitterIndex].Type
		--WriteToLog('level: '..lType.level1..', '..lType.level2..', '..lType.level3..', '..lType.level4)
		local lNameByType = LoGetNameByType(lType.level1, lType.level2, lType.level3, lType.level4) -- world database classification of emitter, args 4 (number : level1,level2,level3,level4), result string
		--WriteToLog('lNameByType: '..dump(lNameByType))

        -- threat type
		if (lType.level1 == 1 or lType.level1 == 4) and 
		not(lType.level4 == 26 or -- level4 26: A-50
		lType.level4 == 27 or -- level4 27: E-3
		lType.level4 == 41) then -- level4 41: E-2C
			lReturn.AIR = 1  -- primary Air or Weapon
		end

		if lType.level1 == 2 or lType.level1 == 3 then
			-- ground or navy
			if lType.level2 == 16 then
				local lAn, lEn
				-- Ground SAM
				lAn, lEn = string.find("s300 sr,s300 tr,an/mpq-53", lNameByType, 0, true)
				-- long range radar
				if lAn ~= nil then
					lReturn.LRR = 1
				end

				lAn, lEn = string.find("p19,snr-125,kub,hawk sr,hawk tr,buk sr,buk tr,5n66m sr", lNameByType, 0, true)
				-- mid range radar
				if lAn ~= nil then
					lReturn.MRR = 1
				end

				lAn, lEn = string.find("M163 Vulcan,shilka zsu-23-4,gepard,roland ads,roland radar,osa 9a33 ln,2c6m,9a331,Dog Ear Radar", lNameByType, 0, true)
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
				lAn, lEn = string.find("1l13 ewr station,55G6", lNameByType, 0, true)
				-- EWR
				if lAn ~= nil then
					lReturn.EWR = 1
				end

			elseif lType.level2 == 12 then
				local lAn, lEn
				-- Ship
				lAn, lEn = string.find("FFG-7 Oliver H. Perry class,SG-47 Ticonderoga class", lNameByType, 0, true)
				-- long range radar
				if lAn ~= nil then
					lReturn.LRR = 1
				end

				lAn, lEn = string.find("CVN-70 Vinson", lNameByType, 0, true)
				-- short range radar
				if lAn ~= nil then
					lReturn.SRR = 1
				end
			end
		elseif lType.level1 == 1 and lType.level2 == 1 and lType.level3 == 5 then 
		     if lType.level4 == 26 or lType.level4 == 27 or lType.level4 == 41 then
			    -- AWACS
			    -- level4 26: A-50
			    -- level4 27: E-3
			    -- level4 41: E-2C
			    lReturn.AWACS = 1
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
			local lSelfDataAlt	= math.round(lSelfData.LatLongAlt.Alt, 0)

			if lErmitterObjectAlt and lSelfDataAlt then
			--WriteToLog('lErmitterObjectAlt: '..lErmitterObjectAlt..', lSelfDataAlt: '..lSelfDataAlt)
				if lErmitterObjectAlt > (lSelfDataAlt + 200) then
					lReturn.TopHemisphere    = 1 -- top hemisphere
				elseif lErmitterObjectAlt < (lSelfDataAlt - 200) then
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

function WeaponStatusPanel_selectCurrentPayloadStation(_index)
	if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].CLSID == gES_PayloadInfo.Stations[_index].CLSID and gES_PayloadInfo.CurrentStation ~= _index then
		SendDataHW(gES_TmpStationToPanel[_index].CurrentID, 1, gES_TmpStationToPanel[_index].HardwareID)
	end
end

function SPO15RWR_Reset(lMinId, lMaxID, lHardware)
--WriteToLog('SPO15RWR_Reset')
	for lCounter = lMinId, lMaxID, 1 do
		SendDataHW(lCounter, 0, lHardware)
	end

	gES_SPO15_FoundErmitter = false
end

function SPO15RWR_SendDataHW(lActiveLamp, lLamp, lKey, lValue, lHardware)
--WriteToLog('SPO15RWR_SendDataHW: '..dump(lActiveLamp)..', '..dump(lLamp)..', '..dump(lKey)..', '..dump(lValue))
	if lActiveLamp[lLamp] == 0 then
		if lValue then
			SendDataHW(lKey, 1, lHardware )
			lActiveLamp[lLamp] = 1
		end
	end
	
	return lActiveLamp
end

function WeaponStatusPanel_Reset(lMinId, lMaxID, lHardware)
--WriteToLog('WeaponStatusPanel_Reset')
	for lCounter = lMinId, lMaxID, 1 do
		SendDataHW(lCounter, 0, lHardware)
	end
end

function WeaponStatusPanel_selectCurrentPayloadStationGlassCockpit(_index)
	if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].CLSID == gES_PayloadInfo.Stations[_index].CLSID and gES_PayloadInfo.CurrentStation ~= _index then
		gES_TmpWeaponPanelActive[gES_TmpStationToPanel[_index].CurrentID] = 1
	end
end

function WeaponStatusPanel_FindCannonContainer(_index)
	if gES_PayloadInfo.Stations[_index].weapon.level1 == 4 and 			-- weapon
	   gES_PayloadInfo.Stations[_index].weapon.level2 == 6 then			-- Shell
		gES_CannonContainer[_index] = gES_PayloadInfo.Stations[_index].CLSID
		gES_CannonContainer.counter = gES_CannonContainer.counter + 1
	end
end