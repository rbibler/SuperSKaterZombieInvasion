/// @description Insert description here
// You can write your code in this editor

// Skater's current xSpeed
xSpeed = 0;
xSpeedFrac = 0;
lastXSpeed = 0;

// Skater's current ySpeed
ySpeed = 0;
ySpeedFrac = 0;

// Array to hold the user's input. 
input[0] = 0;
input[1] = 0;
input[2] = 0;
input[3] = 0;
input[4] = 0;
input[5] = 0;
input[6] = 0;
input[7] = 0;

tileColliderX = 0;
tileColliderY = 0;

// Initialize an array to hold the input from the last frame
for(var i = 0; i < 8; i++) {
	lastInput[i] = input[i];
}


onSlope = false;
verticalMovementRun = false;

// Keeps track of skater's direction. -1 is left 1 is right. Should never be zero.
myDirection = 1;


// Skater's jump status
jump = 0;
canJump = 0;
jumpFramesAllowance = 12;

// constant climb speed
climbSpeed = 2;

// constant jump speed
jumpSpeed = -7;

// Set the initial gravity to whatever our gravity is

maxYSpeed = 6;

// Flag to indiciate that the skater is on the ground
grounded = false;
wasGrounded = false;

groundedRight = false;
wasGroundedRight = false;

groundedLeft = false;
wasGroundedLeft = false;

// Ground friction
groundFriction = 0.25;
slopeFriction = 0.075;
airFriction = 0.075;

var layerId = layer_get_id("CollisionTiles");
collisionTiles = layer_tilemap_get_id(layerId);

// Setup the state machine
stateMachineInit();

// Define the skater's states
stateCreate("IDLE", stateIdleScript);
stateCreate("MOVING", stateMovingScript);
stateCreate("JUMPING", stateJumpScript);
stateCreate("ATTACKING", stateAttackScript);
stateCreate("FALLING", stateFallScript);
deadState = stateCreate("DEAD", stateDeadScript);

// Set the default state to IDLE
stateInit("IDLE");