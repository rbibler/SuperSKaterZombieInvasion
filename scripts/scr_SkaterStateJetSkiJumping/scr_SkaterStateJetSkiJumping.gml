/// Skater's Jumping state. 
/* 
*	Exits: 
*		- Falling, if jump key no longer pressed or reached apogee
*		- Hit
*/

// Reset animation and grounded flags when entering state
// Also add jump impetus to yspeed to make the skater jump
if(stateNew) {
	scr_UpdateSkaterAnimation(onFootJumpAnim);
	ySpeed = onFootJumpSpeed;
	
	ySpeedFraction = 0;
	// Set flag so we know the skater is jumping
	jump = 1;
	onSlope = false;
	grounded = false;
	canShoot = true;
	scr_SpawnJetSki(xSpeed, s_MOVING, image_index, image_xscale, x, y);
	//currentVehicle = NO_VEHICLE;
}


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

scr_MoveAndCollide();


// If yspeed is greater than zero, we've reached our apogee so it's time to fall
if(jump == 1 and (ySpeed > 0 or !input[JUMP])){
	// Start falling. Can't set jump to zero, because that'll reset the can jump flag
	jump = 2;
	scr_StopYMotion();
	scr_StateSwitch(s_JET_SKI_FALLING);
}

