/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
ignoreInput = false;
hasWeaponImmunity = false;
num = 0;
newRoom = false;
/// @description Insert description here
// You can write your code in this editor



// Skater's state
// 0 - Idle; 1 - Skating; 2 - Crouching; 3 - Jumping; 
// 4 - Slamming; 5 - Recovering; 6 - Hit; 7 - Climbing;
//state = 0;

// Hold on to the skater's state from the previous frame
//lastState = 0;


health = 100;

exitKey = 0;
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


tileColliderX = 0;
tileColliderY = 0;

// Initialize an array to hold the input from the last frame
for(var i = 0; i < 8; i++) {
	lastInput[i] = input[i];
}


// Reference to the weapon
currentWeapon = noone;
currentPowerup = noone;
weaponAnimCounter = 0;
scr_PickupWeapon(obj_BoardPowerPush);

// Reset the timer for the idle animation
alarm[0] = 60 * 4;

// Setup the state machine
stateMachineInit();

// Define the skater's states
idleState = stateCreate(s_IDLE, scr_SkaterStateIdle);
skateState = stateCreate(s_MOVING, scr_SkaterStateSkating);
jumpState = stateCreate(s_JUMPING, scr_SkaterStateJumping);
bounceState = stateCreate(s_BOUNCING, scr_SkaterStateBouncing);
climbState = stateCreate(s_CLIMBING, scr_SkaterStateClimbing);
crouchState = stateCreate(s_CROUCHING, scr_SkaterStateCrouching);
fallState = stateCreate(s_FALLING, scr_SkaterStateFalling);
deadState = stateCreate(s_DEAD, scr_SkaterStateDead);
rollState = stateCreate(s_ROLLING, scr_SkaterStateRolling);
knockedBackState = stateCreate(s_KNOCKED_BACK, scr_SkaterStateKnockedBack);
floatState = stateCreate(s_FLOATING, scr_SkaterStateFloating);
// Set the default state to IDLE
stateInit(s_IDLE);



idleAnim = scr_RegisterStateAnimation(spr_SkaterIdle, NORMAL_ANIM_SPEED, true, noone, "Idle", 1);
skateAnim = scr_RegisterStateAnimation(spr_SkaterSkate, NORMAL_ANIM_SPEED, true, noone, "Skate", 4);
jumpAnim = scr_RegisterStateAnimation(spr_SkaterJump, NORMAL_ANIM_SPEED, true, noone, "Jump", 1);
crouchAnim = scr_RegisterStateAnimation(spr_SkaterCrouch, NORMAL_ANIM_SPEED, true, noone, "Crouch", 1);

idleAnim.persistent = true;
skateAnim.persistent = true;
jumpAnim.persistent = true;
crouchAnim.persistent = true;

powerPushIdle = scr_RegisterSubstateAnimation(2, NORMAL_ANIM_SPEED);
scr_AddSpriteToSubstateAnimation(powerPushIdle, spr_SkaterPowerPushIdleOne, 0);
scr_AddSpriteToSubstateAnimation(powerPushIdle, spr_SkaterPowerPushIdleTwo, 1);
idleAnim.substateAnimations[1] = powerPushIdle;
powerPushIdle.persistent = true;

powerPushSkate = scr_RegisterSubstateAnimation(2, NORMAL_ANIM_SPEED);
scr_AddSpriteToSubstateAnimation(powerPushSkate, spr_SkaterPowerPushOne, 0);
scr_AddSpriteToSubstateAnimation(powerPushSkate, spr_SkaterPowerPushTwo, 1);
skateAnim.substateAnimations[1] = powerPushSkate;
powerPushSkate.persistent = true;

powerPushJump = scr_RegisterSubstateAnimation(2, NORMAL_ANIM_SPEED);
scr_AddSpriteToSubstateAnimation(powerPushJump, spr_SkaterPowerPushJumpingOne, 0);
scr_AddSpriteToSubstateAnimation(powerPushJump, spr_SkaterPowerPushJumpingTwo, 1);
jumpAnim.substateAnimations[1] = powerPushJump;
powerPushJump.persistent = true;

currentAnimation = idleAnim;


isImmune = false;
immuneStart = 0;
drawToggle = true;
canShoot = true;





