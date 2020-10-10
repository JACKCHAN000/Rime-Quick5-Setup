--[[
time_translator: 将 `time` 翻译为当前时间
--]]

local function translator(input, seg)
   if (input == "ztime") then
      yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), "[時間]"))
      yield(Candidate("time", seg.start, seg._end, os.date("%H時%M分%S秒"), "[時間]"))
   end
end

return translator
