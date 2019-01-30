with(obj_skater) {
	if(shielded) {
		return true;
	}
	if(currentPowerup == PB_SHIELD and global.diamondCount > 0) {
		scr_UpdateDiamondCount(-pbShieldCost);
		var currentAnimIndex  = currentAnimation.currentIndex;
		if(ds_map_exists(shieldAnimStateMap, stateName)) {
			scr_SetCurrentAnimation(ds_map_find_value(shieldAnimStateMap, stateName));
			scr_SetCurrentAnimationIndex(currentAnimation, currentAnimIndex);
		}
		shielded = true;
		alarm[0] = 1 * room_speed;
		return true;
	}
}

return false;