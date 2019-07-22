// Check for Shove it: Tr -> D
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
		if(scr_CheckInputPressed(curInput, INPUT_DOWN) and !scr_CheckInputPressed(lastInput, INPUT_DOWN)) {
					curStep++;
		}
		break;
		case 1:
			if(curInput & INPUT_TRICK) {
				return SHOVE_IT;
			}
		break;
	}
}
return NO_TRICK;