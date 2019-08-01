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
			if(scr_CheckDirectionInput(FORWARD, curInput, lastInput, true)) {
				curStep++;
			}
		break;
		case 1:
			if(scr_CheckDirectionInput(UP, curInput, lastInput, true)) {
				curStep++;
			}
		break;
		case 2:
			if(curInput & INPUT_TRICK) {
				return IMPOSSIBLE;
			}
		break;
	}
}
return NO_TRICK;