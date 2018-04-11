/// @description Insert description here
// You can write your code in this editor
follow = obj_skater;
xTo = 0;
yTo = 0;
xSpeed = 0;
xSpeedFrac = 0;
ySpeed = 0;
ySpeedFrac = 0;
cam = view_camera[0];
viewW = 512;
viewH = 240;
camera_set_view_size(cam, viewW, viewH);

boundBoxOffsetX = (viewW / 2) - ((bbox_right - bbox_left) / 2);
boundBoxOffsetY = viewH / 50;
