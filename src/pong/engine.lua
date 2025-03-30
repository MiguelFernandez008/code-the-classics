local engine = {
    width = 1024,
    height = 768,
    font,
    scener,
    current
}

function engine:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

return engine