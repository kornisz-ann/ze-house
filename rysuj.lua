local rysuj = {}

local rgb = require("rgbColorChanger")
-- mozna zmienic wszystkie definicje kolorow by uzywaly tej funkcji
-- ale... po co. :]
-- po prostu w przyszłości się przyda.

function rysuj.swiat()
    -- niebo
    love.graphics.setColor(rgb(153, 204, 255), 1)
    love.graphics.rectangle(
        "fill",
        0, 0,
        800, 475
    )    
    -- trawa
    love.graphics.setColor(rgb(51, 153, 51), 1)
    love.graphics.rectangle(
        "fill",
        0, 475,
        800, 125
    )

    -- słońce
    love.graphics.setColor(1, 204/255, 102/255)
    love.graphics.circle(
        "fill",
        0, 0, 100
    )
end

local function drzwiOtwarte()
    love.graphics.setColor(153/255, 102/255, 51/255, 1)
    love.graphics.polygon(
        "fill",
        {450, 450,
        550, 450,
        550, 600,
        450, 600,}
    )

    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.circle(
        "fill",
        530,530,3
    )
end

local function drzwiZamkniete()
    love.graphics.setColor(153/255, 102/255, 51/255, 1)
    love.graphics.polygon(
        "fill",
        {350, 450,
        450, 450,
        450, 600,
        350, 600,}
    )

    -- klamka
    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.circle(
        "fill",
        370, 530, 3
    )
end

function rysuj.dom(czyOtwarte)
    -- podstawa domu
    love.graphics.setColor(1, 1, 153/255, 1)
    love.graphics.rectangle(
        "fill",
        200, 275,
        400, 325
    )
    
    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.polygon(
        "fill",
        {350, 450,
        450, 450,
        450, 600,
        350, 600,}
    )

    -- dach
    love.graphics.setColor(153/255, 0, 0, 1)
    love.graphics.polygon(
        "fill",
        {200, 275,
        600, 275,
        400, 100}
    )

    if czyOtwarte then
        drzwiOtwarte()
    else
        drzwiZamkniete()
    end

    -- okna
    love.graphics.setColor(204/255, 1, 1, 1)
    love.graphics.rectangle(
        "fill",
        250, 325,
        100, 100
    )
    love.graphics.rectangle(
        "fill",
        450, 325,
        100, 100
    )

    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.rectangle(
        "fill",
        298, 325,
        4, 100
    )
    love.graphics.rectangle(
        "fill",
        250,373,
        100, 4
    )
    love.graphics.rectangle(
        "fill",
        498, 325,
        4, 100
    )
    love.graphics.rectangle(
        "fill",
        450, 373,
        100, 4
    )
end


return rysuj