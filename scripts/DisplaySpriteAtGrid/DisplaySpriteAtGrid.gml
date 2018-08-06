/// Script that helps with GUI layout
/// @arg sprite_index
/// @arg sprite_sub_image
/// @arg grid_x
/// @arg grid_y
/// @arg scaleX
/// @arg scaleY

var sprite = argument0;
var spriteSubImage = argument1;
var spriteX = argument2;
var spriteY = argument3;
var scaleX = argument4;
var scaleY = argument5 ;

//draw_sprite(sprite, spriteSubImage, gridX * spriteX, gridY * spriteY);
draw_sprite_ext(sprite, spriteSubImage, global.gridX * spriteX + global.Xoffset, global.gridY * spriteY, scaleX * global.scaleW , scaleY * global.scaleH, 0, c_white, 1);
