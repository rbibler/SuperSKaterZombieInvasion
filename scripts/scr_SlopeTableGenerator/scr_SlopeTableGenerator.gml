/// This is a script that generates a slope table based on some parameters
/// @arg slopeTile
/// @arg slopeStepLength
/// @arg beginningHeight
/// @arg slopeDirection

var slopeTileIndex = argument0;
var slopeStepLength = argument1;
var slopeStepHeight = argument2;
var beginningHeight = argument3;
var slopeDirection = argument4;

var i = 0;
var slopeCounter = 0;
for(i = 0; i < TILE_SIZE; i++) {
	if(i > 0 and i % slopeStepLength == 0) {
		slopeCounter++;
	}
	slopeHeights[slopeTileIndex, i] = beginningHeight - (slopeCounter * (slopeDirection == UP_SLOPE ? 1 : -1));
	show_debug_message("slopeHeights[" + string(slopeTileIndex) + ", " + string(i) + "] = " + string(slopeHeights[slopeTileIndex, i]));
	
}
