/// @description Insert description here
// You can write your code in this editor
with(other) {
	script_execute(hitScript, other.hitDamage, HIT_TYPE.TRICK_BLAST, false);
}
instance_create_layer(x, y, AMMO_LAYER, obj_PowerBallStrike);
instance_destroy();