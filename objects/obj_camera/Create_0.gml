/// @description Insert description here
// You can write your code in this editor

cam = view_camera[0];
viewW = 512;
viewH = 240;
camera_set_view_size(cam, viewW, viewH);
follow = false;
lastViewY = camera_get_view_y(cam);

