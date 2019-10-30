// SETUP NEW STATE

if(stateNew) {
	scr_SetCurrentAnimation(deadAnim);
	
}


// MOVE AND COLLIDE

scr_MoveAndCollide();

// ANIMATE
scr_UpdateStateAnimation(currentAnimation);

// CHECK FOR STATE CHANGES

if(currentAnimation.isDone) {
	instance_destroy();
}