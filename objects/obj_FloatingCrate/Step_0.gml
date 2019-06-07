//var objToFollow = noone;
//if(stuckToJetSki) {
//	with(obj_skater) {
//		if(scr_OnTheJetSki()) {
//			objToFollow = obj_skater;
//		}
//	}
//	if(objToFollow == noone) {
//		objToFollow = instance_nearest(x, y, obj_Jetski);
//	}
//	if(sign(objToFollow.xSpeed) == currentDirection) {
//		x = objToFollow.bbox_right + (x - bbox_left);
//	} else {
//		stuckToJetSki = false;
//	}
//}

if(falling) {
	ySpeed += myGravity;
	y += ySpeed;
	if(place_meeting(x, y, obj_ForegroundWave)) {
		falling = false;
		path_start(pathToFollow, 0.1, path_action_continue, false);
	}
}