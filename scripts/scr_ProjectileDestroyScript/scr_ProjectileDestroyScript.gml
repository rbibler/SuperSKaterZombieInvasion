ammoParent.ammoOnScreen--;
if(strikeEffectObject != noone) {
	instance_create_layer(x, y, "AMMO", strikeEffectObject);
}
instance_destroy();