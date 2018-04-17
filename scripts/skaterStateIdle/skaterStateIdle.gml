/// Skater's idle state. 
/* 
*	Exits: 
*		- Left or right movement if on ground
*		- Jumping
*		- Crouching
*		- Hit
*		- Falling
*/

// Reset the animation and the jump counter if entering the state
if(stateNew) {
	sprite_index = spr_SkaterIdle;
	image_index = 0;
	//jump = 0;
	stateVar[0] = random_range(60 * 3, 60 * 6); 
	stateVar[1] = 0;
	stateVar[2] = false;
}

// If enough time has passed to start the animation idle thing do it.
// stateVar[0] = time in steps between idle animation cycles
// stateVar[1] = amount of time since last animation cycle
if(stateTimer - stateVar[1] >= stateVar[0]) {
	stateVar[2] = true;
}

if(stateVar[2] == true) {
	if(stateTimer mod (60 / 5) == 0) {
		image_index++;
		if(image_index >= image_number) {
			stateVar[1] = stateTimer;
			stateVar[0] = random_range(60 * 3, 60 * 6);
			image_index = 0;
			stateVar[2] = false;
		}
	}
}

SkaterCheckSlopeImpetus();

// Crouch if the user presses down
if(input[DOWN] and state != climbingState) {
	stateSwitch("CROUCHING");
} 

// Check for Vert collisions in case ground falls out underneath our feet
// No need to check horiz collision 'cause you ain't moving
SkaterVerticalCollisionCheck();
// Do need to check platform collisions because those move
SkaterPlatformCollisions();
SkaterLadderCollisions();

// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and grounded and state != rollingState and state != recoveringState) {
	stateSwitch("ROLLING");
}

// Switch to Skating if horizontal movement. Can only be idle if grounded, so no need to check ground flag
if(input[LEFT] or input[RIGHT]) {
	stateSwitch("SKATING");
} 

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if(jump == 0 and !lastInput[JUMP] and canJump < jumpFramesAllowance) {
		stateSwitch("JUMPING");
	}
} 

// If you aren't on the ground anymore, you're falling
if(!grounded) {
	stateSwitch("FALLING");
}

// Probably don't need this, but it's here to make sure we slow down to a stop
if(abs(xSpeed) < 0.15) {
	xSpeed = 0;
	xSpeedFraction = 0;
}

