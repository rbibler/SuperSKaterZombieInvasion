/// This is a script that helps an object register an animation with its animation system
/// @arg animSprite
/// @arg animSpeed
/// @arg loop
/// @arg endOfAnimScript
/// @arg animName


var sprite = argument0;
var aSpeed = argument1;
var isLoop = argument2;
var endScript = argument3;
var name = argument4;
var numberOfFrames = argument5;

var anim = instance_create_layer(0, 0, "ANIMS", obj_StateAnimation);
with(anim) {
	animSpeed = aSpeed;
	loop = isLoop;
	// May drop this (since I have end of frame script array)
	endOfAnimScript = endScript;
	animName = name;
	animLength = numberOfFrames;
	substateAnimations[0] = scr_RegisterSubstateAnimation(0, NORMAL_ANIM_SPEED);
	scr_AddSpriteToSubstateAnimation(substateAnimations[0], sprite, 0);
}
return anim;

