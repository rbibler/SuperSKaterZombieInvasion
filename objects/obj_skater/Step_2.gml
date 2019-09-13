/// @description Insert description here
// You can write your code in this editor

//SkaterHorizontalMovement();
event_inherited();
if(!verticalMovementRun) {
	scr_GeneralVerticalMovement();
}
//if(abs(xSpeed + xSpeedFraction) < 0.15) {
//	StopXMotion();
//}
x += carrySpeed;
carrySpeed = 0;

if(onSlope) {
	if(sign(xSpeed) == sign(lastXSpeed)) {
		slopeCounter++;
	} else {
		slopeCounter = 0;
	}
} else {
	slopeCounter = 0;
}


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
	return;
}
scr_StateUpdate();
scr_UpdateSkaterStateInfo();
image_xscale = facing;

lastY = y;

slopeTouchTimer--;
if(slopeTouchTimer < -3) {
	yMomentum = 0;
}

if(input[LEFT] or input[RIGHT]) {
	directionButtonTimer = 20;
}

if(onSlope) {
	if(sign(xSpeed) == sign(lastXSpeed)) {
		slopeCounter++;
	} else {
		slopeCounter = 0;
	}
} else {
	slopeCounter = 0;
}

wasGrounded = grounded;
wasGroundedRight = groundedRight;
wasGroundedLeft = groundedLeft;

if(global.debug) {
	//surface_save(application_surface, string(current_time) + ".png");
}
scr_UpdateCamera();

