/// This is a script that helps the zombie skater enemy determine how to move. 
//Basically, he skates in a pre-determined unless he sees a wall or hits an edge, in which case he jumps

if(scr_FellOffEdge()) {
	scr_StateSwitch(s_JUMPING);
}

var bbox_side = bbox_right;
if(xSpeed < 0) {
	bbox_side = bbox_left;
}
var checkAhead = 20 * sign(xSpeed);

// Check head level:
var tileIndexX = floor((bbox_side + checkAhead) / TILE_SIZE);
var tileIndexTop = floor(bbox_top / TILE_SIZE);
var tileIndexBottom = floor((bbox_bottom - 1) / TILE_SIZE);

for(var i = tileIndexTop; i <= tileIndexBottom; i++) {
	var colPoint = tilemap_get(collisionTiles, tileIndexX, i);
	if(colPoint < 5 and colPoint > 0 and !onSlope) {
		if(tilemap_get(collisionTiles, tileIndexX - sign(xSpeed), i) < 5) {
			scr_StateSwitch(s_JUMPING);
			break;
		}
	}
}
