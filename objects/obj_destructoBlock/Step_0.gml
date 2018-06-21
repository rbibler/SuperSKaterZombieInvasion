/// @description Insert description here
// You can write your code in this editor
if(state == 1) {
	if(destructoTimer <= 10) {
		image_index = 0;
	} else if(destructoTimer <= 20) {
		image_index = 1;
	} else if(destructoTimer <= 30) {
		image_index = 2;
		isSolid = false;
	} else {
		instance_destroy();
	}
	destructoTimer++;
}