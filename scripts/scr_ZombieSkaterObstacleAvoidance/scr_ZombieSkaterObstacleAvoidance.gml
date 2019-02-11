/// This is a script that helps the zombie skater enemy determine how to move. 
//Basically, he skates in a pre-determined unless he sees a wall or hits an edge, in which case he jumps

if(scr_FellOffEdge()) {
	input[LEFT] = !input[LEFT];
	input[RIGHT] = !input[RIGHT];
}

var bbox_side = bbox_right;
if(xSpeed < 0) {
	bbox_side = bbox_left;
}
var checkAhead = 20 * sign(xSpeed);
var colPoint = tilemap_get_at_pixel(collisionTiles, bbox_side + checkAhead, bbox_bottom - ((bbox_bottom - bbox_top) / 2));
if(colPoint == 1 and grounded) {
	colPoint = tilemap_get_at_pixel(collisionTiles, bbox_side + checkAhead - (16 * sign(xSpeed)), bbox_bottom - ((bbox_bottom - bbox_top) / 2));
	if(colPoint < 5) {
		input[LEFT] = !input[LEFT];
		input[RIGHT] = !input[RIGHT];
	}
}