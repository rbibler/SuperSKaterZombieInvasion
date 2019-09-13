/// This is a script that helps the skater determine which trick he's doing.

switch(currentTrick) {
	case KICKFLIP:
	show_debug_message("KICKFLIP");
	return kickflipAnim;
	case SHOVE_IT:
	show_debug_message("SHOVE IT");
	return shoveItAnim;
	case IMPOSSIBLE:
	show_debug_message("IMPOSSIBLE");
	return impossibleAnim;
	case MCTWIST:
	show_debug_message("MCTWIST");
	return mctwistAnim;
	default:
	return jumpAnim;
}