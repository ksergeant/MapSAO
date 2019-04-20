local kirito = {}
kirito.TileSheet = require("Characters/Kirito/tilesheetKirito")

kirito.images = {}
kirito.currentImage = {}
kirito.deplacementGauche = {}
kirito.deplacementDroite = {}
kirito.deplacementHaut = {}
kirito.deplacementBas = {}
kirito.nom = "Kirito"
kirito.niveau = 1
kirito.x = love.graphics.getWidth()/2
kirito.y = love.graphics.getHeight()/2
kirito.ox = 32/2
kirito.oy = 32/2
kirito.enMouvement = false

function kirito.Load()
  
  kirito.TileSheet.Load()
  
  kirito.images[1] = kirito.TileSheet.TileTextures[4]
  kirito.images[2] = kirito.TileSheet.TileTextures[5]
  kirito.images[3] = kirito.TileSheet.TileTextures[6]
  kirito.images[4] = kirito.TileSheet.TileTextures[16]
  kirito.images[5] = kirito.TileSheet.TileTextures[17]
  kirito.images[6] = kirito.TileSheet.TileTextures[18]
  kirito.images[7] = kirito.TileSheet.TileTextures[28]
  kirito.images[8] = kirito.TileSheet.TileTextures[29]
  kirito.images[9] = kirito.TileSheet.TileTextures[30]
  kirito.images[10] = kirito.TileSheet.TileTextures[40]
  kirito.images[11] = kirito.TileSheet.TileTextures[41]
  kirito.images[12] = kirito.TileSheet.TileTextures[42]
  
  kirito.currentImage = kirito.images[2]
  
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