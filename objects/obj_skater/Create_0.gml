/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
ignoreInput = false;
hasWeaponImmunity = false;
num = 0;
newRoom = false;
shootCounter = 0;
speedAtJump = 0;
slopeCounter = 0;
currentTrick = NO_TRICK;
flashing = false;
tricksSinceGrounded = 0;

doubleJumpIncrement = 0;

/// @description Insert description here
// You can write your code in this editor



// Skater's state
// 0 - Idle; 1 - Skating; 2 - Crouching; 3 - Jumping; 
// 4 - Slamming; 5 - Recovering; 6 - Hit; 7 - Climbing;
//state = 0;
currentMovementState = SKATE_STATE;

// Hold on to the skater's state from the previous frame
//lastState = 0;


health = 100;

exitKey = 0;
// Is the skater infected?
infected = false;


// Array to hold the user's input. 
input[UP] = 0;
input[DOWN] = 0;
input[LEFT] = 0;
input[RIGHT] = 0;
input[SELECT] = 0;
input[START] = 0;
input[SHOOT] = 0;
input[JUMP] = 0;
input[TRANSITION] = 0;
input[ACTION] = 0;

inputDownTime[UP] = 0;
inputDownTime[DOWN] = 0;
inputDownTime[LEFT] = 0;
inputDownTime[RIGHT] = 0;
inputDownTime[SELECT] = 0;
inputDownTime[START] = 0;
inputDownTime[SHOOT] = 0;
inputDownTime[JUMP] = 0;
inputDownTime[TRANSITION] = 0;
inputDownTime[ACTION] = 0;

scr_SetupInputQueue();


// Initialize an array to hold the input from the last frame
for(var i = 0; i < 10; i++) {
	lastInput[i] = input[i];
}


// Reference to the weapon
slingshot = instance_create_layer(0, 0, WEAPONS_LAYER, obj_Slingshot);
currentWeapon = NO_SLINGSHOT;
currentPowerup = PB_NONE;
weaponAnimCounter = 0;
ammoOnScreen = 0;
maxAmmoOnScreen = scr_GetMaxAmmo(currentWeapon); 
cooldown = 0;

// Reset the timer for the idle animation
alarm[0] = 60 * 4;

// Setup the state machine
scr_StateMachineInit();

// Define the skater's states
idleState = scr_StateCreate(s_IDLE, scr_SkaterStateIdle);
boredState = scr_StateCreate(s_BORED, scr_SkaterStateBored);
skateState = scr_StateCreate(s_MOVING, scr_SkaterStateSkating);
jumpState = scr_StateCreate(s_JUMPING, scr_SkaterStateJumping);
grindState = scr_StateCreate(s_GRINDING, scr_SkaterStateGrindRail);
bounceState = scr_StateCreate(s_BOUNCING, scr_SkaterStateBouncing);
climbState = scr_StateCreate(s_CLIMBING, scr_SkaterStateClimbing);
climboutState = scr_StateCreate(s_CLIMBOUT, scr_SkaterStateClimbout);
crouchState = scr_StateCreate(s_CROUCHING, scr_SkaterStateCrouching);
fallState = scr_StateCreate(s_FALLING, scr_SkaterStateFalling);
deadState = scr_StateCreate(s_DEAD, scr_SkaterStateDead);
drownedState = scr_StateCreate(s_DROWNED, scr_SkaterStateDrowned);
rollState = scr_StateCreate(s_ROLLING, scr_SkaterStateRolling);
knockedBackState = scr_StateCreate(s_KNOCKED_BACK, scr_SkaterStateKnockedBack);
floatState = scr_StateCreate(s_FLOATING, scr_SkaterStateFloating);
attackState = scr_StateCreate(s_ATTACKING, scr_SkaterBoardPokeAttack);

// Trick states
trickFlipTrickState = scr_StateCreate(s_TRICK_FLIPTRICK, scr_SkaterStateFlipTrick);
bailState = scr_StateCreate(s_BAIL, scr_SkaterStateBail);

// On Foot States
onFootIdleState = scr_StateCreate(s_ON_FOOT_IDLE, scr_SkaterStateOnFootIdle);
onFootBoredState = scr_StateCreate(s_ON_FOOT_BORED, scr_SkaterStateOnFootBored);
onFootSittingState = scr_StateCreate(s_ON_FOOT_SITTING, scr_SkaterStateOnFootSitting);
onFootPushOffState = scr_StateCreate(s_ON_FOOT_PUSH_OFF, scr_SkaterStateOnFootPushOff);
onFootStopState = scr_StateCreate(s_ON_FOOT_STOP, scr_SkaterStateOnFootStop);
runningState = scr_StateCreate(s_RUNNING, scr_SkaterStateRunning);
onFootJumpState = scr_StateCreate(s_ON_FOOT_JUMPING, scr_SkaterStateOnFootJumping);
onFootFallState = scr_StateCreate(s_ON_FOOT_FALLING, scr_SkaterStateOnFootFalling);
footToSkateState = scr_StateCreate(s_FOOT_TO_SKATE, scr_SkaterStateFootToSkate);
skateToFootState = scr_StateCreate(s_SKATE_TO_FOOT, scr_SkaterStateSkateToFoot);
onStairs = scr_StateCreate(s_STAIRS, scr_SkaterStateOnStairs);
boardSwing = scr_StateCreate(s_BOARD_SWING, scr_SkaterStateBoardSwing);
onFootCrouchState = scr_StateCreate(s_ON_FOOT_CROUCHING, scr_SkaterStateOnFootCrouching);
onFootHurtState = scr_StateCreate(s_ON_FOOT_HURT, scr_SkaterStateOnFootHurt);
onFootShieldState = scr_StateCreate(s_ON_FOOT_SHIELD, scr_SkaterStateOnFootShield);
onFootJumpShieldState = scr_StateCreate(s_ON_FOOT_JUMP_SHIELD, scr_SkaterStateOnFootJumpShield);
jumpShieldState = scr_StateCreate(s_JUMP_SHIELD, scr_SkaterStateJumpShield);

jetSkiIdleState = scr_StateCreate(s_JET_SKI_IDLE, scr_SkaterStateJetSkiIdle);
jetSkiMoveState = scr_StateCreate(s_JET_SKI_MOVING, scr_SkaterStateJetSkiMoving);
jetSkiJumpState = scr_StateCreate(s_JET_SKI_JUMPING, scr_SkaterStateJetSkiJumping);
jetSkiFallState = scr_StateCreate(s_JET_SKI_FALLING, scr_SkaterStateJetSkiFalling);
jetSkiPlasteredState = scr_StateCreate(s_JET_SKI_PLASTERED, scr_SkaterStateJetSkiPlastered);
jetSkiFallState = scr_StateCreate(s_JET_SKI_DUCKING, scr_SkaterStateJetSkiDucking);
// Set the default state to IDLE
scr_StateInit(s_IDLE);

scr_SetupSkaterAnimations();


slingshotIdle = scr_RegisterSubstateAnimation(1, NORMAL_ANIM_SPEED);
scr_AddSpriteToSubstateAnimation(slingshotIdle, spr_SkaterIdleSlingshot, 0);
idleAnim.substateAnimations[2] = slingshotIdle;
slingshotIdle.persistent = true;

slingshotJump = scr_RegisterSubstateAnimation(1, NORMAL_ANIM_SPEED);
scr_AddSpriteToSubstateAnimation(slingshotJump, spr_SkaterJumpSlingshot, 0);
jumpAnim.substateAnimations[2] = slingshotJump;
slingshotJump.persistent = true;

slingshotCrouch = scr_RegisterSubstateAnimation(1, NORMAL_ANIM_SPEED);
scr_AddSpriteToSubstateAnimation(slingshotCrouch, spr_SkaterCrouchSlingshot, 0);
crouchAnim.substateAnimations[2] = slingshotCrouch;
slingshotCrouch.persistent = true;

slingshotSkate = scr_RegisterSubstateAnimation(1, NORMAL_ANIM_SPEED);
scr_AddSpriteToSubstateAnimation(slingshotSkate, spr_SkaterSkateSlingshot, 0);
skateAnim.substateAnimations[2] = slingshotSkate;
slingshotSkate.persistent = true;


currentAnimation = idleAnim;

facingEnabled = true;
shielded = false;
isImmune = false;
immuneStart = 0;
drawToggle = true;
canShoot = true;
jumpInputBuffer = 0;
climbOut = false;
ladderBottom = false;
shouldAnimate = true;

resetFromDeath = false;
isDead = false;
lastStep = 0;

isShooting = false;

boardSmacked = ds_list_create();
drawOffsetX = 0;
drawOffsetY = 0;
railGrindButtonPressTimer = 0;
railJumpBoost = 2;
currentAirSpeedMax = 0;
currentVehicle = NO_VEHICLE;
canBoardVehicle = true;
trickPressedTimer = 0;
framesSinceGround = 0;

doubleJumpMeter = 100;

scr_CheckForCheckpoint();



