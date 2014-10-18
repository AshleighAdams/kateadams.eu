local template = include("template.lua")

local kateadams = hosts.get("kateadams.eu")
local self = hosts.get("self.kateadams.eu")

local function add(...)
	kateadams:add(...)
	self:add(...)
end

local function index(req, res)
	local contents = {
		
		template:section("Projects"),
			
			template:project("LuaServer", tags.div
				{
					[[A complete HTTP web server written entirley in Lua.]]
				},
				{
					title = "Source",
					info = "GitHub",
					url = "http://github.com/KateAdams/LuaServer"
				},
				{ title = "Language", info = "Lua" },
				{ title = "State", info = "Active" }
			),
			
			template:project("Consor", tags.div
				{
					[[A modern replacement to ncurses.  Provides object orientated C++ code to create CLI-based user interfaces.]]
				},
				{ title = "Source", info = "GitHub", url = "http://github.com/KateAdams/Consor" },
				{ title = "Language", info = "C++" },
				{ title = "State", info = "Active" },
				{ title = "Documentation", info = "Doxygen", url = "Consor/Doxygen/index.html" }
			),
			
			template:project("lua-consor", tags.div
				{
					[[Lua bindings to Consor.]]
				},
				{ title = "Source", info = "GitHub", url = "http://github.com/KateAdams/lua-consor" },
				{ title = "Language", info = "Lua, C++" },
				{ title = "State", info = "Active" }
			),
			
			template:project("lua-pty", tags.div
				{
					[[A Lua binding to Linux's forkpty() functions, enabling the ability to write a terminal emulator in Lua.]]
				},
				{ title = "Source", info = "GitHub", url = "http://github.com/KateAdams/lua-pty" },
				{ title = "Language", info = "Lua, C++" },
				{ title = "State", info = "Idle" }
			),
			
			template:project("Configor", tags.div
				{
					[[Lightweight configuration format.  Similar to Valve's KeyValues.]],
					tags.div { class = "code" }
					{
[[
"Window Information"
{
	"X" "100"
	"Y" "50"
	"Width" "75"
	"Height" "75"
}

// C++/C#
int x = cfg["Window Information"]["X"].GetValue<int>(0);
-- Lua
local x = cfg["Window Information"].X:value(0)
]]
					}
				},
				{ title = "Source", info = "GitHub", url = "http://github.com/KateAdams/Configor" },
				{ title = "Language", info = "Lua, C++, C#" },
				{ title = "State", info = "Idle" }
			),
		
		
		template:section("Contact & Links"),
		tags.div { class = "contacts", style = "padding-bottom: 10px;" }
		{
			template:contact("Steam",    "c0bra61",            "http://steamcommunity.com/id/c0bra61"),
			template:contact("XMPP",     "self@kateadams.eu",  "xmpp://self@kateadams.eu"),
			template:contact("Email",    "self@kateadams.eu",  "mailto:self@kateadams.eu"),
			template:contact("IRC",      "Freenode / Kobra",   "irc://irc.freenode.net/Kobra,isnick"),
			
			template:contact("GitHub",   "KateAdams",          "http://github.com/KateAdams"),
			template:contact("YouTube",  "GlitchesofWar",      "http://youtube.com/GlitchesofWar"),
			template:contact("Reddit",   "c0bra51",            "http://reddit.com/u/c0bra51"),
			template:contact(),
			
		}
	}	
	template:make(res, contents)
end

add("/", index)

