var blastPower = scr_GetTrickParam(IMPOSSIBLE, TRICK_BLAST_POWER_INDEX);
var numOfEnemies = instance_number(obj_enemyParent);
for(var i = 0; i < numOfEnemies; i++) {
	var enemy = instance_find(obj_enemyParent, i);
	with(enemy) {
		if(scr_IsOnScreen()) {
			script_execute(hitScript, HIT_TYPE.TRICK_BLAST, blastPower);
		}
	}
}