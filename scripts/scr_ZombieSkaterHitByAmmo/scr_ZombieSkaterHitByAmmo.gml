/// @description This is what happens when you're hit with a slingshot... you die!
/// @arg ammoType

var ammoType = argument0;

// Only want to switch states if this is the first hit
if(stateID != s_DEAD and stateID != s_HIT) {
	scr_StateSwitch("HIT");
	
}
