/// This is a script that helps the skater determine if he can float or not.
var canFloat = currentPowerup == PB_ROCKET and global.diamondCount > 0 and !lastInput[JUMP];



return canFloat;