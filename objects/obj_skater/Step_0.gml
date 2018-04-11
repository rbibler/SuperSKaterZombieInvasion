/// @description Insert description here
// You can write your code in this editor

// Get the user's input
onGroundStart = SkaterOnGround();
SkaterInput();
SkaterHorizontalInput();
SkaterMovementFractions();
stateExecute();




/*

// Check for collision with ladder tile
var tileTopLeft = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_top);
var tileTopRight = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_top);
var tileBottomRight = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_bottom);
var tileBottomLeft = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_bottom);
if((tileTopLeft == 2 or tileTopRight == 2 or tileBottomRight == 2 or tileBottomLeft == 2) and state != CLIMBING) {
	if(input[UP] || input[DOWN]) {
		//state = CLIMBING;
		myGravity = 0;
		xSpeed = 0;
		ySpeed = 0;
	}
}

*/



