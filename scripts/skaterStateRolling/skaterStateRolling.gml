if(stateNew) {
	sprite_index = spr_SkaterIdle;
	image_index = 0;
}


// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0) {
	if(!onSlope) {
		// If horiztonal direction is the same this frame as last, then need to slow down
		if(sign(xSpeed) == sign(lastXSpeed)) {
			xSpeed -= (0.35 * sign(xSpeed));
			// If that last slow down has flipped the direction, stop the skater
			if(sign(xSpeed) != sign(lastXSpeed)) {
				stateSwitch("IDLE");
			}
		} else {
			stateSwitch("IDLE");
		}
	}
}

skaterVerticalCollisionCheck();

if(!grounded) {
	stateSwitch("FALLING");
}
