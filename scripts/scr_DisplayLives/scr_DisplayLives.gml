/// This is a script that helps the GUI display the player's current lives
/// @arg xPos
/// @arg yPos

var xPos = argument0;
var yPos = argument1;
xPos -= 216;
yPos += 8;
var livesCount = lives;
var ones = livesCount mod 10;
var tens = floor(livesCount / 10);
draw_sprite(spr_numbersSmall, tens, xPos, yPos);
draw_sprite(spr_numbersSmall, ones, xPos + 16, yPos);