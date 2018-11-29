var ladder = place_meeting(x, y, obj_Ladder);
var climbout = place_meeting(x, y, obj_Climbout);
if(climbout) {
	climbOut = true;
	return false;
}
if(ladder) {
	return true;
} else {
	return false;
}