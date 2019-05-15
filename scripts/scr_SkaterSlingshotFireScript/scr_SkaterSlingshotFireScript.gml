/// Script to handle the firing of the weapon

if(currentWeapon == AUTO_SLINGSHOT) {
	if(shootCounter > 0 and shootCounter mod 2 == 0) {
		scr_UpdateDiamondCount(-obj_Slingshot.diamondExpense[currentWeapon]);
	}
} else {
	scr_UpdateDiamondCount(-obj_Slingshot.diamondExpense[currentWeapon]);
}
ammoOnScreen++;
var xOffset = 0;
var yOffset = 0;
switch(stateID) {
	case s_IDLE:
	case s_MOVING:
		xOffset = projOffsetStandingX;
		yOffset = projOffsetStandingY;
	break;
	case s_JUMPING:
	case s_FALLING:
		xOffset = projOffsetJumpingX;
		yOffset = projOffsetJumpingY;
		break;
	case s_CROUCHING:
		xOffset = projOffsetCrouchingX;
		yOffset = projOffsetCrouchingY;
		break;
}
xOffset *= facing;
xOffset += x;
yOffset += y;
var ammo = instance_create_layer(xOffset, yOffset, AMMO_LAYER, obj_SlingshotRock);
ammo.ammoDirection = facing;
cooldown = scr_GetSlingshotCooldown();
ammo.xSpeed = slingshot.xSpeed * facing;
ammo.ySpeed = 0;

if(currentWeapon == SPREAD_SLINGSHOT) {
	ammo.sprite_index = spr_slingshotRockBig;
	ammo = instance_create_layer(xOffset, yOffset, AMMO_LAYER, obj_SlingshotRock);
	ammo.ammoDirection = facing;
	ammo.xSpeed = slingshot.xSpeed * facing;
	ammo.ySpeed = slingshot.xSpeed / 2;
	ammo.sprite_index = spr_slingshotRockBig;
	
	ammo = instance_create_layer(xOffset, yOffset, AMMO_LAYER, obj_SlingshotRock);
	ammo.ammoDirection = facing;
	ammo.xSpeed = slingshot.xSpeed * facing;
	ammo.ySpeed = -slingshot.xSpeed / 2;
	ammo.sprite_index = spr_slingshotRockBig;
} else {
	ammo.sprite_index = spr_slingshotRock;
}

scr_SetCurrentSubstateAnimation(2, true);


