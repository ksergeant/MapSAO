-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end

local map = require("tilesheetMapMain")
local kirito = require("kirito")
local swordFire = require("SwordFire")
local i = 2
local n = 1
local chronoSword = 0
local derniereKey = {}
local sword = love.graphics.newImage("sword3.png")

function love.load()
  
  largeur = love.graphics.getWidth()
  hauteur = love.graphics.getHeight()
  
  kirito.Load()
  map.Load()
  swordFire.Load()
  
  swordFire.x = kirito.x - 30
  swordFire.y = kirito.y 
end

function love.update(dt)
  
  local posX = kirito.x
  local posY = kirito.y
  
   
  if love.keyboard.isDown("left") then
      
      kirito.x = kirito.x - 3
      
    swordFire.angle = 225
    swordFire.x = kirito.x - 30
    swordFire.y = kirito.y + 18
    
  end
  
  
   if love.keyboard.isDown("right") then
    
    kirito.x = kirito.x + 3
    swordFire.angle = 45
    swordFire.x = kirito.x + 30
    swordFire.y = kirito.y + 15
  
  end
  
   if love.keyboard.isDown("up") then
      
      kirito.y = kirito.y - 3
    swordFire.angle = 0
    swordFire.x = kirito.x - 25
    swordFire.y = kirito.y - 10
     
  end
  
  if love.keyboard.isDown("down") then

      kirito.y = kirito.y + 3
       
    swordFire.angle = 0
    swordFire.x = kirito.x -30
    swordFire.y = kirito.y 
      
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

 
 chronoSword = chronoSword + 0.2
 
 
 
 if n > #swordFire.images then
   
   n = 1
  end
  
  if chronoSword > 100 then
  
  n = n + 0.1
  swordFire.currentImage = swordFire.images[math.floor(n)]
  end
  
  if chronoSword >200 then
  
    chronoSword = 0
    swordFire.currentImage = swordFire.images[1]
    n = 1
  end

print (chronoSword)
end

function love.draw()
    
    -- affiche la map
    map.Draw()
    
   love.graphics.draw(kirito.TileSheet.TileSheet, kirito.currentImage , kirito.x, kirito.y, 
      0, 3, 3, kirito.ox, kirito.oy)
    
  --love.graphics.draw(sword, kirito.x+2, kirito.y+12, 
   --   0, 3.6, 3.6, kirito.ox, kirito.oy)
    --love.graphics.line(largeur/2, 0, largeur/2, hauteur)
    --love.graphics.line(0, hauteur/2, largeur, hauteur/2)
    love.graphics.draw(swordFire.TileSheet.TileSheet, swordFire.currentImage , swordFire.x, swordFire.y, 
      swordFire.angle, 4, 4, swordFire.ox, swordFire.oy)
    
    
end

function love.keypressed(key)
  
  derniereKey = key
  
  print(key)
  
  end