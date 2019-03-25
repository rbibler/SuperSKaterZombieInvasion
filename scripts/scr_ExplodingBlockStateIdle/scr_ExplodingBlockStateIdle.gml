
/// This is the exploding block's idle state script
/// Exploding Block does nothing when idle, except wait

var hasExploded = stateVar[0];
var lastDripTime = stateVar[1];
var isDripping = stateVar[2];
var dripStartTime = stateVar[3];

if(stateNew) {
	if(hasExploded) {
		sprite_index = spr_ExplodingBlockDrip;
	} else {
		sprite_index = spr_ExplodingBlockIdle;
	}
	image_index = 0;
}

if(hasExploded) {
	if(isDripping) {
		var timeElapsed = stateTimer - dripStartTime;
		if(timeElapsed >= 10 and timeElapsed < 20) {
			image_index = 2;
		} else if(timeElapsed >= 20) {
			scr_ExplodingBlockSpawnDrip();
			image_index = 0;
			lastDripTime = stateTimer;
			isDripping = false;
		}
	} else if(stateTimer - lastDripTime >= (dripRateInSeconds * room_speed)) {
		isDripping = true;
		dripStartTime = stateTimer;
		image_index = 1;
	}
} else {
	// If skater breaches the threshold, menace!
	var skaterDistance = abs(obj_skater.x - x);
	
	if(skaterDistance < attackThreshold) {
		scr_StateSwitch(s_MENACING);
	}
}

stateVar[0] = hasExploded;
stateVar[1] = lastDripTime;
stateVar[2] = isDripping;
stateVar[3] = dripStartTime