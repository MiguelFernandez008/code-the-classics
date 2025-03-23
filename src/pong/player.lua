local player = {x = 100, y= 0}

function player:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function  player:moveUp()
    
end

function player:moveDown()
    
end

return player