var inputToPrint = argument0;
show_debug_message(scr_DecToBinString(inputToPrint, 10, 2));
if(inputToPrint & INPUT_UP) {
	show_debug_message("    UP");
}
if(inputToPrint & INPUT_DOWN) {
	show_debug_message("    DOWN");
	
}
if(inputToPrint & INPUT_LEFT) {
	show_debug_message("    LEFT");
}
if(inputToPrint & INPUT_RIGHT) {
	show_debug_message("    RIGHT");
	
}
if(inputToPrint & INPUT_TRICK) {
	show_debug_message("    TRICK");
}
