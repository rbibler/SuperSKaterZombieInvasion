/// This is a script that helps the skater determine if he's doing a trick or not.
/// To do a trick, the skater has to be in the air, press the Trick button, and press a direction

var trickPressed = input[TRICK];

if(trickPressed) {
	if(input[RIGHT]) {
		scr_StateSwitch(s_TRICK_FLIPTRICK);
		currentTrick = KICKFLIP;
	}
}

return;