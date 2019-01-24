/// Script to handle the firing of the weapon

ammoOnScreen++;
var xOffset = 0;
var yOffset = 0;
switch(stateName) {
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
var ammo = instance_create_layer(xOffset, yOffset, "AMMO", obj_SlingshotRock);
ammo.ammoDirection = facing;
cooldown = scr_GetSlingshotCooldown();
ammo.xSpeed = slingshot.xSpeed * facing;
ammo.ySpeed = 0;

if(currentWeapon == SPREAD_SLINGSHOT) {
	ammo.sprite_index = spr_slingshotRockBig;
	ammo = instance_create_layer(xOffset, yOffset, "AMMO", obj_SlingshotRock);
	ammo.ammoDirection = facing;
	ammo.xSpeed = slingshot.xSpeed * facing;
	ammo.ySpeed = slingshot.xSpeed / 2;
	ammo.sprite_index = spr_slingshotRockBig;
	
	ammo = instance_create_layer(xOffset, yOffset, "AMMO", obj_SlingshotRock);
	ammo.ammoDirection = facing;
	ammo.xSpeed = slingshot.xSpeed * facing;
	ammo.ySpeed = -slingshot.xSpeed / 2;
	ammo.sprite_index = spr_slingshotRockBig;
} else {
	ammo.sprite_index = spr_slingshotRock;
}

with(currentAnimation) {
	currentSubstate = 2;
	substateAnimations[currentSubstate].currentIndex = 0;
}

