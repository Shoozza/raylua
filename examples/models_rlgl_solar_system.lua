local rl = require("raylib")
local math = require("math")

local screenWidth = 800
local screenHeight = 450

local sunRadius = 4.0
local earthRadius = 0.6
local earthOrbitRadius = 8.0
local moonRadius = 0.16
local moonOrbitRadius = 1.5

rl.InitWindow(screenWidth, screenHeight, "raylib [models] example - rlgl module usage with push/pop matrix transformations")

camera = rl.Camera()
camera.position = rl.Vector3(16.0, 16.0, 16.0)
camera.target = rl.Vector3(0.0, 0.0, 0.0)
camera.up = rl.Vector3(0.0, 1.0, 0.0)
camera.fovy = 45.0
camera.type = rl.CAMERA_PERSPECTIVE

rl.SetCameraMode(camera, rl.CAMERA_FREE)

local rotationSpeed = 0.2

local earthRotation = 0.0
local earthOrbitRotation = 0.0
local moonRotation = 0.0
local moonOrbitRotation = 0.0

rl.SetTargetFPS(60)

local function DrawSphereBasic(color)
  
  local rings = 16
  local slices = 16
  
  rl.rlBegin(rl.RL_TRIANGLES)
  rl.rlColor4ub(color.r, color.g, color.b, color.a)

  for i = 0, rings + 2, 1 do
    for j = 0, slices, 1 do
      rl.rlVertex3f(math.cos(rl.DEG2RAD * (270 + (180 / (rings + 1)) * i)) * math.sin(rl.DEG2RAD * (j * 360 / slices)),
                    math.sin(rl.DEG2RAD * (270 + (180 / (rings + 1)) * i)),
                    math.cos(rl.DEG2RAD * (270 + (180 / (rings + 1)) * i)) * math.cos(rl.DEG2RAD * (j * 360 / slices)))
                         
      rl.rlVertex3f(math.cos(rl.DEG2RAD * (270 + (180 / (rings + 1)) * (i + 1))) * math.sin(rl.DEG2RAD * ((j + 1) * 360 / slices)),
                    math.sin(rl.DEG2RAD * (270 + (180 / (rings + 1)) * (i + 1))),
                    math.cos(rl.DEG2RAD * (270 + (180 / (rings + 1)) * (i + 1))) * math.cos(rl.DEG2RAD * ((j + 1) * 360 / slices)))
                         
      rl.rlVertex3f(math.cos(rl.DEG2RAD * (270 + (180 / (rings + 1)) * (i + 1))) * math.sin(rl.DEG2RAD * (j * 360 / slices)),
                    math.sin(rl.DEG2RAD * (270 + (180 / (rings + 1)) * (i + 1))),
                    math.cos(rl.DEG2RAD * (270 + (180 / (rings + 1)) * (i + 1))) * math.cos(rl.DEG2RAD * (j * 360 / slices)))

      rl.rlVertex3f(math.cos(rl.DEG2RAD * (270 + (180 / (rings + 1)) * i)) * math.sin(rl.DEG2RAD * (j * 360 / slices)),
                    math.sin(rl.DEG2RAD * (270 + (180 / (rings + 1)) * i)),
                    math.cos(rl.DEG2RAD * (270 + (180 / (rings + 1)) * i)) * math.cos(rl.DEG2RAD * (j * 360 / slices)))
                         
      rl.rlVertex3f(math.cos(rl.DEG2RAD * (270 + (180 / (rings + 1)) * (i))) * math.sin(rl.DEG2RAD * ((j + 1) * 360 / slices)),
                    math.sin(rl.DEG2RAD * (270 + (180 / (rings + 1)) * (i))),
                    math.cos(rl.DEG2RAD * (270 + (180 / (rings + 1)) * (i))) * math.cos(rl.DEG2RAD * ((j + 1) * 360 / slices)))
                         
      rl.rlVertex3f(math.cos(rl.DEG2RAD * (270 + (180 / (rings + 1)) * (i + 1))) * math.sin(rl.DEG2RAD * ((j + 1) * 360 / slices)),
                    math.sin(rl.DEG2RAD * (270 + (180 / (rings + 1)) * (i + 1))),
                    math.cos(rl.DEG2RAD * (270 + (180 / (rings + 1)) * (i + 1))) * math.cos(rl.DEG2RAD * ((j + 1) * 360 / slices)))
                         
    end
  end  
  rl.rlEnd()
end


while not rl.WindowShouldClose() do
  
  rl.UpdateCamera(camera)

  earthRotation = earthRotation + (5.0 * rotationSpeed)
  earthOrbitRotation = earthOrbitRotation + (365 / 360.0 * (5.0 * rotationSpeed) * rotationSpeed)
  moonRotation = moonRotation + (2.0 * rotationSpeed)
  moonOrbitRotation = moonOrbitRotation + (8.0 * rotationSpeed)
        
  rl.BeginDrawing()
  
  rl.ClearBackground(rl.RAYWHITE)

  rl.BeginMode3D(camera)

  rl.rlPushMatrix()
  rl.rlScalef(sunRadius, sunRadius, sunRadius)
  DrawSphereBasic(rl.GOLD)
  rl.rlPopMatrix()

  rl.rlPushMatrix()
  rl.rlRotatef(earthOrbitRotation, 0.0, 1.0, 0.0)
  rl.rlTranslatef(earthOrbitRadius, 0.0, 0.0)
  rl.rlRotatef(-earthOrbitRotation, 0.0, 1.0, 0.0)

  rl.rlPushMatrix()
  rl.rlRotatef(earthRotation, 0.25, 1.0, 0.0)
  rl.rlScalef(earthRadius, earthRadius, earthRadius)

  DrawSphereBasic(rl.BLUE)
  rl.rlPopMatrix()
  
  rl.rlRotatef(moonOrbitRotation, 0.0, 1.0, 0.0)
  rl.rlTranslatef(moonOrbitRadius, 0.0, 0.0)
  rl.rlRotatef(-moonOrbitRotation, 0.0, 1.0, 0.0)
  rl.rlRotatef(moonRotation, 0.0, 1.0, 0.0)
  rl.rlScalef(moonRadius, moonRadius, moonRadius)

  DrawSphereBasic(rl.LIGHTGRAY)
  rl.rlPopMatrix()
  
  rl.DrawCircle3D(rl.Vector3(0.0, 0.0, 0.0), earthOrbitRadius, rl.Vector3(1, 0, 0), 90.0, rl.Fade(rl.RED, 0.5))
  rl.DrawGrid(20, 1.0)

  rl.EndMode3D()

  rl.DrawText("EARTH ORBITING AROUND THE SUN!", 400, 10, 20, rl.MAROON)
  rl.DrawFPS(10, 10)
  
  rl.EndDrawing()
end

rl.CloseWindow()
