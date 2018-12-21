// SETUP NEW STATE

if(stateNew) {
	scr_SetCurrentAnimation(hitAnim);
}


// MOVE AND COLLIDE

scr_MoveAndCollide();

// ANIMATE
scr_UpdateStateAnimation(currentAnimation);

// CHECK FOR STATE CHANGES