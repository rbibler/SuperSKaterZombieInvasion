// SETUP NEW STATE... STATE
if(stateNew) {
	scr_SetCurrentAnimation(moveAnim);
}

// UPDATE MOVEMENT AND COLLISIONS

scr_PatrolMove();
scr_EnemyMovement();
scr_MoveAndCollide();

// ANIMATE

scr_UpdateAnimation(currentAnimation);

// CHECK STATE TRANSITIONS

// To Falling: When slimeball isn't grounded anymore
if(!grounded) {
	scr_StateSwitch(s_FALLING);
}

