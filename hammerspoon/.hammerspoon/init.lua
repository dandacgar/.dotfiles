-----------------------------------------------
-- Set up
-----------------------------------------------

local hyper = {"alt"}
spaces = require("hs.spaces")

hs.window.animationDuration = 0.05

hs.loadSpoon("WindowHalfsAndThirds")
spoon.WindowHalfsAndThirds:bindHotkeys(spoon.WindowHalfsAndThirds.defaultHotkeys)
-----------------------------------------------
-- Startup
-----------------------------------------------

hs.application.launchOrFocus("Alacritty")

hs.timer.doAfter(.5, function()
local win = hs.application.find("Alacritty"):mainWindow()
win:moveOneScreenWest(ensureInScreenBounds)
end)

hs.timer.doAfter(.25, function()

local win = hs.application.find("Alacritty"):mainWindow()

local f = win:frame()
local screen = win:screen()
local max = screen:frame()

f.x = max.x - 4
f.y = max.y
f.w = max.w + 4
f.h = max.h
hs.window.focusedWindow():setFrame(f)
hs.application.launchOrFocus("Alacritty")
end)

-----------------------------------------------
-- hyper left for left one half window
-----------------------------------------------

--hs.hotkey.bind(hyper, 'left', function()
--    if hs.window.focusedWindow() then
--        local win = hs.window.focusedWindow()
--        local f = win:frame()
--        local screen = win:screen()
--        local max = screen:frame()
--        
--        f.y = max.y
--        f.x = max.x - 4
--        f.w = max.w / 2
--        f.h = max.h
--        win:setFrame(f)
--    else
--        hs.alert.show("No active window")
--    end
--end)

-----------------------------------------------
-- hyper right for right one half window
-----------------------------------------------

--hs.hotkey.bind(hyper, 'right', function()
--    if hs.window.focusedWindow() then
--        local win = hs.window.focusedWindow()
--        local f = win:frame()
--        local screen = win:screen()
--        local max = screen:frame()
--
--        f.x = max.x + (max.w / 2) - 4
--        f.y = max.y
--        f.w = max.w / 2 + 4
--        f.h = max.h
--        win:setFrame(f)
--    else
--        hs.alert.show("No active window")
--    end
--end)

-----------------------------------------------
-- hyper < for left screen
-----------------------------------------------

hs.hotkey.bind(hyper, ',', function()
  if hs.window.focusedWindow() then
      local win = hs.window.focusedWindow()
      local f = win:frame()
      local screen = win:screen()

      win:moveOneScreenWest(ensureInScreenBounds)
  else
      hs.alert.show("No active window")
  end
end)

-----------------------------------------------
-- hyper > for right screen
-----------------------------------------------

hs.hotkey.bind(hyper, '.', function()
  if hs.window.focusedWindow() then
      local win = hs.window.focusedWindow()
      local f = win:frame()
      local screen = win:screen()

      win:moveOneScreenEast(ensureInScreenBounds)
  else
      hs.alert.show("No active window")
  end
end)


-----------------------------------------------
-- hyper return for fullscreen
-----------------------------------------------

--hs.hotkey.bind(hyper, 'return', function()
--    if hs.window.focusedWindow() then
--        local win = hs.window.focusedWindow()
--        local f = win:frame()
--        local screen = win:screen()
--        local max = screen:frame()
--
--        f.x = max.x - 4
--        f.y = max.y
--        f.w = max.w + 4
--        f.h = max.h
--        win:setFrame(f)
--    else
--        hs.alert.show("No active window")
--    end
--end)

-----------------------------------------------
-- hyper up for top half window
-----------------------------------------------

--hs.hotkey.bind(hyper, 'up', function()
--    if hs.window.focusedWindow() then
--        local win = hs.window.focusedWindow()
--        local f = win:frame()
--        local screen = win:screen()
--        local max = screen:frame()
--
--        f.x = max.x - 4
--        f.y = max.y
--        f.w = max.w + 4
--        f.h = max.h / 2
--        win:setFrame(f)
--    else
--        hs.alert.show("No active window")
--    end
--end)

-----------------------------------------------
-- hyper down for bottom half window
-----------------------------------------------

--hs.hotkey.bind(hyper, 'down', function()
--    if hs.window.focusedWindow() then
--        local win = hs.window.focusedWindow()
--        local f = win:frame()
--        local screen = win:screen()
--        local max = screen:frame()
--
--        f.x = max.x - 4 
--        f.y = max.y / 2
--        f.w = max.w + 4
--        f.h = max.h / 2
--        win:setFrame(f)
--
--        hs.alert.show(f.h)
--hs.alert.show(max.h)
--WindowHalfsAndThirds:bottomHalf(win)
--    else
--        hs.alert.show("No active window")
--    end
--end)


-----------------------------------------------
-- Hyper i to show window hints
-----------------------------------------------

hs.hotkey.bind(hyper, 'i', function()
    hs.hints.windowHints()
end)

-----------------------------------------------
-- Hyper hjkl to switch window focus
-----------------------------------------------

hs.hotkey.bind(hyper, 'j', function()
    if hs.window.focusedWindow() then
        hs.window.focusedWindow():focusWindowWest()
    else
        hs.alert.show("No active window")
    end
end)

hs.hotkey.bind(hyper, 'k', function()
    if hs.window.focusedWindow() then
    hs.window.focusedWindow():focusWindowEast()
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- Hyper Open and Focus Apps
-----------------------------------------------

hs.hotkey.bind(hyper, 'a', function()
     local app = hs.application.find("Alacritty")

    if app == nil then
        hs.application.launchOrFocus("Alacritty")
    elseif app:isFrontmost() then
        app:hide()
    else
        local win = app:mainWindow()

        local activeSpaces = spaces.activeSpaces()

        spaces.moveWindowToSpace(win:id(), spaces.activeSpaceOnScreen())
        win:focus()
    end
end)

hs.hotkey.bind(hyper, 'b', function()
    local app = hs.application.find("Brave")

    if app == nil then
        hs.application.launchOrFocus("Brave")
    elseif app:isFrontmost() then
        app:hide()
    else
        local win = app:mainWindow()

        local activeSpaces = spaces.activeSpaces()

        spaces.moveWindowToSpace(win:id(), spaces.activeSpaceOnScreen())
        win:focus()
    end
end)

hs.hotkey.bind(hyper, 'c', function()
    local app = hs.application.find("ChatGPT", true)

    if app == nil then
        hs.application.launchOrFocus("ChatGPT")
    elseif app:isFrontmost() then
        app:hide()
    else
        local win = app:mainWindow()

        local activeSpaces = spaces.activeSpaces()

        spaces.moveWindowToSpace(win:id(), spaces.activeSpaceOnScreen())
        win:focus()
    end
end)

hs.hotkey.bind(hyper, 'm', function()
    local app = hs.application.find("Motion", true)

    if app == nil then
        hs.application.launchOrFocus("Motion")
    elseif app:isFrontmost() then
        app:hide()
    else
        local win = app:mainWindow()

        local activeSpaces = spaces.activeSpaces()

        spaces.moveWindowToSpace(win:id(), spaces.activeSpaceOnScreen())
        win:focus()
    end
end)

hs.hotkey.bind(hyper, 's', function()
    local app = hs.application.find("Skim", true)

    if app == nil then
        hs.application.launchOrFocus("Skim")
    elseif app:isFrontmost() then
        app:hide()
    else
        local win = app:mainWindow()

        local activeSpaces = spaces.activeSpaces()

        spaces.moveWindowToSpace(win:id(), spaces.activeSpaceOnScreen())
        win:focus()
    end
end)
-----------------------------------------------
-- Reload config on write
-----------------------------------------------

function reload_config(files)
    hs.reload()
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")

