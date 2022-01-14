local function domek1()
    
    -- niebo
    love.graphics.setColor(153/255, 204/255, 1, 1)
    love.graphics.rectangle(
        "fill",
        0, 0,
        800, 475
    )

    -- trawa
    love.graphics.setColor(51/255, 153/255, 51/255)
    love.graphics.rectangle(
        "fill",
        0, 475,
        800, 125
    )
    -- podstawa domu
    love.graphics.setColor(1, 1, 153/255, 1)
    love.graphics.rectangle(
        "fill",
        200, 275,
        400, 325
    )

    -- dach
    love.graphics.setColor(153/255, 0, 0, 1)
    love.graphics.polygon(
        "fill",
        {200, 275,
        600, 275,
        400, 100}
    )

    -- drzwi
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

    -- słońce
    love.graphics.setColor(1, 204/255, 102/255)
    love.graphics.circle(
        "fill",
        0, 0, 100
    )
end

local otwarte = false

function love.load()

end

function love.update()
    if love.keyboard.isDown("o") then
        otwarte = true
    else
        otwarte = false
    end
end

function love.draw()
    if otwarte then
        domek2()
    else
        domek1()
    end

    -- love.graphics.setColor(153/255, 102/255, 51/255)
    -- love.graphics.polygon(

    -- )
end