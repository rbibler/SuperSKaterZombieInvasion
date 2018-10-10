/// This is a utility that helps an object update its animation each step
/// @arg animToUpdate

var anim = argument0;
var sprite = anim.sprite_index;
var loop = anim.loop;
var endScript = anim.endOfAnimScript;

with(anim) {
	if(other.sprite_index != sprite) {
		other.sprite_index = sprite;
		currentFrame = 0;
	}

	currentFrame += animSpeed;

	if(currentFrame >= image_number) {
		if(loop) {
			currentFrmae = 0;
		} else {
			currentFrame = image_number - 1;
			script_execute(endScript);
		}
	}
	
	if(chooseAlternate) {
		if(currentFrame < alternateEndFrame) {
			currentIndex = alternateFrames[currentFrame];
		} else {
			chooseAlternate = false;
			currentIndex = frames[currentFrame];
		}
	} else {
		currentIndex = frames[currentFrame];
	}

}
image_index = anim.currentIndex;

