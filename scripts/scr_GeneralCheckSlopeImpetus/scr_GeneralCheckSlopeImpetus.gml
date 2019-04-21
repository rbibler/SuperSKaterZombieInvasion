// Slopes don't impact runners, only skaters
if(object_index == obj_skater and currentMovementState == ON_FOOT_STATE) {
	lastSlopeImpetus = slopeImpetus;
	return;
}

if(global.debug) {
	show_debug_message("    Slope: " + (onSlope ? "True" : "False"));
}
var upHill = scr_HeadingUpHill();
if(onSlope) {
	xSpeed += slopeImpetus;
	if(global.debug) {
		show_debug_message("    SlopeImpetus: " + string(slopeImpetus));
	}
	// Add some extra speed if speed is less than one to overcome the inertia
	// caused by operating only with integers
	if(abs(xSpeed) < 1 and !upHill) {
		var slopeBoost = sign(slopeImpetus) * 0.5;
		xSpeed += slopeBoost;
		if(global.debug) {
			show_debug_message("    SlopeBoost: " + string(slopeBoost));
		}
	}		
}
lastSlopeImpetus = slopeImpetus;