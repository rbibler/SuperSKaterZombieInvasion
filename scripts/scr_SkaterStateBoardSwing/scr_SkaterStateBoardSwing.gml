if(stateNew) {
	scr_SetCurrentAnimation(boardSwingAnim);
	ds_list_clear(boardSmacked);
}

//scr_StopXMotion();
scr_StopYMotion();

// If no directional input, slow the skater down until he stops
if(abs(xSpeed) > 0 and grounded) {
		// If horiztonal direction is the same this frame as last, then need to slow down
		if(sign(xSpeed) == sign(lastXSpeed)) {
			xSpeed -= (groundFrictionOnFoot * sign(xSpeed));
		} 
	
} else if(abs(xSpeed) <= 0.15 or !grounded) {
	scr_StopXMotion();
}

scr_MoveAndCollide();


mask_index = spr_BoardSwingMask;
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
			instance_create_layer(enemy.x, enemy.y, "FOREGROUND", obj_PowerBallStrike);
		}
	}
}
ds_list_destroy(hitList);

if(currentAnimation.isDone) {
	scr_StateSwitch(s_ON_FOOT_IDLE);
	canShoot = true;
	show_debug_message("can shoot!");
}
