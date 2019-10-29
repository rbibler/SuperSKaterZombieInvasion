var hitPoints = argument0;
var hitType = argument1;


if(shieldValue <= 0) {
	scr_StateSwitch(s_DEAD);
}

shieldValue -= hitPoints;

var shieldAnim = shieldFullAnim;

if(shieldValue <= 0) {
	instance_destroy(shieldOverlayObject);
} else if(shieldValue < 50) {
	shieldAnim = shieldLowAnim
} else if(shieldValue < 75) {
	shieldAnim = shieldMedAnim
} else {
	shieldAnim = shieldFullAnim
}
with(shieldOverlayObject) {
	scr_SetCurrentAnimation(shieldAnim);
}