/// @description Insert description here
// You can write your code in this editor
//with(obj_camera) {
	//CameraUpdate();
//}


if(isImmune) {
	if(frameTimer mod 5 == 0) {
		drawToggle = !drawToggle;
	}
} else {
	drawToggle = true;
}

if(drawToggle) {
	draw_self();
}

var xStart = tileColliderX * 16;
var yStart = tileColliderY * 16;
draw_rectangle(xStart, yStart, xStart + 16, yStart + 16, c_red);