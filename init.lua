dtime_debug = {}

minetest.register_globalstep(function(dtime)
	dtime_debug.last_dtime = dtime
	minetest.log("verbose","Last dtime is " .. tostring(dtime_debug.last_dtime))
end)

minetest.register_chatcommand("dtime_check",{
	privs = {server = true,},
	func = function(name,param)
		if not dtime_debug.last_dtime then
			return false, "No infomation about dtime!"
		end
		return true, "Last dtime is " .. tostring(dtime_debug.last_dtime)
	end,
})
