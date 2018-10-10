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
PickupWeapon(obj_BoardPowerPush);

// Reset the timer for the idle animation
alarm[0] = 60 * 4;

// Setup the state machine
stateMachineInit();

// Define the skater's states
idleState = stateCreate(s_IDLE,SkaterStateIdle);
skateState = stateCreate(s_MOVING, SkaterStateSkating);
jumpState = stateCreate(s_JUMPING, SkaterStateJumping);
bounceState = stateCreate(s_BOUNCING, SkaterStateBouncing);
climbState = stateCreate(s_CLIMBING, SkaterStateClimbing);
crouchState = stateCreate(s_CROUCHING, SkaterStateCrouching);
fallState = stateCreate(s_FALLING, SkaterStateFalling);
deadState = stateCreate(s_DEAD, SkaterStateDead);
rollingState = stateCreate(s_ROLLING, SkaterStateRolling);
climbingState = stateCreate(s_CLIMBING, SkaterStateClimbing);
knockedBackState = stateCreate(s_KNOCKED_BACK, SkaterStateKnockedBack);
floatingState = stateCreate(s_FLOATING, SkaterStateFloating);
// Set the default state to IDLE
stateInit(s_IDLE);



idleAnim = scr_RegisterAnimation(spr_SkaterIdle, NORMAL_ANIM_SPEED, true, noone, "Idle");
skateAnim = scr_RegisterAnimation(spr_SkaterSkate, NORMAL_ANIM_SPEED, true, noone, "Skate");
jumpAnim = scr_RegisterAnimation(spr_SkaterJump, NORMAL_ANIM_SPEED, true, noone, "Jump");
crouchAnim = scr_RegisterAnimation(spr_SkaterCrouch, NORMAL_ANIM_SPEED, true, noone, "Crouch");
powerPushAnimIdle = scr_RegisterAnimation(spr_SkaterPowerPush, NORMAL_ANIM_SPEED, false, scr_DetermineAnimFromState, "Power Push Idle");
powerPushAnimDiagonal = scr_RegisterAnimation(spr_SkaterPowerPushDiag, NORMAL_ANIM_SPEED, false, scr_DetermineAnimFromState, "Power Push Diag");
powerPushAnimBackFoot = scr_RegisterAnimation(spr_SkaterPowerPushBackFoot, NORMAL_ANIM_SPEED, false, scr_DetermineAnimFromState, "Power Push Back Foot");
powerPushAnimFrontFoot = scr_RegisterAnimation(spr_SkaterPowerPushFrontFoot, NORMAL_ANIM_SPEED, false, scr_DetermineAnimFromState, "Power Push Front Foot");
powerPushAnimBackFootIdle = scr_RegisterAnimation(spr_SkaterPowerPushBackFootIdle, NORMAL_ANIM_SPEED, false, scr_DetermineAnimFromState, "Power Push Back Foot Idle");
powerPushAnimFrontFootIdle = scr_RegisterAnimation(spr_SkaterPowerPushFrontFootIdle, NORMAL_ANIM_SPEED, false, scr_DetermineAnimFromState, "Power Push Front Foot Idle");

scr_AddScriptToAnim(powerPushAnimIdle, 2, scr_LetSkaterShoot);
scr_AddScriptToAnim(powerPushAnimDiagonal, 2, scr_LetSkaterShoot);
scr_AddScriptToAnim(powerPushAnimBackFoot, 2, scr_LetSkaterShoot);
scr_AddScriptToAnim(powerPushAnimFrontFoot, 2, scr_LetSkaterShoot);
scr_AddScriptToAnim(powerPushAnimBackFootIdle, 2, scr_LetSkaterShoot);
scr_AddScriptToAnim(powerPushAnimFrontFootIdle, 2, scr_LetSkaterShoot);




currentAnim = idleAnim;


isImmune = false;
immuneStart = 0;
drawToggle = true;
canShoot = true;





