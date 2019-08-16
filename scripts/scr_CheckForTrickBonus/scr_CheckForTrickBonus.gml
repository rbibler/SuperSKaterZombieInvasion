var currentAnimFrame = image_index;
var framesTilBonus = scr_GetTrickParam(currentTrick, TRICK_FRAMES_TIL_BONUS_INDEX);

if(currentAnimFrame <= framesTilBonus) {
	return false;
}


switch(currentTrick) {
	case SHOVE_IT:
		canJump = -20;
		jump = 0;
	break;
	case KICKFLIP:
		scr_SpawnKickflipBlast();
	break;
	case IMPOSSIBLE:
		scr_SpawnImpossibleTrickBlast();
		break;
	case MCTWIST:
		scr_SpawnMctwistBlast(x, y);
	break;
	
}
return true;
