if(!on) {
	on = true;
	image_index = 1;
	script_execute(controlBlockActivateScript);
	scr_SetSolid(false);
	if(springBack) {
		if(state == 0) {
			springBackStartTime = frameTimer;
			state = 1;
		}
	}
}
