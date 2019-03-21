ammoParent.ammoOnScreen--;
if(strikeEffectObject != noone) {
	instance_create_layer(x, y, "Ammo", strikeEffectObject);
}
instance_destroy();