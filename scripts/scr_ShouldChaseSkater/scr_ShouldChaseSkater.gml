var timeRestriction = argument0;

var dist = x - obj_skater.x;
var shouldAttack = false;
if(dist > 0 and input[LEFT]) {
	shouldAttack = abs(dist) < attackThreshold;
	if(timeRestriction and stateTimer < minAttackInterval) {
		shouldAttack = false;
	} 
} else if(dist < 0 and input[RIGHT]) {
	shouldAttack = abs(dist) < attackThreshold;
	if(timeRestriction and stateTimer < minAttackInterval) {
		shouldAttack = false;
	} 
	
} 

return shouldAttack;