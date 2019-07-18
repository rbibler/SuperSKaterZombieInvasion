/// Stores the user's input for the current frame into an array so we'll have a record for next frame
/// No arguments
var numberOfInputs = array_length_1d(input);
for(var i = 0; i < numberOfInputs; i++) {
	if(input[i]) {
		inputDownTime[i]++;
	} else {
		inputDownTime[i] = 0;
	}
	lastInput[i] = input[i];
}