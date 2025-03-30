local menu = {
    engine = nil
}

function menu:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.engine = o.engine
    return o
end

function menu:load()
    
end

function menu:update(delta)

end

function menu:draw()
    local x, y, title, textWidthOffset, textHeightOffset
    local optionPlayText = "1 - Jugar"
    local optionSettingsText = "2 - Opciones"
    title = "Menu screen"
    textWidthOffset = self.engine.font:getWidth(title) / 2
    textHeightOffset = self.engine.font:getHeight(title) / 2
    if self.engine then
        x = self.engine.width / 2 - textWidthOffset
        y = self.engine.height / 2 - textHeightOffset - 50
    else
        x = 10
        y = 10
    end
    love.graphics.print(title, x, y, 0, 1, 1, 0, 0)
    love.graphics.print(optionPlayText, x, y + 50, 0, 1, 1, 0, 0)
    love.graphics.print(optionSettingsText, x, y + 100, 0, 1, 1, 0, 0)
end

function menu:keypressed(key)
    if key == "1" then
        local game = require("scenes/game")
        local gameScene = game:new()
        self.engine.scener:push(gameScene)
    end
end

return menu