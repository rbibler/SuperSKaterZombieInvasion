/// This is a script that helps the GUI display the player's health
/// @arg xPos
/// @arg yPos

var xPos = argument0;
var yPos = argument1;

var imageIndex = scr_GetPlayerHealthImage();

scr_DisplaySpriteAtGrid(spr_healthBar, imageIndex,9, 1, 1, 1, xPos, yPos);