/// @description Insert description here
// You can write your code in this editor
frameCounter++;
//x = obj_skater.x;
//y = obj_skater.y;
currentBlastRadius = floor(blastRadius * (frameCounter / blastDuration));
if(frameCounter >= blastDuration) {
	instance_destroy();
}