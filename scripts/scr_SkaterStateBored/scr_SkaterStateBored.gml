#macro BORED		0
#macro LOOK_BACK	1
#macro LOOK_UP		2

var substate = stateVar[0];
var lastSubstateChange = stateVar[1];
var lastFrameChange = stateVar[2];

if(stateNew) {
	sprite_index = spr_SkaterIdleBored;
	lastSubstateChange = 0;
	lastFrameChange = 0;
	substate = BORED;
}
shouldAnimate = false;

switch(substate) {
	case BORED:
		if(stateTimer - lastFrameChange >= (.75 * room_speed)) {
			image_index = (image_index + 1) mod 2;
			lastFrameChange = stateTimer;
		}
		if(stateTimer - lastSubstateChange >= (6 * room_speed)) {
			if(scr_Chance(75)) {
				substate = LOOK_BACK;
				image_index = 2;
			} else {
				substate = LOOK_UP;
				image_index = 3;
			}
			lastSubstateChange = stateTimer;
		}
	break;
	
	case LOOK_BACK:
		if(stateTimer - lastSubstateChange >= (2 * room_speed)) {
			substate = BORED;
			image_index = 0;
			lastFrameChange = stateTimer;
			lastSubstateChange = stateTimer;
		}
	break;
	
	case LOOK_UP:
		if(stateTimer - lastSubstateChange >= (2 * room_speed)) {
			substate = BORED;
			image_index = 0;
			lastFrameChange = stateTimer;
			lastSubstateChange = stateTimer;
		}
	break;
}

// Crouch if the user presses down
if(input[DOWN] and state != climbState) {
	scr_StateSwitch(s_CROUCHING);
} 

// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();
scr_MoveAndCollide();
scr_SkaterLadderCollisions();
// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and grounded and state != rollState) {
	scr_StateSwitch(s_ROLLING);
}

// Switch to Skating if horizontal movement. Can only be idle if grounded, so no need to check ground flag
if((input[LEFT] and !input[RIGHT]) or (input[RIGHT] and !input[LEFT])) {
	scr_StateSwitch(s_MOVING);
} 

if(input[TRANSITION] and !lastInput[TRANSITION]) {
	scr_StateSwitch(s_SKATE_TO_FOOT);
	return;
}

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_JUMPING);
} else {
	// If you aren't on the ground anymore, you're falling
	if(!grounded) {
		scr_StateSwitch(s_FALLING);
	}
}
scr_CheckForAttack();
stateVar[0] = substate;
stateVar[1] = lastSubstateChange;
stateVar[2] = lastFrameChange;