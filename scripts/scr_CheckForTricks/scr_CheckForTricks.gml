/// This is a script that helps the skater determine if he's doing a trick or not.
/// To do a trick, the skater has to be in the air, press the Trick button, and press a direction


if(scr_CheckForMctwist()) {
	return MCTWIST;
}

if(scr_CheckForImpossible()) {
	return IMPOSSIBLE;
}

if(scr_CheckForKickflip()) {
	return KICKFLIP;
}

if(scr_CheckForShoveIt()) {
	return SHOVE_IT;
}