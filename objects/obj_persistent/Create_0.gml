/// @description Insert description here
// You can write your code in this editor
scr_Macros();
slopeTiles[0] = 0;
slopeTiles[1] = 0;
slopeTiles[2] = 1;
slopeTiles[3] = 2;
slopeTiles[4] = 3;
slopeTiles[5] = 4;
slopeTiles[6] = 5;
slopeTiles[7] = 6;
slopeTiles[8] = 7;
slopeTiles[9] = 8;
slopeTiles[10] = 9;
slopeTiles[11] = 10;
slopeTiles[12] = 11;
slopeTiles[13] = 12;
slopeTiles[14] = 13;
slopeTiles[15] = 14;

gamepad = -1;

lives = 3;
global.diamondCount = 0;

application_surface_draw_enable(false);

global.MonitorW = display_get_width();
global.MonitorH = display_get_height();

global.Xoffset = 0;
global.Yoffset = 0;

global.scaleW = 2;
global.scaleH = 2;

global.gridX = 8;
global.gridY = 8;

global.debug = false;

scr_ScaleGame(2, 2);
room_goto_next();

