// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
if(input[JUMP]) {
	if(jump == 0 and !lastInput[JUMP] and canJump < jumpFramesAllowance) {
		scr_StateSwitch(s_JUMPING);
	}
}  
if(grounded and jumpInputBuffer > 0) {
	scr_StateSwitch(s_JUMPING);
}