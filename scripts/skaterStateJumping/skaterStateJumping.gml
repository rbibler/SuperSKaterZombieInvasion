if(stateNew) {
	sprite_index = spr_SkaterJump;
	ySpeed = jumpSpeed;
	// Set flag so we know the skater is jumping
	jump = 1;
	onSlopeLeft = false;
	onSlopeRight = false;
	grounded = false;
}

SkaterVerticalMovement();
SkaterHorizontalInput();

if(jump == 1 && ySpeed > 0){
	// Start falling. Can't set jump to zero, because that'll reset the can jump flag
	jump = 2;
	ySpeed = 0;
	stateSwitch("FALLING");
}
