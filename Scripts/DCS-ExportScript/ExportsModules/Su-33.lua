-- Su-33 Export
-- Version 1.0.2

ExportScript.FoundFCModule = true

-- auxiliary function
dofile(ExportScript.Config.ExportModulePath.."FC_AuxiliaryFuntions.lua")

-----------------------------------------
-- FLAMING CLIFFS AIRCRAFT / Su-33     --
-- FC aircraft don't support GetDevice --
-----------------------------------------

function ExportScript.ProcessIkarusFCHighImportanceConfig()
	local lFunctionTyp 					= "Ikarus"	-- function type for shared function
	local myData						= LoGetSelfData()

	if (myData) then
		local lLatitude					= myData.LatLongAlt.Lat									-- LATITUDE
		local lLongitude				= myData.LatLongAlt.Long								-- LONGITUDE

		local lEngineTempLeft			= LoGetEngineInfo().Temperature.left					-- ENG1 EGT ºC
		local lEngineTempRight			= LoGetEngineInfo().Temperature.right					-- ENG2 EGT ºC
		--[[
		local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()						-- BAROMETRIC PRESSURE
		local lAltBar					= LoGetAltitudeAboveSeaLevel()							-- ALTITUDE SEA LEVEL (Meter)
		local lAltRad					= LoGetAltitudeAboveGroundLevel()						-- ALTITUDE GROUND LEVEL (Meter)
		local lTrueAirSpeed			    = LoGetTrueAirSpeed()									-- TRUE AIRSPEED (Meter/Second)
		local lPitch, lBank, lYaw		= LoGetADIPitchBankYaw()								-- PITCH, BANK, YAW (Radian)

		local lHeading					= myData.Heading										-- HEADING (Radian)
		local lVVI						= LoGetVerticalVelocity()								-- VERTICAL SPEED (Meter/Second)
		local lIAS						= LoGetIndicatedAirSpeed()								-- INDICATED AIRSPEED (Meter/Second)
		local lMachNumber				= LoGetMachNumber()										-- MACH
		local lAoA						= LoGetAngleOfAttack()									-- ANGLE OF ATTACK AoA (Radian)

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

		local lEngineRPMleft			= LoGetEngineInfo().RPM.left							-- ENG1 RPM %
		local lEngineRPMright			= LoGetEngineInfo().RPM.right							-- ENG2 RPM %

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

		-- IAS-MACH Indicator
		ExportScript.AF.FC_Russian_AirSpeed_1600hkm()

		-- AOA Indicator and Accelerometer
		ExportScript.AF.FC_Russian_AOA_Su2733()

		-- ADI
		ExportScript.AF.FC_Russian_ADI_New()

		-- HSI
		ExportScript.AF.FC_Russian_HSI(lDistanceToWay)

		-- Vertical Velocity Indicator (VVI)
		ExportScript.AF.FC_Russian_VVI_New()

		-- Radar Altimeter (below 100m is warning light on)
		ExportScript.AF.FC_Russian_RadarAltimeter_1500m(100)

		-- Barometric Altimeter
		ExportScript.AF.FC_Russian_BarometricAltimeter_late()

		-- Tachometer (RPM)
		ExportScript.AF.FC_Russian_EngineRPM()

		-- Left Jet Engine Turbine Temperature Indicator (EngineTemp, main scala, second scala, ExportID)
		ExportScript.AF.FC_TwoNeedlesGauge(lEngineTempLeft, 1200, 100, 70, 71)

		-- Right Jet Engine Turbine Temperature Indicator (EngineTemp, main scala, second scala, ExportID)
		ExportScript.AF.FC_TwoNeedlesGauge(lEngineTempRight, 1200, 100, 72, 73)

		-- Clock from Ka-50
		ExportScript.AF.FC_Russian_Clock_late()
	else
		ExportScript.Tools.WriteToLog("Unknown FC Error, no LoGetSelfData.")
	end
end

function ExportScript.ProcessDACConfigHighImportance()
	local lFunctionTyp = "DAC"	-- function type for shared function

	-- your script

end

function ExportScript.ProcessIkarusFCLowImportanceConfig()
	local lFunctionTyp = "Ikarus"	-- function type for shared function

	ExportScript.AF.FC_WeaponPanel_SU33(lFunctionTyp)

	-- SPO15 Radar Warning Reciver
	ExportScript.AF.FC_SPO15RWR(lFunctionTyp)

	-- EKRAN Message
	ExportScript.AF.FC_EKRAN()

	--  Fuel Quantity Indicator
	ExportScript.AF.FuelQuantityIndicator(lFunctionTyp)

	ExportScript.AF.MechanicalDevicesIndicator(lFunctionTyp)

	local lEngineInfo = LoGetEngineInfo()
	if lEngineInfo ~= nil then
		--ExportScript.Tools.WriteToLog('lEngineInfo: '..ExportScript.Tools.dump(lEngineInfo))
		-- Hydraulic Pressure Left
		ExportScript.AF.FC_OneNeedleGauge(lEngineInfo.HydraulicPressure.left, 300, 85)

		-- Hydraulic Pressure Right
		ExportScript.AF.FC_OneNeedleGauge(lEngineInfo.HydraulicPressure.left, 300, 86)
	end

	-- Engine Lamps, Start and Afterburner
	ExportScript.AF.FC_EngineLamps_SU2733(lFunctionTyp)

	local lMechInfo = LoGetMechInfo()	-- mechanical components,  e.g. Flaps, Wheelbrakes,...
	if lMechInfo ~= nil then
		-- Wheelbrakes Hydraulic Pressure Left
		ExportScript.AF.FC_OneNeedleGauge(lMechInfo.wheelbrakes.value, 300, 87)

		-- Wheelbrakes Hydraulic Pressure Right
		ExportScript.AF.FC_OneNeedleGauge(lMechInfo.wheelbrakes.value, 300, 88)

		--ExportScript.Tools.WriteToLog('lMechInfo.noseflap.value: '..ExportScript.Tools.dump(lMechInfo.noseflap.value)) -- Vorfluegel, Balkenanzeige neben dem Radarhoehenmesser (0=oben bis 30=unten)
	end

	-- Airintake
	ExportScript.AF.FC_Russian_AirIntake(20)

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

	ExportScript.AF.FC_WeaponPanel_SU33(lFunctionTyp)
	ExportScript.AF.FC_SPO15RWR(lFunctionTyp)
	ExportScript.AF.MechanicalDevicesIndicator(lFunctionTyp)
	ExportScript.AF.FuelQuantityIndicator(lFunctionTyp)
	ExportScript.AF.FC_EngineLamps_SU2733(lFunctionTyp)
	ExportScript.AF.StatusLamp()
	ExportScript.AF.SightingSystem()
	ExportScript.AF.PPDSPPanel()
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
	--ExportScript.Tools.SendDataDAC("602", lSightingSystemInfo.optical_system_on == true and 1 or 0 )
	ExportScript.Tools.SendDataDAC("603", lSightingSystemInfo.LaunchAuthorized  == true and 1 or 0 )
	ExportScript.Tools.SendDataDAC("604", lSightingSystemInfo.radar_on          == true and 1 or 0 )
end

function ExportScript.AF.PPDSPPanel()
	local lSnares = LoGetSnares() -- Flare and Chaff
	if lSnares == nil then
		return
	end
	--ExportScript.Tools.WriteToLog('lSnares: '..ExportScript.Tools.dump(lSnares))

	--[chaff] = number: "48"
    --[flare] = number: "48"

	local lChaffLED = ExportScript.Tools.round(lSnares.chaff / 6, 0, "ceil") + 1
	local lFlareLED = ExportScript.Tools.round(lSnares.flare / 6, 0, "ceil") + 1

	ExportScript.Tools.SendDataDAC("800", (lChaffLED <= 1  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("801", (lChaffLED <= 2  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("802", (lChaffLED <= 3  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("803", (lChaffLED <= 4  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("804", (lChaffLED <= 5  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("805", (lChaffLED <= 6  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("806", (lChaffLED <= 7  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("807", (lChaffLED <= 8  and 0 or 1) )

	ExportScript.Tools.SendDataDAC("810", (lFlareLED <= 1  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("811", (lFlareLED <= 2  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("812", (lFlareLED <= 3  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("813", (lFlareLED <= 4  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("814", (lFlareLED <= 5  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("815", (lFlareLED <= 6  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("816", (lFlareLED <= 7  and 0 or 1) )
	ExportScript.Tools.SendDataDAC("817", (lFlareLED <= 8  and 0 or 1) )
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

	local lAccelerationUnits = LoGetAccelerationUnits()
	if lAccelerationUnits ~= nil then
		--ExportScript.Tools.WriteToLog('lAccelerationUnits: '..ExportScript.Tools.dump(lAccelerationUnits))
		ExportScript.Tools.SendDataDAC("732", (lAccelerationUnits.y > 8.0 and 1 or 0) ) -- lamp Over-G warning
	end
end

function ExportScript.AF.FuelQuantityIndicator(FunctionTyp)
-- Fuel quantity shows the fuel remaining in all tanks
	local lFunctionTyp = FunctionTyp or "Ikarus"
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

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		lTotalFuel = lEngineInfo.fuel_internal
		--ExportScript.Tools.WriteToLog('lTotalFuel: '..ExportScript.Tools.dump(lTotalFuel))
		--lTotalFuel = string.format("%3d", ExportScript.Tools.round((lEngineInfo.fuel_internal / 10), 0, "ceil") * 10)
    	--lTotalFuel = string.format("%4d", lEngineInfo.fuel_internal) -- total fuel in kg
    	--lTotalFuel = string.format("%4d", lEngineInfo.fuel_external) -- external fuel in kg
		local lTotalFuel_12_0	= 1.0

		if lTotalFuel < 12000 then
				--[[
				y_min = 0.0		-- minimaler Ausgabewert
				y_max = 1.0		-- maximaler Ausgabewert
				x_min = 0		-- minimaler Eingangswert
				x_max = 12000	-- maximaler Eingangswert
				x = 8000		-- aktueller Eingangswert

				d_y = 1			-- Delta Ausgabewerte (y_max - y_min)
				d_x = 12000		-- Delta Eingangswerte (x_max - x_min)
				m = 8.3333333333333333333333333333333e-5	-- Steigung der linearen Funktion (d_y / d_x)
				n = 4.e-33		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

				y = 0.66666666666666666666666666666667	-- Ergebnis (m * x + n)
				]]
				lTotalFuel_12_0 = 8.3333333333333333333333333333333e-5 * lTotalFuel + 4.e-33
		end

		ExportScript.Tools.SendData("301", string.format("%.4f", lTotalFuel_12_0) )
		ExportScript.Tools.SendData("304", (lEngineInfo.fuel_internal < 6900.0 and 1 or 0) ) -- Tank warning 1
		ExportScript.Tools.SendData("305", (lEngineInfo.fuel_internal < 5400.0 and 1 or 0) ) -- Tank warning 2
		ExportScript.Tools.SendData("306", (lEngineInfo.fuel_internal < 4700.0 and 1 or 0) ) -- Tank warning 3
		ExportScript.Tools.SendData("307", (lEngineInfo.fuel_internal < 1500.0 and 1 or 0) ) -- Tank warning 4
		ExportScript.Tools.SendData("308", (lEngineInfo.fuel_internal < 600.0  and 1 or 0) ) -- Bingo Fuel

		ExportScript.AF.FC_OneNeedleGauge(lEngineInfo.fuel_internal, 10000, 302) -- Standby Fuel Indicator
	end

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC("300", string.format("%d", ExportScript.Tools.round((lEngineInfo.fuel_internal / 10), 0, "ceil") * 10) ) -- total fuel in kg
		--ExportScript.Tools.SendDataDAC("301", string.format("%d", lEngineInfo.fuel_internal) ) -- total fuel in kg
		--ExportScript.Tools.SendDataDAC("302", string.format("%d", lEngineInfo.fuel_external) ) -- external fuel in kg

		ExportScript.Tools.SendDataDAC("304", (lEngineInfo.fuel_internal < 6900.0 and 1 or 0) ) -- Tank warning 1
		ExportScript.Tools.SendDataDAC("305", (lEngineInfo.fuel_internal < 5400.0 and 1 or 0) ) -- Tank warning 2
		ExportScript.Tools.SendDataDAC("306", (lEngineInfo.fuel_internal < 4700.0 and 1 or 0) ) -- Tank warning 3
		ExportScript.Tools.SendDataDAC("307", (lEngineInfo.fuel_internal < 1500.0 and 1 or 0) ) -- Tank warning 4
		ExportScript.Tools.SendDataDAC("308", (lEngineInfo.fuel_internal < 600.0  and 1 or 0) ) -- Bingo Fuel
	end	
end

function ExportScript.AF.MechanicalDevicesIndicator(FunctionTyp)
	local lFunctionTyp = FunctionTyp or "Ikarus"
-- The mechanical devices indicator shows the position of the landing gear, flaps, leading edge flaps and airbrake
	local lMechInfo = LoGetMechInfo() -- mechanical components,  e.g. Flaps, Wheelbrakes,...
	--ExportScript.Tools.WriteToLog('lMechInfo: '..ExportScript.Tools.dump(lMechInfo))
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
	--local lTrueAirSpeed = LoGetTrueAirSpeed()

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC("500", (((lMechInfo.gear.status == 1 and lMechInfo.gear.value < 1) or (lMechInfo.gear.status == 0 and lMechInfo.gear.value > 0)) and 1 or 0 ) ) -- gear warning light
		ExportScript.Tools.SendDataDAC("501", (lMechInfo.gear.value > 0.85 and 1 or 0) ) -- nose gear
		ExportScript.Tools.SendDataDAC("502", (lMechInfo.gear.value > 0.95 and 1 or 0) ) -- left gear
		ExportScript.Tools.SendDataDAC("503", (lMechInfo.gear.value > 0.97 and 1 or 0) )   -- right gear

		ExportScript.Tools.SendDataDAC("510", (lMechInfo.speedbrakes.value  > 0.1 and 1 or 0) ) -- speedbreakes on > 0.1 (0 - 1)

		ExportScript.Tools.SendDataDAC("531", (lMechInfo.flaps.value > 0.93 and 1 or 0) ) -- flap 
		ExportScript.Tools.SendDataDAC("532", ((lMechInfo.gear.value > 0.5 and lMechInfo.gear.nose.rod > 0.02) and 1 or 0) ) -- Intake FOD shields
		ExportScript.Tools.SendDataDAC("533", ((lMechInfo.gear.status == 0 and lMechInfo.flaps.status > 0) and 1 or 0) ) -- Flaps Warning, same light as gear warning light, but blinking light
   
		ExportScript.Tools.SendDataDAC("541", (lMechInfo.hook.value > 0.8 and 1 or 0) )		-- Hook
		ExportScript.Tools.SendDataDAC("551", (lMechInfo.noseflap.value > 20.0 and 1 or 0) )
	end

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
		local lWarningLight = 0.0

		--lWarningLight = ((lMechInfo.flaps.value > 0.93 and lTrueAirSpeed > 340) and 1.0 or 0.0) -- Speed Warning for Flaps, same light as gear warning light, but blinking light
		lWarningLight = ((lMechInfo.gear.status == 0 and lMechInfo.flaps.status > 0) and 1.0 or lWarningLight ) -- Flaps Warning, same light as gear warning light, but blinking light
		lWarningLight = (((lMechInfo.gear.status == 1 and lMechInfo.gear.value < 1) or (lMechInfo.gear.status == 0 and lMechInfo.gear.value > 0)) and 1.0 or lWarningLight )  -- gear warning light

		ExportScript.Tools.SendData(500, string.format("%.1f", lWarningLight))
		ExportScript.Tools.SendData(501, (lMechInfo.gear.value > 0.85 and 1 or 0))           -- nose gear
		ExportScript.Tools.SendData(502, (lMechInfo.gear.value > 0.95 and 1 or 0))           -- left gear
		ExportScript.Tools.SendData(503, (lMechInfo.gear.value == 1 and 1 or 0))             -- right gear
		ExportScript.Tools.SendData(510, (lMechInfo.speedbrakes.value  > 0.1 and 1 or 0))    -- speedbreakes on > 0.1 (0 - 1)
		ExportScript.Tools.SendData(531, (lMechInfo.flaps.value > 0.93 and 1 or 0))          -- flap
		ExportScript.Tools.SendData(532, ((lMechInfo.gear.value > 0.5 and lMechInfo.gear.nose.rod > 0.02) and 1 or 0))            -- Intake FOD shields
		ExportScript.Tools.SendData(541, (lMechInfo.hook.value > 0.8 and 1 or 0))            -- Hook
	end
end

function ExportScript.AF.FC_WeaponPanel_SU33(FunctionTyp)
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

			if ExportScript.AF.PayloadInfo.CurrentStation  > 0 and
				ExportScript.AF.CurrentStationTmp ~= ExportScript.AF.PayloadInfo.CurrentStation then
				ExportScript.AF.CurrentStationTmp  = ExportScript.AF.PayloadInfo.CurrentStation

				ExportScript.AF.TmpStationToPanel = {}
				--ExportScript.AF.TmpStationToPanel[1] =  {Panel =  1, StationID = 101, CurrentID = 201 }	-- L
				--ExportScript.AF.TmpStationToPanel[2] =  {Panel = 10, StationID = 110, CurrentID = 210 }	-- L
				ExportScript.AF.TmpStationToPanel[3] =  {Panel = 10, StationID = 110, CurrentID = 210 }
				ExportScript.AF.TmpStationToPanel[4] =  {Panel =  1, StationID = 101, CurrentID = 201 }
				ExportScript.AF.TmpStationToPanel[5] =  {Panel =  2, StationID = 102, CurrentID = 202 }
				ExportScript.AF.TmpStationToPanel[6] =  {Panel =  9, StationID = 109, CurrentID = 209 }
				ExportScript.AF.TmpStationToPanel[7] =  {Panel =  3, StationID = 103, CurrentID = 203 }
				ExportScript.AF.TmpStationToPanel[8] =  {Panel =  8, StationID = 108, CurrentID = 208 }
				ExportScript.AF.TmpStationToPanel[9] =  {Panel =  4, StationID = 104, CurrentID = 204 }
				ExportScript.AF.TmpStationToPanel[10] = {Panel =  7, StationID = 107, CurrentID = 207 }
				ExportScript.AF.TmpStationToPanel[11] = {Panel =  6, StationID = 106, CurrentID = 206 }
				ExportScript.AF.TmpStationToPanel[12] = {Panel =  5, StationID = 105, CurrentID = 205 }

				-- ExportScript.AF.TmpWeaponPanelActive reset
				for i = 201, 210, 1 do
					ExportScript.AF.TmpWeaponPanelActive[i] = 0
				end

				if ExportScript.AF.TmpStationToPanel[ExportScript.AF.PayloadInfo.CurrentStation] ~= nil then
					ExportScript.AF.TmpWeaponPanelActive[ExportScript.AF.TmpStationToPanel[ExportScript.AF.PayloadInfo.CurrentStation].CurrentID] = 1        -- currrent value

					table.foreach(ExportScript.AF.PayloadInfo.Stations, ExportScript.AF.WeaponStatusPanel_selectCurrentPayloadStation)   -- corresponding station
				end
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

			--[[
			Weapon Panel (Numper = Station number)
									   |
			-------------------------------------------------------
			|    |    |    |    |    |   |    |    |    |    |    |
			L    1    2    3    4    5   6    7    8    9    10   R  -- Panel ID
			1    4    5    7    9    12 11    10   8    6    3    2  -- gES_PayloadInfo.Station.ID
			]]
			-- Payload Info
			-- weapon stations L and R not on Panel
			-- weapon station 1 (left) to 10 (right), 5 and 6 center station

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

			--ExportScript.AF.TmpWeaponPanelPresend[] = (ExportScript.AF.PayloadInfo.Stations[1].count  > 0 and 1 or 0)     -- L
			--ExportScript.AF.TmpWeaponPanelPresend[] = (ExportScript.AF.PayloadInfo.Stations[2].count  > 0 and 1 or 0)     -- R
			ExportScript.AF.TmpWeaponPanelPresend[110] = (ExportScript.AF.PayloadInfo.Stations[3].count  > 0 and 1 or 0)     -- weapon presend panel 1
			ExportScript.AF.TmpWeaponPanelPresend[101] = (ExportScript.AF.PayloadInfo.Stations[4].count  > 0 and 1 or 0)     -- weapon presend panel 10
			ExportScript.AF.TmpWeaponPanelPresend[102] = (ExportScript.AF.PayloadInfo.Stations[5].count  > 0 and 1 or 0)     -- weapon presend panel 2
			ExportScript.AF.TmpWeaponPanelPresend[109] = (ExportScript.AF.PayloadInfo.Stations[6].count  > 0 and 1 or 0)     -- weapon presend panel 9
			ExportScript.AF.TmpWeaponPanelPresend[103] = (ExportScript.AF.PayloadInfo.Stations[7].count  > 0 and 1 or 0)     -- weapon presend panel 3
			ExportScript.AF.TmpWeaponPanelPresend[108] = (ExportScript.AF.PayloadInfo.Stations[8].count  > 0 and 1 or 0)     -- weapon presend panel 8
			ExportScript.AF.TmpWeaponPanelPresend[104] = (ExportScript.AF.PayloadInfo.Stations[9].count  > 0 and 1 or 0)     -- weapon presend panel 4
			ExportScript.AF.TmpWeaponPanelPresend[107] = (ExportScript.AF.PayloadInfo.Stations[10].count > 0 and 1 or 0)     -- weapon presend panel 7
			ExportScript.AF.TmpWeaponPanelPresend[106] = (ExportScript.AF.PayloadInfo.Stations[11].count > 0 and 1 or 0)     -- weapon presend panel 5
			ExportScript.AF.TmpWeaponPanelPresend[105] = (ExportScript.AF.PayloadInfo.Stations[12].count > 0 and 1 or 0)     -- weapon presend panel 6
			--ExportScript.AF.TmpWeaponPanelActive[201]                           -- weapon active panel 1
			--ExportScript.AF.TmpWeaponPanelActive[202]                           -- weapon active panel 2
			--ExportScript.AF.TmpWeaponPanelActive[203]                           -- weapon active panel 3
			--ExportScript.AF.TmpWeaponPanelActive[204]                           -- weapon active panel 4
			--ExportScript.AF.TmpWeaponPanelActive[205]                           -- weapon active panel 5
			--ExportScript.AF.TmpWeaponPanelActive[206]                           -- weapon active panel 6
			--ExportScript.AF.TmpWeaponPanelActive[207]                           -- weapon active panel 7
			--ExportScript.AF.TmpWeaponPanelActive[208]                           -- weapon active panel 8
			--ExportScript.AF.TmpWeaponPanelActive[209]                           -- weapon active panel 9
			--ExportScript.AF.TmpWeaponPanelActive[210]                           -- weapon active panel 10
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