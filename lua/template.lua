
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
					tags.div { class = "content" }
					{
						unpack(content)
					},
					tags.footer
					{
						tags.div { class = "slide footer_bg" }
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
		}
	
		template.to_response(res)
	end,
	section = function(self, contents)
		return tags.div { class = "slide window section" }
		{
			tags.h3
			{
				contents
			}
		}
	end,
	contact = function(self, name, user, url)
		local main = tags.div { class = "slide contact" }
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
	end
}
