/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

idleAnim = scr_RegisterStateAnimation(
		spr_ExplodingSlimeballIdle, 
		NORMAL_ANIM_SPEED, 
		true, noone, 
		"", 
		sprite_get_number(spr_ExplodingSlimeballIdle)
	);
attackAnim = scr_RegisterStateAnimation(
		spr_ExplodingSlimeballExplosion, 
		8/60, 
		false, 
		noone, 
		"", 
		sprite_get_number(spr_ExplodingSlimeballExplosion)
	);
jumpAnim = scr_RegisterStateAnimation(
		spr_ExplodingSlimeballJumping, 
		NORMAL_ANIM_SPEED, 
		true, 
		noone, 
		"", 
		sprite_get_number(spr_ExplodingSlimeballJumping)
	);
menaceAnim = scr_RegisterStateAnimation(
		spr_ExplodingSlimeballMenacing, 
		8/60, 
		false, 
		noone, 
		"", 
		sprite_get_number(spr_ExplodingSlimeballMenacing)
	);
	
deadAnim = scr_RegisterStateAnimation(
		spr_ExplodingSlimeballExplosion,
		8/60,
		false,
		noone,
		"",
		sprite_get_number(spr_ExplodingSlimeballExplosion)
	);

currentAnimation = idleAnim;
isImmune = true;