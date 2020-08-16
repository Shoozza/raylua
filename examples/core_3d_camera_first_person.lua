local rl = require("raylib")
local MAX_COLUMNS = 30

local screenWidth = rl.GetScreenWidth()
local screenHeight = rl.GetScreenHeight()

rl.InitWindow(screenWidth, screenHeight, "raylib [core] example - 3d camera first person")
rl.ToggleFullscreen()

camera = rl.Camera()
camera.position = rl.Vector3(4.0, 2.0, 4.0)
camera.target = rl.Vector3(0.0, 1.8, 0.0)
camera.up = rl.Vector3(0.0, 1.0, 0.0)
camera.fovy = 120.0
camera.type = rl.CAMERA_PERSPECTIVE

local heights = {}
local positions = {}
local colors = {}

for i = 0, MAX_COLUMNS, 1 do
  heights[i] = rl.GetRandomValue(1, 12)
  positions[i] = rl.Vector3(rl.GetRandomValue(-15, 15), heights[i] / 2, rl.GetRandomValue(-15, 15))
  colors[i] = rl.Color(rl.GetRandomValue(20, 255), rl.GetRandomValue(10, 55), 30, 255)
end

rl.SetCameraMode(camera, rl.CAMERA_FIRST_PERSON)

rl.SetTargetFPS(120)

while not rl.WindowShouldClose() do
  
  rl.UpdateCamera(camera)
  rl.BeginDrawing()
  rl.ClearBackground(rl.RAYWHITE)

  rl.BeginMode3D(camera)

  rl.DrawPlane(rl.Vector3(0.0, 0.0, 0.0), rl.Vector2(32.0, 32.0), rl.LIGHTGRAY)
  rl.DrawCube(rl.Vector3(-16.0, 2.5, 0.0), 1.0, 5.0, 32.0, rl.BLUE)
  rl.DrawCube(rl.Vector3(16.0, 2.5, 0.0), 1.0, 5.0, 32.0, rl.LIME)
  rl.DrawCube(rl.Vector3(0.0, 2.5, 16.0), 32.0, 5.0, 1.0, rl.GOLD)
  
  for i = 1, MAX_COLUMNS, 1 do
    rl.DrawCube(positions[i], 2.0, heights[i], 2.0, colors[i])
    rl.DrawCubeWires(positions[i], 2.0, heights[i], 2.0, rl.MAROON)
  end

  rl.EndMode3D()

  rl.DrawRectangle(10, 10, 220, 70, rl.Fade(rl.SKYBLUE, 0.5))
  rl.DrawRectangleLines(10, 10, 220, 70, rl.BLUE)

  rl.DrawText("First person camera default controls:", 20, 20, 10, rl.BLACK)
  rl.DrawText("- Move with keys: W, A, S, D", 40, 40, 10, rl.DARKGRAY)
  rl.DrawText("- Mouse move to look around", 40, 60, 10, rl.DARKGRAY)

  rl.EndDrawing()
end

rl.CloseWindow()