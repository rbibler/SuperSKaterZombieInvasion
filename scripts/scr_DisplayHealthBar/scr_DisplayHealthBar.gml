/// This is a script that helps the GUI display the player's health
/// @arg xPos
/// @arg yPos

var xPos = argument0;
var yPos = argument1;

yPos += 4;
xPos += 71;

var imageIndex = scr_GetPlayerHealthImage();

draw_sprite(spr_healthBar, imageIndex, xPos, yPos);