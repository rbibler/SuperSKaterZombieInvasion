/// This is a script that helps the trick algorithm determine if some shit happened
/// @arg directionToCheck
/// @arg curInput
/// @arg lastInput
/// @arg freshPress

var directionToCheck = argument0;
var curInput = argument1;
var lastInput = argument2;
var freshPress = argument3;
var didItHappen = false;
var dir = 0;
switch(directionToCheck) {
	case FORWARD:
		dir = facing == 1 ? INPUT_RIGHT : INPUT_LEFT;
	break;
	case BACK:
		dir = facing == 1 ? INPUT_LEFT : INPUT_RIGHT;
	break;
	case UP:
		dir = INPUT_UP;
	break;
	case DOWN:
		dir = INPUT_DOWN;
	break;
}

if(scr_CheckInputPressed(curInput, dir)) {
	didItHappen = true;
	if(freshPress) {
		didItHappen = !scr_CheckInputPressed(lastInput, dir);
	}
} 

return didItHappen;