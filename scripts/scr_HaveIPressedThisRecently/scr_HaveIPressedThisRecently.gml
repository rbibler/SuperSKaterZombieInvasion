/// This is a script that helps the skater determine if the player has pressed an input within a given time
/// @arg inputToCheck
/// @arg numberOfFrames

var inputToCheck = argument0;
var numberOfFrames = argument1;
var pressedIt = -1;

for(var i = 0; i < numberOfFrames; i++) {
	var myInput = scr_PeekBufferFromLastWrite(i);
	if(scr_CheckInputPressed(myInput, inputToCheck)) {
		pressedIt = i;
	} else if(pressedIt >= 0) {
		return true;
	}
}

return false;