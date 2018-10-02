/// @description Insert description here
// You can write your code in this editor

image_xscale = obj_skater.myDirection;

x = obj_skater.x;
y = obj_skater.y;

frameTimer++;
if(frameTimer mod ANIMATION.NORMAL == 0) {
	image_index++;
}

if(image_index >= image_number) {
	with(weaponParent) {
		ammoOnScreen--;
	}
	instance_destroy();
	obj_skater.ignoreInput = false;
}

