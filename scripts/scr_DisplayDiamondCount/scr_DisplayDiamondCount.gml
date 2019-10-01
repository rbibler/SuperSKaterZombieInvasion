/// This is a script that helps the GUI display the player's current diamond count
/// @arg xPos
/// @arg yPos

var xPos = argument0;
var yPos = argument1;

xPos -= 210
yPos += 42;

var diamondCount = global.juice;
var index = 20 - floor((diamondCount / 100) * 20);
draw_sprite(spr_DiamondStatusBar, index, xPos, yPos);

var doubleJumpJuice = obj_skater.doubleJumpMeter;
index = 20 - floor((doubleJumpJuice / 100) * 20);
draw_sprite(spr_DoubleJumpMeter, index, xPos, yPos);