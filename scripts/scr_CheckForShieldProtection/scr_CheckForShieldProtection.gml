/// This is a script that helps the skater determine if he should put up his shield
/// @arg attacker

var attacker = argument0;

with(obj_skater) {
	if(shielded or stateName == s_ON_FOOT_SHIELD) {
		return true;
	}
	if(currentPowerup == PB_SHIELD and global.diamondCount > 0) {
		scr_SetFacingSwitchEnable(false);
		shielded = true;
		scr_UpdateDiamondCount(-pbShieldCost);
		if(!grounded) {
			if(scr_IsSkateState(stateName)) {
				scr_StateSwitch(s_JUMP_SHIELD);
			} else {
				scr_StateSwitch(s_ON_FOOT_JUMP_SHIELD);
			}
		} else {
			scr_StateSwitch(s_ON_FOOT_SHIELD);
		}
		ignoreSwitch = true;
		currentAnimation.isDone = false;
		if(attacker.x < x) {
			facing = -1;
		} else if(attacker.x > x) {
			facing = 1;
		}
		return true;
	}
}

return false;