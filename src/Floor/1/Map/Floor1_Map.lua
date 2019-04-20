local floor1 = {}
floor1.TileSheet = require("Floor/1/Map/Floor1_tilesheetMap")

local mapTest = love.graphics.newImage("Images/Floor/1/Map/Sample1.png")

function floor1.Load()
    
end

function floor1.Update(dt)
   
end

function floor1.Draw(dt,pCameraX,pCameraY)
    love.graphics.draw(mapTest, 0 + pCameraX, 0 + pCameraY, 0, 4, 4, 0, 0)
end

return floor1