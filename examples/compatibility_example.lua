-- Example shows compatibility with raysan5 and robloach's bindings
-- It also can run in TSnake41's and Alexander Matz's bindings
-- Remove linking when you run this code in other bindings and uncomment line below
-- if not (type(rl) == "table" or type(rl) == "userdata") then setmetatable(_G, { __index = rl }) end
local rl = require("raylib")

local screenWidth = 800
local screenHeight = 450

InitWindow(screenWidth, screenHeight, "raylib [core] example - basic window")
SetTargetFPS(60)

while not WindowShouldClose() do
  BeginDrawing()
	ClearBackground(RAYWHITE)
	DrawText("Congrats! You created your first window!", 190, 200, 20, LIGHTGRAY)
	EndDrawing()
end

CloseWindow()