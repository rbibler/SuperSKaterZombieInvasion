/// This is a script that helps an object determine if it's hit its head
/// @arg yPosToCheck
/// @arg xPos


var xPos = argument0;
var targetTop = argument1;
var smacked = false;
var tile = tilemap_get_at_pixel(collisionTiles, xPos, targetTop);

if(tile <= 0) {
	grounded = false;
} else {
	var targetTile = floor(targetTop / TILE_SIZE);
	var tileHorizIndex = xPos mod TILE_SIZE;
	var tileHeight = obj_slopeController.slopeHeights[tile, tileHorizIndex];
	var depthInTile = TILE_SIZE - (targetTop mod TILE_SIZE);
	var dif = depthInTile - tileHeight;
	if(dif >= 0 and tile == 1) {
		scr_StopYMotion();
		smacked = true;
	} 
}

return smacked;