-- F-15C Export
-- Version 0.9.9 BETA

gES_FoundFCModule = true

-- auxiliary function
dofile(gES_ExportModulePath.."FC_AuxiliaryFuntions.lua")

-----------------------------------------
-- FLAMING CLIFFS AIRCRAFT / F-15C     --
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
		local lMachNumber				= LoGetMachNumber()										-- MACH
		local lAoA						= LoGetAngleOfAttack()									-- ANGLE OF ATTACK AoA (Radian)
		
		local lGlide					= LoGetGlideDeviation()									-- VOR1 HORIZONTAL DEFLECTION (-1 +1)
		local lSide						= LoGetSideDeviation()									-- VOR1 VERTICAL DEFLECTION (-1 +1)
		--local lSlipBallPosition			= LoGetSlipBallPosition()								-- SLIP BALL (-1 +1)
		local lAccelerationUnits		= LoGetAccelerationUnits().y							-- G-LOAD
		--local lMagneticYaw				= LoGetMagneticYaw()									-- Magnetic Yaw(Radian)
		
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
		local lEngineFuelInternal		= LoGetEngineInfo().fuel_internal						-- TANK1 (INT) (KG)
		local lEngineFuelExternal		= LoGetEngineInfo().fuel_external						-- TANK2 (EXT) (KG)
		
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
			lAltBar							= lAltBar --* 3.28084						-- ALTITUDE SEA LEVEL (MTS TO FT)
			lAltRad							= lAltRad * 3.28084						-- ALTITUDE GROUND LEVEL (MTS TO FT)
			lVVI							= lVVI --* 196.8504							-- VERTICAL SPEED (M/S TO FPM)
			lIAS							= lIAS * 1.9438444924574				-- INDICATED AIRSPEED (M/S TO KNOTS)
			lPitch							= math.deg(lPitch)						-- PITCH, (Radian to Grad)
			lBank							= math.deg(lBank)						-- BANK (Radian to Grad)
			lYaw							= math.deg(lYaw)						-- YAW (Radian to Grad)
			lHSI_RMI						= math.deg(lHSI_RMI)					-- VOR1 OBS (Radian to Grad)
			lHSI_ADF						= math.deg(lHSI_ADF)					-- ADF OBS (Radian to Grad)
			lAoA							= math.deg(lAoA)						-- ANGLE OF ATTACK AoA (Radian to Grad)
			lHeading						= math.deg(lHeading)					-- Heading (Radian to Grad)
			lHSI_ADF						= 360 - lHSI_ADF    --(360 - lHSI_ADF) + (360 - lHeading)
			lHSI_RMI						= 360 - lHSI_RMI
			local lnavInfo					= LoGetNavigationInfo()

			SendData("1", string.format("%.2f", lPitch) )
			SendData("2", string.format("%.2f", lBank) )
			SendData("3", string.format("%.2f", lYaw) )
			SendData("4", string.format("%.2f", lAltBar) )
			SendData("5", string.format("%.2f", lAccelerationUnits) )
			SendData("6", string.format("%.2f", lHSI_ADF) )
			SendData("7", string.format("%.2f", lHSI_RMI) )
			SendData("8", string.format("%.2f", lHeading) )
			SendData("9", string.format("%.2f", (math.floor(lEngineFuelInternal) + (lEngineRPMleft /1000))) )
			SendData("10", string.format("%.2f", (math.floor(lEngineFuelExternal) + (lEngineRPMright /1000))) )
			SendData("11", string.format("%.2f", (math.floor(lEngineFuelInternal + lEngineFuelExternal) + (lEngineTempLeft/1000))) )
			if math.floor(lRoute.goto_point.world_point.x) < 0 then
				SendData("12", string.format("%.4f", (math.floor(lRoute.goto_point.world_point.x) - (lEngineRPMright/1000)) ) ) --x coord +  eng temp left in eng temp rifgt import data
			else
				SendData("12", string.format("%.4f", (math.floor(lRoute.goto_point.world_point.x) + (lEngineTempLeft/1000)) ) ) --x coord +  eng temp left in eng temp rifgt import data
			end
			--SendData("12", string.format("%.2f", lEngineTempRight) )
			SendData("13", string.format("%.2f", lVVI) )
			SendData("14", string.format("%.2f", (math.floor(lDistanceToWay) + (lIAS /10000))) ) --distance to way + ias in IAS import data
			SendData("15", string.format("%s", lnavInfo.SystemMode.master .." / ".. lnavInfo.SystemMode.submode))  -- HUD MODE and SUBMODE in distancetoway import data
			--SendData("15", string.format("%.2f", lDistanceToWay) )
			SendData("16", string.format("%.2f", lAoA) )
			SendData("17", string.format("%.2f", lGlide) )
			SendData("18", string.format("%.2f", lSide) )
			
		elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6

			-- Barometrisic Altimeter
			--local lAltCounter				= {[0] = 0.0, [1] = 0.11, [2] = 0.22, [3] = 0.33, [4] = 0.44, [5] = 0.55, [6] = 0.66, [7] = 0.77, [8] = 0.88, [9] = 0.99}
			local lAltCounter				= {[0] = 0.0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = 0.9}
			--local lAltBarTmp2				= string.format("%03d", ((lAltBar * 3.28084) / 100))			-- meter to feeds
			lAltBar							= lAltBar - (9.5 * (760 - lBasicAtmospherePressure))	-- 9.5 m per 1mmHg difference
			local lAltBarTmp				= lAltBar * 3.28084										-- meter to feeds
			local lAltBarTmp2				= ((lAltBar * 3.28084) / 100)							-- meter to feeds

			lAltBarTmp = lAltBarTmp / 1000
			lAltBarTmp = lAltBarTmp - math.round(lAltBarTmp, 0, "floor")

			local lAltCounter1 = 0
			local lAltCounter2 = 0
			local lAltCounter3 = 0
			local lAltCounter4 = 0
			local lAltBarTmp3 = string.format("%03d", lAltBarTmp2)
			--[[
			if lAltBarTmp2 > 10000 then
				lAltCounter1 = math.round((lAltBarTmp2 / 10000), 0, "floor") * 0.1
				lAltCounter1 = lAltCounter1 - math.round(lAltCounter1, 0, "floor")
			end
			if lAltBarTmp2 > 1000 then
				lAltCounter2 = math.round((lAltBarTmp2 / 1000), 0, "floor") * 0.1
				lAltCounter2 = lAltCounter2 - math.round(lAltCounter1, 0, "floor")
			end
			if lAltBarTmp2 > 100 then
				if lAltBarTmp2 > 100 then
					lAltCounter3 = (math.round((lAltBarTmp2 - (math.round(lAltBarTmp2 / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.1
				else
					lAltCounter3 = (lAltBarTmp2 / 100) * 0.1
					lAltCounter3 = lAltCounter3 - math.round(lAltCounter3, 0, "floor")
				end
			end
			if lAltBarTmp2 > 10 then
				lAltCounter4 = (lAltBarTmp2 - (math.round(lAltBarTmp2 / 10, 0, "floor") * 10)) * 0.1
			else
				lAltCounter4 = lAltBarTmp2 --* 0.1
			end]]
			lAltCounter4 = lAltBarTmp * 10
			if lAltCounter4 > 1.0 then
				lAltCounter4 = lAltCounter4 - math.round(lAltCounter4, 0, "floor")
			end

			-- AltBar {0.0,1.0}
			-- AltBar_10000 {0.0,1.0}
			-- AltBar_1000 {0.0,1.0}
			-- AltBar_100 {0.0,1.0}
			-- AltBar_10 {0.0,1.0}
			SendData(1, string.format("%.4f;%.2f;%.2f;%.2f;%.2f",
											lAltBarTmp,
											--lAltCounter1,
											--lAltCounter2,
											--lAltCounter3,
											--lAltCounter4,
											lAltCounter[tonumber(string.sub(lAltBarTmp3, 1, 1))],
											lAltCounter[tonumber(string.sub(lAltBarTmp3, 2, 2))],
											lAltCounter[tonumber(string.sub(lAltBarTmp3, 3, 3))],
											--lAltCounter[tonumber(string.sub(lAltBarTmp3, 4, 4))],
											lAltCounter4))
			-- Barometrisic Altimeter end
			
			-- Air Speed Indicator (IAS, Mach)
			--[[
			y_min = 0.0								-- minimaler Ausgabewert
			y_max = 1.0								-- maximaler Ausgabewert
			x_min = 0.0								-- minimaler Eingangswert
			x_max = 514,44444443999953012349519517095	-- maximaler Eingangswert 
			x = 257.0								-- aktueller Eingangswert 

			d_y = 1.0								-- Delta Ausgabewerte (y_max - y_min)
			d_x = 514,44444443999953012349519517095	-- Delta Eingangswerte (x_max - x_min)
			m = 0.0019438444924574					-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.0									-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
			
			y = 0.4995680345615518	-- Ergebnis (m * x + n)
			]]
			lIAS = 0.0019438444924574 * lIAS
			
			if lMachNumber < 1.01 then
				--[[
				y_min = 0.0		0.1	-- minimaler Ausgabewert
				y_max = 0.1		1.0	-- maximaler Ausgabewert
				x_min = 0.0		1.0	-- minimaler Eingangswert
				x_max = 1.0		3.6	-- maximaler Eingangswert
				x = 0.5			2.0	-- aktueller Eingangswert 

				d_y = 0.1		0.9	-- Delta Ausgabewerte (y_max - y_min)
				d_x = 1.0		2.6	-- Delta Eingangswerte (x_max - x_min)
				m = 0.1			0.34615384615384615384615384615385	-- Steigung der linearen Funktion (d_y / d_x) 
				n = 0.0			-0.24615384615384615384615384615385	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
				
				y = 0.05		0.44615384615384615384615384615384	-- Ergebnis (m * x + n)
				]]

				lMachNumber = 0.1 * lMachNumber
			else
				lMachNumber = 0.34615384615384615384615384615385 * lMachNumber + -0.24615384615384615384615384615385
			end			
			-- IAS {0.0,1.0}
			-- MachNumber
			SendData(2, string.format("%.4f;%.4f", lIAS, lMachNumber))
			-- Air Speed Indicator End
			
			-- RPM Engine Left
			FC_OneNeedleGauge3Digits(lEngineRPMleft, 110, 0, 3)
			
			-- RPM Engine Right
			FC_OneNeedleGauge3Digits(lEngineRPMright, 110, 0, 4)

			-- Oil Pressure Left, no value but similar to Engine RPM
			--[[
			y_min = 0.0		0.76	-- minimaler Ausgabewert
			y_max = 0.76	1.0		-- maximaler Ausgabewert
			x_min = 0.0		74.0	-- minimaler Eingangswert
			x_max = 74.0	95.0	-- maximaler Eingangswert
			x = 74.0	90.0	-- aktueller Eingangswert

			d_y = 0.76	0.24	-- Delta Ausgabewerte (y_max - y_min)
			d_x = 74.0	21.0	-- Delta Eingangswerte (x_max - x_min)
			m = 0.01027027027027027027027027027027	0.01142857142857142857142857142857	-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.0									-0.08571428571428571428571428571415	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
			
			y = 0.7599999	0.943-- Ergebnis (m * x + n)
			]]
			if lEngineRPMleft < 74 then
				FC_OneNeedleGauge(1.027027027027027027027027027027 * lEngineRPMleft, 100, 11)
			else
				FC_OneNeedleGauge(1.142857142857142857142857142857 * lEngineRPMleft + -8.571428571428571428571428571415, 100, 11)
			end
			
			-- Oil Pressure Right, no value but similar to Engine RPM
			if lEngineRPMright < 74 then
				FC_OneNeedleGauge(1.027027027027027027027027027027 * lEngineRPMright, 100, 12)
			else
				FC_OneNeedleGauge(1.142857142857142857142857142857 * lEngineRPMright + -8.571428571428571428571428571415, 100, 12)
			end
			
			-- Engine Exhaust Nozzle Position Indicator Left, very imprecise
			--[[
			y_min = 0.0		-- minimaler Ausgabewert
			y_max = 0.76	-- maximaler Ausgabewert
			x_min = 95.0	-- minimaler Eingangswert
			x_max = 96.0	-- maximaler Eingangswert
			x = 95.5		-- aktueller Eingangswert

			d_y = 0.76		-- Delta Ausgabewerte (y_max - y_min)
			d_x = 1.0		-- Delta Eingangswerte (x_max - x_min)
			m = 0.76		-- Steigung der linearen Funktion (d_y / d_x)
			n = -72.2		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
			
			y = 0.5			-- Ergebnis (m * x + n)
			]]
			if lEngineRPMleft > 95.0 then
				FC_OneNeedleGauge((0.76 * lEngineRPMleft + -72.2) * 100, 100, 5)
			else
				FC_OneNeedleGauge(0, 100, 5)
			end

			-- Engine Exhaust Nozzle Position Indicator Right, very imprecise
			if lEngineRPMright > 95.0 then
				FC_OneNeedleGauge((0.76 * lEngineRPMright + -72.2) * 100, 100, 6)
			else
				FC_OneNeedleGauge(0, 100, 6)
			end

			-- Exaust Gas Temperature Left
			FC_F15C_ExaustGasTemp(lEngineTempLeft - 1.4, 7)

			-- Exaust Gas Temperature Right
			FC_F15C_ExaustGasTemp(lEngineTempLeft - 1.4, 8)

			-- Fuel Flow Left
			FC_OneNeedleGauge3Digits((lEngineFuelConsumptionLeft * 2.2046223302272) * 3600, 10000, 2, 9)

			-- Fuel Flow Right
			FC_OneNeedleGauge3Digits((lEngineFuelConsumptionRight * 2.2046223302272) * 3600, 10000, 2, 10)

			-- Hydraulic Pressure Left
			FC_OneNeedleGauge(lEngineHydraulicPressureLeft, 100, 13)

			-- Hydraulic Pressure Right
			FC_OneNeedleGauge(lEngineHydraulicPressureRight, 100, 14)
			
			-- VVI
			FC_US_VVI(15)
			
			-- AOA
			--FC_US_AOA(16)
			--WriteToLog('lAoA 1: '..dump(lAoA))
			local lAoATmp = math.deg(lAoA) + 10
			--WriteToLog('lAoA 2: '..dump(lAoATmp))
			--[[
			y_min = 0.0								-- minimaler Ausgabewert
			y_max = 1.0								-- maximaler Ausgabewert
			x_min = 0.0								-- minimaler Eingangswert
			x_max = 45.0							-- maximaler Eingangswert 
			x = 12.6								-- aktueller Eingangswert 

			d_y = 1.0								-- Delta Ausgabewerte (y_max - y_min)
			d_x = 45.0								-- Delta Eingangswerte (x_max - x_min)
			m = 0.02222222222222222222222222222222	-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.0000000000000000000000000000001	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
			
			y = 0.2800000000000000000000000000001	-- Ergebnis (m * x + n)
			]]
			lAoATmp = 0.02222222222222222222222222222222 * lAoATmp + 0.0000000000000000000000000000001
			SendData(16, string.format("%.4f;%d", lAoATmp, 0) )
			
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
			
			-- Hydraulic Pressure Util, no value but similar to Engine Hydraulic Pressure (left or right)
			local lEngineHydraulicPressure	= lEngineHydraulicPressureLeft
			lEngineHydraulicPressure		= lEngineHydraulicPressureRight > lEngineHydraulicPressureLeft and lEngineHydraulicPressureRight or lEngineHydraulicPressureLeft
			FC_OneNeedleGauge(lEngineHydraulicPressure, 100, 23)
			
			-- Standby Barometrisic Altimeter
			--lAltBarTmp 					= lAltBar - (9.5 * (760 - lBasicAtmospherePressure))	-- 9.5 m per 1mmHg difference, has been calculated
			lAltBarTmp 						= lAltBar * 3.28084										-- meter to feeds

			local AltBar_kilofeet_needle	= 0
			local AltBar_hektofeet_needle	= 0
			local AltBar_dafeet_needle		= 0

			if lAltBarTmp > 1000 then
				AltBar_kilofeet_needle	= lAltBarTmp / 10000
			end
			if lAltBarTmp > 10000 then
				AltBar_hektofeet_needle	= (lAltBarTmp - (math.round(lAltBarTmp / 10000, 0, "floor") * 10000)) / 1000
			else
				AltBar_hektofeet_needle	= lAltBarTmp / 1000
			end
			if lAltBarTmp > 1000 then
				AltBar_dafeet_needle	= (lAltBarTmp - (math.round(lAltBarTmp / 1000, 0, "floor") * 1000)) / 100
			else
				AltBar_dafeet_needle	= lAltBarTmp / 100
			end
			
			--[[
			y_min = 0.0		-- minimaler Ausgabewert
			y_max = 1.0		-- maximaler Ausgabewert
			x_min = 0.0		-- minimaler Eingangswert
			x_max = 10.0	-- maximaler Eingangswert
			x = 2.5			-- aktueller Eingangswert

			d_y = 1.0		-- Delta Ausgabewerte (y_max - y_min)
			d_x = 10.0		-- Delta Eingangswerte (x_max - x_min)
			m = 0.1			-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.0			-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
			
			y = 0.25		-- Ergebnis (m * x + n)
			]]
			AltBar_kilofeet_needle	= 0.1 * AltBar_kilofeet_needle
			AltBar_hektofeet_needle	= 0.1 * AltBar_hektofeet_needle
			AltBar_dafeet_needle	= 0.1 * AltBar_dafeet_needle
			-- AltBar_kilofeet_needle {0.0,1.0}
			-- AltBar_hektofeet_needle {0.0,1.0}
			-- AltBar_dafeet_needle {0.0,1.0}
			SendData(24, string.format("%.4f;%.4f;%0.4f",
											AltBar_kilofeet_needle,
											AltBar_hektofeet_needle,
											AltBar_dafeet_needle))
			-- Standby Barometrisic Altimeter end
			
			-- Standby Air Speed Indicator (IAS, Mach)
			-- value has been calculated (from top)
			-- IAS {0.0,1.0}
			SendData(25, string.format("%.4f", lIAS))
			-- Standby Air Speed Indicator End
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
	local lEngineRPMleft			= LoGetEngineInfo().RPM.left							-- ENG1 RPM %
	local lEngineRPMright			= LoGetEngineInfo().RPM.right							-- ENG2 RPM %
	
	local lMechInfo 				= LoGetMechInfo() 										-- mechanical components,  e.g. Flaps, Wheelbrakes,...
	local lPayloadInfo				= LoGetPayloadInfo()									-- Paylod, e.g. bombs, guns, rockets, fuel tanks,...
	
	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3

	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6

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
		SendData(26, string.format("%d;%d;%d", 
									lGear1, 	-- GEAR_N_SAFE
									lGear2, 	-- GEAR_L_SAFE
									lGear3))	-- GEAR_R_SAFE
		-- Gear Lamps end

		-- Fuel Indicator
		local lEngineFuelTotal	= (lEngineFuelInternal + lEngineFuelExternal) * 2.2046223302272		-- kg to lbs
		local lFuelNeedle		= lEngineFuelTotal / 12000 -- 12000 = scala
		lFuelNeedle				= (lFuelNeedle > 1.0 and 1.0 or lFuelNeedle)
		--lEngineFuelTotal		= math.round(lEngineFuelTotal, 0, "floor")
		--[[
		local lFuelCounter1 = 0
		local lFuelCounter2 = 0
		local lFuelCounter3 = 0
		if lEngineFuelInternal > 100 then
			lFuelCounter1 = math.round((lEngineFuelInternal / 100), 0, "floor") * 0.11
			lFuelCounter1 = lFuelCounter1 - math.round(lFuelCounter1, 0, "floor")
		end
		if lEngineFuelInternal > 10 then
			if lEngineFuelInternal > 100 then
				lFuelCounter2 = (math.round((lEngineFuelInternal - (math.round(lEngineFuelInternal / 100, 0, "floor") * 100)), 0, "floor") / 10) * 0.11
			else
				lFuelCounter2 = (lEngineFuelInternal / 10) * 0.11
				lFuelCounter2 = lFuelCounter2 - math.round(lFuelCounter2, 0, "floor")
			end
		end
		if lEngineFuelInternal > 10 then
			lFuelCounter3 = (lEngineFuelInternal - (math.round(lEngineFuelInternal / 10, 0, "floor") * 10)) * 0.11
		else
			lFuelCounter3 = lEngineFuelInternal * 0.11
		end
		]]
		local lFuelCounterLeft	= 1200
		local lFuelCounterRight	= 1500
		
		if lEngineRPMleft > 0 then
			if lEngineRPMright > 0 then
				if lEngineFuelTotal < 2700 then
					lFuelCounterLeft = lEngineFuelTotal * 0.44444444444444444444444444444444
				end
			else
				if lEngineFuelTotal < 1200 then
					lFuelCounterLeft = lEngineFuelTotal
				end
			end
		end
		if lEngineRPMright > 0 then
			if lEngineRPMleft > 0 then
				if lEngineFuelTotal < 2700 then
					lFuelCounterRight = lEngineFuelTotal * 0.55555555555555555555555555555556
				end
			else
				if lEngineFuelTotal < 1500 then
					lFuelCounterRight = lEngineFuelTotal
				end
			end
		end
		
		--lFuelCounterLeft	= math.round(lFuelCounterLeft, 0, "floor")
		--lFuelCounterRight	= math.round(lFuelCounterRight, 0, "floor")
		
		SendData(27, string.format("%04d;%04d;%05d;%.4f", 
									lFuelCounterLeft,
									lFuelCounterRight,
									lEngineFuelTotal,
									lFuelNeedle))
		-- Fuel Indicator end
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
	RWRlite()
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
	--SendDataHW("601", lSightingSystemInfo.laser_on          == true and 1 or 0, lHardware )
	--SendDataHW("602", lSightingSystemInfo.optical_system_on == true and 1 or 0, lHardware )
	SendDataHW("603", lSightingSystemInfo.LaunchAuthorized  == true and 1 or 0, lHardware )
	SendDataHW("604", lSightingSystemInfo.radar_on          == true and 1 or 0, lHardware )
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
	
	if lMCPState ~= nil then
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
	end
	
	local lEngineInfo = LoGetEngineInfo()
	if lEngineInfo ~= nil then
		--WriteToLog('lEngineInfo: '..dump(lEngineInfo))

		SendDataHW("728", lEngineInfo.EngineStart.left, lHardware ) -- lamp start left engine 1 (0|1)
		SendDataHW("729", lEngineInfo.EngineStart.right, lHardware ) -- lamp start right engine 1 (0|1)
		
		SendDataHW("730", lEngineInfo.RPM.left  < 45 and 1 or 0, lHardware ) -- lamp generator left engine 1 (0|1)
		SendDataHW("731", lEngineInfo.RPM.right < 45 and 1 or 0, lHardware ) -- lamp generator right engine 1 (0|1)
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
		WriteToLog('lMechInfo nil')
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
	]]
	-- Payload Info
	-- weapon stations (panel) 1 (left) - 11 (right) reserved
	SendDataHW("100", gES_PayloadInfo.Cannon.shells, lHardware ) -- count cannon shells
	SendDataHW("101", (gES_PayloadInfo.Stations[1].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 1)
	SendDataHW("102", (gES_PayloadInfo.Stations[2].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 2)
	SendDataHW("103", (gES_PayloadInfo.Stations[3].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 3)
	SendDataHW("104", (gES_PayloadInfo.Stations[4].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 4)
	SendDataHW("105", (gES_PayloadInfo.Stations[5].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 5)
	SendDataHW("106", (gES_PayloadInfo.Stations[6].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 6, center station)
	SendDataHW("107", (gES_PayloadInfo.Stations[7].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 7)
	SendDataHW("108", (gES_PayloadInfo.Stations[8].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 8)
	SendDataHW("109", (gES_PayloadInfo.Stations[9].count  > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 9)
	SendDataHW("110", (gES_PayloadInfo.Stations[10].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 10)
	SendDataHW("111", (gES_PayloadInfo.Stations[11].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 11)
	-- weapon stations (panel) 1 (left) - 11 (right) empty
	SendDataHW("121", (gES_PayloadInfo.Stations[1].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 1)
	SendDataHW("122", (gES_PayloadInfo.Stations[2].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 2)
	SendDataHW("123", (gES_PayloadInfo.Stations[3].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 3)
	SendDataHW("124", (gES_PayloadInfo.Stations[4].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 4)
	SendDataHW("125", (gES_PayloadInfo.Stations[5].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 5)
	SendDataHW("126", (gES_PayloadInfo.Stations[6].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 6, center station)
	SendDataHW("127", (gES_PayloadInfo.Stations[7].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 7)
	SendDataHW("128", (gES_PayloadInfo.Stations[8].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 8)
	SendDataHW("129", (gES_PayloadInfo.Stations[9].count  == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 9)
	SendDataHW("130", (gES_PayloadInfo.Stations[10].count == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 10)
	SendDataHW("131", (gES_PayloadInfo.Stations[11].count == 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 11)	
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
		gTmpStationToPanel[2] =  {Panel =  2, StationID = 102, CurrentID = 202, CurrentID2 = 222, HardwareID = lHardware }
		gTmpStationToPanel[3] =  {Panel =  3, StationID = 103, CurrentID = 203, CurrentID2 = 223, HardwareID = lHardware }
		gTmpStationToPanel[4] =  {Panel =  4, StationID = 104, CurrentID = 204, CurrentID2 = 224, HardwareID = lHardware }
		gTmpStationToPanel[5] =  {Panel =  5, StationID = 105, CurrentID = 205, CurrentID2 = 225, HardwareID = lHardware }
		gTmpStationToPanel[6] =  {Panel =  6, StationID = 106, CurrentID = 206, CurrentID2 = 226, HardwareID = lHardware }
		gTmpStationToPanel[7] =  {Panel =  7, StationID = 107, CurrentID = 207, CurrentID2 = 227, HardwareID = lHardware }
		gTmpStationToPanel[8] =  {Panel =  8, StationID = 108, CurrentID = 208, CurrentID2 = 228, HardwareID = lHardware }
		gTmpStationToPanel[9] =  {Panel =  9, StationID = 109, CurrentID = 209, CurrentID2 = 229, HardwareID = lHardware }
		gTmpStationToPanel[10] = {Panel = 10, StationID = 110, CurrentID = 210, CurrentID2 = 230, HardwareID = lHardware }
		gTmpStationToPanel[11] = {Panel = 11, StationID = 111, CurrentID = 211, CurrentID2 = 231, HardwareID = lHardware }	-- right
		
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

function RWRlite(hardware)
    local lHardware = hardware or 1
	local lTWSInfo = LoGetTWSInfo() -- RWR Information
	if lTWSInfo == nil then
		return
	end

	local lPriorityTmp      = 0
	local lPrimaryThreatTmp = 0

	if(#lTWSInfo.Emitters > 0) then
		for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
			if(lTWSInfo.Emitters[EmitterIndex].Priority > lPriorityTmp) then
				lPriorityTmp      = lTWSInfo.Emitters[EmitterIndex].Priority
				lPrimaryThreatTmp = EmitterIndex
			end
		end
		
		for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
			local lType = lTWSInfo.Emitters[EmitterIndex].Type
			--WriteToLog('level: '..lType.level1..', '..lType.level2..', '..lType.level3..', '..lType.level4)
			
			local lAzimut = math.round(lTWSInfo.Emitters[EmitterIndex].Azimuth * 90, 1)
			
			if EmitterIndex == lPrimaryThreatTmp then
			    gES_RWRlite_FoundErmitter = true
				
				SendDataHW("400", (lType.level1 == 1 and 1 or 0), lHardware ) -- primary Air
				
				SendDataHW("401", ((lType.level1 == 2 and lType.level2 == 16) and 1 or 0), lHardware ) -- primary SAM
			end
		end
	else
		if gES_RWRlite_FoundErmitter ~= nil and gES_RWRlite_FoundErmitter then
			SendDataHW("400", 0, lHardware ) -- primary Air
				
			SendDataHW("401", 0, lHardware ) -- primary SAM
		end
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