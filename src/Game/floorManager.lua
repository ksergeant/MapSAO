local floorManager = {}

floorManager.list_floor = {}
floorManager.floorNow = {}

local floorModel = require("Game/Floor/floor")

 function floorManager.CreateFloor(pName, pNumber, pMap) 
    
    local floorTempo = {}
    
    floorTempo = floorModel.Create(pName, pNumber, pMap)

    table.insert(floorManager.list_floor, pNumber, floorTempo)
    print("Floor Create")
    

end

function floorManager.Load(pFloorNumber)

end

function floorManager.Update(dt,pFloorNumber)

    -- on recherche dans quel floor on est actuellement
 
    for i = 1, #floorManager.list_floor do   

        if floorManager.list_floor[i].number == pFloorNumber then
            floorManager.floorNow = floorManager.list_floor[i]
            
        end
        
    end
    
    
end

function floorManager.Draw()
   
    love.graphics.draw(floorManager.floorNow.map, 0, 0, 0, 2.5, 2.5)
    love.graphics.print("Floor "..tostring(floorManager.floorNow.number).."  "..tostring(floorManager.floorNow.name), 10, 10)

end

return floorManager;