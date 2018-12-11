/// This is a script that helps the Exploding Slimeball decide what to do when he switches to a new state
/// @arg currentState

var currentState = argument0;

switch(currentState) {
	case s_IDLE:
		scr_SetCurrentAnimation(idleAnim);
	break;
	
	case s_ATTACKING:
		scr_SetCurrentAnimation(attackAnim);
		scr_ExplodingSlimeballSpawnProjectile();
		myGravity = 0;
	break;
	
	case s_JUMPING:
		scr_SetCurrentAnimation(jumpAnim);
		ySpeed = -7;
		grounded = false;
	break;
	
	case s_MENACING:
		scr_SetCurrentAnimation(menaceAnim);
	break;
	
	case s_HIT:
		scr_SetCurrentAnimation(hitAnim);
	break;
	
	case s_DEAD:
		scr_SetCurrentAnimation(deadAnim);
		myGravity = 0;
		if(ySpeed < 0) {
			ySpeed = -3;
		}
	break;
}