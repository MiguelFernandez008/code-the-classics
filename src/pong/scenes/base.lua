require("utils/class")

local scene = CreateClass()

function scene:_init(engine)
    self.engine = engine
end

function scene:load()
end

function scene:update(delta)
end

function scene:draw()    
end

function scene:destroy()
end

function scene:keypressed(key)
end

return scene