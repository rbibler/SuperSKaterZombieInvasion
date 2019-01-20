/// This is a script that helps determine if a set of coordinates is on (or close enough to) a rail.
/// Returns the y offset of the rail position within the current tile or -1 if not on the rail.
/// @arg xToCheck
/// @arg yToCheck

var xToCheck = argument0;
var yToCheck = argument1;

with(obj_railController) {
	var tile = tilemap_get_at_pixel(tiles, xToCheck, yToCheck);
	if(tile > 0) {
		var xIndex = xToCheck mod TILE_SIZE;
		var yIndex = yToCheck mod TILE_SIZE;
		var railHeight = railHeights[tile, xIndex];
		if(railHeight != -1 and abs(yIndex - railHeight) < railThreshold) {
			return railHeight;
		} else {
			return -1;
		}
	} else {
		return -1;
	}
}
return -1;