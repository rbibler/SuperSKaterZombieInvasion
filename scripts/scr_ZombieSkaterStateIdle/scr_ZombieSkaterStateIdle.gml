// SETUP NEW STATE
if(stateNew) {
	scr_SetCurrentAnimation(moveAnim);
	stateVar[0] = random_range(60 * 1, 60 * 3); 
	stateVar[1] = 0;
	stateVar[2] = false;
	scr_StopXMotion();
}

// MOVE AND COLLIDE



// ANIMATE
scr_UpdateStateAnimation(currentAnimation);

// CHECK FOR STATE CHANGES

var dist = abs(x - obj_skater.x);
active = dist <= activationRange;
	
if(grounded and active) {
	input[initialDirection] = true;
	scr_StateSwitch(s_MOVING);
}