if(groundedMiddle and groundTile[MIDDLE] < array_length_1d(obj_slopeController.tileFriction)) {
	return obj_slopeController.tileFriction[groundTile[MIDDLE]];
}
return defaultAccel;