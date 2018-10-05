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
			var ammo = instance_create_layer(obj_skater.x, obj_skater.y, "AMMO", obj_PowerPushBall);
			ammo.weaponParent = weapon;
			ammo.ammoDirection = other.myDirection;
			ammo.image_xscale = ammo.ammoDirection;
			other.weaponAnimCounter = weaponAnimCount;
			didFire = true;
		} 
	}
}

if(didFire) {
	image_index = 0;
	stateTimer = 0;
	hasWeaponImmunity = true;
	scr_SetCurrentAnimation(powerPushAnimIdle);
}