local rl = require("raylib")

local screenWidth = 800
local screenHeight = 450

rl.InitWindow(screenWidth, screenHeight, "raylib [models] example - geometric shapes");

local camera = rl.Camera()
camera.position = rl.Vector3(0.0, 10.0, 10.0)
camera.target = rl.Vector3(0.0, 0.0, 0.0)
camera.up = rl.Vector3(0.0, 1.0, 0.0)
camera.fovy = 45.0
camera.type = rl.CAMERA_PERSPECTIVE

rl.SetTargetFPS(60)

while not rl.WindowShouldClose() do
  rl.BeginDrawing()
  rl.ClearBackground(rl.RAYWHITE)

  rl.BeginMode3D(camera)
  
  rl.DrawCube(rl.Vector3(-4.0, 0.0, 2.0), 2.0, 5.0, 2.0, rl.RED)
  rl.DrawCubeWires(rl.Vector3(-4.0, 0.0, 2.0), 2.0, 5.0, 2.0, rl.GOLD)
  rl.DrawCubeWires(rl.Vector3(-4.0, 0.0, -2.0), 3.0, 6.0, 2.0, rl.MAROON)

  rl.DrawSphere(rl.Vector3(-1.0, 0.0, -2.0), 1.0, rl.GREEN)
  rl.DrawSphereWires(rl.Vector3(1.0, 0.0, 2.0), 2.0, 16, 16, rl.LIME)

  rl.DrawCylinder(rl.Vector3(4.0, 0.0, -2.0), 1.0, 2.0, 3.0, 4, rl.SKYBLUE)
  rl.DrawCylinderWires(rl.Vector3(4.0, 0.0, -2.0), 1.0, 2.0, 3.0, 4, rl.DARKBLUE)
  rl.DrawCylinderWires(rl.Vector3(4.5, -1.0, 2.0), 1.0, 1.0, 2.0, 6, rl.BROWN)

  rl.DrawCylinder(rl.Vector3(1.0, 0.0, -4.0), 0.0, 1.5, 3.0, 8, rl.GOLD)
  rl.DrawCylinderWires(rl.Vector3(1.0, 0.0, -4.0), 0.0, 1.5, 3.0, 8, rl.PINK)

  rl.DrawGrid(10, 1.0)

  rl.EndMode3D()

  rl.DrawFPS(10, 10)
  rl.EndDrawing()
end

rl.CloseWindow()