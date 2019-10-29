// Set up empty layers
if(!layer_exists(CONTROLLER_LAYER)) {
	layer_create(0, CONTROLLER_LAYER);
}
if(!layer_exists(WEAPONS_LAYER)) {
	layer_create(0, WEAPONS_LAYER);
}
if(!layer_exists(AMMO_LAYER)) {
	layer_create(0, AMMO_LAYER);
}
if(!layer_exists(ANIMS_LAYER)) {
	layer_create(0, ANIMS_LAYER);
}
if(!layer_exists(ENEMY_OVERLAY_LAYER)) {
	var enemyLayerDepth = 0;
	if(layer_exists(ENEMIES_LAYER)) {
		enemyLayerDepth = layer_get_depth(ENEMIES_LAYER);
	}
	layer_create(enemyLayerDepth - 1, ENEMY_OVERLAY_LAYER);
}