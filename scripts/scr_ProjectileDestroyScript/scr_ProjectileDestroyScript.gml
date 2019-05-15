ammoParent.ammoOnScreen--;
if(strikeEffectObject != noone) {
	instance_create_layer(x, y, AMMO_LAYER, strikeEffectObject);
}
instance_destroy();