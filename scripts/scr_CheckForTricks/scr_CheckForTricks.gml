/// This is a script that helps the skater determine if he's doing a trick or not.
/// To do a trick, the skater has to be in the air, press the Trick button, and press a direction


var trick = scr_CheckForImpossible();
if(trick == NO_TRICK) {
	trick = scr_CheckForKickflip();
	if(trick == NO_TRICK) {
		trick = scr_CheckForShoveIt();
	}
}

return trick;