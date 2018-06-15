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
			var xOffset = 0;
			var yOffset = 0;
			switch(other.state) {
				case other.idleState:
				case other.skateState:
					xOffset = projOffsetStandingX;
					yOffset = projOffsetStandingY;
				break;
				case other.jumpState:
				case other.fallState:
					xOffset = projOffsetJumpingX;
					yOffset = projOffsetJumpingY;
					break;
				case other.crouchState:
					xOffset = projOffsetCrouchingX;
					yOffset = projOffsetCrouchingY;
					break;
			}
			xOffset += other.x;
			yOffset += other.y;
			var ammo = instance_create_layer(xOffset, yOffset, "AMMO", ammoType);
			ammo.ammoDirection = other.myDirection;
			other.weaponAnimCounter = weaponAnimCount;
		}
	}
}