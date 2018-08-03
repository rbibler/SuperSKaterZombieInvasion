/// Script that helps with GUI layout
/// @arg sprite_index
/// @arg sprite_sub_image
/// @arg grid_x
/// @arg grid_y
/// @arg scaleX
/// @arg scaleY

var viewHeight = view_hport[0];
var viewWidth = view_wport[0];
var gridX = 8 * (viewWidth / 256);
var gridY = 8 * (viewHeight / 240);


var sprite = argument0;
var spriteSubImage = argument1;
var spriteX = argument2;
var spriteY = argument3;
var scaleX = argument4 * sprite_get_width(sprite);
var scaleY = argument5 * sprite_get_height(sprite);

//draw_sprite(sprite, spriteSubImage, gridX * spriteX, gridY * spriteY);
draw_sprite_stretched(sprite, spriteSubImage, gridX * spriteX, gridY * spriteY, scaleX, scaleY);
