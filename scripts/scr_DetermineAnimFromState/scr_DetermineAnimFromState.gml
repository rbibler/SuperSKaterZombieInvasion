/// This is a script that helps the skater determine which animation he should use based on his state

switch(stateName) {
	case s_IDLE:
		scr_SetCurrentAnimation(idleAnim);
	break;
	case s_MOVING:
	case s_ROLLING:
		scr_SetCurrentAnimation(skateAnim);
	break;
	case s_JUMPING:
	case s_FALLING:
	case s_BOUNCING:
	case s_FLOATING:
		scr_SetCurrentAnimation(jumpAnim);
	break;
	case s_CROUCHING:
		scr_SetCurrentAnimation(crouchAnim);
	break;
	default:
		scr_SetCurrentAnimation(idleAnim);
	break;
}