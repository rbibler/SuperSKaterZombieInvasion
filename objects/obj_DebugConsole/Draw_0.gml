/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
if(global.gamePaused){
	var textX = scr_GetCameraX() + 100;
	var textY = scr_GetCameraY() + 100;
    draw_sprite_ext(screenshot,0,scr_GetCameraX(),scr_GetCameraY(),1,1,0,c_white,1);
    draw_text(textX, textY, "Input: " + currentInput);
}