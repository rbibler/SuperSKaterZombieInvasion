/// Checking to see if skater lands on something
// First check the bottom middle, then bottom right, then bottom left.

/*
* Adapted from Shaun Spaulding's tutorial: https://www.youtube.com/watch?v=Yre-XAE8DBA
*/
var bbox_side = 0;
var p1 = 0;
var p2 = 0;


var oldY = y;
// If moving down, then we check collisions with the bottom edge
if(ySpeed >= 0) {
	bbox_side = bbox_bottom;
} else {
	// when moving up we check the top edge
	bbox_side = bbox_top;
}
// Find tile id for tiles at the bottom or top corners of where the object's bbox will be when 
// yspeed is added
p1 = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_side + ySpeed);
p2 = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_side + ySpeed);
// if either of the corner tiles is between 1 and 4 (inclusive) it's a solid tile
if(((p1 != 0 and p1 <= 4) or (p2 != 0 and p2 <= 4))) {
	// if moving down, it's a collision with the floor
	// so set the object's y value to the top of that tile (taking into account the distance
	// between the object's origin and its bbox
	if(ySpeed > 0) {
		var bboxTile = floor((bbox_side + ySpeed) / 16);
		bboxTile *= 16;
		y = bboxTile - (bbox_bottom - y) - 1;
		grounded = true;
	} 
	// Stop the object from moving anymore
	StopYMotion();
	show_debug_message("Vert check 1");
} 

// Find out how far above the ground the object is for slope collisions 
var floorDist = GeneralInFloor(collisionTiles, x, bbox_bottom + ySpeed);
if(floorDist >= 0) {
	// if the object is "in" the floor, find out what kind of floor it's in
	var tileId = tilemap_get_at_pixel(collisionTiles, x, bbox_bottom + ySpeed);
	// If it's a slope tile...
	if(tileId != 0 and tileId != 4 and tileId != 5) {
		onSlope = true;
		// move it to where it wants to be
		y += ySpeed;
		// Then set it back to one pixel above the floor
		y -= (floorDist + 1);
		// Stop its y motion
		StopYMotion();
		// And update the floor distance variable to reflect it's new y pos
		floorDist = -1;
		grounded = true;
		show_debug_message("Vert check 2");
	}
}


GeneralVerticalMovement();

// If the object was grounded at the start of the frame and is still grounded
if(grounded and !platformGrounded) {
	if(onSlope) {
		y += abs(floorDist) - 1;
	}
	if((bbox_bottom mod 16) == 15) {
		var tileIdDown = tilemap_get_at_pixel(collisionTiles, x, bbox_bottom + 1);
		if(tileIdDown > 5) {
			y += abs(GeneralInFloor(collisionTiles, x, bbox_bottom + 1));
			show_debug_message("Vert Check 3");
		}
	}
}




y += ySpeed;

show_debug_message("CHange: " + string(abs(oldY - y)));