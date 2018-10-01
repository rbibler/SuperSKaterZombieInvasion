/// This is a script that helps display the skater's currently held weapons in the hud
/// @arg xPos
/// @arg yPos

var xPos = argument0;
var yPos = argument1;

var weapon = noone;
var powerUp = noone;
var xGrid = 42;
var yGrid = 1;
var spriteIndex = 0;

var startX = GRID_X * xGrid;
var startY = GRID_Y * yGrid;
var endX = GRID_X * (xGrid + 2);
var endY = GRID_Y * (yGrid + 2);

if(!instance_exists(obj_skater))
{
	return;
}


weapon = obj_skater.currentWeapon;
if(weapon != noone) {
	
	switch(weapon.object_index) {
		case obj_Slingshot:
			spriteIndex = spr_hud_slingshot;
			break;
	}
	if(spriteIndex != 0) {
		var ammoCount = weapon.ammoCount;
		if(ammoCount > 0) {
			var fillAmount = (2 * GRID_Y) - floor((ammoCount / weapon.maxAmmo) * (2 * GRID_Y));
			var greenStartY = startY + yPos + fillAmount;
			draw_rectangle_color(startX + xPos, greenStartY, endX + xPos, endY + yPos, c_green, c_green, c_green, c_green, false);
		}
		DisplaySpriteAtGrid(spriteIndex, 0, xGrid, yGrid, 1, 1, xPos, yPos);
	}
}

draw_rectangle(startX + xPos - 1, startY + yPos - 1, endX + xPos + 1, endY + yPos + 1, c_white);


xGrid += 3;

startX = GRID_X * xGrid;
startY = GRID_Y * yGrid;
endX = GRID_X * (xGrid + 2);
endY = GRID_Y * (yGrid + 2);

var powerUp = obj_skater.currentPowerup;
if(powerUp != noone) {
	switch(powerUp.object_index) {
		case obj_rocketBoard:
			spriteIndex = spr_hud_boardrocket;
			break;
	}
	if(spriteIndex != 0) {
		var fuelRemaining = powerUp.fuelRemaining;
		if(fuelRemaining > 0) {
			var fillAmount = (2 * GRID_Y) - floor((fuelRemaining / powerUp.maxFuel) * (2 * GRID_Y));
			var greenStartY = startY + yPos + fillAmount;
			draw_rectangle_color(startX + xPos, greenStartY, endX + xPos, endY + yPos, c_green, c_green, c_green, c_green, false);
		}
		DisplaySpriteAtGrid(spriteIndex, 0, xGrid, yGrid, 1, 1, xPos, yPos);
	}
}

draw_rectangle(startX + xPos - 1, startY + yPos - 1, endX + xPos + 1, endY + yPos + 1, c_white);
