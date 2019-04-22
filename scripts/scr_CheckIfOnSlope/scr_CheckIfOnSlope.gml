/// This is a script that helps an object determine if the tile it's standing on is a slope tile
/// @arg tileToCheck

var tile = argument0;

if(tile > 5) {
	onSlope = true;
	slopeDirection = (tile< 15) ? UP_SLOPE : DOWN_SLOPE;
	slopeImpetus = obj_slopeController.slopeGravity[tile];
	if((slopeDirection == DOWN_SLOPE and xSpeed < 0) or (slopeDirection == UP_SLOPE and xSpeed > 0)) {
		var speedMultiplier = abs(xSpeed / maxSpeedXSkatingDownhill);
		yMomentum = obj_slopeController.slopeMomentumMax[tile] * speedMultiplier;
		slopeTouchTimer = 1;
	} else {
		yMomentum = 0;
	}
} else {
	onSlope = false;
	slopeImpetus = 0;
	yMomentum = 0;
}