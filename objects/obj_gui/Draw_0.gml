/// @description Insert description here
// You can write your code in this editor
var xPos = camera_get_view_x(view_camera[0]);
var yPos = camera_get_view_y(view_camera[0]);

draw_sprite(spr_black_bar, 0, xPos, yPos);
draw_sprite(spr_hud_left, 0, xPos, yPos);
scr_DisplayHealthBar(xPos, yPos);
xPos = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
draw_sprite(spr_hud_right, 0, xPos, yPos);
scr_DisplayDiamondCount(xPos, yPos);
scr_DisplayLives(xPos, yPos);
scr_DisplayWeapons(xPos, yPos);
