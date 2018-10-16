/// Checks for user input and stores in the skater's input array.

// Check to see if a gamepad is connected and use that

if(state == knockedBackState or ignoreInput == true) {
	input[LEFT] = 0;
	input[RIGHT] = 0;
	return;
}
if(obj_persistent.gamepad != -1) {
	with(obj_persistent) {
		other.input[LEFT] = gamepad_button_check(gamepad, gp_padl);
		other.input[RIGHT] = gamepad_button_check(gamepad, gp_padr);
		other.input[UP] = gamepad_button_check(gamepad, gp_padu);
		other.input[DOWN] = gamepad_button_check(gamepad, gp_padd);
		other.input[SELECT] = gamepad_button_check(gamepad, gp_select);
		other.input[START] = gamepad_button_check(gamepad, gp_start);
		other.input[SHOOT] = gamepad_button_check(gamepad, gp_face3);
		other.input[JUMP] = gamepad_button_check(gamepad, gp_face1);
	}
// If no gamepad, use the keyboard
} else {
	input[LEFT] = keyboard_check(vk_left);
	input[RIGHT] = keyboard_check(vk_right);
	input[UP] = keyboard_check(vk_up);
	input[DOWN] = keyboard_check(vk_down);
	input[SELECT]= keyboard_check(vk_space);
	input[START] = keyboard_check(vk_enter);
	input[SHOOT] = keyboard_check(ord("A"));
	input[JUMP] = keyboard_check(ord("S"));
	
}

if(!input[SHOOT] and lastInput[SHOOT]) {
	inputDownTime[SHOOT] = frameTimer - inputPressTime[SHOOT];
}

if(input[SHOOT] and !lastInput[SHOOT]) {
	inputPressTime[SHOOT] = frameTimer;
}