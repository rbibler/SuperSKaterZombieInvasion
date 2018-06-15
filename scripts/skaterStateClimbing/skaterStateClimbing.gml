/// @description Climbing step event
// You can write your code in this editor


// Check if we should fire a weapon
if(currentWeapon != noone) {
	var shootNow = script_execute(currentWeapon.shootSequenceScript); 
	if(shootNow) {
		script_execute(currentWeapon.fireScript, currentWeapon, false);
	}
}

SkaterBasicStateAnimation();


if(input[UP] and !input[DOWN]) {
	ySpeed = -climbSpeed;
} else if(input[DOWN] and !input[UP]) {
	ySpeed = climbSpeed;
} else {
	ySpeed = 0;
}

if(input[JUMP] and !lastInput[JUMP]) {
	stateSwitch("JUMPING");
	myGravity = standardGravity;
}


//SkaterVerticalCollisionCheck();
SkaterPlatformCollisions();

var p1 = 0;
var p2 = 0;
if(ySpeed <= 0) {
	p1 = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_top + ySpeed);
	p2 = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_top + ySpeed);
	if(p1 == 1 or p2 == 1) {
		ySpeed = 0;
		yFraction = 0;
	}
}


var tileTopLeft = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_top);
var tileTopRight = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_top);
var tileBottomRight = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_bottom);
var tileBottomLeft = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_bottom);
var tileBottomRightPlusOne = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_bottom + 1);
var tileBottomLeftPlusOne = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_bottom + 1);
if(tileTopLeft != 5 and tileTopRight != 5 and tileBottomRight != 5 and tileBottomLeft != 5
	and tileTopLeft != 4 and tileTopRight != 4 and tileBottomRight != 4 and tileBottomLeft != 4
	and tileBottomRightPlusOne != 5 and tileBottomRightPlusOne != 4 
	and tileBottomLeftPlusOne != 5 and tileBottomLeftPlusOne != 4) {
	stateSwitch("IDLE");
	myGravity = standardGravity;
} 
