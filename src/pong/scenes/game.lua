local scene = require("scenes/base")

local game = CreateClass(scene)

function game:_init(engine)
    scene._init(self, engine)
end

function game:load()
    print("Game screen loaded")
end

function game:update(delta)

end

function game:draw()
    love.graphics.print("Game screen", 10, 10)
end

function game:keypressed(key)
    
end

return game