if(stateNew) {
grounded = false;
}

scr_MoveAndCollide();

if(grounded) {
	scr_StateSwitch(s_MOVING);
	scr_ReduceMyHealth(0);	
	scr_AmIDead();
}