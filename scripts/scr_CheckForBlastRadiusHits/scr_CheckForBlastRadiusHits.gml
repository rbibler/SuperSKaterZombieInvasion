var blastRadiusToCheck = argument0;

var currentEnemy = noone;

var enemyCount = instance_number(obj_enemyParent);
var distance = 0;
for(var i = 0; i < enemyCount; i++) {
	currentEnemy = instance_find(obj_enemyParent, i);
	if(scr_CircleRectangle(
		x, 
		y, 
		blastRadiusToCheck, 
		currentEnemy.bbox_left, 
		currentEnemy.bbox_top,
		currentEnemy.bbox_right - currentEnemy.bbox_left,
		currentEnemy.bbox_bottom - currentEnemy.bbox_top)
	) {
		with(currentEnemy) {
			//script_execute(boardSmackedScript, other.blastPower);
		}
	}
}