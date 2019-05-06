local floorManager = {}

floorManager.list_floor = {}
floorManager.floorNow = {}

 function floorManager.CreateFloor(pName, pNumber, pMap) 
    
    local floor = {}
    floor.name = pName
    floor.number = pNumber
    floor.map = love.graphics.newImage(pMap)
    table.insert(floorManager.list_floor, pNumber, floor)
    print("Floor Create")
    

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