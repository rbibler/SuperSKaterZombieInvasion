// Clear the slope flag so we don't have any confusion
onSlope = false;

// Check to see if the player is grounded at the start of the frame
var inFloorCenter = SkaterInFloor(collisionTiles, x, bbox_bottom + 1);
var inFloorLeft = SkaterInFloor(collisionTiles, bbox_left, bbox_bottom + 1);
var inFloorRight = SkaterInFloor(collisionTiles, bbox_right, bbox_bottom + 1);

// Player is grounded if bottom or bottom corner points are touching or more than one pixel 
// into the ground
grounded = (inFloorCenter >= 0 or inFloorLeft >= 0 or inFloorRight >= 0);
if(!grounded and ySpeed >= 0) {
	// If the skater isn't grounded on a floor tile, check if he's on a platform
	var platformCollider = collision_rectangle(bbox_left + xSpeed, bbox_bottom, bbox_right + xSpeed, bbox_bottom + 1, obj_platform, true, false);
	if(platformCollider != noone) {
		grounded = true;
	}
}

// Deal with the implications of groundedness
if(grounded) {
	// Skater can now jump
	jump = 0;
	canJump = 0;
	// Skater isn't moving down 
	ySpeed = 0;
	ySpeedFraction = 0;
} else {
	// If not grounded, increase jump affordance
	canJump++;
}