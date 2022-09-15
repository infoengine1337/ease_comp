--[[
	ease_comp.lua
	@analogue1337
]]

local ease_common=require "ease_common"
local comp={}

comp.easing=function(num,ratio,st,ed,hoge)
	if num > 0 then
		local E = require("ease_common")
            if 0 < n and n <= 41 then
                  return E.auto(ratio, st, ed, -num)
            else
                  return E.auto(ratio, st, ed, num)
            end
      end
end