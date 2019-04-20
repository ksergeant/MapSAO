local game = {}
game.kirito = require("Characters/Kirito/kirito")
game.swordFire = require("Weapons/SwordFire")
game.floor1 = require("Floor/1/Map/Floor1_Map")
game.spriteManager = require("Game/spriteManager")
game.myGameStates = require("Game/gameStates")

game.cameraX = 0
game.cameraY = 0

function game.Load()

    game.kirito.Load()
    game.swordFire.Load()
    game.floor1.Load()
    
end

function game.Update(dt)

    game.kirito.Update(dt)
    game.swordFire.Update(dt)
    game.floor1.Update(dt)

end

function game.Draw(dt)

    game.kirito.Draw(dt, game.cameraX, game.cameraY)
    game.swordFire.Draw(dt, game.cameraX, game.cameraY)
    game.floor1.Draw(dt, game.cameraX, game.cameraY)
end

return game