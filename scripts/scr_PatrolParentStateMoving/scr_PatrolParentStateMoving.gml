// SETUP NEW STATE... STATE
if(stateNew) {
	scr_SetCurrentAnimation(movingAnim);
}

// UPDATE MOVEMENT AND COLLISIONS

scr_PatrolMove();
scr_EnemyMovement();
scr_MoveAndCollide();

// ANIMATE

scr_UpdateStateAnimation(currentAnimation);

// CHECK STATE TRANSITIONS

// To Falling: When slimeball isn't grounded anymore
if(!grounded) {
	scr_StateSwitch(s_FALLING);
}

