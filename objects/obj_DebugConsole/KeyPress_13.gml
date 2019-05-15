/// @description Insert description here
// You can write your code in this editor

if(global.gamePaused) {
	scr_ProcessDebugConsoleInput(currentInput);
	currentInput = "";
	state = DC_IDLE;
	scr_UnpauseGame();
}


