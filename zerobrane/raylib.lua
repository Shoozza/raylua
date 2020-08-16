-- Started by Rabia Alhaffar in 14/August/2020
-- Finished in 16/Auguest/2020
-- Latest version: v0.1, 16/August/2020
-- Autocompletion for my bindings/TSnake41's LuaJIT bindings/Alexander Matz's bindings
-- Sources: https://www.raylib.com/cheatsheet/cheatsheet.html, And bindings headers
return {
  rl = {
    type = "lib",
    description = "raylib bindings for Lua",
    childs = {
      
      -- module: core
      -- Window-related functions
      InitWindow = {
        type = "function",
        description = "Initialize window and OpenGL context",
        args = "(width: number, height: number, title: string)",
        returns = "(void)"
      },
      
      WindowShouldClose = {
        type = "function",
        description = "Check if KEY_ESCAPE pressed or Close icon pressed",
        args = "()",
        returns = "(boolean)"
      },
      
      CloseWindow = {
        type = "function",
        description = "Close window and unload OpenGL context",
        args = "()",
        returns = "(void)"
      },
      
      IsWindowReady = {
        type = "function",
        description = "Check if window has been initialized successfully",
        args = "()",
        returns = "(boolean)"
      },
      
      IsWindowMinimized = {
        type = "function",
        description = "Check if window has been minimized (or lost focus)",
        args = "()",
        returns = "(boolean)"
      },
      
      IsWindowResized = {
        type = "function",
        description = "Check if window has been resized",
        args = "()",
        returns = "(boolean)"
      },
      
      IsWindowHidden = {
        type = "function",
        description = "Check if window is currently hidden",
        args = "()",
        returns = "(boolean)"
      },
      
      IsWindowFullscreen = {
        type = "function",
        description = "Check if window is currently fullscreen",
        args = "()",
        returns = "(boolean)"
      },
      
      ToggleFullscreen = {
        type = "function",
        description = "Toggle fullscreen mode (only PLATFORM_DESKTOP)",
        args = "()",
        returns = "(void)"
      },
      
      UnhideWindow = {
        type = "function",
        description = "Show the window",
        args = "()",
        returns = "(void)"
      },
      
      ShowWindow = {
        type = "function",
        description = "Show the window",
        args = "()",
        returns = "(void)"
      },
      
      HideWindow = {
        type = "function",
        description = "Hide the window",
        args = "()",
        returns = "(void)"
      },
      
      SetWindowIcon = {
        type = "function",
        description = "Set icon for window (only PLATFORM_DESKTOP)",
        args = "(image: Image)",
        returns = "(void)"
      },
      
      SetWindowTitle = {
        type = "function",
        description = "Set title for window (only PLATFORM_DESKTOP)",
        args = "(title: string)",
        returns = "(void)"
      },
      
      SetWindowPosition = {
        type = "function",
        description = "Set window position on screen (only PLATFORM_DESKTOP)",
        args = "(x: number, y: number)",
        returns = "(void)"
      },
      
      SetWindowMonitor = {
        type = "function",
        description = "Set monitor for the current window (fullscreen mode)",
        args = "(monitor: number)",
        returns = "(void)"
      },
      
      SetWindowMinSize = {
        type = "function",
        description = "Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)",
        args = "(width: number, height: number)",
        returns = "(void)"
      },
      
      SetWindowSize = {
        type = "function",
        description = "Set window dimensions",
        args = "(width: number, height: number)",
        returns = "(void)"
      },
    
      GetWindowHandle = {
        type = "function",
        description = "Get native window handle",
        args = "()",
        returns = "(void)"
      },
      
      GetScreenWidth = {
        type = "function",
        description = "Get current screen width",
        args = "()",
        returns = "(number)"
      },
      
      GetScreenHeight = {
        type = "function",
        description = "Get current screen height",
        args = "()",
        returns = "(number)"
      },
      
      GetMonitorCount = {
        type = "function",
        description = "Get number of connected monitors",
        args = "()",
        returns = "(number)"
      },
      
      GetMonitorWidth = {
        type = "function",
        description = "Get primary monitor width",
        args = "(monitor: number)",
        returns = "(number)"
      },
      
      GetMonitorHeight = {
        type = "function",
        description = "Get primary monitor height",
        args = "(monitor: number)",
        returns = "(number)"
      },
      
      GetMonitorPhysicalWidth = {
        type = "function",
        description = "Get primary monitor physical width in millimetres",
        args = "(monitor: number)",
        returns = "(number)"
      },
      
      GetMonitorPhysicalHeight = {
        type = "function",
        description = "Get primary monitor physical height in millimetres",
        args = "(monitor: number)",
        returns = "(number)"
      },
      
      GetWindowPosition = {
        type = "function",
        description = "Get window position XY on monitor",
        args = "()",
        returns = "(Vector2)"
      },
      
      GetMonitorName = {
        type = "function",
        description = "Get the human-readable, UTF-8 encoded name of the primary monitor",
        args = "(monitor: number)",
        returns = "(string)"
      },
      
      GetClipboardText = {
       type = "function",
       description = "Get clipboard text content",
       args = "()",
       returns = "(string)"
      },
      
      SetClipboardText = {
       type = "function",
       description = "Set clipboard text content",
       args = "()",
       returns = "(string)"
      },
      
      -- Drawing-related functions
      ShowCursor = {
        type = "function",
        description = "Shows cursor",
        args = "()",
        returns = "(void)"
      },
      
      HideCursor = {
        type = "function",
        description = "Hides cursor",
        args = "()",
        returns = "(void)"
      },
      
      IsCursorHidden = {
        type = "function",
        description = "Check if cursor is not visible",
        args = "()",
        returns = "(boolean)"
      },
      
      EnableCursor = {
        type = "function",
        description = "Enables cursor (unlock cursor)",
        args = "()",
        returns = "(void)"
      },
      
      DisableCursor = {
        type = "function",
        description = "Disables cursor (lock cursor)",
        args = "()",
        returns = "(void)"
      },
      
      -- Drawing-related functions
      ClearBackground = {
        type = "function",
        description = "Set background color (framebuffer clear color)",
        args = "(color: Color)",
        returns = "(void)"
      },
      
      BeginDrawing = {
        type = "function",
        description = "Setup canvas (framebuffer) to start drawing",
        args = "()",
        returns = "(void)"
      },
      
      EndDrawing = {
        type = "function",
        description = "End canvas drawing and swap buffers (double buffering)",
        args = "()",
        returns = "(void)"
      },
      
      BeginMode2D = {
        type = "function",
        description = "Initialize 2D mode with custom camera (2D)",
        args = "(camera: Camera2D)",
        returns = "(void)"
      },
      
      EndMode2D = {
        type = "function",
        description = "Ends 2D mode with custom camera",
        args = "()",
        returns = "(void)"
      },
      
      BeginMode3D = {
        type = "function",
        description = "Initializes 3D mode with custom camera (3D)",
        args = "(camera: Camera3D)",
        returns = "(void)"
      },
      
      EndMode3D = {
        type = "function",
        description = "Ends 3D mode and returns to default 2D orthographic mode",
        args = "()",
        returns = "(void)"
      },
      
      BeginTextureMode = {
        type = "function",
        description = "Initializes render texture for drawing",
        args = "(target: RenderTexture2D)",
        returns = "(void)"
      },
      
      EndTextureMode = {
        type = "function",
        description = "Ends drawing to render texture",
        args = "()",
        returns = "(void)"
      },
      
      BeginScissorMode = {
        type = "function",
        description = "Begin scissor mode (define screen area for following drawing)",
        args = "(x: number, y: number, width: number, height: number)",
        returns = "(void)"
      },
      
      EndScissorMode = {
        type = "function",
        description = "End scissor mode",
        args = "()",
        returns = "(void)"
      },
      
      -- Screen-space-related functions
      GetMouseRay = {
        type = "function",
        description = "Returns a ray trace from mouse position",
        args = "(mousePosition: Vector2, camera: Camera)",
        returns = "(Ray)"
      },
      
      GetCameraMatrix = {
        type = "function",
        description = "Returns camera transform matrix (view matrix)",
        args = "()",
        returns = "(Matrix)"
      },
      
      GetCameraMatrix2D = {
        type = "function",
        description = "Returns camera 2d transform matrix",
        args = "(camera: Camera2D)",
        returns = "(Matrix)"
      },
      
      GetWorldToScreen = {
        type = "function",
        description = "Returns the screen space position for a 3d world space position",
        args = "(position: Vector3, camera: Camera)",
        returns = "(Vector2)"
      },
      
      GetWorldToScreenEx = {
        type = "function",
        description = "Returns size position for a 3d world space position",
        args = "(position: Vector3, camera: Camera, width: number, height: number)",
        returns = "(Vector2)"
      },
      
      GetWorldToScreen2D = {
        type = "function",
        description = "Returns the screen space position for a 2d camera world space position",
        args = "(position: Vector2, camera: Camera2D)",
        returns = "(Vector2)"
      },
      
      GetScreenToWorld2D = {
        type = "function",
        description = "Returns the world space position for a 2d camera screen space position",
        args = "(position: Vector2, camera: Camera2D)",
        returns = "(Vector2)"
      },
      
      -- Timing-related functions
      SetTargetFPS = {
        type = "function",
        description = "Set target FPS (maximum)",
        args = "(fps: number)",
        returns = "(void)"
      },
      
      GetFPS = {
        type = "function",
        description = "Returns current FPS",
        args = "()",
        returns = "(number)"
      },
      
      GetFrameTime = {
        type = "function",
        description = "Returns time in seconds for last frame drawn",
        args = "()",
        returns = "(number)"
      },
      
      GetTime = {
        type = "function",
        description = "Returns elapsed time in seconds since InitWindow()",
        args = "()",
        returns = "(number)"
      },
      
      -- Color-related functions
      ColorToInt = {
        type = "function",
        description = "Returns hexadecimal value for a Color",
        args = "(color: Color)",
        returns = "(number)"
      },
      
      ColorNormalize = {
        type = "function",
        description = "Returns color normalized as float [0..1]",
        args = "(color: Color)",
        returns = "(Vector4)"
      },
      
      ColorFromNormalized = {
        type = "function",
        description = "Returns color from normalized values [0..1]",
        args = "(normalized: Vector4)",
        returns = "(Color)"
      },
      
      ColorToHSV = {
        type = "function",
        description = "Returns HSV values for a Color",
        args = "(color: Color)",
        returns = "(Vector3)"
      },
      
      ColorFromHSV = {
        type = "function",
        description = "Returns a Color from HSV values",
        args = "(hsv: Vector3)",
        returns = "(Color)"
      },
      
      GetColor = {
        type = "function",
        description = "Returns a Color struct from hexadecimal value",
        args = "(hexValue: number)",
        returns = "(Color)"
      },
      
      Fade = {
        type = "function",
        description = "Color fade-in or fade-out, alpha goes from 0.0f to 1.0f",
        args = "(color: Color, alpha: number)",
        returns = "(Color)"
      },
      
      ColorAlpha = {
        type = "function",
        description = "Color fade-in or fade-out, alpha goes from 0.0f to 1.0f",
        args = "(color: Color, alpha: number)",
        returns = "(Color)"
      },
      
      -- Misc. functions
      SetConfigFlags = {
        type = "function",
        description = "Setup window configuration flags (view FLAGS)",
        args = "(flags: number)",
        retrurns = "(void)"
      },
      
      SetTraceLogLevel = {
        type = "function",
        description = "Set the current threshold (minimum) log level",
        args = "(logType: number)",
        retruns = "(void)"
      },
      
      SetTraceLogExit = {
        type = "function",
        description = "Set the exit threshold (minimum) log level",
        args = "(logType: number)",
        returns = "(void)"
      },
      
      SetTraceLogCallback = {
        type = "function",
        description = "Set a trace log callback to enable custom logging",
        args = "",
        returns = "(void)"
      },
      
      TraceLog = {
        type = "function",
        description = "Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR)",
        args = "(logType: number, text: string, ...)",
        returns = "(void)"
      },
      
      TakeScreenshot = {
        type = "function",
        description = "Takes a screenshot of current screen (saved a .png)",
        args = "(fileName: string)",
        returns = "(void)"
      },
      
      GetRandomValue = {
        type = "function",
        description = "Returns a random value between min and max (both included)",
        args = "(min: number, max: number)",
        returns = "(number)"
      },
      
      -- Files management functions
      LoadFileData = {
        type = "function",
        description = "Load file data as byte array (read)",
        args = "(fileName: string, bytesRead: number)",
        returns = "(string)"
      },
      
      SaveFileData = {
        type = "function",
        description = "Save data to file from byte array (write)",
        args = "(fileName: string, data: void, bytesToWrite: number)",
        returns = "(void)"
      },
      
      LoadFileText = {
        type = "function",
        description = "Load text data from file (read), returns a '\0' terminated string",
        args = "(fileName: string)",
        returns = "(string)"
      },
      
      LoadText = {
        type = "function",
        description = "Load text data from file (read), returns a '\0' terminated string",
        args = "(fileName: string)",
        returns = "(string)"
      },
      
      
      SaveFileText = {
        type = "function",
        description = "Save text data to file (write), string must be '\0' terminated",
        args = "(fileName: string, text: string)",
        returns = "(void)"
      },
      
      FileExists = {
        type = "function",
        description = "Check if file exists",
        args = "(fileName: string)",
        returns = "(boolean)"
      },
      
      IsFileExtension = {
        type = "function",
        description = "Check file extension",
        args = "(fileName: string, ext: string)",
        returns = "(boolean)"
      },
      
      DirectoryExists = {
        type = "function",
        description = "Check if a directory path exists",
        args = "(dirPath: string)",
        returns = "(boolean)"  
      },
      
      GetExtension = {
        type = "function",
        description = "Get pointer to extension for a filename string",
        args = "(fileName: string)",
        returns = "(string)"
      },
      
      GetFileName = {
        type = "function",
        description = "Get pointer to filename for a path string",
        args = "(filePath: string)",
        returns = "(string)"
      },
      
      GetFileNameWithoutExt = {
        type = "function",
        description = "Get filename string without extension (uses static string)",
        args = "(filePath: string)",
        returns = "(string)"
      },
      
      GetDirectoryPath = {
        type = "function",
        description = "Get full path for a given fileName with path (uses static string)",
        args = "(filePath: string)",
        returns = "(string)"
      },
      
      GetPrevDirectoryPath = {
        type = "function",
        description = "Get previous directory path for a given path (uses static string)",
        args = "(dirPath: string)",
        returns = "(string)"
      },
      
      GetWorkingDirectory = {
        type = "function",
        description = "Get current working directory (uses static string)",
        args = "()",
        returns = "(string)"
      },
      
      GetDirectoryFiles = {
        type = "function",
        description = "Get filenames in a directory path (memory should be freed)",
        args = "(dirPath: string, count: number)",
        returns = "(table)"
      },
      
      ClearDirectoryFiles = {
        type = "function",
        description = "Clear directory files paths buffers (free memory)",
        args = "()",
        returns = "(void)"
      },
      
      ChangeDirectory = {
        type = "function",
        description = "Change working directory, returns true if success",
        args = "(dir: string)",
        returns = "(boolean)"
      },
      
      IsFileDropped = {
        type = "function",
        description = "Check if a file has been dropped into window",
        args = "()",
        returns = "(boolean)"
      },
      
      GetDroppedFiles = {
        type = "function",
        description = "Get dropped files names (memory should be freed)",
        args = "(count: number)",
        returns = "(userdata)"
      },
      
      ClearDroppedFiles = {
        type = "function",
        description = "Clear dropped files paths buffer (free memory)",
        args = "()",
        returns = "(void)"
      },
      
      GetFileModTime = {
        type = "function",
        description = "Get file modification time (last write time)",
        args = "(fileName: string)",
        returns = "(string)"
      },
      
      CompressData = {
        type = "function",
        description = "Compress data (DEFLATE algorythm)",
        args = "(data: string, dataLength: number, compDataLength: number)",
        returns = "(string)"
      },
      
      DecompressData = {  
        type = "function",
        description = "Decompress data (DEFLATE algorythm)",
        args = "(compData: string, compDataLength: number, dataLength: number)",
        returns = "(string)"
      },
      
      -- Persistent storage management
      LoadStorageValue = {
        type = "function",
        description = "Load integer value from storage file (from defined position)",
        args = "(position: number)",
        returns = "(number)"
      },
      
      
      SaveStorageValue = {
        type = "function",
        description = "Save integer value to storage file (to defined position)",
        args = "(position: number, value: number)",
        returns = "(number)"
      },
      
      OpenURL = {
        type = "function",
        description = "Open URL with default system browser (if available)",
        args = "(url: string)",
        returns = "(void)"
      },
      
      -- Input-related functions: keyboard
      IsKeyPressed = {
        type = "function",
        description = "Detect if a key has been pressed once",
        args = "(key: number)",
        returns = "(boolean)"
      },
      
      IsKeyDown = {
        type = "function",
        description = "Detect if a key is being pressed",
        args = "(key: number)",
        returns = "(boolean)"
      },
      
      IsKeyReleased = {
        type = "function",
        description = "Detect if a key has been released once",
        args = "(key: number)",
        returns = "(boolean)"
      },
      
      IsKeyUp = {
        type = "function",
        description = "Detect if a key is NOT being pressed",
        args = "(key: number)",
        returns = "(boolean)"
      },
      
      GetKeyPressed = {
        type = "function",
        description = "Get latest key pressed",
        args = "()",
        returns = "(number)"
      },
      
      SetExitKey = {
        type = "function",
        description = "Set a custom key to exit program (default is ESC)",
        args = "(key: number)",
        returns = "(void)"
      },
      
      -- Input-related functions: gamepads
      IsGamepadAvailable = {
        type = "function",
        description = "Detect if a gamepad is available",
        args = "(gamepad: number)",
        returns = "(boolean)"
      },
      
      IsGamepadName = {
        type = "function",
        description = "Check gamepad name (if available)",
        args = "(gamepad: number, name: string)",
        returns = "(boolean)"
      },
      
      GetGamepadName = {
        type = "function",
        description = "Return gamepad internal name id",
        args = "(gamepad: number)",
        returns = "(string)"
      },
      
      IsGamepadButtonPressed = {
        type = "function",
        description = "Detect if a gamepad button has been pressed once",
        args = "(gamepad: number, button: number)",
        returns = "(boolean)"
      },
      
      IsGamepadButtonDown = {
        type = "function",
        description = "Detect if a gamepad button is being pressed",
        args = "(gamepad: number, button: number)",
        returns = "(boolean)"
      },
      
      IsGamepadButtonReleased = {
        type = "function",
        description = "Detect if a gamepad button has been released once",
        args = "(gamepad: number, button: number)",
        returns = "(boolean)"
      },
      
      IsGamepadButtonUp = {
        type = "function",
        description = "Detect if a gamepad button is NOT being pressed",
        args = "(gamepad: number, button: number)",
        returns = "(boolean)"
      },
      
      GetGamepadButtonPressed = {
        type = "function",
        description = "Get the last gamepad button pressed",
        args = "()",
        returns = "(number)"
      },
      
      GetGamepadAxisCount = {
        type = "function",
        description = "Return gamepad axis count for a gamepad",
        args = "(gamepad: number)",
        returns = "(number)"
      },
      
      GetGamepadAxisMovement = {
        type = "function",
        description = "Return axis movement value for a gamepad axis",
        args = "(gamepad: number)",
        returns = "(number)"
      },
      
      -- Input-related functions: mouse
      IsMouseButtonPressed = {
        type = "function",
        description = "Detect if a mouse button has been pressed once",
        args = "(button: number)",
        returns = "(boolean)"
      },
      
      IsMouseButtonDown = {
        type = "function",
        description = "Detect if a mouse button is being pressed",
        args = "(button: number)",
        returns = "(boolean)"
      },
      
      IsMouseButtonReleased = {
        type = "function",
        description = "Detect if a mouse button has been released once",
        args = "(button: number)",
        returns = "(boolean)"
      },
      
      IsMouseButtonUp = {
        type = "function",
        description = "Detect if a mouse button is NOT being pressed",
        args = "(button: number)",
        returns = "(boolean)"
      },
      
      GetMouseX = {
        type = "function",
        description = "Returns mouse position X",
        args = "()",
        returns = "(number)"
      },
      
      GetMouseY = {
        type = "function",
        description = "Returns mouse position Y",
        args = "()",
        returns = "(number)"
      },
      
      GetMousePosition = {
        type = "function",
        description = "Returns mouse position XY",
        args = "()",
        returns = "(Vector2)"
      },
      
      SetMousePosition = {
        type = "function",
        description = "Set mouse position XY",
        args = "(x: number, y: number)",
        returns = "(void)"
      },
      
      SetMouseOffset = {
        type = "function",
        description = "Set mouse offset",
        args = "(offsetX: number, offsetY: number)",
        returns = "(void)"
      },
      
      SetMouseScale = {
        type = "function",
        description = "Set mouse scaling",
        args = "(scaleX: number, scaleY: number)",
        returns = "(void)"
      },
      
      GetMouseWheelMove = {
        type = "function",
        description = "Returns mouse wheel movement Y",
        args = "()",
        returns = "(number)"
      },
      
      -- Input-related functions: touch
      GetTouchX = {
        type = "function",
        description = "Returns touch position X for touch point 0 (relative to screen size)",
        args = "()",
        returns = "(number)"
      },
      
      GetTouchY = {
        type = "function",
        description = "Returns touch position Y for touch point 0 (relative to screen size)",
        args = "()",
        returns = "(number)"
      },
      
      GetTouchPosition = {
        type = "function",
        description = "Returns touch position XY for a touch point index (relative to screen size)",
        args = "(index: number)",
        returns = "(number)"
      },
      
      -- Gestures and Touch Handling Functions (Module: gestures)
      SetGesturesEnabled = {
        type = "function",
        description = "Enable a set of gestures using flags",
        args = "(gestureFlags: number)",
        returns = "(void)"
      },
      
      IsGestureDetected = {
        type = "function",
        description = "Check if a gesture have been detected",
        args = "(gesture: number)",
        returns = "(boolean)"
      },
      
      GetGestureDetected = {
        type = "function",
        description = "Get latest detected gesture",
        args = "()",
        returns = "(number)"
      },
      
      GetTouchPointsCount = {
        type = "function",
        description = "Get touch points count",
        args = "()",
        returns = "(number)"
      },
      
      GetGestureHoldDuration = {
        type = "function",
        description = "Get gesture hold time in milliseconds",
        args = "()",
        returns = "(number)"
      },
      
      GetGestureDragVector = {
        type = "function",
        description = "Get gesture drag vector",
        args = "()",
        returns = "(Vector2)"
      },
      
      GetGestureDragAngle = {
        type = "function",
        description = "Get gesture drag angle",
        args = "()",
        returns = "(number)"
      },
      
      GetGesturePinchVector = {
        type = "function",
        description = "Get gesture pinch delta",
        args = "()",
        returns = "(Vector2)"
      },
      
      GetGesturePinchAngle = {
        type = "function",
        description = "Get gesture pinch angle",
        args = "()",
        returns = "(number)"
      },
      
      -- Camera System Functions (Module: camera)
      SetCameraMode = {
        type = "function",
        description = "Set camera mode (multiple camera modes available)",
        args = "(camera: Camera, mode: number)",
        returns = "(void)"
      },
      
      SetCameraPanControl = {
        type = "function",
        description = "Set camera pan key to combine with mouse movement (free camera)",
        args = "(panKey: number)",
        returns = "(void)"
      },
      
      SetCameraAltControl = {
        type = "function",
        description = "Set camera alt key to combine with mouse movement (free camera)",
        args = "(altKey: number)",
        returns = "(void)"
      },
      
      SetCameraSmoothZoomControl = {
        type = "function",
        description = "Set camera smooth zoom key to combine with mouse (free camera)",
        args = "(szKey: number)",
        returns = "(void)"
      },
      
      SetCameraMoveControls = {
        type = "function",
        description = "Set camera move controls (1st person and 3rd person cameras)",
        args = "(frontKey: number, backKey: number, rightKey: number, leftKey: number, upKey: number, downKey: number)",
        returns = "(void)"
      },
      
      -- module: shapes
      -- Basic shapes drawing functions
      DrawPixel = {
        type = "function",
        description = "Draw a pixel",
        args = "(posX: number, posY: number, color: Color)",
        returns = "(void)"
      },
      
      DrawPixelV = {
        type = "function",
        description = "Draw a pixel (Vector version)",
        args = "(position: Vector2, color: Color)",
        returns = "(void)"
      },
      
      DrawLine = {
        type = "function",
        description = "Draw a line",
        args = "(startPosX: number, startPosY: number, endPosX: number, endPosY: number, color: Color)",
        returns = "(void)"
      },
      
      DrawLineV = {
        type = "function",
        description = "Draw a line (Vector version)",
        args = "(startPos: Vector2, endPos: Vector2, color: Color)",
        returns = "(void)"
      },
      
      DrawLineEx = {
        type = "function",
        description = "Draw a line defining thickness",
        args = "(startPos: Vector2, endPos: Vector2, thick: number, color: Color)",
        returns = "(void)"
      },
      
      DrawLineBezier = {
        type = "function",
        description = "Draw a line using cubic-bezier curves in-out",
        args = "(startPos: Vector2, endPos: Vector2, thick: number, color: Color)",
        returns = "(void)"
      },
      
      DrawLineStrip = {
        type = "function",
        description = "Draw lines sequence",
        args = "(points: Vector2, numPoints: number, color: Color)",
        returns = "(void)"
      },
      
      DrawCircle = {
        type = "function",
        description = "Draw a color-filled circle",
        args = "(centerX: number, centerY: number, radius: number, color: Color)",
        returns = "(void)"
      },
      
      DrawCircleSector = {
        type = "function",
        description = "Draw a piece of a circle",
        args = "(center: Vector2, radius: number, startAngle: number, endAngle: number, segments: number, color: Color)",
        returns = "(void)"
      },
      
      DrawCircleSectorLines = {
        type = "function",
        description = "Draw circle sector outline",
        args = "(center: Vector2, radius: number, startAngle: number, endAngle: number, segments: number, color: Color)",
        returns = "(void)"
      },
      
      DrawCircleGradient = {
        type = "function",
        description = "Draw a gradient-filled circle",
        args = "(centerX: number, centerY: number, radius: number, color1: Color, color2: Color)",
        returns = "(void)"
      },
      
      DrawCircleV = {
        type = "function",
        description = "Draw a color-filled circle (Vector version)",
        args = "(center: Vector2, radius: number, color: Color)",
        returns = "(void)"
      },
      
      DrawCircleLines = {
        type = "function",
        description = "Draw circle outline",
        args = "(centerX: number, centerY: number, radius: number, color: Color)",
        returns = "(void)"
      },
      
      DrawEllipse = {
        type = "function",
        description = "Draw ellipse",
        args = "(centerX: number, centerY: number, radiusH: number, radiusV: number, color: Color)",
        returns = "(void)"
      },
      
      DrawEllipseLines = {
        type = "function",
        description = "Draw ellipse outline",
        args = "(centerX: number, centerY: number, radiusH: number, radiusV: number, color: Color)",
        returns = "(void)"
      },
      
      DrawRing = {
        type = "function",
        description = "Draw ring",
        args = "(center: Vector2, innerRadius: number, outerRadius: number, startAngle: number, endAngle: number, segments: number, color: Color)",
        returns =  "(void)"
      },
      
      DrawRingLines = {
        type = "function",
        description = "Draw ring outline",
        args = "(center: Vector2, innerRadius: number, outerRadius: number, startAngle: number, endAngle: number, segments: number, color: Color)",
        returns =  "(void)"
      },
      
      DrawRectangle = {
        type = "function",
        description = "Draw a color-filled rectangle",
        args = "(posX: number, posY: number, width: number, height: number, color: Color)",
        returns = "(void)"
      },
      
      DrawRectangleV = {
        type = "function",
        description = "Draw a color-filled rectangle (Vector version)",
        args = "(position: Vector2, size: Vector2, color: Color)",
        returns = "(void)"
      },
      
      DrawRectangleRec = {
        type = "function",
        description = "Draw a color-filled rectangle",
        args = "(rec: Rectangle, color: Color)",
        returns = "(void)"
      },
      
      DrawRectanglePro = {
        type = "function",
        description = "Draw a color-filled rectangle with pro parameters",
        args = "(rec: Rectangle, origin: Vector2, rotation: number, color: Color)",
        returns = "(void)"
      },
      
      DrawRectangleGradientV = {
        type = "function",
        description = "Draw a vertical-gradient-filled rectangle",
        args = "(posX: number, posY: number, width: number, height: number, color1: Color, color2: Color)",
        returns = "(void)"
      },
      
      DrawRectangleGradientH = {
        type = "function",
        description = "Draw a horizontal-gradient-filled rectangle",
        args = "(posX: number, posY: number, width: number, height: number, color1: Color, color2: Color)",
        returns = "(void)"
      },
      
      DrawRectangleGradientEx = {
        type = "function",
        description = "Draw a gradient-filled rectangle with custom vertex colors",
        args = "(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color)",
        returns = "(void)"
      },
      
      DrawRectangleLines = {
        type = "function",
        description = "Draw rectangle outline",
        args = "(posX: number, posY: number, width: number, height: number, color: Color)",
        returns = "(void)"
      },
      
      DrawRectangleLinesEx = {
        type = "function",
        description = "Draw rectangle outline with extended parameters",
        args = "(rec: Rectangle, lineThick: number, color: Color)",
        returns = "(void)"
      },
      
      DrawRectangleRounded = {
        type = "function",
        description = "Draw rectangle with rounded edges",
        args = "(rec: Rectangle, roundness: number, segments: number, color: Color)",
        returns = "(void)"
      },
      
      DrawRectangleRoundedLines = {
        type = "function",
        description = "Draw rectangle with rounded edges outline",
        args = "(rec: Rectangle, roundness: number, segments: number, lineThick: number, color: Color)",
        returns = "(void)"
      },
      
      DrawTriangle = {
        type = "function",
        description = "Draw a color-filled triangle (vertex in counter-clockwise order!)",
        args = "(v1: Vector2, v2: Vector2, v3: Vector2, color: Color)",
        returns = "(void)"
      },
      
      DrawTriangleLines = {
        type = "function",
        description = "Draw triangle outline (vertex in counter-clockwise order!)",
        args = "(v1: Vector2, v2: Vector2, v3: Vector2, color: Color)",
        returns = "(void)"
      },
      
      DrawTriangleFan = {
        type = "function",
        description = "Draw a triangle fan defined by points (first vertex is the center)",
        args = "(points: Vector2, numPoints: number, color: Color)",
        returns = "(void)"
      },
      
      DrawTriangleStrip = {
        type = "function",
        description = "Draw a triangle strip defined by points",
        args = "(points: Vector2, pointsCount: number, color: Color)",
        returns = "(void)"
      },
      
      DrawPoly = {
        type = "function",
        description = "Draw a regular polygon (Vector version)",
        args = "(center: Vector2, sides: number, radius: number, rotation: number, color: Color)",
        returns = "(void)"
      },
      
      DrawPolyLines = {
        type = "function",
        description = "Draw a polygon outline of n sides",
        args = "(center: Vector2, sides: number, radius: number, rotation: number, color: Color)",
        returns = "(void)"
      },
      
      -- Basic shapes collision detection functions
      CheckCollisionRecs = {
        type = "function",
        description = "Check collision between two rectangles",
        args = "(rec1: Rectangle, rec2: Rectangle)",
        returns = "(boolean)"
      },
      
      CheckCollisionCircles = {
        type = "function",
        description = "Check collision between two circles",
        args = "(center1: Vector2, radius1: number, center2: Vector2, radius2: number)",
        returns = "(boolean)"
      },
      
      CheckCollisionCircleRec = {
        type = "function",
        description = "Check collision between circle and rectangle",
        args = "(center: Vector2, radius: number, rec: Rectangle)",
        returns = "(boolean)"
      },
      
      GetCollisionRec = {
        type = "function",
        description = "Get collision rectangle for two rectangles collision",
        args = "(rec1: Rectangle, rec2: Rectangle)",
        returns = "(Rectangle)"
      },
      
      CheckCollisionPointRec = {
        type = "function",
        description = "Check if point is inside rectangle",
        args = "(point: Vector2, rec: Rectangle)",
        returns = "(boolean)"
      },
      
      CheckCollisionPointCircle = {
        type = "function",
        description = "Check if point is inside circle",
        args = "(point: Vector2, center: Vector2, radius: number)",
        returns = "(boolean)"
      },
      
      CheckCollisionPointTriangle = {
        type = "function",
        description = "Check if point is inside triangle",
        args = "(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2)",
        returns = "(boolean)"
      },
      
      -- module: textures
      -- Image loading functions
      -- NOTE: This functions do not require GPU access
      LoadImage = {
        type = "function",
        description = "Load image from file into CPU memory (RAM)",
        args = "(fileName: string)",
        returns = "(Image)"  
      },
      
      LoadImageEx = {
        type = "function",
        description = "Load image from Color array data (RGBA - 32bit)",
        args = "(pixels: Color, width: number, height: number)",
        returns = "(Image)"
      },
      
      LoadImagePro = {
        type = "function",
        description = "Load image from raw data with parameters",
        args = "(data: void, width: number, height: number, format: number)",
        returns = "(Image)"
      },
      
      LoadImageRaw = {
        type = "function",
        description = "Load image from RAW file data",
        args = "(fileName: string, width: number, height: number, format: number, headerSize: number)",
        returns = "(Image)"
      },
      
      UnloadImage = {
        type = "function",
        description = "Unload image from CPU memory (RAM)",
        args = "(image: Image)",
        returns = "(void)"
      },
      
      ExportImage = {
        type = "function",
        description = "Export image data to file",
        args = "(image: Image, fileName: string)",
        returns = "(void)"
      },
      
      ExportImageAsCode = {
        type = "function",
        description = "Export image as code file defining an array of bytes",
        args = "(image: Image, fileName: string)",
        returns = "(void)"
      },
      
      GetImageData = {
        type = "function",
        description = "Get pixel data from image as a Color struct array",
        args = "(image: Image)",
        returns = "(Color)"
      },
      
      GetImageDataNormalized = {
        type = "function",
        description = "Get pixel data from image as Vector4 array (float normalized)",
        args = "(image: Image)",
        returns = "(Vector4)"
      },
      
      -- Image generation functions
      GenImageColor = {
        type = "function",
        description = "Generate image: plain color",
        args = "(width: number, height: number, color: Color)",
        returns = "(Image)"
      },
      
      GenImageGradientV = {
        type = "function",
        description = "Generate image: vertical gradient",
        args = "(width: number, height: number, top: Color, bottom: Color)",
        returns = "(Image)"
      },
      
      GenImageGradientH = {
        type = "function",
        description = "Generate image: horizontal gradient",
        args = "(width: number, height: number, left: Color, right: Color)",
        returns = "(Image)"
      },
      
      GenImageGradientRadial = {
        type = "function",
        description = "Generate image: radial gradient",
        args = "(width: number, height: number, density: number, inner: Color, outer: Color)",
        returns = "(Image)"
      },
      
      GenImageChecked = {
        type = "function",
        description = "Generate image: checked",
        args = "(width: number, height: number, checksX: number, checksY: number, col1: Color, col2: Color)",
        returns = "(Image)"
      },
      
      GenImageWhiteNoise = {
        type = "function",
        description = "Generate image: white noise",
        args = "(width: number, height: number, factor: number)",
        returns = "(Image)"
      },
      
      GenImagePerlinNoise = {
        type = "function",
        description = "Generate image: perlin noise",
        args = "(width: number, height: number, offsetX: number, offsetY: number, scale: number)",
        returns = "(Image)"
      },
      
      GenImageCellular = {
        type = "function",
        description = "Generate image: cellular algorithm. Bigger tileSize means bigger cells",
        args = "(width: number, height: number, tileSize: number)",
        returns = "(Image)"
      },
      
      -- Image manipulation functions
      ImageCopy = {
        type = "function",
        description = "Create an image duplicate (useful for transformations)",
        args = "(image: Image)",
        returns = "(Image)"
      },
      
      ImageFromImage = {
        type = "function",
        description = "Create an image from another image piece",
        args = "(image: Image, rec: Rectangle)",
        returns = "(Image)"
      },
      
      ImageText = {
        type = "function",
        description = "Create an image from text (default font)",
        args = "(text: string, fontSize: number, color: Color)",
        returns = "(Image)"
      },
      
      ImageTextEx = {
        type = "function",
        description = "Create an image from text (custom sprite font)",
        args = "(font: Font, text: string, fontSize: number, spacing: number, tint: Color)",
        returns = "(Image)"
      },
      
      ImageToPOT = {
        type = "function",
        description = "Convert image to POT (power-of-two)",
        args = "(image: Image, fillColor: Color)",
        returns = "(void)"
      },
      
      ImageFormat = {
        type = "function",
        description = "Convert image data to desired format",
        args = "(image: Image, newFormat: number)",
        returns = "(void)"
      },
      
      ImageAlphaMask = {
        type = "function",
        description = "Apply alpha mask to image",
        args = "(image: Image, alphaMask: Image)",
        returns = "(void)"
      },
      
      ImageAlphaClear = {
        type = "function",
        description = "Clear alpha channel to desired color",
        args = "(image: Image, color: Color, threshold: number)",
        returns = "(void)"
      },
      
      ImageAlphaCrop = {
        type = "function",
        description = "Crop image depending on alpha value",
        args = "(image: Image, threshold: number)",
        returns = "(void)"
      },
      
      ImageAlphaPremultiply = {
        type = "function",
        description = "Premultiply alpha channel",
        args = "(image: Image)",
        returns = "(void)"
      },
      
      ImageCrop = {
        type = "function",
        description = "Crop an image to a defined rectangle",
        args = "(image: Image, crop: Rectangle)",
        returns = "(void)"
      },
      
      ImageResize = {
        type = "function",
        description = "Resize image (Bicubic scaling algorithm)",
        args = "(image: Image, newWidth: number, newHeight: number)",
        returns = "(void)"
      },
      
      ImageResizeNN = {
        type = "function",
        description = "Resize image (Nearest-Neighbor scaling algorithm)",
        args = "(image: Image, newWidth: number, newHeight: number)",
        returns = "(void)"
      },
      
      ImageResizeCanvas = {
        type = "function",
        description = "Resize canvas and fill with color",
        args = "(image: Image, newWidth: number, newHeight: number, offsetX: number, offsetY: number, color: Color)",
        returns = "(void)"
      },
      
      ImageMipmaps = {
        type = "function",
        description = "Generate all mipmap levels for a provided image",
        args = "(image: Image)",
        returns = "(void)"
      },
      
      ImageDither = {
        type = "function",
        description = "Dither image data to 16bpp or lower (Floyd-Steinberg dithering)",
        args = "(image: Image, rBpp: number, gBpp: number, bBpp: number, aBpp: number)",
        returns = "(void)"
      },
      
      ImageFlipVertical = {
        type = "function",
        description = "Flip image vertically",
        args = "(image: Image)",
        returns = "(void)"
      },
      
      ImageFlipHorizontal = {
        type = "function",
        description = "Flip image horizontally",
        args = "(image: Image)",
        returns = "(void)"
      },
      
      ImageRotateCW = {
        type = "function",
        description = "Rotate image clockwise 90deg",
        args = "(image: Image)",
        returns = "(void)"
      },
      
      ImageRotateCCW = {
        type = "function",
        description = "Rotate image counter-clockwise 90deg",
        args = "(image: Image)",
        returns = "(void)"
      },
      
      ImageColorTint = {
        type = "function",
        description = "Modify image color: tint",
        args = "(image: Image, color: Color)",
        returns = "(void)"
      },
      
      ImageColorInvert = {
        type = "function",
        description = "Modify image color: invert",
        args = "(image: Image)",
        returns = "(void)"
      },
      
      ImageColorGrayscale = {
        type = "function",
        description = "Modify image color: grayscale",
        args = "(image: Image)",
        returns = "(void)"
      },
      
      ImageColorContrast = {
        type = "function",
        description = "Modify image color: contrast (-100 to 100)",
        args = "(image: Image, contrast: number)",
        returns = "(void)"
      },
      
      ImageColorBrightness = {
        type = "function",
        description = "Modify image color: brightness (-255 to 255)",
        args = "(image: Image, brightness: number)",
        returns = "(void)"
      },
      
      ImageColorReplace = {
        type = "function",
        description = "Modify image color: replace color",
        args = "(image: Image, color: Color, replace: Color)",
        returns = "(void)"
      },
      
      ImageExtractPalette = {
        type = "function",
        description = "Extract color palette from image to maximum size (memory should be freed)",
        args = "(image: Image, maxPaletteSize: number, extractCount: number)",
        returns = "(Color)"
      },
      
      GetImageAlphaBorder = {
        type = "function",
        description = "Get image alpha border rectangle",
        args = "(image: Image, threshold: number)",
        returns = "(Rectangle)"
      },
      
      -- Image drawing functions
      -- NOTE: Image software-rendering functions (CPU)
      ImageClearBackground = {
        type = "function",
        description = "Clear image background with given color",
        args = "(dst: Image, color: Color)",
        returns = "(void)"
      },
      
      ImageDrawPixel = {
        type = "function",
        description = "Draw pixel within an image",
        args = "(dst: Image, posX: number, posY: number, color: Color)",
        returns = "(void)"
      },
      
      ImageDrawPixelV = {
        type = "function",
        description = "Draw pixel within an image (Vector version)",
        args = "(dst: Image, position: Vector2, color: Color)",
        returns = "(void)"
      },
      
      ImageDrawLine = {
        type = "function",
        description = "Draw line within an image",
        args = "(dst: Image, startPosX: number, startPosY: number, endPosX: number, endPosY: number, color: Color)",
        returns = "(void)"
      },
      
      ImageDrawLineV = {
        type = "function",
        description = "Draw line within an image (Vector version)",
        args = "(dst: Image, start: Vector2, end: Vector2, color: Color)",
        returns = "(void)"
      },
      
      ImageDrawCircle = {
        type = "function",
        description = "Draw circle within an image",
        args = "(dst: Image, centerX: number, centerY: number, radius: number, color: Color)",
        returns = "(void)"
      },
      
      ImageDrawCircleV = {
        type = "function",
        description = "Draw circle within an image (Vector version)",
        args = "(dst: Image, center: Vector2, radius: number, color: Color)",
        returns = "(void)"
      },
      
      ImageDrawRectangle = {
        type = "function",
        description = "Draw rectangle within an image",
        args = "(dst: Image, posX: number, posY: number, width: number, height: number, color: Color)",
        returns = "(void)"
      },
      
      ImageDrawRectangleV = {
        type = "function",
        description = "Draw rectangle within an image (Vector version)",
        args = "(dst: Image, position: Vector2, size: Vector2, color: Color)",
        returns = "(void)"
      },
      
      ImageDrawRectangleRec = {
        type = "function",
        description = "Draw rectangle within an image",
        args = "(dst: Image, rec: Rectangle, color: Color)",
        returns = "(void)"
      },
      
      ImageDrawRectangleLines = {
        type = "function",
        description = "Draw rectangle lines within an image",
        args = "(dst: Image, rec: Image, thick: number, color: Color)",
        returns = "(void)"
      },
      
      ImageDraw = {
        type = "function",
        description = "Draw a source image within a destination image (tint applied to source)",
        args = "(dst: Image, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color)",
        returns = "(void)"
      },
      
      ImageDrawText = {
        type = "function",
        description = "Draw text (default font) within an image (destination)",
        args = "(dst: Image, position: Vector2, text: string, fontSize: number, color: Color)",
        returns = "(void)"
      },
      
      ImageDrawTextEx = {
        type = "function",
        description = "Draw text (custom sprite font) within an image (destination)",
        args = "(dst: Image, position: Vector2, font: Font, text: string, fontSize: number, spacing: number, color: Color)",
        returns = "(void)"
      },
      
      -- Texture loading functions
      -- NOTE: These functions require GPU access
      LoadTexture = {
        type = "function",
        description = "Load texture from file into GPU memory (VRAM)",
        args = "(fileName: string)",
        returns = "(Texture2D)"
      },
      
      LoadTextureFromImage = {
        type = "function",
        description = "Load texture from image data",
        args = "(image: Image)",
        returns = "(Texture2D)"
      },
      
      LoadTextureCubemap = {
        type = "function",
        description = "Load cubemap from image, multiple image cubemap layouts supported",
        args = "(image: Image, layoutType: number)",
        returns = "(TextureCubemap)"
      },
      
      LoadRenderTexture = {
        type = "function",
        description = "Load texture for rendering (framebuffer)",
        args = "(width: number, height: number)",
        returns = "(RenderTexture2D)"
      },
      
      UnloadTexture = {
        type = "function",
        description = "Unload texture from GPU memory (VRAM)",
        args = "(texture: Texture2D)",
        returns = "(void)"
      },
      
      UnloadRenderTexture = {
        type = "function",
        description = "Unload render texture from GPU memory (VRAM)",
        args = "(target: RenderTexture2D)",
        returns = "(void)"
      },
      
      UpdateTexture = {
        type = "function",
        description = "Update GPU texture with new data",
        args = "(texture: Texture2D, pixels: void)",
        returns = "(void)"
      },
      
      GetTextureData = {
        type = "function",
        description = "Get pixel data from GPU texture and return an Image",
        args = "(texture: Texture2D)",
        returns = "(Image)"
      },
      
      GetScreenData = {
        type = "function",
        description = "Get pixel data from screen buffer and return an Image (screenshot)",
        args = "()",
        returns = "(Image)"
      },
      
      -- Texture configuration functions
      GenTextureMipmaps = {
        type = "function",
        description = "Generate GPU mipmaps for a texture",
        args = "(texture: Texture2D)",
        returns = "(void)"
      },
      
      SetTextureFilter = {
        type = "function",
        description = "Set texture scaling filter mode",
        args = "(texture: Texture2D, filterMode: number)",
        returns = "(void)"
      },
      
      SetTextureWrap = {
        type = "function",
        description = "Set texture wrapping mode",
        args = "(texture: Texture2D, wrapMode: number)",
        returns = "(void)"
      },
      
      -- Texture drawing functions
      DrawTexture = {
        type = "function",
        description = "Draw a Texture2D",
        args = "(texture: Texture2D, posX: number, posY: number, tint: Color)",
        returns = "(void)"
      },
      
      DrawTextureV = {
        type = "function",
        description = "Draw a Texture2D with position defined as Vector2",
        args = "(texture: Texture2D, position: Vector2, tint: Color)",
        returns = "(void)"
      },
      
      DrawTextureEx = {
        type = "function",
        description = "Draw a Texture2D with extended parameters",
        args = "(texture: Texture2D, position: Vector2, rotation: number, scale: number, tint: Color)",
        returns = "(void)"
      },
      
      DrawTextureRec = {
        type = "function",
        description = "Draw a part of a texture defined by a rectangle",
        args = "(texture: Texture2D, sourceRec: Rectangle, position: Vector2, tint: Color)",
        returns = "(void)"
      },
      
      DrawTextureQuad = {
        type = "function",
        description = "Draw texture quad with tiling and offset parameters",
        args = "(texture: Texture2D, tiling: Vector2, offset: Vector2, quad: Rectangle, tint: Color)",
        returns = "(void)"
      },
      
      DrawTexturePro = {
        type = "function",
        description = "Draw a part of a texture defined by a rectangle with 'pro' parameters",
        args = "(texture: Texture2D, sourceRec: Rectangle, destRec: Rectangle, origin: Vector2, rotation: number, tint: Color)",
        returns = "(void)"
      },
      
      DrawTextureNPatch = {
        type = "function",
        description = "Draws a texture (or part of it) that stretches or shrinks nicely",
        args = "(texture: Texture2D, nPatchInfo: NPatchInfo, destRec: Rectangle, origin: Vector2, rotation: number, tint: Color)",
        returns = "(void)"
      },
      
      -- Image/Texture misc functions
      GetPixelDataSize = {
        type = "function",
        description = "Get pixel data size in bytes (image or texture)",
        args = "(width: number, height: number, format: number)",
        returns = "(number)"  
      },
      
      -- module: text
      -- Font loading/unloading functions
      GetFontDefault = {
        type = "function",
        description = "Get the default Font",
        args = "()",
        returns = "(Font)"
      },
      
      LoadFont = {
        type = "function",
        description = "Load font from file into GPU memory (VRAM)",
        args = "(fileName: string)",
        returns = "(Font)"
      },
      
      LoadFontEx = {
        type = "function",
        description = "Load font from file with extended parameters",
        args = "(fileName: string, fontSize: number, fontChars: number, charsCount: number)",
        returns = "(Font)"
      },
      
      LoadFontFromImage = {
        type = "function",
        description = "Load font from Image (XNA style)",
        args = "(image: Image, key: Color, firstChar: number)",
        returns = "(Font)"
      },
      
      LoadFontData = {
        type = "function",
        description = "Load font data for further use",
        args = "(fileName: string, fontSize: number, fontChars: number, charsCount: number, type: number)",
        returns = "(CharInfo)"
      },
      
      GenImageFontAtlas = {
        type = "function",
        description = "Generate image font atlas using chars info",
        args = "(chars: CharInfo, recs: Rectangle, charsCount: number, fontSize: number, padding: number, packMethod: number)",
        returns = "(Image)"
      },
      
      UnloadFont = {
        type = "function",
        description = "Unload Font from GPU memory (VRAM)",
        args = "(font: Font)",
        returns = "(void)"
      },
      
      -- Text drawing functions
      DrawFPS = {
        type = "function",
        description = "Shows current FPS",
        args = "(posX: number, posY: number)",
        returns = "(void)"
      },
      
      DrawText = {
        type = "function",
        description = "Draw text (using default font)",
        args = "(text: string, posX: number, posY: number, fontSize: number, color: Color)",
        returns = "(void)"
      },
      
      DrawTextEx = {
        type = "function",
        description = "Draw text using font and additional parameters",
        args = "(font: Font, text: string, position: Vector2, fontSize: number, spacing: number, tint: Color)",
        returns = "(void)"
      },
      
      DrawTextRec = {
        type = "function",
        description = "Draw text using font inside rectangle limits",
        args = "(font: Font, text: string, rec: Rectangle, fontSize: number, spacing: number, wordWrap: boolean, tint: Color)",
        returns = "(void)"
      },
      
      DrawTextRecEx = {
        type = "function",
        description = "Draw text using font inside rectangle limits with support for text selection",
        args = "(font: Font, text: string, rec: Rectangle, fontSize: number, spacing: number, wordWrap: boolean, tint: Color, selectStart: number, selectLength: number, selectTint: Color, selectBackTint: Color)",
        returns = "(void)"
      },
      
      DrawTextCodepoint = {
        type = "function",
        description = "Draw one character (codepoint)",
        args = "(font: Font, codepoint: number, position: Vector2, scale: number, tint: Color)",
        returns = "(void)"
      },
      
      -- Text misc. functions
      MeasureText = {
        type = "function",
        description = "Measure string width for default font",
        args = "(text: string, fontSize: number)",
        returns = "(number)"
      },
      
      MeasureTextEx = {
        type = "function",
        description = "Measure string size for Font",
        args = "(font: Font, text: string, fontSize: number, spacing: number)",
        returns = "(Vector2)"
      },
      
      GetGlyphIndex = {
        type = "function",
        description = "Get index position for a unicode character on font",
        args = "(font: Font, codepoint: number)",
        returns = "(number)"
      },
      
      -- Text strings management functions (no utf8 strings, only byte chars)
      -- NOTE: Some strings allocate memory internally for returned strings, just be careful!
      TextCopy = {
        type = "function",
        description = "Copy one string to another, returns bytes copied",
        args = "(dst: string, src: string)",
        returns = "(number)"
      },
      
      TextIsEqual = {
        type = "function",
        description = "Check if two text string are equal",
        args = "(text1: string, text2: string)",
        returns = "(boolean)"
      },
      
      TextLength = {
        type = "function",
        description = "Get text length, checks for '\0' ending",
        args = "(text: string)",
        returns = "(number)"
      },
      
      FormatText = {
        type = "function",
        description = "Text formatting with variables (sprintf style)",
        args = "(text: string, ...)",
        returns = "(string)"
      },
      
      TextFormat = {
        type = "function",
        description = "Text formatting with variables (sprintf style)",
        args = "(text: string, ...)",
        returns = "(string)"
      },
      
      SubText = {
        type = "function",
        description = "Get a piece of a text string",
        args = "(text: string, position: number, length: number)",
        returns = "(string)"
      },
      
      TextSubtext = {
        type = "function",
        description = "Get a piece of a text string",
        args = "(text: string, position: number, length: number)",
        returns = "(string)"
      },
      
      TextReplace = {
        type = "function",
        description = "Replace text string (memory must be freed!)",
        args = "(text: string, replace: string, by: string)",
        returns = "(string)"
      },
      
      TextInsert = {
        type = "function",
        description = "Insert text in a position (memory must be freed!)",
        args = "(text: string, insert: string, position: number)",
        returns = "(string)"
      },
      
      TextJoin = {
        type = "function",
        description = "Join text strings with delimiter",
        args = "(textList: string, count: number, delimiter: string)",
        returns = "(string)"
      },
      
      TextSplit = {
        type = "function",
        description = "Split text into multiple strings",
        args = "(text: string, delimiter: string, count: number)",
        returns = "(string)"
      },
      
      TextAppend = {
        type = "function",
        description = "Append text at specific position and move cursor!",
        args = "(text: string, append: string, position: number)",
        returns = "(void)"
      },
      
      TextFindIndex = {
        type = "function",
        description = "Find first text occurrence within a string",
        args = "(text: string, find: string)",
        returns = "(number)"
      },
      
      TextToUpper = {
        type = "function",
        description = "Get upper case version of provided string",
        args = "(text: string)",
        returns = "(string)"
      },
      
      TextToLower = {
        type = "function",
        description = "Get lower case version of provided string",
        args = "(text: string)",
        returns = "(string)"
      },
      
      TextToPascal = {
        type = "function",
        description = "Get Pascal case notation version of provided string",
        args = "(text: string)",
        returns = "(string)"
      },
      
      TextToInteger = {
        type = "function",
        description = "Get integer value from text (negative values not supported)",
        args = "(text: string)",
        returns = "(number)"
      },
      
      TextToUtf8 = {
        type = "function",
        description = "Encode text codepoint into utf8 text (memory must be freed!)",
        args = "(codepoints: number, length: number)",
        returns = "(string)"
      },
      
      -- UTF8 text strings management functions
      GetCodepoints = {
        type = "function",
        description = "Get all codepoints in a string, codepoints count returned by parameters",
        args = "(text: string, count: number)",
        returns = "(number)"
      },
      
      GetCodepointsCount = {
        type = "function",
        description = "Get total number of characters (codepoints) in a UTF8 encoded string",
        args = "(text: string)",
        returns = "(number)"
      },
      
      GetNextCodepoint = {
        type = "function",
        description = "Returns next codepoint in a UTF8 encoded string; 0x3f('?') is returned on failure",
        args = "(text: string, bytesProcessed: number)",
        returns = "(number)"
      },
      
      CodepointToUtf8 = {
        type = "function",
        description = "Encode codepoint into utf8 text (char array length returned as parameter)",
        args = "(codepoint: number, byteLength: number)",
        returns = "(string)"
      },
      
      -- module: models
      -- Basic geometric 3D shapes drawing functions
      DrawLine3D = {
        type = "function",
        description = "Draw a line in 3D world space",
        args = "(startPos: Vector3, endPos: Vector3, color: Color)",
        returns = "(void)"
      },
      
      DrawPoint3D = {
        type = "function",
        description = "Draw a point in 3D space, actually a small line",
        args = "(position: Vector3, color: Color)",
        returns = "(void)"
      },
      
      DrawCircle3D = {
        type = "function",
        description = "Draw a circle in 3D world space",
        args = "(center: Vector3, radius: number, rotationAxis: Vector3, rotationAngle: number, color: Color)",
        returns = "(void)"
      },
      
      DrawCube = {
        type = "function",
        description = "Draw cube",
        args = "(position: Vector3, width: number, height: number, length: number, color: Color)",
        returns = "(void)"
      },
      
      DrawCubeV = {
        type = "function",
        description = "Draw cube (Vector version)",
        args = "(position: Vector3, size: Vector3, color: Color)",
        returns = "(void)"
      },
      
      DrawCubeWires = {
        type = "function",
        description = "Draw cube wires",
        args = "(position: Vector3, width: number, height: number, length: number, color: Color)",
        returns = "(void)"
      },
      
      DrawCubeWiresV = {
        type = "function",
        description = "Draw cube wires (Vector version)",
        args = "(position: Vector3, size: Vector3, color: Color)",
        returns = "(void)"
      },
      
      DrawCubeTexture = {
        type = "function",
        description = "Draw cube textured",
        args = "(texture: Texture2D, position: Vector3, width: number, height: number, length: number, color: Color)",
        returns = "(void)"
      },
      
      DrawSphere = {
        type = "function",
        description = "Draw sphere",
        args = "(centerPos: Vector3, radius: number, color: Color)",
        returns = "(void)"
      },
      
      DrawSphereEx = {
        type = "function",
        description = "Draw sphere with extended parameters",
        args = "(centerPos: Vector3, radius: number, rings: number, slices: number, color: Color)",
        returns = "(void)"
      },
      
      DrawSphereWires = {
        type = "function",
        description = "Draw sphere wires",
        args = "(centerPos: Vector3, radius: number, rings: number, slices: number, color: Color)",
        returns = "(void)"
      },
      
      DrawCylinder = {
        type = "function",
        description = "Draw a cylinder/cone",
        args = "(position: Vector3, radiusTop: number, radiusBottom: number, height: number, slices: number, color: Color)",
        returns = "(void)"
      },
      
      DrawCylinderWires = {
        type = "function",
        description = "Draw a cylinder/cone wires",
        args = "(position: Vector3, radiusTop: number, radiusBottom: number, height: number, slices: number, color: Color)",
        returns = "(void)"
      },
      
      DrawPlane = {
        type = "function",
        description = "Draw a plane XZ",
        args = "(centerPos: Vector3, size: Vector2, color: Color)",
        returns = "(void)"
      },
      
      DrawRay = {
        type = "function",
        description = "Draw a ray line",
        args = "(ray: Ray, color: Color)",
        returns = "(void)"
      },
      
      DrawGrid = {
        type = "function",
        description = "Draw a grid (centered at (0, 0, 0))",
        args = "(slices: number, spacing: number)",
        returns = "(void)"
      },
      
      DrawGizmo = {
        type = "function",
        description = "Draw simple gizmo",
        args = "(position: Vector3)",
        returns = "(void)"
      },
      
      -- Model loading/unloading functions
      LoadModel = {
        type = "function",
        description = "Load model from files (meshes and materials)",
        args = "(fileName: string)",
        returns = "(Model)"
      },
      
      LoadModelFromMesh = {
        type = "function",
        description = "Load model from generated mesh (default material)",
        args = "(mesh: Mesh)",
        returns = "(Model)"
      },
      
      UnloadModel = {
        type = "function",
        description = "Unload model from memory (RAM and/or VRAM)",
        args = "(model: Model)",
        returns = "(void)"
      },
      
      -- Mesh loading/unloading functions
      LoadMeshes = {
        type = "function",
        description = "Load meshes from model file",
        args = "(fileName: string, meshCount: number)",
        returns = "(Mesh)"
      },
      
      ExportMesh = {
        type = "function",
        description = "Export mesh data to file",
        args = "(mesh: Mesh, fileName: string)",
        returns = "(void)"
      },
      
      UnloadMesh = {
        type = "function",
        description = "Unload mesh from memory (RAM and/or VRAM)",
        args = "(mesh: Mesh)",
        returns = "(void)"
      },
      
      -- Material loading/unloading functions
      LoadMaterials = {
        type = "function",
        description = "Load materials from model file",
        args = "(fileName: string, materialCount: number)",
        returns = "(Material)"
      },
      
      LoadMaterialDefault = {
        type = "function",
        description = "Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)",
        args = "()",
        returns = "(Material)"
      },
      
      UnloadMaterial = {
        type = "function",
        description = "Unload material from GPU memory (VRAM)",
        args = "(material: Material)",
        returns = "(void)"
      },
      
      SetMaterialTexture = {
        type = "function",
        description = "Set texture for a material map type (MAP_DIFFUSE, MAP_SPECULAR...)",
        args = "(material: Material, mapType: number, texture: Texture2D)",
        returns = "(void)"
      },
      
      SetModelMeshMaterial = {
        type = "function",
        description = "Set material for a mesh",
        args = "(model: Model, meshId: number, materialId: number)",
        returns = "(void)"
      },
      
      -- Model animations loading/unloading functions
      LoadModelAnimations = {
        type = "function",
        description = "Load model animations from file",
        args = "(fileName: string, animsCount: number)",
        returns = "(ModelAnimation)"
      },
      
      UpdateModelAnimation = {
        type = "function",
        description = "Update model animation pose",
        args = "(model: Model, anim: ModelAnimation, frame: number)",
        returns = "(void)"
      },
      
      UnloadModelAnimation = {
        type = "function",
        description = "Unload animation data",
        args = "(anim: ModelAnimation)",
        returns = "(void)"
      },
      
      IsModelAnimationValid = {
        type = "function",
        description = "Check model animation skeleton match",
        args = "(model: Model, anim: ModelAnimation)",
        returns = "(boolean)"
      },
      
      -- Mesh generation functions
      GenMeshPoly = {
        type = "function",
        description = "Generate polygonal mesh",
        args = "(sides: number, radius: number)",
        returns = "(Mesh)"
      },
      
      GenMeshPlane = {
        type = "function",
        description = "Generate plane mesh (with subdivisions)",
        args = "(width: number, length: number, resX: number, resZ: number)",
        returns = "(Mesh)"
      },
      
      GenMeshCube = {
        type = "function",
        description = "Generate cuboid mesh",
        args = "(width: number, height: number, length: number)",
        returns = "(Mesh)"
      },
      
      GenMeshSphere = {
        type = "function",
        description = "Generate sphere mesh (standard sphere)",
        args = "(radius: number, rings: number, slices: number)",
        returns = "(Mesh)"
      },
      
      GenMeshHemiSphere = {
        type = "function",
        description = "Generate half-sphere mesh (no bottom cap)",
        args = "(radius: number, rings: number, slices: number)",
        returns = "(Mesh)"
      },
      
      GenMeshCylinder = {
        type = "function",
        description = "Generate cylinder mesh",
        args = "(radius: number, height: number, slices: number)",
        returns = "(Mesh)"
      },
      
      GenMeshTorus = {
        type = "function",
        description = "Generate torus mesh",
        args = "(radius: number, size: number, radSeg: number, sides: number)",
        returns = "(Mesh)"
      },
      
      GenMeshKnot = {
        type = "function",
        description = "Generate trefoil knot mesh",
        args = "(radius: number, size: number, radSeg: number, sides: number)",
        returns = "(Mesh)"
      },
      
      GenMeshHeightmap = {
        type = "function",
        description = "Generate heightmap mesh from image data",
        args = "(heightmap: Image, size: Vector3)",
        returns = "(Mesh)"
      },
      
      GenMeshCubicmap = {
        type = "function",
        description = "Generate cubes-based map mesh from image data",
        args = "(cubicmap: Image, cubeSize: Vector3)",
        returns = "(Mesh)"
      },
      
      -- Mesh manipulation functions
      MeshBoundingBox = {
        type = "function",
        description = "Compute mesh bounding box limits",
        args = "(mesh: Mesh)",
        returns = "(BoundingBox)"
      },
      
      MeshTangents = {
        type = "function",
        description = "Compute mesh tangents",
        args = "(mesh: Mesh)",
        returns = "(void)"
      },
      
      MeshBinormals = {
        type = "function",
        description = "Compute mesh binormals",
        args = "(mesh: Mesh)",
        returns = "(void)"
      },
      
      -- Model drawing functions
      DrawModel = {
        type = "function",
        description = "Draw a model (with texture if set)",
        args = "(model: Model, position: Vector3, scale: number, tint: Color)",
        returns = "(void)"
      },
      
      DrawModelEx = {
        type = "function",
        description = "Draw a model with extended parameters",
        args = "(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: number, scale: Vector3, tint: Color)",
        returns = "(void)"
      },
      
      DrawModelWires = {
        type = "function",
        description = "Draw a model wires (with texture if set)",
        args = "(model: Model, position: Vector3, scale: number, tint: Color)",
        returns = "(void)"
      },
      
      DrawModelWiresEx = {
        type = "function",
        description = "Draw a model wires (with texture if set) with extended parameters",
        args = "(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: number, scale: Vector3, tint: Color)",
        returns = "(void)"
      },
    
      DrawBoundingBox = {
        type = "function",
        description = "Draw bounding box (wires)",
        args = "(box: BoundingBox, color: Color)",
        returns = "(void)"
      },
      
      DrawBillboard = {
        type = "function",
        description = "Draw a billboard texture",
        args = "(camera: Camera, texture: Texture2D, center: Vector3, size: number, tint: color)",
        returns = "(void)"
      },
      
      DrawBillboardRec = {
        type = "function",
        description = "Draw a billboard texture defined by sourceRec",
        args = "(camera: Camera, texture: Texture2D, sourceRec: Rectangle, center: Vector3, size: number, tint: Color)",
        returns = "(void)"
      },
      
      -- Collision detection functions
      CheckCollisionSpheres = {
        type = "function",
        description = "Detect collision between two spheres",
        args = "(centerA: Vector3, radiusA: number, centerB: Vector3, radiusB: number)",
        returns = "(boolean)"
      },
      
      CheckCollisionBoxes = {
        type = "function",
        description = "Detect collision between two bounding boxes",
        args = "(box1: BoundingBox, box2: BoundingBox)",
        returns = "(boolean)"
      },
      
      CheckCollisionBoxSphere = {
        type = "function",
        description = "Detect collision between box and sphere",
        args = "(box: BoundingBox, center: Vector3, radius: number)",
        returns = "(boolean)"
      },
      
      CheckCollisionRaySphere = {
        type = "function",
        description = "Detect collision between ray and sphere",
        args = "(ray: Ray, center: Vector3, radius: number)",
        returns = "(boolean)"
      },
      
      CheckCollisionRaySphereEx = {
        type = "function",
        description = "Detect collision between ray and sphere, returns collision point",
        args = "(ray: Ray, center: Vector3, radius: number, collisionPoint: Vector3)",
        returns = "(boolean)"
      },
      
      CheckCollisionRayBox = {
        type = "function",
        description = "Detect collision between ray and box",
        args = "(ray: Ray, box: BoundingBox)",
        returns = "(boolean)"
      },
      
      GetCollisionRayModel = {
        type = "function",
        description = "Get collision info between ray and model",
        args = "(ray: Ray, model: Model)",
        returns = "(RayHitInfo)"
      },
      
      GetCollisionRayTriangle = {
        type = "function",
        description = "Get collision info between ray and triangle",
        args = "(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3)",
        returns = "(RayHitInfo)"
      },
      
      GetCollisionRayGround = {
        type = "function",
        description = "Get collision info between ray and ground plane (Y-normal plane)",
        args = "(ray: Ray, groundHeight: number)",
        returns = "(RayHitInfo)"
      },
      
      -- module: shaders and VR
      -- Shader loading/unloading functions
      LoadText = {
        type = "function",
        description = "Load chars array from text file",
        args = "(fileName: string)",
        returns = "(string)"
      },
      
      LoadShader = {
        type = "function",
        description = "Load shader from files and bind default locations",
        args = "(vsFileName: string, fsFileName: string)",
        returns = "(Shader)"
      },
      
      LoadShaderCode = {
        type = "function",
        description = "Load shader from code strings and bind default locations",
        args = "(vsCode: string, fsCode: string)",
        returns = "(Shader)"
      },
      
      UnloadShader = {
        type = "function",
        description = "Unload shader from GPU memory (VRAM)",
        args = "(shader: Shader)",
        returns = "(void)"
      },
      
      GetShaderDefault = {
        type = "function",
        description = "Get default shader",
        args = "()",
        returns = "(Shader)"
      },
      
      GetTextureDefault = {
        type = "function",
        description = "Get default texture",
        args = "()",
        returns = "(Texture2D)"
      },
      
      GetShapesTexture = {
        type = "function",
        description = "Get texture to draw shapes",
        args = "()",
        returns = "(Texture2D)"
      },
      
      GetShapesTextureRec = {
        type = "function",
        description = "Get texture rectangle to draw shapes",
        args = "()",
        returns = "(Rectangle)"
      },
      
      SetShapesTexture = {
        type = "function",
        description = "Define default texture used to draw shapes",
        args = "(texture: Texture2D, source: Rectangle)",
        returns = "(void)"
      },
      
      -- Shader configuration functions
      GetShaderLocation = {
        type = "function",
        description = "Get shader uniform location",
        args = "(shader: Shader, uniformName: string)",
        returns = "(number)"
      },
      
      SetShaderValue = {
        type = "function",
        description = "Set shader uniform value",
        args = "(shader: Shader, uniformLoc: number, value: void, uniformType: number)",
        returns = "(void)"
      },
      
      SetShaderValueV = {
        type = "function",
        description = "Set shader uniform value vector",
        args = "(shader: Shader, uniformLoc: number, value: void, uniformType: number, count: number)",
        returns = "(void)"
      },
      
      SetShaderValueMatrix = {
        type = "function",
        description = "Set shader uniform value (matrix 4x4)",
        args = "(shader: Shader, uniformLoc: number, mat: Matrix)",
        returns = "(void)"
      },
      
      SetShaderValueTexture = {
        type = "function",
        description = "Set shader uniform value for texture",
        args = "(shader: Shader, uniformLoc: number, texture: Texture2D)",
        returns = "(void)"
      },
      
      SetMatrixProjection = {
        type = "function",
        description = "Set a custom projection matrix (replaces internal projection matrix)",
        args = "(proj: Matrix)",
        returns = "(void)"
      },
      
      SetMatrixModelView = {
        type = "function",
        description = "Set a custom modelview matrix (replaces internal modelview matrix)",
        args = "(view: Matrix)",
        returns = "(void)"
      },
      
      GetMatrixModelview = {
        type = "function",
        description = "Get internal modelview matrix",
        args = "()",
        returns = "(Matrix)"
      },
      
      GetMatrixProjection = {
        type = "function",
        description = "Get internal projection matrix",
        args = "()",
        returns = "(Matrix)"
      },
      
      -- Shading begin/end functions
      BeginShaderMode = {
        type = "function",
        description = "Begin custom shader drawing",
        args = "(shader: Shader)",
        returns = "(void)"
      },
      
      EndShaderMode = {
        type = "function",
        description = "End custom shader drawing (use default shader)",
        args = "()",
        returns = "(void)"
      },
      
      BeginBlendMode = {
        type = "function",
        description = "Begin blending mode (alpha, additive, multiplied)",
        args = "(mode: number)",
        returns = "(void)"
      },
      
      EndBlendMode = {
        type = "function",
        description = "End blending mode (reset to default: alpha blending)",
        args = "()",
        returns = "(void)"
      },
     
      -- VR control functions
      InitVrSimulator = {
        type = "function",
        description = "Init VR simulator for selected device parameters",
        args = "()",
        returns = "(void)"
      },
      
      CloseVrSimulator = {
        type = "function",
        description = "Close VR simulator for current device",
        args = "()",
        returns = "(void)"
      },
      
      UpdateVrTracking = {
        type = "function",
        description = "Update VR tracking (position and orientation) and camera",
        args = "(camera: Camera)",
        returns = "(void)"
      },
      
      SetVrConfiguration = {
        type = "function",
        description = "Set stereo rendering configuration parameters",
        args = "(info: VrDeviceInfo, distortion: Shader)",
        returns = "(void)"
      },
      
      IsVrSimulatorReady = {
        type = "function",
        description = "Detect if VR simulator is ready",
        args = "()",
        returns = "(boolean)"
      },
      
      ToggleVrMode = {
        type = "function",
        description = "Enable/Disable VR experience",
        args = "()",
        returns = "(void)"
      },
      
      BeginVrDrawing = {
        type = "function",
        description = "Begin VR simulator stereo rendering",
        args = "()",
        returns = "(void)"
      },
      
      EndVrDrawing = {
        type = "function",
        description = "End VR simulator stereo rendering",
        args = "()",
        returns = "(void)"
      },
      
      -- module: audio
      -- Audio device management functions
      InitAudioDevice = {
        type = "function",
        description = "Initialize audio device and context",
        args = "()",
        returns = "(void)"
      },
      
      CloseAudioDevice = {
        type = "function",
        description = "Close the audio device and context (and music stream)",
        args = "()",
        returns = "(void)"
      },
      
      IsAudioDeviceReady = {
        type = "function",
        description = "Check if audio device is ready",
        args = "()",
        returns = "(boolean)"
      },
      
      SetMasterVolume = {
        type = "function",
        description = "Set master volume (listener)",
        args = "(volume: number)",
        returns = "(void)"
      },
      
      -- Wave/Sound loading/unloading functions
      LoadWave = {
        type = "function",
        description = "Load wave data from file",
        args = "(fileName: string)",
        returns = "(Wave)"
      },
      
      LoadWaveEx = {
        type = "function",
        description = "Load wave data from raw array data",
        args = "(data: void, sampleCount: number, sampleRate: number, sampleSize: number, channels: number)",
        returns = "(Wave)"
      },
      
      LoadSound = {
        type = "function",
        description = "Load sound from file",
        args = "(fileName: string)",
        returns = "(Sound)"
      },
      
      LoadSoundFromWave = {
        type = "function",
        description = "Load sound from wave data",
        args = "(wave: Wave)",
        returns = "(Sound)"
      },
      
      UpdateSound = {
        type = "function",
        description = "Update sound buffer with new data",
        args = "(sound: Sound, data: void, samplesCount: number)",
        retruns = "(void)"
      },
      
      UnloadWave = {
        type = "function",
        description = "Unload wave data",
        args = "(wave: Wave)",
        returns = "(void)"
      },
      
      UnloadSound = {
        type = "function",
        description = "Unload sound",
        args = "(sound: Sound)",
        returns = "(void)"
      },
      
      ExportWave = {
        type = "function",
        description = "Export wave data to file",
        args = "(wave: Wave, fileName: string)",
        returns = "(void)"
      },
      
      ExportWaveAsCode = {
        type = "function",
        description = "Export wave sample data to code (.h)",
        args = "(wave: Wave, fileName: string)",
        returns = "(void)"
      },
      
      -- Wave/Sound management functions
      PlaySound = {
        type = "function",
        description = "Play a sound",
        args = "(sound: Sound)",
        returns = "(void)"
      },
      
      StopSound = {
        type = "function",
        description = "Stop playing a sound",
        args = "(sound: Sound)",
        returns = "(void)"
      },
      
      PauseSound = {
        type = "function",
        description = "Pause a sound",
        args = "(sound: Sound)",
        returns = "(void)"
      },
      
      ResumeSound = {
        type = "function",
        description = "Resume a paused sound",
        args = "(sound: Sound)",
        returns = "(void)"
      },
      
      PlaySoundMulti = {
        type = "function",
        description = "Play a sound (using multichannel buffer pool)",
        args = "(sound: Sound)",
        returns = "(void)"
      },
      
      GetSoundsPlaying = {
        type = "function",
        description = "Get number of sounds playing in the multichannel",
        args = "()",
        returns = "(number)"
      },
      
      IsSoundPlaying = {
        type = "function",
        description = "Check if a sound is currently playing",
        args = "(sound: Sound)",
        retruns = "(boolean)"
      },
      
      SetSoundVolume = {
        type = "function",
        description = "Set volume for a sound (1.0 is max level)",
        args = "(sound: Sound, volume: number)",
        returns = "(void)"
      },
      
      SetSoundPitch = {
        type = "function",
        description = "Set pitch for a sound (1.0 is base level)",
        args = "(sound: Sound, pitch: number)",
        returns = "(void)"
      },
      
      WaveFormat = {
        type = "function",
        description = "Convert wave data to desired format",
        args = "(wave: Wave, sampleRate: number, sampleSize: number, channels: number)",
        returns = "(void)"
      },
      
      WaveCopy = {
        type = "function",
        description = "Copy a wave to a new wave",
        args = "(wave: Wave)",
        returns = "(Wave)"  
      },
      
      WaveCrop = {
        type = "function",
        description = "Crop a wave to defined samples range",
        args = "(wave: Wave, initSample: number, finalSample: number)",
        retruns = "(void)"
      },
      
      GetWaveData = {
        type = "function",
        description = "Get samples data from wave as a floats array",
        args = "(wave: Wave)",
        returns = "(number)"
      },
      
      -- Music management functions
      LoadMusicStream = {
        type = "function",
        description = "Load music stream from file",
        args = "(fileName: string)",
        returns = "(Music)"
      },
      
      UnloadMusicStream = {
        type = "function",
        description = "Unload music stream",
        args = "(music: Music)",
        returns = "(void)"
      },
      
      PlayMusicStream = {
        type = "function",
        description = "Start music playing",
        args = "(music: Music)",
        returns = "(void)"
      },
      
      UpdateMusicStream = {
        type = "function",
        description = "Updates buffers for music streaming",
        args = "(music: Music)",
        returns = "(void)"
      },
      
      StopMusicStream = {
        type = "function",
        description = "Stop music playing",
        args = "(music: Music)",
        returns = "(void)"
      },
      
      PauseMusicStream = {
        type = "function",
        description = "Pause music playing",
        args = "(music: Music)",
        returns = "(void)"
      },
      
      ResumeMusicStream = {
        type = "function",
        description = "Resume playing paused music",
        args = "(music: Music)",
        returns = "(void)"
      },
      
      IsMusicPlaying = {
        type = "function",
        description = "Check if music is playing",
        args = "(music: Music)",
        returns = "(boolean)"
      },
      
      SetMusicVolume = {
        type = "function",
        description = "Set volume for music (1.0 is max level)",
        args = "(music: Music, volume: number)",
        returns = "(void)"
      },
      
      SetMusicPitch = {
        type = "function",
        description = "Set pitch for a music (1.0 is base level)",
        args = "(music: Music, pitch: number)",
        returns = "(void)"
      },
      
      SetMusicLoopCount = {
        type = "function",
        description = "Set music loop count (loop repeats)",
        args = "(music: Music, count: number)",
        returns = "(void)"
      },
      
      GetMusicTimeLength = {
        type = "function",
        description = "Get music time length (in seconds)",
        args = "(music: Music)",
        returns = "(number)"
      },
      
      GetMusicTimePlayed = {
        type = "function",
        description = "Get current music time played (in seconds)",
        args = "(music: Music)",
        returns = "(number)"
      },
      
      -- AudioStream management functions
      InitAudioStream = {
        type = "function",
        description = "Init audio stream (to stream raw audio pcm data)",
        args = "(sampleRate: number, sampleSize: number, channels: number)",
        returns = "(AudioStream)"
      },
      
      UpdateAudioStream = {
        type = "function",
        description = "Update audio stream buffers with data",
        args = "(stream: AudioStream, data: void, samplesCount: number)",
        returns = "(void)"
      },
      
      CloseAudioStream = {
        type = "function",
        description = "Close audio stream and free memory",
        args = "(stream: AudioStream)",
        retruns = "(void)"
      },
      
      IsAudioBufferProcessed = {
        type = "function",
        description = "Check if any audio stream buffers requires refill",
        args = "(stream: AudioStream)",
        retruns = "(boolean)"
      },
      
      PlayAudioStream = {
        type = "function",
        description = "Play audio stream",
        args = "(stream: AudioStream)",
        retruns = "(void)"
      },
      
      PauseAudioStream = {
        type = "function",
        description = "Pause audio stream",
        args = "(stream: AudioStream)",
        retruns = "(void)"
      },
      
      ResumeAudioStream = {
        type = "function",
        description = "Resume audio stream",
        args = "(stream: AudioStream)",
        retruns = "(void)"
      },
      
      IsAudioStreamPlaying = {
        type = "function",
        description = "Check if audio stream is playing",
        args = "(stream: AudioStream)",
        retruns = "(boolean)"
      },
      
      StopAudioStream = {
        type = "function",
        description = "Stop audio stream",
        args = "(stream: AudioStream)",
        retruns = "(void)"
      },
      
      SetAudioStreamVolume = {
        type = "function",
        description = "Set volume for audio stream (1.0 is max level)",
        args = "(stream: AudioStream, volume: number)",
        returns = "(void)"
      },
      
      SetAudioStreamPitch = {
        type = "function",
        description = "Set pitch for audio stream (1.0 is base level)",
        args = "(stream: AudioStream, pitch: number)",
        returns = "(void)"
      },
      
      -- System config flags
      -- NOTE: Used for bit masks
      FLAG_RESERVED = {
        type = "value",
        description = "Reserved"
      },
      
      FLAG_FULLSCREEN_MODE = {
        type = "value",
        description = "Set to run program in fullscreen"
      },
      
      FLAG_WINDOW_RESIZABLE = {
        type = "value",
        description = "Set to allow resizable window"
      },
      
      FLAG_WINDOW_UNDECORATED = {
        type = "value",
        description = "Set to disable window decoration (frame and buttons)"
      },
      
      FLAG_WINDOW_TRANSPARENT = {
        type = "value",
        description = "Set to allow transparent window"
      },
      
      FLAG_WINDOW_HIDDEN = {
        type = "value",
        description = "Set to create the window initially hidden"
      },
      
      FLAG_WINDOW_ALWAYS_RUN = {
        type = "value",
        description = "Set to allow windows running while minimized"
      },
      
      FLAG_WINDOW_4X_HINT = {
        type = "value",
        description = "Set to try enabling MSAA 4X"
      },
      
      FLAG_WINDOW_VSYNC_HINT = {
        type = "value",
        description = "Set to try enabling V-Sync on GPU"
      },
      
      -- Trace log type
      LOG_ALL = {
        type = "value",
        description = "Display all logs"
      },
      
      LOG_TRACE = { type = "value" },
      LOG_DEBUG = { type = "value" },
      LOG_INFO = { type = "value" },
      LOG_WARNING = { type = "value" },
      LOG_ERROR = { type = "value" },
      LOG_FATAL = { type = "value" },
      
      -- Disable logging
      LOG_NONE = {
        type = "value",
        description = "Display all logs"
      },
      
      -- Keyboard keys
      -- Alphanumeric keys
      KEY_APOSTROPHE = { type = "value" },
      KEY_COMMA = { type = "value" },
      KEY_MINUS = { type = "value" },
      KEY_PERIOD = { type = "value" },
      KEY_SLASH = { type = "value" },
      KEY_ZERO = { type = "value" },
      KEY_ONE = { type = "value" },
      KEY_TWO = { type = "value" },
      KEY_THREE = { type = "value" },
      KEY_FOUR = { type = "value" },
      KEY_FIVE = { type = "value" },
      KEY_SIX = { type = "value" },
      KEY_SEVEN = { type = "value" },
      KEY_EIGHT = { type = "value" },
      KEY_NINE = { type = "value" },
      KEY_SEMICOLOR = { type = "value" },
      KEY_EQUAL = { type = "value" },
      KEY_A = { type = "value" },
      KEY_B = { type = "value" },
      KEY_C = { type = "value" },
      KEY_D = { type = "value" },
      KEY_E = { type = "value" },
      KEY_F = { type = "value" },
      KEY_G = { type = "value" },
      KEY_H = { type = "value" },
      KEY_I = { type = "value" },
      KEY_J = { type = "value" },
      KEY_K = { type = "value" },
      KEY_L = { type = "value" },
      KEY_M = { type = "value" },
      KEY_N = { type = "value" },
      KEY_O = { type = "value" },
      KEY_P = { type = "value" },
      KEY_Q = { type = "value" },
      KEY_R = { type = "value" },
      KEY_S = { type = "value" },
      KEY_T = { type = "value" },
      KEY_U = { type = "value" },
      KEY_V = { type = "value" },
      KEY_W = { type = "value" },
      KEY_X = { type = "value" },
      KEY_Y = { type = "value" },
      KEY_Z = { type = "value" },
      
      -- Function keys
      KEY_SPACE = { type = "value" },
      KEY_ESCAPE = { type = "value" },
      KEY_ENTER = { type = "value" },
      KEY_TAB = { type = "value" },
      KEY_BACKSPACE = { type = "value" },
      KEY_INSERT = { type = "value" },
      KEY_DELETE = { type = "value" },
      KEY_RIGHT = { type = "value" },
      KEY_LEFT = { type = "value" },
      KEY_DOWN = { type = "value" },
      KEY_UP = { type = "value" },
      KEY_PAGE_UP = { type = "value" },
      KEY_PAGE_DOWN = { type = "value" },
      KEY_HOME = { type = "value" },
      KEY_END = { type = "value" },
      KEY_CAPS_LOCK = { type = "value" },
      KEY_SCROLL_LOCK = { type = "value" },
      KEY_NUM_LOCK = { type = "value" },
      KEY_PRINT_SCREEN = { type = "value" },
      KEY_PAUSE = { type = "value" },
      KEY_F1 = { type = "value" },
      KEY_F2 = { type = "value" },
      KEY_F3 = { type = "value" },
      KEY_F4 = { type = "value" },
      KEY_F5 = { type = "value" },
      KEY_F6 = { type = "value" },
      KEY_F7 = { type = "value" },
      KEY_F8 = { type = "value" },
      KEY_F9 = { type = "value" },
      KEY_F10 = { type = "value" },
      KEY_F11 = { type = "value" },
      KEY_F12 = { type = "value" },
      KEY_LEFT_SHIFT = { type = "value" },
      KEY_LEFT_CONTROL = { type = "value" },
      KEY_LEFT_ALT = { type = "value" },
      KEY_LEFT_SUPER = { type = "value" },
      KEY_RIGHT_SHIFT = { type = "value" },
      KEY_RIGHT_CONTROL = { type = "value" },
      KEY_RIGHT_ALT = { type = "value" },
      KEY_RIGHT_SUPER = { type = "value" },
      KEY_KB_MENU = { type = "value" },
      KEY_LEFT_BRACKET = { type = "value" },
      KEY_BACKSLASH = { type = "value" },
      KEY_RIGHT_BRACKET = { type = "value" },
      KEY_GRAVE = { type = "value" },
      
      -- Keypad keys
      KEY_KP_0 = { type = "value" },
      KEY_KP_1 = { type = "value" },
      KEY_KP_2 = { type = "value" },
      KEY_KP_3 = { type = "value" },
      KEY_KP_4 = { type = "value" },
      KEY_KP_5 = { type = "value" },
      KEY_KP_6 = { type = "value" },
      KEY_KP_7 = { type = "value" },
      KEY_KP_8 = { type = "value" },
      KEY_KP_9 = { type = "value" },
      KEY_KP_DECIMAL = { type = "value" },
      KEY_KP_DIVIDE = { type = "value" },
      KEY_KP_MULTIPLY = { type = "value" },
      KEY_KP_SUBTRACT = { type = "value" },
      KEY_KP_ADD = { type = "value" },
      KEY_KP_ENTER = { type = "value" },
      KEY_KP_EQUAL = { type = "value" },
      
      -- Android buttons
      KEY_BACK = { type = "value" },
      KEY_MENU = { type = "value" },
      KEY_VOLUME_UP = { type = "value" },
      KEY_VOLUME_DOWN = { type = "value" },
      
      -- Mouse buttons
      MOUSE_LEFT_BUTTON = { type = "value" },
      MOUSE_RIGHT_BUTTON = { type = "value" },
      MOUSE_MIDDLE_BUTTON = { type = "value" },
      
      -- Gamepad number
      GAMEPAD_PLAYER1 = { type = "value" },
      GAMEPAD_PLAYER2 = { type = "value" },
      GAMEPAD_PLAYER3 = { type = "value" },
      GAMEPAD_PLAYER4 = { type = "value" },
      
      -- Gamepad buttons
      GAMEPAD_BUTTON_UNKNOWN = { type = "value" },
      
      -- This is normally a DPAD
      GAMEPAD_BUTTON_LEFT_FACE_UP = { type = "value" },
      GAMEPAD_BUTTON_LEFT_FACE_RIGHT = { type = "value" },
      GAMEPAD_BUTTON_LEFT_FACE_DOWN = { type = "value" },
      GAMEPAD_BUTTON_LEFT_FACE_LEFT = { type = "value" },
      
      -- This is normally corresponds with PlayStation and XBOX controllers
      -- XBOX: [Y, X, A, B]
      -- PS3/PS4: [Triangle, Square, Cross, Circle]
      -- No support for 6 button controllers though...
      GAMEPAD_BUTTON_RIGHT_FACE_UP = { type = "value" },
      GAMEPAD_BUTTON_RIGHT_FACE_RIGHT = { type = "value" },
      GAMEPAD_BUTTON_RIGHT_FACE_DOWN = { type = "value" },
      GAMEPAD_BUTTON_RIGHT_FACE_LEFT = { type = "value" },
      
      -- Triggers
      GAMEPAD_BUTTON_LEFT_TRIGGER_1 = { type = "value" },
      GAMEPAD_BUTTON_LEFT_TRIGGER_2 = { type = "value" },
      GAMEPAD_BUTTON_RIGHT_TRIGGER_1 = { type = "value" },
      GAMEPAD_BUTTON_RIGHT_TRIGGER_2 = { type = "value" },
      
      -- These are buttons in the center of the gamepad
      GAMEPAD_BUTTON_MIDDLE_LEFT = { type = "value", description = "PS3 Select" },
      GAMEPAD_BUTTON_MIDDLE = { type = "value", description = "PS Button/XBOX Button" },
      GAMEPAD_BUTTON_MIDDLE_RIGHT = { type = "value", description = "PS3 Start" },

      -- These are the joystick press in buttons
      GAMEPAD_BUTTON_LEFT_THUMB = { type = "value" },
      GAMEPAD_BUTTON_RIGHT_THUMB = { type = "value" },
      
      -- Left stick
      GAMEPAD_AXIS_LEFT_X = { type = "value" },
      GAMEPAD_AXIS_LEFT_Y = { type = "value" },

      -- Right stick
      GAMEPAD_AXIS_RIGHT_X = { type = "value" },
      GAMEPAD_AXIS_RIGHT_Y = { type = "value" },

      -- Pressure levels for the back triggers
      GAMEPAD_AXIS_LEFT_TRIGGER = { type = "value", description = "[1..-1] (pressure-level)" },
      GAMEPAD_AXIS_RIGHT_TRIGGER = { type = "value", description = "[1..-1] (pressure-level)" },
      
      -- Shader location point type
      LOC_VERTEX_POSITION = { type = "value" },
      LOC_VERTEX_TEXCOORD01 = { type = "value" },
      LOC_VERTEX_TEXCOORD02 = { type = "value" },
      LOC_VERTEX_NORMAL = { type = "value" },
      LOC_VERTEX_TANGENT = { type = "value" },
      LOC_VERTEX_COLOR = { type = "value" },
      LOC_MATRIX_MVP = { type = "value" },
      LOC_MATRIX_MODEL = { type = "value" },
      LOC_MATRIX_VIEW = { type = "value" },
      LOC_MATRIX_PROJECTION = { type = "value" },
      LOC_VECTOR_VIEW = { type = "value" },
      LOC_COLOR_DIFFUSE = { type = "value" },
      LOC_COLOR_SPECULAR = { type = "value" },
      LOC_COLOR_AMBIENT = { type = "value" },
      LOC_MAP_DIFFUSE = { type = "value" },
      LOC_MAP_ALBEDO = { type = "value" },
      LOC_MAP_SPECULAR = { type = "value" },
      LOC_MAP_METALNESS = { type = "value" },
      LOC_MAP_NORMAL = { type = "value" },
      LOC_MAP_ROUGHNESS = { type = "value" },
      LOC_MAP_OCCLUSION = { type = "value" },
      LOC_MAP_EMISSION = { type = "value" },
      LOC_MAP_HEIGHT = { type = "value" },
      LOC_MAP_CUBEMAP = { type = "value" },
      LOC_MAP_IRRADIANCE = { type = "value" },
      LOC_MAP_PREFILTER = { type = "value" },
      LOC_MAP_BRD = { type = "value" },
      
      -- Shader uniform data types
      UNIFORM_FLOAT = { type = "value" },
      UNIFORM_VEC2 = { type = "value" },
      UNIFORM_VEC3 = { type = "value" },
      UNIFORM_VEC4 = { type = "value" },
      UNIFORM_INT = { type = "value" },
      UNIFORM_IVEC2 = { type = "value" },
      UNIFORM_IVEC3 = { type = "value" },
      UNIFORM_IVEC4 = { type = "value" },
      UNIFORM_SAMPLER2D = { type = "value" },
      
      -- Material map type
      MAP_DIFFUSE = { type = "value" },
      MAP_ALBEDO = { type = "value" },
      MAP_METALNESS = { type = "value" },
      MAP_SPECULAR = { type = "value" },
      MAP_NORMAL = { type = "value" },
      MAP_ROUGHNESS = { type = "value" },
      MAP_OCCLUSION = { type = "value" },
      MAP_EMISSION = { type = "value" },
      MAP_HEIGHT = { type = "value" },
      MAP_CUBEMAP = { type = "value" },             -- NOTE: Uses GL_TEXTURE_CUBE_MAP
      MAP_IRRADIANCE = { type = "value" },          -- NOTE: Uses GL_TEXTURE_CUBE_MAP
      MAP_PREFILTER = { type = "value" },           -- NOTE: Uses GL_TEXTURE_CUBE_MAP
      MAP_BRDF = { type = "value" },
      
      -- Pixel formats
      -- NOTE: Support depends on OpenGL version and platform
      UNCOMPRESSED_GRAYSCALE = { type = "value" },         -- 8 bit per pixel (no alpha)
      UNCOMPRESSED_GRAY_ALPHA = { type = "value" },        -- 8*2 bpp (2 channels)
      UNCOMPRESSED_R5G6B5 = { type = "value" },            -- 16 bpp
      UNCOMPRESSED_R8G8B8 = { type = "value" },            -- 24 bpp
      UNCOMPRESSED_R5G5B5A1 = { type = "value" },          -- 16 bpp (1 bit alpha)
      UNCOMPRESSED_R4G4B4A4 = { type = "value" },          -- 16 bpp (4 bit alpha)
      UNCOMPRESSED_R8G8B8A8 = { type = "value" },          -- 32 bpp
      UNCOMPRESSED_R32 = { type = "value" },               -- 32 bpp (1 channel - float)
      UNCOMPRESSED_R32G32B32 = { type = "value" },         -- 32*3 bpp (3 channels - float)
      UNCOMPRESSED_R32G32B32A32 = { type = "value" },      -- 32*4 bpp (4 channels - float)
      COMPRESSED_DXT1_RGB = { type = "value" },            -- 4 bpp (no alpha)
      COMPRESSED_DXT1_RGBA = { type = "value" },           -- 4 bpp (1 bit alpha)
      COMPRESSED_DXT3_RGBA = { type = "value" },           -- 8 bpp
      COMPRESSED_DXT5_RGBA = { type = "value" },           -- 8 bpp
      COMPRESSED_ETC1_RGB = { type = "value" },            -- 4 bpp
      COMPRESSED_ETC2_RGB = { type = "value" },            -- 4 bpp
      COMPRESSED_ETC2_EAC_RGBA = { type = "value" },       -- 8 bpp
      COMPRESSED_PVRT_RGB = { type = "value" },            -- 4 bpp
      COMPRESSED_PVRT_RGBA = { type = "value" },           -- 4 bpp
      COMPRESSED_ASTC_4x4_RGBA = { type = "value" },       -- 8 bpp
      COMPRESSED_ASTC_8x8_RGBA = { type = "value" },       -- 2 bpp
      
      -- Texture parameters: filter mode
      -- NOTE 1: Filtering considers mipmaps if available in the texture
      -- NOTE 2: Filter is accordingly set for minification and magnification
      FILTER_POINT = { type = "value", description = "No filter, just pixel aproximation" },
      FILTER_BILINEAR = { type = "value", description = "Linear filtering" },
      FILTER_TRILINEAR = { type = "value", description = "Trilinear filtering (linear with mipmaps)" },
      FILTER_ANISOTROPIC_4X = { type = "value", description = "Anisotropic filtering 4x" },
      FILTER_ANISOTROPIC_8X = { type = "value", description = "Anisotropic filtering 8x" },
      FILTER_ANISOTROPIC_16X = { type = "value", description = "Anisotropic filtering 16x" },
      
      -- Cubemap layout type
      CUBEMAP_AUTO_DETECT = { type = "value", description = "Automatically detect layout type" },
      CUBEMAP_LINE_VERTICAL = { type = "value", description = "Layout is defined by a vertical line with faces" },
      CUBEMAP_LINE_HORIZONTAL = { type = "value", description = "Layout is defined by an horizontal line with faces" },
      CUBEMAP_CROSS_THREE_BY_FOUR = { type = "value", description = "Layout is defined by a 3x4 cross with cubemap faces" },
      CUBEMAP_CROSS_FOUR_BY_THREE = { type = "value", description = "Layout is defined by a 4x3 cross with cubemap faces" },
      CUBEMAP_PANORAMA = { type = "value", description = "Layout is defined by a panorama image (equirectangular map)" },
      
      -- Texture parameters: wrap mode
      WRAP_REPEAT = { type = "value", description = "Repeats texture in tiled mode" },
      WRAP_CLAMP = { type = "value", description = "Clamps texture to edge pixel in tiled mode" },
      WRAP_MIRROR_REPEAT = { type = "value", description = "Mirrors and repeats the texture in tiled mode" },
      WRAP_MIRROR_CLAMP = { type = "value", description = "Mirrors and clamps to border the texture in tiled mode" },
    
      -- Font type, defines generation method
      FONT_DEFAULT = { type = "value", description = "Default font generation, anti-aliased" },
      FONT_BITMAP = { type = "value", description = "Bitmap font generation, no anti-aliasing" },
      FONT_SDF = { type = "value", description = "SDF font generation, requires external shader" },
    
      -- Gestures type
      -- NOTE: It could be used as flags to enable only some gestures
      GESTURE_NONE        = { type = "value" },
      GESTURE_TAP         = { type = "value" },
      GESTURE_DOUBLETAP   = { type = "value" },
      GESTURE_HOLD        = { type = "value" },
      GESTURE_DRAG        = { type = "value" },
      GESTURE_SWIPE_RIGHT = { type = "value" },
      GESTURE_SWIPE_LEFT  = { type = "value" },
      GESTURE_SWIPE_UP    = { type = "value" },
      GESTURE_SWIPE_DOWN  = { type = "value" },
      GESTURE_PINCH_IN    = { type = "value" },
      GESTURE_PINCH_OUT   = { type = "value" },
      
      -- Camera system modes
      CAMERA_CUSTOM = { type = "value" },
      CAMERA_FREE = { type = "value" },
      CAMERA_ORBITAL = { type = "value" },
      CAMERA_FIRST_PERSON = { type = "value" },
      CAMERA_THIRD_PERSON = { type = "value" },
      
      -- Camera projection modes
      CAMERA_PERSPECTIVE = { type = "value" },
      CAMERA_ORTHOGRAPHIC = { type = "value" },
      
      -- Type of n-patch
      NPT_9PATCH = { type = "value", description = "Npatch defined by 3x3 tiles" },
      NPT_3PATCH_VERTICAL = { type = "value", description = "Npatch defined by 1x3 tiles" },
      NPT_3PATCH_HORIZONTAL = { type = "value", description = "Npatch defined by 3x1 tiles" },
      
      -- Some definitions moved to here by Lua code, This is a direct port of the code
      PI = { type = "value" },
      DEG2RAD = { type = "value" },
      RAD2DEG = { type = "value" },
      
      -- Default internal render batch limits
      DEFAULT_BATCH_BUFFER_ELEMENTS   = { type = "value" },
      DEFAULT_BATCH_BUFFERS           = { type = "value", description = "Default number of batch buffers (multi-buffering)" },
      DEFAULT_BATCH_DRAWCALLS         = { type = "value", description = "Default number of batch draw calls (by state changes: mode, texture)" },
      MAX_MATRIX_STACK_SIZE           = { type = "value", description = "Maximum size of Matrix stack" },
      MAX_SHADER_LOCATIONS            = { type = "value", description = "Maximum number of shader locations supported" },
      MAX_MATERIAL_MAPS               = { type = "value", description = "Maximum number of shader maps supported" },

      -- Texture parameters (equivalent to OpenGL defines)
      RL_TEXTURE_WRAP_S               = { type = "value", description = "GL_TEXTURE_WRAP_S" },
      RL_TEXTURE_WRAP_T               = { type = "value", description = "GL_TEXTURE_WRAP_T" },
      RL_TEXTURE_MAG_FILTER           = { type = "value", description = "GL_TEXTURE_MAG_FILTER" },
      RL_TEXTURE_MIN_FILTER           = { type = "value", description = "GL_TEXTURE_MIN_FILTER" },
      RL_TEXTURE_ANISOTROPIC_FILTER   = { type = "value", description = "Anisotropic filter (custom identifier)" },

      RL_FILTER_NEAREST               = { type = "value", description = "GL_NEAREST" },
      RL_FILTER_LINEAR                = { type = "value", description = "GL_LINEAR" },
      RL_FILTER_MIP_NEAREST           = { type = "value", description = "GL_NEAREST_MIPMAP_NEAREST" },
      RL_FILTER_NEAREST_MIP_LINEAR    = { type = "value", description = "GL_NEAREST_MIPMAP_LINEAR" },
      RL_FILTER_LINEAR_MIP_NEAREST    = { type = "value", description = "GL_LINEAR_MIPMAP_NEAREST" },
      RL_FILTER_MIP_LINEAR            = { type = "value", description = "GL_LINEAR_MIPMAP_LINEAR" },

      RL_WRAP_REPEAT                  = { type = "value", description = "GL_REPEAT" },
      RL_WRAP_CLAMP                   = { type = "value", description = "GL_CLAMP_TO_EDGE" },
      RL_WRAP_MIRROR_REPEAT           = { type = "value", description = "GL_MIRRORED_REPEAT" },
      RL_WRAP_MIRROR_CLAMP            = { type = "value", description = "GL_MIRROR_CLAMP_EXT" },

      -- Matrix modes (equivalent to OpenGL)
      RL_MODELVIEW                    = { type = "value", description = "GL_MODELVIEW" },
      RL_PROJECTION                   = { type = "value", description = "GL_PROJECTION" },
      RL_TEXTURE                      = { type = "value", description = "GL_TEXTURE" },

      -- Primitive assembly draw modes
      RL_LINES                        = { type = "value", description = "GL_LINES" },
      RL_TRIANGLES                    = { type = "value", description = "GL_TRIANGLES" },
      RL_QUADS                        = { type = "value", description = "GL_QUADS" },
      
      RL_CULL_DISTANCE_NEAR            = { type = "value", description = "Default near cull distance" },
      RL_CULL_DISTANCE_FAR             = { type = "value", description = "Default far cull distance" },
      
      MAX_LIGHTS = { type = "value" },
      LIGHT_DISTANCE = { type = "value" },
      LIGHT_HEIGHT = { type = "value" },
      lights = { type = "value" },
      lightsCount = { type = "value" },
      
      CreateLight = {
        type = "function",
        description = "Defines a light and get locations from PBR shader",
        args = "(type: number, pos: Vector3, targ: Vector3, color: Color, shader: Shader)",
        returns = "(void)"
      },
      
      UpdateLightValues = {
        type = "function",
        description = "Send to PBR shader light values",
        args = "(shader: Shader, light: Light)",
        returns = "(void)"
      },
      
      -- Some Basic Colors
      -- NOTE: Custom raylib color palette for amazing visuals on WHITE background
      LIGHTGRAY = { type = "value", description = "Light Gray" },
      GRAY = { type = "value", description = "Gray" },
      DARKGRAY = { type = "value", description = "Dark Gray" },
      YELLOW = { type = "value", description = "Yellow" },
      GOLD = { type = "value", description = "Gold" },
      ORANGE = { type = "value", description = "Orange" },
      PINK = { type = "value", description = "Pink" },
      RED = { type = "value", description = "Red" },
      MAROON = { type = "value", description = "Maroon" },
      GREEN = { type = "value", description = "Green" },
      LIME = { type = "value", description = "Lime" },
      DARKGREEN = { type = "value", description = "Dark Green" },
      SKYBLUE = { type = "value", description = "Sky Blue" },
      BLUE = { type = "value", description = "Blue" },
      DARKBLUE = { type = "value", description = "Dark Blue" },
      PURPLE = { type = "value", description = "Purple" },
      VIOLET = { type = "value", description = "Violet" },
      DARKPURPLE = { type = "value", description = "Dark Purple" },
      BEIGE = { type = "value", description = "Beige" },
      BROWN = { type = "value", description = "Brown" },
      DARKBROWN = { type = "value", description = "Dark Brown" },
      
      WHITE = { type = "value", description = "White" },
      BLACK = { type = "value", description = "Black" },
      BLANK = { type = "value", description = "Blank (Transparent)" },
      MAGENTA = { type = "value", description = "Magenta" },
      RAYWHITE = { type = "value", description = "My own White (raylib logo)" },
      
      -- easings.h
      -- NOTES: easings.h didn't provided description for easing functions
      -- Linear Easing functions
      EaseLinearNone = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseLinearIn = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseLinearOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseLinearIntOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      -- Sine Easing functions
      EaseSineIn = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseSineOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseSineInOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      -- Circular Easing functions
      EaseCircIn = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseCircOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseCircInOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      -- Cubic Easing functions
      EaseCubicIn = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseCubicOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseCubicInOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      -- Quadratic Easing functions
      EaseQuadIn = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseQuadOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseQuadInOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      -- Exponential Easing functions
      EaseExpoIn = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseExpoOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseExpoInOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      -- Back Easing functions
      EaseBackIn = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseBackOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseBackInOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      -- Bounce Easing functions
      EaseBounceIn = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseBounceOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseBounceInOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      -- Elastic Easing functions
      EaseElasticIn = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseElasticOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      EaseElasticInOut = {
        type = "function",
        args = "(t: number, b: number, c: number, d: number)",
        returns = "(number)"
      },
      
      -- rlgl.h functions
      -- Functions Declaration - Matrix operations
      rlMatrixMode = {
        type = "function",
        description = "hoose the current matrix to be transformed",
        args = "(mode: number)",
        returns = "(void)"
      },
      
      rlPushMatrix = {
        type = "function",
        description = "Push the current matrix to stack",
        args = "()",
        returns = "(void)"
      },
      
      rlPopMatrix = {
        type = "function",
        description = "Pop lattest inserted matrix from stack",
        args = "()",
        returns = "(void)"
      },
      
      rlLoadIdentity = {
        type = "function",
        description = "Reset current matrix to identity matrix",
        args = "()",
        returns = "(void)"
      },
      
      rlTranslatef = {
        type = "function",
        description = "Multiply the current matrix by a translation matrix",
        args = "(x: number, y: number, z: number)",
        returns = "(void)"
      },
      
      rlRotatef = {
        type = "function",
        description = "Multiply the current matrix by a rotation matrix",
        args = "(angleDeg: number, x: number, y: number, z: number)",
        returns = "(void)"
      },
      
      rlScalef = {
        type = "function",
        description = "Multiply the current matrix by a scaling matrix",
        args = "(x: number, y: number, z: number)",
        returns = "(void)"
      },
      
      rlMultMatrixf = {
        type = "function",
        description = "Multiply the current matrix by another matrix",
        args = "(matf: number)",
        returns = "(void)"
      },
      
      rlFrustum = {
        type = "function",
        args = "(left: number, right: number, bottom: number, top: number, znear: number, zfar: number)",
        returns = "(void)"
      },
      
      rlOrtho = {
        type = "function",
        args = "(left: number, right: number, bottom: number, top: number, znear: number, zfar: number)",
        returns = "(void)"
      },
      
      rlViewport = {
        type = "function",
        description = "Set the viewport area",
        args = "(x: number, y: number, width: number, height: number)",
        returns = "(void)"
      },
      
      -- Functions Declaration - Vertex level operations
      rlBegin = {
        type = "function",
        description = "Initialize drawing mode (how to organize vertex)",
        args = "(mode: number)",
        returns = "(void)"
      },
      
      rlEnd = {
        type = "function",
        description = "Finish vertex providing",
        args = "()",
        returns = "(void)"
      },
      
      rlVertex2i = {
        type = "function",
        description = "Define one vertex (position) - 2 int",
        args = "(x: number, y: number)",
        returns = "(void)"
      },
      
      rlVertex2f = {
        type = "function",
        description = "Define one vertex (position) - 2 float",
        args = "(x: number, y: number)",
        returns = "(void)"
      },
      
      rlVertex3f = {
        type = "function",
        description = "Define one vertex (position) - 3 float",
        args = "(x: number, y: number, z: number)",
        returns = "(void)"
      },
      
      rlTexCoord2f = {
        type = "function",
        description = "Define one vertex (texture coordinate) - 2 float",
        args = "(x: number, y: number)",
        returns = "(void)"
      },
      
      rlNormal3f = {
        type = "function",
        description = "Define one vertex (normal) - 3 float",
        args = "(x: number, y: number, z: number)",
        returns = "(void)"
      },
      
      rlColor4ub = {
        type = "function",
        description = "Define one vertex (color) - 4 byte",
        args = "(r: number, g: number, b: number, a: number)",
        returns = "(void)"
      },
      
      rlColor3f = {
        type = "function",
        description = "Define one vertex (color) - 3 float",
        args = "(r: number, g: number, b: number)",
        returns = "(void)"
      },
      
      rlColor4f = {
        type = "function",
        description = "Define one vertex (color) - 4 float",
        args = "(r: number, g: number, b: number, a: number)",
        returns = "(void)"
      },
      
      -- Functions Declaration - OpenGL equivalent functions (common to 1.1, 3.3+, ES2)
      -- NOTE: This functions are used to completely abstract raylib code from OpenGL layer
      rlEnableTexture = {
        type = "function",
        description = "Enable texture usage",
        args = "(id: number)",
        retruns = "(void)"
      },
      
      rlDisableTexture = {
        type = "function",
        description = "Disable texture usage",
        args = "()",
        returns = "(void)"
      },
      
      rlTextureParameters = {
        type = "function",
        description = "Set texture parameters (filter, wrap)",
        args = "(id: number, param: number, value: number)",
        returns = "(void)"
      },
      
      rlEnableRenderTexture = {
        type = "function",
        description = "Enable render texture (fbo)",
        args = "(id: number)",
        returns = "(void)"
      },
      
      rlDisableRenderTexture = {
        type = "function",
        description = "Disable render texture (fbo), return to default",
        args = "()",
        returns = "(void)"
      },
      
      rlEnableDepthTest = {
        type = "function",
        description = "Enable depth test",
        args = "()",
        returns = "(void)"
      },
      
      rlDisableDepthTest = {
        type = "function",
        description = "Disable depth test",
        args = "()",
        returns = "(void)"
      },
      
      rlEnableBackfaceCulling = {
        type = "function",
        description = "Enable backface culling",
        args = "()",
        returns = "(void)"        
      },
      
      rlDisableBackfaceCulling = {
        type = "function",
        description = "Disable backface culling",
        args = "()",
        returns = "(void)"        
      },
      
      rlEnableScissorTest = {
        type = "function",
        description = "Enable scissor test",
        args = "()",
        returns = "(void)"        
      },
      
      rlDisableScissorTest = {
        type = "function",
        description = "Disable scissor test",
        args = "()",
        returns = "(void)"        
      },
      
      rlScissor = {
        type = "function",
        description = "Scissor test",
        args = "(x: number, y: number, width: number, height: number)",
        returns = "(void)"
      },
      
      rlEnableWireMode = {
        type = "function",
        description = "Enable wire mode",
        args = "()",
        returns = "(void)"
      },
      
      rlDisableWireMode = {
        type = "function",
        description = "Disable wire mode",
        args = "()",
        returns = "(void)"
      },
      
      rlDeleteTextures = {
        type = "function",
        description = "Delete OpenGL texture from GPU",
        args = "(id: number)",
        returns = "(void)"
      },
      
      rlDeleteRenderTextures = {
        type = "function",
        description = "Delete render textures (fbo) from GPU",
        args = "(target: RenderTexture2D)",
        returns = "(void)"
      },
      
      rlDeleteShader = {
        type = "function",
        description = "Delete OpenGL shader program from GPU",
        args = "(id: number)",
        returns = "(void)"
      },
      
      rlDeleteVertexArrays = {
        type = "function",
        description = "Unload vertex data (VAO) from GPU memory",
        args = "(id: number)",
        returns = "(void)"
      },
      
      rlDeleteBuffers = {
        type = "function",
        description = "Unload vertex data (VBO) from GPU memory",
        args = "(id: number)",
        returns = "(void)"
      },
      
      rlClearColor = {
        type = "function",
        description = "Clear color buffer with color",
        args = "(r: number, g: number, b: number, a: number)",
        returns = "(void)"
      },
      
      rlClearScreenBuffers = {
        type = "function",
        description = "Clear used screen buffers (color and depth)",
        args = "()",
        returns = "(void)"
      },
      
      rlUpdateBuffer = {
        type = "function",
        description = "Update GPU buffer with new data",
        args = "(bufferId: number, data: void, dataSize: number)",
        returns = "(void)"
      },
      
      rlLoadAttribBuffer = {
        type = "function",
        description = "Load a new attributes buffer",
        args = "(vaoId: number, shaderLoc: number, buffer: void, size: number, dynamic: boolean)",
        returns = "(number)"
      },
      
      -- Functions Declaration - rlgl functionality
      rlglInit = {
        type = "function",
        description = "Initialize rlgl (buffers, shaders, textures, states)",
        args = "(width: number, height: number)",
        returns = "(void)"
      },
      
      rlglClose = {
        type = "function",
        description = "De-inititialize rlgl (buffers, shaders, textures)",
        args = "()",
        returns = "(void)"
      },
      
      rlglDraw = {
        type = "function",
        description = "Update and draw default internal buffers",
        args = "()",
        returns = "(void)"
      },
      
      rlCheckErrors = {
        type = "function",
        description = "Check and log OpenGL error codes",
        args = "()",
        returns = "(void)"
      },
      
      rlGetVersion = {
        type = "function",
        description = "Returns current OpenGL version",
        args = "()",
        returns = "(number)"
      },
      
      rlCheckBufferLimit = {
        type = "function",
        description = "Check internal buffer overflow for a given number of vertex",
        args = "(vCount: number)",
        returns = "(boolean)"
      },
      
      rlSetDebugMarker = {
        type = "function",
        description = "Set debug marker for analysis",
        args = "(text: string)",
        returns = "(void)"
      },
      
      rlLoadExtensions = {
        type = "function",
        description = "Load OpenGL extensions",
        args = "(loader: void)",
        returns = "(void)"
      },
      
      rlUnproject = {
        type = "function",
        description = "Get world coordinates from screen coordinates",
        args = "(source: Vector3, proj: Matrix, view: Matrix)",
        returns = "(Vector3)"
      },
      
      -- Textures data management
      rlLoadTexture = {
        type = "function",
        description = "Load texture in GPU",
        args = "(data: void, width: number, height: number, format: number, mipmapCount: number)",
        returns = "(number)"
      },
      
      rlLoadTextureDepth = {
        type = "function",
        description = "Load depth texture/renderbuffer (to be attached to fbo)",
        args = "(width: number, height: number, bits: number, useRenderBuffer: boolean)",
        returns = "(number)"
      },
      
      rlLoadTextureCubemap = {
        type = "function",
        description = "Load texture cubemap",
        args = "(data: void, size: number, format: number)",
        returns = "(number)"
      },
      
      rlUpdateTexture = {
        type = "function",
        description = "Update GPU texture with new data",
        args = "(id: number, offsetX: number, offsetY: number, width: number, height: number, format: number, data: void)",
        returns = "(void)"
      },
      
      rlGetGlTextureFormats = {
        type = "function",
        description = "Get OpenGL internal formats",
        args = "(format: number, glInternalFormat: number, glFormat: number, glType: number)",
        returns = "(void)"
      },
      
      rlUnloadTexture = {
        type = "function",
        description = "Unload texture from GPU memory",
        args = "(id: number)",
        returns = "(void)"
      },
      
      rlGenerateMipmaps = {
        type = "function",
        description = "Generate mipmap data for selected texture",
        args = "(texture: Texture2D)",
        returns = "(void)"
      },
      
      rlReadTexturePixels = {
        type = "function",
        description = "Read texture pixel data",
        args = "(texture: Texture2D)",
        returns = "(void)"
      },
      
      rlReadScreenPixels = {
        type = "function",
        description = "Read screen pixel data (color buffer)",
        args = "(width: number, height: number)",
        returns = "(number)"
      },
      
      -- Render texture management (fbo)
      rlLoadRenderTexture = {
        type = "function",
        description = "Load a render texture (with color and depth attachments)",
        args = "(width: number, height: number, format: number, depthBits: number, useDepthTexture: boolean)",
        returns = "(RenderTexture2D)"
      },
      
      rlRenderTextureAttach = {
        type = "function",
        description = "Attach texture/renderbuffer to an fbo",
        args = "(target: RenderTexture, id: number, attachType: number)",
        returns = "(void)"
      },
      
      rlRenderTextureComplete = {
        type = "function",
        description = "Verify render texture is complete",
        args = "(target: RenderTexture)",
        returns = "(boolean)"
      },
      
      -- Vertex data management
      rlLoadMesh = {
        type = "function",
        description = "Upload vertex data into GPU and provided VAO/VBO ids",
        args = "(mesh: Mesh, dynamic: boolean)",
        returns = "(void)"
      },
      
      rlUpdateMesh = {
        type = "function",
        description = "Update vertex or index data on GPU (upload new data to one buffer)",
        args = "(mesh: Mesh, buffer: number, count: number)",
        returns = "(void)"
      },
      
      rlUpdateMeshAt = {
        type = "function",
        description = "Update vertex or index data on GPU, at index",
        args = "(mesh: Mesh, buffer: number, count: number, index: number)",
        returns = "(void)"
      },
      
      rlDrawMesh = {
        type = "function",
        description = "Draw a 3d mesh with material and transform",
        args = "(mesh: Mesh, material: Material, transform: Matrix)",
        returns = "(void)"
      },
      
      rlUnloadMesh = {
        type = "function",
        description = "Unload mesh data from CPU and GPU",
        args = "(mesh: Mesh)",
        returns = "(void)"
      },
      
      -- raymath.h
      Clamp = {
        type = "function",
        description = "Clamp float value",
        args = "(value: number, min: number, max: number)",
        returns = "(number)"
      },
      
      Lerp = {
        type = "function",
        description = "Calculate linear interpolation between two floats",
        args = "(start: number, end: number, amount: number)",
        returns = "(number)"
      },
      
      Nomalize = {
        type = "function",
        description = "Normalize input value within input range",
        args = "(value: number, start: number, end: number)",
        returns = "(number)"
      },
      
      Remap = {
        type = "function",
        description = "Remap input value within input range to output range",
        args = "(value: number, inputStart: number, inputEnd: number, outputStart: number, outputEnd: number)",
        returns = "(number)"
      },
      
      -- Module Functions Definition - Vector2 math
      Vector2Zero = {
        type = "function",
        description = "Vector with components value 0.0f",
        args = "()",
        returns = "(Vector2)"
      },
      
      Vector2One = {
        type = "function",
        description = "Vector with components value 1.0f",
        args = "()",
        returns = "(Vector2)"
      },
      
      Vector2Add = {
        type = "function",
        description = "Add two vectors (v1 + v2)",
        args = "(v1: Vector2, v2: Vector2)",
        returns = "(Vector2)"
      },
      
      Vector2AddValue = {
        type = "function",
        description = "Add vector and float value",
        args = "(v: Vector2, add: number)",
        returns = "(Vector2)"
      },
      
      Vector2Subtract = {
        type = "function",
        description = "Subtract two vectors (v1 - v2)",
        args = "(v1: Vector2, v2: Vector2)",
        returns = "(Vector2)"
      },
      
      Vector2SubtractValue = {
        type = "function",
        description = "Subtract vector by float value",
        args = "(v: Vector2, sub: number)",
        returns = "(Vector2)"
      },
      
      Vector2Length = {
        type = "function",
        description = "Calculate vector length",
        args = "(v: Vector2)",
        returns = "(number)"
      },
      
      Vector2LengthSqr = {
        type = "function",
        description = "Calculate vector square length",
        args = "(v: Vector2)",
        returns = "(number)"
      },
      
      Vector2DotProduct = {
        type = "function",
        description = "Calculate two vectors dot product",
        args = "(v1: Vector2, v2: Vector2)",
        returns = "(number)"
      },
      
      Vector2Distance = {
        type = "function",
        description = "Calculate distance between two vectors",
        args = "(v1: Vector2, v2: Vector2)",
        returns = "(number)"
      },
      
      Vector2Angle = {
        type = "function",
        description = "Calculate angle from two vectors in X-axis",
        args = "(v1: Vector2, v2: Vector2)",
        returns = "(number)"
      },
      
      Vector2Scale = {
        type = "function",
        description = "Scale vector (multiply by value)",
        args = "(v: Vector2, scale: number)",
        returns = "(Vector2)"
      },
      
      Vector2Multiply = {
        type = "function",
        description = "Multiply vector by vector",
        args = "(v1: Vector2, v2: Vector2)",
        returns = "(Vector2)"
      },
      
      Vector2Negate = {
        type = "function",
        description = "Negate vector",
        args = "(v: Vector2)",
        returns = "(Vector2)"
      },
      
      Vector2Divide = {
        type = "function",
        description = "Divide vector by vector",
        args = "(v1: Vector2, v2: Vector2)",
        returns = "(Vector2)"
      },
      
      Vector2Normalize = {
        type = "function",
        description = "Normalize provided vector",
        args = "(v: Vector2)",
        returns = "(Vector2)"
      },
      
      Vector2Lerp = {
        type = "function",
        description = "Calculate linear interpolation between two vectors",
        args = "(v1: Vector2, v2: Vector2, amount: number)",
        returns = "(Vector2)"
      },
      
      Vector2Rotate = {
        type = "function",
        description = "Rotate Vector by float in Degrees",
        args = "(v: Vector2, degs: number)",
        returns = "(Vector2)"
      },
      
      Vector2MoveTowards = {
        type = "function",
        description = "Move Vector towards target",
        args = "(v: Vector2, target: Vector2, maxDistance: number)",
        returns = "(Vector2)"
      },
      
      -- Module Functions Definition - Vector3 math
      Vector3Zero = {
        type = "function",
        description = "Vector with components value 0.0f",
        args = "()",
        returns = "(Vector3)"
      },
      
      Vector3One = {
        type = "function",
        description = "Vector with components value 1.0f",
        args = "()",
        returns = "(Vector3)"
      },
      
      Vector3Add = {
        type = "function",
        description = "Add two vectors (v1 + v2)",
        args = "(v1: Vector3, v2: Vector3)",
        returns = "(Vector3)"
      },
      
      Vector3Subtract = {
        type = "function",
        description = "Subtract two vectors (v1 - v2)",
        args = "(v1: Vector3, v2: Vector3)",
        returns = "(Vector3)"
      },
      
      Vector3Scale = {
        type = "function",
        description = "Multiply vector by scalar",
        args = "(v: Vector3, scalar: number)",
        returns = "(Vector3)"
      },
      
      Vector3Multiply = {
        type = "function",
        description = "Multiply vector by vector",
        args = "(v1: Vector3, v2: Vector3)",
        returns = "(Vector3)"
      },
      
      Vector3CrossProduct = {
        type = "function",
        description = "Calculate two vectors cross product",
        args = "(v1: Vector3, v2: Vector3)",
        returns = "(Vector3)"
      },
      
      Vector3Perpendicular = {
        type = "function",
        description = "Calculate one vector perpendicular vector",
        args = "(v: Vector3)",
        returns = "(Vector3)"
      },
      
      Vector3Length = {
        type = "function",
        description = "Calculate vector length",
        args = "(v: Vector3)",
        returns = "(number)"
      },
      
      Vector3DotProduct = {
        type = "function",
        description = "Calculate two vectors dot product",
        args = "(v1: Vector3, v2: Vector3)",
        returns = "(number)"
      },
      
      Vector3Distance = {
        type = "function",
        description = "Calculate distance between two vectors",
        args = "(v1: Vector3, v2: Vector3)",
        returns = "(number)"
      },
      
      Vector3Negate = {
        type = "function",
        description = "Negate vector",
        args = "(v: Vector3)",
        returns = "(Vector3)"
      },
      
      Vector3Divide = {
        type = "function",
        description = "Divide vector by float",
        args = "(v: Vector3, div: number)",
        returns = "(Vector3)"
      },
      
      Vector3DivideV = {
        type = "function",
        description = "Divide vector by vector",
        args = "(v1: Vector3, v2: Vector3)",
        returns = "(Vector3)"
      },
      
      Vector3Normalize = {
        type = "function",
        description = "Normalize provided vector",
        args = "(v: Vector3)",
        returns = "(Vector3)"
      },
      
      Vector3OrthoNormalize = {
        type = "function",
        description = "Makes vectors normalized and orthogonal to each other",
        args = "(v1: Vector3, v2: Vector3)",
        returns = "(void)"
      },
      
      Vector3Transform = {
        type = "function",
        description = "Transforms a Vector3 by a given Matrix",
        args = "(v: Vector3, mat: Matrix)",
        returns = "(Vector3)"
      },
      
      Vector3RotateByQuaternion = {
        type = "function",
        description = "Transform a vector by quaternion rotation",
        args = "(v: Vector3, q: Quaternion)",
        returns = "(void)"
      },
      
      Vector3Lerp = {
        type = "function",
        description = "Calculate linear interpolation between two vectors",
        args = "(v1: Vector3, v2: Vector3, amount: number)",
        returns = "(Vector3)"
      },
      
      Vector3Reflect = {
        type = "function",
        description = "Calculate reflected vector to normal",
        args = "(v: Vector3, normal: Vector3)",
        returns = "(Vector3)"
      },
      
      Vector3Min = {
        type = "function",
        description = "Return min value for each pair of components",
        args = "(v1: Vector3, v2: Vector3)",
        returns = "(Vector3)"
      },
      
      Vector3Max = {
        type = "function",
        description = "Return max value for each pair of components",
        args = "(v1: Vector3, v2: Vector3)",
        returns = "(Vector3)"
      },
      
      Vector3Barycenter = {
        type = "function",
        description = "Compute barycenter coordinates (u, v, w) for point p with respect to triangle (a, b, c), NOTE: Assumes P is on the plane of the triangle",
        args = "(p: Vector3, a: Vector3, b: Vector3, c: Vector3)",
        returns = "(Vector3)"
      },
      
      Vector3ToFloatV = {
        type = "function",
        description = "Returns Vector3 as float array",
        args = "(v: Vector3)",
        returns = "(float3)"
      },
      
      -- Module Functions Definition - Matrix math
      MatrixDeterminant = {
        type = "function",
        description = "Compute matrix determinant",
        args = "(mat: Matrix)",
        returns = "(number)"
      },
      
      MatrixTrace = {
        type = "function",
        description = "Returns the trace of the matrix (sum of the values along the diagonal)",
        args = "(mat: Matrix)",
        returns = "(number)"
      },
      
      MatrixTranspose = {
        type = "function",
        description = "Transposes provided matrix",
        args = "(mat: Matrix)",
        returns = "(Matrix)"
      },
      
      MatrixInvert = {
        type = "function",
        description = "Invert provided matrix",
        args = "(mat: Matrix)",
        returns = "(Matrix)"
      },
      
      MatrixNormalize = {
        type = "function",
        description = "Normalize provided matrix",
        args = "(mat: Matrix)",
        returns = "(Matrix)"
      },
      
      MatrixIdentity = {
        type = "function",
        description = "Returns identity matrix",
        args = "()",
        returns = "(Matrix)"
      },
      
      MatrixAdd = {
        type = "function",
        description = "Add two matrices",
        args = "(left: Matrix, right: Matrix)",
        returns = "(Matrix)"
      },
      
      MatrixSubtract = {
        type = "function",
        description = "Subtract two matrices (left - right)",
        args = "(left: Matrix, right: Matrix)",
        returns = "(Matrix)"
      },
      
      MatrixTranslate = {
        type = "function",
        description = "Returns translation matrix",
        args = "(x: number, y: number, z: number)",
        returns = "(Matrix)"
      },
      
      MatrixRotate = {
        type = "function",
        description = "Create rotation matrix from axis and angle, NOTE: Angle should be provided in radians",
        args = "(axis: Vector3, angle: number)",
        returns = "(Matrix)"
      },
      
      MatrixRotateXYZ = {
        type = "function",
        description = "Returns xyz-rotation matrix (angles in radians)",
        args = "(ang: Vector3)",
        returns = "(Matrix)"
      },
      
      MatrixRotateX = {
        type = "function",
        description = "Returns x-rotation matrix (angle in radians)",
        args = "(angle: number)",
        returns = "(Matrix)"
      },
      
      MatrixRotateY = {
        type = "function",
        description = "Returns y-rotation matrix (angle in radians)",
        args = "(angle: number)",
        returns = "(Matrix)"
      },
      
      MatrixRotateZ = {
        type = "function",
        description = "Returns z-rotation matrix (angle in radians)",
        args = "(angle: number)",
        returns = "(Matrix)"
      },
      
      MatrixScale = {
        type = "function",
        description = "Returns scaling matrix",
        args = "(x: number, y: number, z: number)",
        returns = "(Matrix)"
      },
      
      MatrixMultiply = {
        type = "function",
        description = "Returns two matrix multiplication, NOTE: When multiplying matrices... the order matters!",
        args = "(left: Matrix, right: Matrix)",
        returns = "(Matrix)"
      },
      
      MatrixFrustum = {
        type = "function",
        description = "Returns perspective projection matrix",
        args = "(left: number, right: number, bottom: number, top: number, near: number, far: number)",
        returns = "(Matrix)"
      },
      
      MatrixPerspective = {
        type = "function",
        description = "Returns perspective projection matrix, NOTE: Angle should be provided in radians",
        args = "(fovy: number, aspect: number, near: number, far: number)",
        returns = "(Matrix)"
      },
      
      MatrixOrtho = {
        type = "function",
        description = "Returns orthographic projection matrix",
        args = "(left: number, right: number, bottom: number, top: number, near: number, far: number)",
        returns = "(Matrix)"
      },
      
      MatrixLookAt = {
        type = "function",
        description = "Returns camera look-at matrix (view matrix)",
        args = "(eye: Vector3, target: Vector3, up: Vector3)",
        returns = "(Matrix)"
      },
      
      MatrixToFloatV = {
        type = "function",
        description = "Returns float array of matrix data",
        args = "(mat: Matrix)",
        returns = "(float16)"
      },
      
      -- Module Functions Definition - Quaternion math
      QuaternionIdentity = {
        type = "function",
        description = "Returns identity quaternion",
        args = "()",
        returns = "(Quaternion)"
      },
      
      QuaternionLength = {
        type = "function",
        description = "Computes the length of a quaternion",
        args = "(q: Quaternion)",
        returns = "(number)"
      },
      
      QuaternionNormalize = {
        type = "function",
        description = "Normalize provided quaternion",
        args = "(q: Quaternion)",
        returns = "(Quaternion)"
      },
      
      QuaternionInvert = {
        type = "function",
        description = "Invert provided quaternion",
        args = "(q: Quaternion)",
        returns = "(Quaternion)"
      },
      
      QuaternionMultiply = {
        type = "function",
        description = "Calculate two quaternion multiplication",
        args = "(q1: Quaternion, q2: Quaternion)",
        returns = "(Quaternion)"
      },
      
      QuaternionLerp = {
        type = "function",
        description = "Calculate linear interpolation between two quaternions",
        args = "(q1: Quaternion, q2: Quaternion, amount: number)",
        returns = "(Quaternion)"
      },
      
      QuaternionNlerp = {
        type = "function",
        description = "Calculate slerp-optimized interpolation between two quaternions",
        args = "(q1: Quaternion, q2: Quaternion, amount: number)",
        returns = "(Quaternion)"
      },
      
      QuaternionSlerp = {
        type = "function",
        description = "Calculates spherical linear interpolation between two quaternions",
        args = "(q1: Quaternion, q2: Quaternion, amount: number)",
        returns = "(Quaternion)"
      },
      
      QuaternionFromVector3ToVector3 = {
        type = "function",
        description = "Calculate quaternion based on the rotation from one vector to another",
        args = "(from: Vector3, to: Vector3)",
        returns = "(Quaternion)"
      },
      
      QuaternionFromMatrix = {
        type = "function",
        description = "Returns a quaternion for a given rotation matrix",
        args = "(mat: Matrix)",
        returns = "(Quaternion)"
      },
      
      QuaternionToMatrix = {
        type = "function",
        description = "Returns a matrix for a given quaternion",
        args = "(q: Quaternion)",
        returns = "(Matrix)"
      },
      
      QuaternionFromAxisAngle = {
        type = "function",
        description = "Returns rotation quaternion for an angle and axis, NOTE: angle must be provided in radians",
        args = "(axis: Vector3, angle: number)",
        returns = "(Quaternion)"
      },
      
      QuaternionToAxisAngle = {
        type = "function",
        description = "Returns the rotation angle and axis for a given quaternion",
        args = "(q: Quaternion, outAxis: Vector3, outAngle: number)",
        returns = "(void)"
      },
      
      QuaternionFromEuler = {
        type = "function",
        description = "Returns he quaternion equivalent to Euler angles",
        args = "(roll: number, pitch: number, yaw: number)",
        returns = "(Quaternion)"
      },
      
      QuaternionToEuler = {
        type = "function",
        description = "Return the Euler angles equivalent to quaternion (roll, pitch, yaw), NOTE: Angles are returned in a Vector3 struct in degrees",
        args = "(q: Quaternion)",
        returns = "(Vector3)"
      },
      
      QuaternionTransform = {
        type = "function",
        description = "Transform a quaternion given a transformation matrix",
        args = "(q: Quaternion, mat: Matrix)",
        returns = "(Quaternion)"
      },
      
      -- physac.h
      InitPhysics = {
        type = "function",
        description = "Initializes physics values, pointers and creates physics loop thread",
        args = "()",
        returns = "(void)"
      },
      
      IsPhysicsEnabled = {
        type = "function",
        description = "Returns true if physics thread is currently enabled",
        args = "()",
        returns = "(boolean)"
      },
      
      SetPhysicsGravity = {
        type = "function",
        description = "Sets physics global gravity force",
        args = "(x: number, y: number)",
        returns = "(void)"
      },
      
      CreatePhysicsBodyCircle = {
        type = "function",
        description = "Creates a new circle physics body with generic parameters",
        args = "(pos: Vector2, radius: number, density: number)",
        returns = "(PhysicsBody)"
      },
      
      CreatePhysicsBodyRectangle = {
        type = "function",
        description = "Creates a new rectangle physics body with generic parameters",
        args = "(pos: Vector2, width: number, height: number, density: number)",
        returns = "(PhysicsBody)"
      },
      
      PhysicsAddForce = {
        type = "function",
        description = "Adds a force to a physics body",
        args = "(body: PhysicsBody, force: Vector2)",
        returns = "(void)"
      },
      
      PhysicsAddTorque = {
        type = "function",
        description = "Adds a angular force to a physics body",
        args = "(body: PhysicsBody, amout: number)",
        returns = "(void)"
      },
      
      PhysicsShatter = {
        type = "function",
        description = "Shatters a polygon shape physics body to little physics bodies with explosion force",
        args = "(body: PhysicsBody, position: Vector2, force: number)",
        returns = "(void)"
      },
      
      GetPhysicsBodiesCount = {
        type = "function",
        description = "Returns the current amount of created physics bodies",
        args = "()",
        returns = "(number)"
      },
      
      GetPhysicsBody = {
        type = "function",
        description = "Returns a physics body of the bodies pool at a specific index",
        args = "(index: number)",
        returns = "(PhysicsBody)"
      },
      
      GetPhysicsShapeType = {
        type = "function",
        description = "Returns the physics body shape type (PHYSICS_CIRCLE or PHYSICS_POLYGON)",
        args = "(index: number)",
        returns = "(number)"
      },
      
      GetPhysicsShapeVerticesCount = {
        type = "function",
        description = "Returns the amount of vertices of a physics body shape",
        args = "(index: number)",
        returns = "(number)"
      },
      
      GetPhysicsShapeVertex = {
        type = "function",
        description = "Returns transformed position of a body shape (body position + vertex transformed position)",
        args = "(body: PhysicsBody, vertex: number)",
        returns = "(Vector2)"
      },
      
      SetPhysicsBodyRotation = {
        type = "function",
        description = "Sets physics body shape transform based on radians parameter",
        args = "(body: PhysicsBody, radians: number)",
        returns = "(void)"
      },
      
      DestroyPhysicsBody = {
        type = "function",
        description = "Unitializes and destroy a physics body",
        args = "(body: PhysicsBody)",
        returns = "(void)"
      },
      
      ClosePhysics = {
        type = "function",
        description = "Unitializes physics pointers and closes physics loop thread",
        args = "()",
        returns = "(void)"  
      },
      
      -- Types,As functions creates ctype by LuaJIT FFI
      Vector2 = {
        type = "function",
        description = "Creates Vector2 type",
        args = "(...)",
        returns = "(Vector2)"
      },
      
      Vector3 = {
        type = "function",
        description = "Creates Vector3 type",
        args = "(...)",
        returns = "(Vector3)"
      },
      
      Vector4 = {
        type = "function",
        description = "Creates Vector4 type",
        args = "(...)",
        returns = "(Vector4)"
      },
      
      Quaternion = {
        type = "function",
        description = "Creates Quaternion type",
        args = "(...)",
        returns = "(Quaternion)"
      },
      
      Color = {
        type = "function",
        description = "Creates Color type",
        args = "(...)",
        returns = "(Color)"
      },
      
      Matrix = {
        type = "function",
        description = "Creates Matrix type",
        args = "(...)",
        returns = "(Matrix)"
      },
      
      Rectangle = {
        type = "function",
        description = "Creates Rectnagle type",
        args = "(...)",
        returns = "(Rectangle)"
      },
      
      BoundingBox = {
        type = "function",
        description = "Creates BoundingBox type",
        args = "(...)",
        returns = "(BoundingBox)"
      },
      
      Image = {
        type = "function",
        description = "Creates Image type",
        args = "(...)",
        returns = "(Image)"
      },
      
      Texture = {
        type = "function",
        description = "Creates Texture type",
        args = "(...)",
        returns = "(Texture)"
      },
      
      Texture2D = {
        type = "function",
        description = "Creates Texture2D type",
        args = "(...)",
        returns = "(Texture2D)"
      },
      
      TextureCubemap = {
        type = "function",
        description = "Creates TextureCubemap type",
        args = "(...)",
        returns = "(TextureCubemap)"
      },
      
      RenderTexture = {
        type = "function",
        description = "Creates RenderTexture type",
        args = "(...)",
        returns = "(RenderTexture)"
      },
      
      RenderTexture2D = {
        type = "function",
        description = "Creates RenderTexture2D type",
        args = "(...)",
        returns = "(RenderTexture2D)"
      },
      
      NPatchInfo = {
        type = "function",
        description = "Creates NPatchInfo type",
        args = "(...)",
        returns = "(NPatchInfo)"
      },
      
      CharInfo = {
        type = "function",
        description = "Creates CharInfo type",
        args = "(...)",
        returns = "(CharInfo)"
      },
      
      Font = {
        type = "function",
        description = "Creates Font type",
        args = "(...)",
        returns = "(Font)"
      },
      
      SpriteFont = {
        type = "function",
        description = "Creates SpriteFont type",
        args = "(...)",
        returns = "(SpriteFont)"
      },
      
      Camera = {
        type = "function",
        description = "Creates Camera type",
        args = "(...)",
        returns = "(Camera)"
      },
      
      Camera3D = {
        type = "function",
        description = "Creates Camera3D type",
        args = "(...)",
        returns = "(Camera3D)"
      },
      
      Camera2D = {
        type = "function",
        description = "Creates Camera2D type",
        args = "(...)",
        returns = "(Camera2D)"
      },
      
      Mesh = {
        type = "function",
        description = "Creates Mesh type",
        args = "(...)",
        returns = "(Mesh)"
      },
      
      MaterialMap = {
        type = "function",
        description = "Creates MaterialMap type",
        args = "(...)",
        returns = "(Mesh)"
      },
      
      Material = {
        type = "function",
        description = "Creates Material type",
        args = "(...)",
        returns = "(Material)"
      },
      
      Model = {
        type = "function",
        description = "Creates Model type",
        args = "(...)",
        returns = "(Model)"
      },
      
      Transform = {
        type = "function",
        description = "Creates Transform type",
        args = "(...)",
        returns = "(Transform)"
      },
      
      BoneInfo = {
        type = "function",
        description = "Creates BoneInfo type",
        args = "(...)",
        returns = "(BoneInfo)"
      },
      
      ModelAnimation = {
        type = "function",
        description = "Creates ModelAnimation type",
        args = "(...)",
        returns = "(ModelAnimation)"
      },
      
      Ray = {
        type = "function",
        description = "Creates Ray type",
        args = "(...)",
        returns = "(Ray)"
      },
      
      RayHitInfo = {
        type = "function",
        description = "Creates RayHitInfo type",
        args = "(...)",
        returns = "(RayHitInfo)"
      },
      
      Wave = {
        type = "function",
        description = "Creates Wave type",
        args = "(...)",
        returns = "(Wave)"
      },
      
      Sound = {
        type = "function",
        description = "Creates Sound type",
        args = "(...)",
        returns = "(Sound)"
      },
      
      Music = {
        type = "function",
        description = "Creates Music type",
        args = "(...)",
        returns = "(Music)"
      },
      
      AudioStream = {
        type = "function",
        description = "Creates AudioStream type",
        args = "(...)",
        returns = "(AudioStream)"
      },
      
      VrDeviceInfo = {
        type = "function",
        description = "Creates VrDeviceInfo type",
        args = "(...)",
        returns = "(VrDeviceInfo)"
      },
      
      -- For rlights.h
      Light = {
        type = "function",
        description = "Creates Light type",
        args = "(...)",
        returns = "(Light)"
      },
      
      -- For raymath.h
      float3 = {
        type = "function",
        description = "Creates float3 type",
        args = "(...)",
        returns = "(float3)"
      },
      
      float16 = {
        type = "function",
        description = "Creates float16 type",
        args = "(...)",
        returns = "(float16)"
      },
      
      TraceLogCallback = {
        type = "function",
        description = "Creates TraceLogCallback type",
        args = "(...)",
        returns = "(TraceLogCallback)"
      },
      
      PhysicsBody = {
        type = "function",
        description = "Creates PhysicsBody type",
        args = "(...)",
        returns = "(PhysicsBody)"
      },
    }
  }
}