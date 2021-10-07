-- F-14B Export
-- Feel free to use, modify and repost in any way you desire.

ExportScript.FoundDCSModule = true
ExportScript.Version.F14B = "1.2.1"

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
	
	[1011] = "%1d",   -- HUD LDG Mode
	[1012] = "%1d",   -- HUD CRUISE Mode
	[1013] = "%1d",   -- HUD A/A Mode
	[1014] = "%1d",   -- HUD A/G Mode
	[1015] = "%1d",   -- HUD Takeoff Mode
}

ExportScript.ConfigArguments = 
{

}

function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
end
function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
end
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
end
function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
end
