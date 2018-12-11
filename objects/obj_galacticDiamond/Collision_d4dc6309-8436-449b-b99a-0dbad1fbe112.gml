/// @description Insert description here
// You can write your code in this editor
global.diamondCount++;
score += 100;
if(global.diamondCount == 100) {
	lives++;
	global.diamondCount = 0;
}
instance_destroy();