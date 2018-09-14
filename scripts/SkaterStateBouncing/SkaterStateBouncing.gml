/// Skater's Jumping state. 
/* 
*	Exits: 
*		- Falling, if jump key no longer pressed or reached apogee
*		- Hit
*/

// Reset animation and grounded flags when entering state
// Also add jump impetus to yspeed to make the skater jump
if(stateNew) {
	sprite_index = spr_SkaterJump;
	if(bounceDirection == 0) {
		ySpeed = bounceSpeed;
		jump = 1;
	} else {
		xSpeed = bounceSpeed;
	}
	
	onSlope = false;
	grounded = false;
}

SkaterBasicStateAnimation();

// Check if we should fire a weapon
if(currentWeapon != noone and script_exists(currentWeapon.shootSequenceScript)) {
	var shootNow = script_execute(currentWeapon.shootSequenceScript); 
	if(shootNow) {
		script_execute(currentWeapon.fireScript, currentWeapon, false);
	}
}

// Check how fast the skater should be moving
SkaterHorizontalImpetus();

// Figure out the fractional movement so that we're always working with integers
GeneralMovementFractions();

// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and !input[LEFT] and !input[RIGHT]) {
	
	// If horiztonal direction is the same this frame as last, then need to slow down
	if(sign(xSpeed) == sign(lastXSpeed)) {
		// Air friction is less than ground friction. Just makes sense
		xSpeed -= (airFriction * sign(xSpeed));
		// If that last slow down has flipped the direction, stop the skater
		if(sign(xSpeed) != sign(lastXSpeed)) {
			StopXMotion();
		}
	} else {
		StopXMotion();
	}
	
}

MoveAndCollide();
SkaterLadderCollisions();

// If yspeed is greater than zero, we've reached our apogee so it's time to fall
if(jump == 1 and ySpeed > 0){
	show_debug_message("FAlling in jump");
	// Start falling. Can't set jump to zero, because that'll reset the can jump flag
	jump = 2;
	StopYMotion();
	stateSwitch(s_FALLING);
}

// If we hit the ground somehow (not likely) we should be idle. Let idle state take care of
// skating check
if(grounded) {
	stateSwitch("IDLE");
}