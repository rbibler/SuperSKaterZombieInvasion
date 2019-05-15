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
	if(array_length_1d(substateAnimations) > 0) {
		var substateAnim = substateAnimations[currentSubstate];
		var alternateComplete = scr_UpdateAlternateAnimation(substateAnim, other);
		if(alternateComplete) {
			currentSubstate = 0;
		}
	}
	currentIndex += animSpeed;
	if(currentIndex >= animLength) {
		animEnd = true;
		if(loop) {
			currentIndex = 0;
		} else {
			currentIndex -= 1;
			if(endScript != noone) {
				script_execute(endScript);
			}
		}
	}
}
return animEnd;