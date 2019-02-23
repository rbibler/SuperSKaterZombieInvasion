if(input[RIGHT] and !input[LEFT]) {
	return 1;
}

if(input[LEFT] and !input[RIGHT]) {
	return -1;
}

if( (!input[LEFT] and !input[RIGHT])) {
	return 0;
}

if((input[LEFT] and input[RIGHT])) {
	return 0.00000001;
}