/// @description Insert description here
// You can write your code in this editor
if(sprite_index == spr_DestructibleCrateCollapse) {
	return;
}
var doCollapse = false;
with(other) {
	if(stateName == s_BOARD_SWING) {
		doCollapse = true;
	}
}
if(doCollapse) {
	sprite_index = spr_DestructibleCrateCollapse;
	self.isSolid = false;
	powerUp = instance_create_layer(x, y, POWERUPS_LAYER, objectInside);
}
