if(stateNew) {
grounded = false;
xSpeed = flybackSpeed * obj_skater.image_xscale;
ySpeed = -flybackSpeed;
sprite_index = spr_slimeballJump;
}

scr_MoveAndCollide();

if(grounded) {
	scr_StateSwitch(s_MOVING);
	scr_ReduceMyHealth(0);	
	scr_AmIDead();
}