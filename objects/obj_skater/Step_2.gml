/// @description Insert description here
// You can write your code in this editor

//SkaterHorizontalMovement();
if(!verticalMovementRun) {
	scr_GeneralVerticalMovement();
}
//if(abs(xSpeed + xSpeedFraction) < 0.15) {
//	StopXMotion();
//}
x += carrySpeed;
carrySpeed = 0;

lastXSpeed = xSpeed;
scr_SaveInput();

if(infected) {
	if(frameTimer mod 360 == 0) {
		//scr_SkaterHit(noone, 15);
	}
}
if(isDead) {
	scr_StartAtCheckpoint();
	isDead = false;
}
scr_StateUpdate();
image_xscale = facing;
yMomentum += (y - lastY);
lastY = y;

slopeTouchTimer--;

wasGrounded = grounded;
wasGroundedRight = groundedRight;
wasGroundedLeft = groundedLeft;

if(onEdge) {
	show_debug_message("I'm on edge");
} else {
	show_debug_message("I'm not on edge");
}