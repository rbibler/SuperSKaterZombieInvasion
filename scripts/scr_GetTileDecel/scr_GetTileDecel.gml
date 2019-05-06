var tileId = argument0;
var tileHorizIndex = argument1;

if(instance_exists(obj_slopeController)) {
	with(instance_find(obj_slopeController, 0)) {
		if(tileId >= 0 and tileId <= array_height_2d(tileDecel)) {
			if(tileHorizIndex >= 0 and tileHorizIndex <= array_length_2d(tileDecel, tileId)) {
				return tileDecel[tileId, tileHorizIndex];
			}
		}
	}
}
return 0;