local game = {}

function game:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
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