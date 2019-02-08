/// This is a script that helps the skater determine if a state is a skate state
/// @arg stateToCheck

var stateToCheck = argument0;

switch(stateToCheck) {
	case s_IDLE:		
	case s_BORED:			
	case s_MOVING:			
	case s_CROUCHING:		
	case s_JUMPING:	
	case s_GRINDING:		
	case s_HIT:	
	case s_FALLING:
	case s_ROLLING:		
	case s_BOUNCING:
	case s_JUMP_SHIELD:
		return true;
	default:
		return false;
}