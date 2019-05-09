/// @description Insert description here
// You can write your code in this editor
if(other.splashes and other.canSplash) {
	var center = scr_FindCenterX(other);
	instance_create_layer(center, bbox_top + 5, FOREGROUND_LAYER, obj_WaterSplashEffect);
	other.canSplash = false;
}