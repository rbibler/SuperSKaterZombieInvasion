if(instance_exists(obj_Gamepad)) {
	var gamepad = instance_find(obj_Gamepad, 0).gamepad;
	if(gamepad == -1) {
		return;
	}
	input[LEFT] = gamepad_button_check(gamepad, gp_padl);
	input[RIGHT] = gamepad_button_check(gamepad, gp_padr);
	input[UP] = gamepad_button_check(gamepad, gp_padu);
	input[DOWN] = gamepad_button_check(gamepad, gp_padd);
	input[SELECT] = gamepad_button_check(gamepad, gp_select);
	input[START] = gamepad_button_check(gamepad, gp_start);
	input[SHOOT] = gamepad_button_check(gamepad, gp_face3);
	input[JUMP] = gamepad_button_check(gamepad, gp_face1);
	input[TRANSITION] = gamepad_button_check(gamepad, gp_face4);
	input[WEAPON_SWITCH] = gamepad_button_check(gamepad, gp_face2);
}