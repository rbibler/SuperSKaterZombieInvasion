/// @description Insert description here
// You can write your code in this editor
var myHeight = bbox_bottom - bbox_top;
if(ySpeed >= myHeight) {
	//ySpeed = myHeight - 1;
}
scr_GeneralApplyGravity();
scr_MoveAndCollide();

if(grounded) {
	var xPos = x;
	var yPos = (floor(y / TILE_SIZE) * TILE_SIZE) + TILE_SIZE;
	var effect = instance_create_layer(xPos, yPos, "FOREGROUND", obj_GenericEffect);
	with(effect) {
		sprite_index = spr_EffectSlimeSplash;
	}
	instance_destroy();
}