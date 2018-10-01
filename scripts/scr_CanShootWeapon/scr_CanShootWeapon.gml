/// This is a script that helps the Skater determine if he can shoot his weapon.
/// @arg weaponToShoot

var weaponToShoot = argument0;

switch(weaponToShoot.object_index) {
	case obj_BoardPowerPush:
		return input[SHOOT] and !lastInput[SHOOT];
	break;
	
	case obj_Slingshot:
		return input[SHOOT] and !lastInput[SHOOT];
	break;
}


