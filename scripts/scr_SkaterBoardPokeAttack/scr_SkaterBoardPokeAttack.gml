/// This is a script that the skater uses to help him figure out what to do when he's attack without moving

var boardOrPoke = stateVar[0];
if(stateNew) {
	if(abs(xSpeed) < 0.5) {
		scr_UpdateSkaterAnimation(boardSwingSkateAnim);
		boardOrPoke = BOARD_SWING;
	} else {
		scr_UpdateSkaterAnimation(movingAttackAnim);
		boardOrPoke = BOARD_JOUST;
	}
	ds_list_clear(boardSmacked);
}
isImmune = true;

// Check how fast the skater should be moving
if(boardOrPoke == BOARD_JOUST) {
	scr_SkaterHorizontalImpetus();	
	scr_MoveAndCollide();
}
scr_SkaterLadderCollisions();


mask_index = spr_BoardSwingMask;
var hitList = ds_list_create();
var enemyHits = instance_place_list(x, y, obj_enemyParent, hitList, false);
var hitPoints = boardPokeStrength;
if(enemyHits > 0) {
	for(var i = 0; i < enemyHits; i++) {
		var enemy = hitList[| i];
		if(ds_list_find_index(boardSmacked, enemy) == -1) {
			ds_list_add(boardSmacked, enemy);
			with(enemy) {
				script_execute(enemy.hitScript, hitPoints, boardOrPoke, false);
			}
			instance_create_layer(enemy.x, enemy.y, FOREGROUND_LAYER, obj_PowerBallStrike);
		}
	}
}
ds_list_destroy(hitList);

var stateToChangeTo = -1;

if(scr_SkaterCheckJump()) {
	stateToChangeTo = s_JUMPING;
}

if((input[RIGHT] or input[LEFT]) and image_index >= 3 and boardOrPoke == BOARD_SWING) {
	stateToChangeTo = s_MOVING;
}

if(currentAnimation.isDone) {
	if(abs(xSpeed) >= 0.5) {
		stateToChangeTo = s_MOVING;
	} else {
		stateToChangeTo = s_IDLE;
	}
}

if(stateToChangeTo >= 0) {
	stateVar[1] = stateToChangeTo;
	if(boardOrPoke == BOARD_SWING) {
		scr_StateSwitch(s_FOOT_TO_SKATE);
	} else {
		scr_StateSwitch(stateToChangeTo);
	}
	scr_SetImmunityTime(immunityTimeAfterAttack);
}

stateVar[0] = boardOrPoke;