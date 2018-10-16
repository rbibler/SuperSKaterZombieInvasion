/// This is a script that prints a debug message. Useful so that I can have one place to check the debug flag
/// @arg theMessage

var theMessage = argument0;

if(global.debug == true) {
	show_debug_message(argument0);
}