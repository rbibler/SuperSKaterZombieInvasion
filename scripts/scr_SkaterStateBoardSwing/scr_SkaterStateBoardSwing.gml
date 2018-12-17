if(stateNew) {
	scr_SetCurrentAnimation(boardSwingAnim);
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
var enemy = instance_place(x, y, obj_enemyParent);
if(enemy != noone) {
	with(enemy) {
		script_execute(enemy.boardSmackedScript);
	}
}

if(currentAnimation.isDone) {
	scr_StateSwitch(s_ON_FOOT_IDLE);
	canShoot = true;
	show_debug_message("can shoot!");
}
