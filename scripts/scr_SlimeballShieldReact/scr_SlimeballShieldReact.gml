if(ignoreShield) {
	return;
}
alarm[0] = 20;
ignoreShield = true;
moveDirOnRestart = input[LEFT] ? FACE_RIGHT : FACE_LEFT;
scr_StateSwitch(s_MOVING);