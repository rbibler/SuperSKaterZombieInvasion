var trick = scr_CheckForTricks();
if(trick != NO_TRICK) {
	var howMuchJuice = scr_GetTrickParam(trick, TRICK_JUICE);
	if(global.juice >= howMuchJuice) {
		scr_UpdateDiamondCount(howMuchJuice);
		currentTrick = trick;
		scr_StateSwitch(s_TRICK_FLIPTRICK);
	}
	
}
