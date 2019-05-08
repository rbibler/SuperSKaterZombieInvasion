/// @description Insert description here
// You can write your code in this editor
#macro NORMAL_MODE			0
#macro DEBUG_CONSOLE_MODE	1

screenshot = noone;
state = NORMAL_MODE;
gamepad = -1;

// Global parameters that will persist throughout the game
scr_Macros();
scr_SetupGlobalParams();
scr_CreatePersistentObjects();


application_surface_draw_enable(false);

room_goto(startRoom);