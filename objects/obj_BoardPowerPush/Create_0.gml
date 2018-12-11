/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(sprite != noone) {
	attackEffectAnimation = scr_RegisterStateAnimation(sprite, FAST_ANIM_SPEED, false, noone, "", sprite_get_number(sprite));
	attackEffectAnimation.currentSubstate = 0;
}
ammoCount = 999999;
