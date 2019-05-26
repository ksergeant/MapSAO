
local floorModel = {}

function floorModel.Create(pName, pNumber, pMap)
  
  local floor = {}
  
  floor.name = pName
  floor.number = pNumber
  floor.map = love.graphics.newImage(pMap)
  
    return floor
end



return floorModel


