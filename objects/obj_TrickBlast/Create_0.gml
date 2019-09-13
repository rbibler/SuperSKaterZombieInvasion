blastRadius = 0;
blastWidth = 0;
blastDuration = 0;
currentBlastRadius = 0;
frameCounter = 0;

xSpeed = 0;
ySpeed = 0;


for(var i = 0; i < 256; i++) {
	intersectingTilesX[i] = 0;
	intersectingTilesY[i] = 0;
}
numIntersectingTiles = 0;

scr_GetCollisionTiles();
