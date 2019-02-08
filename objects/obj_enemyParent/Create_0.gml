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
input[8] = 0;
input[9] = 0;

tileColliderX = 0;
tileColliderY = 0;

// Initialize an array to hold the input from the last frame
for(var i = 0; i < 10; i++) {
	lastInput[i] = input[i];
}

// Set the initial gravity to whatever our gravity is

maxYSpeed = 6;
myGravity = .5;

facing = -1;

var layerId = layer_get_id("CollisionTiles");
collisionTiles = layer_tilemap_get_id(layerId);

// Setup the state machine
scr_StateMachineInit();

// Define the skater's states
stateIdle = scr_StateCreate(s_IDLE, stateIdleScript);
stateMoving = scr_StateCreate(s_MOVING, stateMovingScript);
stateJumping = scr_StateCreate(s_JUMPING, stateJumpScript);
stateAttacking = scr_StateCreate(s_ATTACKING, stateAttackScript);
stateDefending = scr_StateCreate(s_DEFENDING, stateDefendingScript);
stateMenacing = scr_StateCreate(s_MENACING, stateMenacingScript);
stateFalling = scr_StateCreate(s_FALLING, stateFallScript);
stateHit = scr_StateCreate(s_HIT, stateHitScript);
stateDead = scr_StateCreate(s_DEAD, stateDeadScript);
stateBoardStruck = scr_StateCreate(s_BOARD_STRUCK, stateBoardStruckScript);
climbState = 0;

// Set the default state to IDLE
scr_StateInit(initialState);

currentAnim = noone;

shouldMove = true;

characterHealth = 100;

ignoreShield = false;