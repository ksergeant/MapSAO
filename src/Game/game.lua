local game = {}
game.kirito = require("Characters/Kirito/kirito")
game.swordFire = require("Weapons/SwordFire")
game.floor1 = require("Floor/1/Map/Floor1_Map")

function game.Load()

    game.kirito.Load()
    game.swordFire.Load()
    game.floor1.Load()
    
end

function game.Update(dt)

    game.kirito.Update(dt)

end

function game.Draw(dt)

    game.kirito.Draw(dt)

end

return game