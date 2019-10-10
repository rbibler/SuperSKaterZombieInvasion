if(stateNew) {
grounded = false;
xSpeed = boardSmackSpeed * obj_skater.image_xscale;
ySpeed = -boardSmackSpeed;
sprite_index = spr_slimeballJump;
}

scr_MoveAndCollide();

if(grounded) {
	scr_StateSwitch(s_MOVING);
	scr_ReduceMyHealth(0);	
	scr_AmIDead();
}