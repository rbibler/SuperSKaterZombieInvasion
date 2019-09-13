var input = argument0;
var split = scr_SplitString(input, true);
var argCount = array_length_1d(split);
if(argCount <= 0) {
	return;
}
var cmd = split[0];
switch(cmd) {
	case "room":
		var roomNum = room;
		var arg = room;
		var checkpointReached = false;
		for(var i = 1; i < argCount; i++) {
			arg = string_digits(split[i]);
			if(string_length(arg) > 0) {
				roomNum = real(arg);
			} else if(split[i] == "c") {
				checkpointReached = true;
			}
		}
		scr_UnpauseGame();
		scr_SwitchRooms(roomNum, checkpointReached);
	break;
	case "fps":
		var arg = string_digits(split[1]);
		room_speed = real(arg);
		break;
	case "godmode":
		global.godmode = !global.godmode;
		show_debug_message("This is god mode");
	break;
}
