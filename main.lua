local rysuj
local drzwiOtwarte
local stanSwiata

function love.load()
    rysuj = require("rysuj")
    drzwiOtwarte = false
end

function love.update(deltaTime) -- deltaTime - czas pomiędzy klatkami
    if love.keyboard.isDown("o") then
        drzwiOtwarte = true
    else
        drzwiOtwarte = false
    end
end

function love.draw()
    rysuj.swiat()
    rysuj.dom(drzwiOtwarte)
    love.graphics.print("moje promienie")
end
