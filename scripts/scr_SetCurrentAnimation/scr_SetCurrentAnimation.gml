/// This is a script that helps an object set its current animation. It also keeps tracking of the previous animation.
/// @arg animation

var animation = argument0;

if(currentAnimation == animation) {
	return;
}

previousAnimation = currentAnimation;
currentAnimation = animation;

currentAnimation.currentSubstate = 0;
currentAnimation.currentIndex = 0;
currentAnimation.isDone = false;
if(sprite_index != currentAnimation.sprite_index)
{
	sprite_index = currentAnimation.sprite_index;
}
scr_UpdateStateAnimation(currentAnimation);
