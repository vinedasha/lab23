local m = {}

function m.parse(txt)
	local t = {}

	while txt:len() > 0 do
		local i = txt:find('&')
		if i == nil then
			i = txt:len() + 1
		end

		local p = txt:sub(1, i - 1)
		txt = txt:sub(i + 1, txt:len())

		local s = p:find('=')
		if s ~= nil then
		local a = p:sub(1, s - 1)
		local b = p:sub(s + 1, p:len())

		t[a] = b
		end
	end
	
	return t
end

return m
