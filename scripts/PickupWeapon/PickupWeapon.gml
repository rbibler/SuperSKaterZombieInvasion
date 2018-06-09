/// This is a script that helps the skater pick up a weapon. If the skater already has enough weapons
/// or if they already have the weapon in question, nothing will happen.
/// @arg weapon type

var weapon = argument0;
var weaponInstanceID = instance_find(argument0, 0);
var weaponInventoryInstanceID = noone;
var firstEmptyIndex = -1;

if(weaponInstanceID == noone) {
	weaponInstanceID = instance_create_layer(0, 0, "WEAPONS", argument0);
}


for(var i = 0; i < weaponInventorySize; i++) {
	weaponInventoryInstanceID = weaponInventory[i];
	if(weaponInventoryInstanceID == noone) {
		if(firstEmptyIndex == -1) {
			firstEmptyIndex = i;
		}
	} else if(weaponInventoryInstanceID.object_index == argument0) {
		SkaterSwitchWeapon(weaponInventoryInstanceID);
		currentWeaponIndex = i;
		return;
	} 
}

if(firstEmptyIndex != -1) {
	weaponInventory[firstEmptyIndex] = weaponInstanceID;
	currentWeaponIndex  = firstEmptyIndex;
	SkaterSwitchWeapon(weaponInstanceID);
}