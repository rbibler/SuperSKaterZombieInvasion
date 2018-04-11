if(stateNew) {
	sprite_index = spr_SkaterJump;
	image_index = 0;
}

// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and !input[LEFT] and !input[RIGHT]) {
	
	// If horiztonal direction is the same this frame as last, then need to slow down
	if(sign(xSpeed) == sign(lastXSpeed)) {
		xSpeed -= (0.125 * sign(xSpeed));
		// If that last slow down has flipped the direction, stop the skater
		if(sign(xSpeed) != sign(lastXSpeed)) {
			xSpeed = 0;
			xSpeedFraction = 0;
		}
	} else {
		xSpeed = 0;
		xSpeedFraction = 0;
	}
	
}

skaterVerticalCollisionCheck();
SkaterHorizontalCollisionCheck();
SkaterPlatformCollisions();

if(grounded) {
	show_debug_message("ON GROUND FROM FALLING");
	var tileEdge = floor(y / 16) * 16;
	y = tileEdge + 1;
	stateSwitch("IDLE");
}