/// This is a script that helps the GUI display the player's current diamond count
/// @arg xPos
/// @arg yPos

var xPos = argument0;
var yPos = argument1;

var diamondCount = global.diamondCount;
var ones = diamondCount mod 10;
var tens = floor(diamondCount / 10);
scr_DisplaySpriteAtGrid(spr_numbersBig, tens, 23, 3, 1, 1, xPos, yPos);
scr_DisplaySpriteAtGrid(spr_numbersBig, ones, 24, 3, 1, 1, xPos, yPos);