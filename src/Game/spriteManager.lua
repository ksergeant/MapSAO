local spriteManager = {}
spriteManager.list_sprites = {}

function spriteManager.RestListSprite()
    spriteManager.list_sprites = {}
end

function spriteManager.CreateSprite() 
    
    local sprite = require("Game/Sprites/sprite")
    table.insert(spriteManager.list_sprites, sprite)
    
end

function spriteManager.Update(dt)

end

function spriteManager.Draw()

end

return spriteManager