/// @description Insert description here
// You can write your code in this editor
var xPos = camera_get_view_x(view_camera[0]);
var yPos = camera_get_view_y(view_camera[0]);


draw_sprite(spr_hud, 0, xPos, yPos);
DisplayHealthBar(xPos, yPos);
DisplayDiamondCount(xPos, yPos);
DisplayLives(xPos, yPos);
DisplayWeapons(xPos, yPos);
