local rysuj
local drzwiOtwarte
local klatki
local stanSwiata

function love.load()
    rysuj = require("rysuj")
    drzwiOtwarte = false
    klatki = 0
    stanSwiata = 1
end

function love.update(deltaTime) -- deltaTime - czas pomiędzy klatkami
    klatki = klatki + 1
    if love.keyboard.isDown("o") then
        drzwiOtwarte = true
    else
        drzwiOtwarte = false
    end

    if klatki == 2 then
        stanSwiata = 2
    else stanSwiata = 1
        klatki = 0
    end
end

function love.draw()
    rysuj.swiat(stanSwiata)
    rysuj.dom(drzwiOtwarte)
end
