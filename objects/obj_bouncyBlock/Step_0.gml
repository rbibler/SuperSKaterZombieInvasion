/// @description Insert description here
// You can write your code in this editor
if(activated) {
	if(frameTimer <= 5) {
		image_index = 0;
	} else if(frameTimer <= 10) {
		image_index = 1;
	} else {
		image_index = 0;
		frameTimer = 0;
		activated = false;
	}
	frameTimer++;
}