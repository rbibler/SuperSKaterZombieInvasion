/// This is a script that helps a trick blast determine if it's collided with any tiles.

var cx = argument0;
var cy = argument1;
var radius = argument2;
var xSpeed = argument3;
var ySpeed = argument4;

var leadingEdgeHoriz = 0;
// calculate leading edge, horizontal
if(xSpeed > 0) {
	leadingEdgeHoriz = cx + radius;
} else if(xSpeed < 0) {
	leadingEdgeHoriz = cx - radius;
}

var topRightX = leadingEdgeHoriz;
var topRightY = cy - radius;
var tilesInColumn = floor((radius * 2) / TILE_SIZE);

var tileX = floor(topRightX / TILE_SIZE) * TILE_SIZE;
var tileYStart = floor(topRightY / TILE_SIZE) * TILE_SIZE;

var intersects = false;


numIntersectingTiles = 0;
for(var i = 0; i < tilesInColumn; i++) {
	var tileY = tileYStart;
	for(var j = 0; j < tilesInColumn; j++) {
		intersects = scr_CircleRectangle(cx, cy, radius, tileX, tileY, TILE_SIZE, TILE_SIZE);
		if(intersects) {
			var tileId = tilemap_get_at_pixel(collisionTiles, tileX + 1, tileY + 1);
			if(tileId == SOLID) {
				intersectingTilesX[numIntersectingTiles] = tileX;
				intersectingTilesY[numIntersectingTiles++] = tileY;
				if(numIntersectingTiles >= 2) {
					instance_destroy();
				}
			}
		}
		tileY += TILE_SIZE;
	}
	tileX -= TILE_SIZE;
}
