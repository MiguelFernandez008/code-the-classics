local scene = require("scenes/base")
local newPlayer = require("player")
local game = CreateClass(scene)

function game:_init(engine)
    scene._init(self, engine)
    self.player = newPlayer()
end

function game:load()    
end

function game:update(delta)
end

function game:draw()
    love.graphics.print("Game screen", 10, 10)
    love.graphics.print(self.player.x, 10, 50)
end

function game:keypressed(key)    
end

function game:gamepadpressed(joystick, button)
end

return game