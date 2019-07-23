/// Skater's Flip Trick state. 
/* 
*	Exits: 
*		- Falling, if jump key no longer pressed or reached apogee
*		- Hit
*/

// Reset animation and grounded flags when entering state
// Also add jump impetus to yspeed to make the skater jump
if(stateNew) {
	scr_UpdateSkaterAnimation(scr_WhichTrick());
}


// Check how fast the skater should be moving
scr_SkaterHorizontalImpetus();

// If we hit the ground somehow (not likely) we should be idle. Let idle state take care of
// skating check
if(grounded) {
	scr_StateSwitch(s_ROLLING);
	currentTrick = NO_TRICK;
	return;
}

scr_MoveAndCollide();

mask_index = spr_KickflipHitMask;
var hitList = ds_list_create();
var enemyHits = instance_place_list(x, y, obj_enemyParent, hitList, false);
if(enemyHits > 0) {
	for(var i = 0; i < enemyHits; i++) {
		var enemy = hitList[| i];
		if(ds_list_find_index(boardSmacked, enemy) == -1) {
			ds_list_add(boardSmacked, enemy);
			with(enemy) {
				script_execute(enemy.boardSmackedScript);
			}
			//instance_create_layer(enemy.x, enemy.y, FOREGROUND_LAYER, obj_PowerBallStrike);
		}
	}
}
ds_list_destroy(hitList);




