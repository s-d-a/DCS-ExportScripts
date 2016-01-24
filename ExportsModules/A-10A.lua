-- A-10A Export
-- Version 0.9.9 BETA

gES_FoundFCModule = true

-- auxiliary function
dofile(gES_ExportModulePath.."FC_AuxiliaryFuntions.lua")

-----------------------------------------
-- FLAMING CLIFFS AIRCRAFT / A-10A    --
-- FC aircraft don't support GetDevice --
-----------------------------------------

function ProcessGlassCockpitFCHighImportanceConfig()

	local myData						= LoGetSelfData()

	if (myData) then
		local lLatitude					= myData.LatLongAlt.Lat									-- LATITUDE
		local lLongitude				= myData.LatLongAlt.Long								-- LONGITUDE
		local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()						-- BAROMETRIC PRESSURE
		local lAltBar					= LoGetAltitudeAboveSeaLevel()							-- ALTITUDE SEA LEVEL (Meter)
		local lAltRad					= LoGetAltitudeAboveGroundLevel()						-- ALTITUDE GROUND LEVEL (Meter)
		--local lTrueAirSpeed			    = LoGetTrueAirSpeed()									-- TRUE AIRSPEED (Meter/Second)
		local lPitch, lBank, lYaw		= LoGetADIPitchBankYaw()								-- PITCH, BANK, YAW (Radian)

		local lHeading					= myData.Heading										-- HEADING (Radian)
		local lVVI						= LoGetVerticalVelocity()								-- VERTICAL SPEED (Meter/Second)
		local lIAS						= LoGetIndicatedAirSpeed()								-- INDICATED AIRSPEED (Meter/Second)
		--local lMachNumber				= LoGetMachNumber										-- MACH
		local lAoA						= LoGetAngleOfAttack()									-- ANGLE OF ATTACK AoA (Radian)
		
		local lGlide					= LoGetGlideDeviation()									-- VOR1 HORIZONTAL DEFLECTION (-1 +1)
		local lSide						= LoGetSideDeviation()									-- VOR1 VERTICAL DEFLECTION (-1 +1)
		--local lSlipBallPosition			= LoGetSlipBallPosition()								-- SLIP BALL (-1 +1)
		--local lAccelerationUnits		= LoGetAccelerationUnits().y							-- G-LOAD
		
		--local lNavInfoPitch				= LoGetNavigationInfo().Requirements.pitch				-- AP REQUIRED PITCH (Radian)
		--local lNavInfoRoll				= LoGetNavigationInfo().Requirements.roll				-- AP REQUIRED BANK (Radian)
		--local lNavInfoSpeed				= LoGetNavigationInfo().Requirements.speed				-- AP SPEED (Meter/Second)
		--local lNavInfoAltitude			= LoGetNavigationInfo().Requirements.altitude      	 	-- AP ALTITUDE (Meter)
		--local lNavInfoVerticalSpeed		= LoGetNavigationInfo().Requirements.vertical_speed		-- AP VERTICAL SPEED (Meter/Second)

		--local lControlPanel_HSI			= LoGetControlPanel_HSI()								-- HSI Data
		local lHSI_RMI					= LoGetControlPanel_HSI().RMI_raw						-- VOR1 OBS (Radian)
		local lHSI_ADF					= LoGetControlPanel_HSI().ADF_raw						-- ADF OBS (Radian)
		--local lHSI_Heading				= LoGetControlPanel_HSI().Heading_raw					-- Heading (Radian)
		
		local lEngineRPMleft			= LoGetEngineInfo().RPM.left							-- ENG1 RPM %
		local lEngineRPMright			= LoGetEngineInfo().RPM.right							-- ENG2 RPM %
		local lEngineTempLeft			= LoGetEngineInfo().Temperature.left					-- ENG1 EGT ºC
		local lEngineTempRight			= LoGetEngineInfo().Temperature.right					-- ENG2 EGT ºC
		local lEngineFuelConsumptionLeft	= LoGetEngineInfo().FuelConsumption.left
		local lEngineFuelConsumptionRight	= LoGetEngineInfo().FuelConsumption.right
		local lEngineHydraulicPressureLeft	= LoGetEngineInfo().HydraulicPressure.left
		local lEngineHydraulicPressureRight	= LoGetEngineInfo().HydraulicPressure.right
		--local lEngineFuelInternal		= LoGetEngineInfo().fuel_internal						-- TANK1 (INT) (KG)
		--local lEngineFuelExternal		= LoGetEngineInfo().fuel_external						-- TANK2 (EXT) (KG)
		
		--local lMechInfo 				= LoGetMechInfo() 										-- mechanical components,  e.g. Flaps, Wheelbrakes,...
		--local lPayloadInfo				= LoGetPayloadInfo()									-- Paylod, e.g. bombs, guns, rockets, fuel tanks,...
		
		local lDistanceToWay			= 999
		local lRoute					= LoGetRoute()
		
		if (myData and lRoute) then -- if neither are nil
			local myLoc					= LoGeoCoordinatesToLoCoordinates(lLongitude, lLatitude)
			--lDistanceToWay				= math.sqrt((myLoc.x - lRoute.goto_point.world_point.x)^2 + (myLoc.y -  lRoute.goto_point.world_point.y)^2)
			lDistanceToWay              = math.sqrt((myLoc.x - lRoute.goto_point.world_point.x)^2 + (myLoc.z -  lRoute.goto_point.world_point.z)^2)
		end

		if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
		-- customizing for HELOS
			--lBasicAtmospherePressure		= lBasicAtmospherePressure * 0.03937	-- BAROMETRIC PRESSURE (MM TO IN)
			--lTrueAirSpeed					= lTrueAirSpeed * 1.94					-- TRUE AIRSPEED (M/S TO KNOTS)
			lAltBar							= lAltBar * 3.28084						-- ALTITUDE SEA LEVEL (MTS TO FT)
			lAltRad							= lAltRad * 3.28084						-- ALTITUDE GROUND LEVEL (MTS TO FT)
			lVVI							= lVVI * 196.8504							-- VERTICAL SPEED (M/S TO FPM)
			lIAS							= lIAS * 1.9438444924574				-- INDICATED AIRSPEED (M/S TO KNOTS)
			lPitch							= math.deg(lPitch)						-- PITCH, (Radian to Grad)
			lBank							= math.deg(lBank)						-- BANK (Radian to Grad)
			lYaw							= math.deg(lYaw)						-- YAW (Radian to Grad)
			lHSI_RMI						= math.deg(lHSI_RMI)					-- VOR1 OBS (Radian to Grad)
			lHSI_ADF						= math.deg(lHSI_ADF)					-- ADF OBS (Radian to Grad)
			lAoA							= math.deg(lAoA)						-- ANGLE OF ATTACK AoA (Radian to Grad)
			lHeading						= math.deg(lHeading)					-- Heading (Radian to Grad)
			lHSI_ADF						= (360 - lHSI_ADF) + (360 - lHeading)
			lHSI_RMI						= 360 - lHSI_RMI
			
			SendData("1", string.format("%.2f", lPitch) )
			SendData("2", string.format("%.2f", lBank) )
			SendData("3", string.format("%.2f", lYaw) )
			SendData("4", string.format("%.2f", lAltBar) )
			SendData("5", string.format("%.2f", lAltRad) )
			SendData("6", string.format("%.2f", lHSI_ADF) )
			SendData("7", string.format("%.2f", lHSI_RMI) )
			SendData("8", string.format("%.2f", lHeading) )
			SendData("9", string.format("%.2f", lEngineRPMleft) )
			SendData("10", string.format("%.2f", lEngineRPMright) )
			SendData("11", string.format("%.2f", lEngineTempLeft) )
			SendData("12", string.format("%.2f", lEngineTempRight) )
			SendData("13", string.format("%.2f", lVVI) )
			SendData("14", string.format("%.2f", lIAS) )
			SendData("15", string.format("%.2f", lDistanceToWay) )
			SendData("16", string.format("%.2f", lAoA) )
			SendData("17", string.format("%.2f", lGlide) )
			SendData("18", string.format("%.2f", lSide) )
		
		elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6

			-- Barometrisic Altimeter
			--local lAltCounter				= {[0] = 0.0, [1] = 0.11, [2] = 0.22, [3] = 0.33, [4] = 0.44, [5] = 0.55, [6] = 0.66, [7] = 0.77, [8] = 0.88, [9] = 0.99}
			local lAltCounter				= {[0] = 0.0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = 0.9}
			--local lAltBarTmp				= string.format("%03d", ((lAltBar * 3.28084) / 100))			-- meter to feeds
			--lAltBar 						= lAltBar + (9.5 * (760 - lBasicAtmospherePressure))	-- 9.5 m per 1mmHg difference , eventuell minus der Differenz
			local lAltBarTmp				= ((lAltBar * 3.28084) / 100)			-- meter to feeds
			lAltBar 						= lAltBar * 3.28084										-- meter to feeds
			lBasicAtmospherePressure		= lBasicAtmospherePressure * 3.937023					-- mmHg to inPa (0.03937023 * 100)
			lBasicAtmospherePressure		= string.format("%04d", lBasicAtmospherePressure)

			lAltBar = lAltBar / 1000
			lAltBar = lAltBar - math.round(lAltBar, 0, "floor")

			local lAltCounter3 = 0
			local lAltBarTmp2 = string.format("%03d", lAltBarTmp)

			if lAltBarTmp > 10 then
				lAltCounter3 = (lAltBarTmp - (math.round(lAltBarTmp / 10, 0, "floor") * 10)) * 0.1
			else
				lAltCounter3 = lAltBarTmp * 0.1
			end

			-- AltBar {0.0,1.0}
			-- AltBar_1000 {0.0,1.0}
			-- AltBar_100 {0.0,1.0}
			-- AltBar_10 {0.0,1.0}
			-- BasicAtmospherePressure_1 {0.0,1.0}
			-- BasicAtmospherePressure_10 {0.0,1.0}
			-- BasicAtmospherePressure_100 {0.0,1.0}
			-- BasicAtmospherePressure_1000 {0.0,1.0}
			SendData(1, string.format("%.4f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f",
											lAltBar,
											lAltCounter[tonumber(string.sub(lAltBarTmp2, 1, 1))],
											lAltCounter[tonumber(string.sub(lAltBarTmp2, 2, 2))],
											lAltCounter3,
											lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 4, 4))],
											lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 3, 3))],
											lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 2, 2))],
											lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 1, 1))]))
			-- Barometrisic Altimeter end

			-- Air Speed Indicator (IAS)
			lAltBar			= LoGetAltitudeAboveSeaLevel() * 3.28084	-- ALTITUDE SEA LEVEL (Meter to Feeds)
			lIAS			= lIAS * 1.9438444924574					-- INDICATED AIRSPEED (M/S TO KNOTS)
			local lIAStmp	= lIAS

			--[[
			y_min = 0.0		-- minimaler Ausgabewert
			y_max = 1.0		-- maximaler Ausgabewert
			x_min = 0.0		-- minimaler Eingangswert
			x_max = 550.0	-- maximaler Eingangswert
			x = 250.0		-- aktueller Eingangswert

			d_y = 1.0								-- Delta Ausgabewerte (y_max - y_min)
			d_x = 550.0								-- Delta Eingangswerte (x_max - x_min)
			m = 0.00181818181818181818181818181818	-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.000000000000000000000000000001	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

			y = 0.45454545454545454545454545454645	-- Ergebnis (m * x + n)
			]]
			lIAS = 0.00181818181818181818181818181818 * lIAS + 0.000000000000000000000000000001

			if lIAStmp > 100 then
				lIAStmp = lIAStmp - (math.round((lIAStmp / 100), 0, "floor") * 100)
			end

			lIAStmp = lIAStmp / 100

			-- IAS {0.0,1.0}
			-- IAS Decimals {0.0,1.0}
			-- Barometric Altimeter in Feeds for calculate max Air Speed
			SendData(2, string.format("%.4f;%.4f;%d", lIAS, lIAStmp, lAltBar))
			-- Air Speed Indicator End

			-- RPM Engine Left
			FC_TwoNeedlesGauge(lEngineRPMleft, 105, 10, 3)

			-- RPM Engine Right
			FC_TwoNeedlesGauge(lEngineRPMright, 105, 10, 4)

			-- Oil Pressure Left, no value but similar to Engine RPM
			FC_OneNeedleGauge(lEngineRPMleft, 110, 11)

			-- Oil Pressure Right, no value but similar to Engine RPM
			FC_OneNeedleGauge(lEngineRPMright, 110, 12)

			-- RPM FAN Left
			if lEngineRPMleft > 98.85 then
				lEngineRPMleft = lEngineRPMleft / 1.88 --52.58 > 80%
			elseif lEngineRPMleft > 97.9768 then
				lEngineRPMleft = lEngineRPMleft / 2.33278 --42.0 = 79%
			elseif lEngineRPMleft > 97.2773 then
				lEngineRPMleft = lEngineRPMleft / 3.03992 --32.0 = 78%
			elseif lEngineRPMleft > 96.7213 then
				lEngineRPMleft = lEngineRPMleft / 3.5429 --27.3 = 77%
			elseif lEngineRPMleft > 96.2496 then
				lEngineRPMleft = lEngineRPMleft / 3.5648 --27.0 = 76%
			elseif lEngineRPMleft > 95.7494 then
				lEngineRPMleft = lEngineRPMleft / 3.5996 --26.6 = 75%
			elseif lEngineRPMleft > 93.2737 then
				lEngineRPMleft = lEngineRPMleft / 3.54653 --26.3 = 70%
			elseif lEngineRPMleft > 90.7216 then
				lEngineRPMleft = lEngineRPMleft / 3.4893 --26.0 = 65%
			elseif lEngineRPMleft > 88.1733 then
				lEngineRPMleft = lEngineRPMleft / 3.4376 --25.65 = 60%
			elseif lEngineRPMleft > 85.0282 then
				lEngineRPMleft = lEngineRPMleft / 3.3608 --25.3 = 55%
			elseif lEngineRPMleft > 81.9344 then
				lEngineRPMleft = lEngineRPMleft / 3.2774 --25.0 = 50%
			elseif lEngineRPMleft > 77.7911 then
				lEngineRPMleft = lEngineRPMleft / 3.53596 --22.0 = 45%
			elseif lEngineRPMleft > 72.1855 then
				lEngineRPMleft = lEngineRPMleft / 3.6093 --20.0 = 40%
			elseif lEngineRPMleft > 67.8386 then
				lEngineRPMleft = lEngineRPMleft / 3.9905 --17.0 = 35%
			elseif lEngineRPMleft > 63.4883 then
				lEngineRPMleft = lEngineRPMleft / 3.968 --16.0 = 33%
			end

			--[[
			y_min = 0.0		0.25		0.2659	0.49	-- minimaler Ausgabewert
			y_max = 0.25	0.2659		0.49	1.0		-- maximaler Ausgabewert
			x_min = 0.0		50.0		70.0	80.0	-- minimaler Eingangswert
			x_max = 50.0	70.0		80.0	100.0	-- maximaler Eingangswert
			x = 40.0		60.0		75.0	95.0	-- aktueller Eingangswert 

			d_y = 0.25		0.0159		0.2241	0.51	-- Delta Ausgabewerte (y_max - y_min)
			d_x = 50.0		20.0		10.0	20.0	-- Delta Eingangswerte (x_max - x_min)
			m = 0.005		0.000795	0.02241	0.0255	-- Steigung der linearen Funktion (d_y / d_x) 
			n = 0.0			0.21025		-1.3028	-1.55	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

			y = 0.2			0.25795		0.37795	0.8725	-- Ergebnis (m * x + n)
			]]
--[[			if lEngineRPMleft > 80 then
				lEngineRPMleft = 0.0255 * lEngineRPMleft + -1.55
			elseif lEngineRPMleft > 70 then
				lEngineRPMleft = 0.02241 * lEngineRPMleft + -1.3028
			elseif lEngineRPMleft > 50 then
				lEngineRPMleft = 0.000795 * lEngineRPMleft + 0.21025
			else
				lEngineRPMleft = 0.005 * lEngineRPMleft
			end

			lEngineRPMleft = lEngineRPMleft * 85.263157894736842105263157894737
]]
			FC_OneNeedleGauge(lEngineRPMleft, 100, 5)

			-- RPM FAN Right
			if lEngineRPMright > 94 then
				lEngineRPMright = lEngineRPMright / 1.88 --50.0
			elseif lEngineRPMright > 90 then
				lEngineRPMright = lEngineRPMright / 3.384 --26.6
			elseif lEngineRPMright > 85 then
				lEngineRPMright = lEngineRPMright / 3.334 --25.5
			elseif lEngineRPMright > 80 then
				lEngineRPMright = lEngineRPMright / 3.2 --25.0
			elseif lEngineRPMright > 75 then
				lEngineRPMright = lEngineRPMright / 3.75 --20.0
			elseif lEngineRPMright > 70 then
				lEngineRPMright = lEngineRPMright / 4.667 --15.0
			elseif lEngineRPMright > 65 then
				lEngineRPMright = lEngineRPMright / 4.815 --13.5
			elseif lEngineRPMright > 60 then
				lEngineRPMright = lEngineRPMright / 5 --12.0
			end
			FC_OneNeedleGauge(lEngineRPMright, 100, 6)

			-- RPM APU, no value
			-- Exaust Gas Temperature APU, no value

			-- Exaust Gas Temperature Left
			--FC_TwoNeedlesGauge(lEngineTempLeft, 1200, 100, 7)
			FC_A10A_ExaustGasTemp(lEngineTempLeft, 7)

			-- Exaust Gas Temperature Right
			FC_TwoNeedlesGauge(lEngineTempRight, 1200, 100, 8)
			--FC_A10A_ExaustGasTemp(lEngineTempRight, 8)

			-- Fuel Flow Left
			FC_OneNeedleGauge((lEngineFuelConsumptionLeft * 2.2046223302272) * 3600, 5000, 9)

			-- Fuel Flow Right
			FC_OneNeedleGauge((lEngineFuelConsumptionRight * 2.2046223302272) * 3600, 5000, 10)

			-- Hydraulic Pressure Left (small gauges over fuel gauge)
			FC_OneNeedleGauge(lEngineHydraulicPressureLeft, 100, 13)

			-- Hydraulic Pressure Right (small gauges over fuel gauge)
			FC_OneNeedleGauge(lEngineHydraulicPressureRight, 100, 14)

			-- VVI
			FC_US_VVI(15)

			-- AOA
			--FC_US_AOA(16)
			--WriteToLog('lAoA 1: '..dump(lAoA))
			--local lAoATmp = 0.7728 * math.deg(lAoA) + 12.22
			--WriteToLog('lAoA 2: '..dump(lAoATmp))
			--[[
			y_min = 0.0								-- minimaler Ausgabewert
			y_max = 1.0								-- maximaler Ausgabewert
			x_min = 0.0								-- minimaler Eingangswert
			x_max = 30.0							-- maximaler Eingangswert 
			x = 12.6								-- aktueller Eingangswert 

			d_y = 1.0								-- Delta Ausgabewerte (y_max - y_min)
			d_x = 30.0								-- Delta Eingangswerte (x_max - x_min)
			m = 0.03333333333333333333333333333333	-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.0000000000000000000000000000001	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

			y = 0.4200000000000000000000000000001	-- Ergebnis (m * x + n)
			]]
			--lAoATmp = 0.03333333333333333333333333333333 * lAoATmp + 0.0000000000000000000000000000001
			--SendData(16, string.format("%.4f;%d", lAoATmp, 0) )
			
			if lAoA > -2.7 then	-- positive AOA
				--[[
				y_min = 0.333							-- minimaler Ausgabewert
				y_max = 1.0								-- maximaler Ausgabewert
				x_min = -2.7							-- minimaler Eingangswert
				x_max = 23.0							-- maximaler Eingangswert 
				x = 10.6								-- aktueller Eingangswert 

				d_y = 0.667								-- Delta Ausgabewerte (y_max - y_min)
				d_x = 27.7								-- Delta Eingangswerte (x_max - x_min)
				m = 0.02407942238267148014440433212996	-- Steigung der linearen Funktion (d_y / d_x)
				n = 0,44617328519855595667870036101083	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
				
				y = 0.615808	-- Ergebnis (m * x + n)
				]]
				lAoA = 0.02407942238267148014440433212996 * lAoA + 0.44617328519855595667870036101083
				SendData(16, string.format("%.4f;%d", lAoA, 0) )
			else
				--[[
				y_min = 0.0								-- minimaler Ausgabewert
				y_max = 0.333							-- maximaler Ausgabewert
				x_min = -2.7								-- minimaler Eingangswert
				x_max = -15.3							-- maximaler Eingangswert 
				x = -3.6								-- aktueller Eingangswert 

				d_y = 0.333								-- Delta Ausgabewerte (y_max - y_min)
				d_x = -12.6								-- Delta Eingangswerte (x_max - x_min)
				m = -0.02642857142857142857142857142857	-- Steigung der linearen Funktion (d_y / d_x)
				n = -0.07135714285714285714285714285714	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
				
				y = 0.0238								-- Ergebnis 0.333 - (m * x + n)
				]]
				lAoA = 0.333 - (-0.02642857142857142857142857142857 * lAoA + -0.07135714285714285714285714285714)
				SendData(16, string.format("%.4f;%d", lAoA, 0) )
			end

			-- G-LOAD
			FC_US_GLOAD(17)

			-- Clock
			FC_US_Clock(18)

			-- Standby Compass
			FC_US_Compass(19)

			-- ADI
			FC_US_ADI(20)

			-- Standby ADI
			FC_US_stbyADI(21)

			-- HSI
			FC_US_HSI(lDistanceToWay, 22)
		end
	else
		WriteToLog("Unknown FC Error, no LoGetSelfData.")
	end
end

function ProcessHARDWAREConfigHighImportance(mainPanelDevice)
	--[[
	local lPayloadInfo = LoGetPayloadInfo()
	WriteToLog('lPayloadInfo: '..dump(lPayloadInfo))
	
	local lSnares = LoGetSnares() -- Flare and Chaff
	WriteToLog('lSnares: '..dump(lSnares))
	
	local lSightingSystemInfo = LoGetSightingSystemInfo()
	WriteToLog('lSightingSystemInfo: '..dump(lSightingSystemInfo))
	
	local lTWSInfo = LoGetTWSInfo() -- SPO Informationen, z.B. Radarwarner F15C
	WriteToLog('lTWSInfo: '..dump(lTWSInfo))
	
	local lTargetInformation = LoGetTargetInformation() -- detalierte Radar Infos z.B. F15C
	WriteToLog('lTargetInformation: '..dump(lTargetInformation))
	
	local lLockedTargetInformation = LoGetLockedTargetInformation()
	WriteToLog('lLockedTargetInformation: '..dump(lLockedTargetInformation))
	
	local lF15_TWS_Contacs = LoGetF15_TWS_Contacts() -- the same information but only for F-15 in TWS mode
	WriteToLog('lF15_TWS_Contacs: '..dump(lF15_TWS_Contacs))
	
	local lMechInfo = LoGetMechInfo() -- mechanical components,  e.g. Flaps, Wheelbrakes,...
	WriteToLog('lMechInfo: '..dump(lMechInfo))
	
	local lMCPState = LoGetMCPState() -- Warnlichter
	WriteToLog('lMCPState: '..dump(lMCPState))
	
	local lControlPanel_HSI = LoGetControlPanel_HSI()
	WriteToLog('lControlPanel_HSI: '..dump(lControlPanel_HSI))
	
	local lRadioBeaconsStatus = LoGetRadioBeaconsStatus()
	WriteToLog('lRadioBeaconsStatus: '..dump(lRadioBeaconsStatus))
	
	local lEngineInfo = LoGetEngineInfo()
	WriteToLog('lEngineInfo: '..dump(lEngineInfo))
	]]
end

function ProcessGlassCockpitFCLowImportanceConfig()
	local lEngineFuelInternal		= LoGetEngineInfo().fuel_internal						-- TANK1 (INT) (KG)
	local lEngineFuelExternal		= LoGetEngineInfo().fuel_external						-- TANK2 (EXT) (KG)

	local lMechInfo 				= LoGetMechInfo() 										-- mechanical components,  e.g. Flaps, Wheelbrakes,...
	local lPayloadInfo				= LoGetPayloadInfo()									-- Paylod, e.g. bombs, guns, rockets, fuel tanks,...

	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3

	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6

		-- Flaps Indicator
		local lFlapsValue	= lMechInfo.flaps.value

		lFlapsValue = lFlapsValue / 1.6
		lFlapsValue = (lFlapsValue > 1.0 and 1.0 or lFlapsValue)	-- the result is limited to 1.0

		SendData(23, string.format("%.4f", lFlapsValue))
		-- Flaps Indicator end

		-- Gear Lamps
		local lGearValue				= lMechInfo.gear.value
		local lGear1, lGear2, lGear3	= 0, 0, 0

		if lGearValue > 0.85 then
			lGear1 = 1
		end
		if lGearValue > 0.9 then
			lGear2 = 1
		end
		if lGearValue == 1.0 then
			lGear3 = 1
		end
		SendData(24, string.format("%d;%d;%d", 
									lGear1, 	-- GEAR_N_SAFE
									lGear2, 	-- GEAR_L_SAFE
									lGear3))	-- GEAR_R_SAFE
		-- Gear Lamps end

		-- Fuel Indicator
		local lCounter					= {[0] = 0.0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = 0.9}

		lEngineFuelInternal				= lEngineFuelInternal * 2.2046223302272		-- kg to lbs
		local lFuelNeedle				= (lEngineFuelInternal / 2) / 6000			-- 6000 = scala
		lEngineFuelInternal				= lEngineFuelInternal / 100		-- um unf die ersten drei stellen zukommen
		local lEngineFuelInternalTmp	= string.format("%03d", lEngineFuelInternal)

		local lFuelCounter3 = 0
		if lEngineFuelInternal > 10 then
			lFuelCounter3 = (lEngineFuelInternal - (math.round(lEngineFuelInternal / 10, 0, "floor") * 10)) * 0.1
		else
			lFuelCounter3 = lEngineFuelInternal * 0.1
		end

		SendData(25, string.format("%.2f;%.2f;%.2f;%.4f;%.4f", 
									lCounter[tonumber(string.sub(lEngineFuelInternalTmp, 1, 1))],
									lCounter[tonumber(string.sub(lEngineFuelInternalTmp, 2, 2))],
									lFuelCounter3,
									lFuelNeedle,
									lFuelNeedle))
		-- Fuel Indicator end

		-- Weapon Panel
		gES_PayloadInfo = LoGetPayloadInfo()
		--[[
		ShellsCounter
		Station1
		Station2
		...
		Station11

		Station Data:
		0.0 = off
		0.1 = E (Empty, yellow E)
		0.2 = 1 (load, white one)
		0.3 = RR (active, two green R and white 1 for load)
		]]
		--[[
		Weapon Panel
								 |
		---------------------------------------------------
		|    |    |    |    |    |    |    |    |    |    |
		1    2    3    4    5    6    7    8    9    10   11
		1    3    5    7    9    11   10   8    6    4    2		-- Weapon Station ID
		]]
		gES_TmpWeaponPanelActive = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}

		for lIndex = 1, 11, 1 do
			gES_TmpWeaponPanelActive[lIndex] = (gES_PayloadInfo.Stations[lIndex].count > 0 and 0.2 or 0.1)	-- get status, empty or load
		end

		if gES_PayloadInfo.CurrentStation > 0 then
			gES_TmpWeaponPanelActive[gES_PayloadInfo.CurrentStation] = 0.3        -- currrent value
							
			table.foreach(gES_PayloadInfo.Stations, WeaponStatusPanel_selectCurrentPayloadStationGlassCockpit_A10A)	-- corresponding station
		end

		SendData(26, string.format("%d;%0.1f;%0.1f;%0.1f;%0.1f;%0.1f;%0.1f;%0.1f;%0.1f;%0.1f;%0.1f;%0.1f",
									gES_PayloadInfo.Cannon.shells,
									gES_TmpWeaponPanelActive[1],
									gES_TmpWeaponPanelActive[3],
									gES_TmpWeaponPanelActive[5],
									gES_TmpWeaponPanelActive[7],
									gES_TmpWeaponPanelActive[9],
									gES_TmpWeaponPanelActive[11],
									gES_TmpWeaponPanelActive[10],
									gES_TmpWeaponPanelActive[8],
									gES_TmpWeaponPanelActive[6],
									gES_TmpWeaponPanelActive[4],
									gES_TmpWeaponPanelActive[2]))
		-- Wepaon Panel end

		-- UHF Gauges, no value
		SendData(27, "001.00")
	end
end

function ProcessHARDWAREConfigLowImportance(mainPanelDevice)
-- where necessary, specify HardwareID, example SightingSystem(2)
	SightingSystem()
	FuelQuantityIndicator()
	StatusLamp()
	MechanicalDevicesIndicator()
	FlareChaff()
	WeaponStatusPanel()
	RWRStatusPanel()
	AOAIndicator()
end

-----------------------------
--     Custom functions    --
-----------------------------

function SightingSystem(hardware)
	local lHardware = hardware or 1
	local lSightingSystemInfo = LoGetSightingSystemInfo()
	if lSightingSystemInfo == nil then
		return
	end
	--WriteToLog('lSightingSystemInfo: '..dump(lSightingSystemInfo)9
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
	SendDataHW("600", lSightingSystemInfo.ECM_on            == true and 1 or 0, lHardware )
	SendDataHW("601", lSightingSystemInfo.laser_on          == true and 1 or 0, lHardware )
	SendDataHW("602", lSightingSystemInfo.optical_system_on == true and 1 or 0, lHardware )
	SendDataHW("603", lSightingSystemInfo.LaunchAuthorized  == true and 1 or 0, lHardware )
	--SendDataHW("604", lSightingSystemInfo.radar_on          == true and 1 or 0, lHardware )
end

function FuelQuantityIndicator(hardware)
-- Fuel quantity shows the fuel remaining in all tanks
	local lHardware = hardware or 1
	local lEngineInfo = LoGetEngineInfo()
	if lEngineInfo == nil then
		return
	end
	--WriteToLog('lEngineInfo: '..dump(lEngineInfo))
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
	lPayloadInfo.Stations[8].CLSID == E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF   -- ext 800l Fuel Tank
	]]

	SendDataHW("300", string.format("%d", math.round((((lEngineInfo.fuel_internal + lEngineInfo.fuel_external) * 2.2) / 100), 0, "ceil") * 100), lHardware ) -- total fuel in lbs
	--SendDataHW("301", string.format("%d", lEngineInfo.fuel_internal * 2.2), lHardware ) -- internal fuel in lbs
	--SendDataHW("302", string.format("%d", lEngineInfo.fuel_external * 2.2), lHardware ) -- external fuel in lbs
	
	--[[
	local lPayloadInfo = LoGetPayloadInfo()
	if lPayloadInfo == nil then
		return
	end
	SendDataHW("303", ((lPayloadInfo.Stations[5].count > 0 and lPayloadInfo.Stations[5].CLSID == "Fuel_Tank_FT600") and 1 or 0), lHardware ) -- weapon presend > 0 (panel 5)
	SendDataHW("304", ((lPayloadInfo.Stations[6].count > 0 and lPayloadInfo.Stations[6].CLSID == "Fuel_Tank_FT600") and 1 or 0), lHardware ) -- weapon presend > 0 (panel 6)
	SendDataHW("305", ((lPayloadInfo.Stations[7].count > 0 and lPayloadInfo.Stations[7].CLSID == "Fuel_Tank_FT600") and 1 or 0), lHardware ) -- weapon presend > 0 (panel 7)
	SendDataHW("307", (lEngineInfo.fuel_internal < 600.0 and 1 or 0), lHardware ) -- Bingo Fuel
	]]
end

function StatusLamp(hardware)
	local lHardware = hardware or 1
	local lMCPState = LoGetMCPState() -- Warning Lights
	if lMCPState == nil then
		return
	end
	--WriteToLog('lMCPState: '..dump(lMCPState))
	--[[
	[RightTailPlaneFailure] = boolean: "false"
    [EOSFailure] = boolean: "false"
    [ECMFailure] = boolean: "false"
    [RightAileronFailure] = boolean: "false"
    [MasterWarning] = boolean: "false"
    [RightEngineFailure] = boolean: "false"
    [CannonFailure] = boolean: "false"
    [MLWSFailure] = boolean: "false"
    [ACSFailure] = boolean: "false"
    [RadarFailure] = boolean: "false"
    [HelmetFailure] = boolean: "false"
    [HUDFailure] = boolean: "false"
    [LeftMainPumpFailure] = boolean: "false"
    [RightWingPumpFailure] = boolean: "false"
    [LeftWingPumpFailure] = boolean: "false"
    [MFDFailure] = boolean: "false"
    [RWSFailure] = boolean: "false"
    [GearFailure] = boolean: "false"
    [HydraulicsFailure] = boolean: "false"
    [AutopilotFailure] = boolean: "true"
    [FuelTankDamage] = boolean: "false"
    [LeftAileronFailure] = boolean: "false"
    [CanopyOpen] = boolean: "false"
    [RightMainPumpFailure] = boolean: "false"
    [StallSignalization] = boolean: "false"
    [LeftEngineFailure] = boolean: "false"
    [AutopilotOn] = boolean: "false"
    [LeftTailPlaneFailure] = boolean: "false"
	]]
	
	SendDataHW("700", lMCPState.LeftTailPlaneFailure == true and 1 or 0, lHardware )
	SendDataHW("701", lMCPState.RightTailPlaneFailure == true and 1 or 0, lHardware )
	SendDataHW("702", lMCPState.MasterWarning == true and 1 or 0, lHardware )
	SendDataHW("703", lMCPState.LeftEngineFailure == true and 1 or 0, lHardware )
	SendDataHW("704", lMCPState.RightEngineFailure == true and 1 or 0, lHardware )
	SendDataHW("705", lMCPState.LeftAileronFailure == true and 1 or 0, lHardware )
	SendDataHW("706", lMCPState.RightAileronFailure == true and 1 or 0, lHardware )
	SendDataHW("707", lMCPState.LeftMainPumpFailure == true and 1 or 0, lHardware )
	SendDataHW("708", lMCPState.RightMainPumpFailure == true and 1 or 0, lHardware )
	SendDataHW("709", lMCPState.LeftWingPumpFailure == true and 1 or 0, lHardware )
	SendDataHW("710", lMCPState.RightWingPumpFailure == true and 1 or 0, lHardware )
	SendDataHW("711", lMCPState.EOSFailure == true and 1 or 0, lHardware )
	SendDataHW("712", lMCPState.ECMFailure == true and 1 or 0, lHardware )
	SendDataHW("713", lMCPState.CannonFailure == true and 1 or 0, lHardware )
	SendDataHW("714", lMCPState.MLWSFailure == true and 1 or 0, lHardware )
	SendDataHW("715", lMCPState.ACSFailure == true and 1 or 0, lHardware )
	SendDataHW("716", lMCPState.RadarFailure == true and 1 or 0, lHardware )
	SendDataHW("717", lMCPState.HelmetFailure == true and 1 or 0, lHardware )
	SendDataHW("718", lMCPState.HUDFailure == true and 1 or 0, lHardware )
	SendDataHW("719", lMCPState.MFDFailure == true and 1 or 0, lHardware )
	SendDataHW("720", lMCPState.RWSFailure == true and 1 or 0, lHardware )
	SendDataHW("721", lMCPState.GearFailure == true and 1 or 0, lHardware )
	SendDataHW("722", lMCPState.HydraulicsFailure == true and 1 or 0, lHardware )
	SendDataHW("723", lMCPState.AutopilotFailure == true and 1 or 0, lHardware )
	SendDataHW("724", lMCPState.FuelTankDamage == true and 1 or 0, lHardware )
	SendDataHW("725", lMCPState.CanopyOpen == true and 1 or 0, lHardware )
	SendDataHW("726", lMCPState.StallSignalization == true and 1 or 0, lHardware )
	SendDataHW("727", lMCPState.AutopilotOn == true and 1 or 0, lHardware )
	
	local lEngineInfo = LoGetEngineInfo()
	if lEngineInfo ~= nil then
		--WriteToLog('lEngineInfo: '..dump(lEngineInfo))
		SendDataHW("728", lEngineInfo.EngineStart.left, lHardware ) -- lamp start left engine 1 (0|1)
		SendDataHW("729", lEngineInfo.EngineStart.right, lHardware ) -- lamp start right engine 1 (0|1)
	end
end

function FlareChaff(hardware)
	local lHardware = hardware or 1
	local lSnares = LoGetSnares() -- Flare and Chaff
	if lSnares == nil then
		return
	end
	--WriteToLog('lSnares: '..dump(lSnares))
	
	--[chaff] = number: "30"
    --[flare] = number: "30"
	
	SendDataHW("800", lSnares.chaff, lHardware )
	SendDataHW("801", lSnares.flare, lHardware )
end

function MechanicalDevicesIndicator(hardware)
-- The mechanical devices indicator shows the position of the landing gear, flaps, leading edge flaps and airbrake
	local lHardware = hardware or 1
	local lMechInfo = LoGetMechInfo() -- mechanical components,  e.g. Flaps, Wheelbrakes,...
	if lMechInfo == nil then
		return
	end
	--[[
	[hook] = {
        [status] = number: "0"
        [value] = number: "0"
    }
    [parachute] = {
        [status] = number: "0"
        [value] = number: "0"
    }
    [controlsurfaces] = {
        [eleron] = {
            [left] = number: "0"
            [right] = number: "-0.21084336936474"
        }
        [elevator] = {
            [left] = number: "-0"
            [right] = number: "-0"
        }
        [rudder] = {
            [left] = number: "0"
            [right] = number: "0"
        }
    }
    [airintake] = {
        [status] = number: "0"
        [value] = number: "0"
    }
    [canopy] = {
        [status] = number: "0"
        [value] = number: "0"
    }
    [refuelingboom] = {
        [status] = number: "0"
        [value] = number: "0"
    }
    [wing] = {
        [status] = number: "0"
        [value] = number: "0"
    }
    [noseflap] = {
        [status] = number: "0"
        [value] = number: "0"
    }
    [gear] = {
        [value] = number: "0"
        [nose] = {
            [rod] = number: "0"
        }
        [main] = {
            [left] = {
                [rod] = number: "0"
            }
            [right] = {
                [rod] = number: "0"
            }
        }
        [status] = number: "0"
    }
    [speedbrakes] = {
        [status] = number: "0"
        [value] = number: "0"
    }
    [wheelbrakes] = {
        [status] = number: "0"
        [value] = number: "0"
    }
    [flaps] = {
        [status] = number: "0"
        [value] = number: "0"
    }]]
	--SendDataHW("500", lMechInfo.gear.status )
	--SendDataHW("501", lMechInfo.gear.value )
	--SendDataHW("502", lMechInfo.gear.nose.rod )  -- zeigt an wie weit das Fahrwerk einsackt wenn das Flugzeug auf dem Boden ist
	--SendDataHW("503", lMechInfo.gear.main.left.rod )  -- zeigt an wie weit das Fahrwerk einsackt wenn das Flugzeug auf dem Boden ist
	--SendDataHW("504", lMechInfo.gear.main.right.rod )  -- zeigt an wie weit das Fahrwerk einsackt wenn das Flugzeug auf dem Boden ist
	--SendDataHW("500", ((lMechInfo.gear.status == 1 and lMechInfo.gear.value < 1) and 1 or 0 ) ) -- gear warning light, go up
	--SendDataHW("500", ((lMechInfo.gear.status == 0 and lMechInfo.gear.value > 0) and 1 or 0 ) ) -- gear warning light, go down
	--SendDataHW("500", (((lMechInfo.gear.status == 1 and lMechInfo.gear.value < 1) or (lMechInfo.gear.status == 0 and lMechInfo.gear.value > 0)) and 1 or 0 ), lHardware ) -- gear warning light
	SendDataHW("501", (lMechInfo.gear.value > 0.85 and 1 or 0), lHardware ) -- nose gear
	SendDataHW("502", (lMechInfo.gear.value > 0.95 and 1 or 0), lHardware ) -- left gear
	SendDataHW("503", (lMechInfo.gear.value == 1 and 1 or 0), lHardware )   -- right gear
	
	--SendDataHW("510", lMechInfo.speedbrakes.status ) -- speedbreakes on 1 (0|1)
	SendDataHW("510", (lMechInfo.speedbrakes.value  > 0.1 and 1 or 0), lHardware ) -- speedbreakes on > 0.1 (0 - 1)

	--SendDataHW("520", lMechInfo.wheelbrakes.status ) -- not in use
	--SendDataHW("521", lMechInfo.wheelbrakes.value ) -- not in use

	local lGetTrueAirSpeed = LoGetTrueAirSpeed()
	if lGetTrueAirSpeed == nil then
		lGetTrueAirSpeed = 0
	end
	--SendDataHW("530", lMechInfo.flaps.status ) -- flap switch off 0, 1. position 1, 2. position 2 (0|1|2)
	--SendDataHW("531", lMechInfo.flaps.value ) -- flap 1. position > 0.25, 2. position > 0.93 (0 - 1)
	SendDataHW("531", (lMechInfo.flaps.value > 0.25 and 1 or 0), lHardware ) -- flap 1. position
	SendDataHW("532", (lMechInfo.flaps.value > 0.93 and 1 or 0), lHardware ) -- flap 2. position
	SendDataHW("533", ((lMechInfo.flaps.value > 0.93 and lGetTrueAirSpeed > 340) and 1 or 0), lHardware ) -- Speed Warning for Flaps, same light as gear warning light, but blinking light
end

function RWRStatusPanel(hardware)
-- RWR Status Panel only
	local lHardware = hardware or 1
	local lTWSInfo = LoGetTWSInfo()
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
	
	local lPrimaryThreatTmp = 0
	local lPriorityTmp      = 0
	local lScanTmp          = false
	local lMissileTmp       = false
	
	if(#lTWSInfo.Emitters > 0) then
		for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
			if(lTWSInfo.Emitters[EmitterIndex].Priority > lPriorityTmp) then
				lPrimaryThreatTmp = EmitterIndex
			end
			if(lTWSInfo.Emitters[EmitterIndex].SignalType == "scan") then
				lScanTmp = true
			elseif(lTWSInfo.Emitters[EmitterIndex].SignalType == "missile_radio_guided") then
				lMissileTmp = true
			end
		end
	else
		lPrimaryThreatTmp = 0
		lPriorityTmp      = 0
	end
	
	SendDataHW("440", (lMissileTmp and 1 or 0), lHardware )
	SendDataHW("444", (lScanTmp and 1 or 0), lHardware )
end

function AOAIndicator(hardware)
-- AOA Indicator only
	local lHardware = hardware or 1
	local lAoA = LoGetAngleOfAttack()
	if lAoA == nil then
		return
	end
	local lMechInfo = LoGetMechInfo() -- mechanical components,  e.g. Gear
	if lMechInfo == nil then
		return
	end
	
	if lMechInfo.gear.status == 1 then
	    local lAOAUnits = (lAoA * 57.3) * 0.7728 + 12.22
		--WriteToLog('lAoA: '..dump(lAoA))
		--WriteToLog('lAOAUnits: '..dump(lAOAUnits))
		SendDataHW("900", (lAOAUnits > 21.0 and 1 or 0), lHardware )
		SendDataHW("901", ((lAOAUnits > 18.0 and lAOAUnits < 22.0) and 1 or 0), lHardware )
		SendDataHW("902", (lAOAUnits < 19.0 and 1 or 0), lHardware )
	else -- AOA Index Lamps off
		SendDataHW("900", 0, lHardware )
		SendDataHW("901", 0, lHardware )
		SendDataHW("902", 0, lHardware )
	end
end

function WeaponStatusPanel(hardware)
-- The weapon status panel, quantity and readiness of the currently selected weapon and the remaining gun ammunition are indicated.
	local lHardware = hardware or 1
	gES_PayloadInfo = LoGetPayloadInfo()
	if gES_PayloadInfo == nil then
		return
	end
	--WriteToLog('gES_PayloadInfo: '..dump(gES_PayloadInfo))
	--[[ exsample
    [Stations] = {
        [1] = {
            [CLSID] = string: "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}"
            [container] = boolean: "false"
            [count] = number: "1"
            [weapon] = {
                [level3] = number: "45"
                [level1] = number: "4"
                [level4] = number: "25"
                [level2] = number: "15"
            }
        }
        [2] = {
            [wstype] = {
                [level3] = number: "32"
                [level1] = number: "4"
                [level4] = number: "117"
                [level2] = number: "7"
            }
            [count] = number: "7"
            [CLSID] = string: "{69926055-0DA8-4530-9F2F-C86B157EA9F6}"
            [adapter] = {
                [level3] = number: "0"
                [level1] = number: "0"
                [level4] = number: "0"
                [level2] = number: "0"
            }
            [container] = boolean: "true"
            [weapon] = {
                [level3] = number: "33"
                [level1] = number: "4"
                [level4] = number: "147"
                [level2] = number: "7"
            }
        }
        [3] = {
            [wstype] = {
                [level3] = number: "32"
                [level1] = number: "4"
                [level4] = number: "135"
                [level2] = number: "4"
            }
            [count] = number: "2"
            [CLSID] = string: "LAU_88_AGM_65H_2_L"
            [adapter] = {
                [level3] = number: "47"
                [level1] = number: "4"
                [level4] = number: "4"
                [level2] = number: "15"
            }
            [container] = boolean: "true"
            [weapon] = {
                [level3] = number: "8"
                [level1] = number: "4"
                [level4] = number: "138"
                [level2] = number: "4"
            }
        }
        [4] = {
            [wstype] = {
                [level3] = number: "32"
                [level1] = number: "4"
                [level4] = number: "114"
                [level2] = number: "5"
            }
            [count] = number: "3"
            [CLSID] = string: "BRU-42_3*BDU-33"
            [adapter] = {
                [level3] = number: "0"
                [level1] = number: "0"
                [level4] = number: "0"
                [level2] = number: "0"
            }
            [container] = boolean: "true"
            [weapon] = {
                [level3] = number: "9"
                [level1] = number: "4"
                [level4] = number: "69"
                [level2] = number: "5"
            }
        }
        [5] = {
            [CLSID] = string: "{5335D97A-35A5-4643-9D9B-026C75961E52}"
            [container] = boolean: "false"
            [count] = number: "1"
            [weapon] = {
                [level3] = number: "38"
                [level1] = number: "4"
                [level4] = number: "35"
                [level2] = number: "5"
            }
        }
        [6] = {
            [CLSID] = string: "Fuel_Tank_FT600"
            [container] = boolean: "false"
            [count] = number: "1"
            [weapon] = {
                [level3] = number: "43"
                [level1] = number: "1"
                [level4] = number: "103"
                [level2] = number: "3"
            }
        }
        [7] = {
            [CLSID] = string: "{5335D97A-35A5-4643-9D9B-026C75961E52}"
            [container] = boolean: "false"
            [count] = number: "1"
            [weapon] = {
                [level3] = number: "38"
                [level1] = number: "4"
                [level4] = number: "35"
                [level2] = number: "5"
            }
        }
        [8] = {
            [wstype] = {
                [level3] = number: "32"
                [level1] = number: "4"
                [level4] = number: "114"
                [level2] = number: "5"
            }
            [count] = number: "3"
            [CLSID] = string: "BRU-42_3*BDU-33"
            [adapter] = {
                [level3] = number: "0"
                [level1] = number: "0"
                [level4] = number: "0"
                [level2] = number: "0"
            }
            [container] = boolean: "true"
            [weapon] = {
                [level3] = number: "9"
                [level1] = number: "4"
                [level4] = number: "69"
                [level2] = number: "5"
            }
        }
        [9] = {
            [wstype] = {
                [level3] = number: "32"
                [level1] = number: "4"
                [level4] = number: "106"
                [level2] = number: "4"
            }
            [count] = number: "2"
            [CLSID] = string: "{E6A6262A-CA08-4B3D-B030-E1A993B98453}"
            [adapter] = {
                [level3] = number: "47"
                [level1] = number: "4"
                [level4] = number: "4"
                [level2] = number: "15"
            }
            [container] = boolean: "true"
            [weapon] = {
                [level3] = number: "8"
                [level1] = number: "4"
                [level4] = number: "77"
                [level2] = number: "4"
            }
        }
        [10] = {
            [wstype] = {
                [level3] = number: "32"
                [level1] = number: "4"
                [level4] = number: "117"
                [level2] = number: "7"
            }
            [count] = number: "7"
            [CLSID] = string: "{69926055-0DA8-4530-9F2F-C86B157EA9F6}"
            [adapter] = {
                [level3] = number: "0"
                [level1] = number: "0"
                [level4] = number: "0"
                [level2] = number: "0"
            }
            [container] = boolean: "true"
            [weapon] = {
                [level3] = number: "33"
                [level1] = number: "4"
                [level4] = number: "147"
                [level2] = number: "7"
            }
        }
        [11] = {
            [wstype] = {
                [level3] = number: "32"
                [level1] = number: "4"
                [level4] = number: "50"
                [level2] = number: "4"
            }
            [count] = number: "2"
            [CLSID] = string: "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}"
            [adapter] = {
                [level3] = number: "0"
                [level1] = number: "0"
                [level4] = number: "0"
                [level2] = number: "0"
            }
            [container] = boolean: "true"
            [weapon] = {
                [level3] = number: "7"
                [level1] = number: "4"
                [level4] = number: "22"
                [level2] = number: "4"
            }
        }
    }
    [CurrentStation] = number: "0"
    [Cannon] = {
        [shells] = number: "1150"
    }
	]]
	--[[
	Weapon Panel
	                         |
	---------------------------------------------------
	|    |    |    |    |    |    |    |    |    |    |
	1    2    3    4    5    6    7    8    9    10   11
	1    3    5    7    9    11   10   8    6    4    2		-- Weapon Station ID
	]]
	-- Payload Info
	-- weapon stations (panel) 1 (left) - 11 (right) reserved
	SendDataHW("100", gES_PayloadInfo.Cannon.shells, lHardware ) -- count cannon shells
	SendDataHW("101", (gES_PayloadInfo.Stations[1].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 1)
	SendDataHW("102", (gES_PayloadInfo.Stations[3].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 2)
	SendDataHW("103", (gES_PayloadInfo.Stations[5].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 3)
	SendDataHW("104", (gES_PayloadInfo.Stations[7].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 4)
	SendDataHW("105", (gES_PayloadInfo.Stations[9].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 5)
	SendDataHW("106", (gES_PayloadInfo.Stations[11].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 6, center station)
	SendDataHW("107", (gES_PayloadInfo.Stations[10].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 7)
	SendDataHW("108", (gES_PayloadInfo.Stations[8].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 8)
	SendDataHW("109", (gES_PayloadInfo.Stations[6].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 9)
	SendDataHW("110", (gES_PayloadInfo.Stations[4].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 10)
	SendDataHW("111", (gES_PayloadInfo.Stations[2].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 11)
	-- weapon stations (panel) 1 (left) - 11 (right) empty
	SendDataHW("121", (gES_PayloadInfo.Stations[1].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 1)
	SendDataHW("122", (gES_PayloadInfo.Stations[3].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 2)
	SendDataHW("123", (gES_PayloadInfo.Stations[5].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 3)
	SendDataHW("124", (gES_PayloadInfo.Stations[7].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 4)
	SendDataHW("125", (gES_PayloadInfo.Stations[9].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 5)
	SendDataHW("126", (gES_PayloadInfo.Stations[11].count == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 6, center station)
	SendDataHW("127", (gES_PayloadInfo.Stations[10].count == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 7)
	SendDataHW("128", (gES_PayloadInfo.Stations[8].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 8)
	SendDataHW("129", (gES_PayloadInfo.Stations[6].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 9)
	SendDataHW("130", (gES_PayloadInfo.Stations[4].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 10)
	SendDataHW("131", (gES_PayloadInfo.Stations[2].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 11)	
	--SendDataHW("CurrentStation", gES_PayloadInfo.CurrentStation, lHardware ) 
	-- air-to-air missils panel 1 and 11, air combat modus, CurrentStation = 1, panel 1 and 11 on
	-- wenn die Waffenstationen gleichmässig belegt sind, hat bei Auswahl CurrentStation immer den Wert der linken Station
	-- bei ungleichmäßiger Belegung, hat CurrentStation immer den Wert der jeweiligen Station
	-- Waffenbezeichnung als UUID, gES_PayloadInfo.Stations[X].CLSID 
	
	-- defination
	if gES_CurrentStationTmp == nil then
		gES_CurrentStationTmp = -1
	end
	
	if gES_PayloadInfo.CurrentStation  > 0 and
	   gES_CurrentStationTmp ~= gES_PayloadInfo.CurrentStation then
		gES_CurrentStationTmp = gES_PayloadInfo.CurrentStation
		
		gTmpStationToPanel = {}
		gTmpStationToPanel[1] =  {Panel =  1, StationID = 101, CurrentID = 201, CurrentID2 = 221, HardwareID = lHardware }	-- left
		gTmpStationToPanel[3] =  {Panel =  2, StationID = 102, CurrentID = 202, CurrentID2 = 222, HardwareID = lHardware }
		gTmpStationToPanel[5] =  {Panel =  3, StationID = 103, CurrentID = 203, CurrentID2 = 223, HardwareID = lHardware }
		gTmpStationToPanel[7] =  {Panel =  4, StationID = 104, CurrentID = 204, CurrentID2 = 224, HardwareID = lHardware }
		gTmpStationToPanel[9] =  {Panel =  5, StationID = 105, CurrentID = 205, CurrentID2 = 225, HardwareID = lHardware }
		gTmpStationToPanel[11] = {Panel =  6, StationID = 106, CurrentID = 206, CurrentID2 = 226, HardwareID = lHardware }
		gTmpStationToPanel[10] = {Panel =  7, StationID = 107, CurrentID = 207, CurrentID2 = 227, HardwareID = lHardware }
		gTmpStationToPanel[8] =  {Panel =  8, StationID = 108, CurrentID = 208, CurrentID2 = 228, HardwareID = lHardware }
		gTmpStationToPanel[6] =  {Panel =  9, StationID = 109, CurrentID = 209, CurrentID2 = 229, HardwareID = lHardware }
		gTmpStationToPanel[4] =  {Panel = 10, StationID = 110, CurrentID = 210, CurrentID2 = 230, HardwareID = lHardware }
		gTmpStationToPanel[2] =  {Panel = 11, StationID = 111, CurrentID = 211, CurrentID2 = 231, HardwareID = lHardware }	-- right
		
		WeaponStatusPanel_Reset(201, 211, lHardware)
		WeaponStatusPanel_Reset(221, 231, lHardware)
		
		SendDataHW(gTmpStationToPanel[gES_PayloadInfo.CurrentStation].CurrentID, 1, lHardware) -- eigentliche Auswahl
		--WriteToLog('aktiv: '..gTmpStationToPanel[gES_PayloadInfo.CurrentStation].CurrentID)
		if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].container then
			if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].count > 1 then
				SendDataHW(gTmpStationToPanel[gES_PayloadInfo.CurrentStation].CurrentID2, 1, lHardware) -- eigentliche Auswahl
				--WriteToLog('aktiv2: '..gTmpStationToPanel[gES_PayloadInfo.CurrentStation].CurrentID2)
			end
		end
		table.foreach(gES_PayloadInfo.Stations, WeaponStatusPanel_selectCurrentPayloadStation) -- zugehörige Stationen
	elseif gES_PayloadInfo.CurrentStation  == 0 and gES_CurrentStationTmp > 0 then
		WeaponStatusPanel_Reset(201, 211, lHardware)
		WeaponStatusPanel_Reset(221, 231, lHardware)
		gES_CurrentStationTmp = -1
	end
end

-- Helper functions

function WeaponStatusPanel_selectCurrentPayloadStation(_index)
	if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].CLSID == gES_PayloadInfo.Stations[_index].CLSID and gES_PayloadInfo.CurrentStation ~= _index then
		SendDataHW(gTmpStationToPanel[_index].CurrentID, 1, gTmpStationToPanel[_index].HardwareID)
		--WriteToLog('aktiv3: '..gTmpStationToPanel[_index].CurrentID)
		if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].container then
			if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].count > 1 then
				SendDataHW(gTmpStationToPanel[_index].CurrentID2, 1, gTmpStationToPanel[_index].HardwareID)
				--WriteToLog('aktiv3: '..gTmpStationToPanel[_index].CurrentID2)
			end
		end
	end
end

function WeaponStatusPanel_Reset(lMinId, lMaxID, lHardware)
--WriteToLog('WeaponStatusPanel_Reset')
	for lCounter = lMinId, lMaxID, 1 do
		SendDataHW(lCounter, 0, lHardware)
	end
end

function WeaponStatusPanel_selectCurrentPayloadStationGlassCockpit_A10A(_index)
	if gES_PayloadInfo.Stations[gES_PayloadInfo.CurrentStation].CLSID == gES_PayloadInfo.Stations[_index].CLSID and gES_PayloadInfo.CurrentStation ~= _index then
		gES_TmpWeaponPanelActive[_index] = 0.3
	end
end