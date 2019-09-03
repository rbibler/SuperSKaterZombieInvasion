if(input[ACTION] and !lastInput[ACTION]) {
	show_debug_message("IT is here");
}
if(scr_HaveIPressedThisRecently(INPUT_TRICK, attackBufferTime)) {
	scr_StateSwitch(s_ATTACKING);
}
