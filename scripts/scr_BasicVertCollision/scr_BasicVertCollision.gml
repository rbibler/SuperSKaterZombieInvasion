/// This is a script that helps an object determine if its on the ground
/// @arg tileIndexToCheck
/// @arg yPosToCheck
/// @arg groundedAtStart


var tile = argument0;
var targetBottom = argument1;
var groundedAtStart = argument2;
var xPos = argument3;

if(tile <= 0) {
	grounded = false;
	show_debug_message("Grounded is false in basic!");
} else {
	var targetBottomTile = floor(targetBottom / TILE_SIZE);
	var tileHorizIndex = xPos mod TILE_SIZE;
	var tileHeight = obj_slopeController.slopeHeights[tile, tileHorizIndex];
	var depthInTile = targetBottom mod TILE_SIZE;
	var dif = depthInTile - tileHeight;
	if(dif >= 0  or (groundedAtStart and tile > 5)) {
		if(!groundedAtStart and abs(dif) > abs(ySpeed)) {
			return;
		}
		grounded = true;
		show_debug_message("Grounded is True in basic!");
		scr_StopYMotion();
		y = (targetBottomTile * TILE_SIZE) + tileHeight + (y - bbox_bottom) - 1;
	} 
}