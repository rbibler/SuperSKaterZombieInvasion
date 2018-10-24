if(instance_exists(obj_skater)) {
	with(obj_skater) {
		scr_GetCollisionTiles();
	}
	
}
global.lastCheckpoint = instance_find(obj_Checkpoint, 0);