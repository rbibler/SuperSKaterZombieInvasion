/// This is a script that draws the slingshot indicator based on which slingshot the skater has equiped

var xPos = argument0;
var yPos = argument1;

xPos -= 180;
yPos += 2;


draw_sprite(spr_hud_slingshot, obj_skater.currentWeapon, xPos, yPos);