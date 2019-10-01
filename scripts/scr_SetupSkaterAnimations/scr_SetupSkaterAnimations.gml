// Skate Animations
idleAnim = scr_RegisterStateAnimation(spr_SkaterIdle, NORMAL_ANIM_SPEED, true, noone, "Idle", 1);
skateAnim = scr_RegisterStateAnimation(spr_SkaterSkate, NORMAL_ANIM_SPEED, true, noone, "Skate", 4);
jumpAnim = scr_RegisterStateAnimation(spr_SkaterJump, NORMAL_ANIM_SPEED, true, noone, "Jump", 1);
crouchAnim = scr_RegisterStateAnimation(spr_SkaterCrouch, NORMAL_ANIM_SPEED, true, noone, "Crouch", 1);
hurtAnim = scr_RegisterStateAnimation(spr_SkaterTakeHit, NORMAL_ANIM_SPEED, true, noone, "HURT", 1);
deadAnim = scr_RegisterStateAnimation(spr_SkaterDead, NORMAL_ANIM_SPEED, false, noone, "DEAD", sprite_get_number(spr_SkaterDead));
drownAnim = scr_RegisterStateAnimation(spr_SkaterDrowned, NORMAL_ANIM_SPEED, false, noone, "DROWNED", sprite_get_number(spr_SkaterDrowned));
teeterAnim = scr_RegisterStateAnimation(spr_SkaterTeetering, FAST_ANIM_SPEED, true, noone, "TEETERING", sprite_get_number(spr_SkaterTeetering));
stationaryAttackAnim = scr_RegisterStateAnimation(spr_SkaterStationaryAttack, FAST_ANIM_SPEED, false, noone, "Stationary attack", sprite_get_number(spr_SkaterStationaryAttack));
movingAttackAnim  = scr_RegisterStateAnimation(spr_SkaterMovingAttack, FAST_ANIM_SPEED, false, noone, "Moving attack", sprite_get_number(spr_SkaterMovingAttack));
// Trick Animations
kickflipAnim = scr_RegisterStateAnimation(spr_SkaterTrickKickflip, FAST_ANIM_SPEED, false, noone, "KICKFLIP", sprite_get_number(spr_SkaterTrickKickflip));
shoveItAnim = scr_RegisterStateAnimation(spr_SkaterTrickShoveIt, FAST_ANIM_SPEED, false, noone, "SHOVE_IT", sprite_get_number(spr_SkaterTrickShoveIt));
impossibleAnim = scr_RegisterStateAnimation(spr_SkaterTrickImpossible, FAST_ANIM_SPEED, false, noone, "IMPOSSIBLE", sprite_get_number(spr_SkaterTrickImpossible));
mctwistAnim = scr_RegisterStateAnimation(spr_SkaterTrickMcTwist, FAST_ANIM_SPEED, false, noone, "MCTWIST", sprite_get_number(spr_SkaterTrickMcTwist));
mctwistAnim.animMask[0] = spr_SkaterTrickMcTwistColMask;
mctwistAnim.animMask[1] = spr_SkaterTrickMcTwistColMask1;
mctwistAnim.animMask[2] = spr_SkaterTrickMcTwistColMask2;
mctwistAnim.animMask[3] = spr_SkaterTrickMcTwistColMask3;
mctwistAnim.animMask[4] = spr_SkaterTrickMcTwistColMask;
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
boardSwingSkateAnim = scr_RegisterStateAnimation(spr_SkaterBoardSwingSkate, FAST_ANIM_SPEED, false, noone, "SWINGING", sprite_get_number(spr_SkaterBoardSwingSkate));
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