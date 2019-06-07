if(stateNew) {

}

var skater = instance_find(obj_skater, 0);
var distToSkater = skater.x - x;
if(abs(distToSkater) < activationRange) {
	scr_StateSwitch(s_ATTACKING);
}