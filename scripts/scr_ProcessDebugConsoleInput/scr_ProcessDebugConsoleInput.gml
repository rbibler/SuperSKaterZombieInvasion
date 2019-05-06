var input = argument0;
var split = scr_SplitString(input);
if(scr_StringStartsWith("room", input, true)) {
	global.gamePaused = false;
	instance_activate_all();
	var num = string_digits(input);
	room_goto(num);
}