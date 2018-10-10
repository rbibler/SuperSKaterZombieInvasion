/// This is a script that helps an object register an animation with its animation system
/// @arg animSprite
/// @arg animSpeed
/// @arg loop
/// @arg endOfAnimScript
/// @arg animName

var animSprite = argument0;
var animSpeed = argument1;
var loop = argument2;
var endOfAnimScript = argument3;
var animName = argument4;

var anim = instance_create_layer(0, 0, "ANIMS", obj_Animation);
anim.animSpeed = animSpeed;
anim.sprite_index = animSprite;
anim.loop = loop;

// May drop this (since I have end of frame script array)
anim.endOfAnimScript = endOfAnimScript;
anim.animName = animName;

// Ensure there is an array to hold all possible end of frame scripts
for(var i = 0; i <= anim.image_number + 1; i++) {
	anim.scripts[i] = noone;
}
anim.animLength = anim.image_number;
return anim;

