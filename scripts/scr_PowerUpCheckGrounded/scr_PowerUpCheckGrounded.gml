// Check to see if the player is grounded at the start of the frame
var bbox_side = 0;
var p1 = 0;
var p2 = 0;

bbox_side = bbox_bottom;

p1 = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_side + ySpeed);
p2 = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_side + ySpeed);
if( (p1 != 0 and p1 <= 4) or (p2 != 0 and p2 <= 4) ) {
	if(ySpeed >= 0) {
		var bboxTile = floor((bbox_side + ySpeed) / 16);
		bboxTile *= 16;
		y = bboxTile - (bbox_bottom - y);
	} 
	ySpeed = 0;
	grounded = true;
} 