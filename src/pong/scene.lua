local scener = {
    scenes = {}
}

function scener:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self    
    return o
end

function scener:push(scene)
    if scene then
        table.insert(self.scenes, scene)
        if scene.load then
            scene:load()
        end
    end
    
end

function scener:pop()
   table.remove(self.scenes)
end

function scener:current()
    return self.scenes[#self.scenes]
end

return scener