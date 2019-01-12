/// This is a script that checks if the Skater is trying to swing his board, and then if so, starts the swing

// Check if we should fire a weapon
if(input[SHOOT] and !lastInput[SHOOT] and canShoot) {
	canShoot = false;
	show_debug_message("CANNOT SHOOT!");
	scr_StateSwitch(s_BOARD_SWING);
	//scr_StopXMotion();
}
