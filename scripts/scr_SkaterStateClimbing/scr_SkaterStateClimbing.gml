if(stateNew) {
	scr_UpdateSkaterAnimation(climbAnim);
	x = scr_FindMiddleOfLadder();
}

if(!scr_CheckOnLadder()) {
	if(climbOut) {
		scr_StateSwitch(s_CLIMBOUT);
	} else if(ladderBottom and input[DOWN]) {
		scr_StateSwitch(s_ON_FOOT_IDLE);
	}
} else {
	if(input[UP] and !input[DOWN]) {
		y -= climbAmount;
		shouldAnimate = true;
	} else if(input[DOWN] and !input[UP]) {
		
		y += climbAmount;
		shouldAnimate = true;
	} else {
		shouldAnimate = false;
	}
}