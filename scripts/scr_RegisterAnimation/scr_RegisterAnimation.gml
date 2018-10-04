/// This is a script that helps an object register an animation with its animation system
/// @arg animSprite
/// @arg animSpeed
/// @arg loop
/// @arg endOfAnimScript

var animSprite = argument0;
var animSpeed = argument1;
var loop = argument2;
var endOfAnimScript = argument3;

//add animation
    var height;
    if (!is_array(Animations))
    {
        //begin new array
        height = 0;
    }
    else
    {
        //add to existing array
        height = array_height_2d(Animations);
    }

    Animations[height, 0] = animSprite;
    Animations[height, 1] = animSpeed;
    Animations[height, 2] = loop;
	Animations[height, 3] = endOfAnimScript;

    //return ani number (for use to set to this animation)
    return height;