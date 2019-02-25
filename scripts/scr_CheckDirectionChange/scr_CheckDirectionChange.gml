/// This is a script that helps the skater determine if he's changed direction since last step.
/// I don't think this is being used. 

var directionChanged = false;

// If no input last step, and input this step, we changed direction.
if(!lastInput[LEFT] and !lastInput[RIGHT]) {
	if(input[RIGHT] or input[LEFT]) {
		directionChanged = true;
	} 
}

// If last step we went right, and now we're going left
if(input[LEFT] and lastInput[RIGHT] and !lastInput[LEFT]) {
	directionChanged = true;
}

// If last step we went left, and now we're going right. 
if(input[RIGHT] and lastInput[LEFT] and !lastInput[RIGHT]) {
	directionChanged = true;
}

return directionChanged;