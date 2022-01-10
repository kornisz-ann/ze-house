function love.load()
end

function love.update()
end

function love.draw()
    love.graphics.setColor(1, 1, 153/255, 1)
    love.graphics.rectangle(
        "fill",
        200, 275,
        400, 325
    )

    love.graphics.setColor(153/255, 0, 0, 1)
    love.graphics.polygon(
        "fill",
        {200, 275,
        600, 275,
        400, 100}
    )

    -- love.graphics.setColor(153/255, 102/255, 51/255)
    -- love.graphics.polygon(

    -- )
end
