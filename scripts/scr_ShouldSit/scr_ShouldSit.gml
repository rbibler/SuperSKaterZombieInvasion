/// This is a script that helps the skater determine if he should on the edge of a platform when bored.

if(onSlope) {
	return true;
}

if(!scr_OnEdge()) {
	return false;
}
var edgeDirection = scr_FindEdgeDirection();
if(edgeDirection == 0 or image_xscale == edgeDirection) {
	var distanceFromEdge = 
		(image_xscale == FACE_RIGHT) ? (TILE_SIZE - x mod TILE_SIZE) : x mod TILE_SIZE;
	if(distanceFromEdge <= minSitEdgeDistance) {
		return true;
	}
}

return false;