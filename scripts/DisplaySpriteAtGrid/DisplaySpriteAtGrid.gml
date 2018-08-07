/// Script that helps with GUI layout
/// @arg sprite_index
/// @arg sprite_sub_image
/// @arg grid_x
/// @arg grid_y
/// @arg scaleX
/// @arg scaleY
/// @arg xPos
/// @arg yPos

var sprite = argument0;
var spriteSubImage = argument1;
var spriteX = argument2;
var spriteY = argument3;
var scaleX = argument4;
var scaleY = argument5;
var xPos = argument6;
var yPos = argument7;

//draw_sprite(sprite, spriteSubImage, gridX * spriteX, gridY * spriteY);
draw_sprite_ext(sprite, spriteSubImage, xPos + (GRID_X * spriteX), yPos + (GRID_Y * spriteY), scaleX , scaleY, 0, c_white, 1);
