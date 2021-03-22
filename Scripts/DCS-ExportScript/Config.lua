-- Ikarus and D.A.C. Export Script
--
-- Config File
--
-- Copyright by Michael aka McMicha 2014
-- Contact dcs2arcaze.micha@farbpigmente.org

ExportScript.Config = {}
ExportScript.Version.Config = "1.2.1"

-- Ikarus a Glass Cockpit Software
ExportScript.Config.IkarusExport    = true         -- false for not use
ExportScript.Config.IkarusHost      = "127.0.0.1"  -- IP for Ikarus
ExportScript.Config.IkarusPort      = 1725         -- Port Ikarus (1625)
ExportScript.Config.IkarusSeparator = ":"

-- D.A.C. (DCS Arcaze Connector)
ExportScript.Config.DACExport        = false        -- true for use
ExportScript.Config.DAC              = {}
-- first hardware
ExportScript.Config.DAC[1]           = {}
ExportScript.Config.DAC[1].Host      = "127.0.0.1" -- IP for hardware 1
ExportScript.Config.DAC[1].SendPort  = 26026       -- Port for hardware 1
ExportScript.Config.DAC[1].Separator = ":"
-- secound to n hardware
--ExportScript.Config.DAC[2]           = {}
--ExportScript.Config.DAC[2].Host      = "127.0.0.1" -- IP for hardware 2
--ExportScript.Config.DAC[2].SendPort  = 9092        -- Port for hardware 2
--ExportScript.Config.DAC[2].Separator = ":"

-- Ikarus and D.A.C. can data send
ExportScript.Config.Listener         = true         -- false for not use
ExportScript.Config.ListenerPort     = 26027        -- Listener Port for D.A.C.

-- Other
ExportScript.Config.ExportInterval         = 0.05	-- export evry 0.05 secounds
ExportScript.Config.ExportLowTickInterval  = 0.1	-- export evry 0.1 secounds
ExportScript.Config.LogPath                = lfs.writedir()..[[Logs\Export.log]]
ExportScript.Config.ExportModulePath       = lfs.writedir()..[[Scripts\DCS-ExportScript\ExportsModules\]]
ExportScript.Config.Debug                  = false
ExportScript.Config.SocketDebug            = false
ExportScript.Config.FirstNewDataSend       = true
ExportScript.Config.FirstNewDataSendCount  = 100