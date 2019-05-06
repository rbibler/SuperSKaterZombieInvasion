/// @description Insert description here
// You can write your code in this editor
var keyPress = keyboard_lastchar;
switch(state) {
	case DC_IDLE:
		currentInput = keyPress;
		state = DC_STARTED;
	break;
	case DC_STARTED:
		currentInput += keyPress;
	break;
	
}