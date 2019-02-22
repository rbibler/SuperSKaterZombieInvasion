/// @description Insert description here
// You can write your code in this editor
lastX = x;
lastY = y;
lastSlopeImpetus = slopeImpetus;

// No slopeimpetus if you're not on the ground!
if(!grounded or !onSlope) {
	slopeImpetus = 0;
}
