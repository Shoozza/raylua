dofile("../raylib.lua")

local screenWidth = 800
local screenHeight = 450

rl.InitWindow(screenWidth, screenHeight, "raylib [shapes] example - basic shapes drawing")
rl.SetTargetFPS(60)

while not rl.WindowShouldClose() do
  rl.BeginDrawing()
  rl.ClearBackground(rl.RAYWHITE)
  
	rl.DrawText("some basic shapes available on raylib", 20, 20, 20, rl.DARKGRAY)
  rl.DrawCircle(screenWidth / 4, 120, 35, rl.DARKBLUE)
  rl.DrawRectangle(screenWidth / 4 * 2 - 60, 100, 120, 60, rl.RED)
  rl.DrawRectangleLines(screenWidth / 4 * 2 - 40, 320, 80, 60, rl.ORANGE)
  rl.DrawRectangleGradientH(screenWidth / 4 * 2 - 90, 170, 180, 130, rl.MAROON, rl.GOLD)
    
	rl.DrawTriangle(ffi.new("Vector2", screenWidth / 4 * 3, 80),
                  ffi.new("Vector2", screenWidth / 4 * 3 - 60, 150),
                  ffi.new("Vector2", screenWidth / 4 * 3 + 60, 150), rl.VIOLET)
    
	rl.DrawPoly(ffi.new("Vector2", screenWidth / 4 * 3, 320), 6, 80, 0, rl.BROWN)
	
  rl.DrawCircleGradient(screenWidth / 4, 220, 60, rl.GREEN, rl.SKYBLUE)
  rl.DrawLine(18, 42, screenWidth - 18, 42, rl.BLACK)
  rl.DrawCircleLines(screenWidth / 4, 340, 80, rl.DARKBLUE)
    
	rl.DrawTriangleLines(ffi.new("Vector2", screenWidth / 4 * 3, 160),
                       ffi.new("Vector2", screenWidth / 4 * 3 - 20, 230),
                       ffi.new("Vector2", screenWidth / 4 * 3 + 20, 230), rl.DARKBLUE)
	rl.EndDrawing()
end

rl.CloseWindow()