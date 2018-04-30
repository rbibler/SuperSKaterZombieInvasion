/// Script to handle the firing of the weapon
/// @arg weaponToFire
/// @arg crouchingFlag

var weapon = argument0
var crouchingFlag = argument1;
with(weapon) {
	if(currentCooldownCount <= 0) {
		if(ammoOnScreen < maxAmmoOnScreen and ammoCount > 0) {
			// Fire the weapon
			currentCooldownCount = cooldownTime;
			ammoOnScreen++;
			ammoCount--;
			var xOffset = other.x + (projOffsetX * other.myDirection);
			var yOffset = other.y + projOffsetYNormal;
			if(crouchingFlag) {
				yOffset = other.y + projOffsetYCrouch;
			}
			var ammo = instance_create_layer(xOffset, yOffset, "AMMO", ammoType);
			ammo.ammoDirection = other.myDirection;
			other.weaponAnimCounter = weaponAnimCount;
		}
	}
}