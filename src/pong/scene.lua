local scener = CreateClass()

function scener:_init()
    self.scenes = {}
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
    if scene.destroy then
        scene:destroy()
    end
   table.remove(self.scenes)
end

function scener:current()
    return self.scenes[#self.scenes]
end

return scener