local spriteManager = {}
spriteManager.list_sprites = {}

local spriteModel = require("Game/Sprites/sprite")

function spriteManager.RestListSprite()
    spriteManager.list_sprites = {}
end

function spriteManager.CreateSprite(pName, pPosX, pPosY) 
    
    local spriteTempo = {}
    
    spriteTempo = spriteModel.Create(pName, pPosX, pPosY)
  
    table.insert(spriteManager.list_sprites, spriteTempo)
  
    print("Sprite Create")

end

function spriteManager.Update(dt)

    if #spriteManager.list_sprites~=nil then

        for i = 1, #spriteManager.list_sprites do
        
            print(spriteManager.list_sprites[i].name)

        end

    end

end

function spriteManager.Draw()
    
end

return spriteManager