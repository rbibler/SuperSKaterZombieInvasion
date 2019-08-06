var trick = argument0;

switch(trick) {
	case KICKFLIP:
		return obj_TrickController.kickflipTrickParams;
	case SHOVE_IT:
		return obj_TrickController.shoveItTrickParams;
	case IMPOSSIBLE:
		return obj_TrickController.impossibleTrickParams;
		case MCTWIST:
		return obj_TrickController.mctwistTrickParams;
	default:
		return 0;
}