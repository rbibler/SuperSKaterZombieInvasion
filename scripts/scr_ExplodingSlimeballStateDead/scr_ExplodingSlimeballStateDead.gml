// SETUP NEW STATE

if(stateNew) {
	scr_SetCurrentAnimation(deadAnim);
	myGravity = 0;
	if(ySpeed < 0) {
		ySpeed = -3;
	}
}


// MOVE AND COLLIDE

scr_MoveAndCollide();

// ANIMATE
scr_UpdateStateAnimation(currentAnimation);

// CHECK FOR STATE CHANGES

if(currentAnimation.isDone) {
	instance_destroy();
}