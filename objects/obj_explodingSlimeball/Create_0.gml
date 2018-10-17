/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

idleAnim = scr_RegisterStateAnimation(spr_explodingSlimeballIdle, NORMAL_ANIM_SPEED, true, noone, "", 2);
attackAnim = scr_RegisterStateAnimation(spr_slimeballExploding, NORMAL_ANIM_SPEED, false, noone, "", 2);
jumpAnim = scr_RegisterStateAnimation(spr_slimeballJump, NORMAL_ANIM_SPEED, true, noone, "", 1);
defendAnim = scr_RegisterStateAnimation(spr_slimeballMenacing, NORMAL_ANIM_SPEED, false, noone, "", 2);

currentAnimation = idleAnim;