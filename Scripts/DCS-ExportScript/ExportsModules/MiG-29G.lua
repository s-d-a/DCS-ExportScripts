-- MiG-29G Export
-- Version 1.0.2

ExportScript.FoundFCModule = true

-- auxiliary function
dofile(ExportScript.Config.ExportModulePath.."FC_AuxiliaryFuntions.lua")

-----------------------------------------
-- FLAMING CLIFFS AIRCRAFT / MiG-29G    --
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
		
		local lMachNumber				= LoGetMachNumber()										-- MACH
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
		ExportScript.AF.FC_Russian_AirSpeed_1000hkm()

		-- AOA Indicator and Accelerometer
		ExportScript.AF.FC_Russian_AOA_MiG29()

		-- ADI
		ExportScript.AF.FC_Russian_ADI_Old()

		-- HSI
		ExportScript.AF.FC_Russian_HSI(lDistanceToWay)

		-- Vertical Velocity Indicator (VVI, TurnIndicator, SlipBallPosition)
		ExportScript.AF.FC_Russian_VVI_Old()

		-- Radar Altimeter (below 100m is warning light on)
		ExportScript.AF.FC_Russian_RadarAltimeter_1000m(100)

		-- Barometric Altimeter
		ExportScript.AF.FC_Russian_BarometricAltimeter_30000()

		-- Tachometer (RPM)
		ExportScript.AF.FC_Russian_EngineRPM()

		-- Left Jet Engine Turbine Temperature Indicator (EngineTemp, ExportID)
		ExportScript.AF.FC_Russian_EGT_1000gc(lEngineTempLeft + 80, 70)

		-- Right Jet Engine Turbine Temperature Indicator (EngineTemp, ExportID)
		ExportScript.AF.FC_Russian_EGT_1000gc(lEngineTempRight + 80, 71)

		-- Clock from Ka-50
		ExportScript.AF.FC_Russian_Clock_late()

		-- Machmeter
		ExportScript.AF.FC_Russian_Mach_MiG29()
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
	-- Weapon Panel
	--ExportScript.AF.FC_WeaponPanel_MiG29(lFunctionTyp)

	-- SPO15 Radar Warning Reciver
	ExportScript.AF.FC_SPO15RWR(lFunctionTyp)

	-- EKRAN Message
	ExportScript.AF.FC_EKRAN()

	-- Mechanical Configuration Indicator
	ExportScript.AF.FC_Russian_MDI_MiG29(lFunctionTyp)

	--  Fuel Quantity Indicator
	ExportScript.AF.FuelQuantityIndicator_MiG29(lFunctionTyp)

	-- Airintake
	ExportScript.AF.FC_Russian_AirIntake() -- Bug: Airintake.value always 1

	--  Hydraulic Pressure Indicator
	local lEngineInfo = LoGetEngineInfo()
	if lEngineInfo ~= nil then
		-- Hydraulic Pressure Left
		ExportScript.AF.FC_OneNeedleGauge(lEngineInfo.HydraulicPressure.left, 240, 85)

		-- Hydraulic Pressure Right
		ExportScript.AF.FC_OneNeedleGauge(lEngineInfo.HydraulicPressure.right, 240, 86)
	end

	-- Engine Lamps, Start and Afterburner
	ExportScript.AF.FC_EngineLamps_MiG29(lFunctionTyp)

	local lMechInfo = LoGetMechInfo()	-- mechanical components,  e.g. Flaps, Wheelbrakes,...
	if lMechInfo ~= nil then
		-- Wheelbrakes Hydraulic Pressure Left
		ExportScript.AF.FC_OneNeedleGauge(lMechInfo.wheelbrakes.value, 240, 87)

		-- Wheelbrakes Hydraulic Pressure Right
		ExportScript.AF.FC_OneNeedleGauge(lMechInfo.wheelbrakes.value, 240, 88)
	end

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

	ExportScript.AF.FC_WeaponPanel_MiG29(lFunctionTyp)
	ExportScript.AF.FC_SPO15RWR(lFunctionTyp)
	ExportScript.AF.FC_Russian_MDI_MiG29(lFunctionTyp)
	ExportScript.AF.FuelQuantityIndicator_MiG29(lFunctionTyp)
	ExportScript.AF.FC_Russian_FlareChaff_MiG29(lFunctionTyp)
	ExportScript.AF.FC_EngineLamps_MiG29(lFunctionTyp)

	ExportScript.AF.StatusLamp()
	ExportScript.AF.SightingSystem_MiG29()
end

-----------------------------
--     Custom functions    --
-----------------------------

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