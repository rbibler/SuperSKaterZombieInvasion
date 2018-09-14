/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

/// @description Insert description here
// You can write your code in this editor


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

//stateVar[0] = 0;
//stateVar[1] = 0;
//stateVar[2] = 0;
//stateVar[3] = 0;
//stateVar[4] = 0;
//stateVar[5] = 0;
//stateVar[6] = 0;



// Set the initial gravity to whatever our gravity is

maxYSpeed = 6;
myGravity = .5;

facing = -1;

var layerId = layer_get_id("CollisionTiles");
collisionTiles = layer_tilemap_get_id(layerId);

// Setup the state machine
stateMachineInit();

// Define the skater's states
stateIdle = stateCreate(s_IDLE, stateIdleScript);
stateMoving = stateCreate(s_MOVING, stateMovingScript);
stateJumping = stateCreate(s_JUMPING, stateJumpScript);
stateAttacking = stateCreate(s_ATTACKING, stateAttackScript);
stateDefending = stateCreate(s_DEFENDING, stateDefendingScript);
stateFalling = stateCreate(s_FALLING, stateFallScript);
stateHit = stateCreate(s_HIT, stateHitScript);
stateDead = stateCreate(s_DEAD, stateDeadScript);
climbingState = 0;

// Set the default state to IDLE
stateInit(initialState);