/// @description Insert description here
// You can write your code in this editor
activated = true;
frameTimer = 0;

with(other) {
	if(other.bounceDirection == 0) {
		var speedToAdd = ySpeed;
		if(input[DOWN]) {
			speedToAdd = 1;
		}
		bounceSpeed = speedToAdd * -2;
		bounceDirection = 0;
	} else {
		bounceSpeed = xSpeed * -2;
		bounceDirection = 1;
	}
	if(state == bounceState) {
		state = -1;
	}
	stateSwitch("BOUNCING");
}