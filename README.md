# raylua

<img src="https://github.com/Rabios/raylua/blob/master/raylua.png">

Modern and updated LuaJIT bindings for raylib,Written by me from scratch.

### Contains

1. raylib
2. RLGL

### Supports

1. Microsoft Windows (32-bit and 64-bit)
2. Mac (64-bit)
3. Linux (32-bit and 64-bit)

### Example

Link `raylib.lua` (Via require or dofile),Then start coding!

```lua
local rl = require("raylib")

local screenWidth = 800
local screenHeight = 450

rl.InitWindow(screenWidth, screenHeight, "raylib [core] example - basic window")
rl.SetTargetFPS(60)

while not rl.WindowShouldClose() do
    rl.BeginDrawing()
    rl.ClearBackground(rl.RAYWHITE)
    rl.DrawText("Congrats! You created your first window!", 190, 200, 20, rl.LIGHTGRAY)
    rl.EndDrawing()
end

rl.CloseWindow()
```

For examples that binded see [here](https://github.com/Rabios/rayjit/blob/master/examples/examples.md)

> NOTES: RLGL functions also called from `rl` variable as same as calling raylib functions.

### NOTES

1. This is a direct bindings of the original C version,It implements the same content.
2. Hacks and fallbacks of raylib 2 still implemented,You can run raylib 2 code if you use raylib 3.

> And i didn't copy-pasted from any gist,Even that gist made by Alexander Matz,All bindings were written by me.

### Special thanks

1. [Ramon Santamaria(raysan5)](https://github.com/raysan5) (Creator of [raylib](https://www.raylib.com) and RLGL)
2. [Astie Teddy(TSnake41)](https://github.com/TSnake41) (Cause my bindings inspired by [his bindings](https://github.com/TSnake41/raylib-lua))
3. [Alexander Matz(alexander-matz)](https://github.com/alexander-matz) ([His gist](https://gist.github.com/alexander-matz/f8ee4eb9fdf676203d70c1e5e329a6ec) was the first reason to write my own bindings from zero)

### License

See [`LICENSE.txt`](https://github.com/Rabios/rayjit/blob/master/LICENSE.txt) for bindings license and [`LICENSES.txt`](https://github.com/Rabios/rayjit/blob/master/LICENSES.txt) for third party licenses.
