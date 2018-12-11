/// @description Insert description here
// You can write your code in this editor
if(state == 1) {
	if(frameTimer - springBackStartTime >= springBackTime) {
		state = 0;
		scr_SetSolid(true);
		image_index = 0;
		alarm[1] = 5;
	}
}
frameTimer++;