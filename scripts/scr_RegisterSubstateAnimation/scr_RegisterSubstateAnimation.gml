/// This is a script that helps create substate animations
/// @arg numberOfFrames
/// @arg animSpeed

var numberOfFrames = argument0;
var animSpeed = argument1;

var anim = instance_create_layer(0, 0, "ANIMS", obj_SubstateAnimation);
anim.animLength = numberOfFrames;
anim.animSpeed = animSpeed;
return anim;