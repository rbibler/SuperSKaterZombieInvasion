/// @description Insert description here
// You can write your code in this editor

	var tileX = sprite_width / TILE_SIZE;
	
	for(var i = 0; i < tileX; i++) {
		draw_sprite(sprite_index, image_index, (i * TILE_SIZE) + x, y);
	}
