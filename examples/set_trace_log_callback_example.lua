-- Written by Rabia Alhaffar in 18/August/2020
-- Example to learn how to use SetTraceLogCallback
local rl = require("raylib")

rl.SetTraceLogCallback(function(level, text)
  print(level, text)
end)