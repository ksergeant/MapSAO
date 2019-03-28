local kirito = {}
kirito.TileSheet = require("tilesheetKirito")

kirito.images = {}
kirito.curerntImage = {}
kirito.deplacementGauche = {}
kirito.deplacementDroite = {}
kirito.deplacementHaut = {}
kirito.deplacementBas = {}

kirito.x = love.graphics.getWidth()/2
kirito.y = love.graphics.getHeight()/2
kirito.ox = 32/2
kirito.oy = 32/2
kirito.enMouvement = false



function kirito.Load(dt)
  
  kirito.TileSheet.Load()
  
  kirito.images[1] = kirito.TileSheet.TileTextures[1]
  kirito.images[2] = kirito.TileSheet.TileTextures[2]
  kirito.images[3] = kirito.TileSheet.TileTextures[3]
  kirito.images[4] = kirito.TileSheet.TileTextures[13]
  kirito.images[5] = kirito.TileSheet.TileTextures[14]
  kirito.images[6] = kirito.TileSheet.TileTextures[15]
  kirito.images[7] = kirito.TileSheet.TileTextures[25]
  kirito.images[8] = kirito.TileSheet.TileTextures[26]
  kirito.images[9] = kirito.TileSheet.TileTextures[27]
  kirito.images[10] = kirito.TileSheet.TileTextures[37]
  kirito.images[11] = kirito.TileSheet.TileTextures[38]
  kirito.images[12] = kirito.TileSheet.TileTextures[39]
  
  kirito.currentImage = kirito.TileSheet.TileTextures[2]
  
  kirito.deplacementGauche[1] = kirito.images[4]
  kirito.deplacementGauche[2] = kirito.images[5]
  kirito.deplacementGauche[3] = kirito.images[6]
  
  kirito.deplacementDroite[1] = kirito.images[7]
  kirito.deplacementDroite[2] = kirito.images[8]
  kirito.deplacementDroite[3] = kirito.images[9]
  
  kirito.deplacementHaut[1] = kirito.images[10]
  kirito.deplacementHaut[2] = kirito.images[11]
  kirito.deplacementHaut[3] = kirito.images[12]
  
  kirito.deplacementBas[1] = kirito.images[1]
  kirito.deplacementBas[2] = kirito.images[2]
  kirito.deplacementBas[3] = kirito.images[3]
  
end

function kirito.Update(dt)
end

function kirito.Draw(dt)
end

return kirito