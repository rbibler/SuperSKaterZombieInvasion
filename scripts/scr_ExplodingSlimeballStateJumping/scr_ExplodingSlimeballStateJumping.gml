// SETUP NEW STATE

if(stateNew) {
	scr_SetCurrentAnimation(jumpAnim);
	ySpeed = -7;
	grounded = false;
}


// MOVE AND COLLIDE

scr_MoveAndCollide();

// ANIMATE
scr_UpdateStateAnimation(currentAnimation);

// CHECK FOR STATE CHANGES

if(ySpeed >= 0) {
	scr_StateSwitch(s_ATTACKING);
}