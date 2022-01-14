rysuj = require("rysuj")

local drzwiOtwarte = false
local dt

function love.load()

end

function love.update(deltaTime)
    if love.keyboard.isDown("o") then
        drzwiOtwarte = true
    else
        drzwiOtwarte = false
    end
    dt = deltaTime
end

function love.draw()
    rysuj.swiat()
    rysuj.dom(drzwiOtwarte)
    love.graphics.print(dt)
end
