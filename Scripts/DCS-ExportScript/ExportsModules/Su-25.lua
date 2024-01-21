-- Su-25A Export

ExportScript.FoundFCModule = true
ExportScript.Version.Su25 = "1.2.1"

-- auxiliary function
dofile(ExportScript.Config.ExportModulePath.."FC_AuxiliaryFuntions.lua")

-----------------------------------------
-- FLAMING CLIFFS AIRCRAFT / Su-25A    --
-- FC aircraft don't support GetDevice --
-----------------------------------------

function ExportScript.ProcessIkarusFCHighImportanceConfig()
	local lFunctionTyp 					= "Ikarus"	-- function type for shared function
	local myData						= LoGetSelfData()

	if (myData) then
		local lLatitude					= myData.LatLongAlt.Lat									-- LATITUDE
		local lLongitude				= myData.LatLongAlt.Long								-- LONGITUDE

		local lMachNumber				= LoGetMachNumber()										-- MACH

		local lEngineTempLeft			= LoGetEngineInfo().Temperature.left					-- ENG1 EGT �C
		local lEngineTempRight			= LoGetEngineInfo().Temperature.right					-- ENG2 EGT �C
		--[[
		local lBasicAtmospherePressure	= LoGetBasicAtmospherePressure()						-- BAROMETRIC PRESSURE
		local lAltBar					= LoGetAltitudeAboveSeaLevel()							-- ALTITUDE SEA LEVEL (Meter)
		local lAltRad					= LoGetAltitudeAboveGroundLevel()						-- ALTITUDE GROUND LEVEL (Meter)
		local lTrueAirSpeed			    = LoGetTrueAirSpeed()									-- TRUE AIRSPEED (Meter/Second)
		local lPitch, lBank, lYaw		= LoGetADIPitchBankYaw()								-- PITCH, BANK, YAW (Radian)

		local lHeading					= myData.Heading										-- HEADING (Radian)
		local lVVI						= LoGetVerticalVelocity()								-- VERTICAL SPEED (Meter/Second)
		local lIAS						= LoGetIndicatedAirSpeed()								-- INDICATED AIRSPEED (Meter/Second)

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

		-- IAS-TAS Indicator
		ExportScript.AF.FC_Russian_AirSpeed_1100hkm()

		-- AOA Indicator and Accelerometer (AOA, GLoad)
		ExportScript.AF.FC_Russian_AOA_Su25()

		-- ADI
		ExportScript.AF.FC_Russian_ADI_Old()

		-- HSI
		ExportScript.AF.FC_Russian_HSI_old()

		-- Vertical Velocity Indicator (VVI, TurnIndicator, SlipBallPosition)
		ExportScript.AF.FC_Russian_VVI_Old()

		-- Radar Altimeter (below 100m is warning light on)
		ExportScript.AF.FC_Russian_RadarAltimeter_1500m(100)

		-- Barometric Altimeter
		ExportScript.AF.FC_Russian_BarometricAltimeter_late_special()

		-- Tachometer (RPM)
		ExportScript.AF.FC_Russian_EngineRPM()

		-- Left Jet Engine Turbine Temperature Indicator (EngineTemp, ExportID)
		ExportScript.AF.FC_Russian_EGT_1000gc(lEngineTempLeft, 70)

		-- Right Jet Engine Turbine Temperature Indicator (EngineTemp, ExportID)
		ExportScript.AF.FC_Russian_EGT_1000gc(lEngineTempRight, 71)

		-- Clock from Ka-50
		ExportScript.AF.FC_Russian_Clock_late()

		-- HSI Distance
		ExportScript.AF.FC_Russian_HSI_Distance_old(lDistanceToWay)

		-- Mach {max, Mach}
		local lMachTmp = 0
		if lMachNumber > 0.475 then
			--[[
			y_min = 0.0		-- minimaler Ausgabewert
			y_max = 1.0		-- maximaler Ausgabewert
			x_min = 0.475	-- minimaler Eingangswert
			x_max = 1.0		-- maximaler Eingangswert
			x = 0.65		-- aktueller Eingangswert

			d_y = 1			-- Delta Ausgabewerte (y_max - y_min)
			d_x = 0.525		-- Delta Eingangswerte (x_max - x_min)
			m = 1.9047619047619047619047619047619		-- Steigung der linearen Funktion (d_y / d_x)
			n = -0.9047619047619047619047619047619		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
			
			y = 0,333333333333333333333333333334		-- Ergebnis (m * x + n)
			]]
			lMachTmp = 1.9047619047619047619047619047619 * lMachNumber + -0.9047619047619047619047619047619			
		else
			lMachTmp = 0
		end

		ExportScript.Tools.SendData(72, string.format("%0.4f", 0.665))
		ExportScript.Tools.SendData(73, string.format("%0.4f", lMachTmp))
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

	ExportScript.AF.FC_WeaponPanel_SU25(lFunctionTyp)

	ExportScript.AF.FC_SPO15RWR(lFunctionTyp)

	ExportScript.AF.FuelQuantityIndicator(lFunctionTyp)
	
	local lEngineInfo = LoGetEngineInfo()
	if lEngineInfo ~= nil then
		-- Hydraulic Pressure Left
		ExportScript.AF.FC_OneNeedleGauge(lEngineInfo.HydraulicPressure.left, 240, 85)

		-- Hydraulic Pressure Right
		ExportScript.AF.FC_OneNeedleGauge(lEngineInfo.HydraulicPressure.right, 240, 86)
	end

	-- EKRAN Message
	ExportScript.AF.FC_EKRAN()

	-- Mechanical Configuration Indicator (GearWarningLight, NoseGear, LeftGear, RightGear, Airbreaks, Flaps1, Flaps2)
	ExportScript.AF.FC_Russian_MDI_SU25(lFunctionTyp)

	local lMechInfo = LoGetMechInfo()	-- mechanical components,  e.g. Flaps, Wheelbrakes,...

	if lMechInfo ~= nil then
		-- Wheelbrakes Hydraulic Pressure Left
		ExportScript.AF.FC_OneNeedleGauge(lMechInfo.wheelbrakes.value, 240, 87)

		-- Wheelbrakes Hydraulic Pressure Right
		ExportScript.AF.FC_OneNeedleGauge(lMechInfo.wheelbrakes.value, 240, 88)
	end

	--(x < 0 and 'negative' or 'non-negative')
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
	--local lNameByType = LoGetNameByType () -- args 4 (number : level1,level2,level3,level4), result string
	-- values from LoGetTargetInformation().type
	--ExportScript.Tools.WriteToLog('lNameByType: '..ExportScript.Tools.dump(lNameByType))
end

function ExportScript.ProcessDACConfigLowImportance()
	local lFunctionTyp = "DAC"	-- function type for shared function
	ExportScript.AF.FC_WeaponPanel_SU25(lFunctionTyp)
	ExportScript.AF.FC_SPO15RWR(lFunctionTyp)
	ExportScript.AF.FC_Russian_MDI_SU25(lFunctionTyp)
	ExportScript.AF.FuelQuantityIndicator(lFunctionTyp)

	ExportScript.AF.StatusLamp()
	ExportScript.AF.SightingSystem()
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
	--ExportScript.Tools.SendDataDAC("604", lSightingSystemInfo.radar_on          == true and 1 or 0 )
end

function ExportScript.AF.FlareChaff()
	local lSnares = LoGetSnares() -- Flare and Chaff
	if lSnares == nil then
		return
	end
	--ExportScript.Tools.WriteToLog('lSnares: '..ExportScript.Tools.dump(lSnares))

	--[chaff] = number: "128"
    --[flare] = number: "128"
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
		--WriteToLog('lEngineInfo: '..dump(lEngineInfo))
		ExportScript.Tools.SendDataDAC("728", lEngineInfo.EngineStart.left ) -- lamp start left engine 1 (0|1)
		ExportScript.Tools.SendDataDAC("729", lEngineInfo.EngineStart.right ) -- lamp start right engine 1 (0|1)
	end

	local lAoA = LoGetAngleOfAttack()
	if lAoA ~= nil then
		lAoA = lAoA * 57.3
		ExportScript.Tools.SendDataDAC("730", (lAoA > 20.0 and 1 or 0) ) -- lamp start AOA warning (0|1)
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

	local lTotalFuel		= lEngineInfo.fuel_internal
	local lFuel_leftbar		= 1.0
	local lFuel_rightbar	= 1.0
	local lExtTank1			= 1.0    -- external tanks
	local lExtTank2			= 1.0    -- inner tanks

	if lTotalFuel < 5000 then
		if lTotalFuel > 1500 then
			--[[
			y_min = 0.0		-- minimaler Ausgabewert
			y_max = 1.0		-- maximaler Ausgabewert
			x_min = 1500	-- minimaler Eingangswert
			x_max = 5000	-- maximaler Eingangswert
			x = 3500		-- aktueller Eingangswert

			d_y = 1			-- Delta Ausgabewerte (y_max - y_min)
			d_x = 3500		-- Delta Eingangswerte (x_max - x_min)
			m = 2.8571428571428571428571428571429e-4	-- Steigung der linearen Funktion (d_y / d_x)
			n = -0.42857142857142857142857142857143		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)

			y = 0,57142857142857142857142857142857		-- Ergebnis (m * x + n)
			]]
			lFuel_leftbar = 2.8571428571428571428571428571429e-4 * lTotalFuel + -0.42857142857142857142857142857143
		else
			lFuel_leftbar	= 0.0
		end
	else
		lFuel_leftbar = 1.0
	end
	if lTotalFuel < 1200 then
		lFuel_rightbar = lTotalFuel / 1200
	else
		lFuel_rightbar = 1.0
	end

	local lPayloadInfo = LoGetPayloadInfo()
	if lPayloadInfo ~= nil then
		--WriteToLog('lPayloadInfo: '..dump(lPayloadInfo))
		if lPayloadInfo.Stations[10].CLSID == "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}" or 
		   lPayloadInfo.Stations[9].CLSID  == "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}" then -- external tanks presend and full (panel 6 and 5)
			lExtTank1 = ((lEngineInfo.fuel_external < 1240.0 ) and 1.0 or 0.0)
		end
		if lPayloadInfo.Stations[5].CLSID  == "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}" or
		   lPayloadInfo.Stations[6].CLSID  == "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}" then-- inner tanks presend and full (panel 3 and 8)
			lExtTank2 = ((lEngineInfo.fuel_external < 1.0 ) and 1.0 or 0.0)
		end
	end
	-- Fuel_leftbar
	-- Fuel_rightbar
	-- Light1
	-- Light2
	-- Light3
	-- Light4
	-- Light5
	-- BingoLight

	if ExportScript.Config.IkarusExport and lFunctionTyp == "Ikarus" then
        ExportScript.Tools.SendData(300, string.format("%0.4f", lFuel_leftbar))
        ExportScript.Tools.SendData(301, string.format("%0.4f", lFuel_rightbar))
        ExportScript.Tools.SendData(302, lExtTank1)                                         -- external tanks
        ExportScript.Tools.SendData(303, lExtTank2)                                         -- inner tanks
        ExportScript.Tools.SendData(304, (lEngineInfo.fuel_internal < 2790.0 and 1 or 0))   -- inner wing tank
        ExportScript.Tools.SendData(305, (lEngineInfo.fuel_internal < 1840.0 and 1 or 0))   -- inner hull tank
        ExportScript.Tools.SendData(306, (lEngineInfo.fuel_internal < 600.0  and 1 or 0))   -- Bingo Fuel
	end

	if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
		ExportScript.Tools.SendDataDAC(300, string.format("%d", ExportScript.Tools.round((lEngineInfo.fuel_internal / 10), 0, "ceil") * 10)) -- total fuel in kg
        ExportScript.Tools.SendDataDAC(303, lExtTank1)                                         -- external tanks
        ExportScript.Tools.SendDataDAC(304, lExtTank2)                                         -- inner tanks
        ExportScript.Tools.SendDataDAC(305, (lEngineInfo.fuel_internal < 2790.0 and 1 or 0))   -- inner wing tank
        ExportScript.Tools.SendDataDAC(306, (lEngineInfo.fuel_internal < 1840.0 and 1 or 0))   -- inner hull tank
        ExportScript.Tools.SendDataDAC(307, (lEngineInfo.fuel_internal < 1.0    and 1 or 0))   -- central hull tank
        ExportScript.Tools.SendDataDAC(308, (lEngineInfo.fuel_internal < 600.0  and 1 or 0))   -- Bingo Fuel
	end
end