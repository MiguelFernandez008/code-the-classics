-- CLASS CREATE
require("utils/class")

-- CLASSES
local push = require ("./libs/push/push")
local newScener = require ("scene")
local newEngine = require("engine")
local newMenu = require("scenes/menu")

-- VARIABLES
local scenerHandler = newScener()
local engine = newEngine({
    font = love.graphics.newFont("fonts/PressStart2P.ttf", 10),
    scener = scenerHandler
})
local menu = newMenu(engine)
local windowWidth, windowHeight = love.window.getDesktopDimensions()
push:setupScreen(engine.width, engine.height, windowWidth, windowHeight, {fullscreen = true})

function love.load()    
    -- Load first scene into memory
    engine.scener:push(menu)
end

function love.update(delta)
    local current = engine.scener:current()
    if current.draw then
        current:update(delta)
    end
end

function love.draw()
    push:start()
    love.graphics.setFont(engine.font)
    local current = engine.scener:current()
    if current.draw then        
        current:draw()
    end
    push:finish()
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit(0)
    end
    local current = engine.scener:current()
    if current.keypressed then
        current:keypressed(key)
    end
end

function love.gamepadpressed(joystick, button)
    local current = engine.scener:current()
    if current.gamepadpressed then
        current:gamepadpressed()
    end
end