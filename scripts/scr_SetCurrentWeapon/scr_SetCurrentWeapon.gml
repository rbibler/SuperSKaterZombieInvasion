/// This is a script that helps the skater set his current weapon.

with(obj_skater) {
	var curWeapon = argument0;
	currentWeapon = curWeapon;
	maxAmmoOnScreen = scr_GetMaxAmmo(currentWeapon);
}