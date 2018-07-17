/// @description Insert description here
// You can write your code in this editor
if(animating) {
	if(frameTimer mod (60 / 5) == 0) {
		image_index++;
		if(image_index >= image_number) {
			animating = false;
			image_index = 0;
			nextAnimation = frameTimer + (60 * 7);
		}
	}
} else if(frameTimer >= nextAnimation) {
	animating = true;
}
frameTimer++;