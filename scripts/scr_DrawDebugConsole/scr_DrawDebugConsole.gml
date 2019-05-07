/// @description Insert description here
// You can write your code in this editor
with(obj_DebugConsole) {
	draw_set_halign(fa_left);
	if(global.gamePaused){
		var textX = scr_GetCameraX() + 100;
		var textY = scr_GetCameraY() + 100;
	    draw_text(textX, textY, "Input: " + currentInput);
	}
}