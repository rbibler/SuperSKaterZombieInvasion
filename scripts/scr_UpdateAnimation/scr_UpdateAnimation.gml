/// This is a utility that helps an object update its animation each step
/// @arg animToUpdate


var anim = argument0;
var loop = anim.loop;
var endScript = anim.endOfAnimScript;

if(anim == noone) {
	return;
}

with(anim) {
	var substateAnim = substateAnimations[currentSubstate];
	var alternateComplete = scr_UpdateAlternateAnimation(substateAnim, other);
	if(alternateComplete) {
		currentSubstate = 0;
	}
	currentIndex += animSpeed;
	if(currentIndex >= animLength) {
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
