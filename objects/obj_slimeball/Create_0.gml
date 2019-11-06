/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
stateAirborneHit = scr_StateCreate(s_AIRBORNE_HIT, scr_SlimeballStateAirborneHit);

deathAnim = scr_RegisterStateAnimation(
	spr_SlimeballHit,
	NORMAL_ANIM_SPEED,
	false,
	noone,
	"",
	sprite_get_number(spr_SlimeballHit)

);