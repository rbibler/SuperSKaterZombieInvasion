/// This is a script that helps an object update its alternate animation if it's attacking or something like that
/// @arg animationToUpdate
/// @arg parentObject

var animationToUpdate = argument0;
var parentObject = argument1;

with(animationToUpdate) {
	var currentSprite = sprites[0];
	if(animLength > 0) {
		currentIndex = (animSpeed + currentIndex) mod animLength;
		currentSprite = sprites[currentIndex];
	}
	if(parentObject.sprite_index != currentSprite) {
		parentObject.sprite_index = currentSprite;
	}
	if(currentIndex >= animLength) {
		currentIndex = 0;
		return true;
	} else {
		return false;
	}
}