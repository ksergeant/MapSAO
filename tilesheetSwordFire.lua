local TileSheet = {}
local TILE_WIDTH = 30
local TILE_HEIGHT = 30

TileSheet.Map = {}
TileSheet.Map =  {
  
  { 1,   2,   3,   4,   5,  6,  7,  8,  9,  10},
  {11,  12,  13,  14,  15,  16,  17,  18,  19,  20}
  

}

TileSheet.TileSheet = {}
TileSheet.TileTextures = {}
TileSheet.TileTypes = {}

function TileSheet.Load()
  print("TileSheet:Chargement des textures...")
  
  TileSheet.TileSheet = love.graphics.newImage("epeeMagic.png")
  local nbColumns = TileSheet.TileSheet:getWidth() / TILE_WIDTH
  local nbLines = TileSheet.TileSheet:getHeight() / TILE_HEIGHT
  local id = 1
  
  TileSheet.TileTextures[0] = nil
  for l=1,nbLines do
    for c=1,nbColumns do
      TileSheet.TileTextures[id] = love.graphics.newQuad(
        (c-1)*TILE_WIDTH, (l-1)*TILE_HEIGHT,
        TILE_WIDTH, TILE_HEIGHT, 
        TileSheet.TileSheet:getWidth(), TileSheet.TileSheet:getHeight()
        )
      id = id + 1
    end
  end
  
  print("TileSheet:Chargement des textures terminées...")
end

function TileSheet.Draw()
  local l,c
  
  for l=1,MAP_HEIGHT do
    for c=1,MAP_WIDTH do
      local id = TileSheet.Map[l][c]
      local texQuad = TileSheet.TileTextures[id]
      if texQuad ~= nil then
        love.graphics.draw(TileSheet.TileSheet, texQuad, (c-1)*TILE_WIDTH, (l-1)*TILE_HEIGHT)
      end
    end
  end
  
end

return TileSheet