if(sprite_index != spr_DestructibleCrateCollapse) {
	instance_create_layer(x, y, INTERACTIVES_LAYER, obj_ExplosionEffect);
	sprite_index = spr_DestructibleCrateCollapse;
}