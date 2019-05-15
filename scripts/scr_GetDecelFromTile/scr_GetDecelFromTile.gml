/// This is a script that helps the skater figure out how fast he should accelerate.

// Air has different properties than ground.
if(!grounded) {
	return airFriction;
}

if(currentVehicle == JET_SKI) {
	return jetSkiDecel;
}

var decel = defaultDecel;
// A hack for now: Check to see if we're center-grounded, then grab friction param for the tile we're 
// touching if it exists. If no friction param is registered for that tile, return the default.
// TODO: Add tile frictions for all tile types. 
if(groundedMiddle) {
	var decelFromTile = scr_GetTileDecel(currentMovementState, groundTile[MIDDLE]); //obj_slopeController.tileDecel[currentMovementState, groundTile[MIDDLE]];
	if(decelFromTile > 0) {
		decel = decelFromTile;
	}
}
return decel;