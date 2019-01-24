/// @description This is what happens when you're hit with a slingshot... you die!
/// @arg ammoType

var ammo = argument0;

// Only want to switch states if this is the first hit
if(state != stateDead) {
	if(ammo.object_index == obj_slingshotRock or ammo.object_index == obj_board) {
		// Insta death!
		scr_StateSwitch("DEAD");
		
		// Nice job player!
		score += 10;
	}
}
