local swordFire = {}
swordFire.TileSheet = require("tilesheetSwordFire")

swordFire.images = {}
swordFire.curerntImage = {}
swordFire.deplacementGauche = {}
swordFire.deplacementDroite = {}
swordFire.deplacementHaut = {}
swordFire.deplacementBas = {}

swordFire.x = love.graphics.getWidth()/2
swordFire.y = love.graphics.getHeight()/2
swordFire.ox = 30/2
swordFire.oy = 30/2
swordFire.enMouvement = false
swordFire.angle = 0



function swordFire.Load(dt)
  
  swordFire.TileSheet.Load()
  
  swordFire.images[1] = swordFire.TileSheet.TileTextures[1]
  swordFire.images[2] = swordFire.TileSheet.TileTextures[2]
  swordFire.images[3] = swordFire.TileSheet.TileTextures[3]
  swordFire.images[4] = swordFire.TileSheet.TileTextures[4]
  swordFire.images[5] = swordFire.TileSheet.TileTextures[5]
  swordFire.images[6] = swordFire.TileSheet.TileTextures[6]
  swordFire.images[7] = swordFire.TileSheet.TileTextures[7]
  swordFire.images[8] = swordFire.TileSheet.TileTextures[8]
  swordFire.images[9] = swordFire.TileSheet.TileTextures[9]
  swordFire.images[10] = swordFire.TileSheet.TileTextures[10]
  swordFire.images[11] = swordFire.TileSheet.TileTextures[11]
  swordFire.images[12] = swordFire.TileSheet.TileTextures[12]
  swordFire.images[13] = swordFire.TileSheet.TileTextures[13]
  swordFire.images[14] = swordFire.TileSheet.TileTextures[14]
  swordFire.images[15] = swordFire.TileSheet.TileTextures[15]
  swordFire.images[16] = swordFire.TileSheet.TileTextures[16]
  swordFire.images[17] = swordFire.TileSheet.TileTextures[17]
  swordFire.images[18] = swordFire.TileSheet.TileTextures[18]
  swordFire.images[19] = swordFire.TileSheet.TileTextures[19]
  swordFire.images[20] = swordFire.TileSheet.TileTextures[20]
  
  swordFire.currentImage = swordFire.TileSheet.TileTextures[1]
  
  
end

function swordFire.Update(dt)
end

function swordFire.Draw(dt)
end

return swordFire