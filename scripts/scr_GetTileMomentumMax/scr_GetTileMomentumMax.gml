var tileId = argument0;

if(instance_exists(obj_slopeController)) {
	with(instance_find(obj_slopeController, 0)) {
		if(tileId >= 0 and tileId <= array_length_1d(slopeMomentumMax)) {
			return slopeMomentumMax[tileId];
		}
	}
}
return 0;