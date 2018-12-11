/// This is a script that helps the skater pick up a weapon. If the skater already has enough weapons
/// or if they already have the weapon in question, nothing will happen.
/// @arg weapon type

var weapon = argument0;
var weaponInstanceID = instance_find(argument0, 0);


if(weaponInstanceID == noone) {
	weaponInstanceID = instance_create_layer(0, 0, "WEAPONS", argument0);
}

scr_SkaterSwitchWeapon(weaponInstanceID);
