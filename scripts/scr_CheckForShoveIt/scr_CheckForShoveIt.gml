/*var inputValues = scr_ProcessInputQueue();
var trick = inputValues[TRICK];
var down = inputValues[DOWN];
var forward = inputValues[FORWARD];


if(trick != -1) {
	if(forward != - 1 and down != -1) {
		if(down >= forward) {
			return SHOVE_IT;
		}
	}
}
return NO_TRICK;
*/

var curInput = 0;
var previousInput = 0;

var downPressed = -1;
var upPressed = -1;
var backPressed = -1;
var forwardPressed = -1;

for(var i = 0; i < inputsInQueue - 1; i++) {
	curInput = scr_PeekBufferFromLastWrite(i);
	previousInput = scr_PeekBufferFromLastWrite(i + i);
	if(scr_CheckDirectionInput(UP, curInput, previousInput, true)) {
		upPressed = i;
	}

	if(scr_CheckDirectionInput(DOWN, curInput, previousInput, true)) {
		downPressed = i;
	}
	if(scr_CheckDirectionInput(FORWARD, curInput, previousInput, true)) {
		forwardPressed = i;
	}
	if(scr_CheckDirectionInput(BACK, curInput, previousInput, true)) {
		backPressed = i;
	}
	if(scr_CheckInputPressed(curInput, INPUT_TRICK) and  !scr_CheckInputPressed(previousInput, INPUT_TRICK)) {
		if(backPressed or upPressed) {
			return false;
		}
		if(downPressed < 0 or forwardPressed < 0) {
			return false;
		}
		if(downPressed > forwardPressed) {
			return true;
		}
	}
}

return false;

