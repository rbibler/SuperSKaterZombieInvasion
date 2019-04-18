/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

movementAnim = scr_RegisterStateAnimation(
	spr_ZombieSailor, 
	3/60, 
	true, 
	noone, 
	"ZombieCaptainMove", 
	sprite_get_number(spr_ZombieSailor)
);
scr_SetCurrentAnimation(movementAnim);

