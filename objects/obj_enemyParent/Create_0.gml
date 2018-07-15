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

stateVar[0] = 0;
stateVar[1] = 0;
stateVar[2] = 0;
stateVar[3] = 0;
stateVar[4] = 0;
stateVar[5] = 0;



// Set the initial gravity to whatever our gravity is

maxYSpeed = 6;
myGravity = .5;

var layerId = layer_get_id("CollisionTiles");
collisionTiles = layer_tilemap_get_id(layerId);

// Setup the state machine
stateMachineInit();

// Define the skater's states
stateIdle = stateCreate("IDLE", stateIdleScript);
stateCreate("MOVING", stateMovingScript);
stateCreate("JUMPING", stateJumpScript);
stateCreate("ATTACKING", stateAttackScript);
stateCreate("FALLING", stateFallScript);
stateHit = stateCreate("HIT", stateHitScript);
stateDead = stateCreate("DEAD", stateDeadScript);
climbingState = 0;

// Set the default state to IDLE
stateInit("IDLE");