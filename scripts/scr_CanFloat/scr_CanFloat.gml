/// This is a script that helps the skater determine if he can float or not.


return currentPowerup != noone and currentPowerup.object_index == obj_rocketBoard and 
	currentPowerup.fuelRemaining > 0 and !lastInput[JUMP];