with(obj_skater) {
	if(shielded) {
		return true;
	}
	if(currentPowerup == PB_SHIELD and global.diamondCount > 0) {
		scr_UpdateDiamondCount(pbShieldCost);
		scr_SetCurrentSubstateAnimation(3, true);
		shielded = true;
		alarm[0] = 1 * room_speed;
		return true;
	}
}

return false;