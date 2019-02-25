/// This is a script that helps the skater determine what direction he's headed.

if(input[RIGHT] and !input[LEFT]) {
	return 1;
}

if(input[LEFT] and !input[RIGHT]) {
	return -1;
}

if( (!input[LEFT] and !input[RIGHT])) {
	return 0;
}

// A bit of a hack. If we have both right and left input at the same time, need to indicate that
// but it should be the same as no input. 
if((input[LEFT] and input[RIGHT])) {
	return 0.00000001;
}