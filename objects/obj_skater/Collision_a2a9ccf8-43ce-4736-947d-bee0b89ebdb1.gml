/// @description Insert description here
// You can write your code in this editor

if(scr_CheckForShieldProtection(other)) {
	with(other) {
		script_execute(hitBySkaterShieldScript);
	}
} else {
	if(!isImmune and stateID != s_BOARD_SWING) {
		if(scr_CanEnemyHurtSkater(other)) {
			scr_SkaterHit(other, 0);
			with(other) {
				script_execute(collidedWithSkaterScript);
			}
		}
	}
}