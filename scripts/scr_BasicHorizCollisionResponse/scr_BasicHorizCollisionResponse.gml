/// This is a script that helps an object respond to a horizontal collision
/// @arg collisionPointHoriz

var collisionPointHoriz = argument0;

if((horizColPoints[HC_TOP] == 1 or horizColPoints[HC_BOTTOM] == 1 or horizColPoints[HC_MIDDLE] == 1)) {
	var tileX = floor(collisionPointHoriz / TILE_SIZE) * TILE_SIZE;
	if(xSpeed > 0) {
		x = tileX - (bbox_right - x) - 1;
		
	} else {
		x = tileX + TILE_SIZE + (x - bbox_left);
	}
	
	if(script_exists(horizCollisionScript)) {
		script_execute(horizCollisionScript, horizColPoints[HC_TOP], horizColPoints[HC_BOTTOM], horizColPoints[HC_MIDDLE], xSpeed);
	}
	scr_StopXMotion();
}