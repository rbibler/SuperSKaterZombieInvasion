if(stateName != s_DEAD and stateName != s_BOARD_STRUCK) {
	scr_StateSwitch(s_BOARD_STRUCK);
	scr_StateUpdate();
	shouldMove = false;
}