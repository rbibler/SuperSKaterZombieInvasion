var skater = argument0;
if(scrollDirection < 0) {
	x = skater.x - (cameraWidth - anchorWidth);
} else {
	x = skater.x - anchorWidth;
}