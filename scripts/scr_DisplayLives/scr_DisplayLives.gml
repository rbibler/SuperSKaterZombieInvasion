/// This is a script that helps the GUI display the player's current lives
/// @arg xPos
/// @arg yPos

var xPos = argument0;
var yPos = argument1;

var livesCount = lives;
var ones = livesCount mod 10;
var tens = floor(livesCount / 10);
scr_DisplaySpriteAtGrid(spr_numbersBig, tens, 23, 1, 1, 1, xPos, yPos);
scr_DisplaySpriteAtGrid(spr_numbersBig, ones, 24, 1, 1, 1, xPos, yPos);