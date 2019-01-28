/// Skater's sitdown state. 
/* 
*	Exits: 
*		- Left or right movement if on ground
*		- Jumping
*		- Crouching
*		- Hit
*		- Falling
*/

// Set up some state variables
var edgeLocation = stateVar[0];
var startPos = stateVar[1];
var standingUp = stateVar[2];
var standUpStartTime = stateVar[3];
var edgeDirection = stateVar[4];

// Find out where the edge we're facing is and update sprite index
if(stateNew) {
	sprite_index = spr_SkaterOnFootSit;
	edgeDirection = scr_FindEdgeDirection();
	var tileStart = floor(x / TILE_SIZE) * TILE_SIZE;
	edgeLocation = (facing == FACE_RIGHT) ? (tileStart + TILE_SIZE - 1) : tileStart + 1;
	startPos = x;
	image_index = 0;
	canShoot = false;
	if(onSlope) {
		if(slopeDirection == UP_SLOPE) {
			facing = FACE_LEFT;
			
		} else {
			facing = FACE_RIGHT;
		}
	}
}

// We want to control the animation for this state manually to preserve timing.
shouldAnimate = false;

// Is the skater moving in the opposite direction from the edge? 
if(standingUp) {
	// If a full animation frame has passed update state and reset drawoffset
	if(stateTimer - standUpStartTime >= (60 / 10)) {
		scr_StateSwitch(s_RUNNING);
		drawOffsetX = 0;
		return;
	} else {
		// Once the stand up process has started, it can't be stopped!
		return;
	}
}

// Has skater completed the sitdown motion?
if(stateTimer >= 60 / 7) {
	sprite_index = spr_SkaterOnFootSitting;
	drawOffsetX = 0;
} else {
	// Make sure skater is at the edge. If not, scoot towards edge one unit per frame.
	// But update drawOffset so the sprite doesn't move
	if(!onSlope) {
		if(edgeDirection == FACE_RIGHT or (image_xscale == FACE_RIGHT and edgeDirection == 0)) {
			if(x < edgeLocation) {
				x++;
				drawOffsetX = startPos - x;
			}
		} else {
			if(x > edgeLocation) {
				x--;
				drawOffsetX = startPos - x;
			}
		}
	}
	
}


// Is skater at the top of a ladder or a staircase? If not, crouch
// No fancy transitions for these states. 
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


// If we're on a rightward edge, push off into the void. Otherwise, stand up
if(input[RIGHT] and !input[LEFT]) {
	if(image_xscale == FACE_RIGHT and !onSlope) {
		scr_StateSwitch(s_ON_FOOT_PUSH_OFF);
		drawOffsetX = 0;
	} else {
		sprite_index = spr_SkaterOnFootSit;
		standingUp = true;
		standUpStartTime = stateTimer;
	}
} 

// If we're on a leftward edge, push off into the void. Otherwise, stand up
if(input[LEFT] and !input[RIGHT]) {
	if(image_xscale == FACE_LEFT and !onSlope) {
		scr_StateSwitch(s_ON_FOOT_PUSH_OFF);
		drawOffsetX = 0;
	} else {
		sprite_index = spr_SkaterOnFootSit;
		standingUp = true;
		standUpStartTime = stateTimer;
	}
} 

// Is Skater below a ladder or at the bottom of a flight of stairs?
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

// Does the skater want to get on his board?
if(input[TRANSITION] and !lastInput[TRANSITION]) {
	scr_StateSwitch(s_FOOT_TO_SKATE);
	drawOffsetX = 0;
	return;
}

// Should the skater jump up?
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

// Save any changes to our state variables.
stateVar[0] = edgeLocation;
stateVar[1] = startPos;
stateVar[2] = standingUp;
stateVar[3] = standUpStartTime;
stateVar[4] = edgeDirection;
