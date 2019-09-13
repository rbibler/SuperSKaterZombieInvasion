/// This is a utility that helps an object update its animation each step
/// @arg animToUpdate


var anim = argument0;
var loop = anim.loop;
var endScript = anim.endOfAnimScript;
var animEnd = false;
if(anim == noone) {
	return;
}

with(anim) {
	var substateAnim = substateAnimations[currentSubstate];
	alternateComplete = scr_UpdateAlternateAnimation(substateAnim, other);
	if(alternateComplete) {
		currentSubstate = 0;
	}
	currentIndex += animSpeed;
	if(floor(currentIndex) != floor(lastFrameIndex)) {
		animFrameCounter = 0;
	} else {
		animFrameCounter++;
	}
	if(currentIndex >= animLength) {
		animEnd = true;
		isDone = true;
		if(loop) {
			currentIndex = 0;
		} else {
			currentIndex -= 1;
			if(endScript != noone) {
				script_execute(endScript);
			}
		}
	}
	other.image_index = currentIndex;
	lastFrameIndex = currentIndex;
}
return animEnd;