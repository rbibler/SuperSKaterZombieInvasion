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
shieldFullAnim = scr_RegisterStateAnimation(
		spr_ExplodingSlimeballShieldFull,
		8/60,
		true,
		noone,
		"",
		sprite_get_number(spr_ExplodingSlimeballShieldFull)
);
shieldMedAnim = scr_RegisterStateAnimation(
		spr_ExplodingSlimeballShieldMed,
		8/60,
		true,
		noone,
		"",
		sprite_get_number(spr_ExplodingSlimeballShieldMed)
);
shieldLowAnim = scr_RegisterStateAnimation(
		spr_ExplodingSlimeballShieldLow,
		8/60,
		true,
		noone,
		"",
		sprite_get_number(spr_ExplodingSlimeballShieldLow)
);
hitAnim = deadAnim;

currentAnimation = idleAnim;
isImmune = true;

shieldOverlayObject = instance_create_layer(x, y, ENEMY_OVERLAY_LAYER, obj_OverlayObject);
with(shieldOverlayObject) {
	scr_SetCurrentAnimation(other.shieldFullAnim);
	parentObject = other;
}

shieldValue = 100;