/// @description Checks to see if position is below the floor height of a given tile, returns how deep in floor
/// @arg tilemap
/// @arg x
/// @arg y

var tilemap = argument0;
var xCheck = argument1;
var yCheck = argument2;
var pos = tilemap_get_at_pixel(tilemap, xCheck, yCheck);
if(pos > 0) {
	if(pos == 1 or pos == 2 or pos == 4) { 
		return (yCheck mod 16); //solid block, would end up returning true anyway but this is FASTER, GOTTAGOFAST.
		
	} else if(pos > 5) {

		var thefloor = obj_slopeController.slopeHeights[pos, xCheck mod 16];
		
		slopeDirection = (pos < 15) ? UP_SLOPE : DOWN_SLOPE;
		return ((yCheck mod 16) - thefloor);
	}
} else {
	return -(16 - (yCheck mod 16))
}
