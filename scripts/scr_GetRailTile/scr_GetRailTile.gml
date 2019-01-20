/// This is a script to get the tile at the coordinates.
/// @arg xToCheck
/// @arg yToCheck

var xToCheck = argument0;
var yToCheck = argument1;

with(obj_railController) {
	var tile = tilemap_get_at_pixel(tiles, xToCheck, yToCheck);
	return tile;
}