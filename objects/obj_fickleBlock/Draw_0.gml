/// @description Insert description here
// You can write your code in this editor
if(isFlickering) {
	if(frameTimer mod (60 / 5) == 0) {
		drawMe = !drawMe;
	}
} else if(isSolid) {
	drawMe = true;
} else {
	drawMe = false;
}

if(drawMe) {
	draw_self();
}