// If the skater's on a slope, then he'll have some x imeptus 
var tileId = tilemap_get_at_pixel(collisionTiles, x, bbox_bottom + 1);
if(tileId > 5) {
var slopeImpetus = obj_slopeController.slopeGravity[tileId];
lastSlopeImpetus = slopeImpetus;
slopeTouchTimer = rampAllowance;
	if(sign(xSpeed) == sign(lastXSpeed)) {
		
		xSpeed += slopeImpetus;
		// Add some extra speed if speed is less than one to overcome the inertia
		// caused by operating only with integers
		if(abs(xSpeed) < 1) {
			xSpeed += sign(slopeImpetus) * 0.5;
		}
		onSlope = true;
		slopeDirection = (tileId < 15) ? UP_SLOPE : DOWN_SLOPE;
	}
}