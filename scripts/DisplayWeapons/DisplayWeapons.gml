/// This is a script that helps display the skater's currently held weapons in the hud
/// @arg xPos
/// @arg yPos

var xPos = argument0;
var yPos = argument1;

var weapon = noone;
var xGrid = 42;
var yGrid = 1;
var spriteIndex = 0;
var ammoCount = 0;
var tens = 0;
var ones = 0;
var showAmmoCount = true;

DrawRectangleAtGrid(40, 0, 54, 4, c_black, xPos, yPos);


for(var i = 0; i < 4; i++) {
	weapon = obj_skater.weaponInventory[i];
	if(weapon != noone) {
		ammoCount = weapon.ammoCount;
		tens = floor(ammoCount / 10);
		ones = ammoCount mod 10;
		switch(weapon.object_index) {
			case obj_boardSwing:
				spriteIndex = spr_hud_boardswing;
				showAmmoCount = false;
				break;
			case obj_slingshot:
				spriteIndex = spr_hud_slingshot;
				showAmmoCount = true;
				break;
		}
		if(spriteIndex != 0) {
			if(i == obj_skater.currentWeaponIndex) {
				DrawRectangleAtGrid(xGrid, yGrid, xGrid + 2, yGrid + 2, c_green, xPos, yPos);
			}
			DisplaySpriteAtGrid(spriteIndex, 0, xGrid, yGrid, 1, 1, xPos, yPos);
			if(showAmmoCount == true) {
				//DisplaySpriteAtGrid(spr_numbersSmall, tens, xGrid + 0.5, yGrid + 2, 1, 1);
				//DisplaySpriteAtGrid(spr_numbersSmall, ones, xGrid + 0.75, yGrid + 2, 1, 1);
				
				DisplaySpriteAtGrid(spr_numbersBig, tens, xGrid, yGrid + 2, 1, 1, xPos, yPos);
				DisplaySpriteAtGrid(spr_numbersBig, ones, xGrid + 1, yGrid + 2, 1, 1, xPos, yPos);
			}
		}
	}
	xGrid += 3;
}