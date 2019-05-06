/// @description Insert description here
// You can write your code in this editor

global.windowWidth = cameraWidth;
global.windowHeight = cameraHeight;

global.gameWidth = 640;
global.gameHeight = 360;

#macro		CAMERA_IDLE				0
#macro		CAMERA_SCROLLING		1
#macro		CAMERA_SCROLL_TO_ANCHOR	2
#macro		CAMERA_EASE_TO_STOP		3

state = 0;
scrollDirection = 0;
cameraSpeed = 0;
cameraOffset = cameraWidth / 2;
cameraOffsetY = cameraHeight * .20;
bottomLine = 0;
camera = noone;

lastCamX = x;
lastCamY = y;

shouldFollowSkaterHoriz = false;
shouldFollowSkaterVert = false;


scr_TrackTheSkater();

surface_resize(application_surface, global.windowWidth, global.windowHeight);
view_enabled = true;
view_visible[0] = true;




//room = rm_world1_level2;
