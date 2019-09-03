var curInput = 0;
var previousInput = 0;

var downPressed = -1;
var upPressed = -1;
var backPressed = -1;
var forwardPressed = -1;
// TODO Add bit to input queue to determine if grounded or not when input pressed. 
for(var i = 0; i < inputsInQueue - 1; i++) {
	curInput = scr_PeekBufferFromLastWrite(i);
	previousInput = scr_PeekBufferFromLastWrite(i + 1);
	if(scr_CheckDirectionInput(UP, curInput, previousInput, true)) {
		upPressed = i;
	}

	if(scr_CheckDirectionInput(DOWN, curInput, previousInput, true)) {
		downPressed = i;
	}
	if(scr_CheckDirectionInput(FORWARD, curInput, previousInput, true)) {
		forwardPressed = i;
		show_debug_message("I hve pressed forward on: " + string(i));
	}
	if(scr_CheckDirectionInput(BACK, curInput, previousInput, true)) {
		backPressed = i;
	}
	if(scr_CheckInputPressed(curInput, INPUT_TRICK) and !scr_CheckInputPressed(previousInput, INPUT_TRICK)) {
		if(backPressed or upPressed or downPressed) {
			return false;
		}
		// Have to hit trick first, then forward. So they can't happen simultaneously. 
		if(forwardPressed > 0 and i > 0) {
			show_debug_message("Forward pressed: " + string(forwardPressed));
			return true;
		}
	}
}

return false;

