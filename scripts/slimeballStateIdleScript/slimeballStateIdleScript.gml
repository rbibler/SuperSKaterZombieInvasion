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
	sprite_index = spr_slimeballMove;
	image_index = 0;
	//jump = 0;
	stateVar[0] = random_range(60 * 1, 60 * 3); 
	stateVar[1] = 0;
	stateVar[2] = false;
}

// If enough time has passed to start the animation idle thing do it.
// stateVar[0] = time in steps between idle animation cycles
// stateVar[1] = amount of time since last animation cycle
if(stateTimer - stateVar[1] >= stateVar[0]) {
	stateVar[2] = true;
}
	
if(stateTimer mod (60 / 5) == 0) {
	if(stateVar[2] == true) {
		image_index++;
		if(image_index >= image_number) {
			stateVar[1] = stateTimer;
			stateVar[0] = random_range(60 * 1, 60 * 3);
			image_index = 0;
			stateVar[2] = false;
		}
	}
}

// Determine if skater is sprinting or not
var speedThisFrame = input[SHOOT] ? sprintSpeedX : normalSpeedX;

if(input[LEFT]) {
	if(!input[RIGHT] and !input[DOWN]) {
		myDirection = -1;
		// If so, accelerate left until max speed is reached
		if(xSpeed > -speedThisFrame) {
			xSpeed -= 0.75;
		} 
	}
// If not moving left, check to see if moving right
} else if(input[RIGHT]) {
	if(!input[LEFT] and !input[DOWN]) {
		myDirection = 1;
		// If so, accelerate right until max speed is reached
		if(xSpeed < speedThisFrame) {
			xSpeed += 0.75;
		} 
	}
// Otherwise no horizontal impetus. Could still be rolling though
} else {
	// If no directional input, slow the skater down until he stops
	if(abs(xSpeed) > 0 and grounded) {
		//stateSwitch("ROLLING");
	}
} 

GeneralCheckSlopeImpetus();

MoveAndCollide();

// Skater can only go so fast
// Choose max speed based on situation: faster if on a slope
var maxSpeed = speedThisFrame;
if(onSlope) {
	if(input[LEFT] or input[RIGHT]) {
		if(input[SHOOT]) {
			maxSpeed = sprintSpeedX;
		} else {
			maxSpeed = normalSpeedX;
		}
	} else {
		maxSpeed = normalSpeedX;
	}
}

// If the skater is skating too quickly, slow him down gradually until he reaches max speed
// Don't to just set to max speed, or the transition will feel weird
if(abs(xSpeed) >= maxSpeed) {
	xSpeed -= sign(xSpeed) * 0.15;
}



if(grounded) {
	stateSwitch("MOVING");
	input[RIGHT] = 0;
	input[LEFT] = 0;
	input[moveDirOnRestart] = 1;
}

//var dist = abs(x - obj_skater.x);
//if(dist < 50) {
//	stateSwitch("ATTACKING");
//}

