// SETUP NEW STATE
if(stateNew) {
	scr_SetCurrentAnimation(deathAnim);
	// Push him away from player
	ySpeed = -3;
	xSpeed = 3 * (sign(x - obj_skater.x));
	
	// Not on the ground anymore
	grounded = false;
	
	// Reset this flag
	stateVar[0] = 0;
	scr_ZeroInputs();
}

// MOVE AND COLLIDE

scr_AttackEnemyMoveAI();
scr_EnemyMovement();
scr_MoveAndCollide();


// ANIMATE
scr_UpdateStateAnimation(currentAnimation);

// CHECK FOR STATE CHANGES

// If we're back on the ground, we can switch back to moving state after a pause
if(currentAnimation.isDone) {
	instance_destroy();
} else if(grounded) {
	scr_StateSwitch(s_DEAD);
}