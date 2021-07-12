--[[  
  ,d                                                          ,d     	
  88                                                          88     	
MM88MMM ,adPPYba,  88,dPYba,,adPYba,   ,adPPYba, ,adPPYYba, MM88MMM  	
  88   a8"     "8a 88P'   "88"    "8a a8"     "" ""     `Y8   88     	
  88   8b       d8 88      88      88 8b         ,adPPPPP88   88     	
  88,  "8a,   ,a8" 88      88      88 "8a,   ,aa 88,    ,88   88,    	
  "Y888 `"YbbdP"'  88      88      88  `"Ybbd8"' `"8bbdP"Y8   "Y888   F-14B Tomcat Export Script DCS World	
___________________________________________________________________________________________________________________________________________________
▀▀▀█  version: 0.11  █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

Created by: nosaMtrevoC of ED Forums (dt1)  

If you find any errors/ommissions or have any questions in general and for updates, please see this thread on ED Forums:
https://forums.eagle.ru/showthread.php?p=4387597#post4387597

For use with DCS-ExportScripts plugin https://github.com/charlestytler/streamdeck-dcs-interface (Awesome work)
Special ID's for ctytler's Stream Deck plugin (requires ExportScripts) at https://github.com/charlestytler/streamdeck-dcs-interface (Also Awesome)


___________________________________________________________________________________________________________________________________________________
▀▀▀█  ŦЋānk Ȳōū  █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

Thanks GunSlingerAUS & Phoenix FR of ED Forums for providing me with the F-14 Module to make this possible, it was a nice jester (sic).

Testers (if you would like to help make this better, please see: https://forums.eagle.ru/showthread.php?p=4387597#post4387597 for more info)

[TESTER]____________________ [Description]_________________________________________________________________________________________________________
Arbil						 Approach Indexer Lights, ACM Panel gauges and lights for full ACM
Chacal IX					 ACM Panel Testing

___________________________________________________________________________________________________________________________________________________
▀▀▀█  Changelog  █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

Version 0.11 - Matched most of the missing ID's, fixed error in ACM Panel (Chacal IX)
Version 0.10 - Matched many more ID's (not tested) for panels: A6b/A6c/A7, Created All Graphic Icons for panel A6a ACM Panel, App. Indexer Icons
			   Custom Station Weap. Flags output for ACM, ACM Switch, Master Arm Switch, Gun Rate Code, code for SW Cool/MSL Prep/MODE stp switch
			   testing ACM Panel items on Stream deck and creating profiles, Triple Indicator code and icons, Master Caution Button/Light,
			   L & R Fire Lights, Slip/Ball Indicator Gauge, fill icons for stream deck, testing, A6a ACM Panel completed w/StmDeck Prof. & Icons
Version 0.09 - Created 298 conifg Arguments and documentation for all pilot panels Left: A1a/A1b/A2/A4/A5/A6a/A6b/A6c/A6d/A7/A8/A10/A11a/A11b/12
			   Formatting, Matched most DCS ID's (not tested) for panels: A1a/A1b/A2/A6a
Version 0.08 - Formatting, Arresting Hook handle/emerg.Handle/Light, Gun Ammun. Counter knob, gun rounds counter
Version 0.07 - Create tape function for vertical tape displays, created engine RPM Tape and BG Icon, EIG Eng. Temp on A3, EIG Fuel Flow on A3
Version 0.06 - 2 Hydraulic Press. Gauges on A3 (51023 & 51063), added Engine Nozzle Tape A3, engine oil press. gauge
Version 0.05 - Formatting, Added Bingo Knob, Accelerometer Reset, Clock Wind, Clock Start/Stop/Reset, fixed error in Timer, A9 Panel Complete
Version 0.04 - More formatting, added Aft&L/Fwd&R fuselage fuel info, added Accelerometer gauge, added clock and timer gauge, Added Cockpit Refs.
Version 0.03 - Organization of Cockpit and RIO areas in this file for organizational purposes (ease of use)
Version 0.02 - Added formatted fuel output for location A9
Version 0.01 - Initial Layout and formatting of .lua file along with organization outside this file of all functions ID's calls etc..

[Currently working on]_____________________________________________________________________________________________________________________________
Pilot Cockpit config arguments

[To-Do]
Fuel Warning indicators (example low fuel / Bingo fuel) for multi-gauge and fuel gauges
Background images for EIG TIT and FF tapes
Problem with Title string not showing in ExportScript.dualTapeString()
Installation instructions
	VS Code
	copy .lua to proper directory
	load and test script (with special id for testing)
	how-to display a stream deck gauge (custom id) background image in folder and font size
	how to setup a button or switch for a panel


___________________________________________________________________________________________________________________________________________________
▀▀▀█  Formatted for Stream Deck  █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

Extra ID's created for nice formatted output on Stream Deck See ID Guide Below:

[ID]______ [Ref]__ [Description]__________________________ [Status]_______ [Output e.g.]___________________________________________________________

51057		A3		EIG - Engine RPM L & R tape 			working			NOTE: need "F-14B_A3_RPM.png" included as background (shows vert. tape)
51059		A3		EIG - Engine Exhaust Temperature		working			NOTE: need "F-14B_A3_TIT.png" included as background (shows vert. tape)
51061		A3		EIG - Fuel flow tape 		 			working			NOTE: need "F-14B_A3_FF.png" included as background (shows vert. tape)
51023		A3		Hydraulic Pressure Gauge and Flags 1 	working			
51063		A3		Hydraulic Pressure Gauge and Flags 2 	working			
51065		A3		Engine Oil Pressure Gauges 				working			L 42 psi | Eng. Oil | R 42 psi
51068		A3		Engine Nozzle position gauge (tape) 	working			(shows a graphical vertical tape)
---------------------------------------------------------------------------------------------------------------------------------------------------
			A4		Radar Altimiter w/Bug & Flag & inHg						█  In Development  █
			A4		Servopneumatic Altimiter 								█  TODO  █
---------------------------------------------------------------------------------------------------------------------------------------------------
51047		A6a		Master Arm 3 way switch 				working			outputs a graphical 3 way switch to be used with included icons (font9)
56501		A6a		Slip/Ball Indicator 					working			outputs slip and ball gauge
59201		A6a		ACM seam/coll./hot trig light 			working			outputs masks to show/hide triple warning light in one button
59204		A6a		Gun Rate HIGH|LOW Light 				working			outputs 1 or 0 to monitor HIGH|LOW Gun Rate light (usually two IDs)
59206		A6a		SW Cool Light ON|OFF 					working			outputs 1 or 0 to monitor light (usually two IDs)
59208		A6a		MSL Prep Light ON|OFF 					working			outputs 1 or 0 to monitor light (usually two IDs)
59210		A6a		MSL Mode Light NORM|BRSIT 				working			outputs 1 or 0 to monitor light (usually two IDs)
59221		A6a		Station Status Flag 1A 					working			BLACK|WHITE|CHECKBOARD status flag (set font size to 6 on Str.Deck)
59222		A6a		Station Status Flag 1B 					working			BLACK|WHITE|CHECKBOARD status flag (set font size to 6 on Str.Deck)
59223		A6a		Station Status Flag 3					working			BLACK|WHITE|CHECKBOARD status flag (set font size to 6 on Str.Deck)
59224		A6a		Station Status Flag 4					working			BLACK|WHITE|CHECKBOARD status flag (set font size to 6 on Str.Deck)
59225		A6a		Station Status Flag 5 					working			BLACK|WHITE|CHECKBOARD status flag (set font size to 6 on Str.Deck)
59226		A6a		Station Status Flag 6 					working			BLACK|WHITE|CHECKBOARD status flag (set font size to 6 on Str.Deck)
59227		A6a		Station Status Flag 8B 					working			BLACK|WHITE|CHECKBOARD status flag (set font size to 6 on Str.Deck)
59228		A6a		Station Status Flag 8A 					working			BLACK|WHITE|CHECKBOARD status flag (set font size to 6 on Str.Deck)
---------------------------------------------------------------------------------------------------------------------------------------------------
50110		A9		Accelerometer Gauge +/- G & current G 	working			5 G | 1 G | -2G
51096		A9		Clock and Timer Gauge 					working			Clock | 10 15 | Timer | 4 23 21
51054		A9		Aft & L-left feed & aft fuselage Thanks working			AFT & L | 6500 | LBS
51055		A9		Fwd & R-right feed & fwd fuselage tanks working			FWD & R | 6500 | LBS
56000		A9		Left Fuel Gauge in lbs 					working			4000 lbs
56004		A9		Right Fuel Gauge in lbs 				working			4000 lbs
56010		A9		Total Fuel Gauge in lbs 				working			15200 lbs
56020		A9		Bingo Fuel Guage in lbs 				working			04000 lbs
56024		A9		Multi Fuel Guage Custom					working			Shows all relevant fuel output totals in a single stream deck button
---------------------------------------------------------------------------------------------------------------------------------------------------
54060		A10		Gun Rounds Ammunition Counter 			working			ROUNDS | 670
---------------------------------------------------------------------------------------------------------------------------------------------------
52117		B7		RIO Total Fuel Gauge in lbs				working			15000 lbs



___________________________________________________________________________________________________________________________________________________
▀▀▀█  Stream Deck References  █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

The following references (with a picture) can be found (as of June 15, 2020) in Chapter 2 (Cockpit Overview) first 2 pages (pg10 and pg11) of 
the F-14B manual. This manual is located in the C:\Program Files\Eagle Dynamics\DCS World OpenBeta\Mods\aircraft\F14\Docs Directory as a .pdf
Can also be found in the official thread for this script at: https://forums.eagle.ru/showthread.php?p=4387597#post4387597

Anywhere the following Descriptors can be found, they refer to this table in that portion of the manual
e.g. [A9] Pilot-Right Knee Panel describes A as Pilot Cockpit (instead of B RIO Cockpit) and 9 in the table on pg 10 (also below) which is the Right
Knee Panel where the fuel and accelerometer and clock are.

		 ________________________________________________________________________________________________________
		|																										 |
		| [Ref]_ [Position]_ [Description]__________________| [Ref]_ [Position]_ [Description]___________________|
		| 													|													 |
		|  A1 	  Pilot 		Left Side Console			|  B1 	  RIO 		  Left Side Console				 |
		|  A2 	  Pilot 		Left Vertical Console		|  B2 	  RIO 		  Left Vertical Console			 |
		|  A3 	  Pilot 		Left Knee Panel 			|  B3 	  RIO 		  Left Instrument Panel 		 |
		|  A4 	  Pilot 		Left Instrument Panel 		|  B4 	  RIO 		  Center Panel 					 |
		|  A5 	  Pilot 		Left Windshield Frame 		|  B5 	  RIO 		  Center Console 				 |
		|  A6 	  Pilot 		Center Panel 				|  B6 	  RIO 		  Left and Right Footwells 		 |
		|  A7 	  Pilot 		Right Windshield Frame 		|  B7 	  RIO 		  Right Instrument Panel 		 |
		|  A8 	  Pilot 		Right Instrument Panel 		|  B8 	  RIO 		  Right Knee Panel 				 |
		|  A9 	  Pilot 		Right Knee Panel 			|  B9 	  RIO 		  Right Vertical Console 		 |
		|  A10	  Pilot 		Right Vertical Console	 	|  B10 	  RIO 		  Right Side Console 			 |
		|  A11	  Pilot 		Right Side Console 			|  B11 	  RIO 		  Canopy Control Handle 		 |
		|  A12	  Pilot 		Canopy Control Handle 		|													 |
		|___________________________________________________|____________________________________________________|


Description Guide:__________________________________________________________________________________________________________________________________
[BUTTON ID: 3043 / DEVICE ID: 26] - Clock Timer Start/Stop/Reset Button - {28.1, 31.0}{0.0, 1.0}
Button ID: Used in Stream Deck "Button ID:"
Device ID: Used in Stream Deck "Device ID" Note: this is not DCS ID
- Description of button -
{min gauge value, max gauge value}{stored/variable min value, stored/variable max value}


]]
ExportScript.FoundDCSModule = true
ExportScript.Version.F14 = "1.2.1"

ExportScript.ConfigEveryFrameArguments =
{
	--[[
	[DeviceID] = "Format"
	  [4]   = "%.4f",  <- floating-point number with 4 digits after point
	  [19]  = "%0.1f", <- floating-point number with 1 digit after point
	  [129] = "%1d",   <- decimal number
	  [5]   = "%.f",   <- floating point number rounded to a decimal number
	]]
-- PILOT COCKPIT ------------------------------------------------------------------------------

	-- [NEEDS TESTING] ------------------------------------------------------------------------


	-- [END NEEDS TESTING] --------------------------------------------------------------------


	-- [In Development / Testing] -------------------------------------------------------------

-- A1a
		-- Volume/TACAN Command Panel
		[2040]  =  "%.4f",   -- ALR-67 Knob controls audio volume to pilot
		[2039]  =  "%.4f",   -- SW knob volume of sidewinder audio tone to pilot
		[2038]  =  "%.4f",   -- V/UHF 2 knob audio from AN/ARC-182 to pilot
		[0]  =  "%.4f",   -- TACAN CMD switch sets crew member in command of Tacan

		-- ICS Control Panel
		[2048]  =  "%.4f",   -- VOL knob from RIO to pilot
		[2045]  =  "%.4f",   -- AMP selection knob (B/U|NORM|EMER)
		[2044]  =  "%.4f",   -- ICS switch (RADIO OVERRIDE|HOT MIC|COLD MIC)

		-- AFCS Control Panel
		[2106]  =  "%.4f",   -- PITCH switch enables stability augmentation
		[2107]  =  "%.4f",   -- ROLL switch enables stability augmentation
		[2108]  =  "%.4f",   -- YAW switch enables stability augmentation
		[2109]  =  "%.4f",   -- VEC/PCD/ACL switch (VEC/PCD|OFF|ACL)
		[2110]  =  "%.4f",   -- ALT switch (ON|OFF)
		[2111]  =  "%.4f",   -- HDG switch (HDG|OFF|GT)
		[2112]  =  "%.4f",   -- ENGAGE switch (ENGAGE|OFF)

		-- ASYM Limiter/Engine Mode Select
		[16006] =  "%.4f",   -- ASYM LIMITER switch (ON|OFF)
		[16005] =  "%.4f",   -- ASYM LIMITER cover
		[16007]  =  "%.4f",   -- L ENG MODE SELECT (PRI|SEC)
		[16008]  =  "%.4f",   -- R ENG MODE SELECT (PRI|SEC)

		[0]  =  "%.4f",   -- Target Designate swith to designate ground targ. on HUD (up/down/forward designate)

		-- Inlet Ramps/Throttle Control Panel
		[2104]  =  "%.4f",   -- THROTTLE MODE (AUTO|BOOST|MAN)
		[2103]  =  "%.4f",   -- THROTTLE TEMP (HOT|NORM|COLD)
		[2100]  =  "%.4f",   -- L INLET RAMP (STOW|AUTO)
		[2101]  =  "%.4f",   -- R INLET RAMP (STOW|AUTO)
		[2102]  =  "%.4f",   -- ENG CRANK (L|R)
		[0]  =  "%.4f",   -- BACK UP IGNITION (ON|NORM)
		[0]  =  "%.4f",   -- RUDDER TRIM (L|R)




-- A1b
		-- Oxygen Vent Airflow Control Panel
		[0]  =  "%.4f",   -- VENT AIRFLOW dial
		[8114]  =  "%.4f",   -- OXYGEN switch (ON|OFF)

		-- TACAN Control Panel
		[8888]  =  "%.4f",   -- Dual rotary switch Outer Dial
		[8889]  =  "%.4f",   -- Dual rotary switch Inner Dial
		[0]  =  "%.4f",   -- TACAN channel 3 digit
		[8050]  =  "%.4f",   -- Status Go
		[8051]  =  "%.4f",   -- Status NO-GO
		[2115]  =  "%.4f",   -- BIT button initiating TACAN BIT
		[2043]  =  "%.4f",   -- NORMAL MODE switche (X|Y)
		[2036]  =  "%.4f",   -- VOL knob for TACAN audio to pilot
		[2041]  =  "%.4f",   -- MODE konb (OFF|REC|T/R|A/A|BCN)
		[2042]  =  "%.4f",   -- MODE (NORMAL|INVERSE)

		-- UHF 1 (AN/ARC-159) Radio
		[2031]  =  "%.4f",   -- VOL knob controls radio to pilot vol.
		[2035]  =  "%.4f",   -- SQL switch squelch (ON|OFF)
		[2030]  =  "%.4f",   -- Freq. Select Switch 1
		[2029]  =  "%.4f",   -- Freq. Select Switch 2
		[2028]  =  "%.4f",   -- Freq. Select Switch 3
		[2026]  =  "%.4f",   -- Freq. Select Switch 4
		[0]  =  "%.4f",   -- FREQ/(CHAN) display ??? (maybe the switch values above???)
		[8115]  =  "%.4f",   -- READ button
		[2027]  =  "%.4f",   -- BRT knob display brightness
		[16009] =  "%.4f",   -- LOAD button
		[2034]  =  "%.4f",   -- Function selector knob (ADF|BOTH|MAIN|OFF)
		[2032]  =  "%.4f",   -- CHAN SEL knob selects preset channels
		[2033]  =  "%.4f",   -- Mode selector knob (GUARD|MANUAL|PRESET)
		[16010] =  "%.4f",   -- TONE button transmits tone on freq.

		-- Throttle Buttons
		[0]  =  "%.4f",   -- Speed Brake switch (EXT|RET)
		[0]  =  "%.4f",   -- Wing Sweep switch (AUTO|FWD|AFT|BOMB)
		[0]  =  "%.4f",   -- PLM button lockon
		[0]  =  "%.4f",   -- CAGE/SEAM button lockon
		[0]  =  "%.4f",   -- Exterior Light switch (ON|OFF)
		[0]  =  "%.4f",   -- ICS PIT switch (ICS|BOTH|UHF1|UHF2)




-- A2
		-- Fuel Management Panel
		[1076]  =  "%.4f",   -- QTY SEL Switch (FEED|WING|EXT)
		[1095]  =  "%.4f",   -- Select Fuel Feed to engines (FWD|NORM|AFT)
		[1094]  =  "%.4f",   -- Fuel feed cover
		[1001]  =  "%.4f",   -- WING/EXT Transfer (ORIDE|AUTO|OFF)
		[15002] =  "%.4f",   -- Refueling Probe Indicator Light
		[1074]  =  "%.4f",   -- Fuel Dump Switch (OFF|DUMP)
		[1073]  =  "%.4f",   -- Refuel Probe Switch (ALL EXTD|FUS EXTD|RET)
		[1072]  =  "%.4f",   -- Anti skid spoiler bk switch (BOTH|OFF|SPOILER BK)
		[1071]  =  "%.4f",   -- MASTER RESET button resets CADC failure

		-- Control surface position indicator
		[0]  =  "%.4f",   -- L SPOILER DN-Down/flush | Up-Arrow-Above wing | Down-Arrow-Below Wing 8315-8322
		[0]  =  "%.4f",   -- C SPOILER DN-Down/flush | Up-Arrow-Above wing | Down-Arrow-Below Wing
		[0]  =  "%.4f",   -- R SPOILER DN-Down/flush | Up-Arrow-Above wing | Down-Arrow-Below Wing
		[1092]  =  "%.4f",   -- RUDDER position indicators Left
		[1093]  =  "%.4f",   -- RUDDER position indicators Right
		[1090]  =  "%.4f",   -- HORIZ. STAB. Position indicator Left
		[1091]  =  "%.4f",   -- HORIZ. STAB. Position indicator Right

		-- Landing Gear Control Panel
		[326]   =  "%.4f",   -- Landing Gear Handle (UP|DOWN)
		[16015] =  "%.4f",   -- Landing Gear Emer. Extension
		[631]   =  "%.4f",   -- HYD ISOL (FLT|T.O.LDG)
		[999]   =  "%.4f",   -- Transition Light
		[0]  =  "%.4f",   -- EMERG STORES button (illuminates when pressed)
		[0]  =  "%.4f",   -- EMERG STORES light ???
		[1075]  =  "%.4f",   -- NOSE STRUT switch (EXTD|OFF|KNEEL)
		[237]   =  "%.4f",   -- Brake Pull Handle
		[2049]  =  "%.4f",   -- EJECT CMD Indicator (PILOT|MCO)

		-- Wheels-Flaps Pisition Indicator
		[8302]  =  "%.4f",   -- Left Landing Gear Indicator
		[8305]  =  "%.4f",   -- Right Landing Gear Indicator
		[8301]  =  "%.4f",   -- Nose Landing Gear Indicator
		[0]  =  "%.4f",   -- SPD BK Indicator
		[8310]  =  "%.4f",   -- Slats Indicator
		[8311]  =  "%.4f",   -- Flaps Indicator





-- A4
		-- Radar Altimiter
		[103]   =  "%.4f",  -- Radar Altimeter needle
		[308]   =  "%.4f",  -- Radar Altimeter Control Knob
		[2123]  =  "%.4f",  -- Radar Altimeter Bug
		[2124]  =  "%.4f",  -- Radar Altimeter OFF Flag
		[4154]  =  "%.4f",	-- Radar Altimeter Bug
		[16020] =  "%.4f",  -- Radar Altimeter Knob Push
		[19108] =  "%.4f",  -- Radar Altimeter Test Light

		-- Servopneumatic Altimeter
		[0]  =  "%.4f",   -- Altimeter readout 112/262/300-304
		[104]   =  "%.4f",   -- Altimeter Baro readout
		[306]   =  "%.4f",   -- Baroset knob sets local press. in in.Hg
		[0]  =  "%.4f",   -- Local barometric pressure (Kollsman Window)
		[307]   =  "%.4f",   -- Mode switch

		-- Airspeed Mach Indicator
		[0]  =  "%.4f",   -- Airspeed dial ???
		[0]  =  "%.4f",   -- Indicated airspeed scale (outer) ???
		[0]  =  "%.4f",   -- Indicated airspeed scale (inner) ???
		[0]  =  "%.4f",   -- Mach number scale ???
		[0]  =  "%.4f",   -- Indicated airspeed index pointer ???
		[0]  =  "%.4f",   -- Mach Number index pointer ???
		[0]  =  "%.4f",   -- Safe Mach number index pointer ???
		[0]  =  "%.4f",   -- Index knob pushed in ???
		[0]  =  "%.4f",   -- Index knob pulled out ???

		[0]  =  "%.4f",   -- Vertical Velocity Indicator
		[0]  =  "%.4f",   -- Left Engine Fuel Shutoff Handle
		[0]  =  "%.4f",   -- Angle of Attack Indicator





-- A5
		[9356]  =  "%.4f",   -- LEFT Eng. Stall Indicator

		[9350]  =  "%.4f",   -- WHEELS warning
		[9351]  =  "%.4f",   -- BRAKES warning - antiskid or brake fail / parking break
		[9352]  =  "%.4f",   -- ACLS/AP - ACLS or AP disengaged
		[9353]  =  "%.4f",   -- NWS ENGA - nosewheel steering engaged
		[9354]  =  "%.4f",   -- AUTO THROT - disengagement of auto throttle






-- 6b
		-- Vertical Display Indicator (VDI)
		[1037]  =  "%.4f",   -- HUD Brightness Control
		[1036]  =  "%.4f",   -- VDI Brightness Control
		[1038]  =  "%.4f",   -- VDI Contrast Control
		[1033]  =  "%.4f",   -- FILTER Handle when pulled inserts filter for night ops
		[1034]  =  "%.4f",   -- HUD Trim control for pitch lines
		[1035]  =  "%.4f",   -- VDI Trim adjustment of pitch lines on VDI

		-- VDI Caution Lights (also check 2222 id range if below not working)
		[9360]  =  "%.4f",   -- ADJ A/C Advisory light indicating other aircraft close to own traffic pattern.
		[9361]  =  "%.4f",   -- LANDING	CHK Advisory light indicating carrier has a channel
		[9362]  =  "%.4f",   -- ACL	READY indicating CATCC has aquired aircraft
		[9363]  =  "%.4f",   -- A/P	CPLR indicating CATCC is ready to control aircraft.
		[9364]  =  "%.4f",   -- CMD	CONTROL	aircraft is under data link control for landing.
		[9365]  =  "%.4f",   -- 10 SECONDS waypoint and carrier motion info
		[9366]  =  "%.4f",   -- TILT no data link command received for the last 2 sec
		[9367]  =  "%.4f",   -- VOICE - CATCC not ready for ACL
		[9368]  =  "%.4f",   -- AUTO Throttle
		[9369]  =  "%.4f",   -- A/P REF autopilot selected but not engaged.
		[15070] =  "%.4f",   -- WAVEOFF	Warning light indicating waveoff commanded. 2222/15070
		[15071] =  "%.4f",   -- WING SWEEP failure in both wing-sweep channels
		[15072] =  "%.4f",   -- REDUCE SPEED flap retraction failure
		[15073] =  "%.4f",   -- ALT	LOW	Non functional, light on radar altimeter is used instead




-- 6c
		-- Horizontal Situation Display Indicator (HSD)
		[1043]  =  "%.4f",   -- BRT controls HSD Brightness
		[1039]  =  "%.4f",   -- HDG controls heading reference bug in TACAN mode
		[1040]  =  "%.4f",   -- CRS controls cour in MAN and TACAN mode
		[1041]  =  "%.4f",   -- TEST allows reset of HSD
		
		[0]  =  "%.4f",   -- BIT indicator failure in HSD (shows flags ???)
		[0]  =  "%.4f",   -- Bit Indicator knob ???




-- 6d
		-- Center Panel at bottom
		[0]  =  "%.4f",   -- Cabin Pressure Altimeter in 1,000 foot increments (0-50,000') 935|2210
		[0]  =  "%.4f",   -- Emerg. Brake Press. Indicator Park (2150-3000 psi green / red is 1900-2150 psi) 999|9260
		[0]  =  "%.4f",   -- Emerg. Aux Press. Indicator Park (2150-3000 psi green / red is 1900-2150 psi) 9261




-- A7
		[9355]  =  "%.4f",   -- Right Eng. STALL

		-- ECM Warning Lights
		[9357]  =  "%.4f",   -- SAM - steady when lock from SAM / Flashes when missle launch
		[9358]  =  "%.4f",   -- AAA - steady when lock from AAA / Flashes on missle launch
		[9359]  =  "%.4f",   -- AI - steady when lock from airborne radar

		[15097] =  "%.4f",   -- Standby Compass




-- A8
		[0]  =  "%.4f",   -- Wing Sweep Indicator 404|405|507|508|2001|2002 flags: 15091-15095
		[0]  =  "%.4f",   -- Right Engine Fuel Shutoff Handle
		[0]  =  "%.4f",   -- Standby Attitude Indicator ??

		-- UHF/VHF Remote Indicators
		[0]  =  "%.4f",   -- UHF 1 frequency display
		[0]  =  "%.4f",   -- UHF 1 TEST button displays 888.888 if good
		[0]  =  "%.4f",   -- UHF 1 DIM controls display brightness
		[0]  =  "%.4f",   -- V/UHF 2 frequency display
		[0]  =  "%.4f",   -- V/UHF 2 TEST button displays 888.888 if good
		[0]  =  "%.4f",   -- V/UHF 2 BRT controls display brightness
		
		[353]  =  "%0.1f",   -- VHF/UHF ARC-182 Freq Mode (Something|Something|GUARD|PRESET|Something|Something) -- Bailey

		-- Bearing Distance Heading Indicator BDHI
		[0]  =  "%.4f",   -- No. 2 Bearing Pointer magnetic course to TACAN station
		[0]  =  "%.4f",   -- Compass Rose magnetic heading
		[0]  =  "%.4f",   -- No. 1 bearing pointer magnetic course to UHF/ADF station
		[0]  =  "%.4f",   -- Distance Counter in nautical miles

		-- ALR-67 Indicator
		[0]  =  "%.4f",   -- INT knob intensity brightness

		[224]   =  "%.4f",   -- Canopy Jettison Handle





-- A10
		-- Displays Control Panel
			-- Steering Commands Selectors
			[1002]  =  "%.4f",   -- TACAN - Selects TACAN as steering command source
			[1003]  =  "%.4f",   -- DEST - Selects RIO set waypoint as steering command source
			[1004]  =  "%.4f",   -- AWL/PCD - All weather landing/prec. course direction
			[1005]  =  "%.4f",   -- VEC - Vector, selects data link deviation steering as source
			[1006]  =  "%.4f",   -- MAN - Manual, selects manually selected course and heading

			-- Mode Selectors
			[1015]  =  "%.4f",   -- T.O. Takeoff mode
			[1014]  =  "%.4f",   -- CRUISE mode
			[1013]  =  "%.4f",   -- A/A Air-to-Air mode
			[1012]  =  "%.4f",   -- A/G Air-to-Ground mode
			[1011]  =  "%.4f",   -- LDG Landing Mode

			-- HUD
			[1021]  =  "%.4f",   -- DeClutter Mode for HUD (ON|OFF)
			[1020]  =  "%.4f",   -- Which AWL to display on HUD Switch (ILS|ACL)

			-- VDI
			[1019]  =  "%.4f",   -- TV Displays video from TCS or LANTIRN or NORM (TV|NORM)
			[1018]  =  "%.4f",   -- Which AWL to display on VDI (ILS|ACL)

			-- HSD
			[1016]  =  "%.4f",   -- HSD Mode (NAV|TID) nav display or TID repeats RIO TID Info
			[1017]  =  "%.4f",   -- ECM (ORIDE|OFF) [NOT USED/MODELED]

			-- Power Switches
			[1010]  =  "%.4f",   -- VDI (ON|OFF)
			[1009]  =  "%.4f",   -- HUD (ON|OFF)
			[1008]  =  "%.4f",   -- HSD/ECMD (ON|OFF)

			-- Pitch LAD BRT Knob
			[1007]  =  "%.4f",   -- Controls brightness of pitch ladder on HUD
		-- END Displays Control Panel

		-- gun elevation lead in mils
		[2270]  =  "%.4f",   -- Hundreds Counter in mils for the manual A/A and A/G gun modes. Limits are -263 and +87 mils
		[2271]  =  "%.4f",   -- Tens Counter in mils for the manual A/A and A/G gun modes. Limits are -263 and +87 mils
		[2272]  =  "%.4f",   -- Ones Counter in mils for the manual A/A and A/G gun modes. Limits are -263 and +87 mils
		[2273]  =  "%.4f",   -- Knob adjust counter




-- 11a
		-- Spoiler Failure Override
		[902]   =  "%.4f",   -- Inboard spoiler override (ORIDE|NORM) COVER
		[903]   =  "%.4f",   -- Outboard spoiler override (ORIDE|NORM) COVER
		[908]   =  "%.4f",   -- Inboard spoiler override (ORIDE|NORM)
		[907]   =  "%.4f",   -- Outboard spoiler override (ORIDE|NORM)

		-- Caution Advisory Indicator
		[15037] =  "%.1f",   -- PITCH STAB 1 - inoperative pitch channel
		[15040] =  "%.1f",   -- PITCH STAB 2 - inoperative pitch channel
		[15039] =  "%.1f",   -- ROLL STAB 1 - inoperative roll channel
		[15056] =  "%.1f",   -- ROLL STAB 2 - inoperative roll channel
		[15025] =  "%.1f",   -- YAW STAB OP - one inoperative yaw channel
		[15026] =  "%.1f",   -- YAW STAB OUT - two inoperative yaw channels
		[15031] =  "%.1f",   -- EMERG JETT - caution activation of emerg stores jett button
		[15050] =  "%.1f",   -- LADDER - boarding ladder not correctly stowed
		[15052] =  "%.1f",   -- INLET ICE - accumulation of ice on ice detector in L eng.
		[15046] =  "%.1f",   -- FLAP - failure in flap system or flaps down & speed > 225k
		[15047] =  "%.1f",   -- HZ TAIL AUTH - failure of lateral tail auth. actuator
		[15053] =  "%.1f",   -- RUDDER AUTH - failure of rudder auth. actuator
		[15057] =  "%.1f",   -- SPOILERS - spoiler sys failure
		[15041] =  "%.1f",   -- AUTO PILOT - A/P failure
		[15054] =  "%.1f",   -- Left INLET - AICS programmer and/or system failure
		[15051] =  "%.1f",   -- Right INLET - AICS programmer and/or system failure
		[15048] =  "%.1f",   -- OIL PRESS - left or right engine oil press. < 11psi
		[15038] =  "%.1f",   -- BLEED DUCT - high temp air leak in engine comp.
		[15049] =  "%.1f",   -- LEFT RAMPS - ramps not locked in pos.
		[15044] =  "%.1f",   -- RIGHT RAMPS - ramps not locked in pos.
		[15063] =  "%.1f",   -- START VALVE - starter solenoid air valve is open
		[15061] =  "%.1f",   -- LEFT ENG SEC - engin AFTC is in secondary mode
		[15064] =  "%.1f",   -- RIGHT ENG SEC - engin AFTC is in secondary mode
		[15016] =  "%.1f",   -- LEFT GEN - respective engine generator inoperative
		[15020] =  "%.1f",   -- RIGHT GEN - respective engine generator inoperative
		[15027] =  "%.1f",   -- CANOPY - canopy is not own and locked
		[15033] =  "%.1f",   -- BINGO - aircraft fuel qty at or below set bingo
		[15017] =  "%.1f",   -- LEFT OIL HOT - respective eng. oil is too hot
		[15022] =  "%.1f",   -- RIGHT OIL HOT - respective eng. oil is too hot
		[15028] =  "%.1f",   -- CADC - air data computer failure
		[15034] =  "%.1f",   -- HYD PRESS - press. in either engine hyd. < 2,100 psi
		[15018] =  "%.1f",   -- LEFT FUEL PRESS - press. < 9 psi in respective fuel pump
		[15021] =  "%.1f",   -- RIGHT FUEL PRESS - press. < 9 psi in respective fuel pump
		[15029] =  "%.1f",   -- LEFT FUEL LOW - fuel < 1000 lbs in aft and left tank
		[15035] =  "%.1f",   -- RIGHT FUEL LOW - fuel < 1000 lbs in fwd and righ tank
		[15023] =  "%.1f",   -- WING SWEEP - failure of a single channel in wing sweep
		[15062] =  "%.1f",   -- RATS - RATS enabled
		[15058] =  "%.1f",   -- TRANS/RECT - transformer rectifier failure
		[15036] =  "%.1f",   -- MACH TRIM - failure in Mach trim actuator
		[15030] =  "%.1f",   -- WSHLD HOT - central windshield overheat
		[15045] =  "%.1f",   -- LAUNCH BAR - weight on wheels
		[15060] =  "%.1f",   -- INTEG TRIM - trim failure
		[15055] =  "%.1f",   -- AHRS - unreliable attitude or hdg info from AHRS
		[15019] =  "%.1f",   -- ENG FIRE EXT - low press. in fire extenguisher
		[15024] =  "%.1f",   -- AUX FIRE EXT - low press. in Aux. fire ext.

		-- Master Generator Control Panel
		[937]   =  "%.4f",   -- LEFT MASTER GEN switch (NORM|OFF/RESET|TEST)
		[936]   =  "%.4f",   -- RIGHT MASTER GEN switch (NORM|OFF/RESET|TEST)
		[927]   =  "%.4f",   -- EMERG switch (EMERG|NORM|OFF/RESET) COVER
		[926]   =  "%.4f",   -- EMERG switch (EMERG|NORM|OFF/RESET)

		-- Air Condition Control Panel
		[940]   =  "%.4f",   -- TEMP switch (AUTO|MAN)
		[939]   =  "%.4f",   -- CABIN PRESS switch (NORM|DUMP)
		[938]   =  "%.4f",   -- RAM AIR switch (INCR|DECR)
		[929]   =  "%.4f",   -- AIR SOURCE selection (RAM)
		[930]   =  "%.4f",   -- AIR SOURCE selection (L ENG.)
		[931]   =  "%.4f",   -- AIR SOURCE selection (R ENG.)
		[932]   =  "%.4f",   -- AIR SOURCE selection BOTH ENG.)
		[933]   =  "%.4f",   -- AIR SOURCE selection (OFF)
		[950]   =  "%.4f",   -- TEMP thumbwheel (1-14 COOL-WARM)

		-- External Environmental Control Panel
		[942]   =  "%.4f",   -- WIND SHIELD switch (AIR|OFF)
		[941]   =  "%.4f",   -- ANTI-ICE switch (ORIDE|AUTO|OFF)

		-- Hydraulic Transfer Pump Switch
		[630]   =  "%.4f",   -- Transfer Pump switch cover
		[629]   =  "%.4f",   -- HYD TRANSFER PUMP switch (NORMAL|SHUTOFF)





-- 11b
		-- Compass Control Panel
		[0]  =  "%.4f",   -- SYNC Indicator 2221?
		[906]   =  "%.4f",   -- N-S Switch hemisphere (N|S)
		[909]   =  "%.4f",   -- Lat Knob (0-90)
		[1026]  =  "%.4f",   -- Lat Knob (0-90)
		[905]   =  "%.4f",   -- Mode Switch AHRS Hdg Info (COMP|SLAVED|DG)
		[904]   =  "%.4f",   -- HDG Knob
		[16014] =  "%.4f",   -- HDG Button

		-- ARA-63 Control Panel
		[912]   =  "%.4f",   -- Channel Selector (1 of 20 available ICLS channels)
		[911]   =  "%.4f",   -- BIT button
		[910]   =  "%.4f",   -- Power Switch (ON|OFF)
		[910]   =  "%.4f",   -- Power ON Light for ARA-63 (taken from power on/off switch)

		-- Master Light Control Panel
		[923]   =  "%.4f",   -- ANTI COLLISION switch (ON|OFF)
		[919]   =  "%.4f",   -- POSITION switch (FLASH|STEADY)
		[916]   =  "%.4f",   -- TAIL POSITION switch (DIM|OFF|BRT)
		[913]   =  "%.4f",   -- WING POSITION switch (DIM|OFF|BRT)
		[15005] =  "%.4f",   -- ACM thumbwheel Lights Dimmer (0-OFF|1-14 DIM-BRT)
		[15006] =  "%.4f",   -- INDEXER thumbwheel Lights Dimmer (0-OFF|1-14 DIM-BRT)
		[15007] =  "%.4f",   -- INSTRUMENT thumbwheel Lights Dimmer (0-OFF|1-14 DIM-BRT)
		[15008] =  "%.4f",   -- CONSOLE thumbwheel Lights Dimmer (0-OFF|1-14 DIM-BRT)
		[15009] =  "%.4f",   -- FORMATION thumbwheel Lights Dimmer (0-OFF|1-14 DIM-BRT)
		[915]   =  "%.4f",   -- HOOK BYPASS (FIELD|CARRIER)
		[918]   =  "%.4f",   -- TAXI lights switch (ON|OFF)
		[921]   =  "%.4f",   -- WHITE FLOOD switch (OFF|DIM|BRT)
		[924]   =  "%.4f",   -- RED FLOOD switch (DIM|MED|BRT)

		-- Master Test Panel
		[934]   =  "%.4f",   -- MASTER TEST SELECTOR (OFF|LTS|FIRE DET/EXT|INST|OBC|EMERG GEN|MACH LEV|WG SWP|FLT GR DN|FLT GR UP|D/L RAD|STICK SW)
		[15098] =  "%.4f",   -- MASTER TEST SELECTOR Knob Push
		[15010] =  "%.4f",   -- GO light - light used in test to indicate go/no-go conditions of that system
		[15011] =  "%.4f",   -- NO-GO light - light used in test to indicate go/no-go conditions of that system
		[928]   =  "%.4f",   -- EMERG FLT HYD (HIGH|LOW|AUTO(LOW))
		[615]   =  "%.4f",   -- EMERG FLT HYD switch cover

		-- Canopy Defog/Cabin Air Lever
		[0]  =  "%.4f",   -- CABIN AIR
		[0]  =  "%.4f",   -- CANOPY DEFOG




-- 12
		[0]  =  "%.4f",   -- Canopy Control Handle (BOOST|CLOSE|HOLD|OPEN|AUX OPEN)


	-- [END In Development] -------------------------------------------------------------------
	-- ###################################################################################################################################################################
	-- ###################################################################################################################################################################












	-- [A1 Pilot - Left Side Console] ---------------------------------------------------------
	-- [END A1] -------------------------------------------------------------------------------
	
	-- [A2 Pilot - Left Vertical Console] -----------------------------------------------------
	-- [END A2] -------------------------------------------------------------------------------

	-- [A3 Pilot - Left Knee Panel] -----------------------------------------------------------

		-- Electronic Instrument Group
		[1057]  =  "%.4f",   -- Engine RPM Left																									[STREAM DECK FORMAT: 51057]
		[1058]  =  "%.4f",   -- Engine RPM Right																								[STREAM DECK FORMAT: 51057]
		[1059]  =  "%.4f",   -- Engine TIT (Exhaust Gas Temp) Left																				[STREAM DECK FORMAT: 51059]
		[1060]  =  "%.4f",   -- Engine TIT (Exhaust Gas Temp) Right																				[STREAM DECK FORMAT: 51059]
		[1061]  =  "%.4f",   -- Engine Fuel Flow Left																							[STREAM DECK FORMAT: 51061]
		[1062]  =  "%.4f",   -- Engine Fuel Flow Right																							[STREAM DECK FORMAT: 51061]

		-- Hydraulic Pressure Indicator
		[1063]  =  "%.4f",   -- HYD_FlightHydraulicSystemPressure																				[STREAM DECK FORMAT: 51023 OR 51063]
		[1064]  =  "%.4f",   -- HYD_CombinedHydraulicSystemPressure																				[STREAM DECK FORMAT: 51023 OR 51063]

		-- Engine Oil Pressure Gauges
		[1065]  =  "%.4f",   -- Right Engine Oil Pressure																						[STREAM DECK FORMAT: 51065]
		[1066]  =  "%.4f",   -- Left Engine Oil Pressure																						[STREAM DECK FORMAT: 51065]

		-- Engine Exhaust Nozzle Position
		[1067]  =  "%.1f",   -- Right Nozzle																									[STREAM DECK FORMAT: 51068]
		[1068]  =  "%.1f",   -- Left Nozzle																										[STREAM DECK FORMAT: 51068]

	-- [END A3] -------------------------------------------------------------------------------

	-- [A4 Pilot - Left Instrument Panel] -----------------------------------------------------

	-- [END A4] -------------------------------------------------------------------------------
	
	-- [A5 Pilot - Left Windshield Frame] -----------------------------------------------------

		-- Approach Indexer
		[3760]  =  "%d",   	 -- Approach Indexer AOA Slow green light 	 	- {0, 1}{0, 1}
		[3761]  =  "%d",   	 -- Approach Indexer AOA optimum yellow light 	- {0, 1}{0, 1}
		[3762]  =  "%d",   	 -- Approach Indexer AOA fast red light 		- {0, 1}{0, 1}

	-- [END A5] -------------------------------------------------------------------------------

	-- [A6a Pilot - Center Panel] -------------------------------------------------------------

		-- ACM Switch
		[1049]  =  "%d",   	 -- ACM Switch Cover actives the ACM mode 		- {0, 1}{0, 1}														[BUTTON ID:3133  / DEVICE ID:55 ]
		[1048]  =  "%d",   	 -- ACM JETT button jettison stores 			- {0, 1}{0, 1}														[BUTTON ID:3138  / DEVICE ID:55 ]

		-- Master Arm Switch
		[1046]  =  "%d",   	 -- MASTER ARM cover 							- {0, 1}{0, 1}														[BUTTON ID:3135  / DEVICE ID:55 ]
		[1047]  =  "%d",   	 -- MASTER ARM switch (OFF|ON|TNG) 				- {-1, 1}{-1, 1}													[BUTTON ID:3136  / DEVICE ID:55 ]

		-- Turn and Slip Indicator 6a  (Not sure how to do this at the moment)
		[6500]  =  "%.4f",   -- Slip Ball
		[6501]  =  "%.4f",   -- Turn Indicator

		-- Master Caution light
		[9200]  =  "%d",	 -- MASTER CAUTION Light - flashes 				- {0, 1}{0, 1}

	-- [END A6a] ------------------------------------------------------------------------------

	-- [A6b Pilot - Center Panel] -------------------------------------------------------------
	-- [END A6b] ------------------------------------------------------------------------------

	-- [A6c Pilot - Center Panel] -------------------------------------------------------------
	-- [END A6c] ------------------------------------------------------------------------------

	-- [A6d Pilot - Center Panel] -------------------------------------------------------------
	-- [END A6d] ------------------------------------------------------------------------------

	-- [A7 Pilot - Right Windshield Frame] ----------------------------------------------------
	-- [END A7] -------------------------------------------------------------------------------

	-- [A8 Pilot - Right Instrument Panel] ----------------------------------------------------
	-- [END A8] -------------------------------------------------------------------------------

	-- [A9 Pilot - Right Knee Panel] ----------------------------------------------------------

		-- FUS & FEED tapes Shows fuel qty in fuselage tanks
		[1054]  =  "%.4f",   -- Left feed and aft fuselage tanks 																				[STREAM DECK FORMAT: 51054]
		[1055]  =  "%.4f",   -- Right feed and forward fuselage tanks 																			[STREAM DECK FORMAT: 51055]

		-- Total Left Fuel Qty (main fuel guage at bottom left)
		[6000]  =  "%.1f",   -- FUEL_LFuelDial1k 																								[STREAM DECK FORMAT: 56000]
		[6001]  =  "%.1f",   -- FUEL_LFuelDial100 																								[STREAM DECK FORMAT: 56000]
		[6002]  =  "%.1f",   -- FUEL_LFuelDial10 																								[STREAM DECK FORMAT: 56000]
		[6003]  =  "%.1f",   -- FUEL_LFuelDial1 																								[STREAM DECK FORMAT: 56000]

		-- Total Right Fuel Qty (main fuel guage at bottom right)
		[6004]  =  "%.1f",   -- FUEL_RFuelDial1k 																								[STREAM DECK FORMAT: 56004]
		[6005]  =  "%.1f",   -- FUEL_RFuelDial100 																								[STREAM DECK FORMAT: 56004]
		[6006]  =  "%.1f",   -- FUEL_RFuelDial10 																								[STREAM DECK FORMAT: 56004]
		[6007]  =  "%.1f",   -- FUEL_RFuelDial1 																								[STREAM DECK FORMAT: 56004]

		-- Total Fuel Qty in all aircraft tanks (main fuel guage in center shows "Fuel 15000 Qty")
		[6010]  =  "%.1f",   -- FUEL_TotalFuel10k 																								[STREAM DECK FORMAT: 56010]
		[6011]  =  "%.1f",   -- FUEL_TotalFuel1k 																								[STREAM DECK FORMAT: 56010]
		[6012]  =  "%.1f",   -- FUEL_TotalFuel100 																								[STREAM DECK FORMAT: 56010]
		[6013]  =  "%.1f",   -- FUEL_TotalFuel10 																								[STREAM DECK FORMAT: 56010]
		[6014]  =  "%.1f",   -- FUEL_TotalFuel1 																								[STREAM DECK FORMAT: 56010]

		-- Currently set BINGO fuel quantity (main fuel guage in center at top shows "Bingo 4000")
		[6020]  =  "%.1f",   -- FUEL_BingoFuel10k 																								[STREAM DECK FORMAT: 56020]
		[6021]  =  "%.1f",   -- FUEL_BingoFuel1k 																								[STREAM DECK FORMAT: 56020]
		[6022]  =  "%.1f",   -- FUEL_BingoFuel100 																								[STREAM DECK FORMAT: 56020]
		[6023]  =  "%.1f",   -- FUEL_BingoFuel10 																								[STREAM DECK FORMAT: 56020]
		[6024]  =  "%.1f",   -- FUEL_BingoFuel1 																								[STREAM DECK FORMAT: 56020]

		-- Accelerometer (3 needles)
		[110]   =  "%.4f",   -- Needle   - Current G (+10 to -6)																				[STREAM DECK FORMAT: 50110]
		[15076] =  "%.4f",   -- Needle 2 - Max Postive G pulled (max 10)																		[STREAM DECK FORMAT: 50110]
		[15077] =  "%.4f",   -- Needle 3 - Max Negative G Pulled (max -6)																		[STREAM DECK FORMAT: 50110]

	-- [END A9] -------------------------------------------------------------------------------

	-- [A10 Pilot - Right Vertical Console] ---------------------------------------------------

		-- Gun Ammunition Rounds Counter
		[4060]  =  "%.1f",   -- Gun Ammunition Rounds Counter Hundreds																			[STREAM DECK FORMAT: 54060]
		[4061]  =  "%.1f",   -- Gun Ammunition Rounds Counter Tens																				[STREAM DECK FORMAT: 54060]
		[4062]  =  "%.1f",   -- Gun Ammunition Rounds Counter Ones 																				[F-14 DOESN'T DISPLAY]

	-- [END A10] ------------------------------------------------------------------------------

	-- [A11 Pilot - Right Side Console] -------------------------------------------------------
	-- [END A11] ------------------------------------------------------------------------------

	-- [A12 Pilot - Canopy Control Handle] ----------------------------------------------------
	-- [END A12] ------------------------------------------------------------------------------
-- END PILOT COCKPIT --------------------------------------------------------------------------


-- RIO OFFICER COCKPIT ------------------------------------------------------------------------
	-- [B1 RIO - Left Side Console] -----------------------------------------------------------
	-- [END B1] -------------------------------------------------------------------------------
	
	-- [B2 RIO - Left Vertical Console] -------------------------------------------------------
	-- [END B2] -------------------------------------------------------------------------------

	-- [B3 RIO - Left Instrument Panel] -------------------------------------------------------
	-- [END B3] -------------------------------------------------------------------------------

	-- [B4 RIO - Center Panel] ----------------------------------------------------------------
	-- [END B4] -------------------------------------------------------------------------------

	-- [B5 RIO - Center Console] --------------------------------------------------------------
	-- [END B5] -------------------------------------------------------------------------------

	-- [B6 RIO - Left and Right Footwells] ----------------------------------------------------
	-- [END B6] -------------------------------------------------------------------------------

	-- [B7 RIO - Right Instrument Panel] ------------------------------------------------------

		-- Total RIO Fuel Qty (Radar Officer Fuel Dial)
		[2117]  =  "%.1f",   -- FUEL_TotalFuelRIO10k (10's of thousands in decimal 0.1 = 10,000 lbs)											[STREAM DECK FORMAT: 56010]
		[2118]  =  "%.1f",   -- FUEL_TotalFuelRIO1k  (thousands of lbs in decimal 0.4 = 1,000 lbs)												[STREAM DECK FORMAT: 56010]
		[2119]  =  "%.1f",   -- FUEL_TotalFuelRIO100 (hundreds of lbs in decimal 0.3 = 300 lbs)													[STREAM DECK FORMAT: 56010]
		[2120]  =  "%.1f",   -- FUEL_TotalFuelRIO10  (ten lbs of fuel in decimal 0.7 = 70 lbs)													[F-14 DOESN'T DISPLAY TENS OF LBS]
		[2135]  =  "%.1f",   -- FUEL_TotalFuelRIO1 (lbs of fuel in decimal 0.2 = 2 lbs)															[F-14 DOESN'T DISPLAY]

	-- [END B7] -------------------------------------------------------------------------------

	-- [B8 RIO - Right Knee Panel] ------------------------------------------------------------
	-- [END B1] -------------------------------------------------------------------------------
	
	-- [B9 RIO - Right Vertical Console] ------------------------------------------------------
	-- [END B2] -------------------------------------------------------------------------------

	-- [B10 RIO - Right Side Console] ---------------------------------------------------------
	-- [END B3] -------------------------------------------------------------------------------

	-- [B11 RIO - Canopy Control Handle] ------------------------------------------------------
	-- [END B4] -------------------------------------------------------------------------------
-- END RIO OFFICER COCKPIT --------------------------------------------------------------------
}


ExportScript.ConfigArguments = 
{
	-- arguments for export in low tick interval

-- PILOT COCKPIT ------------------------------------------------------------------------------
	-- [A1 Pilot - Left Side Console] ---------------------------------------------------------
	-- [END A1] -------------------------------------------------------------------------------
	
	-- [A2 Pilot - Left Vertical Console] -----------------------------------------------------
	-- [END A2] -------------------------------------------------------------------------------

	-- [A3 Pilot - Left Knee Panel] -----------------------------------------------------------

		-- Hydraulic Pressure Indicator Flags
		[1023]  =  "%d",     -- Pressure availability to the spoilers flag 	- {0, 1}{0, 1}														[STREAM DECK FORMAT: 51023 OR 51063]
		[1024]  =  "%d",     -- Emer. Flight hyd. pump operating on High 	- {0, 1}{0, 1} 														[STREAM DECK FORMAT: 51023 OR 51063]
		[1025]  =  "%d",     -- Emer. Flight hyd. pump operating on LOW 	- {0, 1}{0, 1} 														[STREAM DECK FORMAT: 51023 OR 51063]

	-- [END A3] -------------------------------------------------------------------------------

	-- [A4 Pilot - Left Instrument Panel] -----------------------------------------------------
	-- [END A4] -------------------------------------------------------------------------------
	
	-- [A5 Pilot - Left Windshield Frame] -----------------------------------------------------
	-- [END A5] -------------------------------------------------------------------------------

	-- [A6a Pilot - Center Panel] -------------------------------------------------------------

		-- Master Caution Button (light in high tik)
		[9199]  =  "%d",	 -- MASTER CAUTION Button - press to reset 		- {0, 1}{0, 1}														[BUTTON ID:3056  / DEVICE ID:34 ]

		-- Triple Indicator Lights
		[9203]  =  "%d",   	 -- SEAM LOCK light - sidewinder acquisition in progress..
		[9202]  =  "%d",   	 -- COLLISION light - collision steering has been selected
		[9201]  =  "%d",     -- HOT TRIG light - when lit trigger will release a weapon

		-- Gun Rate Switch and Lights
		[9204]  =  "%d",   	 -- GUN RATE light HIGH (HIGH|LOW) 				- {0, 1}{0, 1}
		[9205]  =  "%d",   	 -- GUN RATE light LOW (HIGH|LOW) 				- {0, 1}{0, 1}
		[16000] =  "%d",   	 -- GUN RATE switch (HIGH|LOW) 					- {0, 1}{0, 1}														[BUTTON ID:3130  / DEVICE ID:55 ]

		-- Sidewinder Cooling
		[9206]  =  "%d",   	 -- SW COOL Switch light On 					- {0, 1}{0, 1}
		[9207]  =  "%d",   	 -- SW COOL Switch light Off					- {0, 1}{0, 1}
		[16001] =  "%d",   	 -- SW COOL switch (ON|OFF)						- {0, 1}{0, 1}														[BUTTON ID:3139  / DEVICE ID:55 ]

		-- MSL Preperation Switch
		[9208]  =  "%d",   	 -- MSL PREP switch light On					- {0, 1}{0, 1}
		[9209]  =  "%d",   	 -- MSL PREP switch light Off					- {0, 1}{0, 1}
		[16002] =  "%d",   	 -- MSL PREP switch (ON|OFF)					- {0, 1}{0, 1}														[BUTTON ID:3140  / DEVICE ID:55 ]

		-- MSL Mode Switch
		[9210]  =  "%d",   	 -- MSL Mode switch light Norm					- {0, 1}{0, 1}
		[9211]  =  "%d",   	 -- MSL Mode switch light Boresight				- {0, 1}{0, 1}
		[16003] =  "%d",   	 -- MSL Mode switch (NORM|BRSIT)				- {0, 1}{0, 1}														[BUTTON ID:3141  / DEVICE ID:55 ]

		-- Weapon Station Status Flags
		[9221]  =  "%.2f",   -- Station Status Flag 1A (OFF|WHITE|CHECK)	- {0, 1}{0, 1}
		[9222]  =  "%.2f",   -- Station Status Flag 1B (OFF|WHITE|CHECK) 	- {0, 1}{0, 1}
		[9223]  =  "%.2f",   -- Station Status Flag 3 (OFF|WHITE|CHECK) 	- {0, 1}{0, 1}
		[9224]  =  "%.2f",   -- Station Status Flag 4 (OFF|WHITE|CHECK) 	- {0, 1}{0, 1}
		[9225]  =  "%.2f",   -- Station Status Flag 5 (OFF|WHITE|CHECK) 	- {0, 1}{0, 1}
		[9226]  =  "%.2f",   -- Station Status Flag 6 (OFF|WHITE|CHECK) 	- {0, 1}{0, 1}
		[9227]  =  "%.2f",   -- Station Status Flag 8B (OFF|WHITE|CHECK) 	- {0, 1}{0, 1}
		[9228]  =  "%.2f",   -- Station Status Flag 8A (OFF|WHITE|CHECK) 	- {0, 1}{0, 1}

		-- Engine Fire Lights
		[15014] =  "%d",	 -- Left Engine FIRE Light 						- {0, 1}{0, 1}
		[15015] =  "%d",	 -- Right Engine FIRE Light 					- {0, 1}{0, 1}

	-- [END A6a] ------------------------------------------------------------------------------

	-- [A6b Pilot - Center Panel] -------------------------------------------------------------
	-- [END A6b] ------------------------------------------------------------------------------

	-- [A6c Pilot - Center Panel] -------------------------------------------------------------
	-- [END A6c] ------------------------------------------------------------------------------

	-- [A6d Pilot - Center Panel] -------------------------------------------------------------
	-- [END A6d] ------------------------------------------------------------------------------

	-- [A7 Pilot - Right Windshield Frame] ----------------------------------------------------
	-- [END A7] -------------------------------------------------------------------------------

	-- [A8 Pilot - Right Instrument Panel] ----------------------------------------------------
	-- [END A8] -------------------------------------------------------------------------------

	-- [A9 Pilot - Right Knee Panel] ----------------------------------------------------------

		-- Accelerometer
		[228]   =  "%.4f",   -- Accelerometer Reset knob 					- {0, 1}{0, 1} 														[BUTTON ID: 3488 / DEVICE ID: 24]

		-- Bingo Set Knob
		[1050]  =  "%.4f",   -- Knob used to set BINGO fuel Qty 			- +/- 1 per step is 100 lbs of fuel									[BUTTON ID: 3069 / DEVICE ID: 20]

		-- Clock and Timer
		[1051]  =  "%.4f",   -- Clock Timer wind 							- +/- 0.06 per step is 1 Minute 									[BUTTON ID: 3042 / DEVICE ID: 26]
		[1096]  =  "%.4f",   -- Clock Hours 								- {0, 12}{0.0000, 1.0000} e.g. 0.5000 * 12 = 6pm					[STREAM DECK FORMAT: 51096]
		[1097]  =  "%.4f",   -- Clock Minutes 								- {0, 60}{0.0000, 1.0000} e.g. 0.5000 * 60 = 30 Minutes 			[STREAM DECK FORMAT: 51096]
		[1098]  =  "%.4f",   -- Clock Timer Seconds 						- {0, 60}{0.0000, 1.0000} e.g. 0.5000 * 60 = 30 Seconds 			[STREAM DECK FORMAT: 51096]
		[1099]  =  "%d",     -- Clock Timer Start/Stop/Reset Button 		- {0, 1}{0, 1}														[BUTTON ID: 3043 / DEVICE ID: 26]
		[2000]  =  "%.4f",   -- Clock Timer Minutes 						- {0, 60}{0.0000, 1.0000} e.g. 0.5000 * 60 = 30 Minutes 			[STREAM DECK FORMAT: 51096]

	-- [END A9] -------------------------------------------------------------------------------

	-- [A10 Pilot - Right Vertical Console] ---------------------------------------------------

		-- Arresting Hook
		[238]   =  "%d",  	 -- HOOK_Handle Arresting hook handle down/up 	- {0, 1}{0, 1}														[BUTTON ID: 3021 / DEVICE ID: 17]
		[15078] =  "%d",  	 -- HOOK_EmergencyDown Emergency release 		- {0, 1}{0, 1}														[BUTTON ID: 3022 / DEVICE ID: 17]
		[15090] =  "%d",  	 -- Hook_Light Arresting Hook Light 			- {0, 1}{0, 1}														[LIGHT/LAMP]

		-- Gun Rounds and Knob
		[1022]  =  "%.4f",   -- Gun Ammunition Counter Adj. Knob 			- {0, 1}{increase or decrease by 0.1 to inc/dec. by 10 rounds}		[BUTTON ID: 3132 / DEVICE ID: 55]

	-- [END A10] ------------------------------------------------------------------------------

	-- [A11a Pilot - Right Side Console] ------------------------------------------------------
	-- [END A11a] -----------------------------------------------------------------------------

	-- [A11b Pilot - Right Side Console] ------------------------------------------------------

		-- HUD Video Control Panel (Not Implemented in DCS)
		--[0]  =  "%.4f",   -- HUD CAM(E)RA switch (TRG|NORMAL|OFF|RUN)
		--[0]  =  "%.4f",   -- VTR Power (ON|OFF)
		--[0]  =  "%.4f",   -- VTR (RECORD|STANDBY)

	-- [END A11b] -----------------------------------------------------------------------------


	-- [A12 Pilot - Canopy Control Handle] ----------------------------------------------------
	-- [END A12] ------------------------------------------------------------------------------
-- END PILOT COCKPIT --------------------------------------------------------------------------




-- RIO OFFICER COCKPIT ------------------------------------------------------------------------
	-- [B1 RIO - Left Side Console] -----------------------------------------------------------
	-- [END B1] -------------------------------------------------------------------------------

	-- [B2 RIO - Left Vertical Console] -------------------------------------------------------
	-- [END B2] -------------------------------------------------------------------------------

	-- [B3 RIO - Left Instrument Panel] -------------------------------------------------------
	-- [END B3] -------------------------------------------------------------------------------

	-- [B4 RIO - Center Panel] ----------------------------------------------------------------
	-- [END B4] -------------------------------------------------------------------------------

	-- [B5 RIO - Center Console] --------------------------------------------------------------
	-- [END B5] -------------------------------------------------------------------------------

	-- [B6 RIO - Left and Right Footwells] ----------------------------------------------------
	-- [END B6] -------------------------------------------------------------------------------

	-- [B7 RIO - Right Instrument Panel] ------------------------------------------------------
	-- [END B7] -------------------------------------------------------------------------------

	-- [B8 RIO - Right Knee Panel] ------------------------------------------------------------
	-- [END B1] -------------------------------------------------------------------------------

	-- [B9 RIO - Right Vertical Console] ------------------------------------------------------
	-- [END B2] -------------------------------------------------------------------------------

	-- [B10 RIO - Right Side Console] ---------------------------------------------------------
	-- [END B3] -------------------------------------------------------------------------------

	-- [B11 RIO - Canopy Control Handle] ------------------------------------------------------
	-- [END B4] -------------------------------------------------------------------------------
-- END RIO OFFICER COCKPIT --------------------------------------------------------------------

}


-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
	-- every frame export to Ikarus

	-- A3 - Pilot Cockpit Left Knee Panel
	ExportScript.hydPressGauge(mainPanelDevice)			-- Hydraulic Pressure Indicator Gauges and Flags
	ExportScript.engNozzle(mainPanelDevice)				-- Engine Nozzle position gauge
	ExportScript.engOilPressure(mainPanelDevice)		-- Engine Oil Pressure gauges
	ExportScript.EIG(mainPanelDevice)					-- Electronic Instrument Group
	-- end A3

	-- A6a - ACM Panel
	ExportScript.stationStatusFlags(mainPanelDevice)	-- Air Combat Maneuver Panel
	ExportScript.ACMButtons(mainPanelDevice)			-- 4 different ACM Buttons
	ExportScript.masterArmSwitch(mainPanelDevice)		-- Master Arm Switch
	ExportScript.ACMTriple(mainPanelDevice)				-- ACM Triple Indicator
	ExportScript.ACMSlip(mainPanelDevice) 				-- Slip/Ball Gauge
	-- end A6a

	-- A9 - Pilot Cockpit Right Knee Panel
	ExportScript.displayFuel(mainPanelDevice)			-- Set of 5 different fuel gauges and a nice multi-gauge (ID's 52117 / 56000 / 56004 / 56010 / 56020 / 56024) Cus. Func.
	ExportScript.displayAccel(mainPanelDevice)			-- Accellerometer Gauge Custom Function
	ExportScript.clockAndTimer(mainPanelDevice)			-- Clock and Timer in digital format on same gauge Custom Function
	-- end A9

	-- A10 - Pilot Right Vertical Console
	ExportScript.gunCounter(mainPanelDevice)			-- 	Gun Ammunition Counter / Rounds left
	-- end A10

	-----------------------------------
	-----Get F14 Radio Frequencies-----
	-----------------------------------
	
	-----UHF-----

	--[[
	1. Get the state of the switch to determine if presets or freqs are being used
	2. Get the channel or freq
	3. Using the above logic, present the Channel or Freq
	4. Preceede channels with "CH ".
	5. Dont preceede freqs with anything.
	]]
	
	--[[
	[2033]  =  "%.4f",   -- Mode selector knob (GUARD|MANUAL|PRESET)
	0.0000 = preset
	0.5000 = MANUAL
	1.0000 = GUARD
	]]
	
	local UHF_ARC159_infoBase = ExportScript.Tools.split(list_indication(8), "%c")--this contains the formated table of the base radio
	local UHF_ARC159_readoutBase = UHF_ARC159_infoBase[10] -- so far it has always been 10 in both channel and freq modes
	local UHF_ARC159_FreqMode = string.format("%0.1f", mainPanelDevice:get_argument_value(2033))
	
	if UHF_ARC159_FreqMode == "1.0" or UHF_ARC159_FreqMode == "0.5" then
		ExportScript.Tools.SendData(60000, string.format("ARC-159\n" .. UHF_ARC159_readoutBase:sub(1,3) .. "." .. UHF_ARC159_readoutBase:sub(4,6)))
		ExportScript.Tools.SendData(60001, string.format(UHF_ARC159_readoutBase:sub(1,3) .. "." .. UHF_ARC159_readoutBase:sub(4,6)))
	elseif UHF_ARC159_FreqMode == "0.0" then
		ExportScript.Tools.SendData(60000, string.format("ARC-159\n" .. "CH " .. UHF_ARC159_readoutBase:sub(4,6)))
		ExportScript.Tools.SendData(60001, string.format("CH " .. UHF_ARC159_readoutBase:sub(4,6)))
	end


	local UHF_ARC159_infoPilot = ExportScript.Tools.split(list_indication(9), "%c")--this contains the formated table of the Pilot radio
	local UHF_ARC159_readoutPilot = UHF_ARC159_infoPilot[16] -- so far it has always been 10 in both channel and freq modes
	local UHF_ARC159_FreqMode = string.format("%0.1f", mainPanelDevice:get_argument_value(2033))
	
	if UHF_ARC159_FreqMode == "1.0" or UHF_ARC159_FreqMode == "0.5" then
		ExportScript.Tools.SendData(60002, string.format("ARC-159\n" .. UHF_ARC159_readoutPilot:sub(1,3) .. "." .. UHF_ARC159_readoutPilot:sub(4,6)))
		ExportScript.Tools.SendData(60003, string.format(UHF_ARC159_readoutPilot:sub(1,3) .. "." .. UHF_ARC159_readoutPilot:sub(4,6)))
	elseif UHF_ARC159_FreqMode == "0.0" then
		ExportScript.Tools.SendData(60002, string.format("ARC-159\n" .. "CH " .. UHF_ARC159_readoutPilot:sub(4,6)))
		ExportScript.Tools.SendData(60003, string.format("CH " .. UHF_ARC159_readoutPilot:sub(4,6)))
	end
	
	
	local UHF_ARC159_infoRio = ExportScript.Tools.split(list_indication(9), "%c")--this contains the formated table of the Rio radio
	local UHF_ARC159_readoutRio = UHF_ARC159_infoRio[16] -- so far it has always been 10 in both channel and freq modes
	local UHF_ARC159_FreqMode = string.format("%0.1f", mainPanelDevice:get_argument_value(2033))
	
	if UHF_ARC159_FreqMode == "1.0" or UHF_ARC159_FreqMode == "0.5" then
		ExportScript.Tools.SendData(60004, string.format("ARC-159\n" .. UHF_ARC159_readoutRio:sub(1,3) .. "." .. UHF_ARC159_readoutRio:sub(4,6)))
		ExportScript.Tools.SendData(60005, string.format(UHF_ARC159_readoutRio:sub(1,3) .. "." .. UHF_ARC159_readoutRio:sub(4,6)))
	elseif UHF_ARC159_FreqMode == "0.0" then
		ExportScript.Tools.SendData(60004, string.format("ARC-159\n" .. "CH " .. UHF_ARC159_readoutRio:sub(4,6)))
		ExportScript.Tools.SendData(60005, string.format("CH " .. UHF_ARC159_readoutRio:sub(4,6)))
	end
	
	-----V/UHF ARC182-----
	
	--[[
	[353]  =  "%0.1f",   -- VHF/UHF ARC-182 Freq Mode (UHF GUARD|V/UHF|V/UHF GUARD|PRESET|V/UHF|LOAD?)
	0.0 = UHF GUARD
	0.2 = V/UHF
	0.4 = V/UHF GUARD
	0.6 = PRESET
	0.8 = V/UHF
	1.0 = LOAD?
	]]
	
	local VHF_ARC182_infoBase = ExportScript.Tools.split(list_indication(12), "%c")--this contains the formated table of the base radio
	local VHF_ARC182_readoutBase = VHF_ARC182_infoBase[10] -- so far it has always been 10 in both channel and freq modes
	local VHF_ARC182_FreqMode = string.format("%0.1f", mainPanelDevice:get_argument_value(353))
	
	if VHF_ARC182_FreqMode == "0.0" or VHF_ARC182_FreqMode == "0.2" then
		ExportScript.Tools.SendData(60006, string.format("ARC-182\n" .. VHF_ARC182_readoutBase:sub(1,3) .. "." .. VHF_ARC182_readoutBase:sub(4,6)))
		ExportScript.Tools.SendData(60007, string.format(VHF_ARC182_readoutBase:sub(1,3) .. "." .. VHF_ARC182_readoutBase:sub(4,6)))
	elseif VHF_ARC182_FreqMode == "0.4" or VHF_ARC182_FreqMode == "0.8" then
		ExportScript.Tools.SendData(60006, string.format("ARC-182\n" .. VHF_ARC182_readoutBase:sub(1,3) .. "." .. VHF_ARC182_readoutBase:sub(4,6)))
		ExportScript.Tools.SendData(60007, string.format(VHF_ARC182_readoutBase:sub(1,3) .. "." .. VHF_ARC182_readoutBase:sub(4,6)))
	elseif VHF_ARC182_FreqMode == "1.0" then
		ExportScript.Tools.SendData(60006, string.format("ARC-182\n" .. VHF_ARC182_readoutBase:sub(1,3) .. "." .. VHF_ARC182_readoutBase:sub(4,6)))
		ExportScript.Tools.SendData(60007, string.format(VHF_ARC182_readoutBase:sub(1,3) .. "." .. VHF_ARC182_readoutBase:sub(4,6)))
	elseif VHF_ARC182_FreqMode == "0.6" then
		ExportScript.Tools.SendData(60006, string.format("ARC-182\n" .. "CH " .. VHF_ARC182_readoutBase:sub(4,6)))
		ExportScript.Tools.SendData(60007, string.format("CH " .. VHF_ARC182_readoutBase:sub(4,6)))
	end

end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
	-- every frame export to DAC
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
	-- export in low tick interval to Ikarus
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
	-- export in low tick interval to DAC
end --[[







___________________________________________________________________________________________________________________________________________________
▀▀▀█  Custom functions  █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
   █  ExportScript.onff(switch) - Receives a binary and returns string OFF|ON 
   █  ExportScript.dualTapeString(leftTape, rightTape) - Receives two values (percent of tape) and returns a string tape display (e.g. RPM)    	 
   █  ExportScript.rotaryCounter(fp) - receives a fp like 0.1 and returns a string 1 (third charachter), handles negatives and 0 gracefully
   █  ExportScript.drawStationStatusFlags(flagValue) - Draws Station Flags for Weapons on ACM A6a]]

function ExportScript.dualTapeString(title, leftTape, rightTape) -- Creates a dual vertical bar tape for custom gauge
	-- Receives title as string
	-- Receives a value from 0.00 to 1.00 that represents a percentage from 0% to 100% of the tape, 0.25 is 1/4 up the tape etc..
	-- Returns a string that shows 2 tapes in a "somewhat" graphical format using extended ascii characters.
	local a = 5
	local b = 0
	leftTape = tonumber(string.format("%.1f", (leftTape * 10) / 2 ))
	rightTape =  tonumber(string.format("%.1f", (rightTape * 10) / 2 ))
	local buildDisplay = title .. "\n"
	repeat
		b = a - 0.5
		if leftTape >= a then buildDisplay = buildDisplay .. "█          " elseif leftTape >= b then buildDisplay = buildDisplay .. "▄          " else buildDisplay = buildDisplay .. "_          "	end
		if rightTape >= a then buildDisplay = buildDisplay .. "█" elseif rightTape >= (a - 0.5) then buildDisplay = buildDisplay .. "▄" else buildDisplay = buildDisplay .. "_" end
		buildDisplay = buildDisplay .. "\n"
		a = a - 1
	until( a < 1 )
	return buildDisplay
end


function ExportScript.onff(switch)  -- Takes a binary 1(on) or 0(off) and returns string "ON" or "OFF"
	if switch == 1 then	returnString = "ON" elseif switch == 0 then	returnString = "OFF" end
	return returnString
end  


function ExportScript.rotaryCounter(fp) -- Takes a value as floating point like 0.1324 and returns 1 as a string or 0.4 as 4 as a string (3'rd character including decimal)
	local returnString
	if fp == 1 or fp <= 0 then returnString = "0" else returnString = string.sub(string.format("%.1f", fp), 3, 3) end
	return returnString
end	


function ExportScript.drawStationStatusFlags(flagValue) -- Takes a 0/1/0.45 and draws nothing/white/checker flag and returns
	local returnString
	if flagValue > 0.5 then returnString = "█████\n▀▀▀▀▀\n\n." elseif flagValue > 0.4 then returnString = "▀▄▀▄▀\n▀   ▀   ▀\n\n." else returnString = "" end
	return returnString
end
--[[




___________________________________________________________________________________________________________________________________________________
▀▀▀█  Custom Gauges functions  █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀]]

function ExportScript.ACMSlip(mainPanelDevice) -- Slip/Ball Gauge
	local turn
	local turnL
	local turnR
	local turnIndicator = mainPanelDevice:get_argument_value(6501)
	local turnLString = ""
	local turnRString = ""
	local ball
	local ballL
	local ballR
	local ballIndicator = mainPanelDevice:get_argument_value(6500)
	local ballLString = ""
	local ballRString = ""
	local stringOutput = ""
	if turnIndicator < 0 then -- negative 12 on left and right
		if turnIndicator < -0.9 then turn = 9 else turn = tonumber(string.sub(turnIndicator, 4, 4)) end
		turnL = 12 - turn
		turnR = 12 + turn
		repeat
			turnLString = turnLString .. " "
			turnL = turnL - 1
		until( turnL == 1)
		repeat
			turnRString = turnRString .. " "
			turnR = turnR - 1
		until( turnR == 1)
		stringOutput = stringOutput .. turnLString
		stringOutput = stringOutput .. "█"
		stringOutput = stringOutput .. turnRString
	elseif turnIndicator > 0 then -- positive
		if turnIndicator > 0.9 then turn = 9 else turn = tonumber(string.sub(turnIndicator, 3, 3)) end
		turnL = 12 + turn
		turnR = 12 - turn
		repeat
			turnLString = turnLString .. " "
			turnL = turnL - 1
		until( turnL == 1)
		repeat
			turnRString = turnRString .. " "
			turnR = turnR - 1
		until( turnR == 1)
		stringOutput = stringOutput .. turnLString
		stringOutput = stringOutput .. "█"
		stringOutput = stringOutput .. turnRString
	else
		turn = 0
		stringOutput = "            █            "
	end

	stringOutput = stringOutput .. "\n       ■   █   ■       \n"

	if ballIndicator < 0 then -- negative 12 on left and right
		if ballIndicator < -0.9 then ball = 9 else ball = tonumber(string.sub(ballIndicator, 4, 4)) end
		ballL = 12 - ball
		ballR = 12 + ball
		repeat
			ballLString = ballLString .. " "
			ballL = ballL - 1
		until( ballL == 1)
		repeat
			ballRString = ballRString .. " "
			ballR = ballR - 1
		until( ballR == 1)
		stringOutput = stringOutput .. ballLString
		stringOutput = stringOutput .. "O"
		stringOutput = stringOutput .. ballRString
	elseif ballIndicator > 0 then -- positive
		if ballIndicator > 0.9 then ball = 9 else ball = tonumber(string.sub(ballIndicator, 3, 3)) end
		ballL = 12 + ball
		ballR = 12 - ball
		repeat
			ballLString = ballLString .. " "
			ballL = ballL - 1
		until( ballL == 1)
		repeat
			ballRString = ballRString .. " "
			ballR = ballR - 1
		until( ballR == 1)
		stringOutput = stringOutput .. ballLString
		stringOutput = stringOutput .. "O"
		stringOutput = stringOutput .. ballRString
	else
		ball = 0
		stringOutput = "            O            "
	end
	ExportScript.Tools.SendData(56501, stringOutput)
end


function ExportScript.ACMTriple(mainPanelDevice) -- Triple indicator lights for ACM (Seam/Collision/Hot Trig)
	local stringOutput = ""
	if mainPanelDevice:get_argument_value(9203) == 1 then stringOutput = stringOutput .. "\n\n" else stringOutput = stringOutput .. "██████████\n\n" end
	if mainPanelDevice:get_argument_value(9202) == 1 then stringOutput = stringOutput .. "\n\n\n" else stringOutput = stringOutput .. "▄▄▄▄▄▄▄▄▄▄\n▀▀▀▀▀▀▀▀▀▀\n\n" end
	if mainPanelDevice:get_argument_value(9201) == 1 then stringOutput = stringOutput .. "." else stringOutput = stringOutput .. "██████████" end
	ExportScript.Tools.SendData(59201, stringOutput)
end


function ExportScript.masterArmSwitch(mainPanelDevice) -- Output Master Arm Position
	if mainPanelDevice:get_argument_value(1047) == -1 then stringOutput = "         ███\n           |\n           |\n\n  ." 
	elseif mainPanelDevice:get_argument_value(1047) == 0 then stringOutput = "           |\n         ███\n           |\n\n  ."
	else stringOutput = "           |\n           |\n         ███\n\n  ."
	end
	ExportScript.Tools.SendData(51047, stringOutput)
end


function ExportScript.ACMButtons(mainPanelDevice) -- Monitors two lights on diff. id's and outputs 1 or 0 to one id for (gun rate/SW cool/MSL prep/Mode stp)
	if mainPanelDevice:get_argument_value(9204) == 1 then ExportScript.Tools.SendData(59204, 1) else ExportScript.Tools.SendData(59204, 0) end -- gun rate light
	if mainPanelDevice:get_argument_value(9206) == 1 then ExportScript.Tools.SendData(59206, 1) else ExportScript.Tools.SendData(59206, 0) end -- sw cool light
	if mainPanelDevice:get_argument_value(9208) == 1 then ExportScript.Tools.SendData(59208, 1) else ExportScript.Tools.SendData(59208, 0) end -- msl prep light
	if mainPanelDevice:get_argument_value(9210) == 1 then ExportScript.Tools.SendData(59210, 1) else ExportScript.Tools.SendData(59210, 0) end -- msl mode stp light
end


function ExportScript.stationStatusFlags(mainPanelDevice) -- Display Station status flags 1 to 8 on ACM panel
	local b
	local a = 9221
	repeat
		b = "5" .. a
		ExportScript.Tools.SendData(b, ExportScript.drawStationStatusFlags(mainPanelDevice:get_argument_value(a)))
		a = a + 1
	until( a > 9228)
end


function ExportScript.gunCounter(mainPanelDevice) -- Gun Counter
	local gunCounter = ExportScript.rotaryCounter(mainPanelDevice:get_argument_value(4060)) .. ExportScript.rotaryCounter(mainPanelDevice:get_argument_value(4061)) .. ExportScript.rotaryCounter(mainPanelDevice:get_argument_value(4062))
	ExportScript.Tools.SendData(54060, "ROUNDS\n" .. gunCounter)
end


function ExportScript.EIG(mainPanelDevice) -- Electronic Instrument Group EIG
	local EIGrpm = ExportScript.dualTapeString("RPM % x10", mainPanelDevice:get_argument_value(1057), mainPanelDevice:get_argument_value(1058))
	local EIGegt = ExportScript.dualTapeString("TIT C x100", mainPanelDevice:get_argument_value(1059), mainPanelDevice:get_argument_value(1060))
	local EIGff = ExportScript.dualTapeString("FF PPH x1000", mainPanelDevice:get_argument_value(1061), mainPanelDevice:get_argument_value(1062))
	ExportScript.Tools.SendData(51057, EIGrpm)	-- Engine RPM
	ExportScript.Tools.SendData(51059, EIGegt)	-- Engine TIT (Exhaust Gas Temp)
	ExportScript.Tools.SendData(51061, EIGff)	-- Engine Fuel Flow
end


function ExportScript.engOilPressure(mainPanelDevice)
	local rOilPress = mainPanelDevice:get_argument_value(1065) * 90 -- Right Engine Oil Pressure
	local lOilPress = mainPanelDevice:get_argument_value(1066) * 90 -- Left Engine Oil Pressure
	ExportScript.Tools.SendData(51065, "L " .. string.format("%d", lOilPress) .. " psi\nEng. Oil\n" .. "R " .. string.format("%d", rOilPress) .. " psi")
end


function ExportScript.engNozzle(mainPanelDevice) -- Engine Nozzle position gauge (tape) ------------------------------------------------
	local lNoz = tonumber(string.format("%.1f", mainPanelDevice:get_argument_value(1068) * 5))
	local rNoz = tonumber(string.format("%.1f", mainPanelDevice:get_argument_value(1067) * 5))
	local a = 5
	local b = 0
	local buildDisplay = "Exh. Nozz.\n"
	repeat
		b = a - 0.5
		buildDisplay = buildDisplay .. (a - 1)
		if lNoz >= a then buildDisplay = buildDisplay .. "    █    " elseif lNoz >= b then buildDisplay = buildDisplay .. "    ▄    " else	buildDisplay = buildDisplay .. "    _    "	end
		if rNoz >= a then buildDisplay = buildDisplay .. "█" elseif rNoz >= (a - 0.5) then buildDisplay = buildDisplay .. "▄" else buildDisplay = buildDisplay .. "_" end
		buildDisplay = buildDisplay .. "\n"
		a = a - 1
	until( a < 1 )
	ExportScript.Tools.SendData(51068, buildDisplay)
end


function ExportScript.hydPressGauge(mainPanelDevice) -- Hydraulic pressure indicator A3 ------------------------------------------------
	local hydComb = string.format("%d", (mainPanelDevice:get_argument_value(1063) * 4000))
	local hydFlt = string.format("%d", (mainPanelDevice:get_argument_value(1064) * 4000))
	local spoilFlag = ExportScript.onff(mainPanelDevice:get_argument_value(1023))
	local hiFlag = ExportScript.onff(mainPanelDevice:get_argument_value(1024))
	local lowFlag = ExportScript.onff(mainPanelDevice:get_argument_value(1025))
	local hydPressGauge = "HYD PRESS\n" .. "C. " .. hydComb .. " psi\nF. " .. hydFlt .. " psi\n\n" .. spoilFlag .. "|" .. hiFlag .. "|" .. lowFlag
	ExportScript.Tools.SendData(51063, hydPressGauge)
	local hydPressFlags = "HYD PR. psi\nComb | Flight\n" .. hydComb .. " | " .. hydFlt .. "\n Spo /  HI  / LW\n" .. spoilFlag .. " | " .. hiFlag .. " | " .. lowFlag
	ExportScript.Tools.SendData(51023, hydPressFlags)
end


function ExportScript.clockAndTimer(mainPanelDevice) -- Clock and timer on panel A9 ----------------------------------------------------
	local minutes = string.format("%d", mainPanelDevice:get_argument_value(1097) * 60)
	if string.len(minutes) < 2 then
		minutes = "0" .. minutes
	end
	local timerMinutes = string.format("%d", mainPanelDevice:get_argument_value(2000) * 60)
	local timerSeconds = string.format("%d", mainPanelDevice:get_argument_value(1098) * 60)
	local clockNTimer = "Clock\n" .. string.format("%d", mainPanelDevice:get_argument_value(1096) * 12) .. string.char(32) .. minutes .. "\nTimer\n" .. timerMinutes .. "m " .. timerSeconds .. "s"
	ExportScript.Tools.SendData(51096, clockNTimer)
end


function ExportScript.displayAccel(mainPanelDevice) -- Accelerometer gauge formatted ---------------------------------------------------
	-- Accelerometer Gauge A9
	local needle = ExportScript.displayAccelCheckValue(mainPanelDevice:get_argument_value(110))
	local needlePos = ExportScript.displayAccelCheckValue(mainPanelDevice:get_argument_value(15076))
	local needleNeg = ExportScript.displayAccelCheckValue(mainPanelDevice:get_argument_value(15077))
	accelGauge = "Accel.G\n+" .. string.format("%.1f", needlePos) .. " G\n-|  " .. string.format("%.1f", needle) .. " G  |-\n" ..  string.format("%.1f", needleNeg) .. " G"
	ExportScript.Tools.SendData(50110, accelGauge)
end

function ExportScript.displayAccelCheckValue(accelValue) -- Called from ExportScript.displayAccel() ------------------------------------
	if accelValue >= 0 then
		return accelValue * 10
	elseif accelValue < 0 then
		return accelValue * 5
	end
end


function ExportScript.displayFuel(mainPanelDevice) -- Fuel Gauges and output on A9 and B7 ----------------------------------------------
--[[FUEL Exports Formatted
	
	NOTE: In case you are wondering to the weird methodology used below to derive fuel totals, I'll try to explain.
	A combination of how the f-14 module is using this fuel data (e.g. 0.9 might mean 900 lbs, 0.0 would mean 000 lbs and 1.0 would mean 000 lbs
	also which effects the total if you use math to add them all together, so we can't use a simple method)
	Essentially DCS gives you the fuel dial position rather than the actual fuel available. Although this sounds like the same value, it is not.
	And also playing into this is the non-existance of certain math functions in lua language like concatenation or rounding. You need to convert
	to string and back which is slow

	Because of this (not fully explained) it will create strange output for the total fuel when it rolls between whole values e.g. 15000 to 14900.
	So instead we convert them to strings right away and extract the portion of the string (3'rd charachter) that is always correct
	(e.g. 1.0 is always 0 and 0.0 is also 0 and 0.4 is 4 etc...)

	we then take the 10k, 1k, 100's etc.. 3'rd charachter and combine them like 15000
	There is still a strange behaviour at first site that is exhibited, that is not so strange once explained:
	When rolling over from 15000 to 14900, it will show 15000, then 15900 for a second or two, and then 14900. The reason is that the hundreds dial
		on the f-14 rolls quicker than the thousands dial therefore getting updated first instead of at the same time.
	the above strange behaviour cannot be corrected unless there is a variable that stores the total fuel value instead of the fuel cockpit dial
	value which are two different things. (In my experience most dcs mods only give you access to the latter)
	Therefore, we first concatenate the number to 0.X by converting it to a string and formatting it as such, and then extract the 3'rd character
	(I get it, nasty work around, If you have a better solution I'd love to hear it.)
	
]]
	local aftAndL = string.format("%d", mainPanelDevice:get_argument_value(1054) * 7000)
	local fwdAndR = string.format("%d", mainPanelDevice:get_argument_value(1055) * 7000)
	local RIOFuel = string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(2117)), 3, 3) .. string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(2118)), 3, 3) .. string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(2119)), 3, 3) .. "00"
	local leftFuel = string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(6000)), 3, 3) .. string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(6001)), 3, 3) .. "00"
	local rightFuel = string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(6004)), 3, 3) .. string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(6005)), 3, 3) .. "00"
	local totalFuel = string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(6010)), 3, 3) .. string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(6011)), 3, 3) .. string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(6012)), 3, 3) .. "00"
	local bingoFuel = string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(6020)), 3, 3) .. string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(6021)), 3, 3) .. string.sub(string.format("%.1f", mainPanelDevice:get_argument_value(6022)), 3, 3) .. "00"

	ExportScript.Tools.SendData(51054, "AFT & L\n" .. aftAndL .. "\nLBS")
	ExportScript.Tools.SendData(51055, "FWD & R\n" .. fwdAndR .. "\nLBS")
	ExportScript.Tools.SendData(52117, "TOTAL\nFUEL QTY\n" .. RIOFuel .. "\nLBS")	-- Return Total RIO Fuel Qty Formatted like F-14 Gauge
	ExportScript.Tools.SendData(56000, "L\n" .. leftFuel)							-- Return Total Left Fuel Qty Formatted like F-14 Gauge
	ExportScript.Tools.SendData(56004, "R\n" .. rightFuel)							-- Return Total Right Fuel Qty Formatted like F-14 Gauge
	ExportScript.Tools.SendData(56010, "FUEL\n" .. totalFuel .. "\nQTY")			-- Return Total Fuel Qty Formatted like F-14 Gauge
	ExportScript.Tools.SendData(56020, "BINGO\n" .. bingoFuel)						-- Return Total Bingo Fuel Qty Formatted like F-14 Gauge
	ExportScript.Tools.SendData(56024, "BINGO " .. bingoFuel .. "\nTOTAL " .. totalFuel .. "\n" .. aftAndL .. "  |  " .. fwdAndR .. "\n   L    |    R   \n" .. leftFuel .. "  |  " .. rightFuel)  -- Nice Multi Gauge
end