if(input[RIGHT]) {
	input[RIGHT] = 0;
	input[LEFT] = 1;
} else {
	input[RIGHT] = 1;
	input[LEFT] = 0;
}

show_debug_message("Zombie skater horizontal collision");