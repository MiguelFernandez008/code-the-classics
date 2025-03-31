local engine = CreateClass()

function engine:_init()
    self.width = 1024
    self.height = 768
    self.font = nil
    self.scener = nil
    self.current = nil
end

return engine