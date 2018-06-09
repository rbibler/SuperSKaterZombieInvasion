// Check horizontal collisions
/*
* Adapted from Shaun Spaulding's tutorial: https://www.youtube.com/watch?v=Yre-XAE8DBA
*/
var bbox_side = bbox_right;
if(xSpeed < 0) {
	bbox_side = bbox_left;
}
var p1 = tilemap_get_at_pixel(collisionTiles, bbox_side + xSpeed, bbox_top);
var p2 = tilemap_get_at_pixel(collisionTiles, bbox_side + xSpeed, bbox_bottom);
var p3 = tilemap_get_at_pixel(collisionTiles, bbox_side + xSpeed, bbox_bottom - ((bbox_bottom - bbox_top) / 2));
if(tilemap_get_at_pixel(collisionTiles, x, bbox_bottom) > 3) {
	p2 = 0;
}

if(p1 == 1 or p2 == 1 or p3 == 1) {
	if(xSpeed > 0) {
		x = x - (x mod 16) + (15) - (bbox_right - x);
	} else {
		x = x - (x mod 16) - (bbox_left - x);
	}
	xSpeed = 0;
}