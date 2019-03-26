// SETUP NEW STATE
if(stateNew) {
// set a timer up. We'll be dying for 30 frames
	stateVar[0] = 30;
	
	// Can't move, we're dying
	xSpeed = 0;
	ySpeed = 0;
	xSpeedFraction = 0;
	ySpeedFraction = 0;
}

// MOVE AND COLLIDE



// ANIMATE
// Every five frames, toggle the animation
if(stateVar[0] mod (60 / 5) == 0) {
	stateVar[1]++;
	image_index = stateVar[1] mod 2;
}

// CHECK FOR STATE CHANGES
// Decrement timer
stateVar[0]--;
		
// When it reaches zero... die
if(stateVar[0] <= 0) {
	instance_destroy();
}
