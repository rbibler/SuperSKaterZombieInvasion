/// @description Insert description here
// You can write your code in this editor
if(global.gamePaused and sprite_exists(screenshot)) {
	draw_sprite_ext(screenshot,0,scr_GetCameraX(),scr_GetCameraY(),1,1,0,c_white,1);
	scr_DrawDebugConsole();
}