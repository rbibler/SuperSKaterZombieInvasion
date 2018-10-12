/// This is a utility that helps an object update its animation each step
/// @arg animToUpdate

var anim = argument0;
var sprite = anim.sprite_index;
var loop = anim.loop;
var endScript = anim.endOfAnimScript;

if(anim == noone) {
	return;
}

with(anim) {
	if(isHitBox and other.sprite_index != sprite) {
		other.sprite_index = sprite;
	}

	currentIndex += animSpeed;

	if(currentIndex >= image_number) {
		if(loop) {
			currentIndex = 0;
		} else {
			currentIndex = image_number - 1;
			script_execute(endScript);
		}
	}
	if(isHitBox) {
		other.image_index = currentIndex;
	}
}

