-- A-10A Export
-- Version 1.0.2

ExportScript.FoundFCModule = true

-- auxiliary function
dofile(ExportScript.Config.ExportModulePath.."FC_AuxiliaryFuntions.lua")

-----------------------------------------
-- FLAMING CLIFFS AIRCRAFT / A-10A    --
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
		local lAoA						= LoGetAngleOfAttack()									-- ANGLE OF ATTACK AoA (Radian)

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
		local lMachNumber				= LoGetMachNumber()										-- MACH

		local lGlide					= LoGetGlideDeviation()									-- VOR1 HORIZONTAL DEFLECTION (-1 +1)
		local lSide						= LoGetSideDeviation()									-- VOR1 VERTICAL DEFLECTION (-1 +1)
		local lSlipBallPosition			= LoGetSlipBallPosition()								-- SLIP BALL (-1 +1)
		local lAccelerationUnits		= LoGetAccelerationUnits().y							-- G-LOAD

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
		--local lAltBarTmp				= string.format("%03d", ((lAltBar * 3.28084) / 100))			-- meter to feeds
--ExportScript.Tools.WriteToLog("lAltBar 1: "..ExportScript.Tools.dump(lAltBar))
		--lAltBar 						= lAltBar + (9.5 * (760 - lBasicAtmospherePressure))	-- 9.5 m per 1mmHg difference , eventuell minus der Differenz
		-- bei 5000 feed in Ikarus 5100 feed
--ExportScript.Tools.WriteToLog("lAltBar 2: "..ExportScript.Tools.dump(lAltBar))

		local lAltBarTmp				= ((lAltBar * 3.28084) / 100)			-- meter to feeds
		lAltBar 						= lAltBar * 3.28084										-- meter to feeds
		lBasicAtmospherePressure		= lBasicAtmospherePressure * 3.937023					-- mmHg to inPa (0.03937023 * 100)
		lBasicAtmospherePressure		= string.format("%04d", lBasicAtmospherePressure)

--ExportScript.Tools.WriteToLog("lAltBar 3: "..ExportScript.Tools.dump(lAltBar))
		
		lAltBar = lAltBar / 1000
		lAltBar = lAltBar - ExportScript.Tools.round(lAltBar, 0, "floor")

		local lAltCounter3 = 0
		local lAltBarTmp2 = string.format("%03d", lAltBarTmp)

		if lAltBarTmp > 10 then
			lAltCounter3 = (lAltBarTmp - (ExportScript.Tools.round(lAltBarTmp / 10, 0, "floor") * 10)) * 0.1
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
		
		ExportScript.Tools.SendData(36, lAltBar)
		ExportScript.Tools.SendData(37, lAltCounter[tonumber(string.sub(lAltBarTmp2, 1, 1))])
		ExportScript.Tools.SendData(38, lAltCounter[tonumber(string.sub(lAltBarTmp2, 2, 2))])
		ExportScript.Tools.SendData(39, lAltCounter3)
		ExportScript.Tools.SendData(40, lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 4, 4))])
		ExportScript.Tools.SendData(41, lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 3, 3))])
		ExportScript.Tools.SendData(42, lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 2, 2))])
		ExportScript.Tools.SendData(43, lAltCounter[tonumber(string.sub(lBasicAtmospherePressure, 1, 1))])
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
			lIAStmp = lIAStmp - (ExportScript.Tools.round((lIAStmp / 100), 0, "floor") * 100)
		end

		lIAStmp = lIAStmp / 100
		--[[
		local lAltBarTmp				= ((lAltBar * 3.28084) / 100)			-- meter to feeds
		lBasicAtmospherePressure		= string.format("%04d", lBasicAtmospherePressure)

		local lAltCounter3 = 0
		local lAltBarTmp2 = string.format("%03d", lAltBarTmp)

		if lAltBarTmp > 10 then
			lAltCounter3 = (lAltBarTmp - (ExportScript.Tools.round(lAltBarTmp / 10, 0, "floor") * 10)) * 0.1
		else
			lAltCounter3 = lAltBarTmp * 0.1
		end]]

		-- IAS {0.0,1.0}
		-- IAS Decimals {0.0,1.0}
		-- Barometric Altimeter in 1000 Feeds for calculate max Air Speed
		-- Barometric Altimeter in 100 Feeds for calculate max Air Speed
		-- Barometric Altimeter in 10 Feeds for calculate max Air Speed

		ExportScript.Tools.SendData(44, string.format("%.4f", lIAS))
		ExportScript.Tools.SendData(45, string.format("%.4f", lIAStmp))
		--ExportScript.Tools.SendData(37, lAltCounter[tonumber(string.sub(lAltBarTmp2, 1, 1))])
		--ExportScript.Tools.SendData(38, lAltCounter[tonumber(string.sub(lAltBarTmp2, 2, 2))])
		--ExportScript.Tools.SendData(39, lAltCounter3)
		-- Air Speed Indicator End

		-- RPM Engine Left
		ExportScript.AF.FC_TwoNeedlesGauge(lEngineRPMleft, 105, 10, 50, 51)

		-- RPM Engine Right
		ExportScript.AF.FC_TwoNeedlesGauge(lEngineRPMright, 105, 10, 52, 53)

		-- Oil Pressure Left, no value but similar to Engine RPM
		ExportScript.AF.FC_OneNeedleGauge(lEngineRPMleft, 110, 54)

		-- Oil Pressure Right, no value but similar to Engine RPM
		ExportScript.AF.FC_OneNeedleGauge(lEngineRPMright, 110, 55)

		-- RPM FAN Left
		--[[
		y_min = 0.0		0.11		0.375		0.50		-- minimaler Ausgabewert
		y_max = 0.11	0.375		0.50		1.0			-- maximaler Ausgabewert
		x_min = 0.0		64.2		91.3		99.7		-- minimaler Eingangswert
		x_max = 64.2	91.3		99.7		100.0		-- maximaler Eingangswert
		x = 40.0		75.0		85.0		99.9		-- aktueller Eingangswert 

		d_y = 0.11		0.265		0.125		0.50		-- Delta Ausgabewerte (y_max - y_min)
		d_x = 64.2		27.1		8.4			0.3			-- Delta Eingangswerte (x_max - x_min)
		m = 0.001713	0.009779	0.014881	1.666667	-- Steigung der linearen Funktion (d_y / d_x) 
		n = 0.000254	-0.517823	-0.983636	-165.66667	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

		y = 0.2			0.25795		0.37795		0.8725		-- Ergebnis (m * x + n)
		]]
		local lFanRPMleft = 0
		if lEngineRPMleft > 99.7 then
			lFanRPMleft = 1.666667 * lEngineRPMleft + -165.66667 -- > 81%
		elseif lEngineRPMleft > 91.3 and lEngineRPMleft < 99.7 then
			lFanRPMleft = 0.014881 * lEngineRPMleft + -0.983636 -- > 50%
		elseif lEngineRPMleft > 64.2 and lEngineRPMleft < 91.3 then
			lFanRPMleft = 0.009779 * lEngineRPMleft + -0.517823 -- > 23%
		elseif lEngineRPMleft < 64.2 then
			lFanRPMleft = 0.001713 * lEngineRPMleft + 0.000254 -- < 23%
		end

		ExportScript.AF.FC_OneNeedleGauge(lFanRPMleft, 1, 56)

		-- RPM FAN Right
		--[[
		y_min = 0.0		0.11		0.375		0.50		-- minimaler Ausgabewert
		y_max = 0.11	0.375		0.50		1.0			-- maximaler Ausgabewert
		x_min = 0.0		64.2		91.3		99.7		-- minimaler Eingangswert
		x_max = 64.2	91.3		99.7		100.0		-- maximaler Eingangswert
		x = 40.0		75.0		85.0		99.9		-- aktueller Eingangswert 

		d_y = 0.11		0.265		0.125		0.50		-- Delta Ausgabewerte (y_max - y_min)
		d_x = 64.2		27.1		8.4			0.3			-- Delta Eingangswerte (x_max - x_min)
		m = 0.001713	0.009779	0.014881	1.666667	-- Steigung der linearen Funktion (d_y / d_x) 
		n = 0.000254	-0.517823	-0.983636	-165.66667	-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

		y = 0.2			0.25795		0.37795		0.8725		-- Ergebnis (m * x + n)
		]]
		local lFanRPMright = 0
		if lEngineRPMright > 99.7 then
			lFanRPMright = 1.666667 * lEngineRPMright + -165.66667 -- > 81%
		elseif lEngineRPMright > 91.3 and lEngineRPMright < 99.7 then
			lFanRPMright = 0.014881 * lEngineRPMright + -0.983636 -- > 50%
		elseif lEngineRPMright > 64.2 and lEngineRPMright < 91.3 then
			lFanRPMright = 0.009779 * lEngineRPMright + -0.517823 -- > 23%
		elseif lEngineRPMright < 64.2 then
			lFanRPMright = 0.001713 * lEngineRPMright + 0.000254 -- < 23%
		end

		ExportScript.AF.FC_OneNeedleGauge(lFanRPMright, 1, 57)

		-- RPM APU, no value
		-- Exaust Gas Temperature APU, no value

		-- Exaust Gas Temperature Left
		ExportScript.AF.FC_TwoNeedlesGauge(lEngineTempLeft, 1200, 100, 58, 59)
		--ExportScript.AF.FC_A10A_ExaustGasTemp(lEngineTempLeft, 7)

		-- Exaust Gas Temperature Right
		ExportScript.AF.FC_TwoNeedlesGauge(lEngineTempRight, 1200, 100, 60, 61)
		--ExportScript.AF.FC_A10A_ExaustGasTemp(lEngineTempRight, 8)

		-- Fuel Flow Left
		ExportScript.AF.FC_OneNeedleGauge((lEngineFuelConsumptionLeft * 2.2046223302272) * 3600, 5000, 62)

		-- Fuel Flow Right
		ExportScript.AF.FC_OneNeedleGauge((lEngineFuelConsumptionRight * 2.2046223302272) * 3600, 5000, 63)

		-- Hydraulic Pressure Left (small gauges over fuel gauge)
		ExportScript.AF.FC_OneNeedleGauge(lEngineHydraulicPressureLeft, 100, 64)

		-- Hydraulic Pressure Right (small gauges over fuel gauge)
		ExportScript.AF.FC_OneNeedleGauge(lEngineHydraulicPressureRight, 100, 65)

		-- AOA
		--ExportScript.AF.FC_US_AOA(16)
		--ExportScript.Tools.WriteToLog('lAoA 1: '..ExportScript.Tools.dump(lAoA))
		--local lAoATmp = 0.7728 * math.deg(lAoA) + 12.22
		--ExportScript.Tools.WriteToLog('lAoA 2: '..ExportScript.Tools.dump(lAoATmp))
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
		end

		ExportScript.Tools.SendData(66, string.format("%.4f", lAoA))
		ExportScript.Tools.SendData(67, 0) --??ExportID fehlt noch
	else
		ExportScript.Tools.WriteToLog("Unknown FC Error, no LoGetSelfData.")
	end
end

function ExportScript.ProcessDACConfigHighImportance()
	local lFunctionTyp = "DAC"	-- function type for shared function

	-- your script

end

function ExportScript.ProcessIkarusFCLowImportanceConfig()
	local lFunctionTyp              = "Ikarus"	-- function type for shared function

	-- UHF Gauges, no value
	ExportScript.Tools.SendData(68, "001.00")

	-- Flaps Indicator
	-- Gear Lamps
	ExportScript.AF.MechanicalDevicesIndicator(lFunctionTyp)

	-- Fuel Indicator
	local lEngineFuelInternal		= LoGetEngineInfo().fuel_internal						-- TANK1 (INT) (KG)
	local lEngineFuelExternal		= LoGetEngineInfo().fuel_external						-- TANK2 (EXT) (KG)

	local lCounter					= {[0] = 0.0, [1] = 0.1, [2] = 0.2, [3] = 0.3, [4] = 0.4, [5] = 0.5, [6] = 0.6, [7] = 0.7, [8] = 0.8, [9] = 0.9}

	lEngineFuelInternal				= lEngineFuelInternal * 2.2046223302272		-- kg to lbs
	local lFuelNeedle				= (lEngineFuelInternal / 2) / 6000			-- 6000 = scala
	lEngineFuelInternal				= lEngineFuelInternal / 100		-- um unf die ersten drei stellen zukommen
	local lEngineFuelInternalTmp	= string.format("%03d", lEngineFuelInternal)

	local lFuelCounter3 = 0
	if lEngineFuelInternal > 10 then
		lFuelCounter3 = (lEngineFuelInternal - (ExportScript.Tools.round(lEngineFuelInternal / 10, 0, "floor") * 10)) * 0.1
	else
		lFuelCounter3 = lEngineFuelInternal * 0.1
	end

	ExportScript.Tools.SendData(300, string.format("%.2f", lCounter[tonumber(string.sub(lEngineFuelInternalTmp, 1, 1))]))
	ExportScript.Tools.SendData(301, string.format("%.2f", lCounter[tonumber(string.sub(lEngineFuelInternalTmp, 2, 2))]))
	ExportScript.Tools.SendData(302, string.format("%.2f", lFuelCounter3))
	ExportScript.Tools.SendData(303, string.format("%.4f", lFuelNeedle))
	ExportScript.Tools.SendData(304, string.format("%.4f", lFuelNeedle))
	-- Fuel Indicator end

	-- Weapon Panel
	ExportScript.AF.PayloadInfo = LoGetPayloadInfo()
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
	ExportScript.AF.TmpWeaponPanelActive = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}

	for lIndex = 1, 11, 1 do
		ExportScript.AF.TmpWeaponPanelActive[lIndex] = (ExportScript.AF.PayloadInfo.Stations[lIndex].count > 0 and 0.2 or 0.1)	-- get status, empty or load
	end

	if ExportScript.AF.PayloadInfo.CurrentStation > 0 then
		ExportScript.AF.TmpWeaponPanelActive[ExportScript.AF.PayloadInfo.CurrentStation] = 0.3        -- currrent value
						
		table.foreach(ExportScript.AF.PayloadInfo.Stations, ExportScript.AF.WeaponStatusPanel_selectCurrentPayloadStationIkarus_A10A)	-- corresponding station
	end

	ExportScript.Tools.SendData(100, ExportScript.AF.PayloadInfo.Cannon.shells)
	ExportScript.Tools.SendData(101, string.format("%0.1f", ExportScript.AF.TmpWeaponPanelActive[1]))	-- Station 1
	ExportScript.Tools.SendData(102, string.format("%0.1f", ExportScript.AF.TmpWeaponPanelActive[3]))	-- Station 2
	ExportScript.Tools.SendData(103, string.format("%0.1f", ExportScript.AF.TmpWeaponPanelActive[5]))	-- Station 3
	ExportScript.Tools.SendData(104, string.format("%0.1f", ExportScript.AF.TmpWeaponPanelActive[7]))	-- Station 4
	ExportScript.Tools.SendData(105, string.format("%0.1f", ExportScript.AF.TmpWeaponPanelActive[9]))	-- Station 5
	ExportScript.Tools.SendData(106, string.format("%0.1f", ExportScript.AF.TmpWeaponPanelActive[11]))	-- Station 6
	ExportScript.Tools.SendData(107, string.format("%0.1f", ExportScript.AF.TmpWeaponPanelActive[10]))	-- Station 7
	ExportScript.Tools.SendData(108, string.format("%0.1f", ExportScript.AF.TmpWeaponPanelActive[8]))	-- Station 8
	ExportScript.Tools.SendData(109, string.format("%0.1f", ExportScript.AF.TmpWeaponPanelActive[6]))	-- Station 9
	ExportScript.Tools.SendData(110, string.format("%0.1f", ExportScript.AF.TmpWeaponPanelActive[4]))	-- Station 10
	ExportScript.Tools.SendData(111, string.format("%0.1f", ExportScript.AF.TmpWeaponPanelActive[2]))	-- Station 11
	-- Wepaon Panel end

	local lMCPState = LoGetMCPState() -- Warning Lights
	if lMCPState ~= nil then
		ExportScript.Tools.SendData(702, lMCPState.MasterWarning == true and 1 or 0 )
	end

	-- Missle launch / Scan Warning
	ExportScript.AF.RWRStatusPanel(lFunctionTyp)

	-- (x < 0 and 'negative' or 'non-negative')
	--[[
	local lPayloadInfo = LoGetPayloadInfo()
	ExportScript.Tools.WriteToLog('lPayloadInfo: '..ExportScript.Tools.dump(lPayloadInfo))

	local lSnares = LoGetSnares() -- Flare and Chaff
	ExportScript.Tools.WriteToLog('lSnares: '..ExportScript.Tools.dump(lSnares))

	local lSightingSystemInfo = LoGetSightingSystemInfo()
	ExportScript.Tools.WriteToLog('lSightingSystemInfo: '..ExportScript.Tools.dump(lSightingSystemInfo))

	local lTWSInfo = LoGetTWSInfo() -- SPO Informationen, z.B. Radarwarner F15C
	ExportScript.Tools.WriteToLog('lTWSInfo: '..ExportScript.Tools.dump(lTWSInfo))

	local lTargetInformation = LoGetTargetInformation() -- detalierte Radar Infos z.B. F15C
	ExportScript.Tools.WriteToLog('lTargetInformation: '..ExportScript.Tools.dump(lTargetInformation))

	local lLockedTargetInformation = LoGetLockedTargetInformation()
	ExportScript.Tools.WriteToLog('lLockedTargetInformation: '..ExportScript.Tools.dump(lLockedTargetInformation))

	local lF15_TWS_Contacs = LoGetF15_TWS_Contacts() -- the same information but only for F-15 in TWS mode
	ExportScript.Tools.WriteToLog('lF15_TWS_Contacs: '..ExportScript.Tools.dump(lF15_TWS_Contacs))

	local lMechInfo = LoGetMechInfo() -- mechanical components,  e.g. Flaps, Wheelbrakes,...
	ExportScript.Tools.WriteToLog('lMechInfo: '..ExportScript.Tools.dump(lMechInfo))

	local lMCPState = LoGetMCPState() -- Warnlichter
	ExportScript.Tools.WriteToLog('lMCPState: '..ExportScript.Tools.dump(lMCPState))

	local lControlPanel_HSI = LoGetControlPanel_HSI()
	ExportScript.Tools.WriteToLog('lControlPanel_HSI: '..ExportScript.Tools.dump(lControlPanel_HSI))

	local lRadioBeaconsStatus = LoGetRadioBeaconsStatus()
	ExportScript.Tools.WriteToLog('lRadioBeaconsStatus: '..ExportScript.Tools.dump(lRadioBeaconsStatus))

	local lEngineInfo = LoGetEngineInfo()
	ExportScript.Tools.WriteToLog('lEngineInfo: '..ExportScript.Tools.dump(lEngineInfo))
	]]
	-- Weapon Control System
    -- local lNameByType = LoGetNameByType () -- args 4 (number : level1,level2,level3,level4), result string
	-- values from LoGetTargetInformation().type
	-- ExportScript.Tools.WriteToLog('lNameByType: '..ExportScript.Tools.dump(lNameByType))
end

function ExportScript.ProcessDACConfigLowImportance()
	local lFunctionTyp = "DAC"	-- function type for shared function
	ExportScript.AF.MechanicalDevicesIndicator(lFunctionTyp)
	ExportScript.AF.RWRStatusPanel(lFunctionTyp)
	ExportScript.AF.SightingSystem()
	ExportScript.AF.FuelQuantityIndicator()
	ExportScript.AF.StatusLamp()
	ExportScript.AF.FlareChaff()
	ExportScript.AF.WeaponStatusPanel()
	ExportScript.AF.AOAIndicator()
end

-----------------------------
--     Custom functions    --
-----------------------------

function ExportScript.AF.SightingSystem()
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
	--ExportScript.Tools.SendDataDAC("604", lSightingSystemInfo.radar_on          == true and 1 or 0 )
end

function ExportScript.AF.FuelQuantityIndicator()
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

	ExportScript.Tools.SendDataDAC("300", string.format("%d", ExportScript.Tools.round((((lEngineInfo.fuel_internal + lEngineInfo.fuel_external) * 2.2) / 100), 0, "ceil") * 100) ) -- total fuel in lbs
	--ExportScript.Tools.SendDataDAC("301", string.format("%d", lEngineInfo.fuel_internal * 2.2) ) -- internal fuel in lbs
	--ExportScript.Tools.SendDataDAC("302", string.format("%d", lEngineInfo.fuel_external * 2.2) ) -- external fuel in lbs

	--[[
	local lPayloadInfo = LoGetPayloadInfo()
	if lPayloadInfo == nil then
		return
	end
	ExportScript.Tools.SendDataDAC("303", ((lPayloadInfo.Stations[5].count > 0 and lPayloadInfo.Stations[5].CLSID == "Fuel_Tank_FT600") and 1 or 0) ) -- weapon presend > 0 (panel 5)
	ExportScript.Tools.SendDataDAC("304", ((lPayloadInfo.Stations[6].count > 0 and lPayloadInfo.Stations[6].CLSID == "Fuel_Tank_FT600") and 1 or 0) ) -- weapon presend > 0 (panel 6)
	ExportScript.Tools.SendDataDAC("305", ((lPayloadInfo.Stations[7].count > 0 and lPayloadInfo.Stations[7].CLSID == "Fuel_Tank_FT600") and 1 or 0) ) -- weapon presend > 0 (panel 7)
	ExportScript.Tools.SendDataDAC("307", (lEngineInfo.fuel_internal < 600.0 and 1 or 0) ) -- Bingo Fuel
	]]
end

function ExportScript.AF.StatusLamp()
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
	ExportScript.Tools.SendDataDAC("725", lMCPState.CanopyOpen == true and 1 or 0 )
	ExportScript.Tools.SendDataDAC("726", lMCPState.StallSignalization == true and 1 or 0 )
	ExportScript.Tools.SendDataDAC("727", lMCPState.AutopilotOn == true and 1 or 0 )

	local lEngineInfo = LoGetEngineInfo()
	if lEngineInfo ~= nil then
		--ExportScript.Tools.WriteToLog('lEngineInfo: '..ExportScript.Tools.dump(lEngineInfo))
		ExportScript.Tools.SendDataDAC("728", lEngineInfo.EngineStart.left ) -- lamp start left engine 1 (0|1)
		ExportScript.Tools.SendDataDAC("729", lEngineInfo.EngineStart.right ) -- lamp start right engine 1 (0|1)
	end
end

function ExportScript.AF.FlareChaff()
	local lSnares = LoGetSnares() -- Flare and Chaff
	if lSnares == nil then
		return
	end
	--ExportScript.Tools.WriteToLog('lSnares: '..ExportScript.Tools.dump(lSnares))

	--[chaff] = number: "30"
    --[flare] = number: "30"

	ExportScript.Tools.SendDataDAC("800", lSnares.chaff )
	ExportScript.Tools.SendDataDAC("801", lSnares.flare )
end

function ExportScript.AF.MechanicalDevicesIndicator(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"
-- The mechanical devices indicator shows the position of the landing gear, flaps, leading edge flaps and airbrake
	local lMechInfo = LoGetMechInfo() -- mechanical components,  e.g. Flaps, Wheelbrakes,...
	--ExportScript.Tools.WriteToLog("lMechInfo: "..ExportScript.Tools.dump(lMechInfo))
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
	local lGetTrueAirSpeed = LoGetTrueAirSpeed()
	if lGetTrueAirSpeed == nil then
		lGetTrueAirSpeed = 0
	end

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		ExportScript.Tools.SendData(501, (lMechInfo.gear.value > 0.85 and 1 or 0) ) -- nose gear
		ExportScript.Tools.SendData(502, (lMechInfo.gear.value > 0.95 and 1 or 0) ) -- left gear
		ExportScript.Tools.SendData(503, (lMechInfo.gear.value == 1 and 1 or 0) )   -- right gear

		local lFlapsValue	= lMechInfo.flaps.value
		lFlapsValue = lFlapsValue / 1.6
		lFlapsValue = (lFlapsValue > 1.0 and 1.0 or lFlapsValue)	-- the result is limited to 1.0

		ExportScript.Tools.SendData(530, string.format("%.4f", lFlapsValue))
	end

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC("501", (lMechInfo.gear.value > 0.85 and 1 or 0) ) -- nose gear
		ExportScript.Tools.SendDataDAC("502", (lMechInfo.gear.value > 0.95 and 1 or 0) ) -- left gear
		ExportScript.Tools.SendDataDAC("503", (lMechInfo.gear.value == 1 and 1 or 0) )   -- right gear

		--ExportScript.Tools.SendDataDAC("510", lMechInfo.speedbrakes.status ) -- speedbreakes on 1 (0|1)
		ExportScript.Tools.SendDataDAC("510", (lMechInfo.speedbrakes.value  > 0.1 and 1 or 0) ) -- speedbreakes on > 0.1 (0 - 1)

		--ExportScript.Tools.SendDataDAC("530", lMechInfo.flaps.status ) -- flap switch off 0, 1. position 1, 2. position 2 (0|1|2)
		--ExportScript.Tools.SendDataDAC("531", lMechInfo.flaps.value ) -- flap 1. position > 0.25, 2. position > 0.93 (0 - 1)
		ExportScript.Tools.SendDataDAC("531", (lMechInfo.flaps.value > 0.25 and 1 or 0) ) -- flap 1. position
		ExportScript.Tools.SendDataDAC("532", (lMechInfo.flaps.value > 0.93 and 1 or 0) ) -- flap 2. position
		ExportScript.Tools.SendDataDAC("533", ((lMechInfo.flaps.value > 0.93 and lGetTrueAirSpeed > 340) and 1 or 0) ) -- Speed Warning for Flaps, same light as gear warning light, but blinking light
	end
end

function ExportScript.AF.RWRStatusPanel(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"
-- RWR Status Panel only
	local lTWSInfo = LoGetTWSInfo()
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

	if ExportScript.AF.EventNumberRWRStatusPanel == nil then
		ExportScript.AF.EventNumberRWRStatusPanel = 0
	end 

	if(ExportScript.AF.EventNumberRWRStatusPanel < ExportScript.AF.EventNumber) then
		ExportScript.AF.EventNumberRWRStatusPanel = ExportScript.AF.EventNumber

		local lPrimaryThreatTmp    = 0
		local lPriorityTmp         = 0
		ExportScript.AF.ScanTmp    = 0
		ExportScript.AF.MissileTmp = 0

		if(#lTWSInfo.Emitters > 0) then
			for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
				if(lTWSInfo.Emitters[EmitterIndex].Priority > lPriorityTmp) then
					lPrimaryThreatTmp = EmitterIndex
				end
				if(lTWSInfo.Emitters[EmitterIndex].SignalType == "scan") then
					ExportScript.AF.ScanTmp = 1
				elseif(lTWSInfo.Emitters[EmitterIndex].SignalType == "missile_radio_guided") then
					ExportScript.AF.MissileTmp = 1
				end
			end
		else
			lPrimaryThreatTmp = 0
			lPriorityTmp      = 0
		end
	end

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC("440", ExportScript.AF.MissileTmp)
		ExportScript.Tools.SendDataDAC("444", ExportScript.AF.ScanTmp)
	end

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		ExportScript.Tools.SendData(440, ExportScript.AF.MissileTmp)
		ExportScript.Tools.SendData(444, ExportScript.AF.ScanTmp)
	end
end

function ExportScript.AF.AOAIndicator()
-- AOA Indicator only
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
		--ExportScript.Tools.WriteToLog('lAoA: '..ExportScript.Tools.dump(lAoA))
		--ExportScript.Tools.WriteToLog('lAOAUnits: '..ExportScript.Tools.dump(lAOAUnits))
		ExportScript.Tools.SendDataDAC("900", (lAOAUnits > 21.0 and 1 or 0) )
		ExportScript.Tools.SendDataDAC("901", ((lAOAUnits > 18.0 and lAOAUnits < 22.0) and 1 or 0) )
		ExportScript.Tools.SendDataDAC("902", (lAOAUnits < 19.0 and 1 or 0) )
	else -- AOA Index Lamps off
		ExportScript.Tools.SendDataDAC("900", 0 )
		ExportScript.Tools.SendDataDAC("901", 0 )
		ExportScript.Tools.SendDataDAC("902", 0 )
	end
end
	
function ExportScript.AF.WeaponStatusPanel()
-- The weapon status panel, quantity and readiness of the currently selected weapon and the remaining gun ammunition are indicated.
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
	1    3    5    7    9    11   10   8    6    4    2		-- Weapon Station ID
	]]
	-- Payload Info
	-- weapon stations (panel) 1 (left) - 11 (right) reserved
	ExportScript.Tools.SendDataDAC("100", ExportScript.AF.PayloadInfo.Cannon.shells ) -- count cannon shells
	ExportScript.Tools.SendDataDAC("101", (ExportScript.AF.PayloadInfo.Stations[1].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 1)
	ExportScript.Tools.SendDataDAC("102", (ExportScript.AF.PayloadInfo.Stations[3].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 2)
	ExportScript.Tools.SendDataDAC("103", (ExportScript.AF.PayloadInfo.Stations[5].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 3)
	ExportScript.Tools.SendDataDAC("104", (ExportScript.AF.PayloadInfo.Stations[7].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 4)
	ExportScript.Tools.SendDataDAC("105", (ExportScript.AF.PayloadInfo.Stations[9].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 5)
	ExportScript.Tools.SendDataDAC("106", (ExportScript.AF.PayloadInfo.Stations[11].count > 0 and 1 or 0) ) -- weapon presend > 0 (panel 6, center station)
	ExportScript.Tools.SendDataDAC("107", (ExportScript.AF.PayloadInfo.Stations[10].count > 0 and 1 or 0) ) -- weapon presend > 0 (panel 7)
	ExportScript.Tools.SendDataDAC("108", (ExportScript.AF.PayloadInfo.Stations[8].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 8)
	ExportScript.Tools.SendDataDAC("109", (ExportScript.AF.PayloadInfo.Stations[6].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 9)
	ExportScript.Tools.SendDataDAC("110", (ExportScript.AF.PayloadInfo.Stations[4].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 10)
	ExportScript.Tools.SendDataDAC("111", (ExportScript.AF.PayloadInfo.Stations[2].count  > 0 and 1 or 0) ) -- weapon presend > 0 (panel 11)
	-- weapon stations (panel) 1 (left) - 11 (right) empty
	ExportScript.Tools.SendDataDAC("121", (ExportScript.AF.PayloadInfo.Stations[1].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 1)
	ExportScript.Tools.SendDataDAC("122", (ExportScript.AF.PayloadInfo.Stations[3].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 2)
	ExportScript.Tools.SendDataDAC("123", (ExportScript.AF.PayloadInfo.Stations[5].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 3)
	ExportScript.Tools.SendDataDAC("124", (ExportScript.AF.PayloadInfo.Stations[7].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 4)
	ExportScript.Tools.SendDataDAC("125", (ExportScript.AF.PayloadInfo.Stations[9].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 5)
	ExportScript.Tools.SendDataDAC("126", (ExportScript.AF.PayloadInfo.Stations[11].count == 0 and 1 or 0) ) -- weapon presend > 0 (panel 6, center station)
	ExportScript.Tools.SendDataDAC("127", (ExportScript.AF.PayloadInfo.Stations[10].count == 0 and 1 or 0) ) -- weapon presend > 0 (panel 7)
	ExportScript.Tools.SendDataDAC("128", (ExportScript.AF.PayloadInfo.Stations[8].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 8)
	ExportScript.Tools.SendDataDAC("129", (ExportScript.AF.PayloadInfo.Stations[6].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 9)
	ExportScript.Tools.SendDataDAC("130", (ExportScript.AF.PayloadInfo.Stations[4].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 10)
	ExportScript.Tools.SendDataDAC("131", (ExportScript.AF.PayloadInfo.Stations[2].count  == 0 and 1 or 0) ) -- weapon presend > 0 (panel 11)	
	--ExportScript.Tools.SendDataDAC("CurrentStation", ExportScript.AF.PayloadInfo.CurrentStation ) 
	-- air-to-air missils panel 1 and 11, air combat modus, CurrentStation = 1, panel 1 and 11 on
	-- wenn die Waffenstationen gleichmässig belegt sind, hat bei Auswahl CurrentStation immer den Wert der linken Station
	-- bei ungleichmäßiger Belegung, hat CurrentStation immer den Wert der jeweiligen Station
	-- Waffenbezeichnung als UUID, ExportScript.AF.PayloadInfo.Stations[X].CLSID 

	-- defination
	if ExportScript.AF.CurrentStationTmp == nil then
		ExportScript.AF.CurrentStationTmp = -1
	end

	if ExportScript.AF.PayloadInfo.CurrentStation  > 0 and
	   ExportScript.AF.CurrentStationTmp ~= ExportScript.AF.PayloadInfo.CurrentStation then
		ExportScript.AF.CurrentStationTmp = ExportScript.AF.PayloadInfo.CurrentStation
		
		ExportScript.AF.TmpStationToPanel = {}
		ExportScript.AF.TmpStationToPanel[1] =  {Panel =  1, StationID = 101, CurrentID = 201, CurrentID2 = 221 }	-- left
		ExportScript.AF.TmpStationToPanel[3] =  {Panel =  2, StationID = 102, CurrentID = 202, CurrentID2 = 222 }
		ExportScript.AF.TmpStationToPanel[5] =  {Panel =  3, StationID = 103, CurrentID = 203, CurrentID2 = 223 }
		ExportScript.AF.TmpStationToPanel[7] =  {Panel =  4, StationID = 104, CurrentID = 204, CurrentID2 = 224 }
		ExportScript.AF.TmpStationToPanel[9] =  {Panel =  5, StationID = 105, CurrentID = 205, CurrentID2 = 225 }
		ExportScript.AF.TmpStationToPanel[11] = {Panel =  6, StationID = 106, CurrentID = 206, CurrentID2 = 226 }
		ExportScript.AF.TmpStationToPanel[10] = {Panel =  7, StationID = 107, CurrentID = 207, CurrentID2 = 227 }
		ExportScript.AF.TmpStationToPanel[8] =  {Panel =  8, StationID = 108, CurrentID = 208, CurrentID2 = 228 }
		ExportScript.AF.TmpStationToPanel[6] =  {Panel =  9, StationID = 109, CurrentID = 209, CurrentID2 = 229 }
		ExportScript.AF.TmpStationToPanel[4] =  {Panel = 10, StationID = 110, CurrentID = 210, CurrentID2 = 230 }
		ExportScript.AF.TmpStationToPanel[2] =  {Panel = 11, StationID = 111, CurrentID = 211, CurrentID2 = 231 }	-- right

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
		table.foreach(ExportScript.AF.PayloadInfo.Stations, ExportScript.AF.WeaponStatusPanel_selectCurrentPayloadStation_A10A) -- zugehörige Stationen
	elseif ExportScript.AF.PayloadInfo.CurrentStation  == 0 and ExportScript.AF.CurrentStationTmp > 0 then
		ExportScript.AF.WeaponStatusPanel_Reset(201, 211)
		ExportScript.AF.WeaponStatusPanel_Reset(221, 231)
		ExportScript.AF.CurrentStationTmp = -1
	end
end

-- Helper functions

function ExportScript.AF.WeaponStatusPanel_selectCurrentPayloadStation_A10A(_index)
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

function ExportScript.AF.WeaponStatusPanel_selectCurrentPayloadStationIkarus_A10A(_index)
	if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].CLSID == ExportScript.AF.PayloadInfo.Stations[_index].CLSID and ExportScript.AF.PayloadInfo.CurrentStation ~= _index then
		ExportScript.AF.TmpWeaponPanelActive[_index] = 0.3
	end
end
