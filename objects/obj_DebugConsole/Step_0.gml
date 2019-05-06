/// @description Insert description here
// You can write your code in this editor
var keyPress = keyboard.activeKey;
switch(state) {
	case DC_IDLE:
		state = DC_STARTED;
	break;
	case DC_STARTED:
		currentInput += keyPress;
	break;
	
}