/// @description Insert description here
// You can write your code in this editor
if(!global.gamePaused) {
	scr_PauseGame();
} else if(state != DEBUG_CONSOLE_MODE) {
	scr_UnpauseGame();
}
