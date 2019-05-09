/// This is a script that helps an object register an animation with its animation system
/// @arg animSprite
/// @arg animSpeed
/// @arg loop
/// @arg endOfAnimScript
/// @arg animName
/// @arg isHitBox

var sprite = argument0;
var aSpeed = argument1;
var isLoop = argument2;
var endScript = argument3;
var name = argument4;
var hitBox = argument5;

var anim = instance_create_layer(0, 0, ANIMS_LAYER, obj_Animation);
with(anim) {
	animSpeed = aSpeed;
	sprite_index = sprite;
	loop = isLoop;
	isHitBox = hitBox;
	// May drop this (since I have end of frame script array)
	endOfAnimScript = endScript;
	animName = name;
	
	animLength = image_number;
}
return anim;

