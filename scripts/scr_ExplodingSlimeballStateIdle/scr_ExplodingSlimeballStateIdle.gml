// SETUP NEW STATE

if(stateNew) {
	scr_SetCurrentAnimation(idleAnim);
}


// MOVE AND COLLIDE

scr_MoveAndCollide();

// ANIMATE
scr_UpdateStateAnimation(currentAnimation);
with(shieldOverlayObject) {
	scr_UpdateStateAnimation(currentAnimation);
}

