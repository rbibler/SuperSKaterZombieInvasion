if(isShooting) {
	return false;
}
var trigger = false;
switch(currentWeapon) {
	case STANDARD_SLINGSHOT:
		trigger = input[SHOOT] and !lastInput[SHOOT] and cooldown <= 0;
	break;
	
	case AUTO_SLINGSHOT:
		
		trigger = input[SHOOT] and cooldown <= 0 and global.diamondCount > 0;
		if(trigger) {
			shootCounter++;
		}
	break;
	
	case SPREAD_SLINGSHOT:
		trigger = input[SHOOT] and !lastInput[SHOOT] and cooldown <= 0 and global.diamondCount > 0;
	break;
}

if(trigger and ammoOnScreen < maxAmmoOnScreen) {
	isShooting = true;
	scr_SkaterSlingshotFireScript();
	return true;
}

return false;