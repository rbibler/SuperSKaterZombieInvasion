/// This is a script that draws the slingshot indicator based on which slingshot the skater has equiped

var xPos = argument0;
var yPos = argument1;

xPos -= 66;
yPos++;

var spriteToDraw = noone;
switch(obj_skater.currentPowerup) {
	case PB_SHIELD:
		spriteToDraw = spr_ShieldIndicator;
	break;
	
	case PB_ROCKET:
		spriteToDraw = spr_RocketIndicator;
	break;
}

if(spriteToDraw != noone) {
	draw_sprite(spriteToDraw, 0, xPos, yPos);
}