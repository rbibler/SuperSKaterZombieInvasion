/// @description Insert description here
// You can write your code in this editor
if(other.stateName == s_FALLING) {
	instance_create_layer(other.x, other.y, "FOREGROUND", obj_WaterSplashEffect);
}