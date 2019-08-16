/// This is a script that the skater uses to help him figure out what to do when he's attack without moving

if(stateNew) {
	if(abs(xSpeed) < 0.5) {
		scr_UpdateSkaterAnimation(stationaryAttackAnim);
	} else {
		scr_UpdateSkaterAnimation(movingAttackAnim);
	}
	ds_list_clear(boardSmacked);
}

// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();
scr_MoveAndCollide();
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
				script_execute(enemy.hitScript, hitPoints);
			}
			instance_create_layer(enemy.x, enemy.y, FOREGROUND_LAYER, obj_PowerBallStrike);
		}
	}
}
ds_list_destroy(hitList);



if(currentAnimation.isDone) {
	if(abs(xSpeed) > 0.5) {
		scr_StateSwitch(s_MOVING);
	} else {
		scr_StateSwitch(s_IDLE);
	}
}