/// @description Insert description here
// You can write your code in this editor
draw_circle(x, y, currentBlastRadius, true);

for(var i = 0; i < numIntersectingTiles; i++) {
	var tileX = intersectingTilesX[i];
	var tileY = intersectingTilesY[i];
	draw_rectangle(tileX, tileY, tileX + TILE_SIZE, tileY + TILE_SIZE, true);
}