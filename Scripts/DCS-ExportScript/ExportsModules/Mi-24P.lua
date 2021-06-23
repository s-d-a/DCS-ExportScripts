-- Mi-24P Export


-- TODO:
-- Remove Duplicates
-- Make sure the numbers are formated correctly
-- Split the devices into headered sections
-- Split the [DevoceID]s into their proper ConfigEveryFrameArguments vs ConfigArguments
-- Test
-- Make some cool functions

ExportScript.FoundDCSModule = true
ExportScript.Version.Mi24P = "1.2.1"

ExportScript.ConfigEveryFrameArguments = 
{
	--[[
	every frames arguments
	based of "mainpanel_init.lua"
	Example (http://www.lua.org/manual/5.1/manual.html#pdf-string.format)
	[DeviceID] = "Format"
	  [4] = "%.4f",  <- floating-point number with 4 digits after point
	 [19] = "%0.1f", <- floating-point number with 1 digit after point
	[129] = "%1d",   <- decimal number
	  [5] = "%.f",   <- floating point number rounded to a decimal number
]]

	-- Lights
	[11] = "%.4f",			--	Left Gyro Light
	[13] = "%.4f",			--	Right Gyro Light
	
	[63] = "%.4f",			--	Far Right Lower Panel Upper Light 1
	[64] = "%.4f",			--	Far Right Lower Panel Upper Light 2
	[72] = "%.4f",			--	Far Right Lower Panel Middle Light
	
	[79] = "%.4f",			--	Far Right Lower Panel Light
	[81] = "%.4f",			--	Far Right Lower Panel Light
	[82] = "%.4f",			--	Far Right Lower Panel Light
	[84] = "%.4f",			--	Far Right Lower Panel Light
	[86] = "%.4f",			--	Far Right Lower Panel Light
	[94] = "%.4f",			--	Far Right Lower Panel Light
	
	
	--about 150-174 is the caution panel left to right, top to bottom range 0 to 1
	[150] = "%.4f",			--	Cauton Panel
	[151] = "%.4f",			--	Cauton Panel
	[152] = "%.4f",			--	Cauton Panel
	[153] = "%.4f",			--	Cauton Panel
	[154] = "%.4f",			--	Cauton Panel
	[155] = "%.4f",			--	Cauton Panel
	[156] = "%.4f",			--	Cauton Panel
	[157] = "%.4f",			--	Cauton Panel
	[158] = "%.4f",			--	Cauton Panel
	[159] = "%.4f",			--	Cauton Panel
	
	[160] = "%.4f",			--	Cauton Panel
	[161] = "%.4f",			--	Cauton Panel
	[162] = "%.4f",			--	Cauton Panel
	[163] = "%.4f",			--	Cauton Panel
	[164] = "%.4f",			--	Cauton Panel
	[165] = "%.4f",			--	Cauton Panel
	[166] = "%.4f",			--	Cauton Panel
	[167] = "%.4f",			--	Cauton Panel
	[168] = "%.4f",			--	Cauton Panel
	[169] = "%.4f",			--	Cauton Panel
	
	[170] = "%.4f",			--	Cauton Panel
	[171] = "%.4f",			--	Cauton Panel
	[172] = "%.4f",			--	Cauton Panel
	[173] = "%.4f",			--	Cauton Panel
	[174] = "%.4f",			--	Cauton Panel
	
	[177] = "%.4f",			--	Cauton Panel Light near red switch
	
	[197] = "%.4f",			--	Right quarter panel light
	[200] = "%.4f",			--	Right quarter panel light
	[201] = "%.4f",			--	Right quarter panel light
	[202] = "%.4f",			--	Right quarter panel light
	[203] = "%.4f",			--	Right quarter panel light
	[204] = "%.4f",			--	Right quarter panel light
	[205] = "%.4f",			--	Right quarter panel light
	[206] = "%.4f",			--	Right quarter panel light
	
	[209] = "%.4f",			--	Left quarter panel light
	[210] = "%.4f",			--	Left quarter panel light
	[211] = "%.4f",			--	Left quarter panel light
	[212] = "%.4f",			--	Left quarter panel light
	
	[220] = "%.4f",			--	Left quarter panel light
	[221] = "%.4f",			--	Left quarter panel light
	[222] = "%.4f",			--	Left quarter panel light
	
	[225] = "%.4f",			--	Landing Light Up Left Brightness
	[226] = "%.4f",			--	Landing Light Up Center Brightness
	[227] = "%.4f",			--	Landing Light Up Right Brightness
	[229] = "%.4f",			--	Landing Light Down Left Brightness
	[230] = "%.4f",			--	Landing Light Down Center Brightness
	[231] = "%.4f",			--	Landing Light Down Right Brightness
	
	[278] = "%.4f",			--	1st SAS Off Light Brightness
	[279] = "%.4f",			--	1st SAS On Light Brightness	
	[280] = "%.4f",			--	2st SAS Off Light Brightness
	[281] = "%.4f",			--	2st SAS On Light Brightness	
	[284] = "%.4f",			--	Altimeter Yellow button Brightness
	[291] = "%.4f",			--	yellow warning above the gyro red warnings
	
	[293] = "%.4f",			--	3st SAS Off Light Brightness
	[294] = "%.4f",			--	3st SAS On Light Brightness	
	[295] = "%.4f",			--	4st SAS Off Light Brightness
	[296] = "%.4f",			--	4st SAS On Light Brightness	
	[297] = "%.4f",			--	Hover Mode Light
	[298] = "%.4f",			--	hover mode off light
	[299] = "%.4f",			--	route mode light
	[302] = "%.4f",			--	weird ap button/switch light
	[303] = "%.4f",			--	Altitude Mode Red
	[304] = "%.4f",			--	Altitude Mode Green
	
	[323] = "%.4f",			--	Left Mirror On at 1
	
	[338] = "%.4f",			--	Far Left Panel Light 1
	[390] = "%.4f",			--	Far Left Panel Light 2
	[391] = "%.4f",			--	Far Left Panel Light 3
	[393] = "%.4f",			--	Far Left Panel Light 4
	-- more far left lights up to 410
	
	-- [470] to [481] are all left side wall lights
	
	
	[508] = "%.4f",			--	R-828 Left Knee green light
	
	[532] = "%.4f",			--	Weapon Panel Right 4pack 1
	[533] = "%.4f",			--	Weapon Panel Right 4pack 2
	[534] = "%.4f",			--	Weapon Panel Right 4pack 3
	[535] = "%.4f",			--	Weapon Panel Right 4pack 4
	
	[539] = "%.4f",			--	Weapon Panel Station Indicator 4
	[540] = "%.4f",			--	Weapon Panel Station Indicator 3
	[543] = "%.4f",			--	Weapon Panel Station Indicator 2
	[544] = "%.4f",			--	Weapon Panel Station Indicator 1
	
	[584] = "%.4f",			--	Weapon Panel Left Bottom Light
	
	[559] = "%.4f",			--	UFC Selected Weapon 1
	[560] = "%.4f",			--	UFC Selected Weapon 2
	[561] = "%.4f",			--	UFC Selected Weapon 4
	[562] = "%.4f",			--	UFC Selected Weapon 5
	[563] = "%.4f",			--	UFC Selected Weapon 6
	
	[817] = "%.4f",			--	Doppler system on light
	
	[823] = "%.4f",			--	Emergency Gear Panel 1
	[824] = "%.4f",			--	Emergency Gear Panel 2
	[825] = "%.4f",			--	Emergency Gear Panel 3
	
	[831] = "%.4f",			--	Doppler Hover Flag Light
	
	[881] = "%.4f",			--	Overhead Light white
	[976] = "%.4f",			--	Overhead Light Red
	
	[975] = "%.4f",			--	doppler left/right green light
	
	[977] = "%.4f",			--	Map Light
	
	[991] = "%.4f",			--	RWR Red Light 1
	[992] = "%.4f",			--	RWR Red Light 2
	[993] = "%.4f",			--	RWR Red Light 3
	[994] = "%.4f",			--	RWR Red Light 4
	
	[995] = "%.4f",			--	RWR White Light 1
	[996] = "%.4f",			--	RWR White Light 2
	[997] = "%.4f",			--	RWR White Light 3
	[998] = "%.4f",			--	RWR White Light 4
	
	-- Not lights
	[17] = "%.4f",			--	G Meter Needle
	[27] = "%.4f",			--	HSI Course Needle 0 to 1
	[28] = "%.4f",			--	Navaid Bearing Needle 0 to 1
	
	[32] = "%.4f",			--	Rad Alt needle 0 to 1
	[33] = "%.4f",			--	Rad Alt bug 0 to 1
	[36] = "%.4f",			--	Blade pitch needle 0 to 1
	
	[37] = "%.4f",			--	Engine Left Power 0 to 1
	[38] = "%.4f",			--	Engine Right Power 0 to 1
	[39] = "%.4f",			--	Engine Power Meter 0 to 1
	
	[37] = "%.4f",			--	Engine 1 Power Needle 0 to 1
	[38] = "%.4f",			--	Engine 2 Power Needle 0 to 1
	
	[42] = "%.4f",			--	Engine 1 Torque Needle 0 to 1
	
	
	[43] = "%.4f",			--	Engine Temp Needle 1 0 to 1
	[44] = "%.4f",			--	Engine Temp Needle 2 0 to 1
	[45] = "%.4f",			--	Engine Temp Needle 3 0 to 1
	[46] = "%.4f",			--	Engine Temp Needle 4 0 to 1
	
	
	[49] = "%.4f",			--	Clock Hands 1
	[49] = "%.4f",			--	Clock Hands 2
	[49] = "%.4f",			--	Clock Hands 3
	[49] = "%.4f",			--	Clock Hands 4
	[49] = "%.4f",			--	Clock Hands 5
	[49] = "%.4f",			--	Clock Hands 6
	[49] = "%.4f",			--	Clock Hands 7
	
	[179] = "%.4f",			--	Right quarterpanel Engene Needles
	[180] = "%.4f",			--	Right quarterpanel Engene Needles
	[181] = "%.4f",			--	Right quarterpanel Engene Needles
	[182] = "%.4f",			--	Right quarterpanel Engene Needles
	[183] = "%.4f",			--	Right quarterpanel Engene Needles
	[184] = "%.4f",			--	Right quarterpanel Engene Needles
	[185] = "%.4f",			--	Right quarterpanel Engene Needles
	[186] = "%.4f",			--	Right quarterpanel Engene Needles
	[188] = "%.4f",			--	Right quarterpanel Engene Needles
	[190] = "%.4f",			--	Right quarterpanel Engene Needles
	
	[525] = "%.4f",			--	Fuel Indficator needle
	[790] = "%.4f",			--	Altimeter Indficator needle -1 to 1. to almost goes around twice
	[791] = "%.4f",			--	Drift Left/Right needle
	
	[828] = "%.4f",			--	Doppler Hover Altitude
	[829] = "%.4f",			--	Doppler Hover Left/Right
	[830] = "%.4f",			--	Doppler Hover Up/Down
	
	[939] = "%.4f",			--	Main ADI pitch
	[940] = "%.4f",			--	Main ADI right flag
	[942] = "%.4f",			--	Main ADI roll
	[943] = "%.4f",			--	Main ADI ball
	[945] = "%.4f",			--	Main ADI pokey thing
	
	[948] = "%.4f",			--	Standby ADI top flag
	[949] = "%.4f",			--	Standby ADI pitch
	[950] = "%.4f",			--	Standby ADI roll
	
	[974] = "%.4f",			--	Seat gone at 1
	

	--Anti Ice
	[109] = "%1d",		--	AntiIce AUTO/MANUAL	ROTOR-DEICER-AUTO-MAN-PTR
	[110] = "%1d",		--	AntiIce OFF	ROTOR-DEICER-OFF-PTR
	[113] = "%1d",		--	Left Engine AntiIce ON/OFF	LEFT-ENG-HEATING-PTR
	[112] = "%1d",		--	Right Engine AntiIce ON/OFF	RIGHT-ENG-HEATING-PTR
	[111] = "%.4f",		--	Windshield Antiice LOW/OFF/HIGH	WINDSHIELD-DEICER-PTR
	[675] = "%.4f",		--	Windshield Antiice LOW/OFF/HIGH	WINDSHIELD-DEICER-OP-PTR
	[114] = "%.4f",		--	AC Voltmeter knob	DEICER-KNOB-PTR
	
	
	[634] = "%.4f",		--	ARC-15 Volume	ARC-OP-VOLUME-PTR
	[635] = "%.4f",		--	ARC-15 TLF/TLG	ARC-OP-MODULATED-PTR
	[638] = "%.4f",		--	ARC-15 mode OFF/COMPASS/ANT/FRAME	ARC-OP-MODE-PTR
	[639] = "%.4f",		--	ARC-15 Left Frequency	ARC-OP-CH2-OUT-KNOB
	[640] = "%.4f",		--	ARC-15 Left Frequency	ARC-OP-CH2-CENTER-PTR
	[641] = "%.4f",		--	ARC-15 Left Frequency	ARC-OP-CH2-IN-PTR
	[642] = "%.4f",		--	ARC-15 Right Frequency	ARC-OP-CH1-OUT-KNOB
	[643] = "%.4f",		--	ARC-15 Right Frequency	ARC-OP-CH1-CENTER-PTR
	[644] = "%.4f",		--	ARC-15 Right Frequency	ARC-OP-CH1-IN-PTR
	[633] = "%.4f",		--	ARC-15 Loop Button	ARC-OP-FRAME-PTR
	[637] = "%.4f",		--	ARC-15 1/2	ARC-OP-CHANNEL-PTR
	[636] = "%.4f",		--	ARC-15 Control Button	ARC-OP-AUTH-PTR
	[459] = "%.4f",		--	ARC-15 Volume	ARC-VOLUME-PTR
	[460] = "%.4f",		--	ARC-15 TLF/TLG	ARC-MODULATED-PTR
	[463] = "%.4f",		--	ARC-15 mode OFF/COMPASS/ANT/FRAME	ARC-MODE-PTR
	[464] = "%.4f",		--	ARC-15 Left Frequency	ARC-CH2-OUT-KNOB
	[465] = "%.4f",		--	ARC-15 Left Frequency	ARC-CH2-CENTER-PTR
	[466] = "%.4f",		--	ARC-15 Left Frequency	ARC-CH2-IN-PTR
	[467] = "%.4f",		--	ARC-15 Right Frequency	ARC-CH1-OUT-KNOB
	[468] = "%.4f",		--	ARC-15 Right Frequency	ARC-CH1-CENTER-PTR
	[469] = "%.4f",		--	ARC-15 Right Frequency	ARC-CH1-IN-PTR
	[458] = "%.4f",		--	ARC-15 Loop Button	ARC-FRAME-PTR
	[462] = "%.4f",		--	ARC-15 1/2	ARC-CHANNEL-PTR
	[462] = "%.4f",		--	ARC-15 1/2	ARC-CHANNEL-PTR
	[461] = "%.4f",		--	ARC-15 Control Button	ARC-AUTH-PTR
	[324] = "%.4f",		--	ARC-U2 switcher On/Off	ARC-U2-ON-OFF-PTR
	[325] = "%.4f",		--	ARC-U2 switcher Lâ€“RAMKA-P	ARC-U2-FRAME-PTR
	[326] = "%.4f",		--	ARC-U2 switcher sensitivity B-M	ARC-U2-SENS-PTR
	[327] = "%.4f",		--	ARC-U2 switcher COMPASS R-852â€“RADIOLINKâ€“COMPASS R-828	ARC-U2-COMPASS-CONNECT-PTR
	[1008] = "%.4f",		--	Interval	ASO2V-INTERV-PTR
	[965] = "%.4f",		--	Serie	ASO2V-SERIES-PTR
	[968] = "%.4f",		--	Launch Snars	ASO2V-RESET-PTR
	[969] = "%.4f",		--	Left Side	ASO2V-LEFT-PTR
	[970] = "%.4f",		--	Right Side	ASO2V-RIGHT-PTR
	[971] = "%.4f",		--	Set I/II/III	ASO2V-SETS-PTR
	[847] = "%.4f",		--	Pilot Launch Snars	ASO-ON-PTR
	[553] = "%.4f",		--	Sight mode MANUAL/AUTO	SIGHT-MAN-AUTO-PTR
	[554] = "%.4f",		--	Sight mode SYNC/ASYNC	SIGHT-SYNC-UNSYNC-PTR
	[515] = "%.4f",		--	Sight distance MANUAL/AUTO	WEAP-DIST-MAN-AUTO-PTR
	[552] = "%.4f",		--	Sight Range Adjustment	WEAP-SIGHT-DIST-PTR
	[556] = "%.4f",		--	Sight Crosshair Vertical Adjustment	SIGHT-VERT-KNOB-PTR
	[566] = "%.4f",		--	Sight Crosshair Horizontal Adjustment	SIGHT-HOR-KNOB-PTR
	[528] = "%.4f",		--	Sight Resrt Crosshair	WEAP-SIGHT-RESET-PTR
	[557] = "%.4f",		--	Sight Base and Range Adjustment	SIGHT-BASE-KNOB-PTR
	[570] = "%.4f",		--	Sight Control	SIGHT-CONTROL-PTR
	[567] = "%.4f",		--	Sight Grid Brightness Adjustment	SIGHT-GRID-BRIGHNTNESS-KNOB-PTR
	[564] = "%.4f",		--	Sight Crosshair Brightness Adjustment	SIGHT-CROSSHAIR-BRIGHNTNESS-KNOB-PTR
	[569] = "%.4f",		--	Sight Grid Lamp MAIN/BACKUP	SIGHT-GRID-BACKUP-PTR
	[568] = "%.4f",		--	Sight Crosshair Lamp MAIN/BACKUP	SIGHT-CROSSHAIR-BACKUP-PTR
	[529] = "%.4f",		--	Sight Power ON/OFF	WEAP-SIGHT-ON-PFF-PTR
	[761] = "%.4f",		--	USR power	WEAP-DISTR-POWER-OP-PTR
	[762] = "%.4f",		--	USR check	WEAP-DISTR-CONTROL-OP-PTR
	[1006] = "%.4f",		--	Sight reflector control	ILS-ADJUST-HANDLE-PTR
	[243] = "%0.1f",		--	Autopilot K Channel ON	SAU-K-ON-PTR
	[242] = "%0.1f",		--	Autopilot K Channel OFF	SAU-K-OFF-PTR
	[237] = "%0.1f",		--	Autopilot H Channel ON	SAU-H-ON-PTR
	[236] = "%0.1f",		--	Autopilot H Channel OFF	SAU-H-OFF-PTR
	[249] = "%0.1f",		--	Autopilot T Channel ON	SAU-T-ON-PTR
	[248] = "%0.1f",		--	Autopilot T Channel OFF	SAU-T-OFF-PTR
	[255] = "%0.1f",		--	Autopilot B Channel ON	SAU-B-ON-PTR
	[254] = "%.4f",		--	Autopilot B Channel OFF	SAU-B-OFF-PTR
	[253] = "%.4f",		--	Autopilot Altitude Control	SAU-B-SWITCH-PTR
	[240] = "%.4f",		--	Autopilot K Channel Delta Correction	SAU-K-KNOB-PTR
	[234] = "%.4f",		--	Autopilot H Channel Delta Correction	SAU-H-KNOB-PTR
	[246] = "%.4f",		--	Autopilot T Channel Delta Correction	SAU-T-KNOB-PTR
	[742] = "%.4f",		--	Autopilot Trimmer Button	STICK-TRIMMER-PTR
	[855] = "%.4f",		--	Autopilot Trimmer Button	OP-STICK-TRIMMER-PTR
	[262] = "%.4f",		--	Autopilot Route Azimuth	SAU-AZ-PTR
	[258] = "%.4f",		--	Autopilot Altitude Mode ON	SAU-HEIGHT-ON-PTR
	[257] = "%.4f",		--	Autopilot Altitude Mode OFF	SAU-HEIGHT-OFF-PTR
	[259] = "%.4f",		--	Autopilot Hover Mode ON	SAU-HOVER-ON-PTR
	[261] = "%.4f",		--	Autopilot Route Mode ON	SAU-ROUTE-ON-PTR
	[260] = "%.4f",		--	Autopilot Route and Hover Modes OFF	SAU-HOVER-ROUTE-OFF-PTR
	[268] = "%.4f",		--	Autopilot Speed Stabilization ON	SAU-SPEED-ON-PTR
	[269] = "%.4f",		--	Autopilot Speed Stabilization OFF	SAU-SPEED-OFF-PTR
	[267] = "%.4f",		--	Buttons Lighting BRIGHT/DIM	SAU-BRIGHT-DIM-PTR
	[267] = "%.4f",		--	Buttons Lighting BRIGHT/DIM	SAU-BRIGHT-DIM-PTR
	[788] = "%.4f",		--	Operator Baro Pressure Knob	ALTIMETER-KNOB-OP-PTR
	[18] = "%.4f",		--	Baro Pressure Knob	ALTIMETER-KNOB-PTR
	[687] = "%.4f",		--	Mech clock left lever	CLOCK-LEFT-OP-PTR
	[687] = "%.4f",		--	Mech clock left lever	CLOCK-LEFT-OP-PTR
	[694] = "%.4f",		--	Mech clock right lever	CLOCK-RIGHT-OP-PTR
	[57] = "%.4f",		--	Mech clock left lever	CLOCK-LEFT-PTR
	[58] = "%.4f",		--	Mech clock left lever	CLOCK-LEFT-PTR
	[59] = "%.4f",		--	Mech clock right lever	CLOCK-RIGHT-PTR
	[60] = "%.4f",		--	Mech clock right lever	CLOCK-RIGHT-PTR
	[232] = "%.4f",		--	Gear Lever	LANDING-GEAR-PTR
	[232] = "%.4f",		--	Gear Lever	LANDING-GEAR-PTR
	[228] = "%.4f",		--	Gear Lever Lock	LANDING-GEAR-LOCK-PTR
	[224] = "%.4f",		--	Gear Indication Lights ON/OFF	LANDING-GEAR-LIGHTS-PTR
	[223] = "%.4f",		--	Gear Indication Lights Cover UP/DOWN	LANDING-GEAR-LIGHTS-COVER-PTR
	[677] = "%.4f",		--	Operator Gear Switch	LANDING-GEAR-OP-PTR
	[676] = "%.4f",		--	Operator Gear Switch Cover	LANDING-GEAR-OP-COVER-PTR
	[827] = "%.4f",		--	Emeregency Gear Lever	LANDING-GEAR-EMER-PTR
	[763] = "%.4f",		--	Heating DUAS	DUAS-V-HEATING-OP-PTR
	[763] = "%.4f",		--	Heating DUAS	DUAS-V-HEATING-OP-PTR
	[672] = "%.4f",		--	Clock Heating Switch	CLOCK-HEATING-OP-PTR
	[384] = "%.4f",		--	Window Sprayer Button	WIPER-SPRINKLER-PTR
	[680] = "%.4f",		--	Operator Window Sprayer Button	WIPER-SPRINKLER-OP-PTR
	[8] = "%.4f",		--	Pilot Door Safety Lock	CANOPY-HANDLE-PTR
	[189] = "%.4f",		--	Pilot Door Safety Lock Button	CANOPY-HANDLE-SAFETY-PTR
	[848] = "%.4f",		--	Operator Lock Canopy	CANOPY-HANDLE-OP-PTR
	[418] = "%.4f",		--	Windscreen Wiper Control Switch	WIPER-MODE-PTR-START
	[674] = "%.4f",		--	Windscreen Wiper Control Switch	WIPER-MODE-OP-PTR-START
	[420] = "%.4f",		--	Pilot Fan	FAN-PTR
	[665] = "%.4f",		--	Operator Fan	FAN-OP-PTR
	[737] = "%.4f",		--	Wheel Brakes Handle	STICK-BRAKE-PTR
	[736] = "%.4f",		--	Parking Brake Handle	STICK-BRAKE-FIX-PTR
	[753] = "%.4f",		--	friction clutch of the collective	COLLECTIVE-FRICT-PTR
	[0] = "%.4f",		--	Cockpit Fan - Touch	EASTER_OP
	[974] = "%.4f",		--	Hide Stick toggle	PTR-STICK-HIDE-974
	[671] = "%.4f",		--	Autopilot Trimmer for yourself 	CONTROL-TRIMMER-OP-PTR
	[671] = "%.4f",		--	Autopilot Trimmer for yourself 	CONTROL-TRIMMER-OP-PTR
	[670] = "%.4f",		--	Autopilot Trimmer for yourself Switch Cover	CONTROL-TRIMMER-OP-COVER-PTR
	[670] = "%.4f",		--	Autopilot Trimmer for yourself Switch Cover	CONTROL-TRIMMER-OP-COVER-PTR
	[371] = "%.4f",		--	DISS-15D ON/OFF	DISS-ON-OFF-PTR
	[371] = "%.4f",		--	DISS-15D ON/OFF	DISS-ON-OFF-PTR
	[370] = "%.4f",		--	Airspeed to DISS ON/OFF	DVS-DISS-PTR
	[370] = "%.4f",		--	Airspeed to DISS ON/OFF	DVS-DISS-PTR
	[818] = "%.4f",		--	DISS coordinates OFF	PTR-DISS-BTN-OFF
	[819] = "%.4f",		--	DISS coordinates ON	PTR-DISS-BTN-ON
	[815] = "%.4f",		--	DISS decrease map angle	PTR-DISS-BTN-MINUS
	[816] = "%.4f",		--	DISS increase map angle	PTR-DISS-BTN-PLUS
	[809] = "%.4f",		--	DISS decrease path	PTR-DISS-BTN-N
	[810] = "%.4f",		--	DISS increase path	PTR-DISS-BTN-V
	[803] = "%.4f",		--	DISS decrease deviation	PTR-DISS-BTN-TOLE
	[804] = "%.4f",		--	DISS increase deviation	PTR-DISS-BTN-TORI
	[797] = "%.4f",		--	DISS Mode WORK/CHECK	DRIFT-R-K-PTR
	[797] = "%.4f",		--	DISS Mode WORK/CHECK	DRIFT-R-K-PTR
	[798] = "%.4f",		--	DISS Mode LAND/SEA	DRIFT-S-M-PTR
	[798] = "%.4f",		--	DISS Mode LAND/SEA	DRIFT-S-M-PTR
	[826] = "%.4f",		--	DISS select mode IDK/IDK/IDK/MEM/OPER	DISS-SELECTOR-KNOB-PTR
	[826] = "%.4f",		--	DISS select mode IDK/IDK/IDK/MEM/OPER	DISS-SELECTOR-KNOB-PTR
	[133] = "%.4f",		--	Cabin Unseal Switch	CABIN-DEPRESS-PTR
	[133] = "%.4f",		--	Cabin Unseal Switch	CABIN-DEPRESS-PTR
	[134] = "%.4f",		--	Blowdown Conditioning Switch	AC-MODE-PTR
	[134] = "%.4f",		--	Blowdown Conditioning Switch	AC-MODE-PTR
	[143] = "%.4f",		--	Filter Switch	AC-FILTER-PTR
	[143] = "%.4f",		--	Filter Switch	AC-FILTER-PTR
	[144] = "%.4f",		--	Heating Switch	AC-HEATER1-MODE-PTR
	[144] = "%.4f",		--	Heating Switch	AC-HEATER1-MODE-PTR
	[145] = "%.4f",		--	Automatic Hot Cold Switch	AC-HEATER2-MODE-PTR
	[145] = "%.4f",		--	Automatic Hot Cold Switch	AC-HEATER2-MODE-PTR
	[146] = "%.4f",		--	Temperature Selector	AC-TEMP-KNOB-PTR
	[146] = "%.4f",		--	Temperature Selector	AC-TEMP-KNOB-PTR
	[774] = "%.4f",		--	Sight Fan	WEAP-MISSILES-SIGHT-FAN-OP-PTR
	[774] = "%.4f",		--	Sight Fan	WEAP-MISSILES-SIGHT-FAN-OP-PTR
	[516] = "%.4f",		--	Sealing	CABIN-PRESS-VALVE-PTR
	[87] = "%.4f",		--	AC Ground Power	GROUND-AC-PTR
	[87] = "%.4f",		--	AC Ground Power	GROUND-AC-PTR
	[101] = "%.4f",		--	Left Generator switch	GEN-LEFT-PTR
	[101] = "%.4f",		--	Left Generator switch	GEN-LEFT-PTR
	[80] = "%.4f",		--	Right Generator switch	GEN-RIGHT-PTR
	[80] = "%.4f",		--	Right Generator switch	GEN-RIGHT-PTR
	[83] = "%.4f",		--	AC Transformer 115v	TRANS115-PTR
	[83] = "%.4f",		--	AC Transformer 115v	TRANS115-PTR
	[85] = "%.4f",		--	AC Transformer 36v	TRANS36-PTR
	[85] = "%.4f",		--	AC Transformer 36v	TRANS36-PTR
	[89] = "%.4f",		--	AC Ground Check	GROUND-RECT-PTR
	[89] = "%.4f",		--	AC Ground Check	GROUND-RECT-PTR
	[98] = "%.4f",		--	Inverter PO-750A	INV115-PTR
	[98] = "%.4f",		--	Inverter PO-750A	INV115-PTR
	[100] = "%.4f",		--	Inverter PT-125Ts	INV36-PTR
	[100] = "%.4f",		--	Inverter PT-125Ts	INV36-PTR
	[91] = "%.4f",		--	AC Voltmeter knob	VOLT-AC-KNOB-PTR
	[91] = "%.4f",		--	AC Voltmeter knob	VOLT-AC-KNOB-PTR
	[196] = "%.4f",		--	DIM Transformer switch	TRANS-DIM-PTR
	[196] = "%.4f",		--	DIM Transformer switch	TRANS-DIM-PTR
	[73] = "%.4f",		--	DC Ground Power	GROUND-DC-PTR
	[73] = "%.4f",		--	DC Ground Power	GROUND-DC-PTR
	[75] = "%.4f",		--	Left Battery switch	BATT-LEFT-PTR
	[75] = "%.4f",		--	Left Battery switch	BATT-LEFT-PTR
	[61] = "%.4f",		--	Right Battery switch	BATT-RIGHT-PTR
	[61] = "%.4f",		--	Right Battery switch	BATT-RIGHT-PTR
	[62] = "%.4f",		--	Left Rectifier switch	RECT-LEFT-PTR
	[62] = "%.4f",		--	Left Rectifier switch	RECT-LEFT-PTR
	[65] = "%.4f",		--	Right Rectifier switch	RECT-RIGHT-PTR
	[65] = "%.4f",		--	Right Rectifier switch	RECT-RIGHT-PTR
	[66] = "%.4f",		--	APU Generator switch	STARTER-GEN-PTR
	[66] = "%.4f",		--	APU Generator switch	STARTER-GEN-PTR
	[74] = "%.4f",		--	Battery Heating	BATT-HEATING-PTR
	[74] = "%.4f",		--	Battery Heating	BATT-HEATING-PTR
	[71] = "%.4f",		--	Network to Batteries	NET-TO-BATT-PTR
	[71] = "%.4f",		--	Network to Batteries	NET-TO-BATT-PTR
	[69] = "%.4f",		--	DC Voltmeter knob	VOLT-DC-KNOB-PTR
	[69] = "%.4f",		--	DC Voltmeter knob	VOLT-DC-KNOB-PTR
	[88] = "%.4f",		--	AC Ground Check Cover	GROUND-RECT-COVER-PTR
	[88] = "%.4f",		--	AC Ground Check Cover	GROUND-RECT-COVER-PTR
	[97] = "%.4f",		--	Inverter PO-750A Cover	INV115-COVER-PTR
	[97] = "%.4f",		--	Inverter PO-750A Cover	INV115-COVER-PTR
	[99] = "%.4f",		--	Inverter PT-125Ts Cover	INV36-COVER-PTR
	[99] = "%.4f",		--	Inverter PT-125Ts Cover	INV36-COVER-PTR
	[70] = "%.4f",		--	Network to Batteries cover	NET-TO-BATT-COVER-PTR
	[70] = "%.4f",		--	Network to Batteries cover	NET-TO-BATT-COVER-PTR
	[601] = "%.4f",		--	All Left CBs ON	CB-FRAME-LEFT-1-PTR
	[632] = "%.4f",		--	All Right CBs ON	CB-FRAME-RIGHT-1-PTR
	[602] = "%.4f",		--	CB Control Force Grad	CB-RIGHT-CONTROL-FORCE-MECHANISM-PTR
	[602] = "%.4f",		--	CB Control Force Grad	CB-RIGHT-CONTROL-FORCE-MECHANISM-PTR
	[603] = "%.4f",		--	CB Collective Lever Lock	CB-RIGHT-CONTROL-CLUTCH-PTR
	[603] = "%.4f",		--	CB Collective Lever Lock	CB-RIGHT-CONTROL-CLUTCH-PTR
	[604] = "%.4f",		--	CB Temperature Control Left Governor RPM	CB-RIGHT-ENGINE-TEMP-ADJUST-LEFT-PTR
	[604] = "%.4f",		--	CB Temperature Control Left Governor RPM	CB-RIGHT-ENGINE-TEMP-ADJUST-LEFT-PTR
	[605] = "%.4f",		--	CB Temperature Control Right Governor RPM	CB-RIGHT-ENGINE-TEMP-ADJUST-RIGHT-PTR
	[605] = "%.4f",		--	CB Temperature Control Right Governor RPM	CB-RIGHT-ENGINE-TEMP-ADJUST-RIGHT-PTR
	[606] = "%.4f",		--	CB Rotor RPM Adjust	CB-RIGHT-ROTOR-RPM-ADJUST-PTR
	[606] = "%.4f",		--	CB Rotor RPM Adjust	CB-RIGHT-ROTOR-RPM-ADJUST-PTR
	[607] = "%.4f",		--	CB Signal	CB-RIGHT-ARMAMENT-SIGNAL-PTR
	[607] = "%.4f",		--	CB Signal	CB-RIGHT-ARMAMENT-SIGNAL-PTR
	[608] = "%.4f",		--	CB Camera	CB-RIGHT-ARMAMENT-CAMERA-SHUTTER-PTR
	[608] = "%.4f",		--	CB Camera	CB-RIGHT-ARMAMENT-CAMERA-SHUTTER-PTR
	[609] = "%.4f",		--	CB Armament Control	CB-RIGHT-ARMAMENT-CONTROL-PTR
	[609] = "%.4f",		--	CB Armament Control	CB-RIGHT-ARMAMENT-CONTROL-PTR
	[610] = "%.4f",		--	CB Cannon	CB-RIGHT-ARMAMENT-CANNON-PTR
	[610] = "%.4f",		--	CB Cannon	CB-RIGHT-ARMAMENT-CANNON-PTR
	[611] = "%.4f",		--	CB Squib-2 Auto Fire Protection	CB-RIGHT-FIRE-2-AUTO-PTR
	[611] = "%.4f",		--	CB Squib-2 Auto Fire Protection	CB-RIGHT-FIRE-2-AUTO-PTR
	[612] = "%.4f",		--	CB Squib-2 Manual Fire Protection	CB-RIGHT-FIRE-2-MANUAL-PTR
	[612] = "%.4f",		--	CB Squib-2 Manual Fire Protection	CB-RIGHT-FIRE-2-MANUAL-PTR
	[613] = "%.4f",		--	CB External Stores Tactical Release	CB-RIGHT-EXT-STORES-TACTICAL-DROP-PTR
	[613] = "%.4f",		--	CB External Stores Tactical Release	CB-RIGHT-EXT-STORES-TACTICAL-DROP-PTR
	[614] = "%.4f",		--	CB External Stores Release Lock	CB-RIGHT-EXT-STORES-LOCK-RELEASE-PTR
	[614] = "%.4f",		--	CB External Stores Release Lock	CB-RIGHT-EXT-STORES-LOCK-RELEASE-PTR
	[615] = "%.4f",		--	CB Landing Gear Valve	CB-RIGHT-GEAR-EXTENT-HANDLE-BACKUP-PTR
	[615] = "%.4f",		--	CB Landing Gear Valve	CB-RIGHT-GEAR-EXTENT-HANDLE-BACKUP-PTR
	[616] = "%.4f",		--	CB Jettison Missile Rails	CB-RIGHT-LAUNCHER-DETACH-PTR
	[616] = "%.4f",		--	CB Jettison Missile Rails	CB-RIGHT-LAUNCHER-DETACH-PTR
	[617] = "%.4f",		--	CB Bombs Release	CB-RIGHT-BOMB-COMBAT-DROP-PTR
	[617] = "%.4f",		--	CB Bombs Release	CB-RIGHT-BOMB-COMBAT-DROP-PTR
	[618] = "%.4f",		--	CB Connection Distribution Device	CB-RIGHT-CONNECTION-DISTRIBUTION-DEVICE-PTR
	[618] = "%.4f",		--	CB Connection Distribution Device	CB-RIGHT-CONNECTION-DISTRIBUTION-DEVICE-PTR
	[619] = "%.4f",		--	PILOT SIGHT CB	CB-RIGHT-PILOT-AIM-PTR
	[619] = "%.4f",		--	PILOT SIGHT CB	CB-RIGHT-PILOT-AIM-PTR
	[620] = "%.4f",		--	CB Air Data Computer Heating	CB-RIGHT-DUAS-V-HEATING-PTR
	[620] = "%.4f",		--	CB Air Data Computer Heating	CB-RIGHT-DUAS-V-HEATING-PTR
	[621] = "%.4f",		--	CB Jettison PilotÂ´s Door	CB-RIGHT-EMERGENCY-DOOR-DETACH-PILOT-PTR
	[621] = "%.4f",		--	CB Jettison PilotÂ´s Door	CB-RIGHT-EMERGENCY-DOOR-DETACH-PILOT-PTR
	[622] = "%.4f",		--	CB Jettision Gunners Door	CB-RIGHT-EMERGENCY-DOOR-DETACH-OP-PTR
	[622] = "%.4f",		--	CB Jettision Gunners Door	CB-RIGHT-EMERGENCY-DOOR-DETACH-OP-PTR
	[623] = "%.4f",		--	CB Air Conditioning	CB-RIGHT-CONDITIONER-CONTROL-PTR
	[623] = "%.4f",		--	CB Air Conditioning	CB-RIGHT-CONDITIONER-CONTROL-PTR
	[624] = "%.4f",		--	CB Fuel Quantity Indication	CB-RIGHT-FUEL-METER-PTR
	[624] = "%.4f",		--	CB Fuel Quantity Indication	CB-RIGHT-FUEL-METER-PTR
	[625] = "%.4f",		--	CB Fuel Tank 2 Valve	CB-RIGHT-VALVE-TANK-2-PTR
	[625] = "%.4f",		--	CB Fuel Tank 2 Valve	CB-RIGHT-VALVE-TANK-2-PTR
	[626] = "%.4f",		--	CB Fuel Tank 2 Shutoff Valve	CB-RIGHT-VALVE-FIRE-RIGHT-PTR
	[626] = "%.4f",		--	CB Fuel Tank 2 Shutoff Valve	CB-RIGHT-VALVE-FIRE-RIGHT-PTR
	[627] = "%.4f",		--	CB Fuel Pump 2	CB-RIGHT-PUMP-TANK-2-PTR
	[627] = "%.4f",		--	CB Fuel Pump 2	CB-RIGHT-PUMP-TANK-2-PTR
	[628] = "%.4f",		--	CB Fuel Pump 4	CB-RIGHT-PUMP-TANK-4-PTR
	[628] = "%.4f",		--	CB Fuel Pump 4	CB-RIGHT-PUMP-TANK-4-PTR
	[629] = "%.4f",		--	CB Pilot Seat Adjustment	CB-RIGHT-PILOT-SEAT-MECHANISM-PTR
	[629] = "%.4f",		--	CB Pilot Seat Adjustment	CB-RIGHT-PILOT-SEAT-MECHANISM-PTR
	[630] = "%.4f",		--	CB Anti-Ice System - Warning	CB-RIGHT-ANTIICE-ALARM-PTR
	[630] = "%.4f",		--	CB Anti-Ice System - Warning	CB-RIGHT-ANTIICE-ALARM-PTR
	[631] = "%.4f",		--	CB Anti-Ice System - Control	CB-RIGHT-ANTIICE-CONTROL-PTR
	[631] = "%.4f",		--	CB Anti-Ice System - Control	CB-RIGHT-ANTIICE-CONTROL-PTR
	[572] = "%.4f",		--	CB Missile Power	CB-LEFT-MISSILE-POWER-PTR
	[572] = "%.4f",		--	CB Missile Power	CB-LEFT-MISSILE-POWER-PTR
	[573] = "%.4f",		--	CB Emergency Jettison	CB-LEFT-BOMB-EMERGENCY-DETACH-PTR
	[573] = "%.4f",		--	CB Emergency Jettison	CB-LEFT-BOMB-EMERGENCY-DETACH-PTR
	[574] = "%.4f",		--	CB Bombs	CB-LEFT-BOMB-EXPLOSION-PTR
	[574] = "%.4f",		--	CB Bombs	CB-LEFT-BOMB-EXPLOSION-PTR
	[575] = "%.4f",		--	CB Rockets	CB-LEFT-ROCKETS-PTR
	[575] = "%.4f",		--	CB Rockets	CB-LEFT-ROCKETS-PTR
	[576] = "%.4f",		--	CB ADF	CB-LEFT-RADIOCOMPASS-HF-PTR
	[576] = "%.4f",		--	CB ADF	CB-LEFT-RADIOCOMPASS-HF-PTR
	[577] = "%.4f",		--	CB Fuel Shutoff Valve	CB-LEFT-PUMP-TANK-1-PTR
	[577] = "%.4f",		--	CB Fuel Shutoff Valve	CB-LEFT-PUMP-TANK-1-PTR
	[578] = "%.4f",		--	CB Cross Feed Valve	CB-LEFT-PUMP-TANK-5-PTR
	[578] = "%.4f",		--	CB Cross Feed Valve	CB-LEFT-PUMP-TANK-5-PTR
	[579] = "%.4f",		--	CB Tank 1 Valve	CB-LEFT-VALVE-TANK-1-PTR
	[579] = "%.4f",		--	CB Tank 1 Valve	CB-LEFT-VALVE-TANK-1-PTR
	[580] = "%.4f",		--	CB Left Tank Fire Warning	CB-LEFT-VALVE-FIRE-LEFT-PTR
	[580] = "%.4f",		--	CB Left Tank Fire Warning	CB-LEFT-VALVE-FIRE-LEFT-PTR
	[581] = "%.4f",		--	CB Left Valve Separation	CB-LEFT-VALVE-SEPARATION-PTR
	[581] = "%.4f",		--	CB Left Valve Separation	CB-LEFT-VALVE-SEPARATION-PTR
	[582] = "%.4f",		--	CB Windshield Spray	CB-LEFT-GLASS-SPRINKLER-PTR
	[582] = "%.4f",		--	CB Windshield Spray	CB-LEFT-GLASS-SPRINKLER-PTR
	[583] = "%.4f",		--	CB Windshield Wiper Gunner	CB-LEFT-GLASS-WIPER-OP-PTR
	[583] = "%.4f",		--	CB Windshield Wiper Gunner	CB-LEFT-GLASS-WIPER-OP-PTR
	[584] = "%.4f",		--	CB Windshield Wiper Pilot	CB-LEFT-GLASS-WIPER-PILOT-PTR
	[584] = "%.4f",		--	CB Windshield Wiper Pilot	CB-LEFT-GLASS-WIPER-PILOT-PTR
	[585] = "%.4f",		--	CB Audio Warning System	CB-LEFT-SPEECH-INFORMER-PTR
	[585] = "%.4f",		--	CB Audio Warning System	CB-LEFT-SPEECH-INFORMER-PTR
	[586] = "%.4f",		--	CB Flight Recorder	CB-LEFT-RECORDER-PARAMS-PTR
	[586] = "%.4f",		--	CB Flight Recorder	CB-LEFT-RECORDER-PARAMS-PTR
	[587] = "%.4f",		--	CB Fire Protection System - Auto	CB-LEFT-FIRE-1-AUTO-PTR
	[587] = "%.4f",		--	CB Fire Protection System - Auto	CB-LEFT-FIRE-1-AUTO-PTR
	[588] = "%.4f",		--	CB Fire Protection System - Manual	CB-LEFT-FIRE-1-MANUAL-PTR
	[588] = "%.4f",		--	CB Fire Protection System - Manual	CB-LEFT-FIRE-1-MANUAL-PTR
	[589] = "%.4f",		--	CB Fire Protection System Warning	CB-LEFT-FIRE-ALARM-PTR
	[589] = "%.4f",		--	CB Fire Protection System Warning	CB-LEFT-FIRE-ALARM-PTR
	[590] = "%.4f",		--	CB External Cargo Emergency Jettison	CB-LEFT-EXT-CARGO-EMERGENCY-DROP-PTR
	[590] = "%.4f",		--	CB External Cargo Emergency Jettison	CB-LEFT-EXT-CARGO-EMERGENCY-DROP-PTR
	[591] = "%.4f",		--	CB Landing Gear Extend / Retract	CB-LEFT-GEAR-EXTENT-HANDLE-PTR
	[591] = "%.4f",		--	CB Landing Gear Extend / Retract	CB-LEFT-GEAR-EXTENT-HANDLE-PTR
	[592] = "%.4f",		--	CB Landing Gear Warning	CB-LEFT-GEAR-ALARM-PTR
	[592] = "%.4f",		--	CB Landing Gear Warning	CB-LEFT-GEAR-ALARM-PTR
	[593] = "%.4f",		--	CB Inverter	CB-LEFT-PT125TS-PTR
	[593] = "%.4f",		--	CB Inverter	CB-LEFT-PT125TS-PTR
	[594] = "%.4f",		--	CB Air Speed Sensor	CB-LEFT-AIRSPEED-SENSOR-PTR
	[594] = "%.4f",		--	CB Air Speed Sensor	CB-LEFT-AIRSPEED-SENSOR-PTR
	[595] = "%.4f",		--	CB AFCS Warn	CB-LEFT-AUTOPILOT-ALARM-PTR
	[595] = "%.4f",		--	CB AFCS Warn	CB-LEFT-AUTOPILOT-ALARM-PTR
	[596] = "%.4f",		--	CB Auto Start System	CB-LEFT-STARTUP-BLOCK-PTR
	[596] = "%.4f",		--	CB Auto Start System	CB-LEFT-STARTUP-BLOCK-PTR
	[597] = "%.4f",		--	CB Igniter	CB-LEFT-STARTUP-IGNITION-PTR
	[597] = "%.4f",		--	CB Igniter	CB-LEFT-STARTUP-IGNITION-PTR
	[598] = "%.4f",		--	CB Beacon Light	CB-LEFT-BEACON-PTR
	[598] = "%.4f",		--	CB Beacon Light	CB-LEFT-BEACON-PTR
	[599] = "%.4f",		--	CB Landing Light Control	CB-LEFT-HEADLIGHT-CONTROL-PTR
	[599] = "%.4f",		--	CB Landing Light Control	CB-LEFT-HEADLIGHT-CONTROL-PTR
	[600] = "%.4f",		--	CB Main Attitude Indicator	CB-LEFT-PILOTING-DEVICE-PTR
	[600] = "%.4f",		--	CB Main Attitude Indicator	CB-LEFT-PILOTING-DEVICE-PTR
	[0] = "%.4f",		--	Collective (LMB press	COLLECTIVE-CORR-PTR
	[0] = "%.4f",		--	Collective (LMB press	COLLECTIVE-CORR-PTR
	[5] = "%.4f",		--	Left Engine Throttle	RRUD-LEFT-PTR
	[4] = "%.4f",		--	Right Engine Throttle	RRUD-RIGHT-PTR
	[6] = "%.4f",		--	Left Engine Stop	ENG-BRAKE-LEFT-PTR
	[6] = "%.4f",		--	Left Engine Stop	ENG-BRAKE-LEFT-PTR
	[7] = "%.4f",		--	Right Engine Stop	ENG-BRAKE-RIGHT-PTR
	[7] = "%.4f",		--	Right Engine Stop	ENG-BRAKE-RIGHT-PTR
	[745] = "%.4f",		--	Rotor Brake	ROTOR-BRAKE-PTR
	[745] = "%.4f",		--	Rotor Brake	ROTOR-BRAKE-PTR
	[307] = "%.4f",		--	APU Start	APU-START-PTR
	[311] = "%.4f",		--	APU Stop	APU-STOP-PTR
	[313] = "%.4f",		--	APU Launch Method START/CRANK/FALSE	APU-FALSE-CRANK-START-PTR
	[313] = "%.4f",		--	APU Launch Method START/CRANK/FALSE	APU-FALSE-CRANK-START-PTR
	[314] = "%.4f",		--	Engine Start	ENG-START-PTR
	[320] = "%.4f",		--	Engine Select RIGHT/LEFT	ENG-LEFT-RIGHT-PTR
	[320] = "%.4f",		--	Engine Select RIGHT/LEFT	ENG-LEFT-RIGHT-PTR
	[318] = "%.4f",		--	Engine Interrupt Start	ENG-ABORT-PTR
	[321] = "%.4f",		--	Engine Launch Method START/CRANK	ENG-CRANK-START-PTR
	[321] = "%.4f",		--	Engine Launch Method START/CRANK	ENG-CRANK-START-PTR
	[747] = "%.4f",		--	Readjust Free Turbine RPM	COLLECTIVE-GOV-PTR
	[747] = "%.4f",		--	Readjust Free Turbine RPM	COLLECTIVE-GOV-PTR
	[796] = "%.4f",		--	Antidust ON/OFF	DEDUST-OFF-PTR
	[796] = "%.4f",		--	Antidust ON/OFF	DEDUST-OFF-PTR
	[514] = "%.4f",		--	Antidust ON Cover	DEDUST-OFF-COVER-PTR
	[514] = "%.4f",		--	Antidust ON Cover	DEDUST-OFF-COVER-PTR
	[194] = "%.4f",		--	Engine Termometer control COLD	ENG-TEMP-SENSOR-CONTROL-COLD-PTR
	[195] = "%.4f",		--	Engine Termometer control HOT	ENG-TEMP-SENSOR-CONTROL-HOT-PTR
	[0] = "%.4f",		--	Collective (LMB press	OP-COLL-THROTTLE-PTR
	[0] = "%.4f",		--	Collective (LMB press	OP-COLL-THROTTLE-PTR
	[337] = "%.4f",		--	Eucalypt-M24 Channel Select	EUCAL-CHANNEL-PTR
	[337] = "%.4f",		--	Eucalypt-M24 Channel Select	EUCAL-CHANNEL-PTR
	[339] = "%.4f",		--	Eucalypt-M24 Volume	EUCAL-VOLUME-PTR
	[340] = "%.4f",		--	Eucalypt-M24 ASU	EUCAL-ASY-PTR
	[341] = "%.4f",		--	Eucalypt-M24 Squelch ON/OFF	EUCAL-PSH-PTR
	[341] = "%.4f",		--	Eucalypt-M24 Squelch ON/OFF	EUCAL-PSH-PTR
	[373] = "%.4f",		--	Eucalypt-M24 ON/OFF	R828-ON-OFF-PTR
	[373] = "%.4f",		--	Eucalypt-M24 ON/OFF	R828-ON-OFF-PTR
	[752] = "%.4f",		--	Tactical Cargo Release Button - Push to release	COLLECTIVE-CARGO-TACT-PTR
	[751] = "%.4f",		--	Tactical Cargo Release Button Cover	COLLECTIVE-CARGO-TACT-COVER-PTR
	[751] = "%.4f",		--	Tactical Cargo Release Button Cover	COLLECTIVE-CARGO-TACT-COVER-PTR
	[748] = "%.4f",		--	Emergency Cargo Release Button Cover	COLLECTIVE-CARGO-EMER-COVER-PTR
	[748] = "%.4f",		--	Emergency Cargo Release Button Cover	COLLECTIVE-CARGO-EMER-COVER-PTR
	[863] = "%.4f",		--	Emergency Cargo Release Button - Push to release	OP-COLL-CARGO-DROP-PTR
	[862] = "%.4f",		--	Emergency Cargo Release Button Cover	OP-COLL-CARGO-DROP-COVER-PTR
	[862] = "%.4f",		--	Emergency Cargo Release Button Cover	OP-COLL-CARGO-DROP-COVER-PTR
	[199] = "%.4f",		--	External Cargo Automatic Dropping	EXTCARGO-AUTOLOCK-PTR
	[199] = "%.4f",		--	External Cargo Automatic Dropping	EXTCARGO-AUTOLOCK-PTR
	[198] = "%.4f",		--	External Cargo Remove Release	EXTCARGO-EXT-RETR-PTR
	[198] = "%.4f",		--	External Cargo Remove Release	EXTCARGO-EXT-RETR-PTR
	[34] = "%.4f",		--	Taxi LT Switch	TAXILIGHT-PTR
	[34] = "%.4f",		--	Taxi LT Switch	TAXILIGHT-PTR
	[686] = "%.4f",		--	Operator Taxi LT Switch	TAXILIGHT-OP-PTR
	[686] = "%.4f",		--	Operator Taxi LT Switch	TAXILIGHT-OP-PTR
	[207] = "%.4f",		--	Navigation Lights Switch	NAVLIGHT-BRIGHT-DIM-OFF-PTR
	[207] = "%.4f",		--	Navigation Lights Switch	NAVLIGHT-BRIGHT-DIM-OFF-PTR
	[35] = "%.4f",		--	Navigation Lights Code Button	CODE-NAVLIGHT-PTR
	[414] = "%.4f",		--	Formation Lights Switch	FORMATION-LIGHTS-PTR
	[414] = "%.4f",		--	Formation Lights Switch	FORMATION-LIGHTS-PTR
	[415] = "%.4f",		--	Tip Lights Switch	ROTOR-LIGHTS-PTR
	[415] = "%.4f",		--	Tip Lights Switch	ROTOR-LIGHTS-PTR
	[417] = "%.4f",		--	Strobe Light Switch	STROBE-TAIL-PTR
	[417] = "%.4f",		--	Strobe Light Switch	STROBE-TAIL-PTR
	[208] = "%.4f",		--	LND LT Control-Off-Retract switch	TAXILIGHT-RETR-PTR
	[208] = "%.4f",		--	LND LT Control-Off-Retract switch	TAXILIGHT-RETR-PTR
	[669] = "%.4f",		--	LND Light Assumed Switch	CONTROL-HEADLIGHT-OP-PTR
	[669] = "%.4f",		--	LND Light Assumed Switch	CONTROL-HEADLIGHT-OP-PTR
	[668] = "%.4f",		--	LND Light Assumed Switch Cover	CONTROL-HEADLIGHT-OP-COVER-PTR
	[668] = "%.4f",		--	LND Light Assumed Switch Cover	CONTROL-HEADLIGHT-OP-COVER-PTR
	[502] = "%.4f",		--	Extinguish Left Engine 1	FIRE-1-L-ENG-PTR
	[504] = "%.4f",		--	Extinguish Left Engine 2	FIRE-2-L-ENG-PTR
	[498] = "%.4f",		--	Extinguish Right Engine 1	FIRE-1-R-ENG-PTR
	[500] = "%.4f",		--	Extinguish Right Engine 2	FIRE-2-R-ENG-PTR
	[494] = "%.4f",		--	Extinguish APU 1	FIRE-1-APU-PTR
	[496] = "%.4f",		--	Extinguish APU 2	FIRE-2-APU-PTR
	[490] = "%.4f",		--	Extinguish Gearbox 1	FIRE-1-REDUCER-PTR
	[492] = "%.4f",		--	Extinguish Gearbox 2	FIRE-2-REDUCER-PTR
	[488] = "%.4f",		--	Turn Off Fire Signal Button	FIRE-ALARM-OFF-PTR
	[482] = "%.4f",		--	Extinguisher Control Switch EXING/CNTRL	EXTINGUISH-CONTROL-PTR
	[482] = "%.4f",		--	Extinguisher Control Switch EXING/CNTRL	EXTINGUISH-CONTROL-PTR
	[486] = "%.4f",		--	Fire Extinguisher Squib Control	FIRE-PYRO-CHANNEL-PTR
	[486] = "%.4f",		--	Fire Extinguisher Squib Control	FIRE-PYRO-CHANNEL-PTR
	[484] = "%.4f",		--	Fire Extinguisher Sensor Cnannel OFF/1/2/3	FIRE-SENSOR-CHANNEL-PTR1
	[484] = "%.4f",		--	Fire Extinguisher Sensor Cnannel OFF/1/2/3	FIRE-SENSOR-CHANNEL-PTR1
	[487] = "%.4f",		--	Fire Extinguisher Power ON/OFF	FIRE-POWER-PTR
	[487] = "%.4f",		--	Fire Extinguisher Power ON/OFF	FIRE-POWER-PTR
	[520] = "%.4f",		--	Static valve sensor select LEFT/BOTH/RIGHT	STATIC-VALVE-PTR
	[520] = "%.4f",		--	Static valve sensor select LEFT/BOTH/RIGHT	STATIC-VALVE-PTR
	[408] = "%.4f",		--	Tank 1 Pump	TANK-1-PTR
	[408] = "%.4f",		--	Tank 1 Pump	TANK-1-PTR
	[410] = "%.4f",		--	Tank 2 Pump	TANK-2-PTR
	[410] = "%.4f",		--	Tank 2 Pump	TANK-2-PTR
	[404] = "%.4f",		--	Tank 4 Pump	TANK-4-PTR
	[404] = "%.4f",		--	Tank 4 Pump	TANK-4-PTR
	[406] = "%.4f",		--	Tank 5 Pump	TANK-5-PTR
	[406] = "%.4f",		--	Tank 5 Pump	TANK-5-PTR
	[411] = "%.4f",		--	External Tanks	EXT-TANKS-PTR
	[411] = "%.4f",		--	External Tanks	EXT-TANKS-PTR
	[397] = "%.4f",		--	Left Engine Fire Valve	FIRE-VALVE-LEFT-PTR
	[397] = "%.4f",		--	Left Engine Fire Valve	FIRE-VALVE-LEFT-PTR
	[396] = "%.4f",		--	Left Engine Fire Valve Cover	FIRE-VALVE-LEFT-COVER-PTR
	[396] = "%.4f",		--	Left Engine Fire Valve Cover	FIRE-VALVE-LEFT-COVER-PTR
	[400] = "%.4f",		--	Right Engine Fire Valve	FIRE-VALVE-RIGHT-PTR
	[400] = "%.4f",		--	Right Engine Fire Valve	FIRE-VALVE-RIGHT-PTR
	[399] = "%.4f",		--	Right Engine Fire Valve Cover	FIRE-VALVE-RIGHT-COVER-PTR
	[399] = "%.4f",		--	Right Engine Fire Valve Cover	FIRE-VALVE-RIGHT-COVER-PTR
	[402] = "%.4f",		--	Fuel Delimiter Valve	FUEL-DELIM-PTR
	[402] = "%.4f",		--	Fuel Delimiter Valve	FUEL-DELIM-PTR
	[392] = "%.4f",		--	Feed Tank 1 Valve Switch	FEED-TANK-1-PTR
	[392] = "%.4f",		--	Feed Tank 1 Valve Switch	FEED-TANK-1-PTR
	[394] = "%.4f",		--	Feed Tank 2 Valve Switch	FEED-TANK-2-PTR
	[394] = "%.4f",		--	Feed Tank 2 Valve Switch	FEED-TANK-2-PTR
	[191] = "%.4f",		--	Select tank for fuel meter	FUEL-METER-KNOB-PTR
	[191] = "%.4f",		--	Select tank for fuel meter	FUEL-METER-KNOB-PTR
	[524] = "%.4f",		--	Fuel meter test low	FUEL-METER-H-BUTTON-PTR
	[526] = "%.4f",		--	Fuel meter test high	FUEL-METER-P-BUTTON-PTR
	[367] = "%.4f",		--	Greben' ON/OFF	GREBEN-ON-PFF-PTR
	[367] = "%.4f",		--	Greben' ON/OFF	GREBEN-ON-PFF-PTR
	[448] = "%.4f",		--	Greben Set Latitude	GREBEN-LATITUDE-PTR
	[450] = "%.4f",		--	Greben Match	GREBEN-MATCH-PTR
	[449] = "%.4f",		--	Greben' mode ZK/GPK/MK	GREBEN-MODE-PTR
	[449] = "%.4f",		--	Greben' mode ZK/GPK/MK	GREBEN-MODE-PTR
	[451] = "%.4f",		--	Greben' mode SETUP/OPER	GREBEN-SETUP-PTR
	[451] = "%.4f",		--	Greben' mode SETUP/OPER	GREBEN-SETUP-PTR
	[858] = "%.4f",		--	Course setter	RMI-COURSE-KNOB-PTR
	[947] = "%.4f",		--	Accelerometer Reset Button - Push to reset	GFORCE-RESET-PTR
	[865] = "%.4f",		--	Engage Stick	OP-COLL-ENGAGE-PTR
	[859] = "%.4f",		--	Disengage Stick	OP-STICK-DISENGAGE-PTR
	[857] = "%.4f",		--	Disengage Stick Cover	OP-STICK-DISENGAGE-COVER-PTR
	[857] = "%.4f",		--	Disengage Stick Cover	OP-STICK-DISENGAGE-COVER-PTR
	[217] = "%.4f",		--	Main/Auxiliary Hydraulic Switch	HYDRO-MAIN-SECOND-PTR
	[217] = "%.4f",		--	Main/Auxiliary Hydraulic Switch	HYDRO-MAIN-SECOND-PTR
	[216] = "%.4f",		--	Main/Auxiliary Hydraulic Switch Cover	HYDRO-MAIN-SECOND-COVER-PTR
	[216] = "%.4f",		--	Main/Auxiliary Hydraulic Switch Cover	HYDRO-MAIN-SECOND-COVER-PTR
	[219] = "%.4f",		--	Main/Reserve Gear Hydraulic Switch	LANDING-GEAR-MAIN-BACKUP-PTR
	[219] = "%.4f",		--	Main/Reserve Gear Hydraulic Switch	LANDING-GEAR-MAIN-BACKUP-PTR
	[218] = "%.4f",		--	Main/Reserve Gear Hydraulic Switch Cover	LANDING-GEAR-MAIN-BACKUP-COVER-PTR
	[218] = "%.4f",		--	Main/Reserve Gear Hydraulic Switch Cover	LANDING-GEAR-MAIN-BACKUP-COVER-PTR
	[213] = "%.4f",		--	Auxiliary Disable Button	HYDRO-BACKUP-OFF-PTR
	[215] = "%.4f",		--	Auxiliary Disable Button Cover	HYDRO-BACKUP-OFF-COVER-PTR
	[215] = "%.4f",		--	Auxiliary Disable Button Cover	HYDRO-BACKUP-OFF-COVER-PTR
	[290] = "%.4f",		--	Pedal Damper	PEDAL-DAMPER-COVER-PTR
	[290] = "%.4f",		--	Pedal Damper	PEDAL-DAMPER-COVER-PTR
	[289] = "%.4f",		--	Pedal Damper Cover	PEDAL-DAMPER-COVER-PTR-PTR
	[289] = "%.4f",		--	Pedal Damper Cover	PEDAL-DAMPER-COVER-PTR-PTR
	[667] = "%.4f",		--	Pedal Damper	PEDAL-DAMPER-OP-PTR
	[667] = "%.4f",		--	Pedal Damper	PEDAL-DAMPER-OP-PTR
	[666] = "%.4f",		--	Pedal Damper Cover	PEDAL-DAMPER-OP-COVER-PTR
	[666] = "%.4f",		--	Pedal Damper Cover	PEDAL-DAMPER-OP-COVER-PTR
	[48] = "%.4f",		--	Control Assumed Switch Cover	CONTROL-PRIORITY-PTR
	[48] = "%.4f",		--	Control Assumed Switch Cover	CONTROL-PRIORITY-PTR
	[47] = "%.4f",		--	Control Assumed Switch Cover	 CONTROL-COVER-PRIORITY-PTR
	[47] = "%.4f",		--	Control Assumed Switch Cover	 CONTROL-COVER-PRIORITY-PTR
	[885] = "%.4f",		--	Sight Power Switch	PK-PN-POWER-PTR
	[885] = "%.4f",		--	Sight Power Switch	PK-PN-POWER-PTR
	[886] = "%.4f",		--	OBSERVE	PK-OBSERVE-PTR
	[886] = "%.4f",		--	OBSERVE	PK-OBSERVE-PTR
	[887] = "%.4f",		--	DIAFR Open	PK-DIAPH-PTR
	[887] = "%.4f",		--	DIAFR Open	PK-DIAPH-PTR
	[912] = "%.4f",		--	LOCK ARU	PK-LOCK-PTR
	[912] = "%.4f",		--	LOCK ARU	PK-LOCK-PTR
	[913] = "%.4f",		--	SSP On	PK-SSP-PTR
	[913] = "%.4f",		--	SSP On	PK-SSP-PTR
	[910] = "%.4f",		--	GENERATOR-IMIT	PK-IMIT-GENER-PTR
	[910] = "%.4f",		--	GENERATOR-IMIT	PK-IMIT-GENER-PTR
	[905] = "%.4f",		--	CHECK2-NEUTR-CHECK1	PK-CHECK-PTR
	[905] = "%.4f",		--	CHECK2-NEUTR-CHECK1	PK-CHECK-PTR
	[903] = "%.4f",		--	WORK-CHECK	WEAP-JETTISON-SPECIAL-OP-COVER-PTR002
	[903] = "%.4f",		--	WORK-CHECK	WEAP-JETTISON-SPECIAL-OP-COVER-PTR002
	[899] = "%.4f",		--	BVK Set	PK-WORK-CHECK-PTR
	[899] = "%.4f",		--	BVK Set	PK-WORK-CHECK-PTR
	[911] = "%.4f",		--	Start PM	PK-LAUNCH-PTR
	[870] = "%.4f",		--	Lamps Check	L166V-SWITCH-PTR
	[870] = "%.4f",		--	Lamps Check	L166V-SWITCH-PTR
	[934] = "%.4f",		--	Switcher IN-OUT	SHTV-IN-OUT-PTR
	[934] = "%.4f",		--	Switcher IN-OUT	SHTV-IN-OUT-PTR
	[935] = "%.4f",		--	Switcher CODE1-CODE2	SHTV-CODE-PTR
	[935] = "%.4f",		--	Switcher CODE1-CODE2	SHTV-CODE-PTR
	[933] = "%.4f",		--	Switcher 0 - 0.4	SHTV-CHECK-VALUE-PTR
	[933] = "%.4f",		--	Switcher 0 - 0.4	SHTV-CHECK-VALUE-PTR
	[931] = "%.4f",		--	Checking	SHTV-CHECK-PTR
	[875] = "%.4f",		--	High K	SHTV-HIGH-K-PTR
	[932] = "%.4f",		--	Lamps Check	SHTV-LAMP-CHECK-PTR
	[775] = "%.4f",		--	Sight Doors	WEAP-MISSILES-SIGHT-HEATING-OP-PTR
	[775] = "%.4f",		--	Sight Doors	WEAP-MISSILES-SIGHT-HEATING-OP-PTR
	[871] = "%.4f",		--	Zoom In-Out	OP-SIGHT-SCOPE-PTR
	[871] = "%.4f",		--	Zoom In-Out	OP-SIGHT-SCOPE-PTR
	[872] = "%.4f",		--	Orange Filter	OP-SIGHT-ORANGE-PTR
	[872] = "%.4f",		--	Orange Filter	OP-SIGHT-ORANGE-PTR
	[873] = "%.4f",		--	Laser Filter	OP-SIGHT-ANTILASER-PTR
	[873] = "%.4f",		--	Laser Filter	OP-SIGHT-ANTILASER-PTR
	[884] = "%.4f",		--	Backlight	PK-LIGHT-PTR
	[884] = "%.4f",		--	Backlight	PK-LIGHT-PTR
	[890] = "%.4f",		--	Sight Heating	PK-HEATING-PTR
	[890] = "%.4f",		--	Sight Heating	PK-HEATING-PTR
	[0] = "%.4f",		--	Push to Park/Unpark Operators Stick	PTR-STICK-STOW-1026
	[0] = "%.4f",		--	Push to Park/Unpark Operators Stick	PTR-STICK-STOW-1026
	[334] = "%.4f",		--	IFF Transponder Mode Selector Switch	DEV6201-CODE-PTR
	[334] = "%.4f",		--	IFF Transponder Mode Selector Switch	DEV6201-CODE-PTR
	[336] = "%.4f",		--	IFF Transponder Device Selector Switch	DEV6201-MAIN-BACKUP-PTR
	[336] = "%.4f",		--	IFF Transponder Device Selector Switch	DEV6201-MAIN-BACKUP-PTR
	[332] = "%.4f",		--	IFF Transponder Device Mode Switch	DEV6201-NOT-USED-PTR
	[332] = "%.4f",		--	IFF Transponder Device Mode Switch	DEV6201-NOT-USED-PTR
	[328] = "%.4f",		--	IFF Transponder Erase Button Cover	DEV6201-ERASE-COVER-PTR
	[328] = "%.4f",		--	IFF Transponder Erase Button Cover	DEV6201-ERASE-COVER-PTR
	[329] = "%.4f",		--	IFF Transponder Erase Button - Push to erase	DEV6201-ERASE-PTR
	[330] = "%.4f",		--	IFF Transponder Disaster Switch Cover	DEV6201-SOS-COVER-PTR
	[330] = "%.4f",		--	IFF Transponder Disaster Switch Cover	DEV6201-SOS-COVER-PTR
	[331] = "%.4f",		--	IFF Transponder Disaster Switch	DEV6201-SOS-PTR
	[331] = "%.4f",		--	IFF Transponder Disaster Switch	DEV6201-SOS-PTR
	[383] = "%.4f",		--	IFF Transponder Power Switch	DEV6201-POWER-PTR
	[383] = "%.4f",		--	IFF Transponder Power Switch	DEV6201-POWER-PTR
	[682] = "%.4f",		--	Operator Cabin Lighting Switch	LTG-COCKPIT-OP-PTR
	[682] = "%.4f",		--	Operator Cabin Lighting Switch	LTG-COCKPIT-OP-PTR
	[356] = "%.4f",		--	Pilot Cabin Lighting Switch	LTG-COCKPIT-PTR
	[356] = "%.4f",		--	Pilot Cabin Lighting Switch	LTG-COCKPIT-PTR
	[354] = "%.4f",		--	Cargo Lighting Switch	LTG-WHITE-PTR
	[354] = "%.4f",		--	Cargo Lighting Switch	LTG-WHITE-PTR
	[353] = "%.4f",		--	Cargo Lighting Switch Cover	LTG-WHITE-COVER-PTR
	[353] = "%.4f",		--	Cargo Lighting Switch Cover	LTG-WHITE-COVER-PTR
	[355] = "%.4f",		--	Cargo Lighting Switch	LTG-CARGO-PTR
	[355] = "%.4f",		--	Cargo Lighting Switch	LTG-CARGO-PTR
	[363] = "%.4f",		--	Test Warning Lights Button	LAMP-CONTROL-PTR
	[681] = "%.4f",		--	Test Warning Lights Button	LAMP-CONTROL-OP-PTR
	[362] = "%.4f",		--	Day-Night Switch	DAY-NIGHT-PTR
	[362] = "%.4f",		--	Day-Night Switch	DAY-NIGHT-PTR
	[364] = "%.4f",		--	Blinker Switch	FLASHER-PTR
	[364] = "%.4f",		--	Blinker Switch	FLASHER-PTR
	[148] = "%.4f",		--	Transformer 1 Group Of Red Lights Right And Pilot Panel	RED-LTG1-PTR
	[148] = "%.4f",		--	Transformer 1 Group Of Red Lights Right And Pilot Panel	RED-LTG1-PTR
	[147] = "%.4f",		--	Transformer 2 Group Of Red Lights Right And Pilot Panel	RED-LTG2-PTR
	[147] = "%.4f",		--	Transformer 2 Group Of Red Lights Right And Pilot Panel	RED-LTG2-PTR
	[822] = "%.4f",		--	Armament Panel Red Lights Switch	AUX-LTG-PTR
	[822] = "%.4f",		--	Armament Panel Red Lights Switch	AUX-LTG-PTR
	[820] = "%.4f",		--	Transformer 1 Group Of Red Lights Left Pilot Panel	RED-LTG4-PTR
	[820] = "%.4f",		--	Transformer 1 Group Of Red Lights Left Pilot Panel	RED-LTG4-PTR
	[503] = "%.4f",		--	Transformer 2 Group Of Red Lights Left Pilot Panel	RED-LTG5-PTR
	[503] = "%.4f",		--	Transformer 2 Group Of Red Lights Left Pilot Panel	RED-LTG5-PTR
	[1013] = "%.4f",		--	Transformer 1 Group Of Red Lights Left And Operator Panel	RED-LTG1-OP-PTR
	[1013] = "%.4f",		--	Transformer 1 Group Of Red Lights Left And Operator Panel	RED-LTG1-OP-PTR
	[1014] = "%.4f",		--	Transformer 2 Group Of Red Lights Left And Operator Panel	RED-LTG2-OP-PTR
	[1014] = "%.4f",		--	Transformer 2 Group Of Red Lights Left And Operator Panel	RED-LTG2-OP-PTR
	[149] = "%.4f",		--	Builtin Red Lights Transformer	RED-LTG3-PTR
	[149] = "%.4f",		--	Builtin Red Lights Transformer	RED-LTG3-PTR
	[438] = "%.4f",		--	Jadro-1I Mode OFF/AM/OM	JADRO-MODULATION-PTR
	[438] = "%.4f",		--	Jadro-1I Mode OFF/AM/OM	JADRO-MODULATION-PTR
	[437] = "%.4f",		--	Jadro-1I Frequency	JADRO-001-PTR
	[437] = "%.4f",		--	Jadro-1I Frequency	JADRO-001-PTR
	[436] = "%.4f",		--	Jadro-1I Frequency	JADRO-01-PTR
	[436] = "%.4f",		--	Jadro-1I Frequency	JADRO-01-PTR
	[429] = "%.4f",		--	Jadro-1I Frequency	JADRO-1-PTR
	[429] = "%.4f",		--	Jadro-1I Frequency	JADRO-1-PTR
	[428] = "%.4f",		--	Jadro-1I Frequency	JADRO-10-PTR
	[428] = "%.4f",		--	Jadro-1I Frequency	JADRO-10-PTR
	[427] = "%.4f",		--	Jadro-1I Frequency	JADRO-100-PTR
	[427] = "%.4f",		--	Jadro-1I Frequency	JADRO-100-PTR
	[426] = "%.4f",		--	Jadro-1I Volume	JADRO-VOLUME-PTR
	[421] = "%.4f",		--	Jadro-1I Squelch	JADRO-PSH-PTR
	[423] = "%.4f",		--	Jadro-1I Test	JADRO-CONTROL-PTR
	[374] = "%.4f",		--	Jadro-1I ON/OFF	JADRO-ON-OFF-PTR
	[374] = "%.4f",		--	Jadro-1I ON/OFF	JADRO-ON-OFF-PTR
	[647] = "%.4f",		--	KM-2 set magnetic declination 	KM2-KNOB-PTR
	[645] = "%.4f",		--	KM-2 Test button	KM2-CONTR-BUTTON-PTR
	[985] = "%.4f",		--	Map Scale Selector	MAPDISPLAY-SCALE-PTR
	[985] = "%.4f",		--	Map Scale Selector	MAPDISPLAY-SCALE-PTR
	[291] = "%.4f",		--	Set the vertical position of the helicopter on the Map 	MAPDISPLAY-VERT-PTR
	[983] = "%.4f",		--	Set the horizontall position of the helicopter on the Map 	MAPDISPLAY-HOR-PTR
	[984] = "%.4f",		--	Map Power ON/OFF	MAPDISPLAY-POWER-PTR
	[984] = "%.4f",		--	Map Power ON/OFF	MAPDISPLAY-POWER-PTR
	[192] = "%.4f",		--	Map Highlight  BRIGHT/OFF/DIM	MAP-LIGHT-PTR
	[192] = "%.4f",		--	Map Highlight  BRIGHT/OFF/DIM	MAP-LIGHT-PTR
	[10] = "%.4f",		--	Cage Gyro 1	GYRO1-CAGE-PTR
	[369] = "%.4f",		--	Gyro 1 Power	MGV1-POWER-PTR
	[369] = "%.4f",		--	Gyro 1 Power	MGV1-POWER-PTR
	[14] = "%.4f",		--	Cage Gyro 2	GYRO2-CAGE-PTR
	[701] = "%.4f",		--	Cage Gyro 2	GYRO-CAGE-OP-PTR
	[368] = "%.4f",		--	Gyro 2 Power	MGV2-POWER-PTR
	[368] = "%.4f",		--	Gyro 2 Power	MGV2-POWER-PTR
	[12] = "%.4f",		--	Gyrovertical Switch	GYRO-SEL-PTR
	[12] = "%.4f",		--	Gyrovertical Switch	GYRO-SEL-PTR
	[759] = "%.4f",		--	ADI Switch	PKP-POWER-OP-PTR
	[759] = "%.4f",		--	ADI Switch	PKP-POWER-OP-PTR
	[782] = "%.4f",		--	Pitch Trim Knob	PKP-INIT-PITCH-KNOB-OP-PTR
	[787] = "%.4f",		--	Test ADI Button	PKP-TEST-OP-PTR
	[941] = "%.4f",		--	Pitch Trim Knob	PKP-INIT-PITCH-KNOB-PTR
	[946] = "%.4f",		--	Test ADI Button	PKP-TEST-PTR
	[30] = "%.4f",		--	Radar altimeter adjust and test	RADAR-ALTIMETER-KNOB-PTR
	[31] = "%.4f",		--	Radar altimeter adjust and test	RADAR-ALTIMETER-KNOB-PTR
	[372] = "%.4f",		--	RV-5 ON/OFF	RAD-ALT-ON-OFF-PTR
	[372] = "%.4f",		--	RV-5 ON/OFF	RAD-ALT-ON-OFF-PTR
	[843] = "%.4f",		--	Mode Switch	RMI-KUR-2-OP-PTR
	[843] = "%.4f",		--	Mode Switch	RMI-KUR-2-OP-PTR
	[26] = "%.4f",		--	Mode Switch	RMI-KUR-2-PTR
	[26] = "%.4f",		--	Mode Switch	RMI-KUR-2-PTR
	[518] = "%.4f",		--	R-852 Channel Select	R852-CHANNEL-PTR
	[518] = "%.4f",		--	R-852 Channel Select	R852-CHANNEL-PTR
	[517] = "%.4f",		--	R-852 Volume	R852-VOLUME-KNOB-PTR
	[375] = "%.4f",		--	R-863 ON/OFF	R863-ON-OFF-PTR
	[375] = "%.4f",		--	R-863 ON/OFF	R863-ON-OFF-PTR
	[506] = "%.4f",		--	R-863 FM/AM	R863-MODULATION-PTR
	[506] = "%.4f",		--	R-863 FM/AM	R863-MODULATION-PTR
	[513] = "%.4f",		--	R-863 Channel Select	R863-CHANNEL-PTR
	[513] = "%.4f",		--	R-863 Channel Select	R863-CHANNEL-PTR
	[510] = "%.4f",		--	R-863 Squelch ON/OFF	R863-PSH-PTR
	[510] = "%.4f",		--	R-863 Squelch ON/OFF	R863-PSH-PTR
	[511] = "%.4f",		--	R-863 Volume	R863-VOLUME-KNOB-PTR
	[507] = "%.4f",		--	R-863 Emergency Receiver ON/OFF	R863-AP-PTR
	[507] = "%.4f",		--	R-863 Emergency Receiver ON/OFF	R863-AP-PTR
	[509] = "%.4f",		--	R-863 ARC-UD ON/OFF	R863-RK-PTR
	[509] = "%.4f",		--	R-863 ARC-UD ON/OFF	R863-RK-PTR
	[378] = "%.4f",		--	Recorder MC 61 Power Switch	RECORDER-POWER-PTR
	[378] = "%.4f",		--	Recorder MC 61 Power Switch	RECORDER-POWER-PTR
	[1007] = "%.4f",		--	Recorder MC 61 AUTO/WORK	RECORDER-MODE-PTR
	[1007] = "%.4f",		--	Recorder MC 61 AUTO/WORK	RECORDER-MODE-PTR
	[381] = "%.4f",		--	Recorder MC 61 Brightness Knob	RECORDER-LTG-KNOB-PTR
	[1012] = "%.4f",		--	Laryngophone Switch	RECORDER-SOURCE-PTR
	[1012] = "%.4f",		--	Laryngophone Switch	RECORDER-SOURCE-PTR
	[357] = "%.4f",		--	SARPP-12 Mode Switch	SARPP-MAN-AUTO-OFF-PTR
	[357] = "%.4f",		--	SARPP-12 Mode Switch	SARPP-MAN-AUTO-OFF-PTR
	[343] = "%.4f",		--	Signal Flares Cassette 1 Power Switch	FLARE-TOP-POWER-PTR
	[343] = "%.4f",		--	Signal Flares Cassette 1 Power Switch	FLARE-TOP-POWER-PTR
	[345] = "%.4f",		--	Signal Flares Cassette 1 Launch Green Button	FLARE-TOP-GREEN-PTR
	[345] = "%.4f",		--	Signal Flares Cassette 1 Launch Green Button	FLARE-TOP-GREEN-PTR
	[344] = "%.4f",		--	Signal Flares Cassette 1 Launch Red Button	FLARE-TOP-RED-PTR
	[344] = "%.4f",		--	Signal Flares Cassette 1 Launch Red Button	FLARE-TOP-RED-PTR
	[347] = "%.4f",		--	Signal Flares Cassette 1 Launch White Button	FLARE-TOP-WHITE-PTR
	[347] = "%.4f",		--	Signal Flares Cassette 1 Launch White Button	FLARE-TOP-WHITE-PTR
	[346] = "%.4f",		--	Signal Flares Cassette 1 Launch Yellow Button	FLARE-TOP-YELLOW-PTR
	[346] = "%.4f",		--	Signal Flares Cassette 1 Launch Yellow Button	FLARE-TOP-YELLOW-PTR
	[352] = "%.4f",		--	Signal Flares Cassette 2 Power Switch	FLARE-BOTTOM-POWER-PTR
	[352] = "%.4f",		--	Signal Flares Cassette 2 Power Switch	FLARE-BOTTOM-POWER-PTR
	[349] = "%.4f",		--	Signal Flares Cassette 2 Launch Green Button	FLARE-BOTTOM-GREEN-PTR
	[349] = "%.4f",		--	Signal Flares Cassette 2 Launch Green Button	FLARE-BOTTOM-GREEN-PTR
	[348] = "%.4f",		--	Signal Flares Cassette 2 Launch Red Button	FLARE-BOTTOM-RED-PTR
	[348] = "%.4f",		--	Signal Flares Cassette 2 Launch Red Button	FLARE-BOTTOM-RED-PTR
	[351] = "%.4f",		--	Signal Flares Cassette 2 Launch White Button	FLARE-BOTTOM-WHITE-PTR
	[351] = "%.4f",		--	Signal Flares Cassette 2 Launch White Button	FLARE-BOTTOM-WHITE-PTR
	[350] = "%.4f",		--	Signal Flares Cassette 2 Launch Yellow Button	FLARE-BOTTOM-YELLOW-PTR
	[350] = "%.4f",		--	Signal Flares Cassette 2 Launch Yellow Button	FLARE-BOTTOM-YELLOW-PTR
	[366] = "%.4f",		--	RWR Power	SIRENA-POWER-PTR
	[366] = "%.4f",		--	RWR Power	SIRENA-POWER-PTR
	[365] = "%.4f",		--	RWR Signal	SIRENA-SIGNAL-PTR
	[365] = "%.4f",		--	RWR Signal	SIRENA-SIGNAL-PTR
	[989] = "%.4f",		--	RWR DAY/NIGHT	MAPDISPLAY-VERT-PTR001
	[989] = "%.4f",		--	RWR DAY/NIGHT	MAPDISPLAY-VERT-PTR001
	[990] = "%.4f",		--	Check RWR	GFORCE-RESET-PTR001
	[275] = "%.4f",		--	SPUU OFF (that's a button but acts like a switch)	SPUU-OFF-PTR
	[275] = "%.4f",		--	SPUU OFF (that's a button but acts like a switch)	SPUU-OFF-PTR
	[276] = "%.4f",		--	Autopilot Route Azimuth	SPUU-KNOB-PTR
	[277] = "%.4f",		--	SPUU Control Switch P/NONE/T	SPUU-CONTROL-PTR
	[277] = "%.4f",		--	SPUU Control Switch P/NONE/T	SPUU-CONTROL-PTR
	[270] = "%.4f",		--	SPUU Power ON/OFF	SPUU-ON-OFF-PTR
	[270] = "%.4f",		--	SPUU Power ON/OFF	SPUU-ON-OFF-PTR
	[457] = "%.4f",		--	SPU-8 Volume Knob	SPU8-VOLUME-PTR
	[453] = "%.4f",		--	SPU-8 Radio Volume Knob	SPU8-RADIO-VOL-KNOB-PTR
	[455] = "%.4f",		--	Radio Source Selector Switch	SPU8-MODE-PTR
	[455] = "%.4f",		--	Radio Source Selector Switch	SPU8-MODE-PTR
	[456] = "%.4f",		--	Radio/ICS Switch	SPU8-EXT-PTR
	[456] = "%.4f",		--	Radio/ICS Switch	SPU8-EXT-PTR
	[452] = "%.4f",		--	Network 1/2 Switch (N/F)	SPU8-NET-PTR
	[452] = "%.4f",		--	Network 1/2 Switch (N/F)	SPU8-NET-PTR
	[454] = "%.4f",		--	Circular Call Button (N/F)	SPU8-CV-PTR
	[661] = "%.4f",		--	SPU-8 Volume Knob	SPU8-OP-VOLUME-PTR
	[657] = "%.4f",		--	SPU-8 Radio Volume Knob	SPU8-OP-RADIO-VOL-KNOB-PTR
	[659] = "%.4f",		--	Radio Source Selector Switch	SPU8-OP-MODE-PTR
	[659] = "%.4f",		--	Radio Source Selector Switch	SPU8-OP-MODE-PTR
	[660] = "%.4f",		--	Radio/ICS Switch	SPU8-OP-EXT-PTR
	[660] = "%.4f",		--	Radio/ICS Switch	SPU8-OP-EXT-PTR
	[656] = "%.4f",		--	Network 1/2 Switch (N/F)	SPU8-OP-NET-PTR
	[656] = "%.4f",		--	Network 1/2 Switch (N/F)	SPU8-OP-NET-PTR
	[658] = "%.4f",		--	Circular Call Button (N/F)	SPU8-OP-CV-PTR
	[664] = "%.4f",		--	SPUU Power ON/OFF	SPU8-OP-PTR
	[664] = "%.4f",		--	SPUU Power ON/OFF	SPU8-OP-PTR
	[376] = "%.4f",		--	Switch SPU-8 NET-1 ON/OFF	SPU8-1-ON-OFF-PTR
	[376] = "%.4f",		--	Switch SPU-8 NET-1 ON/OFF	SPU8-1-ON-OFF-PTR
	[377] = "%.4f",		--	Switch SPU-8 NET-2 ON/OFF	SPU8-2-ON-OFF-PTR
	[377] = "%.4f",		--	Switch SPU-8 NET-2 ON/OFF	SPU8-2-ON-OFF-PTR
	[951] = "%.4f",		--	Pitch Trim Knob	UKT-KNOB-PTR
	[359] = "%.4f",		--	RI-65 OFF Button	SPEECH-OFF-PTR
	[360] = "%.4f",		--	RI-65 Check Button	SPEECH-CHECK-PTR
	[361] = "%.4f",		--	RI-65 Repeat Button	SPEECH-REPEAT-PTR
	[741] = "%.4f",		--	Fire Weapons	STICK-RS-PTR
	[740] = "%.4f",		--	Fire Weapons Cover	STICK-RS-COVER-PTR
	[740] = "%.4f",		--	Fire Weapons Cover	STICK-RS-COVER-PTR
	[521] = "%.4f",		--	Burst Length SHORT/MED/LONG	WEAP-BURST-LENGTH-PTR
	[521] = "%.4f",		--	Burst Length SHORT/MED/LONG	WEAP-BURST-LENGTH-PTR
	[522] = "%.4f",		--	Reload Left Gondola	WEAP-127-LEFT-RELOAD-PTR
	[522] = "%.4f",		--	Reload Left Gondola	WEAP-127-LEFT-RELOAD-PTR
	[527] = "%.4f",		--	Reload Right Gondola	WEAP-127-RIGHT-RELOAD-PTR
	[527] = "%.4f",		--	Reload Right Gondola	WEAP-127-RIGHT-RELOAD-PTR
	[530] = "%.4f",		--	Weapon Camera ON/OFF	WEAP-SIGHT-CONTROL-ON-OFF-PTR
	[530] = "%.4f",		--	Weapon Camera ON/OFF	WEAP-SIGHT-CONTROL-ON-OFF-PTR
	[523] = "%.4f",		--	Select Weapon	WEAP-SELECT-KNOB-PTR
	[523] = "%.4f",		--	Select Weapon	WEAP-SELECT-KNOB-PTR
	[531] = "%.4f",		--	Select Rockets LEFT/BOTH/RIGHT	WEAP-ROCKET-SELECT-PTR
	[531] = "%.4f",		--	Select Rockets LEFT/BOTH/RIGHT	WEAP-ROCKET-SELECT-PTR
	[551] = "%.4f",		--	Weapon Control ON/OFF	WEAP-ON-OFF-PTR
	[551] = "%.4f",		--	Weapon Control ON/OFF	WEAP-ON-OFF-PTR
	[550] = "%.4f",		--	Cannon Fire Rate SLOW/FAST	WEAP-CANNON-PACE-PTR
	[550] = "%.4f",		--	Cannon Fire Rate SLOW/FAST	WEAP-CANNON-PACE-PTR
	[549] = "%.4f",		--	Reload Cannon	WEAP-NPU-RELOAD-PTR
	[547] = "%.4f",		--	Stop container	WEAP-KMG-INTERRUPT-PTR
	[546] = "%.4f",		--	Explosion on Jettison ON/OFF	WEAP-JETTISON-EXPLOSION-PTR
	[546] = "%.4f",		--	Explosion on Jettison ON/OFF	WEAP-JETTISON-EXPLOSION-PTR
	[545] = "%.4f",		--	Explosion on Jettison Cover	WEAP-JETTISON-EXPLOSION-COVER-PTR
	[545] = "%.4f",		--	Explosion on Jettison Cover	WEAP-JETTISON-EXPLOSION-COVER-PTR
	[542] = "%.4f",		--	Jettison Pylons ON/OFF	WEAP-JETTISON-SPECIAL-PTR
	[541] = "%.4f",		--	Jettison Pylons Cover	WEAP-JETTISON-SPECIAL-COVER-PTR
	[541] = "%.4f",		--	Jettison Pylons Cover	WEAP-JETTISON-SPECIAL-COVER-PTR
	[538] = "%.4f",		--	Jettison Launcher ON/OFF	WEAP-JETTISON-LAUNCHER-PTR
	[537] = "%.4f",		--	Jettison Launcher Cover	WEAP-JETTISON-LAUNCHER-COVER-PTR
	[537] = "%.4f",		--	Jettison Launcher Cover	WEAP-JETTISON-LAUNCHER-COVER-PTR
	[536] = "%.4f",		--	Arm Rockets	WEAP-PUS-ENGAGEMENT-PTR
	[673] = "%.4f",		--	Main Weapon Safe Switch	ARMAMENT-POWER-OP-PTR
	[673] = "%.4f",		--	Main Weapon Safe Switch	ARMAMENT-POWER-OP-PTR
	[187] = "%.4f",		--	Fire Weapons	OP-STICK-RS-PTR
	[853] = "%.4f",		--	Fire Weapons Cover	OP-STICK-RS-COVER-PTR
	[853] = "%.4f",		--	Fire Weapons Cover	OP-STICK-RS-COVER-PTR
	[713] = "%.4f",		--	Weapon Control	WEAP-PRIORITY-OP-PTR
	[713] = "%.4f",		--	Weapon Control	WEAP-PRIORITY-OP-PTR
	[715] = "%.4f",		--	Explosion on Jettison	WEAP-JETTISON-EXPLOSION-OP-PTR
	[715] = "%.4f",		--	Explosion on Jettison	WEAP-JETTISON-EXPLOSION-OP-PTR
	[142] = "%.4f",		--	Emergency Jettison	WEAP-JETTISON-OP-PTR
	[770] = "%.4f",		--	Burst Length SHORT/MED/LONG	WEAP-BURST-LENGTH-OP-PTR
	[770] = "%.4f",		--	Burst Length SHORT/MED/LONG	WEAP-BURST-LENGTH-OP-PTR
	[709] = "%.4f",		--	Select Weapon	WEAP-SELECT-KNOB-OP-PTR
	[709] = "%.4f",		--	Select Weapon	WEAP-SELECT-KNOB-OP-PTR
	[773] = "%.4f",		--	Missiles Power	WEAP-MISSILES-POWER-OP-PTR
	[773] = "%.4f",		--	Missiles Power	WEAP-MISSILES-POWER-OP-PTR
	[955] = "%.4f",		--	SCHO Power	SHSCHO-POWER-PTR
	[955] = "%.4f",		--	SCHO Power	SHSCHO-POWER-PTR
	[768] = "%.4f",		--	Release Check PU	WEAP-JETTISON-TEST-OP-PTR
	[765] = "%.4f",		--	Jettison Launcher ON/OFF	WEAP-JETTISON-SPECIAL-OP-PTR
	[765] = "%.4f",		--	Jettison Launcher ON/OFF	WEAP-JETTISON-SPECIAL-OP-PTR
	[700] = "%.4f",		--	Bombs/Blocks Mode	WEAP-BOMBS-BLOCKS-OP-PTR
	[700] = "%.4f",		--	Bombs/Blocks Mode	WEAP-BOMBS-BLOCKS-OP-PTR
	[882] = "%.4f",		--	Radiation Reset	OP-AIM-RESET-RAD-PTR
	[956] = "%.4f",		--	SCHO Lamps Check	SHSCHO-CHECK-PTR
	[772] = "%.4f",		--	Cannon Fire Rate SLOW/FAST	WEAP-CANNON-PACE-OP-PTR
	[772] = "%.4f",		--	Cannon Fire Rate SLOW/FAST	WEAP-CANNON-PACE-OP-PTR
	[963] = "%.4f",		--	Select Station	SHSCHO-KNOB-PTR
	[963] = "%.4f",		--	Select Station	SHSCHO-KNOB-PTR
	[769] = "%.4f",		--	Reload Cannon	WEAP-NPU-RELOAD-OP-PTR
	[712] = "%.4f",		--	Weapon Control Cover	WEAP-PRIORITY-OP-COVER-PTR
	[712] = "%.4f",		--	Weapon Control Cover	WEAP-PRIORITY-OP-COVER-PTR
	[714] = "%.4f",		--	Explosion on Jettison Cover	WEAP-JETTISON-EXPLOSION-OP-COVER-PTR
	[714] = "%.4f",		--	Explosion on Jettison Cover	WEAP-JETTISON-EXPLOSION-OP-COVER-PTR
	[141] = "%.4f",		--	Emergency Jettison Cover	WEAP-JETTISON-OP-COVER-PTR
	[141] = "%.4f",		--	Emergency Jettison Cover	WEAP-JETTISON-OP-COVER-PTR
	[699] = "%.4f",		--	Bombs/Blocks Mode Cover	WEAP-BOMBS-BLOCKS-OP-COVER-PTR
	[699] = "%.4f",		--	Bombs/Blocks Mode Cover	WEAP-BOMBS-BLOCKS-OP-COVER-PTR
	[764] = "%.4f",		--	Jettison Launcher Cover	WEAP-JETTISON-SPECIAL-OP-COVER-PTR
	[764] = "%.4f",		--	Jettison Launcher Cover	WEAP-JETTISON-SPECIAL-OP-COVER-PTR
	[711] = "%.4f",		--	Start container	WEAP-KMG-COMMENCE-OP-PTR
	[710] = "%.4f"		--	Stop container	WEAP-KMG-INTERRUPT-OP-PTR

}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
]]
	

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
	--[[
	export in low tick interval to Ikarus
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
]]
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

	--=====================================================================================
	--[[
	ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
	ExportScript.Tools.WriteToLog('CMSP: '..ExportScript.Tools.dump(list_indication(7)))
	
	-- list_indication get tehe value of cockpit displays
	local ltmp1 = 0
	for ltmp2 = 0, 20, 1 do
		ltmp1 = list_indication(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
	end
]]
--[[
	-- getmetatable get function name from devices
	local ltmp1 = 0
	for ltmp2 = 1, 70, 1 do
		ltmp1 = GetDevice(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
		ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
]]
end

-----------------------------
--     Custom functions    --
-----------------------------