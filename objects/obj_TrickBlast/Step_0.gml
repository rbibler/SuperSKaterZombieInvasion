/// @description Insert description here
// You can write your code in this editor
frameCounter++;
x += xSpeed;
y += ySpeed;
currentBlastRadius = floor(blastRadius * (frameCounter / blastDuration));
var skaterImmune = false;
if(frameCounter >= blastDuration) {
	instance_destroy();	
} else {
	skaterImmune = true;
}
with(obj_skater) {
	isImmune = skaterImmune;
}


scr_CheckForBlastRadiusHits(currentBlastRadius);
//scr_BlastRadiusTileCollision(x, y, currentBlastRadius, xSpeed, ySpeed);