// Check for Impossible: TR -> U -> F
var curInput = 0;
var lastInput = 0;
var curStep = 0;
for(var i = 0; i < inputsInQueue; i++) {
	curInput = scr_PeekBufferFromLastWrite(i);
	if(i < inputsInQueue - 1) {
		lastInput = scr_PeekBufferFromLastWrite(i + 1);
	}
	switch(curStep) {
		case 0:
		// When facing right, forward is right
			if(facing == 1) {
				if(scr_CheckInputPressed(curInput, INPUT_RIGHT) and !scr_CheckInputPressed(lastInput, INPUT_RIGHT)) {
					curStep++;
					show_debug_message("Hit right in frame: " + string(frameTimer));
				}
			} else if(facing == -1) {
				if(scr_CheckInputPressed(curInput, INPUT_LEFT) and !scr_CheckInputPressed(lastInput, INPUT_LEFT)) {
					curStep++;
				}
			}
		break;
		case 1:
			if(scr_CheckInputPressed(curInput, INPUT_UP) and !scr_CheckInputPressed(lastInput, INPUT_UP)) {
					curStep++;
					show_debug_message("Hit up in frame: " + string(frameTimer));
			}
		break;
		case 2:
			if(curInput & INPUT_TRICK) {
				show_debug_message("Hit up trick frame: " + string(frameTimer));
				return IMPOSSIBLE;
			}
		break;
	}
}
return NO_TRICK;