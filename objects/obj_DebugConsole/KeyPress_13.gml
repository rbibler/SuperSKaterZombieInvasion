/// @description Insert description here
// You can write your code in this editor

if(global.gamePaused) {
	scr_ProcessDebugConsoleInput(currentInput);
	currentInput = "";
	state = DC_IDLE;
	
	global.gamePaused = false;
	
	visible = false;
	if(sprite_exists(screenshot)){
		sprite_delete(screenshot);
	}
	instance_activate_all();
}


