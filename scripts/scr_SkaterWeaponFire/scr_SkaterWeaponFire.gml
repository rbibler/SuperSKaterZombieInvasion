var trigger = false;
switch(currentWeapon) {
	case STANDARD_SLINGSHOT:
		trigger = input[SHOOT] and !lastInput[SHOOT];
	break;
	
	case AUTO_SLINGSHOT:
		trigger = input[SHOOT] and cooldown <= 0;
	break;
	
	case SPREAD_SLINGSHOT:
		trigger = input[SHOOT] and !lastInput[SHOOT];
	break;
}

if(trigger and ammoOnScreen < maxAmmoOnScreen) {
	scr_SkaterSlingshotFireScript();
}