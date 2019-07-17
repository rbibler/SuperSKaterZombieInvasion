// Figure out the fractional movement so that we're always working with integers
scr_GeneralMovementFractions();

if(noCollisions == false) {
	// Check all possible collisions
	scr_GeneralHorizontalCollisionCheck();
	x += xSpeed;
	if(global.debug and object_index == obj_skater) {
		show_debug_message("    xSpeed: " + string(xSpeed));
	}
	scr_GeneralVerticalCollisionCheck(grounded);
	onEdge = scr_OnEdge();
}
