-- F-15C Export
-- Version 1.0.2

ExportScript.FoundFCModule = true

-- auxiliary function
dofile(ExportScript.Config.ExportModulePath.."FC_AuxiliaryFuntions.lua")

-----------------------------------------
-- FLAMING CLIFFS AIRCRAFT / F-15C     --
-- FC aircraft don't support GetDevice --
-----------------------------------------

function ExportScript.ProcessIkarusFCHighImportanceConfig()
	local lFunctionTyp 					= "Ikarus"	-- function type for shared function
	local myData						= LoGetSelfData()

	if (myData) then
		local lLatitude					= myData.LatLongAlt.Lat									-- LATITUDE
		local lLongitude				= myData.LatLongAlt.Long								-- LONGITUDE
		local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()						-- BAROMETRIC PRESSURE
		local lAltBar					= LoGetAltitudeAboveSeaLevel()							-- ALTITUDE SEA LEVEL (Meter)

		local lEngineRPMleft			= LoGetEngineInfo().RPM.left							-- ENG1 RPM %
		local lEngineRPMright			= LoGetEngineInfo().RPM.right							-- ENG2 RPM %
		local lEngineTempLeft			= LoGetEngineInfo().Temperature.left					-- ENG1 EGT ºC
		local lEngineTempRight			= LoGetEngineInfo().Temperature.right					-- ENG2 EGT ºC		

		local lIAS						= LoGetIndicatedAirSpeed()								-- INDICATED AIRSPEED (Meter/Second)
		local lMachNumber				= LoGetMachNumber()										-- MACH
		local lAoA						= LoGetAngleOfAttack()									-- ANGLE OF ATTACK AoA (Radian)
		local lAccelerationUnits		= LoGetAccelerationUnits().y							-- G-LOAD

		local lEngineFuelConsumptionLeft	= LoGetEngineInfo().FuelConsumption.left
		local lEngineFuelConsumptionRight	= LoGetEngineInfo().FuelConsumption.right
		local lEngineHydraulicPressureLeft	= LoGetEngineInfo().HydraulicPressure.left
		local lEngineHydraulicPressureRight	= LoGetEngineInfo().HydraulicPressure.right

		--[[
		local lAltRad					= LoGetAltitudeAboveGroundLevel()						-- ALTITUDE GROUND LEVEL (Meter)
		local lTrueAirSpeed			    = LoGetTrueAirSpeed()									-- TRUE AIRSPEED (Meter/Second)
		local lPitch, lBank, lYaw		= LoGetADIPitchBankYaw()								-- PITCH, BANK, YAW (Radian)

		local lHeading					= myData.Heading										-- HEADING (Radian)
		local lVVI						= LoGetVerticalVelocity()								-- VERTICAL SPEED (Meter/Second)

		local lGlide					= LoGetGlideDeviation()									-- VOR1 HORIZONTAL DEFLECTION (-1 +1)
		local lSide						= LoGetSideDeviation()									-- VOR1 VERTICAL DEFLECTION (-1 +1)
		local lSlipBallPosition			= LoGetSlipBallPosition()								-- SLIP BALL (-1 +1)

		local lNavInfoPitch				= LoGetNavigationInfo().Requirements.pitch				-- AP REQUIRED PITCH (Radian)
		local lNavInfoRoll				= LoGetNavigationInfo().Requirements.roll				-- AP REQUIRED BANK (Radian)
		local lNavInfoSpeed				= LoGetNavigationInfo().Requirements.speed				-- AP SPEED (Meter/Second)
		local lNavInfoAltitude			= LoGetNavigationInfo().Requirements.altitude      	 	-- AP ALTITUDE (Meter)
		local lNavInfoVerticalSpeed		= LoGetNavigationInfo().Requirements.vertical_speed		-- AP VERTICAL SPEED (Meter/Second)

		local lControlPanel_HSI			= LoGetControlPanel_HSI()								-- HSI Data
		local lHSI_RMI					= LoGetControlPanel_HSI().RMI_raw						-- VOR1 OBS (Radian)
		local lHSI_ADF					= LoGetControlPanel_HSI().ADF_raw						-- ADF OBS (Radian)
		local lHSI_Heading				= LoGetControlPanel_HSI().Heading_raw					-- Heading (Radian)

		local lEngineFuelInternal		= LoGetEngineInfo().fuel_internal						-- TANK1 (INT) (KG)
		local lEngineFuelExternal		= LoGetEngineInfo().fuel_external						-- TANK2 (EXT) (KG)

		local lMechInfo 				= LoGetMechInfo() 										-- mechanical components,  e.g. Flaps, Wheelbrakes,...
		local lPayloadInfo				= LoGetPayloadInfo()									-- Paylod, e.g. bombs, guns, rockets, fuel tanks,...
		]]

		local lDistanceToWay			= 999
		local lRoute					= LoGetRoute()

		if (myData and lRoute) then -- if neither are nil
			local myLoc					= LoGeoCoordinatesToLoCoordinates(lLongitude, lLatitude)
			--lDistanceToWay				= math.sqrt((myLoc.x - lRoute.goto_point.world_point.x)^2 + (myLoc.y -  lRoute.goto_point.world_point.y)^2)
			lDistanceToWay              = math.sqrt((myLoc.x - lRoute.goto_point.world_point.x)^2 + (myLoc.z -  lRoute.goto_point.world_point.z)^2)
		end

		-- ADI
		ExportScript.AF.FC_US_ADI() -- ID 1 to 10

		-- HSI
		ExportScript.AF.FC_US_HSI(lDistanceToWay) -- ID 11 to 23

		-- VVI
		ExportScript.AF.FC_US_VVI() -- ID 24

		-- G-LOAD
		ExportScript.AF.FC_US_GLOAD() -- ID 25 to 27

		-- Clock
		ExportScript.AF.FC_US_Clock() -- ID 28 to 30

		-- Standby Compass
		ExportScript.AF.FC_US_Compass() -- ID 31 to 33

		-- Standby ADI
		ExportScript.AF.FC_US_stbyADI() -- ID 34, 35		

		-- Barometrisic Altimeter
		--local lAltCounter				= {[0] = 0.0, [1] = 0.11, [2] = 0.22, [3] = 0.33, [4] = 0.44, [5] = 0.55, [6] = 0.66, [7] = 0.77, [8] = 0.88, [9] = 0.99}
		local lAltCounter				= {[0] = 0.0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = 0.9}
		--local lAltBarTmp2				= string.format("%03d", ((lAltBar * 3.28084) / 100))			-- meter to feeds
		lAltBar							= lAltBar - (9.5 * (760 - lBasicAtmospherePressure))	-- 9.5 m per 1mmHg difference
		--lAltBar							= lAltBar + (9.5 * (760 - lBasicAtmospherePressure))	-- 9.5 m per 1mmHg difference
		local lAltBarTmp				= lAltBar * 3.28084										-- meter to feeds
		local lAltBarTmp2				= ((lAltBar * 3.28084) / 100)							-- meter to feeds

		lAltBarTmp = lAltBarTmp / 1000
		lAltBarTmp = lAltBarTmp - ExportScript.Tools.round(lAltBarTmp, 0, "floor")

		local lAltCounter1 = 0
		local lAltCounter2 = 0
		local lAltCounter3 = 0
		local lAltCounter4 = 0
		local lAltBarTmp3 = string.format("%03d", lAltBarTmp2)

		lAltCounter4 = lAltBarTmp * 10
		if lAltCounter4 > 1.0 then
			lAltCounter4 = lAltCounter4 - ExportScript.Tools.round(lAltCounter4, 0, "floor")
		end

		-- AltBar {0.0,1.0}
		-- AltBar_10000 {0.0,1.0}
		-- AltBar_1000 {0.0,1.0}
		-- AltBar_100 {0.0,1.0}
		-- AltBar_10 {0.0,1.0}
		ExportScript.Tools.SendData(36, lAltBarTmp)
		ExportScript.Tools.SendData(37, lAltCounter[tonumber(string.sub(lAltBarTmp3, 1, 1))])
		ExportScript.Tools.SendData(38, lAltCounter[tonumber(string.sub(lAltBarTmp3, 2, 2))])
		ExportScript.Tools.SendData(39, lAltCounter[tonumber(string.sub(lAltBarTmp3, 3, 3))])
		ExportScript.Tools.SendData(40, lAltCounter4)
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
		--SendData(2, string.format("%.4f;%.4f", lIAS, lMachNumber))
		ExportScript.Tools.SendData(44, string.format("%.4f", lIAS))
		ExportScript.Tools.SendData(45, string.format("%.4f", lMachNumber))
		-- Air Speed Indicator End

		-- RPM Engine Left
		ExportScript.AF.FC_OneNeedleGauge(lEngineRPMleft, 110, 46)

		-- RPM Engine Right
		ExportScript.AF.FC_OneNeedleGauge(lEngineRPMright, 110, 47)

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
			ExportScript.AF.FC_OneNeedleGauge(1.027027027027027027027027027027 * lEngineRPMleft, 100, 48)
		else
			ExportScript.AF.FC_OneNeedleGauge(1.142857142857142857142857142857 * lEngineRPMleft + -8.571428571428571428571428571415, 100, 48)
		end

		-- Oil Pressure Right, no value but similar to Engine RPM
		if lEngineRPMright < 74 then
			ExportScript.AF.FC_OneNeedleGauge(1.027027027027027027027027027027 * lEngineRPMright, 100, 49)
		else
			ExportScript.AF.FC_OneNeedleGauge(1.142857142857142857142857142857 * lEngineRPMright + -8.571428571428571428571428571415, 100, 49)
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
			ExportScript.AF.FC_OneNeedleGauge((0.76 * lEngineRPMleft + -72.2) * 100, 100, 50)
		else
			ExportScript.AF.FC_OneNeedleGauge(0, 100, 50)
		end

		-- Engine Exhaust Nozzle Position Indicator Right, very imprecise
		if lEngineRPMright > 95.0 then
			ExportScript.AF.FC_OneNeedleGauge((0.76 * lEngineRPMright + -72.2) * 100, 100, 51)
		else
			ExportScript.AF.FC_OneNeedleGauge(0, 100, 51)
		end

		-- Exaust Gas Temperature Left
		ExportScript.AF.FC_F15C_ExaustGasTemp(lEngineTempLeft - 1.4, 52, 53, 54, 55)

		-- Exaust Gas Temperature Right
		ExportScript.AF.FC_F15C_ExaustGasTemp(lEngineTempRight - 1.4, 56, 57, 58, 59)

		-- Fuel Flow Left
		ExportScript.AF.FC_OneNeedleGauge3Digits(((lEngineFuelConsumptionLeft * 2.2046223302272) * 3600), 10000, 2, 60, 61, 62, 63)

		-- Fuel Flow Right
		ExportScript.AF.FC_OneNeedleGauge3Digits(((lEngineFuelConsumptionRight * 2.2046223302272) * 3600), 10000, 2, 64, 65, 66, 67)

		-- Hydraulic Pressure Left
		ExportScript.AF.FC_OneNeedleGauge(lEngineHydraulicPressureLeft, 100, 68)

		-- Hydraulic Pressure Right
		ExportScript.AF.FC_OneNeedleGauge(lEngineHydraulicPressureRight, 100, 69)

		-- AOA
		--FC_US_AOA(16)
		--ExportScript.Tools.WriteToLog('lAoA 1: '..ExportScript.Tools.dump(lAoA))
		--local lAoATmp = math.deg(lAoA) + 10
		--ExportScript.Tools.WriteToLog('lAoA 2: '..ExportScript.Tools.dump(lAoATmp))
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
		--lAoATmp = 0.02222222222222222222222222222222 * lAoATmp + 0.0000000000000000000000000000001
		--SendData(16, string.format("%.4f;%d", lAoATmp, 0) )

		if lAoA > 0.0 then	-- positive AOA
			--[[
			y_min = 0.33							-- minimaler Ausgabewert
			y_max = 1.0								-- maximaler Ausgabewert
			x_min = 0.0								-- minimaler Eingangswert
			x_max = 30.0							-- maximaler Eingangswert 
			x = 12.6								-- aktueller Eingangswert 

			d_y = 0.67								-- Delta Ausgabewerte (y_max - y_min)
			d_x = 30.0								-- Delta Eingangswerte (x_max - x_min)
			m = 0.02233333333333333333333333333333	-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.33								-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

			y = 0.6114								-- Ergebnis (m * x + n)
			]]
			lAoA = 0.02228571428571428571428571428571 * lAoA + 0.33
		else
			--[[
			y_min = 0.0								-- minimaler Ausgabewert
			y_max = 0.33							-- maximaler Ausgabewert
			x_min = 0.0								-- minimaler Eingangswert
			x_max = -10.0							-- maximaler Eingangswert 
			x = -2.6								-- aktueller Eingangswert 

			d_y = 0.33								-- Delta Ausgabewerte (y_max - y_min)
			d_x = -10.0								-- Delta Eingangswerte (x_max - x_min)
			m = -0.033								-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.0									-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
			
			y = 0.2442								-- Ergebnis 0.33 - (m * x + n)
			]]
			--lAoA = 0.22 - (-0.022 * lAoA)
			lAoA = 0.33 - (-0.033 * lAoA)
		end
		ExportScript.Tools.SendData(70, string.format("%.4f", lAoA))
		ExportScript.Tools.SendData(0, 0) -- AOA Off Flag off
		-- AOA End

		-- Hydraulic Pressure Util, no value but similar to Engine Hydraulic Pressure (left or right)
		local lEngineHydraulicPressure	= lEngineHydraulicPressureLeft
		lEngineHydraulicPressure		= lEngineHydraulicPressureRight > lEngineHydraulicPressureLeft and lEngineHydraulicPressureRight or lEngineHydraulicPressureLeft
		ExportScript.AF.FC_OneNeedleGauge(lEngineHydraulicPressure, 100, 71)

		-- Standby Air Speed Indicator (IAS, Mach)
		-- value has been calculated (from top)
		-- IAS {0.0,1.0}
		ExportScript.Tools.SendData(72, string.format("%.4f", lIAS))
		-- Standby Air Speed Indicator End

		-- AccelerationUnits
		--ExportScript.Tools.WriteToLog("lAccelerationUnits: "..ExportScript.Tools.dump(lAccelerationUnits))
		if lAccelerationUnits > 0.0 then	-- positive AccelerationUnits
			--[[
			y_min = 0.333							-- minimaler Ausgabewert
			y_max = 1.0								-- maximaler Ausgabewert
			x_min = 0.0								-- minimaler Eingangswert
			x_max = 10.0							-- maximaler Eingangswert 
			x = 2.6									-- aktueller Eingangswert 

			d_y = 0.667								-- Delta Ausgabewerte (y_max - y_min)
			d_x = 10.0								-- Delta Eingangswerte (x_max - x_min)
			m = 0.0667								-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.333								-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

			y = 0.50642								-- Ergebnis (m * x + n)
			]]
			lAccelerationUnits = 0.0667 * lAccelerationUnits + 0.333
		else
			--[[
			y_min = 0.0								-- minimaler Ausgabewert
			y_max = 0.333							-- maximaler Ausgabewert
			x_min = 0.0								-- minimaler Eingangswert
			x_max = -5.0							-- maximaler Eingangswert 
			x = -2.6								-- aktueller Eingangswert 

			d_y = 0.333								-- Delta Ausgabewerte (y_max - y_min)
			d_x = -5.0								-- Delta Eingangswerte (x_max - x_min)
			m = -0.0666								-- Steigung der linearen Funktion (d_y / d_x)
			n = 0.666									-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

			y = 0.17316								-- Ergebnis 0.666 - (m * x + n)
			]]
			lAccelerationUnits = 0.666 - (-0.0666 * lAccelerationUnits + 0.666)
		end
		ExportScript.Tools.SendData(73,  string.format("%.4f", lAccelerationUnits))
		-- AccelerationUnits End

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
			AltBar_hektofeet_needle	= (lAltBarTmp - (ExportScript.Tools.round(lAltBarTmp / 10000, 0, "floor") * 10000)) / 1000
		else
			AltBar_hektofeet_needle	= lAltBarTmp / 1000
		end
		if lAltBarTmp > 1000 then
			AltBar_dafeet_needle	= (lAltBarTmp - (ExportScript.Tools.round(lAltBarTmp / 1000, 0, "floor") * 1000)) / 100
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
		ExportScript.Tools.SendData(41, string.format("%.4f", AltBar_kilofeet_needle))
		ExportScript.Tools.SendData(42, string.format("%.4f", AltBar_hektofeet_needle))
		ExportScript.Tools.SendData(43, string.format("%.4f", AltBar_dafeet_needle))
		-- Standby Barometrisic Altimeter end

		ExportScript.AF.FlareChaff(lFunctionTyp)
	else
		ExportScript.Tools.WriteToLog("Unknown FC Error, no LoGetSelfData.")
	end
end

function ExportScript.ProcessDACConfigHighImportance()
	local lFunctionTyp = "DAC"	-- function type for shared function

	-- your script
	ExportScript.AF.FlareChaff(lFunctionTyp)
end

function ExportScript.ProcessIkarusFCLowImportanceConfig()
	local lFunctionTyp = "Ikarus"	-- function type for shared function

	-- Gear Lamps
	ExportScript.AF.MechanicalDevicesIndicator(lFunctionTyp)
	ExportScript.AF.FuelQuantityIndicator(lFunctionTyp)

	ExportScript.AF.SightingSystem(lFunctionTyp)
	ExportScript.AF.StatusLamp(lFunctionTyp)
	ExportScript.AF.RWRlite(lFunctionTyp)
end

function ExportScript.ProcessDACConfigLowImportance()
	local lFunctionTyp = "DAC"	-- function type for shared function

	ExportScript.AF.MechanicalDevicesIndicator(lFunctionTyp)
	ExportScript.AF.FuelQuantityIndicator(lFunctionTyp)

	ExportScript.AF.SightingSystem(lFunctionTyp)
	ExportScript.AF.StatusLamp(lFunctionTyp)
	ExportScript.AF.WeaponStatusPanel(lFunctionTyp)
	ExportScript.AF.RWRlite(lFunctionTyp)
end

-----------------------------
--     Custom functions    --
-----------------------------

function ExportScript.AF.SightingSystem(FunctionTyp)
	local lSightingSystemInfo = LoGetSightingSystemInfo()
	local lFunctionTyp = FunctionTyp or "Ikarus"
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
	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		ExportScript.Tools.SendData(600, lSightingSystemInfo.ECM_on            == true and 1 or 0 )
		--ExportScript.Tools.SendData(601, lSightingSystemInfo.laser_on          == true and 1 or 0 )
		--ExportScript.Tools.SendData(602, lSightingSystemInfo.optical_system_on == true and 1 or 0 )
		ExportScript.Tools.SendData(603, lSightingSystemInfo.LaunchAuthorized  == true and 1 or 0 )
		ExportScript.Tools.SendData(604, lSightingSystemInfo.radar_on          == true and 1 or 0 )
	end

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC(600, lSightingSystemInfo.ECM_on            == true and 1 or 0 )
		--ExportScript.Tools.SendDataDAC(601, lSightingSystemInfo.laser_on          == true and 1 or 0 )
		--ExportScript.Tools.SendDataDAC(602, lSightingSystemInfo.optical_system_on == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC(603, lSightingSystemInfo.LaunchAuthorized  == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC(604, lSightingSystemInfo.radar_on          == true and 1 or 0 )
	end
end

function ExportScript.AF.FuelQuantityIndicator(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"
-- Fuel quantity shows the fuel remaining in all tanks
	local lEngineInfo = LoGetEngineInfo()
	if lEngineInfo == nil then
		return
	end
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
	lPayloadInfo.Stations[8].CLSID == E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF   -- ext 800l Fuel Tank
	]]

	local lEngineFuelTotal	= (lEngineInfo.fuel_internal + lEngineInfo.fuel_external) * 2.2046223302272		-- kg to lbs
	local lFuelNeedle		= lEngineFuelTotal / 12000 -- 12000 = scala
	lFuelNeedle				= (lFuelNeedle > 1.0 and 1.0 or lFuelNeedle)

	local lFuelCounterLeft	= 1200
	local lFuelCounterRight	= 1500

	if lEngineInfo.RPM.left > 0 then
		if lEngineInfo.RPM.right > 0 then
			if lEngineFuelTotal < 2700 then
				lFuelCounterLeft = lEngineFuelTotal * 0.44444444444444444444444444444444
			end
		else
			if lEngineFuelTotal < 1200 then
				lFuelCounterLeft = lEngineFuelTotal
			end
		end
	end
	if lEngineInfo.RPM.right > 0 then
		if lEngineInfo.RPM.left > 0 then
			if lEngineFuelTotal < 2700 then
				lFuelCounterRight = lEngineFuelTotal * 0.55555555555555555555555555555556
			end
		else
			if lEngineFuelTotal < 1500 then
				lFuelCounterRight = lEngineFuelTotal
			end
		end
	end

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		ExportScript.Tools.SendData(300, string.format("%d", lFuelCounterLeft))		-- Left Fuel
		ExportScript.Tools.SendData(301, string.format("%d", lFuelCounterRight))	-- Right Fuel
		ExportScript.Tools.SendData(302, string.format("%d", lEngineFuelTotal))		-- Total Fuel
		ExportScript.Tools.SendData(303, string.format("%.4f", lFuelNeedle))		-- Needle
	end

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC(300, string.format("%d", lFuelCounterLeft))	-- Left Fuel
		ExportScript.Tools.SendDataDAC(301, string.format("%d", lFuelCounterRight))	-- Right Fuel
		ExportScript.Tools.SendDataDAC(302, string.format("%d", lEngineFuelTotal))	-- Total Fuel
	end
end

function ExportScript.AF.StatusLamp(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"
	local lMCPState = LoGetMCPState() -- Warning Lights
	if lMCPState == nil then
		return
	end
	--ExportScript.Tools.WriteToLog('lMCPState: '..ExportScript.Tools.dump(lMCPState))
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
	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		ExportScript.Tools.SendData(700, lMCPState.LeftTailPlaneFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(701, lMCPState.RightTailPlaneFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(702, lMCPState.MasterWarning == true and 1 or 0 )
		ExportScript.Tools.SendData(703, lMCPState.LeftEngineFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(704, lMCPState.RightEngineFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(705, lMCPState.LeftAileronFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(706, lMCPState.RightAileronFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(707, lMCPState.LeftMainPumpFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(708, lMCPState.RightMainPumpFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(709, lMCPState.LeftWingPumpFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(710, lMCPState.RightWingPumpFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(711, lMCPState.EOSFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(712, lMCPState.ECMFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(713, lMCPState.CannonFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(714, lMCPState.MLWSFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(715, lMCPState.ACSFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(716, lMCPState.RadarFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(717, lMCPState.HelmetFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(718, lMCPState.HUDFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(719, lMCPState.MFDFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(720, lMCPState.RWSFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(721, lMCPState.GearFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(722, lMCPState.HydraulicsFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(723, lMCPState.AutopilotFailure == true and 1 or 0 )
		ExportScript.Tools.SendData(724, lMCPState.FuelTankDamage == true and 1 or 0 )
		--ExportScript.Tools.SendData(725, lMCPState.CanopyOpen == true and 1 or 0 )
		ExportScript.Tools.SendData(726, lMCPState.StallSignalization == true and 1 or 0 )
		ExportScript.Tools.SendData(727, lMCPState.AutopilotOn == true and 1 or 0 )

		local lEngineInfo = LoGetEngineInfo()
		if lEngineInfo ~= nil then
			--ExportScript.Tools.WriteToLog('lEngineInfo: '..ExportScript.Tools.dump(lEngineInfo))

			ExportScript.Tools.SendData(728, lEngineInfo.EngineStart.left ) -- lamp start left engine 1 (0|1)
			ExportScript.Tools.SendData(729, lEngineInfo.EngineStart.right ) -- lamp start right engine 1 (0|1)

			ExportScript.Tools.SendData(730, lEngineInfo.RPM.left  < 45 and 1 or 0 ) -- lamp generator left engine 1 (0|1)
			ExportScript.Tools.SendData(731, lEngineInfo.RPM.right < 45 and 1 or 0 ) -- lamp generator right engine 1 (0|1)
		end
	
	end

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC("700", lMCPState.LeftTailPlaneFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("701", lMCPState.RightTailPlaneFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("702", lMCPState.MasterWarning == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("703", lMCPState.LeftEngineFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("704", lMCPState.RightEngineFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("705", lMCPState.LeftAileronFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("706", lMCPState.RightAileronFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("707", lMCPState.LeftMainPumpFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("708", lMCPState.RightMainPumpFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("709", lMCPState.LeftWingPumpFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("710", lMCPState.RightWingPumpFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("711", lMCPState.EOSFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("712", lMCPState.ECMFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("713", lMCPState.CannonFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("714", lMCPState.MLWSFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("715", lMCPState.ACSFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("716", lMCPState.RadarFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("717", lMCPState.HelmetFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("718", lMCPState.HUDFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("719", lMCPState.MFDFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("720", lMCPState.RWSFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("721", lMCPState.GearFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("722", lMCPState.HydraulicsFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("723", lMCPState.AutopilotFailure == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("724", lMCPState.FuelTankDamage == true and 1 or 0 )
		--ExportScript.Tools.SendDataDAC("725", lMCPState.CanopyOpen == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("726", lMCPState.StallSignalization == true and 1 or 0 )
		ExportScript.Tools.SendDataDAC("727", lMCPState.AutopilotOn == true and 1 or 0 )

		local lEngineInfo = LoGetEngineInfo()
		if lEngineInfo ~= nil then 
				--ExportScript.Tools.WriteToLog('lEngineInfo: '..ExportScript.Tools.dump(lEngineInfo))
			ExportScript.Tools.SendDataDAC("728", lEngineInfo.EngineStart.left ) -- lamp start left engine 1 (0|1)
			ExportScript.Tools.SendDataDAC("729", lEngineInfo.EngineStart.right ) -- lamp start right engine 1 (0|1)

			ExportScript.Tools.SendDataDAC("730", lEngineInfo.RPM.left  < 45 and 1 or 0 ) -- lamp generator left engine 1 (0|1)
			ExportScript.Tools.SendDataDAC("731", lEngineInfo.RPM.right < 45 and 1 or 0 ) -- lamp generator right engine 1 (0|1)
		end
	end
end

function ExportScript.AF.FlareChaff(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"
	local lSnares = LoGetSnares() -- Flare and Chaff
	if lSnares == nil then
		return
	end
	--ExportScript.Tools.WriteToLog('lSnares: '..ExportScript.Tools.dump(lSnares))

	--[chaff] = number: "30"
    --[flare] = number: "30"

	if ExportScript.AF.maxChaff == nil then
		ExportScript.AF.maxChaff = lSnares.chaff
		ExportScript.AF.tmpChaff = ExportScript.AF.maxChaff
	end
	if ExportScript.AF.maxFlare == nil then
		ExportScript.AF.maxFlare = lSnares.flare
		ExportScript.AF.tmpFlare = ExportScript.AF.maxFlare
	end
	if ExportScript.AF.timerChaff == nil then
		ExportScript.AF.timerChaff = 0
		ExportScript.AF.timerChaffCounter = 3
	end
	if ExportScript.AF.timerFlare == nil then
		ExportScript.AF.timerFlare = 0
		ExportScript.AF.timerFlareCounter = 3
	end
	local lblinkChaff = 0
	local lblinkFlare = 0
	local ltmp = 0

	if ExportScript.AF.tmpChaff == 0 then
		lblinkChaff = 1
	end
	if ExportScript.AF.tmpFlare == 0 then
		lblinkFlare = 1
	end
	
	if lSnares.chaff < ExportScript.AF.tmpChaff then
	--ExportScript.Tools.WriteToLog('Chaff: '..ExportScript.Tools.dump(lSnares.chaff)..', ExportScript.AF.tmpChaff:'..ExportScript.Tools.dump(ExportScript.AF.tmpChaff))
		ExportScript.AF.tmpChaff = lSnares.chaff
		--ExportScript.AF.timerChaff = os.time()
		ExportScript.AF.timerChaff = os.clock()
		ExportScript.Tools.WriteToLog('Chaff ausgeworfen, Zeit: '..ExportScript.Tools.dump(ExportScript.AF.timerChaff))
		ExportScript.AF.timerChaffCounter = 3
	end
	if lSnares.flare < ExportScript.AF.tmpFlare then
	--ExportScript.Tools.WriteToLog('Flare: '..ExportScript.Tools.dump(lSnares.flare)..', ExportScript.AF.tmpFlare:'..ExportScript.Tools.dump(ExportScript.AF.tmpFlare))
		ExportScript.AF.tmpFlare = lSnares.flare
		--ExportScript.AF.timerFlare = os.time()
		ExportScript.AF.timerFlare = os.clock()
		ExportScript.Tools.WriteToLog('Flare ausgeworfen, Zeit: '..ExportScript.Tools.dump(ExportScript.AF.timerFlare))
		ExportScript.AF.timerFlareCounter = 3
	end

	if lblinkChaff == 0 and ExportScript.AF.timerChaff > 0.0 and ExportScript.AF.timerChaffCounter > 0 then
		--local ldiffTimer = os.difftime (os.time(), ExportScript.AF.timerChaff)
		local ldiffTimer = os.clock() - ExportScript.AF.timerChaff
		ltmp, ldiffTimer = math.modf(ldiffTimer)
		--ExportScript.Tools.WriteToLog('Zeit: '..ExportScript.AF.timerChaff..', Counter: '..ExportScript.AF.timerChaffCounter)
		--ExportScript.Tools.WriteToLog('Zeit Diff: '..ldiffTimer)
		if ExportScript.AF.timerChaffCounter == 1 and ldiffTimer > 0.9 then
		--ExportScript.Tools.WriteToLog('0')
			lblinkChaff = 0
			ExportScript.AF.timerChaffCounter = 3
			ExportScript.AF.timerChaff = 0.0
		elseif ExportScript.AF.timerChaffCounter == 1 and ldiffTimer > 0.8 then
		--ExportScript.Tools.WriteToLog('1')
			lblinkChaff = 1
			--ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 2 and ldiffTimer > 0.6 then
		--ExportScript.Tools.WriteToLog('2')
			lblinkChaff = 0
			ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 2 and ldiffTimer > 0.4 then
		--ExportScript.Tools.WriteToLog('3')
			lblinkChaff = 1
			--ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 3 and ldiffTimer > 0.2 then
		--ExportScript.Tools.WriteToLog('4')
			lblinkChaff = 0
			ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 3 and ldiffTimer > 0.0 then
		--ExportScript.Tools.WriteToLog('5')
			lblinkChaff = 1
			--ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ldiffTimer > 0.95 then
		--ExportScript.Tools.WriteToLog('else')
			lblinkChaff = 0
			ExportScript.AF.timerChaffCounter = 3
			ExportScript.AF.timerChaff = 0.0
		end
		
		--[[
		if ExportScript.AF.timerChaffCounter == 3 and ldiffTimer < 0.5 then
		ExportScript.Tools.WriteToLog('0')
			lblinkChaff = 1
			--ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 3 and ldiffTimer < 1.0 then
		ExportScript.Tools.WriteToLog('1')
			lblinkChaff = 0
			ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 2 and ldiffTimer < 1.5 then
		ExportScript.Tools.WriteToLog('2')
			lblinkChaff = 1
			--ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 2 and ldiffTimer < 2.0 then
		ExportScript.Tools.WriteToLog('3')
			lblinkChaff = 0
			ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 1 and ldiffTimer < 2.5 then
		ExportScript.Tools.WriteToLog('4')
			lblinkChaff = 1
			--ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 1 and ldiffTimer < 3.0 then
		ExportScript.Tools.WriteToLog('5')
			lblinkChaff = 0
			ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 0 or ldiffTimer > 3.0 then
		ExportScript.Tools.WriteToLog('else')
			lblinkChaff = 0
			ExportScript.AF.timerChaffCounter = 3
			ExportScript.AF.timerChaff = 0
		end]]
	--[[
		if ExportScript.AF.timerChaffCounter == 1 and ldiffTimer == 5 then
		ExportScript.Tools.WriteToLog('0')
			lblinkChaff = 0
			ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 1 and ldiffTimer == 4 then
		ExportScript.Tools.WriteToLog('1')
			lblinkChaff = 1
			--ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 2 and ldiffTimer == 3 then
		ExportScript.Tools.WriteToLog('2')
			lblinkChaff = 0
			ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 2 and ldiffTimer == 2 then
		ExportScript.Tools.WriteToLog('3')
			lblinkChaff = 1
			--ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 3 and ldiffTimer == 1 then
		ExportScript.Tools.WriteToLog('4')
			lblinkChaff = 0
			ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 3 and ldiffTimer == 0 then
		ExportScript.Tools.WriteToLog('5')
			lblinkChaff = 1
			--ExportScript.AF.timerChaffCounter = ExportScript.AF.timerChaffCounter - 1
		elseif ExportScript.AF.timerChaffCounter == 0 or ldiffTimer > 5 then
		ExportScript.Tools.WriteToLog('else')
			lblinkChaff = 0
			ExportScript.AF.timerChaffCounter = 3
			ExportScript.AF.timerChaff = 0
		end]]
	end
	
	if lblinkFlare == 0 and ExportScript.AF.timerFlare > 0.0 and ExportScript.AF.timerFlareCounter > 0 then
		--local ldiffTimer = os.difftime (os.time(), ExportScript.AF.timerFlare)
		local ldiffTimer = os.clock() - ExportScript.AF.timerFlare
		ltmp, ldiffTimer = math.modf(ldiffTimer)
		--ExportScript.Tools.WriteToLog('Zeit: '..ExportScript.AF.timerFlare..', Counter: '..ExportScript.AF.timerFlareCounter)
		--ExportScript.Tools.WriteToLog('Zeit Diff: '..ldiffTimer)
		if ExportScript.AF.timerFlareCounter == 1 and ldiffTimer > 0.9 then
		--ExportScript.Tools.WriteToLog('0')
			lblinkFlare = 0
			ExportScript.AF.timerFlareCounter = 3
			ExportScript.AF.timerFlare = 0.0
		elseif ExportScript.AF.timerFlareCounter == 1 and ldiffTimer > 0.8 then
		--ExportScript.Tools.WriteToLog('1')
			lblinkFlare = 1
			--ExportScript.AF.timerFlareCounter = ExportScript.AF.timerFlareCounter - 1
		elseif ExportScript.AF.timerFlareCounter == 2 and ldiffTimer > 0.6 then
		--ExportScript.Tools.WriteToLog('2')
			lblinkFlare = 0
			ExportScript.AF.timerFlareCounter = ExportScript.AF.timerFlareCounter - 1
		elseif ExportScript.AF.timerFlareCounter == 2 and ldiffTimer > 0.4 then
		--ExportScript.Tools.WriteToLog('3')
			lblinkFlare = 1
			--ExportScript.AF.timerFlareCounter = ExportScript.AF.timerFlareCounter - 1
		elseif ExportScript.AF.timerFlareCounter == 3 and ldiffTimer > 0.2 then
		--ExportScript.Tools.WriteToLog('4')
			lblinkFlare = 0
			ExportScript.AF.timerFlareCounter = ExportScript.AF.timerFlareCounter - 1
		elseif ExportScript.AF.timerFlareCounter == 3 and ldiffTimer > 0.0 then
		--ExportScript.Tools.WriteToLog('5')
			lblinkFlare = 1
			--ExportScript.AF.timerFlareCounter = ExportScript.AF.timerFlareCounter - 1
		elseif ldiffTimer > 0.95 then
		--ExportScript.Tools.WriteToLog('else')
			lblinkFlare = 0
			ExportScript.AF.timerFlareCounter = 3
			ExportScript.AF.timerFlare = 0.0
		end
	end

	--ExportScript.Tools.WriteToLog('lblinkChaff: '..lblinkChaff)

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		ExportScript.Tools.SendData(800, lSnares.chaff ) -- display chaff
		ExportScript.Tools.SendData(801, lSnares.flare ) -- display flare
		ExportScript.Tools.SendData(802, lblinkChaff ) -- blink chaff active/aktive empty chaff
		ExportScript.Tools.SendData(803, lblinkFlare ) -- blink flare active/aktive empty flare
		ExportScript.Tools.SendData(804, ExportScript.AF.tmpChaff < 20 and 1 or 0 ) -- minimum chaff lamp
		ExportScript.Tools.SendData(805, ExportScript.AF.tmpFlare < 10 and 1 or 0 ) -- minimum flare lamp
	end
	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC(800, lSnares.chaff ) -- display chaff
		ExportScript.Tools.SendDataDAC(801, lSnares.flare ) -- display flare
		ExportScript.Tools.SendDataDAC(802, lblinkChaff ) -- blink chaff active/aktive empty chaff
		ExportScript.Tools.SendDataDAC(803, lblinkFlare ) -- blink flare active/aktive empty flare
		ExportScript.Tools.SendDataDAC(804, ExportScript.AF.tmpChaff < 20 and 1 or 0 ) -- minimum chaff lamp
		ExportScript.Tools.SendDataDAC(805, ExportScript.AF.tmpFlare < 10 and 1 or 0 ) -- minimum flare lamp
	end
end

function ExportScript.AF.MechanicalDevicesIndicator(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"
-- The mechanical devices indicator shows the position of the landing gear, flaps, leading edge flaps and airbrake
	local lMechInfo		= LoGetMechInfo() -- mechanical components,  e.g. Flaps, Wheelbrakes,...
	if lMechInfo == nil then
		return
	end
	local lTrueAirSpeed	= LoGetTrueAirSpeed()
	if lTrueAirSpeed == nil then
		lTrueAirSpeed = 0
	end
	--ExportScript.Tools.WriteToLog('ExportScript.AF.MechanicalDevicesIndicator: '..ExportScript.Tools.dump(lMechInfo))
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

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		ExportScript.Tools.SendData(501, (lMechInfo.gear.value > 0.85 and 1 or 0) ) -- nose gear
		ExportScript.Tools.SendData(502, (lMechInfo.gear.value > 0.95 and 1 or 0) ) -- left gear
		ExportScript.Tools.SendData(503, (lMechInfo.gear.value == 1 and 1 or 0) )   -- right gear

	    ExportScript.Tools.SendData(510, (lMechInfo.speedbrakes.value  > 0.1 and 1 or 0) ) -- speedbreakes on > 0.1 (0 - 1)

		ExportScript.Tools.SendData(531, ((lMechInfo.flaps.value > 0.25 and lMechInfo.flaps.value < 0.93) and 1 or 0) ) -- flap 1. position
		ExportScript.Tools.SendData(532, (lMechInfo.flaps.value > 0.93 and 1 or 0) ) -- flap 2. position
		ExportScript.Tools.SendData(533, ((lMechInfo.flaps.value > 0.93 and lTrueAirSpeed > 340) and 1 or 0) ) -- Speed Warning for Flaps, same light as gear warning light, but blinking light
		ExportScript.Tools.SendData(534, (lMechInfo.gear.value > 0.5 and 1 or 0) )	-- Intake FOD shields

	    ExportScript.Tools.SendData(725, (lMechInfo.canopy.value  == 1 and 1 or 0) ) -- CanopyOpen
	end

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC(501, (lMechInfo.gear.value > 0.85 and 1 or 0) ) -- nose gear
		ExportScript.Tools.SendDataDAC(502, (lMechInfo.gear.value > 0.95 and 1 or 0) ) -- left gear
		ExportScript.Tools.SendDataDAC(503, (lMechInfo.gear.value == 1 and 1 or 0) )   -- right gear		

	    ExportScript.Tools.SendDataDAC(510, (lMechInfo.speedbrakes.value  > 0.1 and 1 or 0) ) -- speedbreakes on > 0.1 (0 - 1)

		ExportScript.Tools.SendDataDAC(531, ((lMechInfo.flaps.value > 0.25 and lMechInfo.flaps.value < 0.93) and 1 or 0) ) -- flap 1. position
		ExportScript.Tools.SendDataDAC(532, (lMechInfo.flaps.value > 0.93 and 1 or 0) ) -- flap 2. position
		ExportScript.Tools.SendDataDAC(533, ((lMechInfo.flaps.value > 0.93 and lTrueAirSpeed > 340) and 1 or 0) ) -- Speed Warning for Flaps, same light as gear warning light, but blinking light
		ExportScript.Tools.SendDataDAC(534, (lMechInfo.gear.value > 0.5 and 1 or 0) )	-- Intake FOD shields

	    ExportScript.Tools.SendDataDAC(725, (lMechInfo.canopy.value  == 1 and 1 or 0) ) -- CanopyOpen
	end
end

function ExportScript.AF.WeaponStatusPanel(FunctionTyp)
-- The weapon status panel, quantity and readiness of the currently selected weapon and the remaining gun ammunition are indicated.
	local lFunctionTyp = FunctionTyp or "Ikarus"
	ExportScript.AF.PayloadInfo = LoGetPayloadInfo()
	if ExportScript.AF.PayloadInfo == nil then
		return
	end
	--ExportScript.Tools.WriteToLog('ExportScript.AF.PayloadInfo: '..ExportScript.Tools.dump(ExportScript.AF.PayloadInfo))
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

	--ExportScript.Tools.SendDataDAC("CurrentStation", ExportScript.AF.PayloadInfo.CurrentStation ) 
	-- air-to-air missils panel 1 and 11, air combat modus, CurrentStation = 1, panel 1 and 11 on
	-- wenn die Waffenstationen gleichmässig belegt sind, hat bei Auswahl CurrentStation immer den Wert der linken Station
	-- bei ungleichmäßiger Belegung, hat CurrentStation immer den Wert der jeweiligen Station
	-- Waffenbezeichnung als UUID, ExportScript.AF.PayloadInfo.Stations[X].CLSID 	
	ExportScript.Tools.SendDataDAC("100", ExportScript.AF.PayloadInfo.Cannon.shells ) -- count cannon shells
	ExportScript.Tools.SendDataDAC("101", (ExportScript.AF.PayloadInfo.Stations[1].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 1)
	ExportScript.Tools.SendDataDAC("102", (ExportScript.AF.PayloadInfo.Stations[2].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 2)
	ExportScript.Tools.SendDataDAC("103", (ExportScript.AF.PayloadInfo.Stations[3].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 3)
	ExportScript.Tools.SendDataDAC("104", (ExportScript.AF.PayloadInfo.Stations[4].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 4)
	ExportScript.Tools.SendDataDAC("105", (ExportScript.AF.PayloadInfo.Stations[5].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 5)
	ExportScript.Tools.SendDataDAC("106", (ExportScript.AF.PayloadInfo.Stations[6].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 6, center station)
	ExportScript.Tools.SendDataDAC("107", (ExportScript.AF.PayloadInfo.Stations[7].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 7)
	ExportScript.Tools.SendDataDAC("108", (ExportScript.AF.PayloadInfo.Stations[8].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 8)
	ExportScript.Tools.SendDataDAC("109", (ExportScript.AF.PayloadInfo.Stations[9].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 9)
	ExportScript.Tools.SendDataDAC("110", (ExportScript.AF.PayloadInfo.Stations[10].count > 0 and 1 or 0) ) -- weapon presend > 0 (panel 10)
	ExportScript.Tools.SendDataDAC("111", (ExportScript.AF.PayloadInfo.Stations[11].count > 0 and 1 or 0) ) -- weapon presend > 0 (panel 11)
	-- weapon stations (panel) 1 (left) - 11 (right) empty
	ExportScript.Tools.SendDataDAC("121", (ExportScript.AF.PayloadInfo.Stations[1].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 1)
	ExportScript.Tools.SendDataDAC("122", (ExportScript.AF.PayloadInfo.Stations[2].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 2)
	ExportScript.Tools.SendDataDAC("123", (ExportScript.AF.PayloadInfo.Stations[3].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 3)
	ExportScript.Tools.SendDataDAC("124", (ExportScript.AF.PayloadInfo.Stations[4].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 4)
	ExportScript.Tools.SendDataDAC("125", (ExportScript.AF.PayloadInfo.Stations[5].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 5)
	ExportScript.Tools.SendDataDAC("126", (ExportScript.AF.PayloadInfo.Stations[6].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 6, center station)
	ExportScript.Tools.SendDataDAC("127", (ExportScript.AF.PayloadInfo.Stations[7].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 7)
	ExportScript.Tools.SendDataDAC("128", (ExportScript.AF.PayloadInfo.Stations[8].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 8)
	ExportScript.Tools.SendDataDAC("129", (ExportScript.AF.PayloadInfo.Stations[9].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 9)
	ExportScript.Tools.SendDataDAC("130", (ExportScript.AF.PayloadInfo.Stations[10].count == 0 and 1 or 0) ) -- weapon presend > 0 (panel 10)
	ExportScript.Tools.SendDataDAC("131", (ExportScript.AF.PayloadInfo.Stations[11].count == 0 and 1 or 0) ) -- weapon presend > 0 (panel 11)	

	-- defination
	if ExportScript.AF.CurrentStationTmp == nil then
		ExportScript.AF.CurrentStationTmp = -1
	end

	if ExportScript.AF.PayloadInfo.CurrentStation  > 0 and
	   ExportScript.AF.CurrentStationTmp ~= ExportScript.AF.PayloadInfo.CurrentStation then
		ExportScript.AF.CurrentStationTmp = ExportScript.AF.PayloadInfo.CurrentStation

		ExportScript.AF.TmpStationToPanel = {}
		ExportScript.AF.TmpStationToPanel[1] =  {Panel =  1, StationID = 101, CurrentID = 201, CurrentID2 = 221 }	-- left
		ExportScript.AF.TmpStationToPanel[2] =  {Panel =  2, StationID = 102, CurrentID = 202, CurrentID2 = 222 }
		ExportScript.AF.TmpStationToPanel[3] =  {Panel =  3, StationID = 103, CurrentID = 203, CurrentID2 = 223 }
		ExportScript.AF.TmpStationToPanel[4] =  {Panel =  4, StationID = 104, CurrentID = 204, CurrentID2 = 224 }
		ExportScript.AF.TmpStationToPanel[5] =  {Panel =  5, StationID = 105, CurrentID = 205, CurrentID2 = 225 }
		ExportScript.AF.TmpStationToPanel[6] =  {Panel =  6, StationID = 106, CurrentID = 206, CurrentID2 = 226 }
		ExportScript.AF.TmpStationToPanel[7] =  {Panel =  7, StationID = 107, CurrentID = 207, CurrentID2 = 227 }
		ExportScript.AF.TmpStationToPanel[8] =  {Panel =  8, StationID = 108, CurrentID = 208, CurrentID2 = 228 }
		ExportScript.AF.TmpStationToPanel[9] =  {Panel =  9, StationID = 109, CurrentID = 209, CurrentID2 = 229 }
		ExportScript.AF.TmpStationToPanel[10] = {Panel = 10, StationID = 110, CurrentID = 210, CurrentID2 = 230 }
		ExportScript.AF.TmpStationToPanel[11] = {Panel = 11, StationID = 111, CurrentID = 211, CurrentID2 = 231 }	-- right

		ExportScript.AF.WeaponStatusPanel_Reset(201, 211)
		ExportScript.AF.WeaponStatusPanel_Reset(221, 231)

		ExportScript.Tools.SendDataDAC(ExportScript.AF.TmpStationToPanel[ExportScript.AF.PayloadInfo.CurrentStation].CurrentID, 1) -- eigentliche Auswahl
		--ExportScript.Tools.WriteToLog('aktiv: '..ExportScript.AF.TmpStationToPanel[ExportScript.AF.PayloadInfo.CurrentStation].CurrentID)
		if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].container then
			if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].count > 1 then
				ExportScript.Tools.SendDataDAC(ExportScript.AF.TmpStationToPanel[ExportScript.AF.PayloadInfo.CurrentStation].CurrentID2, 1) -- eigentliche Auswahl
				--ExportScript.Tools.WriteToLog('aktiv2: '..ExportScript.AF.TmpStationToPanel[ExportScript.AF.PayloadInfo.CurrentStation].CurrentID2)
			end
		end
		table.foreach(ExportScript.AF.PayloadInfo.Stations, ExportScript.AF.WeaponStatusPanel_selectCurrentPayloadStation_F15C) -- zugehörige Stationen
	elseif ExportScript.AF.PayloadInfo.CurrentStation  == 0 and ExportScript.AF.CurrentStationTmp > 0 then
		ExportScript.AF.WeaponStatusPanel_Reset(201, 211)
		ExportScript.AF.WeaponStatusPanel_Reset(221, 231)
		ExportScript.AF.CurrentStationTmp = -1
	end
end

function ExportScript.AF.RWRlite(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"
	local lTWSInfo = LoGetTWSInfo() -- RWR Information
	if lTWSInfo == nil then
		return
	end

	local lPriorityTmp      = 0
	local lPrimaryThreatTmp = 0
	local lPrimaryAir       = 0
	local lPrimarySAM       = 0

	if(#lTWSInfo.Emitters > 0) then
		for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
			if(lTWSInfo.Emitters[EmitterIndex].Priority > lPriorityTmp) then
				lPriorityTmp      = lTWSInfo.Emitters[EmitterIndex].Priority
				lPrimaryThreatTmp = EmitterIndex
			end
		end

		for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
			local lType = lTWSInfo.Emitters[EmitterIndex].Type
			--ExportScript.Tools.WriteToLog('level: '..lType.level1..', '..lType.level2..', '..lType.level3..', '..lType.level4)

			local lAzimut = ExportScript.Tools.round(lTWSInfo.Emitters[EmitterIndex].Azimuth * 90, 1)

			if EmitterIndex == lPrimaryThreatTmp then
				ExportScript.AF.RWRlite_FoundErmitter = true
				lPrimaryAir = (lType.level1 == 1 and 1 or 0)
				lPrimarySAM = ((lType.level1 == 2 and lType.level2 == 16) and 1 or 0)
			end
		end
	else
		if ExportScript.AF.RWRlite_FoundErmitter ~= nil and ExportScript.AF.RWRlite_FoundErmitter then
			lPrimaryAir = 0
			lPrimarySAM = 0
		end
	end
	
	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		ExportScript.Tools.SendData(400, lPrimaryAir) -- primary Air
		ExportScript.Tools.SendData(401, lPrimarySAM) -- primary SAM
	end
	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC(400, lPrimaryAir) -- primary Air
		ExportScript.Tools.SendDataDAC(401, lPrimarySAM) -- primary SAM
	end
end	

-- Helper functions

function ExportScript.AF.WeaponStatusPanel_selectCurrentPayloadStation_F15C(_index)
	if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].CLSID == ExportScript.AF.PayloadInfo.Stations[_index].CLSID and ExportScript.AF.PayloadInfo.CurrentStation ~= _index then
		ExportScript.Tools.SendDataDAC(ExportScript.AF.TmpStationToPanel[_index].CurrentID, 1)
		--ExportScript.Tools.WriteToLog('aktiv3: '..ExportScript.AF.TmpStationToPanel[_index].CurrentID)
		if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].container then
			if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].count > 1 then
				ExportScript.Tools.SendDataDAC(ExportScript.AF.TmpStationToPanel[_index].CurrentID2, 1)
				--ExportScript.Tools.WriteToLog('aktiv3: '..ExportScript.AF.TmpStationToPanel[_index].CurrentID2)
			end
		end
	end
end