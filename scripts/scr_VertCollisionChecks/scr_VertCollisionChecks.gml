/// This is a script that checks a few things for vertical collisions
/// @arg xPosToCheck
/// @arg groundedAtStart

var xPos = argument0;
var groundedAtStart = argument1;
var curBottom = bbox_bottom;
var targetBottom = bbox_bottom + ySpeed;
if(ySpeed == 0) {
	targetBottom += 1;
} 

var curBottomTile = floor(curBottom / TILE_SIZE);
var targetBottomTile = floor(targetBottom / TILE_SIZE);
var colPoint = tilemap_get_at_pixel(collisionTiles, xPos, targetBottom);

scr_BasicVertCollision(colPoint, targetBottom, groundedAtStart, xPos);

if(!grounded) {
	if(curBottomTile != targetBottomTile) {
		targetBottom = (curBottomTile * TILE_SIZE) + TILE_SIZE - 1;
		targetBottomTile = curBottomTile;
		colPoint = tilemap_get_at_pixel(collisionTiles, xPos, targetBottom);
		scr_BasicVertCollision(colPoint, targetBottom, groundedAtStart, xPos);
	}
}

return targetBottom;