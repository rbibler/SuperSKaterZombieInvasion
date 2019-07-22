if(input[RIGHT] and input[TRICK]) {
	show_debug_message("Both!");
}
var trick = scr_CheckForTricks();
if(trick != NO_TRICK) {
	currentTrick = trick;
	scr_StateSwitch(s_TRICK_FLIPTRICK);
}
