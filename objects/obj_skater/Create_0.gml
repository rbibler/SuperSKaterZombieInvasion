
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
trickPressedTimer = 0;
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
input[0] = UP;
input[1] = DOWN;
input[2] = LEFT;
input[3] = RIGHT;
input[4] = SELECT;
input[5] = START;
input[6] = SHOOT;
input[7] = JUMP;
input[8] = TRANSITION;
input[9] = ACTION;

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

// Trick states
trickFlipTrickState = scr_StateCreate(s_TRICK_FLIPTRICK, scr_SkaterStateFlipTrick);

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

// Skate Animations
idleAnim = scr_RegisterStateAnimation(spr_SkaterIdle, NORMAL_ANIM_SPEED, true, noone, "Idle", 1);
skateAnim = scr_RegisterStateAnimation(spr_SkaterSkate, NORMAL_ANIM_SPEED, true, noone, "Skate", 4);
jumpAnim = scr_RegisterStateAnimation(spr_SkaterJump, NORMAL_ANIM_SPEED, true, noone, "Jump", 1);
crouchAnim = scr_RegisterStateAnimation(spr_SkaterCrouch, NORMAL_ANIM_SPEED, true, noone, "Crouch", 1);
hurtAnim = scr_RegisterStateAnimation(spr_SkaterTakeHit, NORMAL_ANIM_SPEED, true, noone, "HURT", 1);
deadAnim = scr_RegisterStateAnimation(spr_SkaterDead, NORMAL_ANIM_SPEED, false, noone, "DEAD", sprite_get_number(spr_SkaterDead));
drownAnim = scr_RegisterStateAnimation(spr_SkaterDrowned, NORMAL_ANIM_SPEED, false, noone, "DROWNED", sprite_get_number(spr_SkaterDrowned));
teeterAnim = scr_RegisterStateAnimation(spr_SkaterTeetering, FAST_ANIM_SPEED, true, noone, "TEETERING", sprite_get_number(spr_SkaterTeetering));


// Trick Animations
kickflipAnim = scr_RegisterStateAnimation(spr_SkaterTrickKickflip, FAST_ANIM_SPEED, false, noone, "KICKFLIP", sprite_get_number(spr_SkaterTrickKickflip));

// On Foot Animations
runAnim = scr_RegisterStateAnimation(spr_SkaterRunning, NORMAL_ANIM_SPEED, true, noone, "RUNNING", sprite_get_number(spr_SkaterRunning));
onFootIdleAnim = scr_RegisterStateAnimation(spr_SkaterOnFootIdle, NORMAL_ANIM_SPEED, true, noone, "OnFootIdle", sprite_get_number(spr_SkaterOnFootIdle));
onFootBoredAnim = scr_RegisterStateAnimation(spr_SkaterOnFootBored, 0, false, noone, "OnFootBored", sprite_get_number(spr_SkaterOnFootBored));
footToSkateAnim = scr_RegisterStateAnimation(spr_SkaterTransition, FAST_ANIM_SPEED, false, noone, "FootToSkate", 1);
onFootJumpAnim = scr_RegisterStateAnimation(spr_SkaterOnFootJump, NORMAL_ANIM_SPEED, true, noone, "OnFootJump", sprite_get_number(spr_SkaterOnFootJump));
climbAnim = scr_RegisterStateAnimation(spr_SkaterClimbing, NORMAL_ANIM_SPEED, true, noone, "CLIMBING", sprite_get_number(spr_SkaterClimbing));
climboutAnim = scr_RegisterStateAnimation(spr_SkaterClimbout, NORMAL_ANIM_SPEED, true, noone, "CLIMBOUT", sprite_get_number(spr_SkaterClimbout));
onStairsAnim = scr_RegisterStateAnimation(spr_SkaterRunning, NORMAL_ANIM_SPEED, true, noone, "ONSTAIRS", sprite_get_number(spr_SkaterRunning));
boardSwingAnim = scr_RegisterStateAnimation(spr_SkaterBoardSwing, FAST_ANIM_SPEED, false, noone, "SWINGING", sprite_get_number(spr_SkaterBoardSwing));
onFootCrouchAnim = scr_RegisterStateAnimation(spr_SkaterOnFootCrouch, FAST_ANIM_SPEED, true, noone, "CROUCHING", sprite_get_number(spr_SkaterOnFootCrouch));
onFootFallAnim = scr_RegisterStateAnimation(spr_SkaterOnFootFalling, FAST_ANIM_SPEED, true, noone, "FALLING", sprite_get_number(spr_SkaterOnFootFalling));
onFootHurtAnim = scr_RegisterStateAnimation(spr_SkaterOnFootHurt, FAST_ANIM_SPEED, true, noone, "HURT", sprite_get_number(spr_SkaterOnFootHurt));

jetSkiIdleAnim = scr_RegisterStateAnimation(spr_SkaterJetSki, VERY_SLOW_ANIM_SPEED, true, noone, "JET SKI IDLE", sprite_get_number(spr_SkaterJetSki));
jetSkiDuckingAnim = scr_RegisterStateAnimation(spr_SkaterJetSkiDucking, VERY_SLOW_ANIM_SPEED, true, noone, "JET SKI DUCKING", sprite_get_number(spr_SkaterJetSkiDucking));
// Shield animations
onFootShieldAnim = scr_RegisterStateAnimation(spr_SkaterOnFootShield, FAST_ANIM_SPEED, false, noone, "ON_FOOT_SHIELD", sprite_get_number(spr_SkaterOnFootShield));
onFootJumpShieldAnim = scr_RegisterStateAnimation(spr_SkaterOnFootJumpShield, FAST_ANIM_SPEED, false, noone, "ON_FOOT_JUMP_SHIELD", sprite_get_number(spr_SkaterOnFootJumpShield));
jumpShieldAnim = scr_RegisterStateAnimation(spr_SkaterShieldJump, FAST_ANIM_SPEED, false, noone, "JUMP_SHIELD", sprite_get_number(spr_SkaterShieldJump));
shieldAnimStateMap = ds_map_create();

// Rocket Animations
rocketSetupAnim = scr_RegisterStateAnimation(spr_SkaterRocketSetup, SUPER_FAST_ANIM_SPEED, false, noone, "ROCKET_SETUP", sprite_get_number(spr_SkaterRocketSetup));
rocketAnim = scr_RegisterStateAnimation(spr_SkaterRocketMotion, SUPER_FAST_ANIM_SPEED, true, noone, "ROCKET_MOTION", sprite_get_number(spr_SkaterRocketMotion));

stateAnimMap = ds_map_create();
ds_map_add(stateAnimMap, s_IDLE, idleAnim);
ds_map_add(stateAnimMap, s_MOVING, skateAnim);
ds_map_add(stateAnimMap, s_JUMPING, skateAnim);
ds_map_add(stateAnimMap, s_CROUCHING, skateAnim);
ds_map_add(stateAnimMap, s_FALLING, skateAnim);
ds_map_add(stateAnimMap, s_ROLLING, idleAnim);

ds_map_add(stateAnimMap, s_ON_FOOT_IDLE, onFootIdleAnim);
ds_map_add(stateAnimMap, s_RUNNING, runAnim);
ds_map_add(stateAnimMap, s_ON_FOOT_JUMPING, onFootJumpAnim);
ds_map_add(stateAnimMap, s_ON_FOOT_FALLING, onFootFallAnim);



idleAnim.persistent = true;
skateAnim.persistent = true;
jumpAnim.persistent = true;
crouchAnim.persistent = true;
hurtAnim.persistent = true;
deadAnim.persistent = true;
drownAnim.persistent = true;
runAnim.persistent = true;


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

scr_CheckForCheckpoint();



