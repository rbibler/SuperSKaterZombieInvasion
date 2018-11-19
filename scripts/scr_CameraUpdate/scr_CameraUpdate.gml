/// @description Insert description here
// You can write your code in this editor

var leftDiff = follow.x - bbox_left;
var rightDiff = follow.x - bbox_right;
var topDiff = follow.bbox_top - bbox_top;
var bottomDiff = follow.y - bbox_bottom;

var xTo = x;
var yTo = y;

if(leftDiff < 0) {
	xTo = x + leftDiff;
}
if(rightDiff > 0) {
	xTo = x + rightDiff;
}
if(topDiff < 0) {
	yTo = y + topDiff;
}
if(bottomDiff > 0) {
	yTo = y + bottomDiff;
}

var followSpeed = 1;
xSpeed = (xTo - x) / followSpeed;
ySpeed = (yTo - y) / followSpeed;
//xSpeed += xSpeedFrac;
//ySpeed += ySpeedFrac;
//xSpeedFrac = frac(xSpeed);
//ySpeedFrac = frac(ySpeed);
//xSpeed -= xSpeedFrac;
//ySpeed -= ySpeedFrac;
//x += xSpeed;
//y += ySpeed;
x += xSpeed;
y += ySpeed;

var camFinalX = x - boundBoxOffsetX;
var camFinalY = y - boundBoxOffsetY;

if(camFinalY >= (room_height - viewH)) {
	camFinalY = (room_height - viewH);
	y = camFinalY + boundBoxOffsetY;
}

if(camFinalY < 0) {
	camFinalY = 0;
	y = camFinalY + boundBoxOffsetY;
}

if(camFinalX < 0) {
	camFinalX = 0;
	x = camFinalX + boundBoxOffsetX;
}

if(camFinalX > (room_width - viewW)) {
	camFinalX = (room_width - viewW);
	x = camFinalX + boundBoxOffsetX
}
camFinalX = round(camFinalX);

camera_set_view_pos(cam, camFinalX, round(camFinalY));

