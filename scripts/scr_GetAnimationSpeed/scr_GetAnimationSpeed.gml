///this is a script that helps an object get the current animation speed in frames per... frame.
/// @arg animation

var animation = argument0;
with(animation) {
	var substate = substateAnimations[currentSubstate];
	var animSpeed = substate.animSpeed;
	switch(animSpeed) {
		case FAST_ANIM_SPEED:
			return FAST_ANIM_SPEED_FRAME_RATE;
		case NORMAL_ANIM_SPEED:
			return NORMAL_ANIM_SPEED_FRAME_RATE;
		case SUPER_FAST_ANIM_SPEED:
			return SUPER_FAST_ANIM_SPEED_FRAME_RATE;
		case VERY_SLOW_ANIM_SPEED:
			return VERY_SLOW_ANIM_SPEED_FRAME_RATE;
		default:
			return 0;
	}
}