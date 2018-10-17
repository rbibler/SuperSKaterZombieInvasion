/// This is a script that helps the Exploding Slimeball decide what to do when he switches to a new state
/// @arg currentState

var currentState = argument0;

switch(currentState) {
	case s_IDLE:
		scr_SetCurrentAnimation(idleAnim);
	break;
	
	case s_ATTACKING:
		scr_SetCurrentAnimation(attackAnim);
	break;
	
	case s_JUMPING:
		scr_SetCurrentAnimation(jumpAnim);
	break;
	
	case s_DEFENDING:
		scr_SetCurrentAnimation(defendAnim);
	break;
	
	case s_HIT:
		scr_SetCurrentAnimation(hitAnim);
	break;
	
	case s_DEAD:
		scr_SetCurrentAnimation(deadAnim);
	break;
}