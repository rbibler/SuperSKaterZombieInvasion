/// This is a utility that helps an object update its animation each step
/// @arg animToUpdate

var animToUpdate = argument0;
var sprite = Animations[animToUpdate, 0];
var animSpeed = Animations[animToUpdate, 1];
var loop = Animations[animToUpdate, 2];
var endScript = Animations[animToUpdate, 3];

if(sprite_index != sprite) {
	sprite_index = sprite;
	image_index = 0;
}

image_index += animSpeed;
if(image_index >= image_number) {
	if(loop) {
		image_index = 0;
	} else {
		script_execute(endScript);
	}
}