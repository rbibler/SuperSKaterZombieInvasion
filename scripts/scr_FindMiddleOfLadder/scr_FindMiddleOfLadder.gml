var ladder = instance_place(x, y, obj_Ladder);
if(ladder == noone) {
	ladder = instance_place(x, bbox_bottom, obj_Ladder);
}
return floor(ladder.x / TILE_SIZE) * TILE_SIZE + (TILE_SIZE / 2);