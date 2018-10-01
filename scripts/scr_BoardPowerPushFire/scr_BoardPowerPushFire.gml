/// Script to handle the firing of the weapon
/// @arg weaponToFire
/// @arg crouchingFlag

var weapon = argument0
var crouchingFlag = argument1;
with(weapon) {
	if(currentCooldownCount <= 0) {
		if(ammoOnScreen < maxAmmoOnScreen) {
			// Fire the weapon
			currentCooldownCount = cooldownTime;
			ammoOnScreen++;
			var ammo = instance_create_layer(obj_skater.x, obj_skater.y, "AMMO", obj_board);
			ammo.weaponParent = weapon;
			other.weaponAnimCounter = weaponAnimCount;
			//if(crouchingFlag) {
				//ammo.sprite_index = spr_boardLow;
			//} else {
			//	ammo.sprite_index = spr_boardHigh;
			//}
			if(other.stateName == s_MOVING) {
				var currentAnimCount = other.stateTimer mod ANIMATION.NORMAL;
				if(other.image_index == 0) {
					if(currentAnimCount == (ANIMATION.NORMAL - 1)) {
						other.image_index = 3;
					}
				} else if(other.image_index == 1) {
					if(currentAnimCount == (ANIMATION.NORMAL - 1)) {
						other.image_index = 0;
					} else {
						other.image_index = 3;
					}
				}
			}
		} 
	}
}