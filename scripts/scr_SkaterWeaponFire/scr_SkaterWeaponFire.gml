/// This is a script that manages everything to do with firing a weapon for the skater.

// Check if we should fire a weapon
if(currentWeapon != noone) {
	var shootNow = scr_CanShootWeapon(currentWeapon);
	if(shootNow) {
		script_execute(currentWeapon.fireScript, currentWeapon, stateName == s_CROUCHING);
	}
}