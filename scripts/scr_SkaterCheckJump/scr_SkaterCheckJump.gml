// Skater can jump if jump is pressed fresh on this frame and skater isn't already jumping
var jumpNow = false;
var jumpPressed = input[JUMP] and !lastInput[JUMP];
if(jumpPressed or jumpInputBuffer > 0) {
	if(jump == 0) {
		jumpNow = true;
		if(!scr_OnTheJetSki()) {
			if(canJump > jumpFramesAllowance) {
				jumpNow = false;
			}
		}
	}
}  
//if(grounded or jumpInputBuffer > 0) {
//	jumpNow = true;
//}
return jumpNow;