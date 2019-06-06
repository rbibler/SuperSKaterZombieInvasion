/// @description Insert description here
// You can write your code in this editor

var skater = instance_find(obj_skater, 0);
var distToSkater = skater.x - x;
if(active) {
	x += distToSkater / 16;
} else if(abs(distToSkater) < 1200) {
	active = true;
}
