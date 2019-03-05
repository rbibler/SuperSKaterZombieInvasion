// Super simple movement script. If you hit an edge, turn around
if(stateName == s_JUMPING) {
	return;
}

/*
*		|	|
		|MT	| x	|
		|DT	|
*/
if(grounded) {
	var sideToCheck = input[RIGHT] ? bbox_right : bbox_left;
	var middleTile = tilemap_get_at_pixel(collisionTiles, sideToCheck + xSpeed, y);
	var downTile = tilemap_get_at_pixel(collisionTiles, sideToCheck + xSpeed, y + 2);
	if(downTile == 0 and middleTile == 0 and !onSlope) {
		input[LEFT] = !input[LEFT];
		input[RIGHT] = !input[RIGHT];
	}
	
}
