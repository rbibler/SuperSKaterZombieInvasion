/// This is a script that helps the skater determine which trick he's doing.

switch(currentTrick) {
	case KICKFLIP:
	return kickflipAnim;
	default:
	return jumpAnim;
}