/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
num = 0;
/// @description Insert description here
// You can write your code in this editor



// Skater's state
// 0 - Idle; 1 - Skating; 2 - Crouching; 3 - Jumping; 
// 4 - Slamming; 5 - Recovering; 6 - Hit; 7 - Climbing;
//state = 0;

// Hold on to the skater's state from the previous frame
//lastState = 0;


health = 100;
// Is the skater infected?
infected = false;


// Array to hold the user's input. 
input[0] = UP;
input[1] = DOWN;
input[2] = LEFT;
input[3] = RIGHT;
input[4] = SELECT;
input[5] = START;
input[6] = SHOOT;
input[7] = JUMP;

inputDownTime[UP] = 0;
inputDownTime[DOWN] = 0;
inputDownTime[LEFT] = 0;
inputDownTime[RIGHT] = 0;
inputDownTime[SELECT] = 0;
inputDownTime[START] = 0;
inputDownTime[SHOOT] = 0;
inputDownTime[JUMP] = 0;

inputPressTime[SHOOT] = 0;

animIndex[IDLE] = 0;
animIndex[SKATING] = 0;

tileColliderX = 0;
tileColliderY = 0;

weaponInventory[0] = noone;
weaponInventory[1] = noone;
weaponInventory[2] = noone;
weaponInventory[3] = noone;
weaponInventory[4] = noone;
weaponInventory[5] = noone;
weaponInventory[6] = noone;
weaponInventroy[7] = noone;

// Initialize an array to hold the input from the last frame
for(var i = 0; i < 8; i++) {
	lastInput[i] = input[i];
}


// Reference to the weapon
currentWeapon = noone;
weaponAnimCounter = 0;
currentWeaponIndex = 0;
weaponInventorySize = array_length_1d(weaponInventory);

PickupWeapon(obj_boardSwing);


// Reset the timer for the idle animation
alarm[0] = 60 * 4;

// Setup the state machine
stateMachineInit();

// Define the skater's states
idleState = stateCreate("IDLE",SkaterStateIdle);
skateState = stateCreate("SKATING", SkaterStateSkating);
jumpState = stateCreate("JUMPING", SkaterStateJumping);
bounceState = stateCreate("BOUNCING", SkaterStateBouncing);
climbState = stateCreate("CLIMBING", SkaterStateClimbing);
crouchState = stateCreate("CROUCHING", SkaterStateCrouching);
fallState = stateCreate("FALLING", SkaterStateFalling);
deadState = stateCreate("DEAD", SkaterStateDead);
rollingState = stateCreate("ROLLING", SkaterStateRolling);
climbingState = stateCreate("CLIMBING", SkaterStateClimbing);
hitImmobilizedState = stateCreate("HIT_IMMOBILIZED", SkaterStateHitImmobilized);
hitFallbackState = stateCreate("HIT FALLBACK", SkaterStateHitFallBack);
// Set the default state to IDLE
stateInit("IDLE");

isImmune = false;
immuneStart = 0;
drawToggle = true;





