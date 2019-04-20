io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

local i = 2
local n = 1
local chronoSword = 0
local derniereKey = {}

local myGame = require("Game/game")


function love.load()
  
  largeur = love.graphics.getWidth()
  hauteur = love.graphics.getHeight()
  myGame.Load()

  myGame.swordFire.x = myGame.kirito.x - 30
  myGame.swordFire.y = myGame.kirito.y 
end

function love.update(dt)
  
  myGame.Update(dt)

  local posX = myGame.kirito.x
  local posY = myGame.kirito.y
  
   if love.keyboard.isDown("left") then
      
    myGame.kirito.x = myGame.kirito.x - 3
      
    myGame.swordFire.angle = 225
    myGame.swordFire.x = myGame.kirito.x - 30
    myGame.swordFire.y = myGame.kirito.y + 18
    myGame.cameraX = myGame.cameraX + 3
  end
  
   if love.keyboard.isDown("right") then
    
    myGame.kirito.x = myGame.kirito.x + 3
    myGame.swordFire.angle = 45
    myGame.swordFire.x = myGame.kirito.x + 30
    myGame.swordFire.y = myGame.kirito.y + 15
    myGame.cameraX = myGame.cameraX - 3
      
  end
  
   if love.keyboard.isDown("up") then
      
    myGame.kirito.y = myGame.kirito.y - 3
    myGame.swordFire.angle = 0
    myGame.swordFire.x = myGame.kirito.x - 25
    myGame.swordFire.y = myGame.kirito.y - 10
    myGame.cameraY = myGame.cameraY + 3
  end
  
  if love.keyboard.isDown("down") then

    myGame.kirito.y = myGame.kirito.y + 3
       
    myGame.swordFire.angle = 0
    myGame.swordFire.x = myGame.kirito.x -30
    myGame.swordFire.y = myGame.kirito.y 
    myGame.cameraY = myGame.cameraY - 3  
  end
  
   i = i + 0.15
   
  if math.floor(i) > #myGame.kirito.deplacementGauche then
    
    i = 1
  end
  
  if  myGame.kirito.x > posX then
    myGame.kirito.currentImage = myGame.kirito.deplacementDroite[math.floor(i)]
  end
  
  
  if  myGame.kirito.x < posX then
    myGame.kirito.currentImage = myGame.kirito.deplacementGauche[math.floor(i)]
  end
  
  if  myGame.kirito.y < posY then
    myGame.kirito.currentImage = myGame.kirito.deplacementHaut[math.floor(i)]
  end
  
  if  myGame.kirito.y > posY then
    myGame.kirito.currentImage = myGame.kirito.deplacementBas[math.floor(i)]
  end


  if  myGame.kirito.x == posX and derniereKey == "left" then
    myGame.kirito.currentImage = myGame.kirito.deplacementGauche[2]
    
  end
  
  if  myGame.kirito.x == posX and derniereKey == "right" then
    myGame.kirito.currentImage = myGame.kirito.deplacementDroite[2]
    
  end

  if  myGame.kirito.y == posY and derniereKey == "up" then
    myGame.kirito.currentImage = myGame.kirito.deplacementHaut[2]
    
  end
  
  if  myGame.kirito.y == posY and derniereKey == "down" then
    myGame.kirito.currentImage = myGame.kirito.deplacementBas[2]
    
  end

  if love.keyboard.isDown("down") and love.keyboard.isDown("left") then

    myGame.kirito.y = myGame.kirito.y -3
    myGame.kirito.x = myGame.kirito.x +3
    myGame.kirito.currentImage = myGame.kirito.deplacementBas[2]

      
  end

 chronoSword = chronoSword + 0.2
 
 if n > #myGame.swordFire.images then
   
   n = 1
  end
  
  if chronoSword > 100 then
  
  n = n + 0.1
  myGame.swordFire.currentImage = myGame.swordFire.images[math.floor(n)]
  end
  
  if chronoSword >200 then
  
    chronoSword = 0
    myGame.swordFire.currentImage = myGame.swordFire.images[1]
    n = 1
  end




end

function love.draw()
    
  myGame.Draw(dt);

    love.graphics.draw(myGame.kirito.TileSheet.TileSheet, myGame.kirito.currentImage , myGame.kirito.x + myGame.cameraX,
    myGame.kirito.y + myGame.cameraY, 0, 3, 3, myGame.kirito.ox, myGame.kirito.oy)

    love.graphics.print(myGame.kirito.nom, myGame.kirito.x + myGame.cameraX, myGame.kirito.y + myGame.cameraY, 0, 1.2, 1.2, 
    15, 58)
  
    love.graphics.draw(myGame.swordFire.TileSheet.TileSheet, myGame.swordFire.currentImage , myGame.swordFire.x + myGame.cameraX, 
    myGame.swordFire.y + myGame.cameraY, myGame.swordFire.angle, 4, 4, myGame.swordFire.ox, myGame.swordFire.oy)
    
    
end

function love.keypressed(key)
  
  derniereKey = key
  
  print(key)
  
  end