/// Skater's idle state. 
/* 
*	Exits: 
*		- Left or right movement if on ground
*		- Jumping
*		- Crouching
*		- Hit
*		- Falling
*/

var framesTillNextImage = stateVar[0];
var frameCountAtLastImage = stateVar[1];

// Reset the animation and the jump counter if entering the state
if(stateNew) {
	sprite_index = spr_SkaterOnFootBored;
	image_index = 0;
	framesTillNextImage = random_range(60 * 2, 60 * 4); 
	frameCountAtLastImage = 0;
	canShoot = true;
}

shouldAnimate = false;
scr_CheckForBoardSwing();

// If enough time has passed to start the animation idle thing do it.
if(stateTimer - frameCountAtLastImage >= framesTillNextImage) {
	switch(image_index) {
		case 0:
			var oneOrTwo = scr_Chance(51);
			image_index = oneOrTwo ? 1 : 2;
			framesTillNextImage = random_range(2 * room_speed, 3 * room_speed);
		break;
		
		case 1:
			image_index = 0;
			framesTillNextImage = random_range(5 * room_speed, 9 * room_speed);
		break;
		
		case 2:
			image_index = 0;
			framesTillNextImage = random_range(5 * room_speed, 9 * room_speed);
		break;
	}
	
	frameCountAtLastImage = stateTimer;
}

// Crouch if the skater presses down
if(input[DOWN] and stateName != s_CLIMBING) {
	if(scr_CheckLadderClimbDown()) {
		y += 12;
		scr_StateSwitch(s_CLIMBOUT);
		drawOffsetX = 0;
		return;
	}
	var stair = instance_place(x, y, obj_StairTop);
	if(stair != noone) {
		currentStaircase = stair;
		scr_StateSwitch(s_STAIRS);
		drawOffsetX = 0;
		return;
	}
	scr_StateSwitch(s_ON_FOOT_CROUCHING);
	drawOffsetX = 0;
} 


// Check how fast the skater should be moving
scr_SkaterRunHorizontalImpetus();
scr_MoveAndCollide();


// Switch to Skating if horizontal movement. Can only be idle if grounded, so no need to check ground flag
if((input[LEFT] and !input[RIGHT]) or (input[RIGHT] and !input[LEFT])) {
	scr_StateSwitch(s_RUNNING);
	drawOffsetX = 0;
} 


if(input[UP] and !input[DOWN]) {
	if(scr_CheckOnLadder()) {
		scr_StateSwitch(s_CLIMBING);
		drawOffsetX = 0;
		return;
	} 
	var stair = instance_place(x, y, obj_StairBottom);
	if(stair != noone) {
		currentStaircase = stair;
		scr_StateSwitch(s_STAIRS);
		drawOffsetX = 0;
		return;
	}
}

if(input[TRANSITION] and !lastInput[TRANSITION]) {
	scr_StateSwitch(s_FOOT_TO_SKATE);
	drawOffsetX = 0;
	return;
}

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_ON_FOOT_JUMPING);
	drawOffsetX = 0;
} else {
	// If you aren't on the ground anymore, you're falling
	if(!grounded) {
		scr_StateSwitch(s_ON_FOOT_FALLING);
		drawOffsetX = 0;
	}
}

stateVar[0] = framesTillNextImage;
stateVar[1] = frameCountAtLastImage;
