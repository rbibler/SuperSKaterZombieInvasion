/// @description Insert description here
// You can write your code in this editor

curChar = keyboard_lastchar;
if(curChar == lastChar) {
	if(frameTimer - charDownTime >= keyRepeatTime) {
		activeKey = curChar;
		charDownTime = frameTimer;
	} else {
		activeKey = "";
	}
} else {
	activeKey = curChar;
	charDownTime = frameTimer;
}
show_debug_message("Active key: " + activeKey);
show_debug_message("Cur char: " + curChar);
show_debug_message("Last char: " + lastChar);
show_debug_message("Key last char: " + keyboard_lastchar);
lastChar = curChar;
