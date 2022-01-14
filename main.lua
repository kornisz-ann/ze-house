local rysuj
local drzwiOtwarte
local mineloKlatek
local stanSwiata

function love.load()
    rysuj = require("rysuj")
    mineloKlatek = 0
    stanSwiata = 0
end

function love.update(deltaTime) -- deltaTime - czas pomiędzy klatkami
    mineloKlatek = mineloKlatek + 1
    if love.keyboard.isDown("o") then
        drzwiOtwarte = true
    else
        drzwiOtwarte = false
    end

    if love.keyboard.isDown("q") then
        love.event.quit()
    end

    if mineloKlatek == 12 then
        stanSwiata = stanSwiata + 1
        if stanSwiata == 3 then stanSwiata = 1 end
        mineloKlatek = 0
    end
end

function love.draw()
    rysuj.swiat(stanSwiata)
    rysuj.dom(drzwiOtwarte)
    -- love.graphics.print(licznikKlatek)
end
