/// @description Insert description here
// You can write your code in this editor

//SkaterHorizontalMovement();
if(!verticalMovementRun) {
	SkaterVerticalMovement();
}
if(abs(xSpeed + xSpeedFraction) < 0.15) {
	xSpeed = 0;
	xSpeedFraction = 0;
}
lastXSpeed = xSpeed;
SaveInput();
stateUpdate();

