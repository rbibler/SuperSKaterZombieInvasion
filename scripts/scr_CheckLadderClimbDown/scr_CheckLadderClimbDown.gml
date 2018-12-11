//var ladder = place_meeting(x, y, obj_Ladder);
var climbout = instance_place(x, y, obj_Climbout);
if(climbout) {
	var dist = abs(x - climbout.x);
	if(dist < 8) {
		return true;
	}
} 
return false;