if(argument_count > 0) {
	var collisionTop = argument[0];
	var collisionBottom = argument[1];
	var collisionMiddle = argument[2];
	var speedAtCollision = argument[3];
}

if(currentVehicle == JET_SKI and abs(speedAtCollision) > 4) {
	scr_StateSwitch(s_JET_SKI_PLASTERED);
	scr_SpawnJetSki(speedAtCollision, s_MOVING, image_index, image_xscale, x, y);
	canBoardVehicle = false;
	alarm[5] = 60;
}