/// This is a script that helps an object set an alternate animation (for attacking, say)
/// @arg sprite
/// @arg animLength

var sprite = argument0;
var alternateLength = argument1;

with(currentAnim) {
	alternateSprite = sprite;
	alternateEndFrame = (currentFrame + alternateLength) mod animLength;
	chooseAlternate = true;
}