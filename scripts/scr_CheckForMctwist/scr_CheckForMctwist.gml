// Check for Impossible: TR -> U -> F -> D -> B
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
			if(scr_CheckDirectionInput(BACK, curInput, lastInput, true)) {
				curStep++;
				show_debug_message("BAKC");
			}
		break;
		case 1:
			if(scr_CheckDirectionInput(DOWN, curInput, lastInput, true)) {
				curStep++;
				show_debug_message("DOWN");
			}
		break;
		case 8:
		if(scr_CheckDirectionInput(FORWARD, curInput, lastInput, true)) {
				curStep++;
				show_debug_message("FORWARD");
			}
		break;
		case 9:
		if(scr_CheckDirectionInput(UP, curInput, lastInput, true)) {
			show_debug_message("UP");
				curStep++;
			}
		break;
		case 2:
			if(curInput & INPUT_TRICK) {
				show_debug_message("Hit up trick frame: " + string(frameTimer));
				return MCTWIST;
			}
		break;
	}
}
return NO_TRICK;