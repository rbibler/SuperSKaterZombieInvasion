/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
scr_GeneralApplyGravity();

scr_GeneralCheckGrounded();

event_inherited();

if(instance_exists(shieldOverlayObject)) {
	with(shieldOverlayObject) {
		x = other.x - 2;
		y = other.y;
	}
}

