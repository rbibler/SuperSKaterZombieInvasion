/// @description Insert description here
// You can write your code in this editor
var tileX = sprite_width / 16;

for(var i = 0; i < tileX; i++) {
	draw_sprite(sprite_index, image_index, (i * 16) + x, y);
}