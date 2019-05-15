/// Checks for user input and stores in the skater's input array.

// Check to see if a gamepad is connected and use that

if(state == knockedBackState or ignoreInput == true) {
	input[LEFT] = 0;
	input[RIGHT] = 0;
	return;
}

scr_CheckKeyboardInput();
scr_CheckGamepadInput();


if(!input[SHOOT] and lastInput[SHOOT]) {
	inputDownTime[SHOOT] = frameTimer - inputPressTime[SHOOT];
}

if(input[SHOOT] and !lastInput[SHOOT]) {
	inputPressTime[SHOOT] = frameTimer;
}

//input[RIGHT] = 1;