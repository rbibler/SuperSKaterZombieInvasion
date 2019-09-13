inputValues[UP] = -1; // UP
inputValues[DOWN] = -1; // DOWN
inputValues[BACK] = -1; // LEFT
inputValues[FORWARD] = -1; // RIGHT
inputValues[TRICK] = -1; // TRICK

var curInput = 0;
for(var i = 0; i < inputsInQueue; i++) {
	curInput = scr_PeekBufferFromLastWrite(i);
	if(scr_CheckDirectionInput(UP, curInput, 0, false)) {
		inputValues[UP] = i;
	}
	if(scr_CheckDirectionInput(DOWN, curInput, 0, false)) {
		inputValues[DOWN ] = i;
	}
	if(scr_CheckDirectionInput(BACK, curInput, 0, false)) {
		inputValues[BACK] = i;
	}
	if(scr_CheckDirectionInput(FORWARD, curInput, 0, false)) {
		inputValues[FORWARD] = i;
	}
	if(scr_CheckInputPressed(curInput, INPUT_TRICK)) {
		inputValues[TRICK] = i;
	}
}

return inputValues;