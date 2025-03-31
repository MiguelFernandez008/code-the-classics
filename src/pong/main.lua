-- PUSH
local push = require ("./libs/push/push")

-- CLASS CREATE
require("utils/class")

-- SCENER
local scenerHandler = require ("scene")
scenerHandler:_init()

-- ENGINE
local engine = require("engine")
engine:_init()

-- SCENES
local menu = require("scenes/menu")
menu:_init(engine)

-- WINDOW
local gameWidth, gameHeight = 1024, 768
local windowWidth, windowHeight = love.window.getDesktopDimensions()
push:setupScreen(engine.width, engine.height, windowWidth, windowHeight, {fullscreen = true})

-- PLAYER
local player = require("player")

-- CPU
local cpu = require("cpu")

function love.load()
    -- Load font
    engine.font = love.graphics.newFont("fonts/PressStart2P.ttf", 24)
    -- Add scener to engine
    engine.scener = scenerHandler
    -- Load first scene into memory
    engine.scener:push(menu)
    engine.current = engine.scener:current()
end

function love.update(delta)
    engine.current = engine.scener:current()
    if engine.current.draw then
        engine.current:update(delta)
    end
end

function love.draw()
    push:start()
    love.graphics.setFont(engine.font)
    engine.current = engine.scener:current()
    if engine.current.draw then        
        engine.current:draw()
    end
    push:finish()
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit(0)
    end
    if engine.current.draw then
        engine.current:keypressed(key)
    end
end