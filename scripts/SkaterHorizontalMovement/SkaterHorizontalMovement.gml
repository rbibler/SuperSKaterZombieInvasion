if(abs(xSpeed) < 0.15) {// or (grounded and weaponAnimCounter > 0 and currentWeapon.freezeSkater)) {
	xSpeed = 0;
	xSpeedFraction = 0;
}

x += xSpeed;