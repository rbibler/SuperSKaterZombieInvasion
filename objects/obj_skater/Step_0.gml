/// @description Insert description here
// You can write your code in this editor


// Clear the vertical movement flag to ensure we don't update the skater's y position more than once
if(newRoom) {
	scr_NewRoom();
}
shouldAnimate = true;

verticalMovementRun = false;
frameTimer++;
jumpInputBuffer--;

if(isImmune) {
	if(frameTimer - immuneStart >= 60) {
		isImmune = false;
	}
}
// Get the user's input. 
scr_SkaterInput();
if(stateName != s_STAIRS) {
	if(input[RIGHT]) {
		if(!input[LEFT] and !lastInput[LEFT]) {
			facing = 1;
		}
	} else if(input[LEFT]) {
		facing = -1;
	}
}


// Impart gravity and limit the skater's terminal velocity
ySpeed += myGravity;
if(ySpeed >= maxYSpeed) {
	ySpeed = maxYSpeed;
}

scr_GeneralCheckGrounded();
if(input[JUMP] and !lastInput[JUMP] and !grounded) {
	jumpInputBuffer = 10;
}

// The real fun happens in the state machine
scr_StateExecute();
if(shouldAnimate) {
	scr_UpdateStateAnimation(currentAnimation);
}

// We don't want the camera to follow us in certain places, so check for them!
if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_cameraFollowTrigger, false, false)) {
	camera_set_view_speed(view_camera[0], -1, 0);
} else {
	camera_set_view_speed(view_camera[0], -1, -1);
}

