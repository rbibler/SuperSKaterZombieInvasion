var ladder = place_meeting(x, y, obj_Ladder);
var climbout = place_meeting(x, y, obj_Climbout);
var bottom = place_meeting(x, y, obj_LadderBottom);
if(climbout) {
	climbOut = true;
	return false;
} else if(bottom and input[DOWN]) {
	ladderBottom = true;
	return false;
}
if(ladder) {
	return true;
} else {
	return false;
}