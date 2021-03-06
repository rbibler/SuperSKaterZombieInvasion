/// @description Insert description here
// You can write your code in this editor

event_inherited();
// Clear the vertical movement flag to ensure we don't update the skater's y position more than once
if(newRoom) {
	scr_NewRoom();
}
frameTimer++;
cooldown--;
shouldAnimate = true;
if(global.debug) {
	show_debug_message("");
	show_debug_message("Frame: " + string(frameTimer));
}

mask_index = sprite_index;

verticalMovementRun = false;

jumpInputBuffer--;
trickPressedTimer--;

doubleJumpMeter += doubleJumpIncrement;
if(doubleJumpMeter >= 100) {
	doubleJumpMeter = 100;
}
show_debug_message(doubleJumpMeter);
show_debug_message(doubleJumpIncrement);

// Get the user's input. 
scr_SkaterInput();
scr_CheckForWeaponSwitch();
if(facingEnabled) {
	if(trickPressedTimer > 0 and !grounded) {
		if(xSpeed > 0) {
			facing = 1;
		} else if xSpeed < 0 {
			facing = -1;
		}
	} else {
		if(input[RIGHT]) {
			if(!input[LEFT] and !lastInput[LEFT]) {
				facing = 1;
			}
		} else if(input[LEFT]) {
			facing = -1;
		}
	}
}

if(input[DOWN]) {
	railGrindButtonPressTimer++;
} else {
	railGrindButtonPressTimer = 0;
}

if(!input[SHOOT]) {
	shootCounter = 0;
}

// Impart gravity and limit the skater's terminal velocity

ySpeed += myGravity;
if(ySpeed >= maxYSpeed) {
	ySpeed = maxYSpeed;
}

scr_GeneralCheckGrounded();
framesSinceGround++;
if(grounded) {
	framesSinceGround = 0;
}
if(input[JUMP] and !lastInput[JUMP] and !grounded) {
	jumpInputBuffer = 10;
}

if(input[TRICK]) {
	trickPressedTimer = 10;
}

//if(grounded) {
	//scr_ClearInputQueue();
//}

if(global.debug) {
	show_debug_message("    State: " + string(stateID));
}

horizontalCollisionResponseScript = scr_BasicHorizCollisionResponse;

// The real fun happens in the state machine
scr_StateExecute();
if(scr_AmIVulnerable()) {
	var enemyThatMayHaveHitMe = scr_HaveIBeenHIt();
	if(enemyThatMayHaveHitMe != noone) {
		scr_SkaterHit(enemyThatMayHaveHitMe, 0);
	}
}




if(shouldAnimate) {
	scr_UpdateStateAnimation(currentAnimation);
}
isShooting = false;


// We don't want the camera to follow us in certain places, so check for them!
if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_cameraFollowTrigger, false, false)) {
	camera_set_view_speed(view_camera[0], -1, 0);
} else {
	camera_set_view_speed(view_camera[0], -1, -1);
}

