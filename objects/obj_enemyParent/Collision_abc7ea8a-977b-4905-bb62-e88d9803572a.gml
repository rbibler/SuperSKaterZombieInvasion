/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if(stateName == s_HIT or stateName == s_DEAD) {
	return;
}

with(other) {
	scr_SkaterHit(other, 0);
}
