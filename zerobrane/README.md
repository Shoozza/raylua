# ZeroBrane Studio autocompletion

I finally did autocompletion for raylua,It's also works on the following bindings:

- [raylib-lua](https://github.com/TSnake41/raylib-lua)
- [raylib-luajit](https://github.com/darltrash/raylib-luajit) (Based on [Alexander Matz's gist](https://gist.github.com/alexander-matz/f8ee4eb9fdf676203d70c1e5e329a6ec))

### Demo

Here is a GIF showcasing the autocompletion

<img src="https://github.com/Rabios/raylua/blob/master/zerobrane/demo.gif">

### Installation

1. Download [`raylib.lua`](https://github.com/Rabios/raylua/blob/master/zerobrane/raylib.lua) (NOT the bindings, But the autocompletion file) as raw file or just download repo as zip to copy it.
2. Paste it for example in `api\lua` directory where you installed ZeroBrane Studio.
3. Go to Edit menu -> Preferences -> Settings: User.
4. Add following and save file then close the file:

```lua

-- Set Lua interpreter executable to LuaJIT executable directory
-- Here i used TSnake41/raylib-lua's raylua_s.exe
-- But you can use luajit.exe instead
-- NOTES: If you are using CMD to compile then i don't think you need to do this
path.lua = "D:/raylib-lua/raylua_s.exe"

table.insert(api, "luajit2")
table.insert(api, "raylib")
```

5. If you set LuaJIT executable,Go Project menu -> Lua Interpreter -> Lua.
6. When you run something,Press "Execute the current project/file (F6)" button cause debugging always slows program.

### NOTES

1. [TSnake41's LuaJIT bindings](https://github.com/TSnake41/raylib-lua) is only one support physics functions,But it doesn't support rlights as i did!