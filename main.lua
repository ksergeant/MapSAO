-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end

local map = require("tilesheetMapMain")
local kirito = require("kirito")
local i = 2
local derniereKey = {}
function love.load()
  
  largeur = love.graphics.getWidth()
  hauteur = love.graphics.getHeight()
  
  kirito.Load()
  map.Load()
end

function love.update(dt)
  
  local posX = kirito.x
  local posY = kirito.y
  
   
  if love.keyboard.isDown("left") then
      
      kirito.x = kirito.x - 3
    
  end
  
  if love.keyboard.isDown("right") then
    
      kirito.x = kirito.x + 3
      
  end
  
  if love.keyboard.isDown("up") then
      
      kirito.y = kirito.y - 3
     
  end
  
  if love.keyboard.isDown("down") then

      kirito.y = kirito.y + 3
      
  end
  
   i = i + 0.15
   
  if math.floor(i) > #kirito.deplacementGauche then
    
    i = 1
  end
  
  if  kirito.x > posX then
    kirito.currentImage = kirito.deplacementDroite[math.floor(i)]
  end
  
  
  if  kirito.x < posX then
    kirito.currentImage = kirito.deplacementGauche[math.floor(i)]
  end
  
  if  kirito.y < posY then
    kirito.currentImage = kirito.deplacementHaut[math.floor(i)]
  end
  
  if  kirito.y > posY then
    kirito.currentImage = kirito.deplacementBas[math.floor(i)]
  end


  if  kirito.x == posX and derniereKey == "left" then
    kirito.currentImage = kirito.deplacementGauche[2]
    
  end
  
  if  kirito.x == posX and derniereKey == "right" then
    kirito.currentImage = kirito.deplacementDroite[2]
    
  end

  if  kirito.y == posY and derniereKey == "up" then
    kirito.currentImage = kirito.deplacementHaut[2]
    
  end
  
  if  kirito.y == posY and derniereKey == "down" then
    kirito.currentImage = kirito.deplacementBas[2]
    
  end

  if love.keyboard.isDown("down") and love.keyboard.isDown("left") then

      kirito.y = kirito.y -3
    kirito.x = kirito.x +3
    
        kirito.currentImage = kirito.deplacementBas[2]

      
  end

end

function love.draw()
    
    -- affiche la map
    map.Draw()
    
   love.graphics.draw(kirito.TileSheet.TileSheet, kirito.currentImage , kirito.x, kirito.y, 
      0, 2, 2, kirito.ox, kirito.oy)
    
    
    --love.graphics.line(largeur/2, 0, largeur/2, hauteur)
    --love.graphics.line(0, hauteur/2, largeur, hauteur/2)
    
    
    
end

function love.keypressed(key)
  
  derniereKey = key
  
  print(key)
  
  end
