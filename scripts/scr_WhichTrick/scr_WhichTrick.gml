/// This is a script that helps the skater determine which trick he's doing.

switch(currentTrick) {
	case KICKFLIP:
	return kickflipAnim;
	case SHOVE_IT:
	return shoveItAnim;
	case IMPOSSIBLE:
	return impossibleAnim;
	case MCTWIST:
	return mctwistAnim;
	default:
	return jumpAnim;
}