/// This is a script that helps an object figure out the height offset for a rail tile at a given position.
/// @arg xIndex
/// @arg railTileIndex

var xIndex = argument0;
var railTileIndex = argument1;

with(obj_railController) {
	return railHeights[railTileIndex, xIndex];
}