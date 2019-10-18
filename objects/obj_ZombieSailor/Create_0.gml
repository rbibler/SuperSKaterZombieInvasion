/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

movingAnim = scr_RegisterStateAnimation(
	spr_ZombieSailor, 
	3/60, 
	true, 
	noone, 
	"ZombieCaptainMove", 
	sprite_get_number(spr_ZombieSailor)
);

hurtAnim = scr_RegisterStateAnimation(
	spr_ZombieSailorHurt, 
	3/60, 
	true, 
	noone, 
	"ZombieCaptainHurt", 
	sprite_get_number(spr_ZombieSailorHurt)
);

recoveryAnim = hurtAnim;

scr_SetCurrentAnimation(movingAnim);
input[LEFT] = 1;

