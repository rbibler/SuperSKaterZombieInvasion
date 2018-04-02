/// @description Handles Idle animation
// You can write your code in this editor
if(state == 0 and sprite_index = spr_SkaterIdle) {
	image_index++;
	if(image_index >= image_number) {
		image_index = 0;
	}
	if(image_index == 0) {
		alarm[0] = random_range(60 * 3, 60 * 6);
	} else if(image_index == 1 or image_index == 2) {
		alarm[0] = 60 / 5;
	}
} else {
	alarm[0] = random_range(60 * 3, 60 * 6);
}