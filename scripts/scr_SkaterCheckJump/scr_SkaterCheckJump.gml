// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
var jumpNow = false;
if(input[JUMP]) {
	if(jump == 0 and !lastInput[JUMP]) {
		jumpNow = true;
		if(!scr_OnTheJetSki()) {
			if(canJump > jumpFramesAllowance) {
				jumpNow = false;
			}
		}
	}
}  
if(grounded and jumpInputBuffer > 0) {
	jumpNow = true;
}
return jumpNow;