// SETUP NEW STATE

if(stateNew) {
	scr_SetCurrentAnimation(menaceAnim);
	shieldValue = 0;
	instance_destroy(shieldOverlayObject);
}


// MOVE AND COLLIDE

scr_MoveAndCollide();

// ANIMATE

scr_UpdateStateAnimation(currentAnimation);
if(currentAnimation.currentIndex >= 3) {
	isImmune = false;
}

// CHECK FOR STATE CHANGES

if(currentAnimation.isDone) {
	scr_StateSwitch(s_JUMPING);
}