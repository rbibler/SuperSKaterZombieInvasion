// SETUP NEW STATE

if(stateNew) {
	sprite_index = spr_slimeballJump;
	image_index = 0;
	scr_StopXMotion();
	scr_StopYMotion();
	ySpeed = -4;
	xSpeed = sign(x - obj_skater.x) * 5;
	grounded = false;
	scr_ZeroInputs();
	moveDirOnRestart = xSpeed > 0 ? LEFT : RIGHT; 
}

scr_MoveAndCollide();


// CHECK FOR STATE TRANSISTIONS
if(grounded) {
	if(characterHealth <= 0) {
		scr_StateSwitch(s_DEAD);
	} else {
		scr_StateSwitch(s_IDLE);
	}
}