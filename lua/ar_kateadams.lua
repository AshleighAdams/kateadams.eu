local template = include("template.lua")

local lorem_ipsum = [[
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan, sapien vel congue lobortis, ipsum mi tempus nunc, at dignissim dolor libero sit amet metus. Cras vestibulum dui eget cursus rhoncus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pretium vitae magna quis tincidunt. Nulla facilisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam fermentum vel turpis nec tempus. Proin eget molestie quam, vel feugiat dolor. Fusce eu hendrerit orci. Mauris dictum tincidunt metus vitae auctor. Mauris turpis diam, aliquam eget ornare ac, molestie sed risus.

Etiam ornare massa et facilisis viverra. Aliquam sed odio malesuada, sollicitudin leo laoreet, volutpat ante. Aenean porta diam id nisi condimentum commodo ut ac quam. Proin dui nunc, tempus sit amet viverra vitae, accumsan in orci. Quisque eu urna et mauris fermentum ullamcorper lobortis quis sem. Maecenas nisi ipsum, pharetra sit amet elit vel, bibendum volutpat dolor. Aliquam imperdiet eu metus vel dapibus. Morbi ullamcorper feugiat ligula, et lacinia diam. Cras ac magna sagittis, ultrices lacus vel, tincidunt tortor. Donec tincidunt felis et neque commodo lobortis. Curabitur vestibulum, mauris et varius iaculis, massa magna mollis tortor, sit amet fringilla sem sem ac mi. Etiam non magna ac urna gravida luctus a pharetra nibh.

Nunc rhoncus, erat mattis suscipit iaculis, justo sem malesuada metus, feugiat auctor felis tellus nec turpis. Vivamus tincidunt sagittis odio quis condimentum. Nulla non tristique augue. Vivamus vel ipsum est. Fusce vel feugiat massa, non vulputate eros. Ut orci enim, consectetur at sagittis a, lacinia sit amet neque. Maecenas quis volutpat sapien.

In facilisis sit amet sapien at lacinia. In vitae volutpat risus, quis placerat libero. Nullam est odio, pellentesque nec velit porttitor, interdum placerat diam. Vivamus facilisis, dolor et euismod aliquam, magna urna imperdiet urna, et rhoncus urna nisi sed ligula. Mauris vulputate mi quam, sed consectetur est gravida ut. Maecenas vehicula pulvinar laoreet. Suspendisse eget eros sed nulla euismod fermentum. Curabitur ipsum nisl, blandit sit amet molestie id, scelerisque id mi.

Donec at ante et diam scelerisque imperdiet. Donec ut nisl ullamcorper, commodo eros ut, molestie ipsum. Nunc in lorem ut nibh fringilla dictum. Donec laoreet diam ac facilisis ultrices. Suspendisse non justo viverra, suscipit enim vitae, dignissim lorem. Phasellus volutpat in nunc id molestie. Nunc ullamcorper ornare vehicula. Nullam ac sodales tellus, id interdum nulla. Quisque at velit commodo, dapibus tortor eu, rhoncus tortor.


Etiam ornare massa et facilisis viverra. Aliquam sed odio malesuada, sollicitudin leo laoreet, volutpat ante. Aenean porta diam id nisi condimentum commodo ut ac quam. Proin dui nunc, tempus sit amet viverra vitae, accumsan in orci. Quisque eu urna et mauris fermentum ullamcorper lobortis quis sem. Maecenas nisi ipsum, pharetra sit amet elit vel, bibendum volutpat dolor. Aliquam imperdiet eu metus vel dapibus. Morbi ullamcorper feugiat ligula, et lacinia diam. Cras ac magna sagittis, ultrices lacus vel, tincidunt tortor. Donec tincidunt felis et neque commodo lobortis. Curabitur vestibulum, mauris et varius iaculis, massa magna mollis tortor, sit amet fringilla sem sem ac mi. Etiam non magna ac urna gravida luctus a pharetra nibh.

Nunc rhoncus, erat mattis suscipit iaculis, justo sem malesuada metus, feugiat auctor felis tellus nec turpis. Vivamus tincidunt sagittis odio quis condimentum. Nulla non tristique augue. Vivamus vel ipsum est. Fusce vel feugiat massa, non vulputate eros. Ut orci enim, consectetur at sagittis a, lacinia sit amet neque. Maecenas quis volutpat sapien.

In facilisis sit amet sapien at lacinia. In vitae volutpat risus, quis placerat libero. Nullam est odio, pellentesque nec velit porttitor, interdum placerat diam. Vivamus facilisis, dolor et euismod aliquam, magna urna imperdiet urna, et rhoncus urna nisi sed ligula. Mauris vulputate mi quam, sed consectetur est gravida ut. Maecenas vehicula pulvinar laoreet. Suspendisse eget eros sed nulla euismod fermentum. Curabitur ipsum nisl, blandit sit amet molestie id, scelerisque id mi.

Etiam ornare massa et facilisis viverra. Aliquam sed odio malesuada, sollicitudin leo laoreet, volutpat ante. Aenean porta diam id nisi condimentum commodo ut ac quam. Proin dui nunc, tempus sit amet viverra vitae, accumsan in orci. Quisque eu urna et mauris fermentum ullamcorper lobortis quis sem. Maecenas nisi ipsum, pharetra sit amet elit vel, bibendum volutpat dolor. Aliquam imperdiet eu metus vel dapibus. Morbi ullamcorper feugiat ligula, et lacinia diam. Cras ac magna sagittis, ultrices lacus vel, tincidunt tortor. Donec tincidunt felis et neque commodo lobortis. Curabitur vestibulum, mauris et varius iaculis, massa magna mollis tortor, sit amet fringilla sem sem ac mi. Etiam non magna ac urna gravida luctus a pharetra nibh.

Nunc rhoncus, erat mattis suscipit iaculis, justo sem malesuada metus, feugiat auctor felis tellus nec turpis. Vivamus tincidunt sagittis odio quis condimentum. Nulla non tristique augue. Vivamus vel ipsum est. Fusce vel feugiat massa, non vulputate eros. Ut orci enim, consectetur at sagittis a, lacinia sit amet neque. Maecenas quis volutpat sapien.

In facilisis sit amet sapien at lacinia. In vitae volutpat risus, quis placerat libero. Nullam est odio, pellentesque nec velit porttitor, interdum placerat diam. Vivamus facilisis, dolor et euismod aliquam, magna urna imperdiet urna, et rhoncus urna nisi sed ligula. Mauris vulputate mi quam, sed consectetur est gravida ut. Maecenas vehicula pulvinar laoreet. Suspendisse eget eros sed nulla euismod fermentum. Curabitur ipsum nisl, blandit sit amet molestie id, scelerisque id mi.

Donec at ante et diam scelerisque imperdiet. Donec ut nisl ullamcorper, commodo eros ut, molestie ipsum. Nunc in lorem ut nibh fringilla dictum. Donec laoreet diam ac facilisis ultrices. Suspendisse non justo viverra, suscipit enim vitae, dignissim lorem. Phasellus volutpat in nunc id molestie. Nunc ullamcorper ornare vehicula. Nullam ac sodales tellus, id interdum nulla. Quisque at velit commodo, dapibus tortor eu, rhoncus tortor.


Etiam ornare massa et facilisis viverra. Aliquam sed odio malesuada, sollicitudin leo laoreet, volutpat ante. Aenean porta diam id nisi condimentum commodo ut ac quam. Proin dui nunc, tempus sit amet viverra vitae, accumsan in orci. Quisque eu urna et mauris fermentum ullamcorper lobortis quis sem. Maecenas nisi ipsum, pharetra sit amet elit vel, bibendum volutpat dolor. Aliquam imperdiet eu metus vel dapibus. Morbi ullamcorper feugiat ligula, et lacinia diam. Cras ac magna sagittis, ultrices lacus vel, tincidunt tortor. Donec tincidunt felis et neque commodo lobortis. Curabitur vestibulum, mauris et varius iaculis, massa magna mollis tortor, sit amet fringilla sem sem ac mi. Etiam non magna ac urna gravida luctus a pharetra nibh.

Nunc rhoncus, erat mattis suscipit iaculis, justo sem malesuada metus, feugiat auctor felis tellus nec turpis. Vivamus tincidunt sagittis odio quis condimentum. Nulla non tristique augue. Vivamus vel ipsum est. Fusce vel feugiat massa, non vulputate eros. Ut orci enim, consectetur at sagittis a, lacinia sit amet neque. Maecenas quis volutpat sapien.

In facilisis sit amet sapien at lacinia. In vitae volutpat risus, quis placerat libero. Nullam est odio, pellentesque nec velit porttitor, interdum placerat diam. Vivamus facilisis, dolor et euismod aliquam, magna urna imperdiet urna, et rhoncus urna nisi sed ligula. Mauris vulputate mi quam, sed consectetur est gravida ut. Maecenas vehicula pulvinar laoreet. Suspendisse eget eros sed nulla euismod fermentum. Curabitur ipsum nisl, blandit sit amet molestie id, scelerisque id mi.

Etiam ornare massa et facilisis viverra. Aliquam sed odio malesuada, sollicitudin leo laoreet, volutpat ante. Aenean porta diam id nisi condimentum commodo ut ac quam. Proin dui nunc, tempus sit amet viverra vitae, accumsan in orci. Quisque eu urna et mauris fermentum ullamcorper lobortis quis sem. Maecenas nisi ipsum, pharetra sit amet elit vel, bibendum volutpat dolor. Aliquam imperdiet eu metus vel dapibus. Morbi ullamcorper feugiat ligula, et lacinia diam. Cras ac magna sagittis, ultrices lacus vel, tincidunt tortor. Donec tincidunt felis et neque commodo lobortis. Curabitur vestibulum, mauris et varius iaculis, massa magna mollis tortor, sit amet fringilla sem sem ac mi. Etiam non magna ac urna gravida luctus a pharetra nibh.

Nunc rhoncus, erat mattis suscipit iaculis, justo sem malesuada metus, feugiat auctor felis tellus nec turpis. Vivamus tincidunt sagittis odio quis condimentum. Nulla non tristique augue. Vivamus vel ipsum est. Fusce vel feugiat massa, non vulputate eros. Ut orci enim, consectetur at sagittis a, lacinia sit amet neque. Maecenas quis volutpat sapien.

In facilisis sit amet sapien at lacinia. In vitae volutpat risus, quis placerat libero. Nullam est odio, pellentesque nec velit porttitor, interdum placerat diam. Vivamus facilisis, dolor et euismod aliquam, magna urna imperdiet urna, et rhoncus urna nisi sed ligula. Mauris vulputate mi quam, sed consectetur est gravida ut. Maecenas vehicula pulvinar laoreet. Suspendisse eget eros sed nulla euismod fermentum. Curabitur ipsum nisl, blandit sit amet molestie id, scelerisque id mi.

Donec at ante et diam scelerisque imperdiet. Donec ut nisl ullamcorper, commodo eros ut, molestie ipsum. Nunc in lorem ut nibh fringilla dictum. Donec laoreet diam ac facilisis ultrices. Suspendisse non justo viverra, suscipit enim vitae, dignissim lorem. Phasellus volutpat in nunc id molestie. Nunc ullamcorper ornare vehicula. Nullam ac sodales tellus, id interdum nulla. Quisque at velit commodo, dapibus tortor eu, rhoncus tortor.]]

local function index(req, res)
	local contents = {
		template:section("Some junk so you can scroll"),
		lorem_ipsum,
		
		template:section("Projects"),
		
			template:project("LuaServer", tags.div
			{
				[[A complete HTTP web server written entirley in Lua.]]
			}),
			
			template:project("lua-pty", tags.div
			{
				[[A Lua binding to Linux's forkpty() functions, enabling the ability to write a terminal emulator in Lua.]]
			}),
		
		template:section("Contact & Links"),
		tags.div { class = "contacts" }
		{
			template:contact("Steam",    "c0bra61",            "http://steamcommunity.com/id/c0bra61"),
			template:contact("Jabber",   "self@kateadams.eu",  "xmpp://self@kateadams.eu"),
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
reqs.AddPattern("*", "/", index)
