local engine = CreateClass()

function engine:_init(dependencies)
    self.width = 160 * 5
    self.height = 144 * 5
    self.font = dependencies.font
    self.scener = dependencies.scener
    self.storage = dependencies.storage    
end

return engine