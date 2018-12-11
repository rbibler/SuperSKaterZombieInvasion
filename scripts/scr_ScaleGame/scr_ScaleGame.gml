/// This is a script that helps the game scale itself
/// @arg scaleX
/// @arg scaley

var scaleX = argument0;
var scaleY = argument1;
var aspectRatio = scaleX / scaleY;

if(RES_W * scaleX <= global.MonitorW) {
	global.scaleW = scaleX;
} else {
	global.scaleW = floor(global.MonitorW / RES_W);
}

if(RES_H * scaleY <= global.MonitorH) {
	global.scaleH = scaleY;
} else {
	global.scaleH = floor(global.MonitorH / RES_H);
}

if(aspectRatio == 1) {
	if(global.scaleW > global.scaleH) {
		global.scaleW = global.scaleH;
	} else {
		global.scaleH = global.scaleW;
	}
}


var newWidth = RES_W * global.scaleW;
var newHeight = RES_H * global.scaleH;

if(abs(global.MonitorW - newWidth) < RES_W or abs(global.MonitorH - newHeight) < RES_H) {
	window_set_fullscreen(true);
	global.Xoffset = (global.MonitorW - newWidth) / 2;
	global.Yoffset = (global.MonitorH - newHeight) / 2;
} else {
	window_set_fullscreen(false);
	window_set_size(newWidth, newHeight);
	global.Xoffset = 0;
	global.Yoffset = 0;
}


view_set_wport(0, newWidth);
view_set_hport(0, newHeight);
surface_resize(application_surface, newWidth, newHeight);

global.gridX = 8 * global.scaleW;
global.gridY = 8 * global.scaleH;