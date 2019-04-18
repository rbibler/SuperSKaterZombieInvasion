/// @description This is what happens when you're hit with a slingshot... you die!
/// @arg ammoType

var ammo = argument0;


if(scr_Chance(50)) {
	// Only want to switch states if this is the first hit
	if(state != stateDead) {
		scr_StateSwitch(s_DEAD);
		return true;
	}
} else {
	scr_StateSwitch(s_DEFENDING);
	return false;
}
