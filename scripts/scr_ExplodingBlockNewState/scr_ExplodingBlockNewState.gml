var currentState = argument0;

switch(currentState) {
	case s_IDLE:
		sprite_index = spr_explodeBlockIdle;
	break;
	
	case s_ATTACKING:
		sprite_index = spr_explodeBlockIdle;
		image_index = 0;
	break;
	
	case s_HIT:
		sprite_index = spr_explodeBlockExploding;
	break;
	
	case s_DEAD:
		sprite_index = spr_explodeBlockDripping;
		image_index = 0;
		stateVar[0] = 0;
	break;
}