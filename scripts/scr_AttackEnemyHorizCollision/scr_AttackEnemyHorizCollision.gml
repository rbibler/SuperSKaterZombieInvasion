if(input[RIGHT]) {
	input[RIGHT] = 0;
	input[LEFT] = 1;
	x -= 1;
} else {
	input[RIGHT] = 1;
	input[LEFT] = 0;
	x += 1;
}