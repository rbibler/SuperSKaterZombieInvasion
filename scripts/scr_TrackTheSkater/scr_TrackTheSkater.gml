if(!instance_exists(obj_skater)) {
	return;
}

var skater = instance_find(obj_skater, 0);
shouldFollowSkaterHoriz = skater.x >= cameraOffset and skater.x <= (room_width - cameraOffset);
if(shouldFollowSkaterHoriz) {
	x = skater.x - cameraOffset;
}

var vertBoundary = y + cameraOffsetY;
shouldFollowSkaterVert = (skater.y <= vertBoundary and skater.ySpeed < 0) or 
	(skater.ySpeed > 0 and skater.y < bottomLine);
if(shouldFollowSkaterVert) {
	y = skater.y - cameraOffsetY;
	
}
if(skater.y >= bottomLine) {
	y = room_height - cameraHeight;
}
camera_set_view_pos(camera, x, y);
scr_UpdateBackground(x);

lastCamX = x;