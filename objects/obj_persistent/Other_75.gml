/// @description Will notify if gamepad connected
// You can write your code in this editor

switch(async_load[? "event_type"]) {
	case "gamepad discovered":
		gamepad = async_load[? "pad_index"];
	break;
		case "gamepad lost":
		gamepad = -1;
	break;
}
