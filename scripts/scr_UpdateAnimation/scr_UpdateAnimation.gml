/// This is a utility that helps an object update its animation each step
/// @arg animToUpdate

var anim = argument0;
var sprite = anim.sprite_index;
var loop = anim.loop;
var endScript = anim.endOfAnimScript;

if(sprite_index != sprite) {
	sprite_index = sprite;
	anim.currentIndex = 0;
}
var oldIndex = floor(anim.currentIndex);
anim.currentIndex += anim.animSpeed;



if(floor(anim.currentIndex) != oldIndex) {
	show_debug_message("New frame: " + anim.animName + " " + string(anim.currentIndex));
	var frameScript = anim.scripts[anim.currentIndex];
	if(frameScript != noone) {
		script_execute(frameScript);
	}
}

if(anim.currentIndex >= anim.image_number) {
	if(loop) {
		anim.currentIndex = 0;
	} else {
		anim.currentIndex = anim.image_number - 1;
		script_execute(endScript);
	}
}

image_index = anim.currentIndex;

