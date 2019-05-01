/// @description Insert description here
// You can write your code in this editor

global.windowWidth = cameraWidth;
global.windowHeight = cameraHeight;

global.gameWidth = 640;
global.gameHeight = 360;

camera = noone;

lastCamX = x;
lastCamY = y;
horizontalOffsetRight = cameraWidth * .35;
horizontalOffsetLeft = cameraWidth * .65;

leftBoundary = 0;
rightBoundary = 0;
focusAreaX = 0;
shouldScrollHoriz = false;

scr_TrackTheSkater();

surface_resize(application_surface, global.windowWidth, global.windowHeight);
view_enabled = true;
view_visible[0] = true;




//room = rm_world1_level2;
