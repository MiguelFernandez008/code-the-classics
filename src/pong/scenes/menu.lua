local scene = require("scenes/base")

local menu = CreateClass(scene)

function menu:_init(engine)
    scene._init(self, engine)
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
        game:_init()
        self.engine.scener:push(game)
    end
end

return menu