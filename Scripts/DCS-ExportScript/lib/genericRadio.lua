-- Ikarus and D.A.C. Export Script
-- Version 1.0.2
--
-- generic Radio File
--
-- Copyright by Michael aka McMicha 2014
-- Contact dcs2arcaze.micha@farbpigmente.org

--[[
-- Config and execute in function ExportScript.ProcessDACConfigLowImportance()

-- genericRadioConf for example A-10C Radio AN/ARC-164 UHF
	ExportScript.genericRadioConf = {}
	ExportScript.genericRadioConf['maxRadios'] = 1                       -- numbers of aviables/supported radios
	ExportScript.genericRadioConf[1] = {}                                -- first radio
	ExportScript.genericRadioConf[1]['Name'] = "AN/ARC-164 UHF"          -- name of radio
	ExportScript.genericRadioConf[1]['DeviceID'] = 54                    -- DeviceID for GetDevice from device.lua
	ExportScript.genericRadioConf[1]['setFrequency'] = true              -- change frequency active
	ExportScript.genericRadioConf[1]['FrequencyMultiplicator'] = 1000000 -- multiplicator from Hz to MHz
	ExportScript.genericRadioConf[1]['FrequencyFormat'] = "%7.3f"        -- frequency view format LUA style
	ExportScript.genericRadioConf[1]['FrequencyStep'] = 25               -- minimal step for frequency change
	ExportScript.genericRadioConf[1]['minFrequency'] = 220.000           -- lowest frequency
	ExportScript.genericRadioConf[1]['maxFrequency'] = 314.450           -- highest frequency
	ExportScript.genericRadioConf[1]['Power'] = {}                       -- power button active
	ExportScript.genericRadioConf[1]['Power']['ButtonID'] = 3008         -- power button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Power']['ValueOn'] = 0.1           -- power on value from cklickable.lua
	ExportScript.genericRadioConf[1]['Power']['ValueOff'] = 0.0          -- power off value from cklickable.lua
	ExportScript.genericRadioConf[1]['Volume'] = {}                      -- volume knob active
	ExportScript.genericRadioConf[1]['Volume']['ButtonID'] = 3011        -- volume button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Preset'] = {}                      -- preset knob active
	ExportScript.genericRadioConf[1]['Preset']['ArgumentID'] = 161       -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[1]['Preset']['ButtonID'] = 3001        -- preset button id from cklickable.lua
--	ExportScript.genericRadioConf[1]['Preset']['ButtonID2'] = 3002       -- preset button id from cklickable.lua
	-- Preset based on switchlogic on clickabledata.lua
	ExportScript.genericRadioConf[1]['Preset']['List'] = {[0.0]="01",[0.05]="02",[0.10]="03",[0.15]="04",[0.20]="05",[0.25]="06",[0.30]="07",[0.35]="08",[0.40]="09",[0.45]="10",[0.50]="11",[0.55]="12",[0.60]="13",[0.65]="14",[0.70]="15",[0.75]="16",[0.80]="17",[0.85]="18",[0.90]="19",[0.95]="20",[1.00]="01"}
	ExportScript.genericRadioConf[1]['Preset']['Step'] = 0.05            -- minimal step for preset change
--	ExportScript.genericRadioConf[1]['Preset']['Step2'] = -0.05          -- minimal step for preset change
	ExportScript.genericRadioConf[1]['Squelch'] = {}                     -- squelch switch active
	ExportScript.genericRadioConf[1]['Squelch']['ArgumentID'] = 170      -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ButtonID'] = 3010       -- squelch button id from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ValueOn'] = 0.0         -- squelch on value from cklickable.lua
	ExportScript.genericRadioConf[1]['Squelch']['ValueOff'] = 1.0        -- squelch off value from cklickable.lua
	ExportScript.genericRadioConf[1]['Load'] = {}                        -- load button preset
	ExportScript.genericRadioConf[1]['Load']['ButtonID'] = 3015          -- load button id from cklickable.lua
	ExportScript.genericRadioConf[1]['ManualPreset'] = {}                -- switch manual or preset active
	ExportScript.genericRadioConf[1]['ManualPreset']['ArgumentID'] = 167 -- ManualPreset argument id from cklickable.lua
	ExportScript.genericRadioConf[1]['ManualPreset']['ButtonID'] = 3007  -- ManualPreset button id from cklickable.lua
	ExportScript.genericRadioConf[1]['ManualPreset']['ValueManual'] = 0.0-- ManualPreset Manual value from cklickable.lua
	ExportScript.genericRadioConf[1]['ManualPreset']['ValuePreset'] = 0.1-- ManualPreset Preset value from cklickable.lua

...

ExportScript.genericRadio(nil, nil)]]

function ExportScript.genericRadio(key, value)
--ExportScript.Tools.WriteToLog('genericRadioConf: '..ExportScript.Tools.dump(ExportScript.genericRadioConf))
	if type(ExportScript.genericRadioConf) ~= "table" then
		ExportScript.Tools.WriteToLog("No Radio defined.")
		return
	end

	local lRotaryFrequency_1, lRotaryFrequency_2, lVolume, lPreset, lLoad, lSquelch, lManualPreset, lPower, lDevice, lClickAction, lSetFrequency = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
	local lMainPanelDevice = GetDevice(0)
	
	if ExportScript.AF.genericRadio == nil then
		ExportScript.AF.genericRadio = 0
	end
	if ExportScript.AF.genericRadioFrequency1 == nil then
		ExportScript.AF.genericRadioFrequency1 = 0.0
	end
	if ExportScript.AF.genericRadioFrequency2 == nil then
		ExportScript.AF.genericRadioFrequency2 = 0.0
	end
	if ExportScript.AF.genericRadioPower == nil then
		ExportScript.AF.genericRadioPower = {}
	end
	if ExportScript.AF.genericRadioPresetManual == nil then
		ExportScript.AF.genericRadioPresetManual = {}
	end
	if ExportScript.AF.genericRadioSquelch == nil then
		ExportScript.AF.genericRadioSquelch = {}
	end
	if ExportScript.AF.genericRadioPreset == nil then
		ExportScript.AF.genericRadioPreset = {}
	end

	if key == "3001" then
		ExportScript.AF.genericRadio = tonumber(value)
	end
	if key == "3002" then
		lRotaryFrequency_1 = tonumber(value)
	end
	if key == "3003" then
		lRotaryFrequency_2 = tonumber(value)
	end
	if key == "3004" then
		lVolume = tonumber(value)
	end
	if key == "3005" then
		lPreset = tonumber(value)
	end
	if key == "3006" then
		lLoad = tonumber(value)
	end
	if key == "3007" then
		lSquelch = tonumber(value)
	end
	if key == "3008" then
		lManualPreset = tonumber(value)
	end
	if key == "3009" then
		lPower = tonumber(value)
	end

	local lPresetChannelFrequency	= "-" -- ID 3000
	local lPresetChannel			= "-" -- ID 3001
	local lFrequency				= "-" -- ID 3002

	if ExportScript.AF.genericRadio == 0 or ExportScript.AF.genericRadio > ExportScript.genericRadioConf['maxRadios'] then
		if ExportScript.AF.genericRadio ~= 0 then
			ExportScript.Tools.WriteToLog("Radio Nr. "..ExportScript.AF.genericRadio.." not defined.")
		end
		ExportScript.Tools.SendDataDAC("3000", lPresetChannelFrequency)
		ExportScript.Tools.SendDataDAC("3001", lPresetChannel)
		ExportScript.Tools.SendDataDAC("3002", lFrequency)
		ExportScript.Tools.SendDataDAC("3010", 0)
		ExportScript.Tools.SendDataDAC("3011", 0)
		ExportScript.Tools.SendDataDAC("3012", 0)
		ExportScript.Tools.SendDataDAC("3013", 0)
		return
	end

	---------------------------------------------------
	local lRADIO = GetDevice(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['DeviceID'])

	-- check status of the radio
	if ExportScript.AF.genericRadioPower[ExportScript.AF.genericRadio] == nil then
		if lRADIO:is_on() then
			ExportScript.AF.genericRadioPower[ExportScript.AF.genericRadio] = 1.0
		else
			ExportScript.AF.genericRadioPower[ExportScript.AF.genericRadio] = 0.0
		end
	end

	-- check Manual/Preset switch
	if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['ManualPreset'] ~= nil then
   		if ExportScript.AF.genericRadioPresetManual[ExportScript.AF.genericRadio] == nil then
   			ExportScript.AF.genericRadioPresetManual[ExportScript.AF.genericRadio] = ((ExportScript.Tools.round(lMainPanelDevice:get_argument_value(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['ManualPreset']['ArgumentID']), 1) == ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['ManualPreset']['ValueOn']) and 1 or 0)
   		end
	else
		ExportScript.AF.genericRadioPresetManual[ExportScript.AF.genericRadio] = 0
	end

	-- check Squelch switch
	if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Squelch'] ~= nil then
		if ExportScript.AF.genericRadioSquelch[ExportScript.AF.genericRadio] == nil then
			ExportScript.AF.genericRadioSquelch[ExportScript.AF.genericRadio] = ((ExportScript.Tools.round(lMainPanelDevice:get_argument_value(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Squelch']['ArgumentID']), 1) == ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Squelch']['ValueOn']) and 1 or 0)
		end
	else
		ExportScript.AF.genericRadioSquelch[ExportScript.AF.genericRadio] = 0
	end

	if ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] == nil then
		ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] = 0
	end

	if lRADIO:is_on() then
		if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset'] ~= nil then
			--lPresetChannel = string.format("%s", ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['List'][ExportScript.Tools.round(lMainPanelDevice:get_argument_value(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['ArgumentID']), 2)])
			--ExportScript.Tools.WriteToLog('Preset index: '..ExportScript.Tools.dump(ExportScript.Tools.round(lMainPanelDevice:get_argument_value(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['ArgumentID']), string.match(string.reverse(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['Step']), '.'))))
			lPresetChannel = string.format("%s", ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['List'][ExportScript.Tools.round(lMainPanelDevice:get_argument_value(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['ArgumentID']), string.match(string.reverse(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['Step']), '.'))])
		end

		lFrequency = ExportScript.Tools.round(lRADIO:get_frequency()/ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['FrequencyMultiplicator'] , 3, "floor")
		lFrequency = string.format(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['FrequencyFormat'], lFrequency)

		lPresetChannelFrequency = string.format("%s%s", lPresetChannel, lFrequency)
		lPresetChannelFrequency = lPresetChannelFrequency:gsub(" ", "0")
		lPresetChannelFrequency = lPresetChannelFrequency:gsub("-", "")
--ExportScript.Tools.WriteToLog('lPresetChannel: '..ExportScript.Tools.dump(lPresetChannel))
--ExportScript.Tools.WriteToLog('lFrequency: '..ExportScript.Tools.dump(lFrequency))
--ExportScript.Tools.WriteToLog('lPresetChannelFrequency: '..ExportScript.Tools.dump(lPresetChannelFrequency))
		-- setFrequency == true
		if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['setFrequency'] then
			-- minimal frequency, for example lMinFrequency1=220, lMinFrequency2=0 from 220.000
			local lMinFrequency1, lMinFrequency2 = math.modf(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['minFrequency'])
			lMinFrequency2 = lMinFrequency2 * 1000
			-- maximal frequency, for example lMaxFrequency1=314, lMaxFrequency2=975 from 314.975
			local lMaxFrequency1, lMaxFrequency2 = math.modf(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['maxFrequency'])
			lMaxFrequency2 = lMaxFrequency2 * 1000

			if lRotaryFrequency_1 ~= nil and (lRotaryFrequency_1 >= 0.0 and lRotaryFrequency_1 <= 2.0) then

				local lTmpFrequency = ExportScript.Tools.StrSplit(lFrequency, "%.")  -- %. um den Punkt als Punkt zu suchen

				if type(lTmpFrequency) == "table" and lTmpFrequency[1] ~= nil then
					lTmpFrequency[1] = tonumber(lTmpFrequency[1])
					if lTmpFrequency[2] == nil then
						lTmpFrequency[2] = 0
					else
						lTmpFrequency[2] = tonumber(lTmpFrequency[2])
						local ltmp = string.format("%.0f", lTmpFrequency[2] / ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['FrequencyStep'])
						lTmpFrequency[2] = ltmp * ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['FrequencyStep']
					end
					if lRotaryFrequency_1 < ExportScript.AF.genericRadioFrequency1 or lRotaryFrequency_1 == 0.0 or lRotaryFrequency_1 == 2.0 then
						lTmpFrequency[1] = lTmpFrequency[1] - 1
						if lTmpFrequency[1] == (lMinFrequency1 - 1) then
							lTmpFrequency[1] = lMaxFrequency1
						end
						ExportScript.AF.genericRadioFrequency1 = lRotaryFrequency_1
					else
						lTmpFrequency[1] = lTmpFrequency[1] + 1
						if lTmpFrequency[1] == (lMaxFrequency1 + 1) then
							lTmpFrequency[1] = lMinFrequency1
						end
						ExportScript.AF.genericRadioFrequency1 = lRotaryFrequency_1
					end

					lTmpFrequency[2] = string.format("%.3f", lTmpFrequency[2] / 1000)
					lTmpFrequency = string.format("%.3f", lTmpFrequency[1] + lTmpFrequency[2])
					lTmpFrequency = tonumber(lTmpFrequency)
					lSetFrequency = {DeviceID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['DeviceID'],
									 Frequency = lTmpFrequency * 1000000}

				else
					ExportScript.Tools.WriteToLog("1. generic "..ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Name'].." Radio, don't split frequency: "..lFrequency)
				end
			end

			if lRotaryFrequency_2 ~= nil and (lRotaryFrequency_2 >= 0.0 and lRotaryFrequency_2 <= 2.0) then

				local lTmpFrequency = ExportScript.Tools.StrSplit(lFrequency, "%.")

				if type(lTmpFrequency) == "table" and lTmpFrequency[1] ~= nil then
					lTmpFrequency[1] = tonumber(lTmpFrequency[1])
					if lTmpFrequency[2] == nil then
						lTmpFrequency[2] = 0
					else
						lTmpFrequency[2] = tonumber(lTmpFrequency[2])
						local ltmp = string.format("%.0f", lTmpFrequency[2] / ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['FrequencyStep'])
						lTmpFrequency[2] = ltmp * ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['FrequencyStep']
					end
					if lRotaryFrequency_2 < ExportScript.AF.genericRadioFrequency2 or lRotaryFrequency_2 == 0.0 or lRotaryFrequency_2 == 2.0 then
						lTmpFrequency[2] = lTmpFrequency[2] - ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['FrequencyStep']
						if lTmpFrequency[2] == (ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['FrequencyStep'] * -1) then
							lTmpFrequency[2] = lMaxFrequency2
						end
						ExportScript.AF.genericRadioFrequency2 = lRotaryFrequency_2
					else
						lTmpFrequency[2] = lTmpFrequency[2] + ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['FrequencyStep']
						if lTmpFrequency[2] == (lMaxFrequency2 + ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['FrequencyStep']) then
							lTmpFrequency[2] = 0
						end
						ExportScript.AF.genericRadioFrequency2 = lRotaryFrequency_2
					end

					lTmpFrequency[2] = string.format("%.3f", lTmpFrequency[2] / 1000)
					lTmpFrequency = string.format("%.3f", lTmpFrequency[1] + lTmpFrequency[2])
					lTmpFrequency = tonumber(lTmpFrequency)
					lSetFrequency = {DeviceID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['DeviceID'],
									 Frequency = lTmpFrequency * 1000000}

				else
					ExportScript.Tools.WriteToLog("2. generic "..ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Name'].." Radio, don't split frequency: "..lFrequency)
				end
			end
		end

		if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset'] ~= nil then
			if lPreset ~= nil and (lPreset >= 0.0 and lPreset <= 2.0) then
				if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['ButtonID2'] == nil and ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['Step2'] == nil then
					local lTempPresetKeys = {}
					for k,v in pairs(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['List']) do
						table.insert(lTempPresetKeys, k)
					end

					local lMinKey = math.min(unpack(lTempPresetKeys))
					local lMaxKey = math.max(unpack(lTempPresetKeys))

					if lPreset > ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] then
						ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] = ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] + ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['Step']
						if ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] > lMaxKey then
							ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] = lMinKey
						end
					else
						ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] = ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] - ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['Step']
						if ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] < lMinKey then
							ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] = lMaxKey
						end
					end
					lClickAction = {DeviceID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['DeviceID'],
									ButtonID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['ButtonID'],
									Value    = ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio]}
				else
					if lPreset < ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] or lPreset == 0.0 or lPreset == 2.0 then
						lClickAction = {DeviceID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['DeviceID'],
										ButtonID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['ButtonID'],
										Value    = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['Step']}
						ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] = lPreset
					else
						lClickAction = {DeviceID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['DeviceID'],
										ButtonID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['ButtonID2'],
										Value    = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Preset']['Step2']}
						ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] = lPreset
					end
					ExportScript.AF.genericRadioPreset[ExportScript.AF.genericRadio] = lPreset
				end
			end
		end
	end

	if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Volume'] ~= nil then
		if lVolume ~= nil and (lVolume >= 0.0 and lVolume <= 2.0) then
			lVolume = lVolume / 2
			lClickAction = {DeviceID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['DeviceID'],
							ButtonID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Volume']['ButtonID'],
							Value    = lVolume}
		end
	end

	if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Load'] ~= nil then
		if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Load']['ButtonID'] ~= nil then
			if lLoad ~= nil and (lLoad == 0.0 or lLoad <= 1.0) then
				lClickAction = {DeviceID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['DeviceID'],
								ButtonID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Load']['ButtonID'],
								Value    = lLoad}
			end
		end
	end

	if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Squelch']  ~= nil then
		if lSquelch ~= nil and (lSquelch == 0.0 or lSquelch <= 1.0) then
			if lSquelch == 1.0 and ExportScript.AF.genericRadioSquelch[ExportScript.AF.genericRadio] == 1.0 then
				-- Squelch off
				lSquelch = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Squelch']['ValueOff']
				ExportScript.AF.genericRadioSquelch[ExportScript.AF.genericRadio] = 0
			elseif lSquelch == 1.0 and ExportScript.AF.genericRadioSquelch[ExportScript.AF.genericRadio] == 0 then
				-- Squelch on
				lSquelch = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Squelch']['ValueOn']
				ExportScript.AF.genericRadioSquelch[ExportScript.AF.genericRadio] = 1.0
			end
			lClickAction = {DeviceID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['DeviceID'],
							ButtonID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Squelch']['ButtonID'],
							Value    = lSquelch}
		end
	end

	if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['ManualPreset']  ~= nil then
		if lManualPreset ~= nil and (lManualPreset == 0.0 or lManualPreset <= 1.0) then
			if lManualPreset == 1.0 and ExportScript.AF.genericRadioPresetManual[ExportScript.AF.genericRadio] == 1.0 then
				-- Manual
				lManualPreset = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['ManualPreset']['ValueManual']
				ExportScript.AF.genericRadioPresetManual[ExportScript.AF.genericRadio] = 0
			elseif lManualPreset == 1.0 and ExportScript.AF.genericRadioPresetManual[ExportScript.AF.genericRadio] == 0 then
				-- Preset
				lManualPreset = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['ManualPreset']['ValuePreset']
				ExportScript.AF.genericRadioPresetManual[ExportScript.AF.genericRadio] = 1.0
			end
			lClickAction = {DeviceID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['DeviceID'],
							ButtonID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['ManualPreset']['ButtonID'],
							Value    = lManualPreset}
		end
	end

	if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Power']  ~= nil then
		if lPower ~= nil and (lPower == 0.0 or lPower <= 1.0) then
			if lPower == 1.0 and ExportScript.AF.genericRadioPower[ExportScript.AF.genericRadio] == 1.0 then
				-- Power off
				lPower = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Power']['ValueOff']
				ExportScript.AF.genericRadioPower[ExportScript.AF.genericRadio] = 0
			elseif lPower == 1.0 and ExportScript.AF.genericRadioPower[ExportScript.AF.genericRadio] == 0 then
				--Power on
				lPower = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Power']['ValueOn']
				ExportScript.AF.genericRadioPower[ExportScript.AF.genericRadio] = 1.0
			end
			lClickAction = {DeviceID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['DeviceID'],
							ButtonID = ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Power']['ButtonID'],
							Value    = lPower}
		end
	end
	
	ExportScript.Tools.SendDataDAC("3000", lPresetChannelFrequency)
	ExportScript.Tools.SendDataDAC("3001", lPresetChannel)
	ExportScript.Tools.SendDataDAC("3002", lFrequency)
	ExportScript.Tools.SendDataDAC("3010", ExportScript.AF.genericRadioPower[ExportScript.AF.genericRadio])
	ExportScript.Tools.SendDataDAC("3011", ExportScript.AF.genericRadioPresetManual[ExportScript.AF.genericRadio])
	ExportScript.Tools.SendDataDAC("3012", ExportScript.AF.genericRadioSquelch[ExportScript.AF.genericRadio])
	-- is only for radios with a lamp for Load button, for example Ka-50 Load Button is Autotune with lamp
	if ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Load'] ~= nil and ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Load']['ArgumentID'] ~= nil then
		ExportScript.Tools.SendDataDAC("3013", lMainPanelDevice:get_argument_value(ExportScript.genericRadioConf[ExportScript.AF.genericRadio]['Load']['ArgumentID']))
	else
		ExportScript.Tools.SendDataDAC("3013", 0)
	end
	
	if lClickAction ~= nil then
		lDevice = GetDevice(lClickAction.DeviceID)
		if type(lDevice) == "table" then
			--ExportScript.Tools.WriteToLog("GetDevice("..lClickAction.DeviceID.."):performClickableAction("..lClickAction.ButtonID..", "..lClickAction.Value..") ")
			lDevice:performClickableAction(lClickAction.ButtonID, lClickAction.Value)
		end
	elseif lSetFrequency ~= nil then
		lDevice = GetDevice(lSetFrequency.DeviceID)
		if type(lDevice) == "table" and lDevice:is_on() then
			--ExportScript.Tools.WriteToLog("GetDevice("..lSetFrequency.DeviceID.."):set_frequency("..lSetFrequency.Frequency..") ")
			lDevice:set_frequency(lSetFrequency.Frequency)
		else
			ExportScript.Tools.WriteToLog("GetDevice("..lSetFrequency.DeviceID..") is no table or Radio is not on")
		end
	end
end