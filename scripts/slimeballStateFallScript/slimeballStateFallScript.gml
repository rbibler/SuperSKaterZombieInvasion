if(stateNew) {
	sprite_index = spr_slimeballJump;
	image_index = 0;
}
MoveAndCollide();
if(grounded) {
	stateSwitch("MOVING");
}