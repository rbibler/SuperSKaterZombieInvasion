// SETUP NEW STATE
if(stateNew) {
	// Can't move, we're dying
	scr_StopXMotion();
	scr_StopYMotion();
	scr_ZeroInputs();
}

// MOVE AND COLLIDE

scr_AttackEnemyMoveAI();
scr_EnemyMovement();
scr_MoveAndCollide();


// ANIMATE
scr_UpdateStateAnimation(currentAnimation);

// CHECK FOR STATE CHANGES
if(currentAnimation.isDone) {
	instance_destroy();
}