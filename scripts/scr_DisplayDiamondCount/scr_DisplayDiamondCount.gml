/// This is a script that helps the GUI display the player's current diamond count
/// @arg xPos
/// @arg yPos

var xPos = argument0;
var yPos = argument1;

xPos -= 105
yPos += 21;

var diamondCount = global.diamondCount;
var index = 20 - floor((diamondCount / 100) * 20);
draw_sprite(spr_DiamondStatusBar, index, xPos, yPos);