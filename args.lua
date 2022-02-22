io.write('Content-Type:text/plain\r\n')
io.write('\r\n')

local qs = os.getenv('QUERY_STRING')
local qsp = require('parser')
local args = qsp.parse(qs)

local x = tonumber(args['a'])
local y = tonumber(args['b'])

local z = x + y

print('a = ' .. x)
print('b = ' .. y)
print('a + b = ' .. z)
