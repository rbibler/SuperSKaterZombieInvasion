/// This is a script that helps the skater determine if he can float or not.
var canFloat = currentPowerup == PB_ROCKET and global.diamondCount > 0;
if(grounded) {
	canFloat = canFloat and (input[JUMP] and !lastInput[JUMP]);
} else if(stateName != s_BLAST_OFF) {
	canFloat = canFloat and !lastInput[JUMP];
}

return canFloat;