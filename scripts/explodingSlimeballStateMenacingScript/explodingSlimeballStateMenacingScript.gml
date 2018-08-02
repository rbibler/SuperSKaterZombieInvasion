if(stateNew) {
	sprite_index = spr_slimeballMenacing;
	xSpeed = 0;
	xSpeedFraction = 0;
	image_index = 0;
	if(obj_skater.x < x) {
		image_xscale = 1;
	} else {
		image_xscale = -1;
	}
	stateVar[0] = false;
	stateVar[1] = 0;
	stateVar[2] = false;
	stateVar[3] = 0;
	
}


if(stateVar[2] == false and stateTimer mod 15 == 0) {
	image_xscale = -image_xscale;
	stateVar[1]++;
	if(stateVar[1] >= 3) {
		if((obj_skater.x < x and image_xscale == -1) or (obj_skater.x > x and image_xscale == 1)) {
			stateVar[1]--;
		} else {
			stateVar[2] = true;
			stateVar[3] = stateTimer;
		}
	}
}


var dist = point_distance(obj_skater.x, obj_skater.y, x, y);
if(dist <= explodeDistance) {
	stateVar[0] = true;
}


if(stateVar[2] == true and stateTimer - stateVar[3] >= 30) {
	if(stateVar[0] == true) {
		stateSwitch("DEAD");
	} else {
		stateSwitch("IDLE");
	}
} 