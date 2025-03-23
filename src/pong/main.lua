-- PUSH
local push = require ("./libs/push/push")

-- WINDOW
local gameWidth, gameHeight = 1024, 768
local windowWidth, windowHeight = love.window.getDesktopDimensions()
push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {fullscreen = true})

-- PLAYER
local player = require("player")
local player1 = player:new() 

function love.load()

end

function love.update(delta)

end

function love.draw()
    push:start()
    push:finish()
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit(0)
    end
end