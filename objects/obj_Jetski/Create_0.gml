/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
scr_StateMachineInit();

scr_StateCreate(s_IDLE, scr_JetSkiStateIdle);
scr_StateCreate(s_MOVING, scr_JetSkiMoving);
scr_StateInit(s_IDLE);

