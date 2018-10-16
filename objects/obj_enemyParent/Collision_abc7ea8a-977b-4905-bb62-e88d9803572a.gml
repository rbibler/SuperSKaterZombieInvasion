/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if(state == stateHit or state == stateDead) {
	return;
}

with(other) {
	scr_SkaterHit(other);
}
