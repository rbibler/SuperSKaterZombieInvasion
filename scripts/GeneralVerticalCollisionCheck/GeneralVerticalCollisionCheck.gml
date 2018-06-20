/// Checking to see if skater lands on something
// First check the bottom middle, then bottom right, then bottom left.

/*
* Adapted from Shaun Spaulding's tutorial: https://www.youtube.com/watch?v=Yre-XAE8DBA
*/
var bbox_side = 0;
var p1 = 0;
var p2 = 0;
if(ySpeed >= 0) {
	bbox_side = bbox_bottom;
} else {
	bbox_side = bbox_top;
}
p1 = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_side + ySpeed);
p2 = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_side + ySpeed);
if(((p1 != 0 and p1 <= 4) or (p2 != 0 and p2 <= 4))) {
	if(ySpeed >= 0) {
		var bboxTile = floor((bbox_side + ySpeed) / 16);
		bboxTile *= 16;
		y = bboxTile - (bbox_bottom - y);
	} 
	StopYMotion();
} 
 

var floorDist = GeneralInFloor(collisionTiles, x, bbox_bottom + ySpeed);
if(floorDist >= 0) {
	var tileId = tilemap_get_at_pixel(collisionTiles, x, bbox_bottom + ySpeed);
	if(tileId != 0 and tileId != 4 and tileId != 5) {
		y += ySpeed;
		y -= (floorDist + 1);
		StopYMotion();
		floorDist = -1;
	}
}

SkaterVerticalMovement();

if(grounded and onSlope) {
	y += abs(floorDist) - 1;
	//show_debug_message("Vertical Collision 3");
	if((bbox_bottom mod 16) == 15) {
		var tileIdDown = tilemap_get_at_pixel(collisionTiles, x, bbox_bottom + 1);
		if(tileIdDown > 5) {
			y += abs(GeneralInFloor(collisionTiles, x, bbox_bottom + 1));
		}
	}
}

