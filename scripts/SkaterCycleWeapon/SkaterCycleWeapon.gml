/// This is a script that helps the skater cycle through the weapons in his inventory

var weapon = noone;
var count = 0;
var newWeaponIndex = currentWeaponIndex;
while(weapon == noone and count < 8) {
	newWeaponIndex++;
	if(newWeaponIndex >= weaponInventorySize) {
		newWeaponIndex = 0;
	}
	weapon = weaponInventory[newWeaponIndex];
	count++;
}
if(weapon != noone) {
	SkaterSwitchWeapon(weapon);
	currentWeaponIndex = newWeaponIndex;
}
