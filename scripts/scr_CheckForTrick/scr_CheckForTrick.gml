/// This is a script that helps the skater determine if he's doing a trick or not.
/// To do a trick, the skater has to be in the air, press the Trick button, and press a direction

var trickPressed = trickPressedTimer > 0;

if(trickPressed) {
	if(input[RIGHT] and !lastInput[RIGHT]) {
		scr_StateSwitch(s_TRICK_FLIPTRICK);
		currentTrick = KICKFLIP;
	}
}

return;