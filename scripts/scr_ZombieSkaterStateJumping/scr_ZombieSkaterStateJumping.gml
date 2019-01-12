// SETUP NEW STATE
if(stateNew) {
	scr_SetCurrentAnimation(jumpAnim);
	ySpeed += jumpSpeed;
	grounded = false;
}

// MOVE AND COLLIDE

scr_AttackEnemyMoveAI();
scr_EnemyMovement();
scr_MoveAndCollide();


// ANIMATE
scr_UpdateStateAnimation(currentAnimation);

// CHECK FOR STATE CHANGES

if(grounded) {
	scr_StateSwitch(s_MOVING);
}