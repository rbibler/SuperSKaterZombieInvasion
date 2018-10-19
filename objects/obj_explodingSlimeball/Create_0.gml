/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

idleAnim = scr_RegisterStateAnimation(spr_ExplodingSlimeballIdle, NORMAL_ANIM_SPEED, true, noone, "", 15);
attackAnim = scr_RegisterStateAnimation(spr_ExplodingSlimeballMenacing, NORMAL_ANIM_SPEED, false, noone, "", 2);
jumpAnim = scr_RegisterStateAnimation(spr_ExplodingSlimeballJumping, NORMAL_ANIM_SPEED, true, noone, "", 1);
defendAnim = scr_RegisterStateAnimation(spr_ExplodingSlimeballAttacking, NORMAL_ANIM_SPEED, false, noone, "", 2);

currentAnimation = idleAnim;