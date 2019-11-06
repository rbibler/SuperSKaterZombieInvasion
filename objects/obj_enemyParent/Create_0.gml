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

inputDownTime[UP] = 0;
inputDownTime[DOWN] = 0;
inputDownTime[LEFT] = 0;
inputDownTime[RIGHT] = 0;
inputDownTime[SELECT] = 0;
inputDownTime[START] = 0;
inputDownTime[SHOOT] = 0;
inputDownTime[JUMP] = 0;

tileColliderX = 0;
tileColliderY = 0;

// Initialize an array to hold the input from the last frame
for(var i = 0; i < 10; i++) {
	lastInput[i] = input[i];
}

// Set the initial gravity to whatever our gravity is

myGravity = .5;

facing = -1;
lastFacing = FACE_LEFT;

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
stateInWater = scr_StateCreate(s_IN_WATER, stateInWaterScript);
stateRecovering = scr_StateCreate(s_RECOVERING, stateRecoveringScript);

climbState = 0;

// Set the default state to IDLE
scr_StateInit(initialState);

currentAnimation = noone;

shouldMove = true;

ignoreShield = false;

harmless = false;

flybackSpeed = 0;

isDangerous = true;

dsHarmlessStates = ds_list_create();
ds_list_add(dsHarmlessStates, s_AIRBORNE_HIT);
ds_list_add(dsHarmlessStates, s_HIT);
ds_list_add(dsHarmlessStates, s_DEAD);
ds_list_add(dsHarmlessStates, s_BOARD_STRUCK);
//ds_list_add(dsHarmlessStates, s_RECOVERING);

deathAnim = scr_RegisterStateAnimation(
	spr_SlimeballHit,
	NORMAL_ANIM_SPEED,
	false,
	noone,
	"",
	sprite_get_number(spr_SlimeballHit)
);