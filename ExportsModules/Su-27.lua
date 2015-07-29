-- Su-27 Export
-- Version 0.9.9 BETA

gES_FoundFCModule = true

-- auxiliary function
dofile(gES_ExportModulePath.."FC_AuxiliaryFuntions.lua")

-----------------------------------------
-- FLAMING CLIFFS AIRCRAFT / Su-27     --
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
		--local lMachNumber				= LoGetMachNumber()										-- MACH
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
			lPitch							= math.deg(lPitch)			-- PITCH, (Radian to Grad)
			lBank							= math.deg(lBank)			-- BANK (Radian to Grad)
			lYaw							= math.deg(lYaw)			-- YAW (Radian to Grad)
			lHSI_RMI						= math.deg(lHSI_RMI)		-- VOR1 OBS (Radian to Grad)
			lHSI_ADF						= math.deg(lHSI_ADF)		-- ADF OBS (Radian to Grad)
			lAoA							= math.deg(lAoA)			-- ANGLE OF ATTACK AoA (Radian to Grad)
			lHeading						= math.deg(lHeading)		-- Heading (Radian to Grad)
			lHSI_ADF						= (360 - lHSI_ADF) + (360 - lHeading)
			lHSI_RMI						= 360 - lHSI_RMI
			lIAS 							= lIAS   * 3.6				-- change from m/s to km/h
			
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

			local lRadToDCSsignd	= math.pi
			local lRadToDCSunsignd	= math.pi * 2
			local lDefaultNull		= 0.0
			local lDefaultOne		= 1.0
			
			-- IAS-MACH Indicator (IAS, MACH) {"%.4f;%.4f"}
			FC_Russian_AirSpeed_1600hkm(1)
			
			-- AOA Indicator and Accelerometer (AOA, GLoad)
			FC_Russian_AOA_Su2733(3)
			
			-- ADI
			FC_Russian_ADI_Old(4)

			-- HSI
			FC_Russian_HSI(lDistanceToWay, 5)

			-- Vertical Velocity Indicator (VVI) (VVI, TurnIndicator, SlipBallPosition)
			FC_Russian_VVI_Old(6)
			
			-- Radar Altimeter (AltRad, MinAltitude, WarningFlag, MinAltitudeLamp) {"%.4f;%.4f;%.1f;%.1f"} (below 100m is warning light on)
			FC_Russian_RadarAltimeter_1500m(100, 7)
			
			-- Barometric Altimeter (AltBar, BasicAtmospherePressure)
			FC_Russian_BarometricAltimeter_20000(8)

			-- Tachometer (RPM) (EngineRPMleft, EngineRPMright) {"%.4f;%.4f"}
			FC_Russian_EngineRPM(9)

			-- Left Jet Engine Turbine Temperature Indicator (EngineTemp) {"%.4f"}
			FC_TwoNeedlesGauge(lEngineTempLeft, 1200, 100, 10)

			-- Right Jet Engine Turbine Temperature Indicator (EngineTemp) {"%.4f"}
			FC_TwoNeedlesGauge(lEngineTempRight, 1200, 100, 11)

			-- Clock from Ka-50 {CurrentHours, CurrentMinutes, CurrentSeconds, 0, FlightTimeHours, FlightTimeMinutes, 0, 0) {"%.4f;%.4f;%.4f;%.1f;%.4f;%.4f;%.4f;%.4f"}
			FC_Russian_Clock_late(12)
		end
	else
		WriteToLog("Unknown FC Error, no LoGetSelfData.")
	end
	
end

function ProcessHARDWAREConfigHighImportance(mainPanelDevice)
end

function ProcessGlassCockpitFCLowImportanceConfig()

	if gES_GlassCockpitType == 1 then
		-- HELIOS Version 1.3
		
	elseif gES_GlassCockpitType == 2 then
		-- HawgTouch version 1.6

		FC_WeaponPanel_SU2733(13)

		FC_RadarWarning_SPO15(14)

		--  Fuel Quantity Indicator
		local lEngineInfo = LoGetEngineInfo()
    	if lEngineInfo ~= nil then
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

        	local lTotalFuel = lEngineInfo.fuel_internal
			--local lTotalFuel = string.format("%3d", math.round((lEngineInfo.fuel_internal / 10), 0, "ceil") * 10)
        	--local lTotalFuel = string.format("%4d", lEngineInfo.fuel_internal) -- total fuel in kg
        	--local lTotalFuel = string.format("%4d", lEngineInfo.fuel_external) -- external fuel in kg
			local lTotalFuel_9_3	= 0
			local lTotalFuel_5_0	= 0

			if lTotalFuel < 9000 then
				if lTotalFuel > 3000 then
					--[[
					y_min = 0.0		-- minimaler Ausgabewert
					y_max = 1.0		-- maximaler Ausgabewert
					x_min = 3000	-- minimaler Eingangswert
					x_max = 9000	-- maximaler Eingangswert
					x = 8000		-- aktueller Eingangswert

					d_y = 1			-- Delta Ausgabewerte (y_max - y_min)
					d_x = 6000		-- Delta Eingangswerte (x_max - x_min)
					m = 1.66666666666666666666666666667e-4	-- Steigung der linearen Funktion (d_y / d_x)
					n = -0,5		-- Schnittpunkt der Funktion mit y-Achse (y_max - m * x_max)
					
					y = 0.83333		-- Ergebnis (m * x + n)
					]]
					lTotalFuel_9_3 = 1.6666666666666666666666666666667e-4 * lTotalFuel + -0.5
				else
					lTotalFuel_9_3	= 0.0
				end
			else
				lTotalFuel_9_3 = 1.0
			end
			if lTotalFuel < 5000 then
				lTotalFuel_5_0 = lTotalFuel / 5000
			else
				lTotalFuel_5_0 = 1.0
			end

			-- TotalFuel_5_0
        	-- TotalFuel_9_3
			-- Light1
			-- Light2
			-- Light3
			-- Light4
			-- BingoLight
			SendData("15", string.format("%0.4f;%0.4f;%d;%d;%d;%d;%d",
											lTotalFuel_5_0,
											lTotalFuel_9_3,
											(lEngineInfo.fuel_internal < 5000.0 and 1 or 0),		-- Tank warning 1
											(lEngineInfo.fuel_internal < 4000.0 and 1 or 0),		-- Tank warning 2
											(lEngineInfo.fuel_internal < 1500.0 and 1 or 0),		-- Tank warning 3
											(lEngineInfo.fuel_internal < 1000.0 and 1 or 0),		-- Tank warning 4
											(lEngineInfo.fuel_internal < 600.0  and 1 or 0)))		-- Bingo Fuel

			-- Hydraulic Pressure Left
			FC_OneNeedleGauge(lEngineInfo.HydraulicPressure.left, 240, 17)

			-- Hydraulic Pressure Right
			FC_OneNeedleGauge(lEngineInfo.HydraulicPressure.right, 240, 18)
		end

		-- EKRAN Message
		FC_EKRAN(16)

		-- Mechanical Configuration Indicator (GearWarningLight, NoseGear, LeftGear, RightGear, Airbreaks, Flaps1, Flaps2) {"%.1f;%d;%d;%d;%d;%d;%d"}
		local lMechInfo = LoGetMechInfo()	-- mechanical components,  e.g. Flaps, Wheelbrakes,...
		if lMechInfo ~= nil then
			local lWarningLight = 0.0
			local lTrueAirSpeed = LoGetTrueAirSpeed()
			if lTrueAirSpeed ~= nil then
				lWarningLight = ((lMechInfo.flaps.value > 0.93 and lTrueAirSpeed > 340) and 1.0 or 0.0) -- Speed Warning for Flaps, same light as gear warning light, but blinking light
				lWarningLight = (((lMechInfo.gear.status == 1 and lMechInfo.gear.value < 1) or (lMechInfo.gear.status == 0 and lMechInfo.gear.value > 0)) and 1.0 or lWarningLight )  -- gear warning light
			end
			-- WarningLight {0.0 = Off, 0.1 = blinking light, 0.2 = on} 
			-- WarningLight {0.0 = Off, no blinking light, 1.0 = on} 

			-- left gear {0, 1}
			-- right gear {0, 1}
			-- nose gear {0, 1}
			-- WarningLight
			-- Flap
			-- Intake FOD shields
			-- Speedbreakes on {0, 1}
			SendData("2", string.format("%.1f;%d;%d;%d;%d;%d;%d",
											(lMechInfo.gear.value > 0.95 and 1 or 0),           -- left gear
											(lMechInfo.gear.value == 1 and 1 or 0),             -- right gear
											(lMechInfo.gear.value > 0.85 and 1 or 0),           -- nose gear
											lWarningLight,
											(lMechInfo.flaps.value > 0.93 and 1 or 0),          -- flap
											(lMechInfo.gear.value > 0.5 and 1 or 0),			-- Intake FOD shields
											(lMechInfo.speedbrakes.value  > 0.1 and 1 or 0)))   -- speedbreakes on > 0.1 (0 - 1)

			-- Wheelbrakes Hydraulic Pressure Left
			FC_OneNeedleGauge(lMechInfo.wheelbrakes.value, 240, 19)

			-- Wheelbrakes Hydraulic Pressure Right
			FC_OneNeedleGauge(lMechInfo.wheelbrakes.value, 240, 20)

			--WriteToLog('lMechInfo.noseflap.value: '..dump(lMechInfo.noseflap.value)) -- Vorfluegel, Balkenanzeige neben dem Radarhoehenmesser (0=oben bis 30=unten)
		end
		
		-- Airintake
		FC_Russian_AirIntake(21)
	end
		
		--(x < 0 and 'negative' or 'non-negative')
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
		-- Weapon Control System
        --local lNameByType = LoGetNameByType () -- args 4 (number : level1,level2,level3,level4), result string
		-- values from LoGetTargetInformation().type
		--WriteToLog('lNameByType: '..dump(lNameByType))
end

function ProcessHARDWAREConfigLowImportance(mainPanelDevice)
-- where necessary, specify HardwareID, example WeaponStatusPanel(2)
	WeaponStatusPanel()
	MechanicalDevicesIndicator()
	StatusLamp()
	FuelQuantityIndicator()
	SightingSystem()
	SPO15RWR()
	PPDSPPanel()
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
	--SendDataHW("602", lSightingSystemInfo.optical_system_on == true and 1 or 0, lHardware )
	SendDataHW("603", lSightingSystemInfo.LaunchAuthorized  == true and 1 or 0, lHardware )
	SendDataHW("604", lSightingSystemInfo.radar_on          == true and 1 or 0, lHardware )
end

function PPDSPPanel(hardware)
	local lHardware = hardware or 1
	local lSnares = LoGetSnares() -- Flare and Chaff
	if lSnares == nil then
		return
	end
	--WriteToLog('lSnares: '..dump(lSnares))
	
	--[chaff] = number: "96"
    --[flare] = number: "96"
	
	local lChaffLED = math.round(lSnares.chaff / 12, 0, "ceil") + 1
	local lFlareLED = math.round(lSnares.flare / 12, 0, "ceil") + 1
	
	SendDataHW("800", (lChaffLED <= 1  and 0 or 1), lHardware )
	SendDataHW("801", (lChaffLED <= 2  and 0 or 1), lHardware )
	SendDataHW("802", (lChaffLED <= 3  and 0 or 1), lHardware )
	SendDataHW("803", (lChaffLED <= 4  and 0 or 1), lHardware )
	SendDataHW("804", (lChaffLED <= 5  and 0 or 1), lHardware )
	SendDataHW("805", (lChaffLED <= 6  and 0 or 1), lHardware )
	SendDataHW("806", (lChaffLED <= 7  and 0 or 1), lHardware )
	SendDataHW("807", (lChaffLED <= 8  and 0 or 1), lHardware )
	
	SendDataHW("810", (lFlareLED <= 1  and 0 or 1), lHardware )
	SendDataHW("811", (lFlareLED <= 2  and 0 or 1), lHardware )
	SendDataHW("812", (lFlareLED <= 3  and 0 or 1), lHardware )
	SendDataHW("813", (lFlareLED <= 4  and 0 or 1), lHardware )
	SendDataHW("814", (lFlareLED <= 5  and 0 or 1), lHardware )
	SendDataHW("815", (lFlareLED <= 6  and 0 or 1), lHardware )
	SendDataHW("816", (lFlareLED <= 7  and 0 or 1), lHardware )
	SendDataHW("817", (lFlareLED <= 8  and 0 or 1), lHardware )
	SendDataHW("817", (lFlareLED <= 8  and 0 or 1), lHardware )
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

		SendDataHW("730", (lEngineInfo.RPM.left  > 99.95 and 1 or 0), lHardware ) -- lamp after burner left engine
		SendDataHW("731", (lEngineInfo.RPM.right > 99.95 and 1 or 0), lHardware ) -- lam after burner right engine
	end

	local lAccelerationUnits = LoGetAccelerationUnits()
	if lAccelerationUnits ~= nil then
		--WriteToLog('lAccelerationUnits: '..dump(lAccelerationUnits))
		SendDataHW("732", (lAccelerationUnits.y > 8.0 and 1 or 0), lHardware ) -- lamp Over-G warning
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
            [CLSID] = string: "{FBC29BFE-3D24-4C64-B81D-941239D12249}"
            [container] = boolean: "false"
            [count] = number: "1"
            [weapon] = {
                [level3] = number: "7"
                [level1] = number: "4"
                [level4] = number: "18"
                [level2] = number: "4"
            }
        }
        [2] = {
            [CLSID] = string: "{FBC29BFE-3D24-4C64-B81D-941239D12249}"
            [container] = boolean: "false"
            [count] = number: "1"
            [weapon] = {
                [level3] = number: "7"
                [level1] = number: "4"
                [level4] = number: "18"
                [level2] = number: "4"
            }
        }
        [3] = {
            [CLSID] = string: "{FBC29BFE-3D24-4C64-B81D-941239D12249}"
            [container] = boolean: "false"
            [count] = number: "1"
            [weapon] = {
                [level3] = number: "7"
                [level1] = number: "4"
                [level4] = number: "18"
                [level2] = number: "4"
            }
        }
        [4] = {
            [CLSID] = string: "{FBC29BFE-3D24-4C64-B81D-941239D12249}"
            [container] = boolean: "false"
            [count] = number: "1"
            [weapon] = {
                [level3] = number: "7"
                [level1] = number: "4"
                [level4] = number: "18"
                [level2] = number: "4"
            }
        }
        [5] = {
            [wstype] = {
                [level3] = number: "32"
                [level1] = number: "4"
                [level4] = number: "6"
                [level2] = number: "7"
            }
            [count] = number: "20"
            [CLSID] = string: "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"
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
                [level4] = number: "32"
                [level2] = number: "7"
            }
        }
        [6] = {
            [wstype] = {
                [level3] = number: "32"
                [level1] = number: "4"
                [level4] = number: "6"
                [level2] = number: "7"
            }
            [count] = number: "20"
            [CLSID] = string: "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"
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
                [level4] = number: "32"
                [level2] = number: "7"
            }
        }
        [7] = {
            [CLSID] = string: "{4203753F-8198-4E85-9924-6F8FF679F9FF}"
            [container] = boolean: "false"
            [count] = number: "1"
            [weapon] = {
                [level3] = number: "38"
                [level1] = number: "4"
                [level4] = number: "18"
                [level2] = number: "5"
            }
        }
        [8] = {
            [CLSID] = string: "{4203753F-8198-4E85-9924-6F8FF679F9FF}"
            [container] = boolean: "false"
            [count] = number: "1"
            [weapon] = {
                [level3] = number: "38"
                [level1] = number: "4"
                [level4] = number: "18"
                [level2] = number: "5"
            }
        }
        [9] = {
            [CLSID] = string: "{7AEC222D-C523-425e-B714-719C0D1EB14D}"
            [container] = boolean: "false"
            [count] = number: "1"
            [weapon] = {
                [level3] = number: "38"
                [level1] = number: "4"
                [level4] = number: "91"
                [level2] = number: "5"
            }
        }
        [10] = {
            [CLSID] = string: "{7AEC222D-C523-425e-B714-719C0D1EB14D}"
            [container] = boolean: "false"
            [count] = number: "1"
            [weapon] = {
                [level3] = number: "38"
                [level1] = number: "4"
                [level4] = number: "91"
                [level2] = number: "5"
            }
        }
    }
    [CurrentStation] = number: "0"
    [Cannon] = {
        [shells] = number: "250"
    }
	]]
	--[[
	Weapon Panel
	                     |
	-------------------------------------------
	|    |    |    |    | |    |    |    |    |
	1    2    3    4    5 6    7    8    9    10  -- Panel ID
	2    4    5    7   10 9    8    6    3    1   -- gES_PayloadInfo.Station.ID
	]]
	-- Payload Info
	-- weapon stations (panel) 1 (left) - 10 (right), no lamp for center station
	SendDataHW("100", gES_PayloadInfo.Cannon.shells, lHardware ) -- count cannon shells
	SendDataHW("110", (gES_PayloadInfo.Stations[1].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 1)
	SendDataHW("101", (gES_PayloadInfo.Stations[2].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 10)
	SendDataHW("109", (gES_PayloadInfo.Stations[3].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 2)
	SendDataHW("102", (gES_PayloadInfo.Stations[4].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 9)
	SendDataHW("103", (gES_PayloadInfo.Stations[5].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 3)
	SendDataHW("108", (gES_PayloadInfo.Stations[6].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 8)
	SendDataHW("104", (gES_PayloadInfo.Stations[7].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 4)
	SendDataHW("107", (gES_PayloadInfo.Stations[8].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 7)
	SendDataHW("106", (gES_PayloadInfo.Stations[9].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 5)
	SendDataHW("105", (gES_PayloadInfo.Stations[10].count > 0 and 1 or 0), lHardware ) -- weapon presend > 0 (panel 6)
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
		gES_CurrentStationTmp  = gES_PayloadInfo.CurrentStation

		gES_TmpStationToPanel = {}
		gES_TmpStationToPanel[1] =  {Panel = 10, StationID = 110, CurrentID = 210, HardwareID = lHardware }
		gES_TmpStationToPanel[2] =  {Panel =  1, StationID = 101, CurrentID = 201, HardwareID = lHardware }
		gES_TmpStationToPanel[3] =  {Panel =  9, StationID = 109, CurrentID = 209, HardwareID = lHardware }
		gES_TmpStationToPanel[4] =  {Panel =  2, StationID = 102, CurrentID = 202, HardwareID = lHardware }
		gES_TmpStationToPanel[5] =  {Panel =  3, StationID = 103, CurrentID = 203, HardwareID = lHardware }
		gES_TmpStationToPanel[6] =  {Panel =  8, StationID = 108, CurrentID = 208, HardwareID = lHardware }
		gES_TmpStationToPanel[7] =  {Panel =  4, StationID = 104, CurrentID = 204, HardwareID = lHardware }
		gES_TmpStationToPanel[8] =  {Panel =  7, StationID = 107, CurrentID = 207, HardwareID = lHardware }
		gES_TmpStationToPanel[9] =  {Panel =  6, StationID = 106, CurrentID = 206, HardwareID = lHardware }
		gES_TmpStationToPanel[10] = {Panel =  5, StationID = 105, CurrentID = 205, HardwareID = lHardware }

		WeaponStatusPanel_Reset(201, 210, lHardware)

		if gES_TmpStationToPanel[gES_PayloadInfo.CurrentStation] ~= nil then
			SendDataHW(gES_TmpStationToPanel[gES_PayloadInfo.CurrentStation].CurrentID, 1, lHardware ) -- eigentliche Auswahl

			table.foreach(gES_PayloadInfo.Stations, WeaponStatusPanel_selectCurrentPayloadStation) -- zugehörige Stationen
		end
	end
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

	SendDataHW("300", string.format("%d", math.round((lEngineInfo.fuel_internal / 10), 0, "ceil") * 10), lHardware ) -- total fuel in kg
	--SendDataHW("301", string.format("%d", lEngineInfo.fuel_internal)) -- total fuel in kg
	--SendDataHW("302", string.format("%d", lEngineInfo.fuel_external)) -- external fuel in kg

	SendDataHW("304", (lEngineInfo.fuel_internal < 5000.0 and 1 or 0), lHardware ) -- Tank warning 1
	SendDataHW("305", (lEngineInfo.fuel_internal < 4000.0 and 1 or 0), lHardware ) -- Tank warning 2
	SendDataHW("306", (lEngineInfo.fuel_internal < 1500.0 and 1 or 0), lHardware ) -- Tank warning 3
	SendDataHW("307", (lEngineInfo.fuel_internal < 1000.0 and 1 or 0), lHardware ) -- Tank warning 4
	SendDataHW("308", (lEngineInfo.fuel_internal < 600.0  and 1 or 0), lHardware ) -- Bingo Fuel
	
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
	SendDataHW("500", (((lMechInfo.gear.status == 1 and lMechInfo.gear.value < 1) or (lMechInfo.gear.status == 0 and lMechInfo.gear.value > 0)) and 1 or 0 ), lHardware ) -- gear warning light
	SendDataHW("501", (lMechInfo.gear.value > 0.85 and 1 or 0), lHardware ) -- nose gear
	SendDataHW("502", (lMechInfo.gear.value > 0.95 and 1 or 0), lHardware ) -- left gear
	SendDataHW("503", (lMechInfo.gear.value > 0.97 and 1 or 0), lHardware )   -- right gear
	
	--SendDataHW("510", lMechInfo.speedbrakes.status ) -- speedbreakes on 1 (0|1)
	SendDataHW("510", (lMechInfo.speedbrakes.value  > 0.1 and 1 or 0), lHardware ) -- speedbreakes on > 0.1 (0 - 1)

	--SendDataHW("520", lMechInfo.wheelbrakes.status, lHardware ) -- not in use
	--SendDataHW("521", lMechInfo.wheelbrakes.value, lHardware ) -- not in use

	local lGetTrueAirSpeed = LoGetTrueAirSpeed()
	--SendDataHW("530", lMechInfo.flaps.status ) -- flap switch off 0, 1. position 1, 2. position 2 (0|1|2)
	--SendDataHW("531", lMechInfo.flaps.value ) -- flap 1. position > 0.25, 2. position > 0.93 (0 - 1)
	SendDataHW("531", (lMechInfo.flaps.value > 0.25 and 1 or 0), lHardware ) -- flap 1. position
	SendDataHW("532", (lMechInfo.flaps.value > 0.93 and 1 or 0), lHardware ) -- flap 2. position
	SendDataHW("533", ((lMechInfo.flaps.value > 0.93 and lGetTrueAirSpeed > 340) and 1 or 0), lHardware ) -- Speed Warning for Flaps, same light as gear warning light, but blinking light
	SendDataHW("534", (lMechInfo.gear.value > 0.5 and 1 or 0), lHardware )			-- Intake FOD shields

	--SendDataHW("540", lMechInfo.parachute.status )
	SendDataHW("541", (lMechInfo.parachute.value < 0.5 and 1 or 0), lHardware )
end