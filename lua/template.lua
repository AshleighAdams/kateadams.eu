local function escape_section(sect)
	sect = sect:gsub("&", "and")
	sect = sect:gsub(" ", "-")
	return sect:lower()
end

return {
	make = function(self, res, content)
		content = content or {}
		
		res:append("<!DOCTYPE html>\n") -- tell them HTML is incoming
		
		local template = tags.html
		{
			tags.head
			{
				tags.meta { charset = "utf-8" },
				tags.title { "Kate Adams" },
				tags.script { src = "//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" },
				tags.script { src = "/script.js" },
				tags.link { href = "//fonts.googleapis.com/css?family=Open+Sans:300,600", rel = "stylesheet", type="text/css" },
				tags.link { href = "/style.css", rel = "stylesheet", type="text/css" }
			},
			tags.body { class = "slide" }
			{
				tags.header
				{
					tags.h1 { "Kate Adams" },
					--<div class="menu"><a href="#">Home</a></div>
					--<div class="menu"><a href="#">Contact & Links</a></div>
				},
				tags.main { class = "slide wrapper" }
				{
					tags.div { class = "content window slide" }
					{
						unpack(content)
					},
					tags.footer
					{
						tags.div { class = "footer" }
						{
							tags.NOESCAPE,
							"&copy; 2014 Kate Adams"
						}
					}
				}
			}
		}
	
		template.to_response(res)
	end,
	section = function(self, contents)		
		local safelink = escape_section(contents)
		local hashed = "#" .. safelink
		
		return tags.div { class = "slide window section" }
		{
			tags.h3
			{
				tags.a { href = "#" .. safelink, id = safelink }
				{
					contents
				}
			}
		}
	end,
	contact = function(self, name, user, url, shadow)
		local style
		if shadow == false then
			style = "box-shadow: none;"
		end
		
		local main = tags.div { class = "slide contact", style = style }
		{
			tags.div { class = "contact_in" }
			{
				tags.h5 { name or "\t" },
				user or "\t"
			}
		}
		
		if url ~= nil then
			return tags.a { href = url, target = "new" }
			{
				main
			}
		else
			return main
		end
	end,
	project = function(self, name, body, ...)
		local links_elms = {}
		local links = {...}
		
		if #links ~= 0 then
			local to = math.ceil(#links / 4) * 4
			for i = 1, to do
				local v = links[i] or {}
				table.insert(links_elms, self:contact(v.title, v.info, v.url, false))
			end
		end
		
		return tags.div { class = "slide project" }
		{
			tags.div { class = "project_in" }
			{
				tags.div { class = "project_header" } { name },
				tags.div { class = "project_body" }
				{
					body,
					tags.div { class = "contacts", style = "" }
					{
						unpack(links_elms)
					}
				}
			}
		}
	end
}
