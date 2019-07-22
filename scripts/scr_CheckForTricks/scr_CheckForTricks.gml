/// This is a script that helps the skater determine if he's doing a trick or not.
/// To do a trick, the skater has to be in the air, press the Trick button, and press a direction


// Check for Kickflip: Tr -> F
var curInput = 0;
var curStep = 0;
for(var i = 0; i < inputsInQueue; i++) {
	curInput = scr_PeekBufferFromLastWrite(i);
	switch(curStep) {
		case 0:
		// When facing right, forward is right
			if(facing == 1) {
				if(curInput & INPUT_RIGHT) {
					curStep++;
				}
			} else if(facing == -1) {
				if(curInput & INPUT_LEFT) {
					curStep++;
				}
			}
		break;
		case 1:
			if(curInput & INPUT_TRICK) {
				return KICKFLIP;
			}
		break;
	}
}
return NO_TRICK;