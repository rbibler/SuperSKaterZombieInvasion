/// @description Insert description here
// You can write your code in this editor



// Skater's state
state = 0;

// Skater's current xSpeed
xSpeed = 0;

// Skater's current ySpeed
ySpeed = 0;

// Array to hold the user's input. 
input[0] = UP;
input[1] = DOWN;
input[2] = LEFT;
input[3] = RIGHT;
input[4] = SELECT;
input[5] = START;
input[6] = SHOOT;
input[7] = JUMP;

// Initialize an array to hold the input from the last frame
for(var i = 0; i < 8; i++) {
	lastInput[i] = input[i];
}

lastBounds[BBOX_BOTTOM] = bbox_bottom;
lastBounds[BBOX_TOP] = bbox_top;
lastBounds[BBOX_LEFT] = bbox_left;
lastBounds[BBOX_RIGHT] = bbox_right;

sensors[HOT_SPOT_X] = 0;
sensors[HOT_SPOT_Y] = 0;
sensors[RIGHT_EDGE_X] = 7;
sensors[RIGHT_EDGE_Y] = -16;
sensors[LEFT_EDGE_X] = -7;
sensors[LEFT_EDGE_Y] = -16;
sensors[BOTTOM_RIGHT_X] = 7;
sensors[BOTTOM_RIGHT_Y] = 0;
sensors[BOTTOM_LEFT_X] = -7;
sensors[BOTTOM_LEFT_Y] = 0;
sensors[SLOPE_CATCHER_LEFT_X] = -7;
sensors[SLOPE_CATCHER_LEFT_Y] = -4;
sensors[SLOPE_CATCHER_RIGHT_X] = 7;
sensors[SLOPE_CATCHER_RIGHT_Y] = -4;
sensors[TOP_X] = 8;
sensors[TOP_Y] = -31;

onSlopeRight = false;
onSlopeLeft = false;


// Skater's Normal Speed
normalSpeedX = 3;

// Skater's Sprint Speed
sprintSpeedX = 5;

// Keeps track of skater's direction. -1 is left 1 is right. Should never be zero.
myDirection = 1;


// Skater's jump status
jump = 0;

// constant climb speed
climbSpeed = 2;

// constant jump speed
jumpSpeed = -15;

// Set the initial gravity to whatever our gravity is
myGravity = 1;

var layerId = layer_get_id("CollisionTiles");
collisionTiles = layer_tilemap_get_id(layerId);

debugPoints[HOT_SPOT_X] = 0;
debugPoints[HOT_SPOT_Y] = 0;
debugPoints[RIGHT_EDGE_X] = 7;
debugPoints[RIGHT_EDGE_Y] = -16;
debugPoints[LEFT_EDGE_X] = -7;
debugPoints[LEFT_EDGE_Y] = -16;
debugPoints[BOTTOM_RIGHT_X] = 7;
debugPoints[BOTTOM_RIGHT_Y] = 0;
debugPoints[BOTTOM_LEFT_X] = -7;
debugPoints[BOTTOM_LEFT_Y] = 0;
debugPoints[SLOPE_CATCHER_LEFT_X] = -7;
debugPoints[SLOPE_CATCHER_LEFT_Y] = -4;
debugPoints[SLOPE_CATCHER_RIGHT_X] = 7;
debugPoints[SLOPE_CATCHER_RIGHT_Y] = -4;
debugPoints[TOP_X] = 8;
debugPoints[TOP_Y] = -31;

