--[[
	ease_comp.lua
	@analogue1337
]]

local ease_common = require("ease_common")
local comp={}

comp.easing=function(num,ratio,st,ed,hoge)
	if num > 0 then
            if 0 < num and num <= 41 then
                  return ease_common.auto(ratio, st, ed, -num)
            else
                  return ease_common.auto(ratio, st, ed, num)
            end
      end
end

return comp