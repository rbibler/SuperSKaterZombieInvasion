/// This is the first vertical collision check, and the only one that deals with slopes
/// @arg collisionPoint
/// @arg groundedAtStart
/// @arg targetBottomTile

var colPoint = argument0;
var groundedAtStart = argument1;
var targetBottomTile = argument2;


if(grounded) {
	scr_CheckIfOnSlope(colPoint);
} else {
	if(groundedAtStart and onSlope) {
		if((slopeDirection == UP_SLOPE and xSpeed > 0) or (slopeDirection == DOWN_SLOPE and xSpeed < 0)) {
			targetBottomTile--;
		} else {
			targetBottomTile++;
		}
		colPoint = tilemap_get_at_pixel(collisionTiles, x, (targetBottomTile * TILE_SIZE) + 1);
		var tile = colPoint;
		if(tile > 0) {
			var tileHorizIndex = x mod TILE_SIZE;
			var tileHeight = obj_slopeController.slopeHeights[tile, tileHorizIndex];
			grounded = true;
			scr_StopYMotion();
			y = (targetBottomTile * TILE_SIZE) + tileHeight + (y - bbox_bottom) - 1;
		}
	}
}

groundedMiddle = grounded;