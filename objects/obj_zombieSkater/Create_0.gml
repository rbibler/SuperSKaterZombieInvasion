/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

moveAnim = scr_RegisterStateAnimation(
		spr_zombieSkater, 
		ZOMBIE_ANIM_SPEED, 
		true, noone, 
		"", 
		sprite_get_number(spr_zombieSkater)
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
