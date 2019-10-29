// SETUP NEW STATE

if(stateNew) {
	scr_SetCurrentAnimation(attackAnim);
	scr_ExplodingSlimeballSpawnProjectile();
	myGravity = 0;
	shieldValue = 0;
	instance_destroy(shieldOverlayObject);
}


// MOVE AND COLLIDE

scr_MoveAndCollide();

// ANIMATE
scr_UpdateStateAnimation(currentAnimation);

// CHECK FOR STATE CHANGES

if(currentAnimation.isDone) {
	instance_destroy();
}