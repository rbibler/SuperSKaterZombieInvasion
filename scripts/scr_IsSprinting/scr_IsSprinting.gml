/// This is a script that helps the skater determine if he's sprinting or not

var isSprinting = false;

if(input[SHOOT]) {
	if((input[RIGHT] and !input[LEFT]) or (input[LEFT] and !input[RIGHT])) {
		isSprinting = true;
	}
}

return isSprinting;