/// This is a script that helps the skater switch weapons
/// @arg weaponID

var weaponId = argument0;

if(currentWeapon == weaponId) {
	return;
}

currentWeapon = weaponId;