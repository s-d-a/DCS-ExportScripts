-- DCS MB-339A Export

ExportScript.FoundDCSModule = true
ExportScript.Version.MB339A = "1.2.1"

ExportScript.ConfigEveryFrameArguments = 
{
	--[[
	every frames arguments
	based of "mainpanel_init.lua"
	Example (http://www.lua.org/manual/5.1/manual.html#pdf-string.format)
	[DeviceID] = "Format"
	  [4] = "%.4f", <- floating-point number with 4 digits after point
	 [19] = "%0.1f", <- floating-point number with 1 digit after point
	[129] = "%1d",  <- decimal number
	  [5] = "%.f",  <- floating point number rounded to a decimal number
	]]
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]

	[1] = "%.02f", -- Flaps Indicator
	[2] = "%.02f", -- Speed Brake Indicator
	[3] = "%.02f", -- Nose Up/Down Indicator
	[6] = "%.02f", -- Acceleration (G) Indicator
	[8] = "%.02f", -- Airspeed Indicator
	[9] = "%.02f", -- ADI Pitch
	[10] = "%.02f", -- ADI Roll
	[11] = "%.02f", -- ADI GS Indicator
	[15] = "%.02f", -- ADI Knob Rotate
	
	[17] = "%.02f", -- Rudder Pedal Animation
	
	[21] = "%.02f", -- ADI Lower Left Flag
	
	[23] = "%.02f", -- ADI Top Flag
	
	[31] = "%.02f", -- Gear Indicator Right {0.5-0.9}
	[32] = "%.02f", -- Gear Indicator Left {0.5-0.9}
	
	[33] = "%.02f", -- RPM Tens Indicator
	
	[42] = "%.02f", -- Gear Handle Light

	[64] = "%0.2f", -- Weapon Selector Window 6
	[65] = "%0.2f", -- Weapon Selector Window 5
	[66] = "%0.2f", -- Weapon Selector Window 3
	[67] = "%0.2f", -- Weapon Selector Window 4
	[68] = "%0.2f", -- Weapon Selector Window 2
	[69] = "%0.2f", -- Weapon Selector Window 1
	
	[104] = "%0.2f", -- Throttle
	
	
	
	
	
	
	-- TODO: Continue manual arg inspection at 111
	
	
	
	
	
	
	
	-- Electrical
	[300] = "%.02f", -- Battery, BatterySwitch
	[301] = "%.02f", -- Generator 1, Generator1Switch
	[302] = "%.02f", -- Generator 2, Generator2Switch
	[303] = "%.02f", -- AC power, AcPwrEmergSwitch
	[231] = "%.02f", -- Bus reset switch, BusResetSwitch
	[233] = "%.02f", -- Bus reset guard, BusResetGuard
	
	-- Simple avionics
	[541] = "%.02f", -- Set index, AnemometerKnob,0.1, {0, 1.0}
	[241] = "%.02f", -- Pressure setting, FwdAltimeterKnob,0.1, 0, 1.0}
	[570] = "%.02f", -- Pressure setting, AftAltimeterKnob,0.1, {0, 1.0}
	[259] = "%.02f", -- Reset min/max G, FwdGmeterReset
	[691] = "%.02f", -- Reset min/max G, AftGmeterReset
	
	-- Chrono
	[44] = "%.02f", -- Start/Stop/Reset, FwdChronoButton
	[45] = "%.02f", -- Rotate to charge the clock, Pull to set the time, FwdChronoKnobPull,FwdChronoKnobTurn
	
	[46] = "%.02f", -- Start/Stop/Reset, Minute hand
	[47] = "%.02f", -- Start/Stop/Reset, Hour Hand
	[48] = "%.02f", -- Start/Stop/Reset, Second Hand
	[49] = "%.02f", -- Start/Stop/Reset, Time of Day Hand
	
	[50] = "%.02f", -- Altimeter Indicator Hundreds
	
	[51] = "%.02f", -- Rotate to charge the clock, Pull to set the time, FwdChronoKnobPull,FwdChronoKnobTurn
	
	[52] = "%.02f", -- Altimeter Indicator Thousands
	[53] = "%.02f", -- Altimeter Indicator Ten thousands
	
	[60] = "%.02f", -- Stick Fore/Aft
	[61] = "%.02f", -- Stick Left/Right
	
	
	[28] = "%.02f", -- Start/Stop/Reset, AftChronoButton,28
	[29] = "%.02f", -- Rotate to charge the clock, Pull to set the time, AftChronoKnobPull,AftChronoKnobTurn
	[30] = "%.02f", -- Rotate to charge the clock, Pull to set the time, AftChronoKnobPull,AftChronoKnobTurn
	
	-- ADI
	[15] = "%.02f", -- Pitch adjustment, FwdAdiPitchAdj,0.1, {-1, 1.0}
	[388] = "%.02f", -- Pitch adjustment, AftAdiPitchAdj,0.1, {-1, 1.0}
	[401] = "%.02f", -- Pull to cage, Rotate to adjust, FwdAiKnobPull, FwdAiKnobRotate, {0.0, 1.0}, {-1.0, 1.0}
	[403] = "%.02f", -- Pull to cage, Rotate to adjust, FwdAiKnobPull, FwdAiKnobRotate, {0.0, 1.0}, {-1.0, 1.0}
	[402] = "%.02f", -- Pull to cage, Rotate to adjust, AftAiKnobPull, AftAiKnobRotate, {0.0, 1.0}, {-1.0, 1.0}
	[404] = "%.02f", -- Pull to cage, Rotate to adjust, AftAiKnobPull, AftAiKnobRotate, {0.0, 1.0}, {-1.0, 1.0}
	
	-- HSI
	[362] = "%.02f", -- Heading set, FwdHsiHeadingKnob,0.1, {0, 1.0}
	[353] = "%.02f", -- Course set, FwdHsiCourseKnob,0.1, {0, 1.0}
	[196] = "%.02f", -- Heading set, AftHsiHeadingKnob,0.1, {0, 1.0}
	[187] = "%.02f", -- Course set, AftHsiCourseKnob,0.1, {0, 1.0}
	
	-- Flight dir
	[333] = "%.02f", -- F/D HDG, FwdFltDirHdg
	[334] = "%.02f", -- F/D GS ARM, FwdFltDirArm
	[335] = "%.02f", -- F/D STBY, FwdFltDirStby
	[336] = "%.02f", -- F/D RADIO NAV, FwdFltDirRadioNav
	[337] = "%.02f", -- F/D GS, FwdFltDirGs
	[338] = "%.02f", -- F/D ALT HOLD, FwdFltDirAltHold
	[693] = "%.02f", -- F/D HDG, AftFltDirHdg
	[695] = "%.02f", -- F/D GS ARM, AftFltDirArm
	[697] = "%.02f", -- F/D STBY, AftFltDirStby
	[699] = "%.02f", -- F/D RADIO NAV, AftFltDirRadioNav
	[701] = "%.02f", -- F/D GS, AftFltDirGs
	[703] = "%.02f", -- F/D ALT HOLD, AftFltDirAltHold
	
	-- Fuel
	[257] = "%.02f", -- Tank Selector, FwdFuelQtyKnob,5,0.25,0
	[258] = "%.02f", -- Test, FwdFuelQtyTest
	[328] = "%.02f", -- Tank Selector, AftFuelQtyKnob,5,0.25,0
	[374] = "%.02f", -- Test, AftFuelQtyTest
	[248] = "%.02f", -- Fwd Fuel shut-off switch, FwdFuelShutoffSwitch
	[237] = "%.02f", -- Fwd Fuel shut-off guard, FwdFuelShutoffGuard
	[516] = "%.02f", -- Aft Fuel shut-off switch, AftFuelShutoffSwitch
	[517] = "%.02f", -- Aft Fuel shut-off guard, AftFuelShutoffGuard
	[249] = "%.02f", -- Fuel transfer, FuelTransferSwitch
	[593] = "%.02f", -- Fwd Fuel dump, FwdFuelDumpKnob
	[160] = "%.02f", -- Aft Fuel dump, AftFuelDumpKnob
	
	-- L/G & Ground
	[250] = "%.02f", -- Anti-skid, FwdAntiSkidOnOff
	[518] = "%.02f", -- Anti-skid, AftAntiSkidOnOff
	[266] = "%.02f", -- Parking brake pull, ParkingBrakePull,1, {0, 1.0}
	[263] = "%.02f", -- Parking brake lock, ParkingBrakeLock
	[681] = "%.02f", -- Emergency landing gear, EmergLandingGear
	[379] = "%.02f", -- Down-lock override, FwdLandingGearOverride
	[14] = "%.02f", -- Down-lock override, AftLandingGearOverride
	[519] = "%.02f", -- Rudder Trim, AftTrimLeftRudder, AftTrimRightRudder
	[4] = "%.02f", -- Landing Gear Lever, LandingGearLever
	[106] = "%.02f", -- Landing Gear Lever, LandingGearLever
	
	-- Lights
	[321] = "%.02f", -- Taxi/Landing lights, TaxiLandingLight
	[502] = "%.02f", -- Formation lights, FormationLigths,0.1, {0, 1.0}
	[503] = "%.02f", -- Instruments lights, FwdBrtInst,0.1, {0, 1.0}
	[504] = "%.02f", -- Flood lights, FwdFloodLight,0.1, {0, 1.0}
	[505] = "%.02f", -- Console lights, FwdBrtConsolle,0.1, {0, 1.0}
	[510] = "%.02f", -- Instruments lights, AftBrtInst,0.1, {0, 1.0}
	[512] = "%.02f", -- Flood lights, AftFloodLight,0.1, {0, 1.0}
	[511] = "%.02f", -- Console lights, AftBrtConsolle,0.1, {0, 1.0}
	[41] = "%.02f", -- Nav lights flash/steady, NavLightFlashSteady
	[40] = "%.02f", -- Nav lights brt/dim, NavLightBrtDim
	[685] = "%.02f", -- Beacon lights, BcnLightOnOff
	[322] = "%.02f", -- Warn Lights brt/dim, FwdWarnLightBrtDim
	[107] = "%.02f", -- Warn Lights brt/dim, AftWarnLightBrtDim
	
	-- Warning panel
	[304] = "%.02f", -- Warn lights test, WarningTestButton
	[591] = "%.02f", -- Master caution reset, MasterCautionReset
	[592] = "%.02f", -- Master caution reset, MasterCautionReset
	[382] = "%.02f", -- Warning silence, WarningSilence
	
	-- Engine
	[238] = "%.02f", -- Engine master, EngineMasterSwitch
	[240] = "%.02f", -- JPT limiter, EngineJptLimiterSwitch
	[239] = "%.02f", -- Engine start, StartEngineButton
	
	-- Flight controls
	[182] = "%.02f", -- Canopy lock/unlock, FwdCanopyLockUnlock
	[183] = "%.02f", -- Partial opening hook, CanopyHook
	[582] = "%.02f", -- Canopy unlock, CanopyUnlock
	[750] = "%.02f", -- Canopy handle, CanopyHandle
	[43] = "%.02f", -- Canopy lock/unlock, AftCanopyLockUnlock
	[750] = "%.02f", -- Canopy handle, CanopyHandle
	[232] = "%.02f", -- Flight controls lock/unlock, LockFlyControls
	[400] = "%.02f", -- Mirrors open/close, MirrorToggle
	[594] = "%.02f", -- Mirrors open/close, MirrorToggle
	[235] = "%.02f", -- Fwd Aileron servo guard, FwdGuardAilServo
	[260] = "%.02f", -- Fwd Aileron servo switch, FwdAilServo
	[288] = "%.02f", -- Aft Aileron servo guard, AftGuardAilServo
	[289] = "%.02f", -- Aft Aileron servo switch, AftAilServo
	
	-- Pressurisation
	[590] = "%.02f", -- Ram air scoop, RamAirScoop
	[264] = "%.02f", -- Cabin pressure switch, PressurizationSwitch
	[234] = "%.02f", -- Cabin pressure guard, CabinPressureGuard
	[179] = "%.02f", -- Cabin temp, CabinTemp,1.0, {-1.0, 0.0} 
	
	-- Smoke
	[330] = "%.02f", -- Smoke master, SmokeMasterSwitch
	[331] = "%.02f", -- White smokes, SmokeWhiteSwitch
	[332] = "%.02f", -- Color smokes, SmokeColorSwitch
	
	-- Anti Ice
	[262] = "%.02f", -- Engine anti-ice, EngineAntiIceSwitch
	[261] = "%.02f", -- Front Pitot anti-ice, FrontPitotAntiIceSwitch
	[149] = "%.02f", -- Rear Pitot anti-ice, RearPitotAntiIceSwitch
	[178] = "%.02f", -- Windshield Demist, WindshieldDemistSwitch
	[177] = "%.02f", -- Windshield Rain RMVL, WindshieldRainRmvlSwitch
	
	-- Ejection seat
	[205] = "%.02f", -- Seat firing handle, SeatFiringHandle
	[18] = "%.02f", -- Seat firing handle, SeatFiringHandle
	[377] = "%.02f", -- Ejection safety pin to canopy, SeatPinToCanopy
	[376] = "%.02f", -- Ejection safety pin to seat, SeatPinToSeat
	
	-- Emergency Escape
	[583] = "%.02f", -- Fwd Canopy severance handle, FwdSeveranceHandle
	[584] = "%.02f", -- Fwd Canopy severance safety pin, FwdSeverancePin
	[741] = "%.02f", -- Aft Canopy severance handle, AftSeveranceHandle
	[742] = "%.02f", -- Aft Canopy severance safety pin, AftSeverancePin
	
	-- HSI
	[346] = "%.02f", -- TACAN, FwdHsiTACAN
	[347] = "%.02f", -- VOR, FwdHsiVor
	[348] = "%.02f", -- RNAV, FwdHsiRnav
	[57] = "%.02f", -- TACAN, AftHsiTACAN
	[58] = "%.02f", -- VOR, AftHsiVor
	[59] = "%.02f", -- RNAV, AftHsiRnav
	
	-- Control shift
	[324] = "%.02f", -- TACAN, FwdControlShiftTacan
	[326] = "%.02f", -- VOR-ILS, FwdControlShiftVorIls
	[384] = "%.02f", -- NAV, FwdControlShiftNav
	[273] = "%.02f", -- TACAN, AftControlShiftTacan
	[275] = "%.02f", -- VOR-ILS, AftControlShiftVorIls
	[277] = "%.02f", -- NAV, AftControlShiftNav
	[307] = "%.02f", -- COMM1, FwdControlShiftComm1
	[309] = "%.02f", -- COMM2, FwdControlShiftComm2
	[317] = "%.02f", -- ADF, FwdControlShiftAdf
	[267] = "%.02f", -- COMM1, AftControlShiftComm1
	[269] = "%.02f", -- COMM2, AftControlShiftComm2
	[271] = "%.02f", -- ADF, AftControlShiftAdf
	
	-- CDU FWD
	[345] = "%.02f", -- AHRS/GPS system, GpsPowerSwitch
	[600] = "%.02f", -- Row 1, FwdCduRow1Sel
	[601] = "%.02f", -- Row 2, FwdCduRow2Sel
	[602] = "%.02f", -- Row 3, FwdCduRow3Sel
	[603] = "%.02f", -- Row 4, FwdCduRow4Sel
	[605] = "%.02f", -- MARK, FwdCduMark
	[609] = "%.02f", -- SET, FwdCduSet
	[610] = "%.02f", -- BRT, FwdCduBrt
	[611] = "%.02f", -- -, FwdCduDec
	[612] = "%.02f", -- +, FwdCduInc
	[613] = "%.02f", -- N. 1, FwdCduN1
	[614] = "%.02f", -- N. 2, FwdCduN2
	[615] = "%.02f", -- N. 3, FwdCduN3
	[616] = "%.02f", -- N. 4, FwdCduN4
	[617] = "%.02f", -- N. 5, FwdCduN5
	[618] = "%.02f", -- N. 6, FwdCduN6
	[619] = "%.02f", -- N. 7, FwdCduN7
	[620] = "%.02f", -- N. 8, FwdCduN8
	[621] = "%.02f", -- N. 9, FwdCduN9
	[622] = "%.02f", -- N. 0, FwdCduN0
	[623] = "%.02f", -- CLR, FwdCduClr
	[624] = "%.02f", -- ENT, FwdCduEnt
	[606] = "%.02f", -- MODE, FwdCduMode
	[607] = "%.02f", -- STEER, FwdCduSteer
	[604] = "%.02f", -- FIX, FwdCduFix
	[608] = "%.02f", -- FLT PLN, FwdCduFltPln
	
	-- CDU AFT
	[625] = "%.02f", -- Row 1, AftCduRow1Sel
	[626] = "%.02f", -- Row 2, AftCduRow2Sel
	[627] = "%.02f", -- Row 3, AftCduRow3Sel
	[628] = "%.02f", -- Row 4, AftCduRow4Sel
	[630] = "%.02f", -- MARK, AftCduMark
	[634] = "%.02f", -- SET, AftCduSet
	[635] = "%.02f", -- BRT, AftCduBrt
	[636] = "%.02f", -- -, AftCduDec
	[637] = "%.02f", -- +, AftCduInc
	[638] = "%.02f", -- N. 1, AftCduN1
	[639] = "%.02f", -- N. 2, AftCduN2
	[640] = "%.02f", -- N. 3, AftCduN3
	[641] = "%.02f", -- N. 4, AftCduN4
	[642] = "%.02f", -- N. 5, AftCduN5
	[643] = "%.02f", -- N. 6, AftCduN6
	[644] = "%.02f", -- N. 7, AftCduN7
	[645] = "%.02f", -- N. 8, AftCduN8
	[646] = "%.02f", -- N. 9, AftCduN9
	[647] = "%.02f", -- N. 0, AftCduN0
	[648] = "%.02f", -- CLR, AftCduClr
	[649] = "%.02f", -- ENT, AftCduEnt
	[631] = "%.02f", -- MODE, AftCduMode
	[632] = "%.02f", -- STEER, AftCduSteer
	[629] = "%.02f", -- FIX, AftCduFix
	[633] = "%.02f", -- FLT PLN, AftCduFltPln
	
	-- Weapons
	[236] = "%.02f", -- Ground fire guard, GroundFireGuard
	[475] = "%.02f", -- Master armament, MasterArmamentSwitch
	[473] = "%.02f", -- Salvo jettison, SalvoJettison
	[70] = "%.02f", -- Selective jettison, SelectiveJettison
	[494] = "%.02f", -- Bomb fuze, BombFuzeSelector
	[495] = "%.02f", -- Sequence ripple/single, WeaponSequence
	[488] = "%.02f", -- Station 1, WeaponStation1
	[489] = "%.02f", -- Station 2, WeaponStation2
	[490] = "%.02f", -- Station 3, WeaponStation3
	[491] = "%.02f", -- Station 4, WeaponStation4
	[492] = "%.02f", -- Station 5, WeaponStation5
	[493] = "%.02f", -- Station 6, WeaponStation6
	[506] = "%.02f", -- Ground fire, GroundFireSwitch
	[169] = "%.02f", -- Master Arm Inib guard, GuardMasterArmInib
	[170] = "%.02f", -- Master Arm Inib switch, MasterArmInib
	
	-- Gunsight
	[478] = "%.02f", -- Power, GunsightPower
	-- [131] = "%.02f", -- Mode, GunsightMode,5,0.25,0
	[479] = "%.02f", -- Brightness, GunsightBrt,0.1, {0, 1.0}
	[480] = "%.02f", -- Test, GunsightTest
	[481] = "%.02f", -- Depression reticle x 100, GunsightXxx,0.1, {0, 1.0}
	[482] = "%.02f", -- Depression reticle x 10, GunsightxXx,0.1, {0, 1.0}
	[483] = "%.02f", -- Depression reticle x 1, GunsightxxX,0.1, {0, 1.0}
	
	-- Vor
	[563] = "%.02f", -- freq 1MHz, FwdVorIls1MhzKnob,0.5, {0, 1.0}
	[564] = "%.02f", -- freq 50kHz, FwdVorIls50KhzKnob,0.5, {0, 1.0}
	[565] = "%.02f", -- VOR xXx.xx
	[566] = "%.02f", -- VOR xxX.xx
	[567] = "%.02f", -- VOR xxx.Xx
	[568] = "%.02f", -- VOR xxx.xX
	[561] = "%.02f", -- test, FwdVorIlsTestButton
	[562] = "%.02f", -- power Switch, FwdVorIlsPowerSwitch
	[539] = "%.02f", -- freq 1MHz, AftVorIls1MhzKnob,0.5,{0, 1.0}
	[34] = "%.02f", -- freq 50kHz, AftVorIls50KhzKnob,0.5, {0, 1.0}, (maybe 534, source typo?)
	[537] = "%.02f", -- test, AftVorIlsTestButton
	[538] = "%.02f", -- power, AftVorIlsPowerSwitch
	
	-- Tacan
	[569] = "%.02f", -- mode, FwdTacanMode,5,0.25,0
	[552] = "%.02f", -- XY, FwdTacanChannelXY
	[553] = "%.02f", -- units, FwdTacanChannelUnit,10,0.1,0
	[554] = "%.02f", -- tens, FwdTacanChannelTens,13,0.08333,0
	[555] = "%.02f", -- test, FwdTacanTestButton
	[556] = "%.02f", -- test Light
	[557] = "%.02f", -- Tacan xxxX
	[558] = "%.02f", -- Tacan xxXx
	[559] = "%.02f", -- Tacan xXxx
	[560] = "%.02f", -- Tacan Xxxx
	[571] = "%.02f", -- mode, AftTacanMode,5,0.25,0
	[572] = "%.02f", -- XY, AftTacanChannelXY
	[573] = "%.02f", -- units, AftTacanChannelUnit,10,0.1,0
	[574] = "%.02f", -- tens, AftTacanChannelTens,13,0.08333,0
	[575] = "%.02f", -- test, AftTacanTestButton
	
	-- Comm1
	[664] = "%.02f", -- Function, FwdComm1Function,4,0.33,0
	[665] = "%.02f", -- Mode, FwdComm1Mode,3,0.50,0
	[678] = "%.02f", -- Frequency, FwdComm1FreqxxxxX,4,0.33,0
	[677] = "%.02f", -- Frequency, FwdComm1FreqxxxXx,10,0.111,0
	[676] = "%.02f", -- Frequency, FwdComm1FreqxxXxx,10,0.111,0
	[675] = "%.02f", -- Frequency, FwdComm1FreqxXxxx,10,0.111,0
	[674] = "%.02f", -- Frequency, FwdComm1FreqXxxxx,2,1,0
	[173] = "%.02f", -- Squelch, FwdComm1Squelch
	[175] = "%.02f", -- Tone, FwdComm1Tone
	[679] = "%.02f", -- Mem, FwdComm1Mem
	[673] = "%.02f", -- Channel, FwdComm1SetChannel,20,0.0526,0
	[279] = "%.02f", -- Function, AftComm1Function,4,0.33,0
	[280] = "%.02f", -- Mode, AftComm1Mode,3,0.50,0
	[526] = "%.02f", -- Frequency, AftComm1FreqxxxxX,4,0.33,0
	[525] = "%.02f", -- Frequency, AftComm1FreqxxxXx,10,0.111,0
	[524] = "%.02f", -- Frequency, AftComm1FreqxxXxx,10,0.111,0
	[523] = "%.02f", -- Frequency, AftComm1FreqxXxxx,10,0.111,0
	[522] = "%.02f", -- Frequency, AftComm1FreqXxxxx,2,1,0
	[174] = "%.02f", -- Squelch, AftComm1Squelch
	[176] = "%.02f", -- Tone, AftComm1Tone
	[527] = "%.02f", -- Mem, AftComm1Mem
	[521] = "%.02f", -- Channel, AftComm1SetChannel,20,0.0526,0
	
	-- Comm2
	[650] = "%.02f", -- Mode, FwdComm2Mode,5,0.25,0
	[651] = "%.02f", -- Function, FwdComm2Function,5,0.25,0
	[652] = "%.02f", -- Brightness, FwdComm2Brightness,0.1, {0, 1.0}
	[654] = "%.02f", -- Channel, FwdComm2ChannelxXDw, FwdComm2ChannelxXUp
	[655] = "%.02f", -- Channel, FwdComm2ChannelXxDw, FwdComm2ChannelXxUp
	[656] = "%.02f", -- Frequency, FwdComm2FreqxxxxXDw, FwdComm2FreqxxxxXUp
	[657] = "%.02f", -- Frequency, FwdComm2FreqxxxXxDw, FwdComm2FreqxxxXxUp
	[658] = "%.02f", -- Frequency, FwdComm2FreqxxXxxDw, FwdComm2FreqxxXxxUp
	[659] = "%.02f", -- Frequency, FwdComm2FreqxXxxxDw, FwdComm2FreqxXxxxUp
	[660] = "%.02f", -- Frequency, FwdComm2FreqXxxxxDw, FwdComm2FreqXxxxxUp
	[662] = "%.02f", -- Squelch, FwdComm2Squelch, FwdComm2Squelch
	[661] = "%.02f", -- Modulation, FwdComm2Modulation
	[663] = "%.02f", -- TOD (INOP), FwdComm2Tod
	[290] = "%.02f", -- Mode, AftComm2Mode,5,0.25,0
	[291] = "%.02f", -- Function, AftComm2Function,5,0.25,0
	[292] = "%.02f", -- Brightness, AftComm2Brightness,0.1, {0, 1.0}
	[294] = "%.02f", -- Channel, AftComm2ChannelxXDw, AftComm2ChannelxXUp
	[295] = "%.02f", -- Channel, AftComm2ChannelXxDw, AftComm2ChannelXxUp
	[296] = "%.02f", -- Frequency, AftComm2FreqxxxxXDw, AftComm2FreqxxxxXUp
	[297] = "%.02f", -- Frequency, AftComm2FreqxxxXxDw, AftComm2FreqxxxXxUp
	[154] = "%.02f", -- Frequency, AftComm2FreqxxXxxDw, AftComm2FreqxxXxxUp
	[155] = "%.02f", -- Frequency, AftComm2FreqxXxxxDw, AftComm2FreqxXxxxUp
	[156] = "%.02f", -- Frequency, AftComm2FreqXxxxxDw, AftComm2FreqXxxxxUp
	[158] = "%.02f", -- Squelch, AftComm2Squelch, AftComm2Squelch
	[157] = "%.02f", -- Modulation, AftComm2Modulation
	[159] = "%.02f", -- TOD (INOP), AftComm2Tod
	
	-- FWD ICS
	[115] = "%.02f", -- COM1 volume, FwdIcsComm1Switch, FwdIcsComm1Volume
	[116] = "%.02f", -- COM1 volume, FwdIcsComm1Switch, FwdIcsComm1Volume
	[117] = "%.02f", -- COM2 volume, FwdIcsComm2Switch, FwdIcsComm2Volume
	[118] = "%.02f", -- COM2 volume, FwdIcsComm2Switch, FwdIcsComm2Volume
	[119] = "%.02f", -- TACAN volume, FwdIcsTacanSwitch, FwdIcsTacanVolume
	[120] = "%.02f", -- TACAN volume, FwdIcsTacanSwitch, FwdIcsTacanVolume
	[121] = "%.02f", -- VOR/LOC volume, FwdIcsVorLocSwitch, FwdIcsVorLocVolume
	[122] = "%.02f", -- VOR/LOC volume, FwdIcsVorLocSwitch, FwdIcsVorLocVolume
	[123] = "%.02f", -- ADF volume, FwdIcsAdfSwitch, FwdIcsAdfVolume
	[124] = "%.02f", -- ADF volume, FwdIcsAdfSwitch, FwdIcsAdfVolume
	[125] = "%.02f", -- Markers volume, FwdIcsMkrSwitch, FwdIcsMkrVolume
	[126] = "%.02f", -- Markers volume, FwdIcsMkrSwitch, FwdIcsMkrVolume
	[127] = "%.02f", -- Interphone volume, FwdIcsIntSwitch, FwdIcsIntVolume
	[128] = "%.02f", -- Interphone volume, FwdIcsIntSwitch, FwdIcsIntVolume
	[129] = "%.02f", -- Master volume, FwdIcsVolume,0.1, {0, 1.0}
	[130] = "%.02f", -- Call, FwdIcsCallSwitch
	[131] = "%.02f", -- COMM1/COMM2 TX Selector, FwdIcsCommSelector
	
	-- AFT ICS
	[132] = "%.02f", -- COM1 volume, AftIcsComm1Switch, AftIcsComm1Volume
	[133] = "%.02f", -- COM1 volume, AftIcsComm1Switch, AftIcsComm1Volume
	[134] = "%.02f", -- COM2 volume, AftIcsComm2Switch, AftIcsComm2Volume
	[135] = "%.02f", -- COM2 volume, AftIcsComm2Switch, AftIcsComm2Volume
	[136] = "%.02f", -- TACAN volume, AftIcsTacanSwitch, AftIcsTacanVolume
	[137] = "%.02f", -- TACAN volume, AftIcsTacanSwitch, AftIcsTacanVolume
	[138] = "%.02f", -- VOR/LOC volume, AftIcsVorLocSwitch, AftIcsVorLocVolume
	[139] = "%.02f", -- VOR/LOC volume, AftIcsVorLocSwitch, AftIcsVorLocVolume
	[140] = "%.02f", -- ADF volume, AftIcsAdfSwitch, AftIcsAdfVolume
	[141] = "%.02f", -- ADF volume, AftIcsAdfSwitch, AftIcsAdfVolume
	[142] = "%.02f", -- Markers volume, AftIcsMkrSwitch, AftIcsMkrVolume
	[143] = "%.02f", -- Markers volume, AftIcsMkrSwitch, AftIcsMkrVolume
	[144] = "%.02f", -- Interphone volume, AftIcsIntSwitch, AftIcsIntVolume
	[145] = "%.02f", -- Interphone volume, AftIcsIntSwitch, AftIcsIntVolume
	[146] = "%.02f", -- Master volume, AftIcsVolume,0.1, {0, 1.0}
	[147] = "%.02f", -- Call, AftIcsCallSwitch
	[148] = "%.02f", -- COMM1/COMM2 TX Selector, AftIcsCommSelector
	
	-- Oxygen
	[587] = "%.02f", -- Oxygen Power Supply, FwdOxigenOnOffSwitch
	[589] = "%.02f", -- Oxygen Diluiter Lever (Normal / 100%), FwdOxigenNormal100
	[588] = "%.02f", -- Oxygen Emergengy Lever, FwdOxigenEmergency
	[113] = "%.02f", -- Oxygen Power Supply, AftOxigenOnOffSwitch
	[112] = "%.02f", -- Oxygen Diluiter Lever (Normal / 100%), AftOxigenNormal100
	[111] = "%.02f", -- Oxygen Emergengy Lever, AftOxigenEmergency
	
	-- Compartment
	[206] = "%.02f", -- Glove compartment, FwdGloveCompartment
	[207] = "%.02f", -- Glove compartment, AftGloveCompartment
	
	-- Curtain
	[1999] = "%.02f", -- Curtain handle, CurtainHandle
	
	-- ELT
	[727] = "%.02f", -- ELT, EltSwitch, EltSwitch
	
	-- IFF
	[714] = "%.02f", -- Master, IffMaster,5,0.25,0
	[713] = "%.02f", -- Code, IffCode,5,0.25,0
	[715] = "%.02f", -- ANT, AntSwitch,anim_speed_pull_switch
	[710] = "%.02f", -- Mode 4 control, M4Switch,anim_speed_pull_switch
	[711] = "%.02f", -- Mode 4 Audio, Mode4AudioSwitch
	[716] = "%.02f", -- RAD, RadSwitch
	[720] = "%.02f", -- Mode 1 control, M1Switch
	[719] = "%.02f", -- Mode 2 control, M2Switch
	[718] = "%.02f", -- Mode 3/A control, M3ASwitch
	[717] = "%.02f", -- Mode 3/C control, MCSwitch
	[712] = "%.02f", -- IDENT-MIC, IdentMicSwitch, IdentMicSwitch
	[734] = "%.02f", -- CODE Switch 1, CodeSwitchXxxxxx
	[735] = "%.02f", -- CODE Switch 2, CodeSwitchxXxxxx
	[736] = "%.02f", -- CODE Switch 3, CodeSwitchxxXxxx
	[737] = "%.02f", -- CODE Switch 4, CodeSwitchxxxXxx
	[738] = "%.02f", -- CODE Switch 5, CodeSwitchxxxxXx
	[739] = "%.02f", -- CODE Switch 6, CodeSwitchxxxxxX
	[743] = "%.02f", -- Press To Test, PressToTestGo
	[744] = "%.02f", -- Press To Test, PressToTestNoGo
	[745] = "%.02f", -- Press To Test, PressToTestReply

}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to Ikarus
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to DAC
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF_RADIO = GetDevice(54)
	ExportScript.Tools.SendDataDAC("ExportID", "Format")
	ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
    ---------------
    -- Log Dumps --
    ---------------
    --ExportScript.CockpitParamsLogDump(mainPanelDevice)
    --ExportScript.MetaTableLogDump(mainPanelDevice)
    --ExportScript.ListIndicationLogDump(mainPanelDevice)
	
	ExportScript.RadiosVox(mainPanelDevice)
	ExportScript.RadiosNav(mainPanelDevice)
	ExportScript.GpsUnit(mainPanelDevice)
	ExportScript.NavUnit(mainPanelDevice)
	ExportScript.WeaponPanel(mainPanelDevice)
	ExportScript.GunsightMils(mainPanelDevice)
	ExportScript.GearFlaps(mainPanelDevice)
	-- TODO: Fuel tile with flow and amount
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to DAC
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF_RADIO = GetDevice(54)
	ExportScript.Tools.SendDataDAC("ExportID", "Format")
	ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
end

-----------------------------
--     Custom functions    --
-----------------------------

function ExportScript.CockpitParamsLogDump(mainPanelDevice) -- Get list of cockpit params
   ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
end

function ExportScript.MetaTableLogDump(mainPanelDevice) -- getmetatable get function name from devices
    local ltmp1 = 0
    for ltmp2 = 1, 70, 1 do
        ltmp1 = GetDevice(ltmp2)
        ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
        ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
    end
end

function ExportScript.ListIndicationLogDump(mainPanelDevice) -- list_indication get the value of cockpit displays
    local ltmp1 = 0
    for ltmp2 = 0, 20, 1 do
        ltmp1 = list_indication(ltmp2)
        ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
    end
end

function ExportScript.RadiosVox(mainPanelDevice)

	-- TODO: Explore "set_is_receiving"
	-- TODO: Explore "is_on_guard"
	
	local RadioUhfPlt = GetDevice(6)
	ExportScript.Tools.SendData(3000, ExportScript.Tools.RoundFreqeuncy((RadioUhfPlt:get_frequency()/1000000)))
	-- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	
	local RadioVhfPlt = GetDevice(7)
	ExportScript.Tools.SendData(3001, ExportScript.Tools.RoundFreqeuncy((RadioVhfPlt:get_frequency()/1000000)))
	
	local RadioUhfCplt = GetDevice(9)
	ExportScript.Tools.SendData(3002, ExportScript.Tools.RoundFreqeuncy((RadioUhfCplt:get_frequency()/1000000)))
	
	local RadioVhfCplt = GetDevice(10)
	ExportScript.Tools.SendData(3003, ExportScript.Tools.RoundFreqeuncy((RadioVhfCplt:get_frequency()/1000000)))
	
	local FwdRfrDisplay1 = list_cockpit_params():match("FwdRfrDisplay1:([^\n]+)")
	FwdRfrDisplay1 = FwdRfrDisplay1:gsub('"','')
	FwdRfrDisplay1 = FwdRfrDisplay1:gsub("%s+", "")
	ExportScript.Tools.SendData(3004, FwdRfrDisplay1)
	
	local FwdRfrDisplay2 = list_cockpit_params():match("FwdRfrDisplay2:([^\n]+)")
	FwdRfrDisplay2 = FwdRfrDisplay2:gsub('"','')
	FwdRfrDisplay2 = FwdRfrDisplay2:gsub("%s+", "")
	ExportScript.Tools.SendData(3005, FwdRfrDisplay2)
	
	local AftRfrDisplay1 = list_cockpit_params():match("AftRfrDisplay1:([^\n]+)")
	AftRfrDisplay1 = AftRfrDisplay1:gsub('"','')
	AftRfrDisplay1 = AftRfrDisplay1:gsub("%s+", "")
	ExportScript.Tools.SendData(3006, AftRfrDisplay1)
	
	local AftRfrDisplay2 = list_cockpit_params():match("AftRfrDisplay2:([^\n]+)")
	AftRfrDisplay2 = AftRfrDisplay2:gsub('"','')
	AftRfrDisplay2 = AftRfrDisplay2:gsub("%s+", "")
	ExportScript.Tools.SendData(3007, AftRfrDisplay2)
	
end

function ExportScript.RadiosNav(mainPanelDevice)

	-- TACAN
	local tacanxxxX = mainPanelDevice:get_argument_value(557)
	if tacanxxxX > 0.50 then tacanxxxX = 'Y' else tacanxxxX = 'X' end

	local tacanxxXx = round(mainPanelDevice:get_argument_value(558) * 10,0)
	if tacanxxXx > 9 then tacanxxXx = 0 end
	
	local tacanxXxx = round(mainPanelDevice:get_argument_value(559) * 10,0)
	if tacanxXxx > 9 then tacanxXxx = 0 end
	
	local tacanXxxx = round(mainPanelDevice:get_argument_value(560) * 10,0) -- TODO: Fix the multiplier (goes to 12)
	if tacanXxxx > 9 then tacanXxxx = 0 end
	
	ExportScript.Tools.SendData(4006, 'TCN\n' .. tacanXxxx .. tacanxXxx .. tacanxxXx .. tacanxxxX)
	
	
	-- VOR ILS
	
	--[565] = "%.02f", -- VOR xXx.xx
	--[566] = "%.02f", -- VOR xxX.xx
	--[567] = "%.02f", -- VOR xxx.Xx
	--[568] = "%.02f", -- VOR xxx.xX
	
	
	
	-- IFF
	
	local mode1 = GetDevice(16)
	ExportScript.Tools.SendData(4004, mode1:get_mode1_code())
	
	local mode3 = GetDevice(16)
	ExportScript.Tools.SendData(4005, mode3:get_mode3_code())

end

function ExportScript.GpsUnit(mainPanelDevice)

	local FwdRduDisplay1 = list_cockpit_params():match("FwdRduDisplay1:([^\n]+)")
	FwdRduDisplay1 = FwdRduDisplay1:gsub('"','')
	local FwdRduDisplay2 = list_cockpit_params():match("FwdRduDisplay2:([^\n]+)")
	FwdRduDisplay2 = FwdRduDisplay2:gsub('"','')
	FwdRduDisplay2 = FwdRduDisplay2:gsub(':','¦') -- because for DCS-Interface ":" is a break
	ExportScript.Tools.SendData(3008, FwdRduDisplay1 .. "\n" .. FwdRduDisplay2)
	
	
	local AftRduDisplay1 = list_cockpit_params():match("AftRduDisplay1:([^\n]+)")
	AftRduDisplay1 = AftRduDisplay1:gsub('"','')
	local AftRduDisplay2 = list_cockpit_params():match("AftRduDisplay2:([^\n]+)")
	AftRduDisplay2 = AftRduDisplay2:gsub('"','')
	AftRduDisplay2 = AftRduDisplay2:gsub(':','¦') -- because for DCS-Interface ":" is a break
	ExportScript.Tools.SendData(3009, AftRduDisplay1 .. "\n" .. AftRduDisplay2)
end

function ExportScript.NavUnit(mainPanelDevice)

	-- TODO: if ) then downArrow?
	-- TODO: Break up the 4 lines into 4 different tiles using the apache text code
	
	local FwdCduDisplay1 = list_cockpit_params():match("FwdCduDisplay1:([^\n]+)")
	FwdCduDisplay1 = FwdCduDisplay1:gsub('"','')
	FwdCduDisplay1 = FwdCduDisplay1:gsub(':','¦') -- because for DCS-Interface ":" is a break
	local FwdCduDisplay2 = list_cockpit_params():match("FwdCduDisplay2:([^\n]+)")
	FwdCduDisplay2 = FwdCduDisplay2:gsub('"','')
	FwdCduDisplay2 = FwdCduDisplay2:gsub(':','¦') -- because for DCS-Interface ":" is a break
	local FwdCduDisplay3 = list_cockpit_params():match("FwdCduDisplay3:([^\n]+)")
	FwdCduDisplay3 = FwdCduDisplay3:gsub('"','')
	FwdCduDisplay3 = FwdCduDisplay3:gsub(':','¦') -- because for DCS-Interface ":" is a break
	local FwdCduDisplay4 = list_cockpit_params():match("FwdCduDisplay4:([^\n]+)")
	FwdCduDisplay4 = FwdCduDisplay4:gsub('"','')
	FwdCduDisplay4 = FwdCduDisplay4:gsub(':','¦') -- because for DCS-Interface ":" is a break
	
	ExportScript.Tools.SendData(3010, FwdCduDisplay1 .. "\n" .. FwdCduDisplay2 .. "\n" .. FwdCduDisplay3 .. "\n" .. FwdCduDisplay4)
	
	local AftCduDisplay1 = list_cockpit_params():match("AftCduDisplay1:([^\n]+)")
	AftCduDisplay1 = AftCduDisplay1:gsub('"','')
	AftCduDisplay1 = AftCduDisplay1:gsub(':','¦') -- because for DCS-Interface ":" is a break
	local AftCduDisplay2 = list_cockpit_params():match("AftCduDisplay2:([^\n]+)")
	AftCduDisplay2 = AftCduDisplay2:gsub('"','')
	AftCduDisplay2 = AftCduDisplay2:gsub(':','¦') -- because for DCS-Interface ":" is a break
	local AftCduDisplay3 = list_cockpit_params():match("AftCduDisplay3:([^\n]+)")
	AftCduDisplay3 = AftCduDisplay3:gsub('"','')
	AftCduDisplay3 = AftCduDisplay3:gsub(':','¦') -- because for DCS-Interface ":" is a break
	local AftCduDisplay4 = list_cockpit_params():match("AftCduDisplay4:([^\n]+)")
	AftCduDisplay4 = AftCduDisplay4:gsub('"','')
	AftCduDisplay4 = AftCduDisplay4:gsub(':','¦') -- because for DCS-Interface ":" is a break
	
	ExportScript.Tools.SendData(3011, AftCduDisplay1 .. "\n" .. AftCduDisplay2 .. "\n" .. AftCduDisplay3 .. "\n" .. AftCduDisplay4)
	
end

function ExportScript.WeaponPanel(mainPanelDevice)

-- TODO: Add emoji dot arm indicator

	--[64] = "%0.2f", -- Weapon Selector Window 6
	--[65] = "%0.2f", -- Weapon Selector Window 5
	--[66] = "%0.2f", -- Weapon Selector Window 3
	--[67] = "%0.2f", -- Weapon Selector Window 4
	--[68] = "%0.2f", -- Weapon Selector Window 2
	--[69] = "%0.2f", -- Weapon Selector Window 1
	
	-- 0.00 = RKT
	-- 0.10 = BOMB
	-- 0.20 = GUN
	-- 0.30 = DISP
	-- 0.40 = EMPTY
	-- 0.50 = TANK
	
	--local KollsmanWindowReadout_value1 = string.format("%.f",mainPanelDevice:get_argument_value(56) * 10)
	local weaponSelect1 = round(mainPanelDevice:get_argument_value(69),2)
	local weaponSelect1_text = "NULL"
	
	if weaponSelect1 <= 0.00 then
		weaponSelect1_text = "RKT"
	elseif weaponSelect1 <= 0.10 then
		weaponSelect1_text = "BOMB"
	elseif weaponSelect1 <= 0.20 then
		weaponSelect1_text = "GUN"
	elseif weaponSelect1 <= 0.30 then
		weaponSelect1_text = "DISP"
	elseif weaponSelect1 <= 0.40 then
		weaponSelect1_text = "EMPTY"
	elseif weaponSelect1 <= 0.50 then
		weaponSelect1_text = "TANK"
	else
		-- do nothing
	end
	
	ExportScript.Tools.SendData(3012, weaponSelect1_text)
	
	
	
	local weaponSelect2 = round(mainPanelDevice:get_argument_value(68),2)
	local weaponSelect2_text = "NULL"
	
	if weaponSelect2 <= 0.00 then
		weaponSelect2_text = "RKT"
	elseif weaponSelect2 <= 0.10 then
		weaponSelect2_text = "BOMB"
	elseif weaponSelect2 <= 0.20 then
		weaponSelect2_text = "GUN"
	elseif weaponSelect2 <= 0.30 then
		weaponSelect2_text = "DISP"
	elseif weaponSelect2 <= 0.40 then
		weaponSelect2_text = "EMPTY"
	elseif weaponSelect2 <= 0.50 then
		weaponSelect2_text = "TANK"
	else
		-- do nothing
	end
	
	ExportScript.Tools.SendData(3013, weaponSelect2_text)
	
	
	local weaponSelect3 = round(mainPanelDevice:get_argument_value(67),2)
	local weaponSelect3_text = "NULL"
	
	if weaponSelect3 <= 0.00 then
		weaponSelect3_text = "RKT"
	elseif weaponSelect3 <= 0.10 then
		weaponSelect3_text = "BOMB"
	elseif weaponSelect3 <= 0.20 then
		weaponSelect3_text = "GUN"
	elseif weaponSelect3 <= 0.30 then
		weaponSelect3_text = "DISP"
	elseif weaponSelect3 <= 0.40 then
		weaponSelect3_text = "EMPTY"
	elseif weaponSelect3 <= 0.50 then
		weaponSelect3_text = "TANK"
	else
		-- do nothing
	end
	
	ExportScript.Tools.SendData(3014, weaponSelect3_text)
	
	
	local weaponSelect4 = round(mainPanelDevice:get_argument_value(66),2)
	local weaponSelect4_text = "NULL"
	
	if weaponSelect4 <= 0.00 then
		weaponSelect4_text = "RKT"
	elseif weaponSelect4 <= 0.10 then
		weaponSelect4_text = "BOMB"
	elseif weaponSelect4 <= 0.20 then
		weaponSelect4_text = "GUN"
	elseif weaponSelect4 <= 0.30 then
		weaponSelect4_text = "DISP"
	elseif weaponSelect4 <= 0.40 then
		weaponSelect4_text = "EMPTY"
	elseif weaponSelect4 <= 0.50 then
		weaponSelect4_text = "TANK"
	else
		-- do nothing
	end
	
	ExportScript.Tools.SendData(3015, weaponSelect4_text)
	
	
	local weaponSelect5 = round(mainPanelDevice:get_argument_value(65),2)
	local weaponSelect5_text = "NULL"
	
	if weaponSelect5 <= 0.00 then
		weaponSelect5_text = "RKT"
	elseif weaponSelect5 <= 0.10 then
		weaponSelect5_text = "BOMB"
	elseif weaponSelect5 <= 0.20 then
		weaponSelect5_text = "GUN"
	elseif weaponSelect5 <= 0.30 then
		weaponSelect5_text = "DISP"
	elseif weaponSelect5 <= 0.40 then
		weaponSelect5_text = "EMPTY"
	elseif weaponSelect5 <= 0.50 then
		weaponSelect5_text = "TANK"
	else
		-- do nothing
	end
	
	ExportScript.Tools.SendData(3016, weaponSelect5_text)
	
	
	local weaponSelect6 = round(mainPanelDevice:get_argument_value(64),2)
	local weaponSelect6_text = "NULL"
	
	if weaponSelect6 <= 0.00 then
		weaponSelect6_text = "RKT"
	elseif weaponSelect6 <= 0.10 then
		weaponSelect6_text = "BOMB"
	elseif weaponSelect6 <= 0.20 then
		weaponSelect6_text = "GUN"
	elseif weaponSelect6 <= 0.30 then
		weaponSelect6_text = "DISP"
	elseif weaponSelect6 <= 0.40 then
		weaponSelect6_text = "EMPTY"
	elseif weaponSelect6 <= 0.50 then
		weaponSelect6_text = "TANK"
	else
		-- do nothing
	end
	
	ExportScript.Tools.SendData(3017, weaponSelect6_text)
	
	-- TODO: Consider Making two tiles with three indicators each
	-- TODO: Consider making the background urn green when armed
	-- TODO: Consider a three/four color system with Master arm and the weapon select light
	-- TODO: Consider adding S1 above the weaponSelect_text
	
end

function ExportScript.GunsightMils(mainPanelDevice)

	local gunsightXxx = round(mainPanelDevice:get_argument_value(481) * 10,0)
	local gunsightxXx = round(mainPanelDevice:get_argument_value(482) * 10,0)
	local gunsightxxX = round(mainPanelDevice:get_argument_value(483) * 10,0)
	
	if gunsightXxx > 9 then gunsightXxx = 0 end
	if gunsightxXx > 9 then gunsightxXx = 0 end
	if gunsightxxX > 9 then gunsightxxX = 0 end
	
	local gunsightXXX = gunsightXxx .. gunsightxXx .. gunsightxxX
	
	ExportScript.Tools.SendData(3018, 'MILS\n' .. gunsightXXX)
	
	ExportScript.Tools.SendData(3019, 'MILS\nXxx\n' .. gunsightXxx)
	ExportScript.Tools.SendData(3020, 'MILS\nxXx\n' .. gunsightxXx)
	ExportScript.Tools.SendData(3021, 'MILS\nxxX\n' .. gunsightxxX)
	
end

function ExportScript.GearFlaps(mainPanelDevice)

-- TODO: This

-- For the gear have 3 green dot emojis, GEAR on top, 1 dot in middle, and 2 on bottom. Match the colors with the state of the gear indicators, using clear for up.

-- For the flaps you can make ranges for the indicator arg

	local flapIndPos = mainPanelDevice:get_argument_value(1)
	local flapPosText = 'FLAPS'
	if flapIndPos < 0.25 then flapPosText = 'FLAP\nUP'
	elseif flapIndPos < 0.68 then flapPosText = 'FLAP\nTO'
	else flapPosText = 'FLAP\nDOWN' end
	
	ExportScript.Tools.SendData(4019, flapPosText)
end

------------------------------
-- General Helper Functions --
------------------------------

function round(num, numDecimalPlaces) --http://lua-users.org/wiki/SimpleRound
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end