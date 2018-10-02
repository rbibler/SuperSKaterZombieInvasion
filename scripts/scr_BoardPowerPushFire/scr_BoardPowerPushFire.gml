/// Script to handle the firing of the weapon
/// @arg weaponToFire
/// @arg crouchingFlag

var weapon = argument0
var crouchingFlag = argument1;

var didFire = false;
with(weapon) {
	if(currentCooldownCount <= 0) {
		if(ammoOnScreen < maxAmmoOnScreen) {
			// Fire the weapon
			currentCooldownCount = cooldownTime;
			ammoOnScreen++;
			var ammo = instance_create_layer(obj_skater.x, obj_skater.y, "AMMO", obj_board);
			ammo.weaponParent = weapon;
			other.weaponAnimCounter = weaponAnimCount;
			didFire = true;
			//if(crouchingFlag) {
				//ammo.sprite_index = spr_boardLow;
			//} else {
			//	ammo.sprite_index = spr_boardHigh;
			//}
		} 
	}
}

if(didFire) {
	ignoreInput = true;
	image_index = 0;
	stateTimer = 0;
	if(grounded) {
		StopXMotion();
	}
}