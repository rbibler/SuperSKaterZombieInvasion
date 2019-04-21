if(stateNew) {
	scr_StopXMotion();
	scr_StopYMotion();
	scr_ZeroInputs();
}


scr_MoveAndCollide();

// CHECK FOR STATE CHANGE

if(grounded) {
	scr_StateSwitch(s_MOVING);
}