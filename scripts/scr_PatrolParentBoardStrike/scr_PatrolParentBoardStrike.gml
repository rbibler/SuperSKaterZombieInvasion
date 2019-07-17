if(stateID != s_DEAD and stateID != s_BOARD_STRUCK) {
	scr_StateSwitch(s_BOARD_STRUCK);
	scr_StateUpdate();
	shouldMove = false;
	characterHealth -= 33;
}