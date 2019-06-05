/// @description Insert description here
// You can write your code in this editor
var stickOrNo = false;
with(other) {
	if(abs(xSpeed) < 5) {
		stickOrNo = true;
	} else if(stateID == s_JET_SKI_MOVING) {
		scr_SkaterHit(noone, 1);
		scr_ExplodeCrate();
		return;
	}
}
if(!stickOrNo) {
	scr_ExplodeCrate();
} else {
	stuckToJetSki = true;
	currentDirection = sign(other.xSpeed);
	path_end();
}