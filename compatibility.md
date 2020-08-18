# raylua compatibility guide

### With robloach's raylib-lua-sol or raysan5's raylib-lua bindings

Just add this line of code at the first line of your code:
`setmetatable(_G, { __index = rl })`

> WARNING: Their bindings uses headers by default and not LuaJIT!

### With TSnake41's or Alexander Matz FFI bindings

raylua is 100% compatible with these bindings,You just might need to remove the library linking and all done

> DEVELOPER NOTES: Alexander Matz's FFI bindings missing a lot of compatibility with TSnake41's bindings,So if you use Alexander Matz's bindings use my bindings instead cause it supports %100 of it's code.