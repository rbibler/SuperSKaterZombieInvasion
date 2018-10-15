/// Script to handle the firing of the weapon
/// @arg weaponToFire
/// @arg crouchingFlag

var weapon = argument0
var crouchingFlag = argument1;
var diag = input[UP] and (input[LEFT] or input[RIGHT]);
var didFire = false;
with(weapon) {
	if(currentCooldownCount <= 0) {
		if(ammoOnScreen < maxAmmoOnScreen) {
			// Fire the weapon
			currentCooldownCount = cooldownTime;
			ammoOnScreen++;
			var ammoOffsetX = weapon.ammoOffsetX * sign(other.myDirection);
			var ammoOffsetY = weapon.ammoOffsetY;
			var ammo = instance_create_layer(obj_skater.x + ammoOffsetX, obj_skater.y + ammoOffsetY, "AMMO", obj_PowerPushBall);
			ammo.weaponParent = weapon;
			ammo.ammoDirection = other.myDirection;
			ammo.image_xscale = ammo.ammoDirection;
			other.weaponAnimCounter = weaponAnimCount;
			didFire = true;
			if(diag) {
				ammo.ySpeed = -ammo.ammoSpeed;
			}
			var effect = instance_create_layer(obj_skater.x, obj_skater.y, "ANIMS", weapon.attackEffectAnimation);
			effect.running = true;
		} 
	}
}

if(didFire) {
	canShoot = false;
	image_index = 0;
	stateTimer = 0;
	hasWeaponImmunity = true;
	scr_TransitionToShootingPowerPush();
}