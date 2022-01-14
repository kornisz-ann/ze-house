rysuj = require("rysuj")

local drzwiOtwarte = false

function love.load()

end

function love.update()
    if love.keyboard.isDown("o") then
        drzwiOtwarte = true
    else
        drzwiOtwarte = false
    end
end

function love.draw()
    rysuj.swiat()
    rysuj.dom(drzwiOtwarte)
end
