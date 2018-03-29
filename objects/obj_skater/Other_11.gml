/// @description Climbing step event
// You can write your code in this editor

if(input[LEFT] && !input[RIGHT]) {
	xSpeed = -climbSpeed;
} else if(input[RIGHT] && !input[LEFT]) {
	xSpeed = climbSpeed;
} else {
	xSpeed = 0;
}

if(input[UP] && !input[DOWN]) {
	ySpeed = -climbSpeed;
} else if(input[DOWN] && !input[UP]) {
	ySpeed = climbSpeed;
} else {
	ySpeed = 0;
}

if(input[JUMP] && !lastInput[JUMP]) {
	ySpeed = jumpSpeed;
	state = 0;
	jump = 1;
	myGravity = 1;
}

var tileTopLeft = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_top);
var tileTopRight = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_top);
var tileBottomRight = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_bottom);
var tileBottomLeft = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_bottom);
if(tileTopLeft != 2 and tileTopRight != 2 and tileBottomRight != 2 and tileBottomLeft != 2) {

    //Switch to idle state
    state = 0
	myGravity = 1;

}
