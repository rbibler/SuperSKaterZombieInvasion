/// @description Insert description here
// You can write your code in this editor

//SkaterHorizontalMovement();
if(!verticalMovementRun) {
	GeneralVerticalMovement();
}
//if(abs(xSpeed + xSpeedFraction) < 0.15) {
//	StopXMotion();
//}
x += carrySpeed;
carrySpeed = 0;

lastXSpeed = xSpeed;
SaveInput();

if(infected) {
	if(frameTimer mod 360 == 0) {
		stateSwitch("HIT_IMMOBILIZED");
		health -= 5;
	}
}

stateUpdate();

image_xscale = facing;
