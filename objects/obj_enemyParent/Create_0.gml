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
input[0] = UP;
input[1] = DOWN;
input[2] = LEFT;
input[3] = RIGHT;
input[4] = SELECT;
input[5] = START;
input[6] = SHOOT;
input[7] = JUMP;

tileColliderX = 0;
tileColliderY = 0;

// Initialize an array to hold the input from the last frame
for(var i = 0; i < 8; i++) {
	lastInput[i] = input[i];
}


onSlope = false;
verticalMovementRun = false;


// Skater's Normal Speed
normalSpeedX = 1.7;

// Skater's Sprint Speed
sprintSpeedX = 2.7;

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
myGravity = 0.5;
standardGravity = 0.5;
maxYSpeed = 6;

// Flag to indiciate that the skater is on the ground
grounded = false;

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
stateCreate("DEAD", stateDeadScript);

// Set the default state to IDLE
stateInit("IDLE");