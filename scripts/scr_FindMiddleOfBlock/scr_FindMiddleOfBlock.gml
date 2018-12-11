/// This is a scrip that finds the middle of a block
/// @arg block

var blockToCheck = argument0;

var blockInstance = instance_place(x, y, blockToCheck);

return floor(blockInstance.x / TILE_SIZE) * TILE_SIZE + (TILE_SIZE / 2);