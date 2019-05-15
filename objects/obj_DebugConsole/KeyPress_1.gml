/// @description Insert description here
// You can write your code in this editor

switch(state) {
	case DC_IDLE:
		state = DC_STARTED;
	break;
	case DC_STARTED:
		currentInput = keyboard_string;
	break;
	
}