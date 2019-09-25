var curInput = 0;
var previousInput = 0;

var downPressed = -1;
var upPressed = -1;
var backPressed = -1;
var forwardPressed = -1;

var inputsInQueueMinusOne = inputsInQueue - 1;
var numInputsToCheck = stateTimer < inputsInQueueMinusOne ? stateTimer : inputsInQueueMinusOne;


for(var i = 0; i < numInputsToCheck; i++) {
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
		if(downPressed < 0 or backPressed < 0 or forwardPressed or upPressed) {
			return false;
		}
		if(downPressed > backPressed ) {
			return true;
		}
	}
}

return false;

