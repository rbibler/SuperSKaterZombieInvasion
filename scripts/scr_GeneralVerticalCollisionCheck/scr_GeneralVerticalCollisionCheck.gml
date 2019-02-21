/// Checking to see if skater lands on something
/// @arg groundedAtStart
// First check the bottom middle, then bottom right, then bottom left.


if(ySpeed < 0) {
	if(!scr_CheckYaHead(x, bbox_top + ySpeed)) {
		if(!scr_CheckYaHead(bbox_left, bbox_top + ySpeed)) {
			scr_CheckYaHead(bbox_right, bbox_top + ySpeed);
		}
	}
	y += ySpeed;
	return;
}

var groundedAtStart = argument0;
var targetBottom = scr_VertCollisionChecks(x, groundedAtStart);
var colPoint = tilemap_get_at_pixel(collisionTiles, x, targetBottom);
var targetBottomTile = floor(targetBottom / TILE_SIZE);

scr_MiddleVertCheck(colPoint, groundedAtStart, targetBottomTile);
if(!grounded) {
	scr_VertCollisionChecks(bbox_left, groundedAtStart);
	if(grounded) {
		groundedLeft = true;
	} else {
		groundedLeft = false;
		scr_VertCollisionChecks(bbox_right, groundedAtStart);
		if(grounded) {
			groundedRight = true;
		} else {
			groundedRight = false;
		}
	}
}



scr_GeneralVerticalMovement();

scr_VerticalBlockCollisionCheck();

if(!grounded) {
	onSlope = false;
	slopeImpetus = 0;
	show_debug_message("Clearing slope impetus");
}


y += ySpeed;
