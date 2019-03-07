var skater = instance_find(obj_skater, 0);

var dir = 0;

if((skater.input[LEFT] and !skater.input[RIGHT]) or skater.xSpeed < 0) {
	dir = 1;
} else if((skater.input[RIGHT] and !skater.input[LEFT]) or skater.xSpeed > 0) {
	dir = -1;
}

if(dir == 1) {
	input[RIGHT] = 1;
	input[LEFT] = 0;
} else if(dir == -1) {
	input[LEFT] = 1;
	input[RIGHT] = 0;
} else {
	input[RIGHT] = !input[RIGHT];
	input[LEFT] = !input[LEFT];
}