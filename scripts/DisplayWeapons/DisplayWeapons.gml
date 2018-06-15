/// This is a script that helps display the skater's currently held weapons in the hud
var weapon = noone;
var xGrid = 21;
var yGrid = 1;
var spriteIndex = 0;


for(var i = 0; i < 4; i++) {
	weapon = obj_skater.weaponInventory[i];
	if(weapon != noone) {
		switch(weapon.object_index) {
			case obj_boardSwing:
				spriteIndex = spr_hud_boardswing;
				break;
			case obj_slingshot:
				spriteIndex = spr_hud_slingshot;
				break;
		}
		if(spriteIndex != 0) {
			if(i == obj_skater.currentWeaponIndex) {
				DrawRectangleAtGrid(xGrid, yGrid, c_green);
			}
			DisplaySpriteAtGrid(spriteIndex, 0, xGrid, yGrid);
		}
	}
	xGrid += 1.5;
}