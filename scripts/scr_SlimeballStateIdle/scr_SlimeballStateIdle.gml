if(stateNew) {
	sprite_index = spr_slimeballIdle;
	scr_StopXMotion();
	scr_StopYMotion();
	scr_ZeroInputs();
}

harmless = true;

scr_MoveAndCollide();

// CHECK FOR STATE CHANGE

if(stateTimer >= recoveryTimeInSeconds * room_speed) {
	scr_StateSwitch(s_MOVING);
}