/// @description Insert description here
// You can write your code in this editor

facing = 1;

// variable to hold a frame timer
frameTimer = 0;
frameCount = 0;

// current xSpeed
xSpeed = 0;
xSpeedFinal = 0;
xSpeedFraction = 0;
lastXSpeed = 0;
carrySpeed = 0;

// current ySpeed
ySpeed = 0;
ySpeedFraction = 0
ySpeedFinal = 0;
carrySpeedY = 0;
yMomentum = 0;
lastY = ystart;
lastX = xstart;
lastDirection = 0;

onSlope = false;
slopeDirection = -1;
slopeImpetus = 0;
verticalMovementRun = false;
decelImmediate = false;


// Keeps track of skater's direction. -1 is left 1 is right. Should never be zero.
myDirection = 1;

// Skater's jump status
jump = 0;
canJump = 0;

bounceDirection = 0;

// Set the initial gravity to whatever our gravity is
myGravity = standardGravity;

// Flag to indiciate that the skater is on the ground
grounded = false;
groundedMiddle = false;
platformGrounded = false;
groundedRight = false;
groundedLeft = false;
wasGrounded = false;
wasGroundedMiddle = false;
wasGroundedRight = false;
wasGroundedLeft = false;

inFloorCenter = 0;
inFloorLeft = 0;
inFloorRight = 0;

groundTile[LEFT_CORNER] = 0;
groundTile[MIDDLE] = 0;
groundTile[RIGHT_CORNER] = 0;

horizTiles[TOP_LEFT] = 0;
horizTiles[MIDDLE_LEFT] = 0;
horizTiles[BOTTOM_LEFT] = 0;
horizTiles[TOP_RIGHT] = 0;
horizTiles[MIDDLE_RIGHT] = 0;
horizTiles[BOTTOM_RIGHT] = 0;

horizColPoints[0] = false;		// top
horizColPoints[1] = false;		// bottom
horizColPoints[2] = false;		// middle

scr_GetCollisionTiles();


collisionY = 0;
collisionX = 0;

onEdge = false;

hideMeWhenDrawing = false;
noCollisions = false;



