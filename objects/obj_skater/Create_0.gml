
/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
ignoreInput = false;
hasWeaponImmunity = false;
num = 0;
newRoom = false;
shootCounter = 0;
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
input[8] = TRANSITION;
input[9] = WEAPON_SWITCH;

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
slingshot = instance_create_layer(0, 0, "WEAPONS", obj_Slingshot);
currentWeapon = SPREAD_SLINGSHOT;
currentPowerup = PB_SHIELD;
weaponAnimCounter = 0;
ammoOnScreen = 0;
maxAmmoOnScreen = slingshot.maxAmmo[currentWeapon];
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
// Set the default state to IDLE
scr_StateInit(s_IDLE);


idleAnim = scr_RegisterStateAnimation(spr_SkaterIdle, NORMAL_ANIM_SPEED, true, noone, "Idle", 1);
skateAnim = scr_RegisterStateAnimation(spr_SkaterSkate, NORMAL_ANIM_SPEED, true, noone, "Skate", 4);
jumpAnim = scr_RegisterStateAnimation(spr_SkaterJump, NORMAL_ANIM_SPEED, true, noone, "Jump", 1);
crouchAnim = scr_RegisterStateAnimation(spr_SkaterCrouch, NORMAL_ANIM_SPEED, true, noone, "Crouch", 1);
hurtAnim = scr_RegisterStateAnimation(spr_SkaterTakeHit, NORMAL_ANIM_SPEED, true, noone, "HURT", 1);
deadAnim = scr_RegisterStateAnimation(spr_SkaterDead, NORMAL_ANIM_SPEED, false, noone, "DEAD", sprite_get_number(spr_SkaterDead));
drownAnim = scr_RegisterStateAnimation(spr_SkaterDrowned, NORMAL_ANIM_SPEED, false, noone, "DROWNED", sprite_get_number(spr_SkaterDrowned));
teeterAnim = scr_RegisterStateAnimation(spr_SkaterTeetering, FAST_ANIM_SPEED, true, noone, "TEETERING", sprite_get_number(spr_SkaterTeetering));

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

idleAnim.persistent = true;
skateAnim.persistent = true;
jumpAnim.persistent = true;
crouchAnim.persistent = true;
hurtAnim.persistent = true;
deadAnim.persistent = true;
drownAnim.persistent = true;
runAnim.persistent = true;

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

powerPushCrouch = scr_RegisterSubstateAnimation(2, NORMAL_ANIM_SPEED);
scr_AddSpriteToSubstateAnimation(powerPushCrouch, spr_SkaterPowerPushCrouchOne, 0);
scr_AddSpriteToSubstateAnimation(powerPushCrouch, spr_SkaterPowerPushCrouchTwo, 1);
crouchAnim.substateAnimations[1] = powerPushCrouch;
powerPushCrouch.persistent = true;

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

shieldIdle = scr_RegisterSubstateAnimation(2, NORMAL_ANIM_SPEED);
scr_AddSpriteToSubstateAnimation(shieldIdle, spr_SkaterShieldIdleOne, 0);
scr_AddSpriteToSubstateAnimation(shieldIdle, spr_SkaterShieldIdleTwo, 1);
shieldIdle.loop = true;
idleAnim.substateAnimations[3] = shieldIdle;

currentAnimation = idleAnim;

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
onFoot = false;
drawOffsetX = 0;
drawOffsetY = 0;
railGrindButtonPressTimer = 0;
railJumpBoost = 2;



