local old;
old = hookfunction(game.HttpGet, newcclosure(function(oldgame, url)
if url:find("pastebin") then
	url = url:gsub("pastebin", "pastebinp")
end
return old(oldgame, url)
end))
