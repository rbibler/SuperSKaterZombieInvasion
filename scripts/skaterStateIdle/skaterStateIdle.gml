if(stateNew) {
	sprite_index = spr_SkaterIdle;
	image_index = 0;
	jump = 0;
}

if(input[LEFT] or input[RIGHT]) {
	stateSwitch("SKATING");
} else {
	show_debug_message("NO INPUT!");
}

// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if(jump == 0 && !lastInput[JUMP]) {
		stateSwitch("JUMPING");
	}
} 

skaterVerticalCollisionCheck();

if(!grounded) {
	stateSwitch("FALLING");
}

