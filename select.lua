local drv = require('luasql.postgres')

local env = drv.postgres()

local con = env:connect('host=172.16.0.3 port=5432 dbname=test user=test password=test')

local cur = con:execute('SELCT x, y FROM test;')

while true do
	local row = cur:fetch({}, 'a')
	if row == nil then
		break
	end

	local x = row['x']
	local y = row['y']
	local z = x + y

	print(x, y, z)
end

cur:close()
con:close()
env:close()
