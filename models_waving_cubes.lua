dofile("raylib.lua")
math = require("math")

local screenWidth = 800
local screenHeight = 450

rl.InitWindow(screenWidth, screenHeight, "raylib [models] example - waving cubes")

local camera = ffi.new("Camera3D")
camera.position = ffi.new("Vector3", 30.0, 20.0, 30.0)
camera.target = ffi.new("Vector3", 0.0, 0.0, 0.0)
camera.up = ffi.new("Vector3", 0.0, 1.0, 0.0)
camera.fovy = 70.0
camera.type = rl.CAMERA_PERSPECTIVE

local numBlocks = 15
rl.SetTargetFPS(60)

while not rl.WindowShouldClose() do    -- Detect window close button or ESC key
    time = rl.GetTime()
    scale = 2.0 + math.sin(time) * 0.7

    local cameraTime = time * 0.3
    camera.position.x = math.cos(cameraTime) * 40.0
    camera.position.z = math.sin(cameraTime) * 40.0
	
    rl.BeginDrawing()
    rl.ClearBackground(rl.RAYWHITE)
    rl.BeginMode3D(camera)
	rl.DrawGrid(10, 5.0)
    for x = 0, numBlocks, 1 do
	    for y = 0, numBlocks, 1 do
		    for z = 0, numBlocks, 1 do
                local blockScale = (x + y + z) / 30.0
                local scatter = math.sin(blockScale * 20.0 + (time * 4.0))
                local cubePos = ffi.new("Vector3",
                                (x - numBlocks / 2) * (scale * 3.0) + scatter,
                                (y - numBlocks / 2) * (scale * 2.0) + scatter,
                                (z - numBlocks / 2) * (scale * 3.0) + scatter)

                local cubeColor = ffi.new("Color", rl.ColorFromHSV(ffi.new("Vector3", (((x + y + z) * 18) % 360), 0.75, 0.9 )))
                local cubeSize = (2.4 - scale) * blockScale

                rl.DrawCube(cubePos, cubeSize, cubeSize, cubeSize, cubeColor)
			end
		end
	end
    rl.EndMode3D()
    rl.DrawFPS(10, 10)
    rl.EndDrawing()
end

rl.CloseWindow()