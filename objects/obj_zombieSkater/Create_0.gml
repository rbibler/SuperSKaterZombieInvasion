/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

stationaryCounter = 0;

moveAnim = scr_RegisterStateAnimation(
		spr_zombieSkater, 
		ZOMBIE_ANIM_SPEED, 
		true, noone, 
		"", 
		sprite_get_number(spr_zombieSkater)
	);
	

jumpAnim = scr_RegisterStateAnimation(
		spr_zombieSkaterJump,
		NORMAL_ANIM_SPEED,
		true, noone,
		"ZOMBIE_JUMP",
		sprite_get_number(spr_zombieSkaterJump)
	);
	
	
deathAnim = scr_RegisterStateAnimation(
		spr_ZombieSkaterDying, 
		NORMAL_ANIM_SPEED, 
		false, 
		noone, 
		"", 
		sprite_get_number(spr_ZombieSkaterDying)
	);
	
currentAnimation = moveAnim;
