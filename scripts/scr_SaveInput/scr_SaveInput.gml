/// Stores the user's input for the current frame into an array so we'll have a record for next frame
/// No arguments

for(var i = 0; i < 10; i++) {
	if(input[i]) {
		inputDownTime[i]++;
	} else {
		inputDownTime[i] = 0;
	}
	lastInput[i] = input[i];
}