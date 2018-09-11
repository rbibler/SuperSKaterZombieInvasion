/// Skater's idle state. 
/* 
*	Exits: 
*		- Left or right movement if on ground
*		- Jumping
*		- Crouching
*		- Hit
*		- Falling
*/

// Reset the animation and the jump counter if entering the state
if(stateNew) {
	sprite_index = spr_shark;
	image_index = 0;
	
}


var dist = abs(x - obj_skater.x);
if(dist < 50) {
	stateSwitch("JUMPING");
}

