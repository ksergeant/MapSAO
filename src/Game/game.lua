local game = {}
--game.kirito = require("Characters/Kirito/kirito")
--game.swordFire = require("Weapons/SwordFire")
--game.floor1 = require("Floor/1/Map/Floor1_Map")
game.mySpriteManager = require("Game/spriteManager")
game.myGameStates = require("Game/gameStates")
game.myCamera = require("Game/camera")
game.myMobManager = require("Game/mobManager")
game.myFloorManager = require("Game/floorManager")

function game.Load()

    game.myFloorManager.CreateFloor("EasyCity",1,"Images/Floor/1/Map/Sample1.png")
    game.myFloorManager.CreateFloor("MidCity",2,"Images/Floor/1/Map/Sample2.png")
    game.myFloorManager.CreateFloor("HardCity",3,"Images/Floor/1/Map/Sample2.png")
   
   -- game.kirito.Load()
   -- game.swordFire.Load()
    
end

function game.Update(dt)

   -- game.kirito.Update(dt)
   -- game.swordFire.Update(dt)
  --  game.floor1.Update(dt)
    game.myFloorManager.Update(dt, game.myGameStates.myFloorActuel)

end

function game.Draw(dt)

    game.myFloorManager.Draw()

  --  game.kirito.Draw(dt, game.cameraX, game.cameraY)
  --  game.swordFire.Draw(dt, game.cameraX, game.cameraY)
  --  game.floor1.Draw(dt, game.cameraX, game.cameraY)
end

return game