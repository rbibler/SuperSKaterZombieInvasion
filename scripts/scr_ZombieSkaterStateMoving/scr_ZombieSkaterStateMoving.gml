// SETUP NEW STATE
if(stateNew) {
	scr_SetCurrentAnimation(moveAnim);
}

// MOVE AND COLLIDE

scr_AttackEnemyMoveAI();
scr_EnemyMovement();
scr_MoveAndCollide();

// ANIMATE
scr_UpdateStateAnimation(currentAnimation);

// CHECK FOR STATE CHANGES

scr_ZombieSkaterObstacleAvoidance();