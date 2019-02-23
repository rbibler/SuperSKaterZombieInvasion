var directionChanged = false;

if(!lastInput[LEFT] and !lastInput[RIGHT]) {
	if(input[RIGHT] or input[LEFT]) {
		directionChanged = true;
	} 
}

if(input[LEFT] and lastInput[RIGHT] and !lastInput[LEFT]) {
	directionChanged = true;
}

if(input[RIGHT] and lastInput[LEFT] and !lastInput[RIGHT]) {
	directionChanged = true;
}

return directionChanged;