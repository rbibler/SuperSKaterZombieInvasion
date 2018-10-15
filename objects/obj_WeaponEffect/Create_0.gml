/// @description Insert description here
// You can write your code in this editor
anim = noone;
if(sprite != noone) {
	anim = scr_RegisterStateAnimation(
			sprite, NORMAL_ANIM_SPEED, false, noone, "", sprite.image_number
		);
}